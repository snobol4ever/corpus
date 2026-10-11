{ scheme.pas -- a Scheme interpreter in ISO 7185 Pascal.

  An ISO 7185 port of Bob Appleyard's pascal-lisp (github.com/bobappleyard/pascal-lisp), a small Scheme written in
  the Delphi dialect of Pascal and licensed under the GNU General Public License, version 3 or later; this port is
  distributed under the same licence. The interpreter is the original's: an s-expression reader, a macro expander
  (define-macro and add-syntax), an evaluator over association-list environments with proper tail calls, and the
  original's prelude (prelude.scm), which builds define, quasiquote, let, cond, do, case, case-lambda and the
  arithmetic out of thirty-four primitives.

  What the port changes, because ISO 7185 has no classes, exceptions, dynamic strings or named files:
  - every Lisp value is one variant record, its kind the tag; the original's virtual methods are case analyses;
  - strings and symbol names live in one character pool (strings are immutable in this Scheme);
  - an error is a non-local goto to the label of the nearest active activation of protect, the procedure every
    evaluation runs inside, so call-with-exception (a recursive protect) catches it as the original's try does;
  - a primitive is a code dispatched by exec, where the original stored a function or method pointer;
  - storage comes from new and is never disposed (the original linked the Boehm collector);
  - the prelude is a table of lines in this source, read through a port as the original read prelude.scm, the
    interpreter is created fully loaded (the original's lispi.pas passed False and registered nothing), and load,
    which needs a named file, raises an error;
  - a real prints with fifteen significant digits and a gensym prints its sequence number, where the original
    called FloatToStr and printed the object's address. }
program scheme(input, output);
label 99;
const
  poolmax = 400000;
  symmax = 2000;
  msgw = 32;
  namew = 20;
  prelw = 80;
  prelmax = 400;
  nmsg = 20;
  opinit = 0;
  opread = 1;
  opeval = 2;
  opapply = 3;
  mnotpair = 1;
  mnotfix = 2;
  mnotreal = 3;
  mnotchar = 4;
  mnotstring = 5;
  mnosymname = 6;
  mnotenough = 7;
  mtoomany = 8;
  munique = 9;
  munknownvar = 10;
  mtoomanyargs = 11;
  mnotenoughargs = 12;
  mbadlambda = 13;
  mnotproc = 14;
  mbadhash = 15;
  mlistend = 16;
  munterminated = 17;
  mbadcons = 18;
  mnotareal = 19;
  mnoload = 20;
type
  kind = (kempty, kvoid, keof, kbool, kfix, kreal, kchar, kstr, ksym, kpair, kport, kprim, kclosure, kmulti);
  portkind = (pinput, pprelude);
  portstate = (psstart, psmiddle, psend);
  lv = ^cell;
  cell = record
    case k: kind of
      kempty, kvoid, keof, kbool: ();
      kfix: (ival: integer);
      kreal: (rval: real);
      kchar: (cval: char);
      kstr: (sstart, slen: integer);
      ksym: (symid: integer);
      kpair: (a, d: lv);
      kport: (pk: portkind; ps: portstate; pc: char);
      kprim: (pcode: integer; pname: lv);
      kclosure: (cname, cargs, ccode, cenv: lv);
      kmulti: (vfirst, vrest: lv)
  end;
  msgtext = packed array [1..msgw] of char;
  nametext = packed array [1..namew] of char;
  preltext = packed array [1..prelw] of char;
  argvec = array [1..4] of lv;
  symentry = record
    nstart, nlen: integer;
    scell: lv
  end;
var
  pool: packed array [1..poolmax] of char;
  pooln: integer;
  syms: array [1..symmax] of symentry;
  nsym, ngensym: integer;
  lempty, lvoid, leofobj, ltrue, lfalse: lv;
  chars: array [char] of lv;
  genv, gsenv: lv;
  quotesym, ifsym, lambdasym, setsym, quasisym, unquotesym, splicesym, prompt: lv;
  inport, prelport: lv;
  msgs: array [1..nmsg] of msgtext;
  prel: array [1..prelmax] of preltext;
  preln, prelline, prelcol: integer;
  sinkpool: boolean;
  errcode: integer;
  errwhat, errmsg: lv;
  form, res: lv;
  failed: boolean;
  ci: integer;

procedure fatal(n: integer);
begin
  writeln;
  if n = 1 then writeln('scheme: the character pool is full') else writeln('scheme: the symbol table is full');
  goto 99
end;

procedure poolput(c: char);
begin
  if pooln >= poolmax then fatal(1);
  pooln := pooln + 1;
  pool[pooln] := c
end;

procedure putc(c: char);
begin
  if sinkpool then poolput(c) else if c = chr(10) then writeln else write(c)
end;

procedure putint(n: integer);
var dg: array [1..20] of integer; i, m: integer;
begin
  if n < 0 then begin putc('-'); n := -n end;
  m := 0;
  repeat m := m + 1; dg[m] := n mod 10; n := n div 10 until n = 0;
  for i := m downto 1 do putc(chr(ord('0') + dg[i]))
end;

procedure putreal(r: real);
var dg: array [1..16] of integer; e, i, last: integer; m: real; carry: boolean;
begin
  if r < 0.0 then begin putc('-'); r := -r end;
  if r = 0.0 then putc('0')
  else begin
    e := 0;
    m := r;
    while m >= 10.0 do begin m := m / 10.0; e := e + 1 end;
    while m < 1.0 do begin m := m * 10.0; e := e - 1 end;
    for i := 1 to 16 do begin dg[i] := trunc(m); if dg[i] > 9 then dg[i] := 9; m := (m - dg[i]) * 10.0 end;
    if dg[16] >= 5 then begin
      i := 15;
      carry := true;
      while carry and (i >= 1) do begin
        dg[i] := dg[i] + 1;
        if dg[i] = 10 then begin dg[i] := 0; i := i - 1 end else carry := false
      end;
      if carry then begin for i := 15 downto 2 do dg[i] := dg[i - 1]; dg[1] := 1; e := e + 1 end
    end;
    last := 15;
    while (last > 1) and (dg[last] = 0) do last := last - 1;
    if (e >= 15) or (e < -4) then begin
      putc(chr(ord('0') + dg[1]));
      if last > 1 then begin putc('.'); for i := 2 to last do putc(chr(ord('0') + dg[i])) end;
      putc('E');
      if e < 0 then begin putc('-'); putint(-e) end else begin putc('+'); putint(e) end
    end else if e >= 0 then begin
      for i := 1 to e + 1 do if i <= last then putc(chr(ord('0') + dg[i])) else putc('0');
      if last > e + 1 then begin putc('.'); for i := e + 2 to last do putc(chr(ord('0') + dg[i])) end
    end else begin
      putc('0');
      putc('.');
      for i := 1 to -e - 1 do putc('0');
      for i := 1 to last do putc(chr(ord('0') + dg[i]))
    end
  end
end;

procedure putpool(start, len: integer);
var i: integer;
begin
  for i := start to start + len - 1 do putc(pool[i])
end;

procedure putmsg(n: integer);
var last, i: integer;
begin
  last := msgw;
  while (last > 0) and (msgs[n][last] = ' ') do last := last - 1;
  for i := 1 to last do putc(msgs[n][i])
end;

function newcell(kk: kind): lv;
var p: lv;
begin
  new(p);
  p^.k := kk;
  newcell := p
end;

function mkfix(n: integer): lv;
var p: lv;
begin
  p := newcell(kfix);
  p^.ival := n;
  mkfix := p
end;

function mkreal(r: real): lv;
var p: lv;
begin
  p := newcell(kreal);
  p^.rval := r;
  mkreal := p
end;

function mkstr(start, len: integer): lv;
var p: lv;
begin
  p := newcell(kstr);
  p^.sstart := start;
  p^.slen := len;
  mkstr := p
end;

function cons(x, y: lv): lv;
var p: lv;
begin
  p := newcell(kpair);
  p^.a := x;
  p^.d := y;
  cons := p
end;

function mkbool(b: boolean): lv;
begin
  if b then mkbool := ltrue else mkbool := lfalse
end;

function mkprim(code: integer; name: lv): lv;
var p: lv;
begin
  p := newcell(kprim);
  p^.pcode := code;
  p^.pname := name;
  mkprim := p
end;

function mkclosure(name, args, code, env: lv): lv;
var p: lv;
begin
  p := newcell(kclosure);
  p^.cname := name;
  p^.cargs := args;
  p^.ccode := code;
  p^.cenv := env;
  mkclosure := p
end;

function mkmulti(first, rest: lv): lv;
var p: lv;
begin
  p := newcell(kmulti);
  p^.vfirst := first;
  p^.vrest := rest;
  mkmulti := p
end;

function mkport(kk: portkind): lv;
var p: lv;
begin
  p := newcell(kport);
  p^.pk := kk;
  p^.ps := psstart;
  p^.pc := ' ';
  mkport := p
end;

function mkgensym: lv;
var p: lv;
begin
  ngensym := ngensym + 1;
  p := newcell(ksym);
  p^.symid := -ngensym;
  mkgensym := p
end;

function poolsame(s1, n1, s2, n2: integer): boolean;
var i: integer; same: boolean;
begin
  if n1 <> n2 then poolsame := false
  else begin
    same := true;
    i := 0;
    while same and (i < n1) do begin
      if pool[s1 + i] <> pool[s2 + i] then same := false;
      i := i + 1
    end;
    poolsame := same
  end
end;

function internpool(start, len: integer): lv;
var i, found: integer; p: lv;
begin
  found := 0;
  i := 1;
  while (found = 0) and (i <= nsym) do begin
    if poolsame(syms[i].nstart, syms[i].nlen, start, len) then found := i;
    i := i + 1
  end;
  if found <> 0 then begin
    if start + len - 1 = pooln then pooln := start - 1;
    internpool := syms[found].scell
  end else begin
    if nsym >= symmax then fatal(2);
    nsym := nsym + 1;
    p := newcell(ksym);
    p^.symid := nsym;
    syms[nsym].nstart := start;
    syms[nsym].nlen := len;
    syms[nsym].scell := p;
    internpool := p
  end
end;

function intern(name: nametext): lv;
var start, last, i: integer;
begin
  last := namew;
  while (last > 0) and (name[last] = ' ') do last := last - 1;
  start := pooln + 1;
  for i := 1 to last do poolput(name[i]);
  intern := internpool(start, last)
end;

function eqv(x, y: lv): boolean;
begin
  if x^.k = kfix then begin
    if y^.k = kfix then eqv := x^.ival = y^.ival else eqv := false
  end else if x^.k = kreal then begin
    if y^.k = kreal then eqv := x^.rval = y^.rval else eqv := false
  end else if x^.k = kstr then begin
    if y^.k = kstr then eqv := poolsame(x^.sstart, x^.slen, y^.sstart, y^.slen) else eqv := false
  end else eqv := x = y
end;

procedure writeval(x: lv; display: boolean);
var cur: lv; done: boolean;
begin
  if x = lempty then begin putc('('); putc(')') end
  else if x = lvoid then begin putc('#'); putc('v') end
  else if x = ltrue then begin putc('#'); putc('t') end
  else if x = lfalse then begin putc('#'); putc('f') end
  else if x = leofobj then begin putc('#'); putc('e'); putc('o'); putc('f'); putc('-'); putc('o'); putc('b'); putc('j'); putc('e'); putc('c'); putc('t') end
  else if x^.k = kfix then putint(x^.ival)
  else if x^.k = kreal then putreal(x^.rval)
  else if x^.k = kchar then begin
    if not display then begin putc('#'); putc('\') end;
    putc(x^.cval)
  end else if x^.k = kstr then begin
    if not display then putc('"');
    putpool(x^.sstart, x^.slen);
    if not display then putc('"')
  end else if x^.k = ksym then begin
    if x^.symid > 0 then putpool(syms[x^.symid].nstart, syms[x^.symid].nlen)
    else begin putc('#'); putc('<'); putc('g'); putc('e'); putc('n'); putc('s'); putc('y'); putc('m'); putc(' '); putint(-x^.symid); putc('>') end
  end else if x^.k = kpair then begin
    putc('(');
    cur := x;
    done := false;
    repeat
      writeval(cur^.a, display);
      if cur^.d^.k = kpair then begin putc(' '); cur := cur^.d end
      else if cur^.d = lempty then begin putc(')'); done := true end
      else begin putc(' '); putc('.'); putc(' '); writeval(cur^.d, display); putc(')'); done := true end
    until done
  end else if x^.k = kprim then begin
    putc('#'); putc('<'); putc('p'); putc('r'); putc('i'); putc('m'); putc('i'); putc('t'); putc('i'); putc('v'); putc('e'); putc(' ');
    if x^.pname <> nil then putpool(x^.pname^.sstart, x^.pname^.slen);
    putc('>')
  end else if x^.k = kclosure then begin
    putc('#'); putc('<'); putc('c'); putc('l'); putc('o'); putc('s'); putc('u'); putc('r'); putc('e'); putc(' ');
    if x^.cname <> nil then begin putpool(x^.cname^.sstart, x^.cname^.slen); putc(' ') end;
    writeval(x^.cargs, false);
    putc('>')
  end else if x^.k = kmulti then begin
    writeval(x^.vfirst, display);
    cur := x^.vrest;
    while cur^.k = kpair do begin putc(chr(10)); writeval(cur^.a, display); cur := cur^.d end
  end else if x^.k = kport then begin putc('#'); putc('<'); putc('p'); putc('o'); putc('r'); putc('t'); putc('>') end
end;

procedure writeerror;
begin
  if errcode = 0 then begin
    if errmsg^.k = kchar then putc(errmsg^.cval) else putpool(errmsg^.sstart, errmsg^.slen)
  end else putmsg(errcode);
  if errwhat <> nil then
    if errwhat <> lvoid then begin putc(':'); putc(' '); writeval(errwhat, false) end
end;

procedure portnext(p: lv);
var c: char;
begin
  if p^.ps = psstart then p^.ps := psmiddle;
  if p^.pk = pinput then begin
    if eof(input) then p^.ps := psend
    else if eoln(input) then begin readln; p^.pc := chr(10) end
    else begin read(c); p^.pc := c end
  end else begin
    if prelline > preln then p^.ps := psend
    else if prelcol > prelw then begin p^.pc := chr(10); prelline := prelline + 1; prelcol := 1 end
    else begin p^.pc := prel[prelline][prelcol]; prelcol := prelcol + 1 end
  end
end;

function portpeek(p: lv): char;
begin
  if p^.ps = psstart then portnext(p);
  portpeek := p^.pc
end;

function porteof(p: lv): boolean;
begin
  porteof := p^.ps = psend
end;

function portread(p: lv): char;
begin
  portread := portpeek(p);
  portnext(p)
end;

procedure protect(op: integer; p1, p2: lv; var outv: lv; var caught: boolean);
label 1, 2;
var r: lv;

  procedure lerror(code: integer; what: lv);
  begin
    errcode := code;
    errwhat := what;
    goto 1
  end;

  function lcar(x: lv): lv;
  begin
    if x^.k <> kpair then lerror(mnotpair, x);
    lcar := x^.a
  end;

  function lcdr(x: lv): lv;
  begin
    if x^.k <> kpair then lerror(mnotpair, x);
    lcdr := x^.d
  end;

  function lref(x: lv; index: integer): lv;
  begin
    if index = 0 then lref := lcar(x) else lref := lref(lcdr(x), index - 1)
  end;

  function lassoc(needle, haystack: lv): lv;
  var assoc, found: lv;
  begin
    found := lfalse;
    while (found = lfalse) and (haystack <> lempty) do begin
      assoc := lcar(haystack);
      if eqv(needle, lcar(assoc)) then found := assoc else haystack := lcdr(haystack)
    end;
    lassoc := found
  end;

  function lappend(l1, l2: lv): lv;
  var x, rest: lv;
  begin
    if l1 = lempty then lappend := l2
    else begin
      x := lcar(l1);
      rest := lappend(lcdr(l1), l2);
      lappend := cons(x, rest)
    end
  end;

  function lisinteger(x: lv): integer;
  begin
    if x^.k <> kfix then lerror(mnotfix, x);
    lisinteger := x^.ival
  end;

  function listoreal(x: lv): real;
  begin
    if x^.k = kfix then listoreal := x^.ival
    else begin
      if x^.k <> kreal then lerror(mnotreal, x);
      listoreal := x^.rval
    end
  end;

  procedure checkreal(x: lv);
  begin
    if x^.k <> kreal then lerror(mnotareal, x)
  end;

  procedure parseargs(src: lv; n: integer; variadic: boolean; var av: argvec);
  var i, c: integer; cur: lv;
  begin
    cur := src;
    if variadic then c := n - 1 else c := n;
    for i := 1 to c do begin
      if cur = lempty then lerror(mnotenough, nil);
      av[i] := lcar(cur);
      cur := lcdr(cur)
    end;
    if variadic then av[n] := cur else if cur <> lempty then lerror(mtoomany, nil)
  end;

  function list3(x, y, z: lv): lv;
  begin
    list3 := cons(x, cons(y, cons(z, lempty)))
  end;

  function list4(w, x, y, z: lv): lv;
  begin
    list4 := cons(w, cons(x, cons(y, cons(z, lempty))))
  end;

  function errorstring: lv;
  var start: integer;
  begin
    start := pooln + 1;
    sinkpool := true;
    writeerror;
    sinkpool := false;
    errorstring := mkstr(start, pooln - start + 1)
  end;

  function writtenname(x: lv): lv;
  var start: integer;
  begin
    start := pooln + 1;
    sinkpool := true;
    writeval(x, false);
    sinkpool := false;
    writtenname := mkstr(start, pooln - start + 1)
  end;

  { the reader }

  function lread(port: lv): lv; forward;
  function readlist(endc: char; port: lv): lv; forward;

  function readover(var c: char; port: lv): boolean;
  begin
    if porteof(port) then readover := true
    else begin
      c := portpeek(port);
      if c in [chr(9), chr(10), chr(13), ' ', ']', ')'] then readover := true
      else begin portnext(port); readover := false end
    end
  end;

  function readsymbol(start: integer; port: lv): lv;
  var c: char;
  begin
    while not readover(c, port) do poolput(c);
    if pooln - start + 1 = 0 then lerror(mnosymname, nil);
    readsymbol := internpool(start, pooln - start + 1)
  end;

  function readnumber(first: char; port: lv): lv;
  var start, i, n: integer; c: char; fixnum, done, sym: boolean; v, f, scale: real; x: lv;
  begin
    start := pooln + 1;
    poolput(first);
    fixnum := true;
    done := false;
    sym := false;
    while not done do begin
      if readover(c, port) then done := true
      else begin
        poolput(c);
        if c = '.' then begin
          if fixnum then fixnum := false else begin sym := true; done := true end
        end else if not (c in ['0'..'9']) then begin sym := true; done := true end
      end
    end;
    if sym then x := readsymbol(start, port)
    else if fixnum then begin
      n := 0;
      for i := start to pooln do n := n * 10 + (ord(pool[i]) - ord('0'));
      pooln := start - 1;
      x := mkfix(n)
    end else begin
      v := 0.0;
      f := 0.0;
      scale := 1.0;
      i := start;
      while pool[i] <> '.' do begin v := v * 10.0 + (ord(pool[i]) - ord('0')); i := i + 1 end;
      i := i + 1;
      while i <= pooln do begin f := f * 10.0 + (ord(pool[i]) - ord('0')); scale := scale * 10.0; i := i + 1 end;
      pooln := start - 1;
      x := mkreal(v + f / scale)
    end;
    readnumber := x
  end;

  function readstring(port: lv): lv;
  var start: integer; c: char;
  begin
    start := pooln + 1;
    c := portread(port);
    while c <> '"' do begin poolput(c); c := portread(port) end;
    readstring := mkstr(start, pooln - start + 1)
  end;

  function readhash(port: lv): lv;
  var c: char; x: lv;
  begin
    c := portread(port);
    x := nil;
    if c = 't' then x := ltrue
    else if c = 'f' then x := lfalse
    else if c = 'v' then x := lvoid
    else if c = '\' then x := chars[portread(port)]
    else lerror(mbadhash, nil);
    readhash := x
  end;

  function readcomment(port: lv): lv;
  var c: char; x: lv;
  begin
    if porteof(port) then x := leofobj
    else begin
      c := portpeek(port);
      while not ((c = chr(10)) or porteof(port)) do c := portread(port);
      if porteof(port) then x := leofobj else x := lread(port)
    end;
    readcomment := x
  end;

  function readwrapper(name, port: lv): lv;
  var rest: lv;
  begin
    rest := cons(lread(port), lempty);
    readwrapper := cons(name, rest)
  end;

  function readwithchar(c: char; port: lv): lv;
  var x: lv; start: integer; ateof: boolean;
  begin
    ateof := porteof(port);
    while (not ateof) and (c in [chr(9), chr(10), chr(13), ' ']) do begin
      c := portread(port);
      ateof := porteof(port)
    end;
    if ateof then x := leofobj
    else if c in ['0'..'9'] then x := readnumber(c, port)
    else if c = '"' then x := readstring(port)
    else if c = '#' then x := readhash(port)
    else if c = '(' then x := readlist(')', port)
    else if c = '[' then x := readlist(']', port)
    else if (c = ']') or (c = ')') then begin lerror(mlistend, nil); x := nil end
    else if c = '''' then x := readwrapper(quotesym, port)
    else if c = '`' then x := readwrapper(quasisym, port)
    else if c = ';' then x := readcomment(port)
    else if c = ',' then begin
      if portpeek(port) = '@' then begin portnext(port); x := readwrapper(splicesym, port) end
      else x := readwrapper(unquotesym, port)
    end else begin
      start := pooln + 1;
      poolput(c);
      x := readsymbol(start, port)
    end;
    readwithchar := x
  end;

  function readlist;
  var head, cur, next: lv; c: char; expectingcons, done: boolean;
  begin
    head := lempty;
    cur := nil;
    expectingcons := false;
    done := false;
    while not done do begin
      repeat
        if porteof(port) then lerror(munterminated, nil);
        c := portread(port)
      until not (c in [chr(9), chr(10), chr(13), ' ']);
      if c = endc then done := true
      else if c = '.' then begin
        if (head = lempty) or expectingcons then lerror(mbadcons, nil)
        else begin cur^.d := lread(port); expectingcons := true end
      end else begin
        if expectingcons then lerror(mbadcons, nil)
        else if head = lempty then begin next := cons(readwithchar(c, port), lempty); cur := next; head := next end
        else begin next := cons(readwithchar(c, port), lempty); cur^.d := next; cur := next end
      end
    end;
    readlist := head
  end;

  function lread;
  var x: lv;
  begin
    if porteof(port) then x := leofobj else x := readwithchar(portread(port), port);
    lread := x
  end;

  { the interpreter }

  function apply(proc, args: lv): lv; forward;
  function expand(code, senv: lv): lv; forward;
  function evalcode(code, env: lv; tail: boolean; var proc, args: lv): lv; forward;

  function evalapplication(code, env: lv; tail: boolean; var proc, args: lv): lv;
  var p, x, cur, arg, next: lv;

    function argval(e: lv): lv;
    var v: lv;
    begin
      v := evalcode(e, env, false, proc, args);
      if v^.k = kmulti then v := v^.vfirst;
      argval := v
    end;

  begin
    p := evalcode(lcar(code), env, false, proc, args);
    cur := lcdr(code);
    if cur = lempty then x := lempty
    else begin
      arg := cons(argval(lcar(cur)), lempty);
      cur := lcdr(cur);
      x := arg;
      while cur <> lempty do begin
        next := cons(argval(lcar(cur)), lempty);
        arg^.d := next;
        arg := next;
        cur := lcdr(cur)
      end
    end;
    if tail then begin proc := p; args := x; evalapplication := nil end
    else evalapplication := apply(p, x)
  end;

  function arglistunique(lst: lv): boolean;
  var x, xval, y: lv; unique, done: boolean;
  begin
    unique := true;
    if lst^.k = kpair then begin
      x := lst;
      done := false;
      while unique and not done and (x <> lempty) do begin
        if x^.k <> kpair then done := true
        else begin
          xval := lcar(x);
          y := lcdr(x);
          while unique and (y <> lempty) do begin
            if y^.k = kpair then begin
              if xval = lcar(y) then unique := false;
              y := lcdr(y)
            end else begin
              if xval = y then unique := false;
              y := lempty
            end
          end;
          x := lcdr(x)
        end
      end
    end;
    arglistunique := unique
  end;

  function lookupsymbol(code, env: lv): lv;
  var b: lv;
  begin
    b := lassoc(code, env);
    if (b = lfalse) and (env <> genv) then b := lassoc(code, genv);
    if b = lfalse then lerror(munknownvar, code);
    lookupsymbol := b
  end;

  function evalexpr(code, env: lv; tail: boolean; var proc, args: lv): lv;
  var x, binding, cproc, cargs, ccode, v: lv;
  begin
    x := lcar(code);
    if x = quotesym then evalexpr := lcar(lcdr(code))
    else if x = ifsym then begin
      if evalcode(lref(code, 1), env, false, proc, args) <> lfalse then evalexpr := evalcode(lref(code, 2), env, tail, proc, args)
      else evalexpr := evalcode(lref(code, 3), env, tail, proc, args)
    end else if x = lambdasym then begin
      cproc := lcdr(code);
      cargs := lcar(cproc);
      ccode := lcdr(cproc);
      if not arglistunique(cargs) then lerror(munique, code);
      evalexpr := mkclosure(nil, cargs, ccode, env)
    end else if x = setsym then begin
      binding := lookupsymbol(lref(code, 1), env);
      v := evalcode(lref(code, 2), env, false, proc, args);
      binding^.d := v;
      evalexpr := lvoid
    end else evalexpr := evalapplication(code, env, tail, proc, args)
  end;

  function evalcode;
  begin
    if code^.k = kpair then evalcode := evalexpr(code, env, tail, proc, args)
    else if code^.k = ksym then evalcode := lcdr(lookupsymbol(code, env))
    else evalcode := code
  end;

  function expandargs(proc, names, values: lv): lv;
  var head, rest: lv;
  begin
    if (names = lempty) and (values <> lempty) then lerror(mtoomanyargs, proc);
    if names = lempty then expandargs := lempty
    else if names^.k = kpair then begin
      if values = lempty then lerror(mnotenoughargs, proc);
      head := cons(lcar(names), lcar(values));
      rest := expandargs(proc, lcdr(names), lcdr(values));
      expandargs := cons(head, rest)
    end else expandargs := cons(cons(names, values), lempty)
  end;

  function withname(x, name: lv): lv;
  var n: lv;
  begin
    n := writtenname(name);
    if x^.k = kprim then withname := mkprim(x^.pcode, n) else withname := mkclosure(n, x^.cargs, x^.ccode, x^.cenv)
  end;

  procedure registerglobal(name, val: lv);
  var binding: lv;
  begin
    if (val^.k = kprim) or (val^.k = kclosure) then val := withname(val, name);
    binding := lassoc(name, genv);
    if binding^.k = kpair then binding^.d := val
    else begin binding := cons(name, val); genv := cons(binding, genv) end
  end;

  procedure registersyntax(name, x: lv);
  begin
    gsenv := cons(cons(name, x), gsenv)
  end;

  function expandlist(lines, senv: lv): lv;
  var cur, this, next, x: lv;
  begin
    if lines = lempty then expandlist := lempty
    else begin
      x := expand(lcar(lines), senv);
      this := cons(x, lempty);
      expandlist := this;
      cur := lcdr(lines);
      while cur <> lempty do begin
        x := expand(lcar(cur), senv);
        next := cons(x, lempty);
        this^.d := next;
        this := next;
        cur := lcdr(cur)
      end
    end
  end;

  function expand;
  var x, cur, binding, e1, e2, e3, m: lv;
  begin
    if code^.k = kpair then begin
      x := lcar(code);
      if x = quotesym then expand := code
      else if x = ifsym then begin
        e1 := expand(lref(code, 1), senv);
        e2 := expand(lref(code, 2), senv);
        e3 := expand(lref(code, 3), senv);
        expand := list4(ifsym, e1, e2, e3)
      end else if x = lambdasym then begin
        if code^.d^.k <> kpair then lerror(mbadlambda, code);
        cur := code^.d^.d;
        if cur = lempty then lerror(mbadlambda, code);
        e1 := lref(code, 1);
        e2 := expandlist(cur, senv);
        expand := cons(lambdasym, cons(e1, e2))
      end else if x = setsym then begin
        e1 := expand(lref(code, 1), senv);
        e2 := expand(lref(code, 2), senv);
        expand := list3(setsym, e1, e2)
      end else if x^.k = ksym then begin
        binding := lassoc(x, senv);
        if binding = lfalse then binding := lassoc(x, gsenv);
        if binding <> lfalse then begin
          m := apply(lcdr(binding), lcdr(code));
          expand := expand(m, senv)
        end else expand := expandlist(code, senv)
      end else expand := expandlist(code, senv)
    end else expand := code
  end;

  function eval2(code, env: lv): lv;
  var dproc, dargs, x: lv;
  begin
    dproc := nil;
    dargs := nil;
    x := expand(code, lempty);
    eval2 := evalcode(x, env, false, dproc, dargs)
  end;

  function exec(prim, args: lv): lv;
  var av: argvec; x, first, this, next, lst, produced: lv; i, j: integer; ok: boolean;
  begin
    x := lvoid;
    case prim^.pcode of
      1: begin parseargs(args, 2, false, av); x := mkbool(av[1] = av[2]) end;
      2: begin parseargs(args, 2, false, av); x := mkbool(eqv(av[1], av[2])) end;
      3: begin parseargs(args, 1, false, av); x := mkbool((av[1]^.k = kfix) or (av[1]^.k = kreal)) end;
      4: begin parseargs(args, 0, false, av); x := mkgensym end;
      5: begin parseargs(args, 0, false, av); x := lfalse end;
      6: begin parseargs(args, 1, false, av); x := mkbool((av[1]^.k = kprim) or (av[1]^.k = kclosure)) end;
      7: begin parseargs(args, 1, false, av); x := expand(av[1], lempty) end;
      8: begin parseargs(args, 2, false, av); x := eval2(av[1], av[2]) end;
      9: begin
           parseargs(args, 2, true, av);
           lst := av[2];
           if lst = lempty then x := apply(av[1], lst)
           else if lcdr(lst) = lempty then x := apply(av[1], lcar(lst))
           else begin
             first := cons(lcar(lst), lempty);
             this := first;
             lst := lcdr(lst);
             while lcdr(lst) <> lempty do begin
               next := cons(lcar(lst), lempty);
               this^.d := next;
               this := next;
               lst := lcdr(lst)
             end;
             this^.d := lcar(lst);
             x := apply(av[1], first)
           end
         end;
      10: begin parseargs(args, 1, false, av); lerror(mnoload, av[1]) end;
      11: begin parseargs(args, 2, true, av); x := mkmulti(av[1], av[2]) end;
      12: begin
            parseargs(args, 2, false, av);
            produced := apply(av[1], lempty);
            if produced^.k = kmulti then x := apply(av[2], cons(produced^.vfirst, produced^.vrest))
            else x := apply(av[2], cons(produced, lempty))
          end;
      13: begin
            parseargs(args, 2, false, av);
            protect(opapply, av[2], lempty, x, ok);
            if ok then x := apply(av[1], cons(errorstring, lempty))
          end;
      14: begin parseargs(args, 2, false, av); registerglobal(av[1], av[2]); x := lvoid end;
      15: begin parseargs(args, 2, false, av); registersyntax(av[1], av[2]); x := lvoid end;
      16: begin
            parseargs(args, 2, false, av);
            if (av[1]^.k <> kstr) and (av[1]^.k <> kchar) then lerror(mnotstring, av[1]);
            errmsg := av[1];
            errcode := 0;
            errwhat := av[2];
            goto 1
          end;
      17: begin parseargs(args, 1, false, av); x := mkbool(av[1]^.k = kfix) end;
      18: begin parseargs(args, 2, false, av); i := lisinteger(av[1]); j := lisinteger(av[2]); x := mkfix(i + j) end;
      19: begin parseargs(args, 2, false, av); i := lisinteger(av[1]); j := lisinteger(av[2]); x := mkfix(i - j) end;
      20: begin parseargs(args, 2, false, av); i := lisinteger(av[1]); j := lisinteger(av[2]); x := mkfix(i * j) end;
      21: begin parseargs(args, 2, false, av); i := lisinteger(av[1]); j := lisinteger(av[2]); x := mkfix(i div j) end;
      22: begin parseargs(args, 2, false, av); i := lisinteger(av[1]); j := lisinteger(av[2]); x := mkfix(i mod j) end;
      23: begin parseargs(args, 1, false, av); x := mkreal(listoreal(av[1])) end;
      24: begin parseargs(args, 1, false, av); x := mkbool(av[1]^.k = kreal) end;
      25: begin parseargs(args, 2, false, av); checkreal(av[1]); checkreal(av[2]); x := mkreal(av[1]^.rval + av[2]^.rval) end;
      26: begin parseargs(args, 2, false, av); checkreal(av[1]); checkreal(av[2]); x := mkreal(av[1]^.rval - av[2]^.rval) end;
      27: begin parseargs(args, 2, false, av); checkreal(av[1]); checkreal(av[2]); x := mkreal(av[1]^.rval * av[2]^.rval) end;
      28: begin parseargs(args, 2, false, av); checkreal(av[1]); checkreal(av[2]); x := mkreal(av[1]^.rval / av[2]^.rval) end;
      29: begin parseargs(args, 1, false, av); x := mkbool(av[1]^.k = kpair) end;
      30: begin parseargs(args, 2, false, av); x := cons(av[1], av[2]) end;
      31: begin parseargs(args, 1, false, av); x := lcar(av[1]) end;
      32: begin parseargs(args, 1, false, av); x := lcdr(av[1]) end;
      33: begin parseargs(args, 2, false, av); if av[1]^.k <> kpair then lerror(mnotpair, av[1]); av[1]^.a := av[2]; x := lvoid end;
      34: begin parseargs(args, 2, false, av); if av[1]^.k <> kpair then lerror(mnotpair, av[1]); av[1]^.d := av[2]; x := lvoid end
    end;
    exec := x
  end;

  function apply;
  var cur, env, x: lv;
  begin
    x := nil;
    repeat
      if proc = nil then lerror(mnotproc, nil);
      if proc^.k = kprim then begin x := exec(proc, args); proc := nil end
      else if proc^.k = kclosure then begin
        env := lappend(expandargs(proc, proc^.cargs, args), proc^.cenv);
        cur := proc^.ccode;
        proc := nil;
        while cur <> lempty do begin
          if lcdr(cur) = lempty then x := evalcode(lcar(cur), env, true, proc, args)
          else x := evalcode(lcar(cur), env, false, proc, args);
          cur := lcdr(cur)
        end
      end else lerror(mnotproc, proc)
    until proc = nil;
    apply := x
  end;

  procedure regprim(name: nametext; code: integer);
  begin
    registerglobal(intern(name), mkprim(code, nil))
  end;

  procedure registerprimitives;
  begin
    regprim('eq?                 ', 1);
    regprim('eqv?                ', 2);
    regprim('number?             ', 3);
    regprim('gensym              ', 4);
    regprim('boehm?              ', 5);
    regprim('procedure?          ', 6);
    regprim('expand              ', 7);
    regprim('eval                ', 8);
    regprim('apply               ', 9);
    regprim('load                ', 10);
    regprim('values              ', 11);
    regprim('call-with-values    ', 12);
    regprim('call-with-exception ', 13);
    regprim('add-global          ', 14);
    regprim('add-syntax          ', 15);
    regprim('error               ', 16);
    regprim('fixnum?             ', 17);
    regprim('fixnum-add          ', 18);
    regprim('fixnum-subtract     ', 19);
    regprim('fixnum-multiply     ', 20);
    regprim('fixnum-quotient     ', 21);
    regprim('fixnum-modulo       ', 22);
    regprim('fixnum->real        ', 23);
    regprim('real?               ', 24);
    regprim('real-add            ', 25);
    regprim('real-subtract       ', 26);
    regprim('real-multiply       ', 27);
    regprim('real-divide         ', 28);
    regprim('pair?               ', 29);
    regprim('cons                ', 30);
    regprim('car                 ', 31);
    regprim('cdr                 ', 32);
    regprim('set-car!            ', 33);
    regprim('set-cdr!            ', 34)
  end;

  procedure loadprelude;
  var x: lv;
  begin
    while not porteof(prelport) do begin
      x := lread(prelport);
      x := eval2(x, lempty)
    end
  end;

begin
  caught := false;
  r := nil;
  if op = opinit then begin registerprimitives; loadprelude; r := lvoid end
  else if op = opread then r := lread(p1)
  else if op = opeval then r := eval2(p1, p2)
  else r := apply(p1, p2);
  outv := r;
  goto 2;
1:
  caught := true;
  outv := lvoid;
2:
end;

procedure initmessages;
begin
  msgs[1] := 'not a pair                      ';
  msgs[2] := 'not a fixnum                    ';
  msgs[3] := 'not a real                      ';
  msgs[4] := 'not a char                      ';
  msgs[5] := 'not a string                    ';
  msgs[6] := 'Symbols must have names         ';
  msgs[7] := 'Not enough arguments            ';
  msgs[8] := 'Too many arguments              ';
  msgs[9] := 'arguments must be unique        ';
  msgs[10] := 'unknown variable                ';
  msgs[11] := 'too many arguments              ';
  msgs[12] := 'not enough arguments            ';
  msgs[13] := 'invalid lambda expression       ';
  msgs[14] := 'not a procedure                 ';
  msgs[15] := 'Unknown use of hash syntax      ';
  msgs[16] := 'unexpected list end             ';
  msgs[17] := 'Unterminated list               ';
  msgs[18] := 'Invalid cons                    ';
  msgs[19] := 'Not a Real                      ';
  msgs[20] := 'load needs a named file         '
end;

procedure initprelude;
begin
  prel[1] := '; Right now there are no syntactic forms defined or anything                    ';
  prel[2] := '; Basically we have the primitive forms and some data primtives                 ';
  prel[3] := '; It''s basically a race to define quasiquote, and then we''re a bit happier.     ';
  prel[4] := '                                                                                ';
  prel[5] := '(add-global ''list                                                               ';
  prel[6] := '  (lambda x x))                                                                 ';
  prel[7] := '                                                                                ';
  prel[8] := '(add-global ''definition                                                         ';
  prel[9] := '  (lambda (d s h b)                                                             ';
  prel[10] := '    (if (pair? h)                                                               ';
  prel[11] := '      (list d                                                                   ';
  prel[12] := '            (car h)                                                             ';
  prel[13] := '            (cons ''lambda                                                       ';
  prel[14] := '                  (cons (cdr h)                                                 ';
  prel[15] := '                        b)))                                                    ';
  prel[16] := '      (list s (list ''quote h) (car b)))))                                       ';
  prel[17] := '                                                                                ';
  prel[18] := '(add-syntax ''define-macro                                                       ';
  prel[19] := '  (lambda (h . b)                                                               ';
  prel[20] := '    (definition ''define-macro ''add-syntax h b)))                                ';
  prel[21] := '                                                                                ';
  prel[22] := '(define-macro (define h . b)                                                    ';
  prel[23] := '  (definition ''define ''add-global h b))                                         ';
  prel[24] := '                                                                                ';
  prel[25] := '; That''s some of the really rough stuff out of the way                          ';
  prel[26] := '                                                                                ';
  prel[27] := '(define (null? x)                                                               ';
  prel[28] := '  (eq? x ''()))                                                                  ';
  prel[29] := '                                                                                ';
  prel[30] := '(define (zero? x)                                                               ';
  prel[31] := '  (if (eqv? x 0)                                                                ';
  prel[32] := '    #t                                                                          ';
  prel[33] := '    (eqv? x 0.0)))                                                              ';
  prel[34] := '                                                                                ';
  prel[35] := '(define (void)                                                                  ';
  prel[36] := '  #v)                                                                           ';
  prel[37] := '                                                                                ';
  prel[38] := '(define (1- x)                                                                  ';
  prel[39] := '  (fixnum-subtract x 1))                                                        ';
  prel[40] := '                                                                                ';
  prel[41] := '(define (1+ x)                                                                  ';
  prel[42] := '  (fixnum-add x 1))                                                             ';
  prel[43] := '                                                                                ';
  prel[44] := '; Fold and map get better definitions below                                     ';
  prel[45] := '                                                                                ';
  prel[46] := '(define (fold p i l)                                                            ';
  prel[47] := '  (if (null? l)                                                                 ';
  prel[48] := '    i                                                                           ';
  prel[49] := '    (fold p (p (car l) i) (cdr l))))                                            ';
  prel[50] := '                                                                                ';
  prel[51] := '(define (reverse l)                                                             ';
  prel[52] := '  (fold cons ''() l))                                                            ';
  prel[53] := '                                                                                ';
  prel[54] := '(define (map p l)                                                               ';
  prel[55] := '  (reverse (fold  (lambda (x acc) (cons (p x) acc))                             ';
  prel[56] := '                  ''()                                                           ';
  prel[57] := '                  l)))                                                          ';
  prel[58] := '                                                                                ';
  prel[59] := '(define (append . ls)                                                           ';
  prel[60] := '  (if (null? ls)                                                                ';
  prel[61] := '    ls                                                                          ';
  prel[62] := '    (if (null? (cdr ls))                                                        ';
  prel[63] := '      (car ls)                                                                  ';
  prel[64] := '      (fold cons (apply append (cdr ls)) (reverse (car ls))))))                 ';
  prel[65] := '                                                                                ';
  prel[66] := '(define (compose f g)                                                           ';
  prel[67] := '  (lambda args (f (apply g args))))                                             ';
  prel[68] := '                                                                                ';
  prel[69] := '; list accessors                                                                ';
  prel[70] := '                                                                                ';
  prel[71] := '(define   caar (compose car car))                                               ';
  prel[72] := '(define   cadr (compose car cdr))                                               ';
  prel[73] := '(define   cdar (compose cdr car))                                               ';
  prel[74] := '(define   cddr (compose cdr cdr))                                               ';
  prel[75] := '(define  caaar (compose car caar))                                              ';
  prel[76] := '(define  caadr (compose car cadr))                                              ';
  prel[77] := '(define  cadar (compose car cdar))                                              ';
  prel[78] := '(define  caddr (compose car cddr))                                              ';
  prel[79] := '(define  cdaar (compose cdr caar))                                              ';
  prel[80] := '(define  cdadr (compose cdr cadr))                                              ';
  prel[81] := '(define  cddar (compose cdr cdar))                                              ';
  prel[82] := '(define  cdddr (compose cdr cddr))                                              ';
  prel[83] := '(define caaaar (compose car caaar))                                             ';
  prel[84] := '(define caaadr (compose car caadr))                                             ';
  prel[85] := '(define caadar (compose car cadar))                                             ';
  prel[86] := '(define caaddr (compose car caddr))                                             ';
  prel[87] := '(define cadaar (compose car cdaar))                                             ';
  prel[88] := '(define cadadr (compose car cdadr))                                             ';
  prel[89] := '(define caddar (compose car cddar))                                             ';
  prel[90] := '(define cadddr (compose car cdddr))                                             ';
  prel[91] := '(define cdaaar (compose cdr caaar))                                             ';
  prel[92] := '(define cdaadr (compose cdr caadr))                                             ';
  prel[93] := '(define cdadar (compose cdr cadar))                                             ';
  prel[94] := '(define cdaddr (compose cdr caddr))                                             ';
  prel[95] := '(define cddaar (compose cdr cdaar))                                             ';
  prel[96] := '(define cddadr (compose cdr cdadr))                                             ';
  prel[97] := '(define cdddar (compose cdr cddar))                                             ';
  prel[98] := '(define cddddr (compose cdr cdddr))                                             ';
  prel[99] := '                                                                                ';
  prel[100] := '(define-macro (quasiquote tmplt)                                                ';
  prel[101] := '  (if (pair? tmplt)                                                             ';
  prel[102] := '    (fold (lambda (cell acc)                                                    ';
  prel[103] := '            (if (pair? cell)                                                    ';
  prel[104] := '              (if (eq? (car cell) ''unquote)                                     ';
  prel[105] := '                (list ''cons (cadr cell) acc)                                    ';
  prel[106] := '                (if (eq? (car cell) ''unquote-splicing)                          ';
  prel[107] := '                  (list ''append (cadr cell) acc)                                ';
  prel[108] := '                  (list ''cons (list ''quasiquote cell) acc)))                    ';
  prel[109] := '              (list ''cons (list ''quote cell) acc)))                             ';
  prel[110] := '          ''''()                                                                  ';
  prel[111] := '          (reverse tmplt))                                                      ';
  prel[112] := '    (list ''quote tmplt)))                                                       ';
  prel[113] := '                                                                                ';
  prel[114] := '; Woo! Now let''s get defining!                                                  ';
  prel[115] := '                                                                                ';
  prel[116] := '(define-macro (with-gensyms ss . b)                                             ';
  prel[117] := '  `(let ,(map (lambda (s) `(,s (gensym))) ss)                                   ';
  prel[118] := '    ,@b))                                                                       ';
  prel[119] := '                                                                                ';
  prel[120] := '(define-macro (begin . b)                                                       ';
  prel[121] := '  `((lambda () ,@b)))                                                           ';
  prel[122] := '                                                                                ';
  prel[123] := '(define-macro (when t . b)                                                      ';
  prel[124] := '  `(if ,t (begin ,@b) #v))                                                      ';
  prel[125] := '                                                                                ';
  prel[126] := '(define-macro (unless t . b)                                                    ';
  prel[127] := '  `(when (not ,t) ,@b))                                                         ';
  prel[128] := '                                                                                ';
  prel[129] := '(define-macro (let bs . b)                                                      ';
  prel[130] := '  (if (pair? bs)                                                                ';
  prel[131] := '    `((lambda ,(map car bs) ,@b) ,@(map cadr bs))                               ';
  prel[132] := '    `(letrec ((,bs (lambda ,(map car (car b)) ,@(cdr b))))                      ';
  prel[133] := '      (,bs ,@(map cadr (car b))))))                                             ';
  prel[134] := '                                                                                ';
  prel[135] := '(define-macro (let* bs . b)                                                     ';
  prel[136] := '  (if (null? bs)                                                                ';
  prel[137] := '    `(begin ,@b)                                                                ';
  prel[138] := '    `(let (,(car bs)) (let* ,(cdr bs) ,@b))))                                   ';
  prel[139] := '                                                                                ';
  prel[140] := '(define-macro (letrec bs . b)                                                   ';
  prel[141] := '  `(let ,(map (lambda (b) `(,(car b) #v))                                       ';
  prel[142] := '              bs)                                                               ';
  prel[143] := '    ,@(map  (lambda (b) `(set! ,(car b) ,(cadr b)))                             ';
  prel[144] := '            bs)                                                                 ';
  prel[145] := '    ,@b))                                                                       ';
  prel[146] := '                                                                                ';
  prel[147] := '(define-macro (and . cs)                                                        ';
  prel[148] := '  (if (null? cs)                                                                ';
  prel[149] := '    #t                                                                          ';
  prel[150] := '    (if (null? (cdr cs))                                                        ';
  prel[151] := '      (car cs)                                                                  ';
  prel[152] := '      `(if ,(car cs)                                                            ';
  prel[153] := '        (and ,@(cdr cs))                                                        ';
  prel[154] := '        #f))))                                                                  ';
  prel[155] := '                                                                                ';
  prel[156] := '(define-macro (or . cs)                                                         ';
  prel[157] := '  (if (null? cs)                                                                ';
  prel[158] := '    #f                                                                          ';
  prel[159] := '    (with-gensyms (val)                                                         ';
  prel[160] := '      `(let ((,val ,(car cs)))                                                  ';
  prel[161] := '        (if ,val                                                                ';
  prel[162] := '          ,val                                                                  ';
  prel[163] := '          (or ,@(cdr cs)))))))                                                  ';
  prel[164] := '                                                                                ';
  prel[165] := '(define (not x)                                                                 ';
  prel[166] := '  (if x #f #t))                                                                 ';
  prel[167] := '                                                                                ';
  prel[168] := '(define-macro (cond . cs)                                                       ';
  prel[169] := '  (if (null? cs)                                                                ';
  prel[170] := '    #v                                                                          ';
  prel[171] := '    (let ((c (car cs)))                                                         ';
  prel[172] := '      (if (eq? (car c) ''else)                                                   ';
  prel[173] := '        `(begin ,@(cdr c))                                                      ';
  prel[174] := '        (if (eq? (cadr c) ''=>)                                                  ';
  prel[175] := '          (with-gensyms (val)                                                   ';
  prel[176] := '            `(let ((,val ,(car c)))                                             ';
  prel[177] := '              (if ,val                                                          ';
  prel[178] := '                (,(caddr c) ,val)                                               ';
  prel[179] := '                (cond ,@(cdr cs)))))                                            ';
  prel[180] := '          `(if ,(car c)                                                         ';
  prel[181] := '            (begin ,@(cdr c))                                                   ';
  prel[182] := '            (cond ,@(cdr cs))))))))                                             ';
  prel[183] := '                                                                                ';
  prel[184] := '(define-macro (do vars test . cmds)                                             ';
  prel[185] := '  (with-gensyms (loop)                                                          ';
  prel[186] := '    `(let ,loop ,(map (lambda (var) `[,(car var) ,(cadr var)]) vars)            ';
  prel[187] := '      (if ,(car test)                                                           ';
  prel[188] := '        (begin                                                                  ';
  prel[189] := '          ,@(cdr test))                                                         ';
  prel[190] := '        (begin                                                                  ';
  prel[191] := '          ,@cmds                                                                ';
  prel[192] := '          (,loop ,@(map (lambda (var)                                           ';
  prel[193] := '                          (if (null? (cddr var))                                ';
  prel[194] := '                            (car var)                                           ';
  prel[195] := '                            (caddr var)))                                       ';
  prel[196] := '                        vars)))))))                                             ';
  prel[197] := '                                                                                ';
  prel[198] := '; Lists                                                                         ';
  prel[199] := '                                                                                ';
  prel[200] := '(define (list-type x)                                                           ';
  prel[201] := '  (cond                                                                         ';
  prel[202] := '    [(null? x) ''proper]                                                         ';
  prel[203] := '    [(pair? x)                                                                  ';
  prel[204] := '      (let next  ([slow x]                                                      ';
  prel[205] := '                  [fast1 (cdr x)])                                              ';
  prel[206] := '        (cond                                                                   ';
  prel[207] := '          [(null? fast1) ''proper]                                               ';
  prel[208] := '          [(not (pair? fast1)) ''improper]                                       ';
  prel[209] := '          [else (let ([fast2 (cdr fast1)])                                      ';
  prel[210] := '                  (cond                                                         ';
  prel[211] := '                    [(or  (null? slow)                                          ';
  prel[212] := '                          (null? fast2))                                        ';
  prel[213] := '                      ''proper]                                                  ';
  prel[214] := '                    [(not (and  (pair? slow)                                    ';
  prel[215] := '                                (pair? fast2)))                                 ';
  prel[216] := '                      ''improper]                                                ';
  prel[217] := '                    [(or  (eq? slow fast1)                                      ';
  prel[218] := '                          (eq? slow fast2))                                     ';
  prel[219] := '                      ''circular]                                                ';
  prel[220] := '                    [else (next (cdr slow)                                      ';
  prel[221] := '                                (cdr fast2))]))]))]                             ';
  prel[222] := '    [else #f]))                                                                 ';
  prel[223] := '                                                                                ';
  prel[224] := '(define proper-list? #f)                                                        ';
  prel[225] := '(define improper-list? #f)                                                      ';
  prel[226] := '(define circular-list? #f)                                                      ';
  prel[227] := '(let ([list-checker (lambda (type)                                              ';
  prel[228] := '                      (lambda (x) (eq? (list-type x) type)))])                  ';
  prel[229] := '  (set! proper-list? (list-checker ''proper))                                    ';
  prel[230] := '  (set! improper-list? (list-checker ''improper))                                ';
  prel[231] := '  (set! circular-list? (list-checker ''circular)))                               ';
  prel[232] := '                                                                                ';
  prel[233] := '(define list? proper-list?)                                                     ';
  prel[234] := '                                                                                ';
  prel[235] := '(define (assert pred x msg)                                                     ';
  prel[236] := '  (unless (pred x)                                                              ';
  prel[237] := '    (error msg x)))                                                             ';
  prel[238] := '                                                                                ';
  prel[239] := '(define (assert-type pred x)                                                    ';
  prel[240] := '  (assert pred x "inavlid type"))                                               ';
  prel[241] := '                                                                                ';
  prel[242] := '(define (assert-list l)                                                         ';
  prel[243] := '  (assert-type list? l))                                                        ';
  prel[244] := '                                                                                ';
  prel[245] := '(define (list-tail ls ref)                                                      ';
  prel[246] := '  (do  ([cur ls (cdr cur)]                                                      ';
  prel[247] := '        [x ref (1- x)])                                                         ';
  prel[248] := '    ((zero? x) cur)))                                                           ';
  prel[249] := '                                                                                ';
  prel[250] := '(define (list-head ls ref)                                                      ';
  prel[251] := '  (reverse                                                                      ';
  prel[252] := '    (do  ([cur ls (cdr cur)]                                                    ';
  prel[253] := '          [x ref (1- x)]                                                        ';
  prel[254] := '          [acc ''() (cons (car cur) acc)])                                       ';
  prel[255] := '      ((zero? x) acc))))                                                        ';
  prel[256] := '                                                                                ';
  prel[257] := '(define (list-ref ls ref)                                                       ';
  prel[258] := '  (car (list-tail ls ref)))                                                     ';
  prel[259] := '                                                                                ';
  prel[260] := '(define (fold-left proc init l . ls)                                            ';
  prel[261] := '  (assert-list l)                                                               ';
  prel[262] := '  (if (null? ls)                                                                ';
  prel[263] := '    (if (null? l)                                                               ';
  prel[264] := '      init                                                                      ';
  prel[265] := '      (fold-left proc (proc (car l) init) (cdr l)))                             ';
  prel[266] := '    (let ([lst (cons l ls)])                                                    ';
  prel[267] := '      (for-each assert-list ls)                                                 ';
  prel[268] := '      (if (fold-left  (lambda (x acc) (or acc (null? x)))                       ';
  prel[269] := '                      #f                                                        ';
  prel[270] := '                      lst)                                                      ';
  prel[271] := '        init                                                                    ';
  prel[272] := '        (apply  fold-left                                                       ';
  prel[273] := '                proc                                                            ';
  prel[274] := '                (apply proc (append (map car lst)                               ';
  prel[275] := '                                    (list init)))                               ';
  prel[276] := '                (map cdr lst))))))                                              ';
  prel[277] := '                                                                                ';
  prel[278] := '(define fold fold-left)                                                         ';
  prel[279] := '                                                                                ';
  prel[280] := '(define (fold-right p i . ls)                                                   ';
  prel[281] := '  (apply fold p i (map reverse ls)))                                            ';
  prel[282] := '                                                                                ';
  prel[283] := '(define (length ls)                                                             ';
  prel[284] := '  (fold (lambda (x acc) (1+ acc)) 0 ls))                                        ';
  prel[285] := '                                                                                ';
  prel[286] := '(define (map proc . ls)                                                         ';
  prel[287] := '  (let ([ls-len (length ls)])                                                   ';
  prel[288] := '    (reverse (apply fold                                                        ';
  prel[289] := '                    (lambda args                                                ';
  prel[290] := '                      (let ([ls (list-head args ls-len)]                        ';
  prel[291] := '                            [acc (car (list-tail args ls-len))])                ';
  prel[292] := '                        (cons (apply proc ls) acc)))                            ';
  prel[293] := '                    ''()                                                         ';
  prel[294] := '                    ls))))                                                      ';
  prel[295] := '                                                                                ';
  prel[296] := '(define (for-each proc . ls)                                                    ';
  prel[297] := '  (let ([ls-len (length ls)])                                                   ';
  prel[298] := '    (apply  fold                                                                ';
  prel[299] := '            (lambda args                                                        ';
  prel[300] := '              (let ([ls (list-head args ls-len)])                               ';
  prel[301] := '                (apply proc ls)))                                               ';
  prel[302] := '            ''()                                                                 ';
  prel[303] := '            ls)                                                                 ';
  prel[304] := '    (void)))                                                                    ';
  prel[305] := '                                                                                ';
  prel[306] := '(define (list=? a b)                                                            ';
  prel[307] := '  (cond                                                                         ';
  prel[308] := '    [(and (null? a) (null? b)) #t]                                              ';
  prel[309] := '    [(and (pair? a) (pair? b))                                                  ';
  prel[310] := '      (fold (lambda (a b acc)                                                   ';
  prel[311] := '              (and  acc                                                         ';
  prel[312] := '                    (equal? a b)))                                              ';
  prel[313] := '            #t                                                                  ';
  prel[314] := '            a                                                                   ';
  prel[315] := '            b)]                                                                 ';
  prel[316] := '    [else #f]))                                                                 ';
  prel[317] := '                                                                                ';
  prel[318] := '; equal? case, case-lambda                                                      ';
  prel[319] := '                                                                                ';
  prel[320] := '(define (equal? a b)                                                            ';
  prel[321] := '  ((cond                                                                        ';
  prel[322] := '      [(list? a) list=?]                                                        ';
  prel[323] := '      [else eqv?])                                                              ';
  prel[324] := '    a b))                                                                       ';
  prel[325] := '                                                                                ';
  prel[326] := '(define-macro (case val . cs)                                                   ';
  prel[327] := '  (with-gensyms (tmp)                                                           ';
  prel[328] := '    `(let ([,tmp ,val])                                                         ';
  prel[329] := '      (cond ,@(map  (lambda (c)                                                 ';
  prel[330] := '                      (if (eq? ''else (car c))                                   ';
  prel[331] := '                        c                                                       ';
  prel[332] := '                        `[(or ,@(map (lambda (v) `(equal? ,tmp '',v)) (car c)))  ';
  prel[333] := '                          ,@(cdr c)]))                                          ';
  prel[334] := '                    cs)))))                                                     ';
  prel[335] := '                                                                                ';
  prel[336] := '(define-macro (case-lambda . cs)                                                ';
  prel[337] := '  (with-gensyms (args)                                                          ';
  prel[338] := '    `(lambda ,args                                                              ';
  prel[339] := '      (apply  (case (length ,args)                                              ';
  prel[340] := '                ,@(map  (lambda (c)                                             ';
  prel[341] := '                          (if (list? (car c))                                   ';
  prel[342] := '                            `[(,(length (car c))) (lambda ,@c)]                 ';
  prel[343] := '                            `[else (lambda ,@c)]))                              ';
  prel[344] := '                        cs))                                                    ';
  prel[345] := '              ,args))))                                                         ';
  prel[346] := '                                                                                ';
  prel[347] := '; Numbers                                                                       ';
  prel[348] := '                                                                                ';
  prel[349] := '(define integer? fixnum?)                                                       ';
  prel[350] := '                                                                                ';
  prel[351] := '(define =                                                                       ';
  prel[352] := '  (case-lambda                                                                  ';
  prel[353] := '    [() #t]                                                                     ';
  prel[354] := '    [(a) (assert-type number? a) #t]                                            ';
  prel[355] := '    [(a b .rest)                                                                ';
  prel[356] := '      (assert-type number? a)                                                   ';
  prel[357] := '      (assert-type number? b)                                                   ';
  prel[358] := '      (and  (eqv? a b)                                                          ';
  prel[359] := '            (apply = b rest))]))                                                ';
  prel[360] := '                                                                                ';
  prel[361] := '(define quotient fixnum-quotient)                                               ';
  prel[362] := '(define modulo fixnum-modulo)                                                   ';
  prel[363] := '                                                                                ';
  prel[364] := '(define (remainder n d)                                                         ';
  prel[365] := '  (-  n                                                                         ';
  prel[366] := '      (* (quotient n d) d)))                                                    ';
  prel[367] := '                                                                                ';
  prel[368] := '(define (num-op id rec wraps-fn wraps-rl)                                       ';
  prel[369] := '  (case-lambda                                                                  ';
  prel[370] := '    [()                                                                         ';
  prel[371] := '      id]                                                                       ';
  prel[372] := '    [(a)                                                                        ';
  prel[373] := '      (assert-type number? a)                                                   ';
  prel[374] := '      (rec id a)]                                                               ';
  prel[375] := '    [(a b)                                                                      ';
  prel[376] := '      (assert-type number? a)                                                   ';
  prel[377] := '      (assert-type number? b)                                                   ';
  prel[378] := '      (if (and (fixnum? a) (fixnum? b))                                         ';
  prel[379] := '        (wraps-fn a b)                                                          ';
  prel[380] := '        (wraps-rl (fixnum->real a) (fixnum->real b)))]                          ';
  prel[381] := '    [(a b . rest)                                                               ';
  prel[382] := '      (apply rec (rec a b) rest)]))                                             ';
  prel[383] := '                                                                                ';
  prel[384] := '(define + (num-op 0 (lambda xs (apply + xs)) fixnum-add real-add))              ';
  prel[385] := '(define - (num-op 0 (lambda xs (apply - xs)) fixnum-subtract real-subtract))    ';
  prel[386] := '(define * (num-op 1 (lambda xs (apply * xs)) fixnum-multiply real-multiply))    ';
  prel[387] := '(define / (num-op 1                                                             ';
  prel[388] := '                  (lambda xs (apply / xs))                                      ';
  prel[389] := '                  (lambda (a b) (real-divide (fixnum->real a) (fixnum->real b)))';
  prel[390] := '                  real-divide))                                                 ';
  preln := 390
end;

begin
  pooln := 0;
  nsym := 0;
  ngensym := 0;
  sinkpool := false;
  errcode := 0;
  errwhat := nil;
  errmsg := nil;
  lempty := newcell(kempty);
  lvoid := newcell(kvoid);
  leofobj := newcell(keof);
  ltrue := newcell(kbool);
  lfalse := newcell(kbool);
  for ci := 0 to 255 do begin chars[chr(ci)] := newcell(kchar); chars[chr(ci)]^.cval := chr(ci) end;
  genv := lempty;
  gsenv := lempty;
  initmessages;
  initprelude;
  prelline := 1;
  prelcol := 1;
  quotesym := intern('quote               ');
  ifsym := intern('if                  ');
  lambdasym := intern('lambda              ');
  setsym := intern('set!                ');
  quasisym := intern('quasiquote          ');
  unquotesym := intern('unquote             ');
  splicesym := intern('unquote-splicing    ');
  inport := mkport(pinput);
  prelport := mkport(pprelude);
  protect(opinit, nil, nil, res, failed);
  if failed then begin write('prelude error: '); writeerror; writeln end;
  poolput('>');
  poolput(' ');
  prompt := mkstr(pooln - 1, 2);
  while not porteof(inport) do begin
    writeval(prompt, true);
    protect(opread, inport, nil, form, failed);
    if not failed then protect(opeval, form, lempty, res, failed);
    if failed then begin write('error: '); writeerror; writeln end
    else if (res <> leofobj) and (res <> lvoid) then begin writeval(res, false); writeln end
  end;
99:
end.
