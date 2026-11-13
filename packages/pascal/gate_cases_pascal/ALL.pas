{----------------- 1 test_gate_builder_mines_a_pascal_collection_by_fpc__input1}
program input1(input, output);
var n: integer;
begin
  n := 0; if not eof then read(n); writeln(n)
end.
{------------------ 2 test_gate_builder_mines_a_pascal_collection_by_fpc__plain}
program plain(output);
begin
  writeln(1 + 1)
end.
{----------------- 3 test_gate_builder_mines_a_pascal_collection_by_fpc__writer}
program writer(output);
var f: text;
begin
  assign(f, 'made.txt'); rewrite(f); writeln(f, 'x'); close(f); writeln('wrote')
end.
{- 4 test_gate_emit_a_shared_omega_leaf_stores_an_rsp_vslot_at_the_depth_its_successor_reads__eolc}
program eolc;
var ch: char; n: integer;
begin n := 0;
  while not eof(input) do begin read(input, ch); n := n + 1; write(ord(ch):4); if not eof(input) then write(eoln(input):6) end;
  writeln; writeln(n)
end.
{- 5 test_gate_gc_a_callee_saved_register_at_an_allocating_return_is_named_not_assumed__w}
program sumloop;
var
  i, s: integer;
function add(a, b: integer): integer;
begin
  add := a + b
end;
begin
  s := 0;
  for i := 1 to 5 do
    s := add(s, 2);
  writeln(s)
end.
{---------------------------- 6 test_gate_gc_map_table_present_in_both_media__f}
program sumloop;
var
  i, s: integer;
function add(a, b: integer): integer;
begin
  add := a + b
end;
begin
  s := 0;
  for i := 1 to 5 do
    s := add(s, 2);
  writeln(s)
end.
{------------------------ 7 test_gate_gc_pas_every_frame_slot_has_a_kind__plant}
program plant;
function add(a, b: integer): integer;
begin add := a + b end;
begin writeln(add(1, 2)) end.
{--------------- 8 test_gate_gc_pas_heap_cells_survive_forced_movement__paslist}
program paslist(output);
type
  pp = ^prec;
  prec = record
    f: integer;
    ael, inx: pp;
    tag: packed array[1..24] of char
  end;
var
  head, cur, junk: pp;
  i, j, s: integer;
begin
  head := nil;
  for i := 1 to 120 do
    begin
      new(cur); cur^.f := i;
      cur^.tag := 'LLLLLLLLLLLLLLLLLLLLLLLL';
      cur^.ael := head; cur^.inx := nil; head := cur
    end;
  for j := 1 to 400 do
    begin
      new(junk); junk^.f := j;
      junk^.tag := 'GGGGGGGGGGGGGGGGGGGGGGGG';
      dispose(junk)
    end;
  s := 0; cur := head;
  while cur <> nil do
    begin
      s := s + cur^.f;
      if cur^.tag <> 'LLLLLLLLLLLLLLLLLLLLLLLL' then s := s + 100000;
      cur := cur^.ael
    end;
  writeln(s); writeln(head^.tag)
end.
{---------------- 9 test_gate_gc_pas_heap_cells_survive_forced_movement__pasrec}
program pasrec(output);
type
  pp = ^prec;
  prec = record
    a, b, c, d: integer;
    tag: packed array[1..40] of char
  end;
var
  p: array[1..40] of pp;
  q: pp;
  i, j, s: integer;
begin
  for i := 1 to 40 do
    begin
      new(p[i]);
      p[i]^.a := i; p[i]^.b := i * 2; p[i]^.c := i * 3; p[i]^.d := i * 4;
      p[i]^.tag := 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
    end;
  for j := 1 to 300 do
    begin
      new(q); q^.a := j;
      q^.tag := 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB';
      dispose(q)
    end;
  s := 0;
  for i := 1 to 40 do s := s + p[i]^.a + p[i]^.b + p[i]^.c + p[i]^.d;
  writeln(s); writeln(p[1]^.tag); writeln(p[40]^.tag)
end.
{---- 10 test_gate_gc_the_chain_over_the_maps_finds_every_frame_by_return_pc__w}
program w;
function sq(n: integer): integer;
begin sq := n * n end;
begin writeln(sq(9)) end.
{- 11 test_gate_monitor_a_repeated_snobol4_assignment_is_reported_each_time__global}
program g;
var total: integer;
begin
  total := 1;
  total := total + 1;
  writeln(total)
end.
{------------ 12 test_gate_pas_a_blocks_declaration_parts_come_in_iso_order__ok}
program declctl(output);
label 1;
const k = 3;
type small = 1..10;
var n: small; total: integer;
procedure outer(m: integer);
label 2;
const j = 2;
type pair = record a, b: integer end;
var p: pair;
  function twice(x: integer): integer;
  var t: integer;
  begin t := x * j; twice := t end;
begin p.a := m; p.b := twice(m); total := total + p.a + p.b; if total > 100 then goto 2; 2: end;
begin
  total := 0; n := k;
  outer(n);
  if total = 9 then goto 1;
  writeln('never');
  1: writeln('ordered parts accepted, total = ', total)
end.
{- 13 test_gate_pas_a_boolean_array_element_or_record_field_prints_as_a_boolean__tctl}
program tctl(output);
type bar = array[1..3] of boolean;
     m2 = array[1..2, 1..2] of boolean;
     inner = record ok: boolean; n: integer end;
     rec = record n: integer; f: boolean; g: char; in1: inner end;
     prec = ^rec;
var a: array[1..3] of boolean; ba: bar; mm: m2; r: rec; p: prec; i: integer; b: boolean; ch: char;
begin
  a[1] := true; a[2] := false; a[3] := true;
  ba[1] := false; ba[2] := true; ba[3] := false;
  mm[1,1] := true; mm[1,2] := false; mm[2,1] := false; mm[2,2] := true;
  r.n := 1; r.f := false; r.g := 'k'; r.in1.ok := true; r.in1.n := 9;
  new(p); p^.f := true; p^.g := 'z'; p^.n := 2;
  for i := 1 to 3 do begin write(a[i]); write(' '); writeln(ba[i]) end;
  writeln(mm[1,1], ' ', mm[1,2], ' ', mm[2,1], ' ', mm[2,2]);
  writeln(r.f); writeln(r.g); writeln(r.in1.ok); writeln(p^.f); writeln(p^.g);
  writeln(not a[2]); writeln(not r.f);
  writeln(a[1] and a[3]); writeln(a[1] or a[2]); writeln(r.f or r.in1.ok);
  with r do begin writeln(f); writeln(in1.ok) end;
  b := a[1]; writeln(b); b := r.in1.ok; writeln(b);
  writeln(a[1] = a[3]);
  if a[2] then writeln('wrong') else writeln('right');
  if not ba[1] then writeln('nb1');
  for i := 1 to 3 do writeln(a[i]);
  i := 1; b := a[i] and a[2]; if b then writeln('T') else writeln('F');
  writeln(a[1] and a[2]); writeln(a[2] or a[2]); writeln(r.f or r.in1.ok)
end.
{- 14 test_gate_pas_a_boolean_local_does_not_make_a_later_routines_variable_of_the_same_name_boolean__tctl}
program tctl(output);
var g: boolean; n: integer;
function isok(x: integer): boolean;
begin isok := x > 2 end;
procedure one;
var r, f: boolean;
begin r := true; f := false; writeln(r, ' ', f); if isok(3) then writeln('ok3'); if not isok(1) then writeln('no1') end;
procedure two;
var r: real; f: integer;
begin r := 6.5; f := 3; writeln(r:8:3); writeln(f:1); f := f * 2 + 1; writeln(f); r := r * 2.0; writeln(r:6:2) end;
procedure fw(flag: boolean); forward;
procedure three(flag: integer);
begin writeln(flag + 1) end;
procedure fw;
begin if flag then writeln('flag true') else writeln('flag false'); writeln(flag) end;
procedure five;
var flag: integer;
begin flag := 41; writeln(flag + 1) end;
procedure four;
var b: integer;
  function inner(x: integer): boolean;
  var b: boolean;
  begin b := x > 0; inner := b end;
begin b := 5; writeln(b:1); if inner(2) then writeln('in true'); b := b + 1; writeln(b:1); writeln(inner(0)) end;
begin
  g := true; n := 4;
  one; two; three(4); fw(true); fw(false); five; four;
  writeln(g); writeln(n:1); if isok(n) then writeln('n ok')
end.
{- 15 test_gate_pas_a_boolean_tag_field_prints_as_a_boolean_and_new_assigns_a_pointer_field_of_a_variant_arm__tctl1}
program tctl1(output);
type valu = record case intval: boolean of true: (ival: integer); false: (valp: ^integer) end;
     r2 = record n: integer; case t: boolean of true: (a: integer); false: (b: integer) end;
var v: valu; q: r2;
begin
  v.intval := false; writeln(v.intval);
  q.n := 1; q.t := true; writeln(q.t); q.t := false; writeln(q.t)
end.
{- 16 test_gate_pas_a_boolean_tag_field_prints_as_a_boolean_and_new_assigns_a_pointer_field_of_a_variant_arm__tctl2}
program tctl2(output);
type rp = ^integer;
     r = record a: rp; case t: boolean of true: (b: rp); false: (c: integer) end;
var x: r; y: ^r;
begin
  new(x.a); x.a^ := 1; x.t := true; new(x.b); x.b^ := 2; writeln(x.a^, ' ', x.b^);
  new(y); new(y^.a); y^.a^ := 3; y^.t := true; new(y^.b); y^.b^ := 4; writeln(y^.a^, ' ', y^.b^);
  x.t := false; x.c := 5; writeln(x.c); writeln(x.t, ' ', y^.t)
end.
{- 17 test_gate_pas_a_bracket_actual_fills_a_dynamic_array_formal_and_raise_selects_objfpc__dynctor}
program dynctor;
{$mode objfpc}
type TIA = array of integer; TSA = array of string;
function Total(const a: TIA): integer;
var i: integer;
begin Total := 0; for i := 0 to High(a) do Total := Total + a[i] end;
function Joined(a: TSA; sep: string): string;
var i: integer;
begin Joined := ''; for i := 0 to Length(a) - 1 do begin if i > 0 then Joined := Joined + sep; Joined := Joined + a[i] end end;
procedure Show(x, y: TIA);
begin writeln(Length(x), ' ', Length(y), ' ', x[0] + y[High(y)]) end;
var v: TIA;
begin
  writeln(Total([1, 2, 3, 4]), ' ', Total([]), ' ', Joined(['a', 'bb', 'ccc'], '-'));
  Show([5, 6, 7], [8, 9]);
  v := nil; writeln(Length(v))
end.
{--------------- 18 test_gate_pas_a_call_carries_as_many_actuals_as_formals__ok}
program arity(output);
var t: integer;
procedure helper(a: integer);
begin writeln('helper ', a:1) end;
procedure later(x, y: integer); forward;
function fact(n: integer): integer;
begin if n <= 1 then fact := 1 else fact := n * fact(n - 1) end;
function zero: integer;
begin zero := 0 end;
procedure outer;
  procedure inner(a, b: integer);
  begin writeln('inner ', a + b:1) end;
begin inner(2, 3); later(4, 5) end;
procedure later;
begin writeln('later ', x * y:1) end;
begin
  t := zero;
  helper(1); outer; later(6, 7);
  writeln('fact ', fact(5):1, ' ', ord('A'):1, ' ', chr(66), ' ', t:1, ' ', odd(3), ' ', abs(-4):1, ' ', sqr(3):1)
end.
{-- 19 test_gate_pas_a_case_statement_with_no_matching_constant_is_an_error__ok}
program casectl(output);
type color = (red, green, blue);
var i, n: integer; c: char; k: color;
begin
  n := 0;
  for i := 1 to 6 do
    case i of
      1, 2: n := n + 1;
      3: case odd(i) of true: n := n + 10; false: n := n + 1000 end;
      4, 5, 6: n := n + 100
    end;
  for c := 'a' to 'c' do case c of 'a': n := n + 1; 'b', 'c': n := n + 2 end;
  for k := red to blue do case k of blue: writeln('last arm'); red, green: n := n + 5 end;
  writeln(n:1)
end.
{- 20 test_gate_pas_a_char_array_component_is_stored_read_and_copied_as_fpc_does__alias}
program alias(output);
type rt = record a, b: integer end; at = array [1..3] of integer; s8 = packed array [1..8] of char;
var g, h: rt; ga, ha: at; tab: array [1..2] of rt; taa: array [1..2] of at; prgm: array [0..3] of s8; a: s8;
procedure keep(var r: rt; var x: at); begin g := r; ga := x; tab[1] := r; taa[2] := x end;
procedure vkeep(r: rt); begin g := r; r.a := 77; writeln(g.a, ' ', r.a) end;
procedure enter(var str: s8; i: integer); begin prgm[i] := str end;
begin
  h.a := 1; h.b := 2; ha[1] := 5; ha[2] := 6; ha[3] := 7; keep(h, ha); h.a := 99; ha[1] := 99; writeln(g.a, ga[1], tab[1].a, taa[2][1]);
  vkeep(h); writeln(g.a, ' ', h.a);
  a := 'first   '; enter(a, 1); a[1] := 'X'; prgm[0] := 'second  '; enter(prgm[0], 2); prgm[0] := 'third   '; writeln(prgm[0]); writeln(prgm[1]); writeln(prgm[2]); writeln(a)
end.
{- 21 test_gate_pas_a_char_array_component_is_stored_read_and_copied_as_fpc_does__anon}
program anon(output);
type alfa = packed array [1..4] of char;
var tab: array [0..5] of packed record name: alfa; link: integer end;
    r: record name: alfa; link: integer end;
    q: record name: packed array [1..4] of char; n: integer end;
    id: alfa; j, k: integer;
procedure outer;
  procedure enter(id: alfa);
  begin tab[0].name := id; j := 2; while tab[j].name <> id do j := tab[j].link; writeln('found at ', j) end;
begin enter('abcd'); enter('rrrr') end;
begin
  tab[0].name := 'zzzz'; tab[0].link := -1; tab[1].name := 'qqqq'; tab[1].link := 0; tab[2].name := 'rrrr'; tab[2].link := 1;
  outer; if tab[0].name = 'rrrr' then writeln('stored') else writeln('not stored');
  id := 'wxyz'; r.name := id; writeln(r.name); q.name := id; writeln(q.name, ' ', q.name[2]);
  with tab[3] do name := id; writeln(tab[3].name); k := 4; tab[k].name := id; tab[k].name[1] := 'Q'; writeln(tab[k].name, ' ', tab[4].name[1]);
  if tab[3].name = id then writeln('eq'); if tab[4].name <> id then writeln('ne'); if tab[4].name < 'Rzzz' then writeln('lt'); if 'Pzzz' < tab[4].name then writeln('gt')
end.
{- 22 test_gate_pas_a_char_array_component_is_stored_read_and_copied_as_fpc_does__elem}
program elem(output);
type s8 = packed array [1..8] of char; bs = record len: integer; str: s8 end;
var prgm: array [0..3] of s8; t: array [1..3] of bs; temp: array [1..3] of record typ: integer; int: integer; bstr: bs end; x, y, top: integer;
begin
  for x := 1 to 3 do for y := 1 to 8 do prgm[x][y] := ' '; prgm[2][3] := 'q'; writeln('[', prgm[2], ']');
  prgm[1, 2] := 'c'; x := 2; writeln(prgm[2][3], prgm[x, 3], prgm[1][2], prgm[x - 1, x]);
  for y := 1 to 8 do t[2].str[y] := chr(ord('a') + y - 1); writeln(t[2].str, ' ', t[2].str[3]);
  top := 2; for y := 1 to 8 do temp[top].bstr.str[y] := chr(ord('k') + y - 1); temp[top].bstr.len := 8; writeln(temp[top].bstr.str, ' ', temp[top].bstr.len, ' ', temp[2].bstr.str[3])
end.
{- 23 test_gate_pas_a_char_array_component_is_stored_read_and_copied_as_fpc_does__rd}
program rd(input, output);
type s8 = packed array [1..8] of char;
var a: s8; prgm: array [0..3] of s8;
procedure inp(var str: s8); var i: integer; begin for i := 1 to 8 do str[i] := ' '; i := 1; while (i <= 8) and not eoln do begin read(str[i]); i := i + 1 end; readln end;
begin inp(a); writeln('[', a, ']'); inp(prgm[0]); writeln('[', prgm[0], ']') end.
{- 24 test_gate_pas_a_char_array_component_is_stored_read_and_copied_as_fpc_does__ustr}
program ustr(output);
type string = packed array [1..6] of char;
var l: array [1..3] of string; s: string; i: integer;
begin l[1] := 'one   '; l[2] := 'two   '; s := 'three '; l[3] := s; for i := 1 to 3 do writeln(l[i], '|'); writeln(s, l[2][2]) end.
{- 25 test_gate_pas_a_char_array_field_and_a_heading_file_pass_by_var_as_fpc_does__field}
program field(output);
type str = array [1..4] of char; symbol = record value: str; length: integer end; symbolinfo = ^symbol;
var nextsym, other: symbolinfo; r: symbol; i: integer;
procedure store(var length: integer; var value: str); begin length := length + 1; value[length] := chr(ord('w') + length) end;
procedure getsym(var value: str; var length: integer); begin store(length, value); store(length, value) end;
begin
  new(nextsym); nextsym^.length := 0; for i := 1 to 4 do nextsym^.value[i] := '.';
  with nextsym^ do getsym(value, length);
  for i := 1 to 4 do write(nextsym^.value[i]); writeln(nextsym^.length);
  new(other); other^.length := 1; getsym(other^.value, other^.length); writeln(other^.value[2], other^.value[3], other^.length);
  r.length := 0; for i := 1 to 4 do r.value[i] := '-'; store(r.length, r.value); store(r.length, r.value);
  for i := 1 to 4 do write(r.value[i]); writeln(r.length)
end.
{- 26 test_gate_pas_a_char_array_field_and_a_heading_file_pass_by_var_as_fpc_does__hdrfile}
program hdrfile(inputfile, outputfile);
var inputfile, outputfile: text; n, l, c: integer;
procedure init(var f, g: text); begin reset(f); rewrite(g) end;
procedure getc(var f: text; var k: integer);
begin if eof(f) then k := 0 else if eoln(f) then k := 1 else k := 2; if k <> 0 then get(f) end;
begin
  init(inputfile, outputfile); n := 0; l := 0; c := 0;
  repeat getc(inputfile, n); if n = 1 then l := l + 1; if n = 2 then c := c + 1 until n = 0;
  writeln(outputfile, 'lines ', l, ' chars ', c)
end.
{- 27 test_gate_pas_a_char_array_read_out_of_a_record_field_keeps_its_characters__casink}
program casink(output);
type alpha = packed array [1..8] of char;
     ptr = ^node;
     node = packed record name: alpha; link: ptr end;
var p, q: ptr; rw: array [1..3] of alpha; g: alpha;
procedure pv(s: alpha); begin writeln('value param [', s, ']') end;
begin
  new(p); p^.name := 'maxlevel'; new(q); q^.name := 'xxxxxxxx';
  q^.name := p^.name; writeln('field<-field [', q^.name, '] eq=', q^.name = p^.name);
  pv(p^.name);
  rw[2] := p^.name; writeln('row [', rw[2], '] eq=', rw[2] = p^.name);
  with q^ do begin name := 'charal  '; g := name end; writeln('with [', g, ']')
end.
{- 28 test_gate_pas_a_char_array_read_out_of_a_record_field_keeps_its_characters__cavar}
program cavar(output);
type alpha = packed array [1..8] of char;
     ptr = ^node;
     node = packed record name: alpha; link: ptr end;
     lrec = record tag: integer; name: alpha end;
var p, q: ptr; g: alpha; r: lrec;
procedure viaparam(fcp: ptr);
  var nam: alpha;
begin nam := fcp^.name; writeln('param  [', nam, '] lt=', nam < g, ' eq=', nam = fcp^.name) end;
procedure viawith;
  var nam: alpha;
begin with p^ do nam := name; writeln('with   [', nam, ']') end;
begin
  new(p); p^.name := 'maxlevel'; g := 'zzzzzzzz';
  g := p^.name; writeln('global [', g, ']');
  g := 'zzzzzzzz'; viaparam(p); viawith;
  r.tag := 7; r.name := 'charal  '; g := r.name; writeln('local  [', g, ']');
  new(q); q^.name := g; writeln('field<-var [', q^.name, ']')
end.
{- 29 test_gate_pas_a_char_array_read_out_of_a_record_field_keeps_its_characters__ptree}
program ptree(output);
type alpha = packed array [1..8] of char;
     ctp = ^identifier;
     idclass = (types, konst, vars);
     identifier = packed record
                    name: alpha; llink, rlink: ctp;
                    next: ctp;
                    case klass: idclass of
                      types, konst: (ival: integer);
                      vars: (vaddr: integer)
                  end;
var root: ctp; id: alpha;
procedure enterid(fcp: ctp);
  var nam: alpha; lcp, lcp1: ctp; lleft: boolean;
begin nam := fcp^.name; lcp := root;
  if lcp = nil then root := fcp
  else
    begin
      repeat lcp1 := lcp;
        if lcp^.name = nam then begin writeln('conflict'); lcp := lcp^.rlink; lleft := false end
        else if lcp^.name < nam then begin lcp := lcp^.rlink; lleft := false end
        else begin lcp := lcp^.llink; lleft := true end
      until lcp = nil;
      if lleft then lcp1^.llink := fcp else lcp1^.rlink := fcp
    end;
  fcp^.llink := nil; fcp^.rlink := nil
end;
procedure declare(s: alpha);
  var lcp: ctp;
begin id := s; new(lcp, konst); with lcp^ do begin name := id; next := nil; klass := konst end; enterid(lcp) end;
procedure search(s: alpha);
  var lcp: ctp; found: boolean;
begin id := s; lcp := root; found := false;
  while lcp <> nil do
    if lcp^.name = id then begin found := true; lcp := nil end
    else if lcp^.name < id then lcp := lcp^.rlink
    else lcp := lcp^.llink;
  writeln(s, ' found=', found)
end;
procedure dump(p: ctp; d: integer);
begin if p <> nil then begin dump(p^.llink, d + 1); writeln(d:3, ' ', p^.name); dump(p^.rlink, d + 1) end end;
begin root := nil;
  declare('displimi'); declare('maxlevel'); declare('intsize '); declare('intal   ');
  declare('realsize'); declare('realal  '); declare('charsize'); declare('charal  ');
  declare('charmax '); declare('boolsize'); declare('boolal  '); declare('ptrsize ');
  declare('adral   '); declare('setsize '); declare('setal   '); declare('stackels');
  declare('stackal '); declare('strglgth'); declare('sethigh '); declare('setlow  ');
  declare('maxint  ');
  dump(root, 0);
  search('charal  '); search('stackal '); search('stackels'); search('maxint  '); search('nothere ')
end.
{--------------------------- 30 test_gate_pas_a_char_code_literal_is_a_char__cc}
program cc(output);
const nul = #0; bell = #7; big = #$41;
type ctl = #0..#31;
var a: array[1..4] of char; c: char; k: ctl; i: integer;
begin
  c := #0;
  writeln(ord(c), ' ', ord(nul), ' ', ord(bell), ' ', big, ' ', #66, #$43);
  if c = #0 then writeln('c = #0') else writeln('c <> #0');
  if c = chr(0) then writeln('c = chr(0)') else writeln('c <> chr(0)');
  a[1] := #0; a[2] := #$30; a[3] := #57; a[4] := nul;
  for i := 1 to 4 do write(ord(a[i]), ' '); writeln;
  if (a[1] = #0) and (a[4] = #0) and (a[2] < a[3]) then writeln('array ok');
  k := #10; writeln('k ', ord(k), ' ', ord(succ(k)));
  for i := 0 to 3 do
  begin
    c := chr(i * 32);
    case c of
      #0: writeln(i, ' is nul');
      #32: writeln(i, ' is space');
      #64: writeln(i, ' is at');
      #$60: writeln(i, ' is grave')
    end
  end
end.
{- 31 test_gate_pas_a_char_field_of_a_variant_record_variable_prints_as_a_character__tbool}
program tbool(output);
const star='*';
type shape=record case b: boolean of true:(r:integer); false:(g:char) end;
var s: shape;
begin s.b:=false; s.g:=star; writeln(s.g) end.
{- 32 test_gate_pas_a_char_field_of_a_variant_record_variable_prints_as_a_character__tenum}
program tenum(output);
const star='*';
type color=(red,green,blue);
  shape=record case k: color of red:(r:integer); green,blue:(g:char) end;
var s: shape;
begin s.k:=green; s.g:=star; writeln(s.g) end.
{- 33 test_gate_pas_a_char_field_of_a_variant_record_variable_prints_as_a_character__tmany}
program tmany(output);
const star='*';
type color=(red,green,blue);
  shape=record n: integer; case k: color of red:(r:integer); green,blue:(g:char; h:char) end;
  flip=record case b: boolean of true:(c:char); false:(i:integer; j:integer) end;
var s: shape; f: flip; p: ^shape; a: array[1..2] of shape;
begin
  s.n:=7; s.k:=green; s.g:=star; s.h:='x';
  writeln(s.g); writeln(s.g,s.h); writeln(s.g:3); writeln(ord(s.g)); writeln(s.g='*');
  s.k:=red; s.r:=65; writeln(s.r); writeln(s.n);
  f.b:=true; f.c:='Q'; writeln(f.c); writeln(succ(f.c));
  f.b:=false; f.i:=66; f.j:=67; writeln(f.i); writeln(f.j); writeln(f.i+1);
  f.b:=true; f.c:='z'; writeln(f.c,f.c);
  new(p); p^.k:=blue; p^.g:='P'; writeln(p^.g); p^.k:=red; p^.r:=44; writeln(p^.r);
  a[2].k:=green; a[2].g:='W'; writeln(a[2].g);
  with s do begin k:=green; g:='M'; writeln(g); k:=red; r:=77; writeln(r) end
end.
{-------------------- 34 test_gate_pas_a_char_subrange_variable_holds_chars__ok}
program charsub(output);
const hi = 'e';
type letter = 'a'..'e'; upto = 'a'..hi; small = 1..5;
var c: 'a'..'e'; d: letter; u: upto; e: char; y: array ['a'..'c'] of small; n: small;
begin
  c := 'c'; d := 'b'; u := 'd'; e := 'z'; y['b'] := 4; n := 3;
  writeln(c, d, u, e, ' ', ord(c):1, ' ', succ(d), ' ', c < d, ' ', c = 'c', ' ', y['b']:1, ' ', n:1);
  for c := 'a' to 'e' do write(c); writeln
end.
{- 35 test_gate_pas_a_char_value_assigned_to_a_string_variable_is_one_character_not_its_decimal_text__code}
{$mode objfpc}{$H+}
program code(output);
var s: ansistring; t: string;
begin
  s := chr(2); writeln(ord(s[1]), ' ', length(s));
  s := chr(65); writeln(ord(s[1]), ' ', length(s), ' ', s);
  s := chr(200); writeln(ord(s[1]), ' ', length(s));
  t := chr(9); writeln(ord(t[1]), ' ', length(t));
  t := chr(122); writeln(t, ' ', ord(t[1]))
end.
{- 36 test_gate_pas_a_char_value_assigned_to_a_string_variable_is_one_character_not_its_decimal_text__plain}
{$mode objfpc}{$H+}
program plain(output);
var c, d: char; n: longint;
begin
  c := chr(7); d := c; writeln(ord(c), ' ', ord(d));
  n := ord('a'); c := chr(n); writeln(c, ' ', ord(c))
end.
{- 37 test_gate_pas_a_char_value_assigned_to_a_string_variable_is_one_character_not_its_decimal_text__varr}
{$mode objfpc}{$H+}
program varr(output);
var s: ansistring; c: char; n: longint;
begin
  c := 'q'; s := c; writeln(s, ' ', length(s), ' ', ord(s[1]));
  n := 66; s := chr(n); writeln(s, ' ', ord(s[1]));
  s := chr(n + 1); writeln(s)
end.
{- 38 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__ctl}
program ctl(output);
type s5 = packed array [1..5] of char; u = array [1..3] of char;
var a: packed array [1..10] of char; b: packed array [1..2] of char; x: s5; c: char; u3: u;
procedure q(var z: s5); begin z := 'world'; writeln(z) end;
procedure r(z: s5); begin z := 'again'; writeln(z) end;
procedure p;
var s: packed array [1..3] of char;
begin s := 'abc'; writeln(s) end;
begin
  a := 'abcdefghij'; writeln(a);
  b := 'ab'; writeln(b);
  x := 'hello'; writeln(x); q(x); r(x); writeln(x);
  p; c := 'q'; writeln(c); a[3] := 'z'; writeln(a);
  u3[1] := 'a'; u3[2] := 'b'; u3[3] := 'c'; writeln(u3[2])
end.
{- 39 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__dialect}
{$mode objfpc}
program dialect;
var s: array [0..4] of char;
begin s := 'abcde'; writeln(s) end.
{- 40 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__fchar}
program fchar(output);
var s: packed array [1..4] of char;
begin s := 'x'; writeln(s) end.
{- 41 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__fformal}
program fformal(output);
type s5 = packed array [1..5] of char;
procedure p(a: s5);
begin a := 'abcdef'; writeln(a) end;
begin p('hello') end.
{- 42 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__flo2}
program flo2(output);
var s: packed array [2..11] of char;
begin s := 'abcdefghij'; writeln(s) end.
{- 43 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__fnamed}
program fnamed(output);
type s5 = packed array [1..5] of char;
var x: s5;
begin x := 'abcdef'; writeln(x) end.
{- 44 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__fnamedun}
program fnamedun(output);
type u = array [1..4] of char;
var x: u;
begin x := 'abcd'; writeln(x) end.
{- 45 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__fone}
program fone(output);
var s: packed array [1..1] of char;
begin s := 'h'; writeln(s) end.
{- 46 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__fshadow}
program fshadow(output);
var s: packed array [1..10] of char;
procedure p;
var s: packed array [1..3] of char;
begin s := 'abcdefghij'; writeln(s) end;
begin p end.
{- 47 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__funp}
program funp(output);
var s: array [1..10] of char;
begin s := 'hello, you'; writeln(s) end.
{- 48 test_gate_pas_a_character_string_is_assigned_only_to_a_string_type_of_its_length__fzero}
program fzero(output);
var s: packed array [0..10] of char;
begin s := 'h          '; writeln(s) end.
{----------------------- 49 test_gate_pas_a_character_string_is_never_empty__ok}
program strctl(output);
const q = ''''; s = 'it''s';
var c: char;
begin
  c := 'z';
  writeln(q, s, q, ' ', 'x', c, ' ', '''''', ' ', 'a''b''c')
end.
{- 50 test_gate_pas_a_comment_not_closed_before_the_end_of_the_file_is_refused_at_fpcs_line__cmtok}
program cmtok;
{ closed }
(* closed too *)
begin writeln(4) end.
{- 51 test_gate_pas_a_constant_is_hidden_by_a_variable_parameter_or_constant_of_the_same_name_in_a_routine__tctl1}
program tctl1(output);
const maxsize = 32; n = 5; limit = 9;
type rec = record maxsize: integer; z: integer end;
     color = (red, green, blue);
var r: rec; k: integer;
procedure p; var maxsize: integer; begin maxsize := 7; writeln(maxsize) end;
procedure q(n: integer); begin writeln(n) end;
procedure s;
const limit = 3;
begin writeln(limit) end;
procedure t; var red: integer; begin red := 41; writeln(red + 1) end;
procedure u;
var minsize, maxsize, lsize: integer;
begin minsize := 4; maxsize := minsize; lsize := maxsize + 1; if lsize > maxsize then maxsize := lsize; writeln(minsize, ' ', maxsize, ' ', lsize) end;
begin p; writeln(maxsize); r.maxsize := 3; writeln(r.maxsize); q(8); writeln(n); s; writeln(limit); t; writeln(ord(green)); u; writeln(maxsize) end.
{- 52 test_gate_pas_a_currency_prints_as_its_exact_four_decimal_value_in_e_format__cur}
{$mode objfpc}{$H+}
program cur(output);
var C, R, D, Z, N, H, B: Currency;
begin
  C := 1234.56; R := 4; D := 2;
  C := C * R / D;
  writeln(C);
  Z := 0; N := -17.25; H := 0.5; B := 123456789.1234;
  writeln(Z); writeln(N); writeln(H); writeln(B);
  writeln(R + D); writeln(C * 2);
  writeln(R, ' ', D)
end.
{- 53 test_gate_pas_a_currency_prints_as_its_exact_four_decimal_value_in_e_format__fixed}
{$mode objfpc}{$H+}
program fixed(output);
var C: Currency;
begin
  C := 1234.5678;
  writeln(C:12:2);
  writeln(C:0:4);
  writeln(C:8:1)
end.
{- 54 test_gate_pas_a_currency_prints_as_its_exact_four_decimal_value_in_e_format__shadow}
{$mode objfpc}{$H+}
program shadow(output);
var x: longint;
procedure P(x: Currency);
begin writeln(x) end;
begin
  P(2.5);
  x := 42;
  writeln(x)
end.
{- 55 test_gate_pas_a_declared_label_prefixes_exactly_one_statement_of_its_block__lok}
program lok(output);
label 02, 9999;
var i: integer;
procedure p;
label 1;
begin
  i := i + 1;
  if i < 3 then goto 1;
  writeln('late');
  goto 9999;
  1: writeln('inner ', i)
end;
begin
  i := 0;
  2: p;
  if i < 5 then goto 2;
  writeln('never');
  9999: writeln('done ', i)
end.
{- 56 test_gate_pas_a_double_slash_line_comment_is_a_comment_as_fpc_miso_reads_it__only}
program only(output);
// a line that is only a comment
const n = 3;
// another, between declarations
var i: integer;
begin for i := 1 to n do writeln(i * i) end.
// and one after the end
{- 57 test_gate_pas_a_double_slash_line_comment_is_a_comment_as_fpc_miso_reads_it__places}
program places(output); // the heading
var x: integer; s: packed array [1..4] of char;
begin
  x := 6 // a comment inside an expression
    * 7; // and after a statement
  s := 'a//b'; { // inside a brace comment }
  writeln(x, ' ', s) (* // inside a paren comment *)
end.
{- 58 test_gate_pas_a_dynamic_array_var_takes_its_initializer_and_move_into_an_open_array_copies_the_byte_count__dyninit}
{$mode objfpc}
program dyninit;
type TRec = record n: Integer; s: String; end;
var a: array of Integer = (-9, 42, -38, 7);
    d: array of Double = (1.5, 2.25);
    s: array of String = ('a', 'bc', 'def');
    nn: array of array of Integer = ((1, 2), (3, 4, 5), (6));
    r: array of TRec = ((n: 1; s: 'one'), (n: 2; s: 'two'));
    t: array of Integer = (10, 20, 30);
    i, j: Integer;
procedure Local;
var la: array of Integer = (5, 6, 7);
    k: Integer;
begin
  for k := 0 to High(la) do write(la[k], ' ');
  writeln(Length(la));
end;
begin
  writeln(Length(a), ' ', Low(a), ' ', High(a), ' ', a[0], ' ', a[3]);
  writeln(Length(d), ' ', d[0]:0:2, ' ', d[1]:0:2);
  writeln(Length(s), ' ', s[0], s[1], s[2]);
  writeln(Length(nn), ' ', Length(nn[0]), ' ', Length(nn[1]), ' ', Length(nn[2]));
  for i := 0 to High(nn) do begin for j := 0 to High(nn[i]) do write(nn[i][j], ' '); end; writeln;
  writeln(Length(r), ' ', r[0].n, r[0].s, ' ', r[1].n, r[1].s);
  writeln(Length(t), ' ', t[2]);
  a[1] := 100; writeln(a[0], ' ', a[1]);
  Local;
end.
{- 59 test_gate_pas_a_dynamic_array_var_takes_its_initializer_and_move_into_an_open_array_copies_the_byte_count__movepar}
{$mode objfpc}
program movepar;
procedure Mrg(var A: array of Integer; L, R: Integer);
var Buf: array of Integer;
  procedure Run;
  var K: Integer;
  begin
    for K := 0 to R - L do Buf[K] := A[L + K] + 1000;
    Move(Buf[0], A[L], Succ(R - L) * SizeOf(Integer));
  end;
begin
  SetLength(Buf, Length(A));
  Run;
end;
var d: array of Integer = (1, 2, 3, 4, 5);
    s: array[-2..2] of Integer = (1, 2, 3, 4, 5);
    k: Integer;
begin
  Mrg(d, 1, 2); for k := 0 to 4 do write(d[k], ' '); writeln;
  Mrg(s, 0, 1); for k := -2 to 2 do write(s[k], ' '); writeln;
  Mrg(d, 0, 4); for k := 0 to 4 do write(d[k], ' '); writeln;
end.
{- 60 test_gate_pas_a_field_of_an_anonymous_record_variable_keeps_its_record_type__na}
program na(output);
type q = record a, b: integer end;
var g: record x: integer; c: q end;
begin
  g.x := 1; g.c.a := 42; g.c.b := 7;
  writeln(g.x); writeln(g.c.a); writeln(g.c.b)
end.
{- 61 test_gate_pas_a_field_of_an_anonymous_record_variable_keeps_its_record_type__nc}
program nc(output);
type q = record c: char; n: integer end;
var r: record i: integer; s: q end;
begin
  r.i := 5; r.s.n := 7; r.s.c := 'x';
  writeln(r.i, r.s.c, r.s.n)
end.
{- 62 test_gate_pas_a_field_of_an_anonymous_record_variable_keeps_its_record_type__nh}
program nh(output);
type q = record a, b: integer end;
var g, h: record x: integer; c: q end;
begin
  g.c.a := 4; g.c.b := 5; h.c.a := g.c.b; h.c.b := g.c.a + h.c.a;
  writeln(h.c.a, h.c.b)
end.
{- 63 test_gate_pas_a_field_of_an_anonymous_record_variable_keeps_its_record_type__nn}
program nn(output);
type q = record a, b: integer end; w = record x: integer; c: q end;
var g: w;
begin
  g.x := 1; g.c.a := 42; g.c.b := 7;
  writeln(g.x, g.c.a, g.c.b)
end.
{- 64 test_gate_pas_a_field_of_an_anonymous_record_variable_keeps_its_record_type__nw}
program nw(output);
type q = record a, b: integer end;
var g: record x: integer; c: q end;
begin
  with g do begin x := 3; c.a := 4; c.b := c.a + x end;
  writeln(g.x, g.c.a, g.c.b)
end.
{----------------- 65 test_gate_pas_a_file_carries_its_iso_mode_and_says_so__ok}
program fileroundtrip(output);
var f: file of integer;
    i, x: integer;
begin
   rewrite(f);
   for i := 1 to 5 do write(f, i * 7);
   reset(f);
   while not eof(f) do begin read(f, x); write(x:1, ' ') end;
   writeln;
   writeln('ok')
end.
{----------------- 66 test_gate_pas_a_file_component_is_never_itself_a_file__ok}
program fileok(output);
type r = record i: integer; c: char end;
var f: file of integer;
    g: file of r;
    t: text;
    x: integer; v: r;
begin
   rewrite(f); write(f, 42); reset(f); read(f, x); writeln('int file: ', x:1);
   v.i := 7; v.c := 'q';
   rewrite(g); write(g, v); reset(g); read(g, v); writeln('rec file: ', v.i:1, ' ', v.c);
   rewrite(t); writeln(t, 'hello'); reset(t);
   writeln('done')
end.
{- 67 test_gate_pas_a_file_variable_is_not_altered_while_a_reference_to_its_buffer_exists__ffunc}
program h4(output);
var a: file of integer; x: integer;
function fb(var c: integer): integer; begin rewrite(a); fb := 1 end;
begin rewrite(a); a^ := 1; put(a); reset(a); writeln('before'); x := fb(a^) end.
{- 68 test_gate_pas_a_file_variable_is_not_altered_while_a_reference_to_its_buffer_exists__fget}
program fget(output);
var a: file of integer;
procedure b(var c: integer); begin get(a) end;
begin rewrite(a); a^ := 1; put(a); reset(a); writeln('before'); b(a^) end.
{- 69 test_gate_pas_a_file_variable_is_not_altered_while_a_reference_to_its_buffer_exists__fput}
program h2(output);
var a: file of integer; x: integer;
procedure b(var c: integer); begin put(a) end;
begin rewrite(a); a^ := 1; put(a); reset(a); writeln('before'); b(a^) end.
{- 70 test_gate_pas_a_file_variable_is_not_altered_while_a_reference_to_its_buffer_exists__freset}
program h3(output);
var a: file of integer; x: integer;
procedure b(var c: integer); begin reset(a) end;
begin rewrite(a); a^ := 1; put(a); reset(a); writeln('before'); b(a^) end.
{- 71 test_gate_pas_a_file_variable_is_not_altered_while_a_reference_to_its_buffer_exists__ftext}
program h5(output);
var t: text;
procedure b(var c: char); begin get(t) end;
begin rewrite(t); write(t, 'xy'); reset(t); writeln('before'); b(t^) end.
{- 72 test_gate_pas_a_file_variable_is_not_altered_while_a_reference_to_its_buffer_exists__tctl}
program tctl(output);
var a, b2: file of integer;
procedure show(var c: integer); begin writeln(c) end;
procedure other(var c: integer); begin get(b2) end;
procedure byval(c: integer); begin get(a); writeln(c) end;
function fn(var c: integer): integer; begin fn := c * 2 end;
begin
  rewrite(a); a^ := 1; put(a); a^ := 2; put(a); reset(a);
  rewrite(b2); b2^ := 7; put(b2); b2^ := 8; put(b2); reset(b2);
  show(a^); writeln(a^);
  other(a^); writeln(a^, ' ', b2^);
  byval(a^);
  writeln(fn(a^));
  writeln(a^)
end.
{- 73 test_gate_pas_a_for_control_variable_is_undefined_after_the_for_statement__fdown}
program fdown(output);
var i: integer; a: array[1..5] of integer;
begin for i := 1 to 5 do a[i] := i; for i := 5 downto 1 do write(a[i]:1, ' '); write(a[i]:1) end.
{- 74 test_gate_pas_a_for_control_variable_is_undefined_after_the_for_statement__fempty}
program fempty(output);
var k: integer;
begin write('x '); for k := 3 to 1 do write('never'); write(k:1) end.
{- 75 test_gate_pas_a_for_control_variable_is_undefined_after_the_for_statement__ffunc}
program ffunc(output);
function f: integer;
var q: integer;
begin for q := 1 to 3 do write(q:1, ' '); f := q end;
begin writeln(f:1) end.
{- 76 test_gate_pas_a_for_control_variable_is_undefined_after_the_for_statement__fmain}
program fmain(output);
var i: integer;
begin for i := 1 to 3 do write(i:1, ' '); write(i:1) end.
{- 77 test_gate_pas_a_for_control_variable_is_undefined_after_the_for_statement__fproc}
program fproc(output);
procedure p;
var i, x: integer;
begin for i := 1 to 3 do write(i:1, ' '); x := i + 1; writeln(x:1) end;
begin p end.
{- 78 test_gate_pas_a_for_control_variable_is_undefined_after_the_for_statement__tctl}
program tctl(output);
label 20;
var i, j, k, n: integer; a: array[1..5] of integer; s: integer;
procedure setit(var x: integer); begin x := 42 end;
function find(v: integer): integer;
label 10;
var q: integer;
begin
  find := 0;
  for q := 1 to 5 do if a[q] = v then begin find := q; goto 10 end;
  10: ;
end;
function sumto(m: integer): integer;
var t, r: integer;
begin r := 0; for t := 1 to m do r := r + t; sumto := r end;
procedure p2;
var i: integer;
begin for i := 1 to 3 do write(i:2); i := 9; writeln(i:2) end;
begin
  for i := 1 to 5 do a[i] := i * i;
  writeln(find(9), find(7));
  for i := 1 to 5 do if a[i] = 16 then goto 20;
  20: writeln('i after goto=', i:1);
  for i := 1 to 3 do for j := 1 to i do begin write(i * 10 + j:3); if j = i then writeln end;
  for i := 5 downto 1 do s := s + i; i := 0; writeln(s:1, i:2);
  for k := 3 to 1 do writeln('never'); k := 7; writeln(k:1);
  for i := 1 to 2 do writeln(i:1); setit(i); writeln(i:1);
  for i := 1 to 2 do n := i; read(i); writeln(i:1);
  for i := 1 to 3 do ; i := 100; writeln(i + 1:1);
  writeln(sumto(4):1); p2;
  for i := 1 to 3 do begin for j := i to 3 do s := s + j + i; end; writeln(s:1)
end.
{- 79 test_gate_pas_a_for_control_variable_is_undefined_after_the_for_statement__tmode}
{$mode objfpc}
program tmode;
var i: integer;
begin for i := 1 to 3 do write(i, ' '); writeln('done') end.
{- 80 test_gate_pas_a_for_statement_evaluates_its_initial_and_final_values_once_before_the_loop__tctl1}
program tctl1(output);
var i, n, calls, lim: integer;
function f: integer; begin calls := calls + 1; f := lim end;
function g(x: integer): integer; begin calls := calls + 1; g := x end;
begin
  calls := 0; lim := 5; n := 0;
  for i := 1 to f do begin n := n + 1; lim := 2 end;
  writeln(n, ' ', calls);
  calls := 0; lim := 5; n := 0;
  for i := 1 to g(lim) do begin n := n + 1; lim := 2 end;
  writeln(n, ' ', calls);
  lim := 4; n := 0;
  for i := 1 to lim do begin n := n + 1; lim := 1 end;
  writeln(n);
  lim := 4; n := 0;
  for i := lim downto 1 do begin n := n + 1; lim := 9 end;
  writeln(n);
  lim := 3; n := 0;
  for i := 1 to lim * 2 do begin n := n + 1; lim := 1 end;
  writeln(n)
end.
{- 81 test_gate_pas_a_for_statement_evaluates_its_initial_and_final_values_once_before_the_loop__tctl2}
program tctl2(output);
var i, n, lim, depth: integer; c: char; seq: integer;
function a: integer; begin seq := seq * 10 + 1; a := 1 end;
function b: integer; begin seq := seq * 10 + 2; b := 3 end;
procedure rec(d: integer);
var k, m: integer;
begin
  m := 0;
  for k := 1 to d do begin m := m + 1; if d > 1 then rec(d - 1) end;
  write(m:2)
end;
begin
  seq := 0; for i := a to b do n := i; writeln(seq);
  lim := 3; for c := 'a' to chr(ord('a') + lim) do begin write(c); lim := 0 end; writeln;
  lim := 2; for i := 5 downto lim + 1 do begin write(i:2); lim := 9 end; writeln;
  rec(3); writeln;
  for i := 1 to 0 do writeln('never'); n := 0; lim := 2; for i := 3 to lim + 2 do n := n + i; writeln(n)
end.
{- 82 test_gate_pas_a_for_statement_stays_inside_its_control_variables_type__ok}
program forctl(output);
type digit = 0..9;
var i, s: integer; d: digit;
procedure p;
var i: 1..9; t: integer;
begin t := 0; for i := 1 to 9 do t := t + i; for i := 9 downto 1 do t := t + i; writeln('p ', t) end;
begin
  p; s := 0;
  for i := 0 to 20 do s := s + i;
  for d := 0 to 9 do s := s + d;
  writeln('main ', s)
end.
{- 83 test_gate_pas_a_for_variable_threat_names_its_real_lines_and_a_sibling_local_is_not_one__shape}
program shape(output);
var i: integer;
procedure sib; begin i := 5 end;
procedure init; var i: integer; begin for i := 1 to 3 do write(i, ' '); writeln end;
begin init; sib; writeln(i) end.
{----- 84 test_gate_pas_a_forward_declared_parameters_record_fields_resolve__w0}
program w0;
type item = record typ: integer end;
var g: item;
procedure p(var x: item);
  var y: item;
begin
  y.typ := 1;
  writeln(x.typ);
  x.typ := 9;
  if x.typ = y.typ then writeln('eq') else writeln('ne')
end;
begin
  g.typ := 1; p(g); writeln(g.typ)
end.
{----- 85 test_gate_pas_a_forward_declared_parameters_record_fields_resolve__w1}
program w1;
type item = record typ: integer end;
var g: item;
procedure p(var x: item); forward;
procedure p;
  var y: item;
begin
  y.typ := 1;
  if x.typ = y.typ then writeln('eq') else writeln('ne')
end;
begin
  g.typ := 1; p(g)
end.
{----- 86 test_gate_pas_a_forward_declared_parameters_record_fields_resolve__w2}
program w2;
type item = record typ: integer end;
var g: item;
procedure p(var x: item); forward;
procedure p;
begin
  writeln(x.typ);
  x.typ := 9;
  writeln(x.typ)
end;
begin
  g.typ := 4; p(g); writeln(g.typ)
end.
{- 87 test_gate_pas_a_function_result_belongs_to_its_activation_and_a_name_has_its_own_scopes_type__named}
program named(output);
type kind = (kempty, kfix, kpair); lv = ^cell;
  cell = record case k: kind of kfix: (ival: integer); kpair: (a, d: lv); kempty: () end;
  argvec = array [1..4] of lv;
  plain = ^pcell; pcell = record n: integer; m: integer end; pvec = array [0..2] of plain;
var av: argvec; pv: pvec; x, y: lv; i: integer;
function fix(n: integer): lv; var p: lv; begin new(p); p^.k := kfix; p^.ival := n; fix := p end;
procedure fill(var v: argvec; n: integer); var j: integer; begin for j := 1 to 4 do v[j] := fix(n * j) end;
function total(v: argvec): integer; var j, s: integer; begin s := 0; for j := 1 to 4 do if v[j]^.k = kfix then s := s + v[j]^.ival; total := s end;
begin
  fill(av, 3); writeln(total(av), av[2]^.ival, ord(av[4]^.k));
  new(x); x^.k := kpair; x^.a := av[1]; x^.d := av[2]; av[3] := x; y := av[3]^.d; writeln(y^.ival, av[3]^.a^.ival);
  for i := 0 to 2 do begin new(pv[i]); pv[i]^.n := i * 7; pv[i]^.m := i end; writeln(pv[2]^.n + pv[1]^.m)
end.
{- 88 test_gate_pas_a_function_result_belongs_to_its_activation_and_a_name_has_its_own_scopes_type__nest}
program nest(output);
var g, h: integer;
procedure bump(var v: integer); begin v := v + 1 end;
procedure outer(var p: integer; q: integer);
  var loc: integer;
  procedure inner; begin bump(p); bump(q); bump(loc) end;
  procedure deeper;
    procedure deepest; begin bump(p); p := p * 2 end;
  begin deepest end;
begin loc := 5; inner; deeper; writeln(p, q, loc) end;
function sum3(var a, b: integer): integer;
  function both: integer; begin bump(a); bump(b); both := a + b end;
begin sum3 := both end;
begin g := 1; outer(g, 10); writeln(g); g := 1; h := 2; writeln(sum3(g, h), g, h) end.
{- 89 test_gate_pas_a_function_result_belongs_to_its_activation_and_a_name_has_its_own_scopes_type__rec}
program rec(output);
type lv = ^cell; cell = record n: integer; next: lv end;
var r: lv;
function f(n: integer): integer;
var t: integer;
begin f := n * 10; if n > 0 then t := f(n - 1) end;
procedure outer;
  function g(n: integer): integer; forward;
  function h(n: integer): integer;
  var t: integer;
  begin h := n + 100; if n > 0 then t := g(n - 1) end;
  function g; begin g := h(n) end;
begin writeln(h(3)) end;
function build(n: integer): lv;
var p, rest: lv;
begin new(p); p^.n := n; build := p; if n > 1 then begin rest := build(n - 1); p^.next := rest end else p^.next := nil end;
function fib(n: integer): integer;
begin if n < 2 then fib := n else fib := fib(n - 1) + fib(n - 2) end;
begin
  writeln(f(3)); outer; writeln(fib(15));
  r := build(4); while r <> nil do begin write(r^.n:2); r := r^.next end; writeln
end.
{- 90 test_gate_pas_a_function_result_belongs_to_its_activation_and_a_name_has_its_own_scopes_type__scope}
program scope(output);
type lv = ^cell; cell = record n: integer end;
var c: lv;
function mk(n: integer): lv; var p: lv; begin new(p); p^.n := n; mk := p end;
function realsum(k: integer): real;
var v, f: real; i: integer;
begin v := 0.0; f := 0.5; for i := 1 to k do v := v + f; realsum := v end;
function pick(e: lv): lv;
var v: lv;
begin v := e; pick := v end;
procedure host;
var v: real;
  function inner(e: lv): lv;
  var v: lv;
  begin v := e; inner := v end;
begin v := 2.5; c := inner(mk(4)); writeln(v:0:2, c^.n) end;
begin writeln(realsum(3):0:2); c := pick(mk(7)); writeln(c^.n); host end.
{- 91 test_gate_pas_a_function_result_belongs_to_its_activation_and_a_name_has_its_own_scopes_type__und}
program und(output);
var k: integer;
function f(n: integer): integer; begin if n > 5 then f := n end;
begin k := f(9); writeln(k); k := f(2); writeln('after') end.
{- 92 test_gate_pas_a_function_result_is_defined_when_its_algorithm_completes__rctl}
program rctl(output);
type k = (red, green, blue); pt = ^integer;
var p: pt; n: integer;
function fint(n: integer): integer; begin if n > 0 then fint := n * 2 else fint := 0 end;
function fzero(n: integer): integer; begin if n > 100 then fzero := 1; fzero := 0 end;
function freal(n: integer): real; begin if n > 0 then freal := 1.5; if n <= 0 then freal := 0.0 end;
function fbool(n: integer): boolean; begin if n > 0 then fbool := true else if n < 0 then fbool := false else fbool := false end;
function fchar(n: integer): char; begin while n > 0 do begin fchar := 'z'; n := n - 1 end; fchar := 'a' end;
function fenum(n: integer): k; begin if n > 0 then fenum := blue; if n = 0 then fenum := red end;
function fnil(n: integer): pt; begin if n > 0 then fnil := nil; if n <= 0 then fnil := nil end;
function fptr(n: integer): pt; var q: pt; begin new(q); q^ := n; if n > 0 then fptr := q else fptr := nil end;
function fact(n: integer): integer; begin if n <= 1 then fact := 1 else fact := n * fact(n - 1) end;
function fcase(n: integer): integer; begin case n of 1: fcase := 10; 2: fcase := 20; 3: fcase := 30 end end;
function floop(n: integer): integer; var i, s: integer; begin s := 0; for i := 1 to n do begin floop := i; s := s + i end end;
begin
  writeln(fint(4), fzero(1), freal(2):6:2, fbool(3), fchar(2), ord(fenum(1)), fact(5), fcase(2), floop(3));
  p := fnil(1); writeln(p = nil); p := fptr(7); writeln(p^); p := fptr(0); writeln(p = nil)
end.
{- 93 test_gate_pas_a_function_result_is_defined_when_its_algorithm_completes__rdialect}
{$mode objfpc}
program rdialect;
function f(n: integer): integer; begin if n > 5 then f := 1 end;
begin writeln('before'); f(2); writeln('after') end.
{- 94 test_gate_pas_a_function_result_is_defined_when_its_algorithm_completes__rf1}
program rf1(output);
function f(n: integer): integer; begin if n > 5 then f := 1 end;
begin writeln('before'); writeln(f(2)) end.
{- 95 test_gate_pas_a_function_result_is_defined_when_its_algorithm_completes__rf2}
program rf2(output);
function f(n: integer): real; begin while n > 5 do begin f := 1.5; n := n - 1 end end;
begin writeln('before'); writeln(f(2):5:1) end.
{- 96 test_gate_pas_a_function_result_is_defined_when_its_algorithm_completes__rf3}
program rf3(output);
function f(n: integer): boolean; begin if n > 5 then f := true else if n > 9 then f := false end;
begin writeln('before'); writeln(f(2)) end.
{- 97 test_gate_pas_a_function_result_is_defined_when_its_algorithm_completes__rf4}
program rf4(output);
type pt = ^integer;
function f(n: integer): pt; var q: pt; begin new(q); if n > 5 then f := q end;
begin writeln('before'); if f(2) = nil then writeln('nil') end.
{- 98 test_gate_pas_a_function_result_is_defined_when_its_algorithm_completes__rf5}
program rf5(output);
function f(n: integer): char; begin case n of 1: f := 'a'; 2: f := 'b' end end;
begin writeln('before'); writeln(f(1)); writeln(f(1)); writeln(f(2)) end.
{- 99 test_gate_pas_a_function_returning_a_dynamic_array_holds_an_array__dynresult}
program dynresult;
{$mode objfpc}
type FArray = array of cardinal; SArray = array of string;
function freq(n: integer): FArray;
var u: integer;
begin
  SetLength(freq, n + 1);
  for u := 1 to n do begin INC(freq[u]); INC(freq[u], u) end;
  freq[0] := Length(freq) * 10 + High(freq)
end;
function words(n: integer): SArray;
var k: integer;
begin
  SetLength(Result, n);
  for k := 0 to High(Result) do Result[k] := StringOfChar('w', k + 1)
end;
var pf: FArray; ws: SArray; i: integer;
begin
  pf := freq(3);
  for i := 0 to 3 do write(pf[i], ' ');
  writeln(length(pf));
  ws := words(3); for i := 0 to High(ws) do write(ws[i], '/'); writeln(Length(ws))
end.
{- 100 test_gate_pas_a_functions_own_name_reads_its_result_in_the_fpc_dialects__isorecurse}
program isorecurse(output);
var k: integer;
function g: integer;
begin k := k + 1; if k > 3 then g := 100 else begin g := 1; g := g + 10 end end;
begin k := 0; writeln(g, ' ', k) end.
{- 101 test_gate_pas_a_functions_own_name_reads_its_result_in_the_fpc_dialects__objcompound}
program objcompound;
{$mode objfpc}
type tset = set of 0..9;
var s: string; c: char; i: integer; r: real; t: tset; k: integer;
function Build(n: integer): string;
var j: integer;
begin
  Build := '';
  for j := 1 to n do Build += chr(ord('a') + j - 1);
  Build += '!'
end;
function Acc(n: integer): integer;
begin
  Acc := 0;
  while n > 0 do begin Acc += n; n -= 1 end;
  Acc *= 2
end;
begin
  s := 'ab'; c := 'z'; s += c; s += 'cd'; i := 5; i += 3; i -= 1; i *= 4; r := 10; r /= 4; r += 0.5;
  t := [1, 2]; t += [5]; t -= [1]; t *= [2, 5, 7];
  write(s, ' ', i, ' ', r:0:2, ' ');
  for k := 0 to 9 do if k in t then write(k);
  writeln(' ', Build(4), ' ', Acc(4))
end.
{- 102 test_gate_pas_a_functions_own_name_reads_its_result_in_the_fpc_dialects__objresult}
program objresult;
{$mode objfpc}
var k: integer;
function g: integer;
begin k := k + 1; if k > 3 then g := 100 else begin g := 1; g := g + 10 end end;
begin k := 0; writeln(g, ' ', k) end.
{------ 103 test_gate_pas_a_goto_leaves_its_routine_for_an_enclosing_label__nlg}
program nlg(output);
label 9;
var depth, total, hits: integer;
procedure dummy;
begin
  writeln('dummy')
end;
procedure outer(n: integer);
label 5;
var mine: integer;
  procedure inner(k: integer);
  var i: integer;
  begin
    for i := 1 to 10 do
    begin
      total := total + i;
      if (k = 2) and (i = 3) then goto 5;
      if (k = 4) and (i = 2) then goto 9
    end;
    writeln('inner fell through ', k)
  end;
begin
  mine := n * 100;
  depth := depth + 1;
  inner(n);
  writeln('outer after inner ', n);
5:
  writeln('outer at 5, n=', n, ' mine=', mine, ' total=', total);
  if n < 4 then outer(n + 1);
  writeln('outer returns ', n)
end;
function f(x: integer): integer;
begin
  if x > 3 then goto 9;
  f := x * 2
end;
procedure a(lvl: integer; procedure q);
label 1;
var tag: integer;
  procedure c;
  begin
    writeln('c from the activation with tag ', tag);
    goto 1
  end;
begin
  tag := lvl * 11;
  if lvl = 1 then a(2, c) else if lvl = 2 then a(3, q) else q;
  writeln('a not reached ', lvl);
1:
  writeln('a at 1 lvl=', lvl, ' tag=', tag)
end;
procedure p1;
label 7;
var s: integer;
  procedure p2;
    procedure p3(n: integer);
    begin
      hits := hits + 1;
      if n = 0 then goto 7;
      while true do p3(n - 1)
    end;
  begin
    repeat p3(5) until false
  end;
begin
  s := 42;
  p2;
7:
  writeln('p1 at 7 s=', s, ' hits=', hits)
end;
begin
  depth := 0; total := 0; hits := 0;
  a(1, dummy);
  p1; p1;
  writeln('sum ', f(1) + f(2) + f(3));
  outer(1);
  writeln('not reached');
9:
  writeln('main at 9, depth=', depth, ' total=', total);
  if depth < 9 then begin depth := 9; total := 10 + f(5); writeln('not reached either') end;
  writeln('done hits=', hits)
end.
{------------- 104 test_gate_pas_a_goto_never_enters_a_structured_statement__ok}
program gotoctl(output);
label 9;
var n: integer;
procedure bail(k: integer);
begin if k > 2 then goto 9; writeln('bail kept ', k) end;
procedure scan;
label 1, 2, 3;
var j, k: integer;
begin
  j := 0;
  1: j := j + 1;
  if j < 3 then goto 1;
  for k := 1 to 5 do begin
    if k = 4 then goto 2;
    writeln('loop ', k)
  end;
  2: writeln('scan done ', j);
  if j = 3 then begin writeln('then branch'); goto 3 end
  else writeln('else branch');
  writeln('skipped by goto');
  3: writeln('forward goto out of a branch landed')
end;
begin
  n := 0; scan;
  bail(1); bail(2);
  writeln('never');
  9: writeln('outer label')
end.
{- 105 test_gate_pas_a_goto_out_of_a_routine_leaves_every_box_of_main_at_one_depth__cases}
program cases(output);
label 1;
var store: array [0..40] of integer; op, sp, mp, n: integer; running: boolean;
procedure errori; begin writeln('error at ', sp:1); goto 1 end;
function base(ld: integer): integer; begin base := mp + ld end;
begin
  sp := 0; mp := 3; n := 0; running := true;
  while running do begin
    n := n + 1;
    if n > 5 then op := 58 else if odd(n) then op := 11 else op := 4;
    case op of
      11: begin store[sp + 2] := base(n); store[sp + 3] := mp; sp := sp + 5 end;
      4: begin store[sp] := base(sp) + store[sp - 3]; sp := sp - 1 end;
      58: running := false
    end;
    if sp > 35 then errori
  end;
  writeln('sp=', sp:1, ' top=', store[sp]:1);
1:
  writeln('n=', n:1)
end.
{- 106 test_gate_pas_a_goto_out_of_a_routine_leaves_every_box_of_main_at_one_depth__loop}
program loop(output);
label 1;
var n, x: integer;
procedure jump; begin writeln('jumped'); goto 1 end;
function f(k: integer): integer; begin f := k * k end;
begin
  n := 0; x := 0;
  while n < 4 do begin n := n + 1; x := x + f(n) end;
  writeln(x:1);
  if n < 0 then jump;
1:
  writeln('end ', n:1)
end.
{- 107 test_gate_pas_a_literal_actual_is_assignment_compatible_with_its_value_formal__ctl}
program ctl(output);
const c = 'x'; n = 5; t = true;
type color = (red, green, blue);
procedure a(p: char; q: integer; r: color; s: boolean; u: real);
begin writeln(p, q, ord(r), s, u:4:1) end;
begin
  a(c, n, green, t, 3);
  a('y', -2, blue, false, 2.5)
end.
{--- 108 test_gate_pas_a_literal_is_assignment_compatible_with_its_variable__ok}
program compat(output);
const big = 2.5; ch = 'k'; yes = true;
type color = (red, green, blue); letters = packed array [1..5] of char;
var i, n: integer; r: real; c: char; b: boolean; k: color; s: letters;
begin
  i := 7; r := 3; r := big; r := i; c := 'x'; c := ch; c := chr(i + 60); b := true; b := yes; k := blue; s := 'hello';
  writeln(i:1, ' ', r:5:2, ' ', c, ' ', b, ' ', ord(k):1, ' ', s);
  n := 0; for c := 'a' to 'e' do n := n + 1;
  for b := false to true do n := n + 10;
  for k := red to blue do n := n + 100;
  for i := 3 downto 1 do n := n + 1000;
  writeln(n:1)
end.
{- 109 test_gate_pas_a_method_call_may_carry_an_empty_argument_list__emptyparens}
program emptyparens;
{$mode objfpc}
type
  TCounter = class
    n: integer;
    constructor Create;
    procedure Bump;
    function Twice: integer;
    procedure Reset;
  end;
constructor TCounter.Create; begin n := 0 end;
procedure TCounter.Bump; begin n := n + 1 end;
function TCounter.Twice: integer; begin Twice := n * 2 end;
procedure TCounter.Reset; begin n := 0 end;
var c: TCounter;
begin
  c := TCounter.Create();
  c.Bump(); c.Bump;
  writeln(c.Twice(), ' ', c.Twice, ' ', c.n);
  c.Reset();
  writeln(c.n + c.Twice());
  c.Free()
end.
{------------------------------ 110 test_gate_pas_a_mod_divisor_is_positive__ok}
program modctl(output);
var a, b, n: integer;
begin
  n := 0;
  for a := -7 to 7 do for b := 1 to 4 do n := (n * 3 + a mod b) mod 1000003;
  writeln(n:1);
  a := -7; b := 3; writeln(a mod b:1, ' ', 7 mod 3:1, ' ', (a * 2) mod (b + 1):1, ' ', maxint mod b:1)
end.
{--------------------- 111 test_gate_pas_a_monadic_sign_takes_only_a_number__ok}
program signctl(output);
const k = 5; neg = -k;
var i: integer; r: real; c: char;
begin
  i := 7; r := 2.5; c := 'a';
  writeln(-i:1, ' ', +i:1, ' ', -r:5:2, ' ', +r:5:2, ' ', -ord(c):1, ' ', -(i + 1):1, ' ', +maxint:1, ' ', neg:1)
end.
{- 112 test_gate_pas_a_name_is_a_char_array_only_where_its_char_array_declaration_is_visible__fwdca}
program fwdca(output);
type alpha = packed array [1..4] of char;
procedure show(a: alpha; n: integer); forward;
function same(a, b: alpha): boolean; forward;
procedure show; begin writeln(a, ' ', n:1, ' ', a = 'abcd') end;
function same; begin same := a = b end;
begin
  show('abcd', 1); show('wxyz', 2); writeln(same('abcd', 'abcd'), ' ', same('abcd', 'abcx'))
end.
{- 113 test_gate_pas_a_name_is_a_char_array_only_where_its_char_array_declaration_is_visible__leak}
program leak(output);
type sp = ^s;
     s = record str: packed array [1..4] of char; next: sp end;
     restr = packed array [1..4] of char;
var q: sp;
function strequri(a: restr; b: restr): boolean; begin strequri := a = b end;
procedure strassvr(var a: sp);
var lp, p: sp;
begin a := nil; lp := nil; new(p); p^.next := nil;
  if a = nil then a := p else lp^.next := p;
  writeln('a nil=', a = nil)
end;
begin
  new(q); strassvr(q); writeln(q = nil, ' ', strequri('abcd', 'abcd'), ' ', strequri('abcd', 'abce'))
end.
{- 114 test_gate_pas_a_name_is_a_char_array_only_where_its_char_array_declaration_is_visible__shadow}
program shadow(output);
type alpha = packed array [1..4] of char;
     ip = ^integer;
var name: alpha;
procedure local;
var name: ip;
begin new(name); name^ := 7; name := nil; writeln('local nil=', name = nil) end;
procedure uses;
begin writeln('global=', name, ' eq=', name = 'wxyz') end;
begin
  name := 'wxyz'; local; uses; writeln(name)
end.
{-------------- 115 test_gate_pas_a_named_array_of_records_keeps_its_fields__ok}
program namedarr(output);
type pt = record v: integer; c: char end;
     row = array [1..4] of pt;
     table = row;
var r: row; t: table; i, s: integer;
begin
  for i := 1 to 4 do begin r[i].v := i * i; r[i].c := chr(ord('a') + i) end;
  s := 0; for i := 1 to 4 do s := s + r[i].v;
  t[3].v := 30; t[3].c := 'z';
  writeln(s:1, ' ', r[2].v:1, ' ', r[4].c, ' ', t[3].v:1, ' ', t[3].c)
end.
{- 116 test_gate_pas_a_nested_record_or_array_in_a_variant_arm_is_assignable_after_the_tag_changes__tctl1}
program tctl1(output);
type valu = record case intval: boolean of true: (ival: integer); false: (valp: ^integer) end;
     ak = (cst, varbl, expr);
     attr = record typtr: ^integer; case kind: ak of cst: (cval: valu); varbl: (packing: boolean; n: integer); expr: () end;
     arrv = record case t: boolean of true: (a: array [1..4] of integer); false: (b: integer) end;
     deep = record case d: boolean of true: (inner: attr); false: (z: integer) end;
var g: attr; v: arrv; w: deep; i: integer; q: ^integer;
begin
  new(q); q^ := 9;
  g.kind := cst; g.cval.intval := false; g.cval.valp := q;
  g.kind := varbl; g.packing := true; g.n := 3; writeln(g.n);
  g.kind := cst; g.cval.intval := true; g.cval.ival := 5; writeln(g.cval.ival);
  g.cval.intval := false; g.cval.valp := q; writeln(g.cval.valp^);
  v.t := false; v.b := 1; v.t := true; for i := 1 to 4 do v.a[i] := i * i; writeln(v.a[3], ' ', v.a[4]);
  v.t := false; v.b := 7; writeln(v.b); v.t := true; v.a[2] := 11; writeln(v.a[2]);
  w.d := false; w.z := 1; w.d := true; w.inner.kind := cst; w.inner.cval.intval := true; w.inner.cval.ival := 8; writeln(w.inner.cval.ival);
  w.d := false; w.z := 2; w.d := true; w.inner.kind := varbl; w.inner.n := 4; writeln(w.inner.n)
end.
{------ 117 test_gate_pas_a_nil_or_undefined_pointer_is_never_dereferenced__ctl}
program ctl(output);
type link = ^node; node = record v: integer; next: link end;
var head, p, q: link; i, s: integer;
begin
  head := nil;
  for i := 1 to 5 do begin new(p); p^.v := i * i; p^.next := head; head := p end;
  s := 0; p := head;
  while p <> nil do begin s := s + p^.v; write(p^.v:4); p := p^.next end;
  writeln(' sum ', s);
  p := head;
  while p <> nil do begin q := p^.next; dispose(p); p := q end;
  if p = nil then writeln('all disposed')
end.
{--- 118 test_gate_pas_a_nil_or_undefined_pointer_is_never_dereferenced__nilfld}
program nilfld(output);
type r = record a, b: integer end;
var p: ^r;
begin
  new(p); p^.a := 1; writeln(p^.a); p := nil; p^.b := 2; writeln('after')
end.
{---- 119 test_gate_pas_a_nil_or_undefined_pointer_is_never_dereferenced__nilrd}
program nilrd(output);
var p: ^integer; b: integer;
begin
  writeln('before'); p := nil; b := p^; writeln('after ', b)
end.
{---- 120 test_gate_pas_a_nil_or_undefined_pointer_is_never_dereferenced__nilwr}
program nilwr(output);
var p: ^integer;
begin
  writeln('before'); p := nil; p^ := 7; writeln('after')
end.
{---- 121 test_gate_pas_a_nil_or_undefined_pointer_is_never_dereferenced__undrd}
program undrd(output);
var p: ^integer; b: integer;
begin
  writeln('before'); b := p^; writeln('after ', b)
end.
{---------------- 122 test_gate_pas_a_number_never_touches_a_following_word__ok}
program numctl(output);
label 10;
type small = 1..10;
var x: real; i: small; n: integer; a: array[1..3] of integer;
begin
  x := 1e5 + 2.5e-3 + 3E2 + 0.5;
  n := 42 div 4 + 7 mod 2;
  for i := 1 to 3 do a[i] := i*i;
  if n > 0 then goto 10;
  n := 0;
  10: writeln(x:12:4, n:4, a[3]:3, (n)div(2):3)
end.
{-- 123 test_gate_pas_a_number_read_from_a_textfile_is_an_iso_signed_number__ri}
program ri(input, output);
var i: integer;
begin
  writeln('before'); read(i); writeln('after ', i)
end.
{-- 124 test_gate_pas_a_number_read_from_a_textfile_is_an_iso_signed_number__rr}
program rr(input, output);
var r: real;
begin
  writeln('before'); read(r); writeln('after ', r:8:3)
end.
{----------- 125 test_gate_pas_a_numeric_literal_fits_what_scrip_represents__ok}
program litctl(output);
var r: real; n: integer;
begin
  n := 2147483647; writeln(n);
  r := 1.0e308; if r > 1.0e307 then writeln('big real ok');
  r := 1.0e-300; if r > 0 then writeln('tiny real ok');
  r := 2.5e-3; writeln(r:0:4)
end.
{- 126 test_gate_pas_a_numeric_read_accepts_prefixed_integers_and_lenient_reals_as_fpc_does__dec}
{$mode iso}
program dec(output);
var f: text; a, b, c: integer; r: real;
begin
  assign(f, 'gd.tmp'); rewrite(f);
  writeln(f, '   12  -34 +56 ');
  writeln(f, '0 007 1.5');
  close(f); reset(f);
  read(f, a, b, c); writeln(a, ' ', b, ' ', c);
  read(f, a, b); writeln(a, ' ', b);
  read(f, r); writeln(round(r * 10));
  close(f); erase(f)
end.
{- 127 test_gate_pas_a_numeric_read_accepts_prefixed_integers_and_lenient_reals_as_fpc_does__int}
{$mode iso}
program int(output);
var f: text; a, b, c, d, e, g: integer;
begin
  assign(f, 'gi.tmp'); rewrite(f);
  writeln(f, '$ff 0x1F xAB %1011 &777 -$10');
  writeln(f, '+0x20 0X7f');
  close(f); reset(f);
  read(f, a, b, c, d, e, g); writeln(a, ' ', b, ' ', c, ' ', d, ' ', e, ' ', g);
  read(f, a, b); writeln(a, ' ', b);
  close(f); erase(f)
end.
{- 128 test_gate_pas_a_numeric_read_accepts_prefixed_integers_and_lenient_reals_as_fpc_does__real}
{$mode iso}
program rdr(output);
var f: text; r, s, t, u: real;
begin
  assign(f, 'gr.tmp'); rewrite(f);
  writeln(f, '+123. -.125 .5 7.');
  writeln(f, '1e2 +1e-2');
  close(f); reset(f);
  read(f, r, s, t, u); writeln(round(r), ' ', round(s * 1000), ' ', round(t * 10), ' ', round(u));
  read(f, r, s); writeln(round(r), ' ', trunc(s * 100));
  close(f); erase(f)
end.
{- 129 test_gate_pas_a_pack_records_directive_sets_the_field_alignment_of_the_records_after_it__default}
{$mode objfpc}
program dflt(output);
type
{$PackRecords 1}
  p1 = record b: byte; l: longint; end;
{$PackRecords C}
  pc = record b: byte; l: longint; end;
{$PackRecords 1}
  q1 = record b: byte; l: longint; end;
{$PackRecords DEFAULT}
  pd = record b: byte; l: longint; end;
begin
  writeln(sizeof(p1), ' ', sizeof(pc), ' ', sizeof(q1), ' ', sizeof(pd))
end.
{- 130 test_gate_pas_a_pack_records_directive_sets_the_field_alignment_of_the_records_after_it__one}
{$mode objfpc}
program one(output);
type
{$PackRecords 1}
  r1 = record a: byte; b: longint; c: word; d: int64; end;
{$PackRecords 2}
  r2 = record a: byte; b: longint; c: word; d: int64; end;
{$PackRecords 4}
  r4 = record a: byte; b: longint; c: word; d: int64; end;
{$PackRecords 8}
  r8 = record a: byte; b: longint; c: word; d: int64; end;
begin
  writeln(sizeof(r1), ' ', sizeof(r2), ' ', sizeof(r4), ' ', sizeof(r8))
end.
{- 131 test_gate_pas_a_pack_records_directive_sets_the_field_alignment_of_the_records_after_it__pushpop}
{$mode objfpc}
program pushpop(output);
type
{$PackRecords 1}
  a1 = record b: byte; l: longint; end;
{$Push}
{$PackRecords 4}
  a4 = record b: byte; l: longint; end;
{$Push}
{$PackRecords 2}
  a2 = record b: byte; l: longint; w: word; end;
{$Pop}
  a4b = record b: byte; l: longint; w: word; end;
{$Pop}
  a1b = record b: byte; l: longint; w: word; end;
begin
  writeln(sizeof(a1), ' ', sizeof(a4), ' ', sizeof(a2), ' ', sizeof(a4b), ' ', sizeof(a1b))
end.
{- 132 test_gate_pas_a_packed_char_array_field_of_an_array_element_reads_back_what_was_assigned__charindex}
program charindex(output);
type devicerec = record name: packed array [1..8] of char; downtime: integer end;
var d: array ['0'..'3'] of devicerec; c: char;
begin
  d['2'].name := 'Phaser C'; d['2'].downtime := 2;
  writeln(d['2'].name, d['2'].downtime:3);
  c := '2';
  writeln(d[c].name, d[c].downtime:3);
  for c := '0' to '3' do d[c].name := 'abcdefgh';
  c := '3'; writeln(d[c].name)
end.
{- 133 test_gate_pas_a_packed_char_array_field_of_an_array_element_reads_back_what_was_assigned__deviceshape}
program deviceshape(output);
const mindevice = '0'; maxdevice = '7';
type devicerec = record name: packed array [1..20] of char; downtime: integer end;
var device: array [mindevice..maxdevice] of devicerec; ch: char;
begin
  for ch := mindevice to maxdevice do device[ch].downtime := ord(ch) - ord('0');
  device['3'].name := 'Phaser Control      ';
  for ch := mindevice to maxdevice do
    if device[ch].downtime <> 0 then device[ch].downtime := device[ch].downtime - 1;
  ch := '3';
  writeln(device[ch].name, device[ch].downtime:5);
  device[ch].downtime := 9;
  writeln(device[ch].downtime)
end.
{- 134 test_gate_pas_a_packed_char_array_field_of_an_array_element_reads_back_what_was_assigned__intindex}
program intindex(output);
type devicerec = record name: packed array [1..8] of char; downtime: integer end;
var d: array [0..3] of devicerec; r: devicerec; i: integer;
begin
  r.name := 'Warp Eng'; r.downtime := 1;
  writeln(r.name, r.downtime:3);
  d[2].name := 'Phaser C'; d[2].downtime := 2;
  writeln(d[2].name, d[2].downtime:3);
  i := 2;
  writeln(d[i].name, d[i].downtime:3);
  d[i].name := 'Photon T';
  writeln(d[i].name)
end.
{- 135 test_gate_pas_a_pchar_is_a_string_and_an_offset_and_a_widechar_array_converts_through_stringtowidechar__lit}
{$mode objfpc}{$H+}
program lit(output);
var p: PChar;
begin
  p := 'hello'; writeln(p[0], p[4]); inc(p); writeln(p^, p[3])
end.
{- 136 test_gate_pas_a_pchar_is_a_string_and_an_offset_and_a_widechar_array_converts_through_stringtowidechar__str}
{$mode objfpc}{$H+}
program str(output);
var s: ansistring; sh: shortstring; p, q: PChar;
begin
  s := 'abcdefghij'; sh := '0123456789';
  p := PChar(@s[3]);
  writeln(p[0], p[1], p^);
  inc(p, 2); writeln(p[0], p[-1], p[-2]);
  dec(p); writeln(p^);
  q := p; inc(q, 3); writeln(q[0], ' ', p[0]);
  p := PChar(@sh[1]); inc(p, 4); writeln(p[-4], p[5])
end.
{- 137 test_gate_pas_a_pchar_is_a_string_and_an_offset_and_a_widechar_array_converts_through_stringtowidechar__wide}
{$mode objfpc}{$H+}
program wide(output);
var s, t: ansistring; buf: array[1..8] of widechar;
begin
  s := 'abcdefghij';
  buf[1] := 'z';
  StringToWideChar(s, @buf[1], 8); t := widestring(pwidechar(@buf[1])); writeln(t, length(t));
  StringToWideChar('xy', @buf[2], 8); t := widestring(pwidechar(@buf[2])); writeln(t, length(t));
  t := widestring(pwidechar(@buf[1])); writeln(t, length(t))
end.
{- 138 test_gate_pas_a_pointer_target_is_a_variable_parameter_and_is_not_disposed_during_the_call__fassign}
program fassign(output);
var a: ^integer;
procedure b(var c: integer); begin c := c + 5; dispose(a) end;
begin new(a); a^ := 1; writeln('before'); b(a^); writeln('after') end.
{- 139 test_gate_pas_a_pointer_target_is_a_variable_parameter_and_is_not_disposed_during_the_call__ffunc}
program ffunc(output);
var a: ^integer; x: integer;
function fb(var c: integer): integer; begin dispose(a); fb := 1 end;
begin new(a); a^ := 2; writeln('before'); x := fb(a^) end.
{- 140 test_gate_pas_a_pointer_target_is_a_variable_parameter_and_is_not_disposed_during_the_call__fproc}
program fproc(output);
var a: ^integer;
procedure b(var c: integer); begin c := 1; dispose(a) end;
begin new(a); writeln('before'); b(a^) end.
{- 141 test_gate_pas_a_pointer_target_is_a_variable_parameter_and_is_not_disposed_during_the_call__tctl}
program tctl(output);
type rec = record n: integer; nxt: ^rec end;
var a, other: ^integer; r: ^rec; x: integer; f: file of integer;
procedure inc1(var c: integer); begin c := c + 1 end;
procedure show(var c: integer); begin writeln(c) end;
procedure setn(var n: integer); begin n := 7 end;
procedure killother(var c: integer); begin c := c + 10; dispose(other) end;
procedure byval(c: integer); begin dispose(a); writeln(c) end;
function fn(var c: integer): integer; begin c := c * 2; fn := c end;
begin
  new(a); a^ := 4; inc1(a^); inc1(a^); writeln(a^);
  show(a^);
  new(r); r^.n := 1; setn(r^.n); writeln(r^.n);
  rewrite(f); f^ := 3; put(f); reset(f); inc1(f^); writeln(f^);
  new(other); other^ := 1; killother(a^); writeln(a^);
  x := 5; inc1(x); writeln(x);
  writeln(fn(a^), a^);
  byval(a^);
  new(a); a^ := 2; inc1(a^); dispose(a); writeln('done')
end.
{- 142 test_gate_pas_a_program_header_file_binds_to_the_console_as_fpc_miso_binds_it__hdrcopy}
program hdrcopy(src, dst);
var src, dst: text; c: char; n: integer;
begin reset(src); rewrite(dst); n := 0;
  while not eof(src) do begin
    while not eoln(src) do begin read(src, c); write(dst, c); n := n + 1 end;
    readln(src); writeln(dst) end;
  writeln(dst, n, ' characters')
end.
{- 143 test_gate_pas_a_program_header_file_binds_to_the_console_as_fpc_miso_binds_it__hdrout}
program hdrout(output, g);
var g: text; i: integer;
begin rewrite(g); for i := 1 to 3 do writeln(g, 'heading file line ', i) end.
{- 144 test_gate_pas_a_program_using_a_unit_keeps_its_typed_constants_and_fpc_rounds_halves_to_even__roundfpc}
program roundfpc;
{$mode objfpc}
var r: real;
begin r := 0.5; write(round(r), ' '); r := 1.5; write(round(r), ' '); r := 2.5; write(round(r), ' '); r := 3.5; write(round(r), ' '); r := -2.5; write(round(r), ' '); r := -0.5; write(round(r), ' '); r := 22.5; write(round(r)); writeln end.
{- 145 test_gate_pas_a_program_using_a_unit_keeps_its_typed_constants_and_fpc_rounds_halves_to_even__roundiso}
program roundiso(output);
var r: real;
begin r := 0.5; write(round(r), ' '); r := 1.5; write(round(r), ' '); r := 2.5; write(round(r), ' '); r := 3.5; write(round(r), ' '); r := -2.5; write(round(r), ' '); r := -0.5; write(round(r), ' '); r := 22.5; write(round(r)); writeln end.
{- 146 test_gate_pas_a_program_using_a_unit_keeps_its_typed_constants_and_fpc_rounds_halves_to_even__unitprog}
program unitprog;
{$mode objfpc}
uses math, sysutils;
type
  bounty = record value: longint; weight, volume: real; tags: string end;
  tpair = record lo, hi: integer end;
const
  limit = 3;
  panacea: bounty = (value: 3000; weight: 0.3; volume: 0.025; tags: 'p');
  sack: bounty = (value: 7; weight: 25.0; volume: 0.25; tags: 'sack');
  span: tpair = (lo: 2; hi: limit * 2);
  names: array [1..limit] of string = ('a', 'bb', 'ccc');
var
  x: longint; r: real; i: integer;
begin
  x := round(min(sack.weight / panacea.weight, sack.volume / 0.025));
  r := sack.weight / panacea.weight;
  writeln(x, ' ', r:0:3, ' ', sack.value, ' ', sack.tags, ' ', panacea.tags, ' ', span.lo, ' ', span.hi);
  for i := 1 to limit do write(names[i], length(names[i]), ' ');
  writeln(max(span.lo, span.hi), ' ', min(0.5, r) :0:2, ' ', round(max(1.5, 2.25) * 10))
end.
{- 147 test_gate_pas_a_qword_divides_unsigned_and_a_wide_integer_prints_as_fpc_miso_does__big}
{$R-}
program big;
var a: Cardinal; b: QWord; c1, c2: QWord;
begin
  a := 1000000; b := 10000000000000000000;
  c1 := b div a; c2 := 10000000000000000000 div a;
  Write(c1, ' = ', c2, ': ');
  if (c1 <> c2) or (c2 <> 10000000000000) then Writeln('FAIL') else Writeln('OK')
end.
{- 148 test_gate_pas_a_qword_divides_unsigned_and_a_wide_integer_prints_as_fpc_miso_does__mix}
{$R-}
program mix;
var b: qword; k: longint;
begin
  b := 10000000000000000000; k := 7;
  writeln(b mod 7, '|', b div 1000000, '|')
end.
{- 149 test_gate_pas_a_qword_divides_unsigned_and_a_wide_integer_prints_as_fpc_miso_does__wide}
{$R-}
program wide;
var a: int64; b: qword; c: longint;
begin
  a := 10000000000000; b := 10000000000000; c := 2147483647;
  writeln(a, '|', b, '|', c, '|', -a, '|');
  a := 9223372036854775807; writeln(a, '|', high(int64), '|');
  b := 18446744073709551615; writeln(b, '|', b = 18446744073709551615, '|')
end.
{---- 150 test_gate_pas_a_qword_writes_unsigned_at_its_dialects_width__isoqword}
program isoqword(output);

var n: uint64; q: qword; i: integer;
begin
  n := 7140; q := 18446744073709551615; i := -3;
  writeln('Roots of ', n, ':', q, ' ', i, ' ', n:6, '|', q:22, '|');
  write(n); writeln
end.
{---- 151 test_gate_pas_a_qword_writes_unsigned_at_its_dialects_width__objqword}
program objqword;
{$mode objfpc}
var n: uint64; q: qword; i: integer;
begin
  n := 7140; q := 18446744073709551615; i := -3;
  writeln('Roots of ', n, ':', q, ' ', i, ' ', n:6, '|', q:22, '|');
  write(n); writeln
end.
{- 152 test_gate_pas_a_real_value_parameter_is_assignable_inside_its_procedure__caller}
program caller(output);
var a: real;
function half(x: real): real;
begin x := x / 2.0; half := x + 1.0 end;
procedure bump(r: real; k: integer);
begin r := r + k; k := k * 2; writeln(r:6:2, k:3) end;
begin
  a := 3.0;
  writeln(half(a):6:2, a:6:2);
  bump(a, 4);
  writeln(a:6:2)
end.
{- 153 test_gate_pas_a_real_value_parameter_is_assignable_inside_its_procedure__nested}
program nested(output);
procedure outer;
var warp: real; xp: real; course: integer;
  procedure inner(var xp: real; course: integer; warp: real);
  begin
    while warp >= 0.125 do begin xp := xp + 1.0; warp := warp - 0.125 end
  end;
begin
  xp := 0; warp := 0.5; course := 3;
  inner(xp, course, warp);
  writeln(xp:6:2, warp:6:2)
end;
begin outer end.
{- 154 test_gate_pas_a_real_value_parameter_is_assignable_inside_its_procedure__toplevel}
program toplevel(output);
procedure inner(w: real);
begin w := w - 0.125; writeln(w:6:3) end;
begin inner(0.5) end.
{- 155 test_gate_pas_a_record_wider_than_the_field_table_still_resolves_its_variant_tags__b}
program bigrec(output);
type
  kind = (ka, kb, kc);
  dk = (da, db);
  ctp = ^big;
  big = record
    f01: integer;
    f02: integer;
    f03: integer;
    f04: integer;
    f05: integer;
    f06: integer;
    f07: integer;
    f08: integer;
    f09: integer;
    f10: integer;
    f11: integer;
    f12: integer;
    f13: integer;
    f14: integer;
    f15: integer;
    f16: integer;
    f17: integer;
    f18: integer;
    f19: integer;
    f20: integer;
    f21: integer;
    f22: integer;
    f23: integer;
    f24: integer;
    f25: integer;
    f26: integer;
    f27: integer;
    f28: integer;
    case tag: kind of
      ka: ();
      kb: (b1: integer; b2: integer);
      kc: (c1: integer;
           case tag2: dk of
             da: (d1: integer);
             db: (d2: integer))
  end;
var p: ctp; i, s: integer;
begin
  new(p);
  p^.f01 := 7;
  p^.f02 := 14;
  p^.f03 := 21;
  p^.f04 := 28;
  p^.f05 := 35;
  p^.f06 := 42;
  p^.f07 := 49;
  p^.f08 := 56;
  p^.f09 := 63;
  p^.f10 := 70;
  p^.f11 := 77;
  p^.f12 := 84;
  p^.f13 := 91;
  p^.f14 := 98;
  p^.f15 := 105;
  p^.f16 := 112;
  p^.f17 := 119;
  p^.f18 := 126;
  p^.f19 := 133;
  p^.f20 := 140;
  p^.f21 := 147;
  p^.f22 := 154;
  p^.f23 := 161;
  p^.f24 := 168;
  p^.f25 := 175;
  p^.f26 := 182;
  p^.f27 := 189;
  p^.f28 := 196;
  p^.tag := kc;
  p^.c1 := 900;
  p^.tag2 := db;
  p^.d2 := 4242;
  s := 0;
  s := s + p^.f01;
  s := s + p^.f02;
  s := s + p^.f03;
  s := s + p^.f04;
  s := s + p^.f05;
  s := s + p^.f06;
  s := s + p^.f07;
  s := s + p^.f08;
  s := s + p^.f09;
  s := s + p^.f10;
  s := s + p^.f11;
  s := s + p^.f12;
  s := s + p^.f13;
  s := s + p^.f14;
  s := s + p^.f15;
  s := s + p^.f16;
  s := s + p^.f17;
  s := s + p^.f18;
  s := s + p^.f19;
  s := s + p^.f20;
  s := s + p^.f21;
  s := s + p^.f22;
  s := s + p^.f23;
  s := s + p^.f24;
  s := s + p^.f25;
  s := s + p^.f26;
  s := s + p^.f27;
  s := s + p^.f28;
  writeln('sum ', s:1);
  writeln('tag ', ord(p^.tag):1, ' tag2 ', ord(p^.tag2):1, ' c1 ', p^.c1:1, ' d2 ', p^.d2:1);
  if (p^.tag = kc) and (p^.tag2 = db) then writeln('tags compare') else writeln('tags do not compare')
end.
{- 156 test_gate_pas_a_required_procedure_is_activated_with_its_parameters__ctl}
program ctl(input, output);
var n: integer;
procedure get;
begin
  n := n + 1; writeln('user get ', n)
end;
begin
  n := 0; get; writeln; get; readln; writeln('done')
end.
{- 157 test_gate_pas_a_routine_declared_inside_another_hides_an_outer_routine_of_the_same_name__arity}
program arity(output);
var t: integer;
procedure enter(x0: integer; x1: integer; x2: integer);
begin t := t + x0 + x1 + x2 end;
procedure block;
  procedure enter(id: integer);
  begin t := t + id end;
begin enter(5); writeln(t) end;
begin t := 0; enter(1, 2, 3); block; writeln(t) end.
{- 158 test_gate_pas_a_routine_declared_inside_another_hides_an_outer_routine_of_the_same_name__nesting}
program nesting(output);
var t: integer;
procedure helper(n: integer);
begin t := t + n end;
function sq(n: integer): integer;
begin sq := n * n end;
procedure a;
  procedure helper(n: integer);
  begin t := t + 100 * n end;
  function sq(n: integer): integer;
  begin if n <= 1 then sq := 1 else sq := n + sq(n - 1) end;
begin helper(2); writeln(t, ' ', sq(4)) end;
procedure b;
  procedure helper(n: integer);
  begin t := t + 1000 * n end;
  procedure deeper;
    procedure helper(n: integer);
    begin t := t + 10000 * n end;
  begin helper(1) end;
begin helper(3); deeper; helper(1); writeln(t) end;
begin
  t := 0;
  helper(1); writeln(t, ' ', sq(3));
  a; b;
  helper(5); writeln(t, ' ', sq(5))
end.
{- 159 test_gate_pas_a_routine_declared_inside_another_hides_an_outer_routine_of_the_same_name__samearity}
program samearity(output);
var t: integer;
procedure bump(n: integer);
begin t := t + n end;
procedure inner;
  procedure bump(n: integer);
  begin t := t + 100 * n end;
begin bump(2) end;
begin t := 0; bump(1); inner; bump(3); writeln(t) end.
{------- 160 test_gate_pas_a_set_held_in_a_record_field_combines_as_a_set__anon}
program anon(output);
type set058 = set of 0..58;
     datatype = (undef, int, sett);
var store: array [0..9] of record case datatype of undef: (); int: (vi: integer); sett: (vs: set058) end;
    sp, k: integer;
begin
  store[1].vs := [8]; store[2].vs := [0, 1, 2, 3, 6]; sp := 1;
  store[sp].vs := store[sp].vs + store[sp + 1].vs;
  for k := 0 to 58 do if k in store[1].vs then write(k:1, ' '); writeln;
  writeln(store[1].vs = store[2].vs, ' ', store[2].vs <= store[1].vs)
end.
{----- 161 test_gate_pas_a_set_held_in_a_record_field_combines_as_a_set__inline}
program inline(output);
type rec = record n: integer; s: set of 0..20; c: char end;
     prec = ^rec;
var r, t: rec; p: prec; k: integer; a: array [1..3] of record s: set of 0..20; m: 0..9 end;
begin
  r.s := [1, 2]; t.s := [2, 5]; new(p); p^.s := [7];
  r.s := r.s + t.s; p^.s := p^.s + r.s; r.n := 4; r.c := 'x';
  for k := 0 to 20 do if k in p^.s then write(k:1, ' '); writeln;
  writeln(r.s = [1, 2, 5], ' ', t.s <= r.s, ' ', r.n + 1, ' ', r.c);
  a[1].s := [3]; a[2].s := [4]; a[3].s := a[1].s + a[2].s; a[3].m := 9;
  for k := 0 to 20 do if k in a[3].s then write(k:1, ' '); writeln(a[3].m + 1)
end.
{------ 162 test_gate_pas_a_set_held_in_a_record_field_combines_as_a_set__named}
program named(output);
type set058 = set of 0..58;
     cell = record case integer of 1: (vi: integer); 2: (vs: set058) end;
var store: array [0..9] of cell; sp, k: integer; r: cell; s: set058;
procedure pr(s: set058); var k: integer; begin for k := 0 to 58 do if k in s then write(k:1, ' '); writeln end;
begin
  store[1].vs := [8]; store[2].vs := [0, 1, 2, 3, 6]; sp := 1;
  store[sp].vs := store[sp].vs + store[sp + 1].vs; pr(store[1].vs);
  store[3].vs := [8]; store[3].vs := store[3].vs + store[2].vs; pr(store[3].vs);
  store[4].vs := [8]; s := store[2].vs; store[4].vs := store[4].vs + s; pr(store[4].vs);
  r.vs := [8]; r.vs := r.vs + store[2].vs; pr(r.vs);
  store[5].vs := [1, 2] * store[2].vs; pr(store[5].vs);
  store[6].vs := store[2].vs - [1]; pr(store[6].vs)
end.
{------------- 163 test_gate_pas_a_set_held_in_a_record_keeps_its_members__arec}
program arec(output);
type set058 = set of 0..58;
     datatype = (undef, int, reel, bool, sett, adr, mark, car);
var store: array [0..20] of record case datatype of
                               undef: ();
                               int: (vi: integer);
                               reel: (vr: real);
                               bool: (vb: boolean);
                               sett: (vs: set058);
                               car: (vc: char);
                               adr: (va: integer);
                               mark: (vm: integer)
                             end;
    s: set058; q, scp, k: integer;
begin
  s := [2, 3]; scp := 11;
  store[scp].vs := s; writeln('eq direct: ', store[scp].vs = s);
  q := 10;
  repeat q := q + 1 until store[q].vs = s;
  writeln('found at q=', q:1);
  store[12].vs := [0, 1, 58]; store[13].vs := store[12].vs;
  write('copied('); for k := 0 to 58 do if k in store[13].vs then write(k:3); writeln(')');
  writeln('in ', 58 in store[13].vs, ' ', 57 in store[13].vs, ' ', store[13].vs = [0, 1, 58])
end.
{------------- 164 test_gate_pas_a_set_held_in_a_record_keeps_its_members__hrec}
program hrec(output);
const setlow = 0; sethigh = 63;
type setlohi = set of setlow..sethigh;
     cstclass = (reel, pset, strg);
     csp = ^constant;
     constant = record case cclass: cstclass of
                  reel: (rval: packed array [1..8] of char);
                  pset: (pval: setlohi);
                  strg: (slgth: 0..8; sval: packed array [1..8] of char)
                end;
var lvp: csp; cstpart, s2: setlohi; k: integer; cstptr: array [1..4] of csp;
procedure show(tag: char; s: setlohi);
  var k: integer;
begin write(tag, '('); for k := setlow to sethigh do if k in s then write(k:3); writeln(')') end;
begin
  cstpart := [2, 3];
  new(lvp, pset); lvp^.pval := cstpart; lvp^.cclass := pset;
  write('a('); for k := setlow to sethigh do if k in lvp^.pval then write(k:3); writeln(')');
  with lvp^ do begin write('b('); for k := setlow to sethigh do if k in pval then write(k:3); writeln(')') end;
  cstptr[2] := lvp;
  with cstptr[2]^ do begin write('c('); for k := setlow to sethigh do if k in pval then write(k:3); writeln(')') end;
  s2 := lvp^.pval; show('d', s2);
  new(lvp, pset); lvp^.pval := [0, 9, 12, 63]; show('e', lvp^.pval);
  writeln('eq ', lvp^.pval = [0, 9, 12, 63], ' ', cstptr[2]^.pval = cstpart, ' ', cstptr[2]^.pval <= [1..5])
end.
{--------------------- 165 test_gate_pas_a_set_member_is_of_an_ordinal_type__ok}
program setctl(output);
type color = (red, green, blue);
var i, n: integer; c: char; k: color; s: set of 0..20; cs: set of char; ks: set of color;
begin
  i := 3; n := 7; c := 'q'; k := green;
  s := [i, n]; s := s + [1..2]; s := s + [i + 10]; cs := ['a'..'e', c]; ks := [red, k];
  n := 0; for i := 0 to 20 do if i in s then n := n + i;
  writeln(n:1, ' ', 'c' in cs, ' ', c in cs, ' ', 'z' in cs, ' ', blue in ks, ' ', green in ks)
end.
{- 166 test_gate_pas_a_static_variable_of_2_gib_or_more_is_refused_where_fpc_cannot_link_it__okarr}
program okarr;
var a: array[0..1000000] of integer;
begin
  a[1000000] := 7;
  writeln(a[1000000])
end.
{- 167 test_gate_pas_a_string_type_is_indexed_by_an_integer_subrange_not_an_enumerated_one__ffirst}
program ffirst(output);
type color = (red, green, blue, white);
     two = green..blue;
var s: packed array [two] of char;
begin s := 'cd'; writeln('x') end.
{- 168 test_gate_pas_a_string_type_is_indexed_by_an_integer_subrange_not_an_enumerated_one__finline}
program finline(output);
type enum = (one, two, three);
var s: packed array [two..three] of char;
begin s := 'ab'; writeln('x') end.
{- 169 test_gate_pas_a_string_type_is_indexed_by_an_integer_subrange_not_an_enumerated_one__fnamed}
program fnamed(output);
type enum = (one, two, three);
     sr   = two..three;
var s: packed array [sr] of char;
begin s := 'ab'; writeln('x') end.
{- 170 test_gate_pas_a_string_type_is_indexed_by_an_integer_subrange_not_an_enumerated_one__tctl}
program tctl(output);
type enum = (one, two, three);
     sr   = two..three;
     sri  = 1..2;
     srj  = 1..3;
var s: packed array [sr] of char; t: packed array [sri] of char; u: packed array [1..3] of char; v: packed array [enum] of char;
    w: array [sr] of integer; x: packed array [two..three] of char; c: char;
begin
  s[two] := 'a'; s[three] := 'b'; writeln(s[two], s[three]);
  t := 'xy'; writeln(t);
  u := 'abc'; writeln(u);
  v[one] := 'p'; v[two] := 'q'; v[three] := 'r'; writeln(v[one], v[three]);
  w[two] := 5; w[three] := 6; writeln(w[two] + w[three]);
  x[two] := 'm'; x[three] := 'n'; c := x[three]; writeln(x[two], c)
end.
{-------- 171 test_gate_pas_a_subrange_bound_or_case_constant_is_never_real__ok}
program ordctl(output);
const r = 1.5; m = -2.5e1; p = +0.25; lo = 2; hi = 7;
type small = lo..hi; letter = 'a'..'e'; color = (red, green, blue); warm = red..green;
     shape = record case k: color of red: (x: integer); green, blue: (y: char) end;
var s: small; c: letter; w: warm; v: shape; i: integer;
begin
  writeln(r:6:2, m:8:2, p:6:2);
  s := 5; c := 'c'; w := green; v.k := green; v.y := 'q';
  for i := 1 to 3 do
    case i of
      1: writeln('one ', s:1);
      2, 3: writeln('two or three ', ord(c) - ord('a'):1)
    end;
  case c of 'a', 'b': writeln('ab'); 'c': writeln('c') end;
  if w = green then writeln('warm green ', v.y)
end.
{- 172 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__asg}
program asg(output);
var b: 1..5; i: integer;
begin
  i := 3; b := i; writeln('in ', b); i := 10; b := i; writeln('after ', b)
end.
{- 173 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__fok}
program fok(output);
type a = set of 1..5; s = 1..5;
var g: s; x: integer;
procedure b(c: a; var d: s; e: s);
begin
  c := c + [5]; d := e; if 5 in c then writeln('five ', d)
end;
procedure q(x: s);
begin
  x := 5; writeln('q ', x)
end;
begin
  b([1, 2], g, 4); writeln(g); q(2); x := 10; writeln(x)
end.
{- 174 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__fset}
program fset(output);
type a = set of 1..5;
procedure b(c: a);
begin
  c := [3, 6]; writeln('after')
end;
begin
  writeln('before'); b([1, 2])
end.
{- 175 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__fvar}
program fvar(output);
type s = 1..5;
var g: s;
procedure b(var c: s);
var i: integer;
begin
  i := 9; c := i; writeln('after')
end;
begin
  writeln('before'); b(g)
end.
{- 176 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__ok}
program ok(input, output);
var b: 1..5; c: 'a'..'z'; i: integer;
begin
  for i := 1 to 5 do begin b := i; write(b:2) end; writeln;
  read(b); writeln(b); c := 'q'; writeln(c)
end.
{- 177 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__rdg}
program rdg(input, output);
var b: 1..5;
begin
  writeln('before'); read(b); writeln('after ', b)
end.
{- 178 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__sbad}
program sbad(output);
var s: set of 1..10; i: integer;
begin
  s := [2, 4]; writeln('before'); s := [1, 2, 11]; writeln('after')
end.
{- 179 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__shf}
program shf(output);
var x: integer;
procedure p;
var x: 1..5;
begin
  x := 9
end;
begin
  x := 10; writeln('main ', x); p; writeln('after')
end.
{- 180 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__sho}
program sho(output);
var x: integer;
procedure p;
var x: 1..5;
begin
  x := 3; writeln('p ', x)
end;
procedure q(x: integer);
begin
  x := x * 10; writeln('q ', x)
end;
begin
  x := 10; writeln('main ', x); p; q(7)
end.
{- 181 test_gate_pas_a_subrange_variable_is_given_only_values_of_its_subrange__sok}
program sok(output);
var s: set of 1..20; i: integer;
begin
  s := [1, 3, 5, 7, 9, 11, 13, 20]; for i := 0 to 21 do if i in s then write(i:3); writeln
end.
{- 182 test_gate_pas_a_tag_allocated_variable_is_not_accessed_as_a_whole_variable__ctl}
program ctl(output);
type a = record case b: boolean of true: (c: integer); false: (d: integer) end;
var v: a; f, e: ^a;
procedure show(var z: a); begin writeln(ord(z.b)) end;
procedure copy(z: a); begin writeln(ord(z.b)) end;
begin
  new(f); f^.b := true; f^.c := 4; v := f^; writeln(v.c); f^ := v; show(f^); copy(f^);
  new(e, true); e^.b := true; e^.c := 5; writeln(e^.c); writeln(ord(e^.b));
  dispose(e, true); dispose(f)
end.
{- 183 test_gate_pas_a_tag_allocated_variable_is_not_accessed_as_a_whole_variable__wasg}
program wasg(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a; x: a;
begin
  writeln('before'); new(e, true); x.b := true; x.c := 42; e^ := x; writeln('after')
end.
{- 184 test_gate_pas_a_tag_allocated_variable_is_not_accessed_as_a_whole_variable__wfac}
program wfac(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a; x: a;
begin
  writeln('before'); new(e, true); e^.b := true; e^.c := 42; x := e^; writeln('after')
end.
{- 185 test_gate_pas_a_tag_allocated_variable_is_not_accessed_as_a_whole_variable__wval}
program wval(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
procedure y(z: a); begin end;
begin
  writeln('before'); new(e, true); e^.b := true; e^.c := 42; y(e^); writeln('after')
end.
{- 186 test_gate_pas_a_tag_allocated_variable_is_not_accessed_as_a_whole_variable__wvar}
program wvar(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
procedure y(var z: a); begin end;
begin
  writeln('before'); new(e, true); e^.b := true; e^.c := 42; y(e^); writeln('after')
end.
{---- 187 test_gate_pas_a_tag_field_is_not_passed_as_a_variable_parameter__tctl}
program tctl(output);
type k = (red, green, blue);
var r: record n: integer; case t: k of red: (i: integer); green: (c: char); blue: (x: boolean) end;
    q: record case b: boolean of true: (j: integer); false: (d: char) end;
procedure inc1(var x: integer); begin x := x + 1 end;
procedure pv(x: k); begin writeln(ord(x)) end;
function fv(x: boolean): integer; begin if x then fv := 1 else fv := 0 end;
begin
  r.n := 5; inc1(r.n); writeln(r.n);
  r.t := red; r.i := 40; inc1(r.i); writeln(r.i);
  pv(r.t); q.b := true; q.j := 3; writeln(fv(q.b)); inc1(q.j); writeln(q.j)
end.
{--- 188 test_gate_pas_a_tag_field_is_not_passed_as_a_variable_parameter__tenum}
program tenum(output);
type k = (red, green, blue);
var r: record case t: k of red: (i: integer); green: (c: char); blue: (x: boolean) end;
procedure a(var x: k); begin x := green end;
begin a(r.t); writeln(ord(r.t)) end.
{--- 189 test_gate_pas_a_tag_field_is_not_passed_as_a_variable_parameter__tfunc}
program tfunc(output);
var r: record case b: boolean of true: (i: integer); false: (c: char) end; v: integer;
function f(var x: boolean): integer; begin x := true; f := 1 end;
begin v := f(r.b); writeln(v) end.
{-- 190 test_gate_pas_a_tag_field_is_not_passed_as_a_variable_parameter__tplain}
program tplain(output);
var r: record case b: boolean of true: (i: integer); false: (c: char) end;
procedure a(var x: boolean); begin x := true end;
begin a(r.b); writeln(r.b) end.
{---- 191 test_gate_pas_a_tag_field_is_not_passed_as_a_variable_parameter__tptr}
program tptr(output);
type rt = record case b: boolean of true: (i: integer); false: (c: char) end;
var p: ^rt;
procedure a(var x: boolean); begin x := true end;
begin new(p); a(p^.b); writeln(p^.b) end.
{--- 192 test_gate_pas_a_tag_field_is_not_passed_as_a_variable_parameter__twith}
program twith(output);
var r: record case b: boolean of true: (i: integer); false: (c: char) end;
procedure a(var x: boolean); begin x := true end;
begin with r do a(b); writeln(r.b) end.
{------- 193 test_gate_pas_a_text_parameter_is_the_file_its_actual_names__tread}
program tread(input, output);
var n: integer; ch: char;
procedure outer;
  procedure readc(var f: text);
    var c: char;
  begin write('peek[', f^, '] '); read(f, c); writeln('read[', c, ']') end;
  procedure readi(var f: text);
    var k: integer;
  begin read(f, k); writeln('int[', k:1, '] eoln=', eoln(f)) end;
begin readc(input); readc(input); readi(input); readc(input); readc(input) end;
procedure skipline(var f: text);
begin readln(f) end;
begin
  outer; writeln('eoln now ', eoln(input));
  skipline(input); n := 0;
  while not eoln(input) do begin n := n + 1; read(ch) end;
  writeln('second line length ', n:1)
end.
{------ 194 test_gate_pas_a_text_parameter_is_the_file_its_actual_names__twrite}
program twrite(output);
var i: integer;
procedure say(var f: text; k: integer);
begin write(f, 'value '); writeln(f, k:3) end;
begin
  writeln('start');
  for i := 1 to 3 do begin say(output, i * 7); writeln('between ', i:1) end;
  writeln('end')
end.
{------ 195 test_gate_pas_a_two_dimensional_array_indexes_the_same_both_ways__d}
program aa(output);
 
var t: array [1..6, 1..7] of integer; i, j, s: integer;
begin
  for i := 1 to 6 do for j := 1 to 7 do t[i][j] := 0;
  t[1][1] := 11;
  t[1][2] := 12;
  t[3][7] := 37;
  t[6][4] := 64;
  s := 0;
  for i := 1 to 6 do for j := 1 to 7 do s := s + t[i][j];
  writeln('t11 ', t[1][1]:1, ' t12 ', t[1][2]:1, ' t37 ', t[3][7]:1, ' t64 ', t[6][4]:1, ' sum ', s:1)
end.
{- 196 test_gate_pas_a_two_dimensional_array_of_records_is_indexed_by_both_subscripts__flat}
program flat(output);
type rec = record rnum: integer end;
var galaxy: array [0..3, 0..3] of rec; i, j: integer;
begin
  i := 1; j := 2;
  galaxy[i, j].rnum := 5;
  writeln(galaxy[1, 2].rnum)
end.
{- 197 test_gate_pas_a_two_dimensional_array_of_records_is_indexed_by_both_subscripts__grid}
program grid(output);
type cell = record v: integer; ok: boolean end;
var g: array [0..2, 0..3] of cell; i, j, s: integer;
begin
  for i := 0 to 2 do for j := 0 to 3 do begin g[i, j].v := i * 10 + j; g[i, j].ok := odd(i + j) end;
  s := 0;
  for i := 0 to 2 do for j := 0 to 3 do if g[i, j].ok then s := s + g[i, j].v;
  writeln(s, ' ', g[2, 3].v, ' ', g[1, 0].v, ' ', g[0, 2].v)
end.
{- 198 test_gate_pas_a_two_dimensional_array_of_records_is_indexed_by_both_subscripts__withgrid}
program withgrid(output);
type rec = record ishistory: boolean; rnum: integer end;
var galaxy: array [0..3, 0..3] of rec; i, j, n: integer;
begin
  for i := 0 to 3 do for j := 0 to 3 do
    with galaxy[i, j] do begin ishistory := (i = j); rnum := i * 4 + j end;
  n := 0;
  for i := 0 to 3 do for j := 0 to 3 do if galaxy[i, j].ishistory then n := n + galaxy[i, j].rnum;
  writeln(n, ' ', galaxy[3, 1].rnum)
end.
{----- 199 test_gate_pas_a_type_definition_never_applies_its_own_identifier__ok}
program selfctl(output);
type link = ^node;
     node = record val: integer; next: link end;
     cell = record cv: integer; nxt: ^cell end;
     point = record point: integer end;
     pair = record a, b: point end;

     count = integer;
var head, p: link; r: array [1..3] of point; n: count; c: cell;
begin
  head := nil;
  for n := 1 to 3 do begin new(p); p^.val := n; p^.next := head; head := p end;
  n := 0; p := head; while p <> nil do begin n := n * 10 + p^.val; p := p^.next end;
  r[2].point := 7; c.cv := 4; c.nxt := nil;
  writeln(n:1, ' ', r[2].point:1, ' ', c.cv:1, ' ', c.nxt = nil)
end.
{----------- 200 test_gate_pas_a_typed_file_var_formal_is_the_callers_file__buf}
program buf(output);
type ft = file of integer;
var f: ft; v: integer;
procedure stuff(var x: ft; n: integer);
begin x^ := n; put(x); x^ := n * 2; put(x) end;
begin
  rewrite(f);
  stuff(f, 3);
  stuff(f, 5);
  reset(f);
  while not eof(f) do begin read(f, v); writeln(v) end
end.
{------------ 201 test_gate_pas_a_typed_file_var_formal_is_the_callers_file__rd}
program rd(output);
type ft = file of integer;
var f: ft; i: integer;
procedure dump(var x: ft);
begin
  reset(x);
  while not eof(x) do begin writeln(x^); get(x) end
end;
begin
  rewrite(f);
  for i := 1 to 4 do write(f, i * i);
  dump(f);
  writeln('again');
  dump(f)
end.
{--------- 202 test_gate_pas_a_typed_file_var_formal_is_the_callers_file__scope}
program scope(output);
type ft = file of integer;
var f: ft; v: integer;
procedure p(var x: ft);
begin rewrite(x); write(x, 41) end;
procedure q;
var x: integer;
begin x := 5; x := x + 1; writeln(x) end;
function r(x: integer): integer;
begin r := x * 2 end;
begin
  p(f); reset(f); read(f, v); writeln(v);
  q; writeln(r(21))
end.
{------------ 203 test_gate_pas_a_typed_file_var_formal_is_the_callers_file__wr}
program wr(output);
type ft = file of integer;
var f: ft; v: integer;
procedure emit(var y: ft; n: integer);
begin write(y, n); write(y, n + 1) end;
procedure fill(var x: ft; n: integer);
begin rewrite(x); emit(x, n); emit(x, n + 10) end;
begin
  fill(f, 7);
  reset(f);
  while not eof(f) do begin read(f, v); writeln(v) end
end.
{- 204 test_gate_pas_a_value_assigned_through_a_pointer_is_compatible_with_its_domain_type__tctl}
program tctl(output);
type a = integer; pa = ^a; pc = ^char; pr = ^real; pb = ^boolean;
     rec = record n: integer; c: char end; prec = ^rec;
     later = ^item; item = record v: integer; nxt: later end;
var ip: pa; cp: pc; rp: pr; bp: pb; rr: prec; lp: later;
procedure inner;
type q = ^a;
var ip2: q;
begin new(ip2); ip2^ := 7; writeln(ip2^) end;
begin
  new(ip); ip^ := 5; writeln(ip^);
  new(cp); cp^ := 'x'; writeln(cp^);
  new(rp); rp^ := 2; writeln(rp^:5:1);
  new(bp); bp^ := true; writeln(bp^);
  new(rr); rr^.n := 3; rr^.c := 'z'; writeln(rr^.n, rr^.c);
  new(lp); lp^.v := 9; lp^.nxt := nil; writeln(lp^.v);
  inner
end.
{- 205 test_gate_pas_a_value_formal_parameter_is_not_of_a_file_type_nor_holds_one__ctl}
program ctl(output);
type r = record n: integer; c: char end; ft = file of integer;
var d: r; f: ft;
procedure b(c: r); begin writeln(c.n, c.c) end;
procedure p(var x: text); begin writeln(x, 'line') end;
begin d.n := 4; d.c := 'q'; b(d); rewrite(f); write(f, 9); reset(f); writeln(f^); p(output) end.
{-------------- 206 test_gate_pas_a_var_actual_has_the_type_of_its_formal__vchr}
program vchr(output);
var c: 'a'..'z';
procedure a(var b: char);
begin
  b := 'q'
end;
begin
  a(c); writeln(c)
end.
{--------------- 207 test_gate_pas_a_var_actual_has_the_type_of_its_formal__vok}
program vok(output);
type s = 1..10; t = set of 1..5;
var c: s; i: integer; u: t;
procedure a(var b: s);
begin
  b := b + 1
end;
procedure n(var b: integer);
begin
  b := b * 2
end;
procedure w(var b: t);
begin
  b := b + [4]
end;
begin
  c := 3; a(c); writeln(c); i := 21; n(i); writeln(i); u := [1]; w(u); writeln(4 in u)
end.
{- 208 test_gate_pas_a_var_actual_that_is_a_component_is_the_component_not_a_copy__chu}
program chu(output);
type node = record v: integer; next: ^node end;
var a: array[1..3] of integer; keep: array[1..5] of ^node; i: integer;
procedure churn(var x: integer);
var k: integer; q: ^node;
begin
  for k := 1 to 3000 do begin new(q); q^.v := k; q^.next := nil; keep[k mod 5 + 1] := q; if k mod 100 = 0 then x := x + 1 end
end;
begin for i := 1 to 3 do a[i] := i * 100; churn(a[2]); writeln(a[1], ' ', a[2], ' ', a[3]) end.
{- 209 test_gate_pas_a_var_actual_that_is_a_component_is_the_component_not_a_copy__ctl}
program vc(output);
type rec = record a: integer; b: real; c: char; flag: boolean end;
     inner = record p, q: integer end;
     outer = record name: integer; in1: inner; arr: array[1..3] of integer end;
     cs = array[1..5] of char;
var x: rec; y: array[1..4] of integer; o: outer; ao: array[1..2] of outer; m: array[1..3, 1..3] of integer; s: cs; r: array[1..3] of rec; i, j: integer; z: real;
procedure inc(var v: integer); begin v := v + 1 end;
procedure setx(var v: integer; n: integer); begin x.a := 100; v := v + n end;
procedure swap(var p, q: integer); var t: integer; begin t := p; p := q; q := t end;
procedure upc(var c: char); begin c := succ(c) end;
procedure half(var d: real); begin d := d / 2 end;
procedure tog(var f: boolean); begin f := not f end;
function bump(var v: integer): integer; begin v := v * 2; bump := v + 1 end;
procedure down(var v: integer; n: integer); begin if n > 0 then begin v := v + n; down(v, n - 1) end end;
procedure clr(var v: inner); begin v.p := 0; v.q := 0 end;
procedure ovr(var v: integer); begin y[2] := 55; v := v + 1; y[3] := y[3] + v end;
begin
  x.a := 1; x.b := 3.0; x.c := 'a'; x.flag := false;
  inc(x.a); writeln(x.a); setx(x.a, 5); writeln(x.a);
  half(x.b); writeln(x.b:0:2); tog(x.flag); writeln(x.flag);
  for i := 1 to 4 do y[i] := i * 10; swap(y[1], y[4]); writeln(y[1], ' ', y[4]); i := 2; inc(y[i + 1]); writeln(y[3]);
  o.name := 1; o.in1.p := 5; o.in1.q := 6; o.arr[2] := 20; inc(o.in1.q); inc(o.arr[2]); swap(o.in1.p, o.arr[2]); writeln(o.in1.p, ' ', o.in1.q, ' ', o.arr[2]);
  ao[2].in1.p := 9; inc(ao[2].in1.p); clr(ao[2].in1); inc(ao[2].arr[3]); writeln(ao[2].in1.p, ao[2].in1.q, ao[2].arr[3]);
  for i := 1 to 3 do for j := 1 to 3 do m[i, j] := i * 10 + j; inc(m[2, 3]); swap(m[1, 1], m[3, 3]); writeln(m[2, 3], ' ', m[1, 1], ' ', m[3, 3]);
  for i := 1 to 5 do s[i] := chr(ord('a') + i); upc(s[2]); upc(s[5]); writeln(s[1], s[2], s[3], s[4], s[5]);
  r[2].c := 'x'; upc(r[2].c); writeln(r[2].c);
  y[1] := 3; writeln(bump(y[1]), ' ', y[1]);
  y[2] := 0; down(y[2], 4); writeln(y[2]);
  y[3] := 1; ovr(y[1]); writeln(y[1], ' ', y[2], ' ', y[3]);
  y[1] := 1; y[2] := 2; i := 1; inc(y[y[i]]); writeln(y[1], y[2]);
  z := 1.5; r[3].b := 9.0; half(r[3].b); writeln(r[3].b:0:2)
end.
{- 210 test_gate_pas_a_var_actual_that_is_a_component_is_the_component_not_a_copy__oor}
program oor(output);
var y: array[1..4] of integer;
procedure inc(var v: integer); begin v := v + 1 end;
begin y[1] := 1; inc(y[1]); writeln('before'); inc(y[9]); writeln('after') end.
{- 211 test_gate_pas_a_var_actual_that_is_a_component_is_the_component_not_a_copy__wit}
program varfield(output);
type r = record a: integer; b: integer end;
var x: r; y: array[1..2] of integer;
procedure f(var v: integer); begin x.a := 7; v := v + 1 end;
procedure g(var v: integer); begin y[1] := 70; v := v + 1 end;
begin x.a := 1; f(x.a); writeln(x.a); y[1] := 10; g(y[1]); writeln(y[1]) end.
{- 212 test_gate_pas_a_var_actual_that_is_a_variant_field_is_a_view_of_its_region_not_a_copy__ctl}
program vw(output);
type u = record case boolean of true: (i: integer); false: (c: char) end;
     w = record k: integer; case integer of 0: (n: integer; b: boolean); 1: (r: real) end;
var a: u; x: w; y: array[1..2] of u;
procedure bump(var j: integer); begin j := j + 1 end;
procedure setc(var j: integer); begin a.c := 'A'; j := j + 1000 end;
procedure thru(var j: integer); begin bump(j); bump(j) end;
function fv(var j: integer): integer; begin j := j * 2; fv := j end;
procedure hv(var q: real); begin q := q / 2.0 end;
procedure tg(var f: boolean); begin f := not f end;
procedure upc(var ch: char); begin ch := succ(ch) end;
procedure other(var j: integer); begin y[1].c := 'B'; j := j + 1 end;
begin
  a.i := 1; bump(a.i); writeln(a.i);
  a.i := 5; setc(a.i); writeln(a.i);
  a.i := 7; thru(a.i); writeln(a.i);
  a.i := 3; writeln(fv(a.i), ' ', a.i);
  x.k := 1; x.n := 10; bump(x.n); writeln(x.n, ' ', x.k);
  x.r := 8.0; hv(x.r); writeln(x.r:0:2);
  x.n := 1; x.b := false; tg(x.b); writeln(x.b);
  a.c := 'a'; upc(a.c); writeln(a.c);
  y[1].i := 100; other(y[1].i); writeln(y[1].i);
  y[2].i := 9; bump(y[2].i); writeln(y[2].i)
end.
{- 213 test_gate_pas_a_variable_declared_in_one_routine_does_not_give_a_later_routines_variable_its_type__tctl1}
program tctl1(output);
type settype = set of 0..31;
var g: settype; k: integer;
procedure one(var s: settype); begin s := [1, 2] end;
procedure two;
var s, i: integer;
begin s := 3; i := 4; writeln(i * s, ' ', i + s, ' ', i - s) end;
procedure fw(s: settype); forward;
procedure three;
var s: integer;
begin s := 5; writeln(s * 2) end;
procedure fw;
begin if 3 in s then writeln('in') else writeln('out'); if 2 in s then writeln('in2') else writeln('out2') end;
procedure four;
begin g := g + [2]; if 2 in g then writeln('g2') else writeln('not g2') end;
procedure five(var t: settype);
var s: settype; u: integer;
begin s := t * [1, 2, 3]; u := 6; if 1 in s then writeln('s1'); writeln(u * 7) end;
begin
  g := []; one(g); four; two; three; fw([2, 3]); fw([5]); five(g); k := 3; writeln(k * 3)
end.
{- 214 test_gate_pas_a_variable_declared_in_one_routine_does_not_give_a_later_routines_variable_its_type__tctl2}
program tctl2(output);
var g: char; k: integer;
procedure one(c: char; var f: text); begin write(f, c); writeln(f) end;
procedure two;
var c, f: integer;
begin c := 65; f := 66; writeln(c, ' ', f, ' ', c + f) end;
function nxt(c: char): char; begin nxt := succ(c) end;
procedure three;
var c: integer;
begin c := ord(nxt('a')); writeln(c); writeln(nxt('a')) end;
procedure fw(c: char); forward;
procedure four; var c: integer; begin c := 7; writeln(c * 2) end;
procedure fw; begin writeln(c); writeln(ord(c)) end;
begin
  g := 'q'; one(g, output); two; three; four; fw('z'); k := 66; writeln(k); writeln(g)
end.
{- 215 test_gate_pas_a_variable_declared_in_one_routine_does_not_give_a_later_routines_variable_its_type__tctl3}
program tctl3(output);
var d: integer;
function nxt(c: char): char; begin nxt := succ(c) end;
procedure a1; var c: integer; begin c := 98; writeln(c) end;
procedure a2; var c: integer; begin c := ord(nxt('a')); writeln(c) end;
procedure a3; var c: integer; begin c := ord('b'); writeln(c) end;
procedure a4; var c: integer; begin d := ord(nxt('a')); writeln(d) end;
procedure a5; var c: integer; begin c := ord(succ('a')); writeln(c) end;
begin a1; a2; a3; a4; a5 end.
{- 216 test_gate_pas_a_variable_declared_in_one_routine_does_not_give_a_later_routines_variable_its_type__tctl4}
program tctl4(output);
function same(b: boolean): boolean; begin same := b end;
procedure two; var b: integer; begin b := 5; writeln(b) end;
begin writeln(same(true)); two; writeln(same(false)) end.
{- 217 test_gate_pas_a_variable_is_defined_once_per_variable_declaration_part__ok}
program dupctl(output);
type rec = record i: integer; j: integer end;
var i: integer; r: rec;
procedure p(i: integer);
var j: integer;
  procedure q;
  var i: integer;
  begin i := 7; writeln('nested ', i) end;
begin j := i * 2; writeln('param ', i, ' local ', j); q end;
procedure s;
var i, k: integer;
begin i := 3; k := 4; writeln('local ', i + k) end;
begin
  i := 1; r.i := 5; r.j := 6;
  p(i); s;
  writeln('global ', i, ' field ', r.i, ' ', r.j)
end.
{----- 218 test_gate_pas_a_variant_case_constant_is_a_value_of_its_tag_type__ok}
program varctl(output);
type color = (red, green, blue, gray); warm = red..green;
     shape = record
               n: integer;
               case k: color of
                 red, gray: (i: integer);
                 green: (c: char);
                 blue: (b: boolean)
             end;
     flag = record case f: boolean of true: (x: integer); false: (y: char) end;
     part = record case w: warm of red: (p: integer); green: (q: integer) end;
     bare = record case color of red, green: (u: integer); blue, gray: (v: char) end;
var s: shape; t: flag; p: part; b: bare;
begin
  s.n := 1; s.k := green; s.c := 'z'; t.f := true; t.x := 5; p.w := green; p.q := 9; b.u := 4;
  writeln(s.n:1, ' ', ord(s.k):1, ' ', s.c, ' ', t.x:1, ' ', p.q:1, ' ', b.u:1)
end.
{- 219 test_gate_pas_a_variant_is_undefined_after_the_tag_field_changes_value__fbool}
program fbool(output);
var r: record case b: boolean of true: (i: integer); false: (c: char) end; c: char;
begin r.b := true; r.i := 1; r.b := false; writeln('before error'); c := r.c; writeln('after') end.
{- 220 test_gate_pas_a_variant_is_undefined_after_the_tag_field_changes_value__fenum}
program fenum(output);
type color = (red, green, blue);
var s: record n: integer; case k: color of red: (r: integer); green, blue: (g: char; h: char) end; x: char;
begin s.n := 1; s.k := green; s.g := 'a'; s.h := 'b'; writeln('ok'); s.k := red; s.r := 2; s.k := blue; x := s.h; writeln('after') end.
{- 221 test_gate_pas_a_variant_is_undefined_after_the_tag_field_changes_value__floop}
program floop(output);
var f: record case b: boolean of true: (i: integer); false: (c: char) end; x: integer; ch: char;
begin for x := 1 to 2 do begin f.b := (x = 1); if x = 1 then f.i := 4 else begin writeln('second'); ch := f.c end end end.
{- 222 test_gate_pas_a_variant_is_undefined_after_the_tag_field_changes_value__fproc}
program fproc(output);
procedure p;
var l: record case b: boolean of true: (i: integer); false: (c: char) end; q: integer;
begin l.b := true; l.i := 3; writeln('in'); l.b := false; q := ord(l.c); writeln(q:1) end;
begin p end.
{- 223 test_gate_pas_a_variant_is_undefined_after_the_tag_field_changes_value__tctl}
program tctl(output);
type color=(red,green,blue);
  shape=record n: integer; case k: color of red:(r:integer); green,blue:(g:char; h:char) end;
  flip=record case b: boolean of true:(i:integer); false:(c:char) end;
  pun=record case integer of 1:(i:integer); 2:(c:char) end;
var s, t: shape; f: flip; u: pun; x, y: integer; kk: color; ch: char;
procedure setit(var q: integer); begin q := 5 end;
function getit(var q: integer): integer; begin q := 6; getit := q end;
procedure p;
var l: flip;
begin l.b := true; l.i := 7; writeln(l.i); l.b := false; l.c := 'p'; writeln(l.c); l.b := true; l.i := 8; writeln(l.i) end;
begin
  s.n := 4; s.k := red; s.r := 10; writeln(s.r); s.k := green; s.g := 'a'; s.h := 'b'; writeln(s.g, s.h, s.n:2);
  t.n := 9; t.k := blue; t.g := 'z'; s.k := red; s.r := 3; writeln(t.g, s.r:2, t.n:2);
  f.b := true; f.i := 5; f.b := true; writeln(f.i);
  f.b := false; f.c := 'q'; f.b := false; writeln(f.c);
  u.i := 65; writeln(u.i);
  kk := green; s.k := kk; s.g := 'm'; writeln(s.g);
  for x := 1 to 3 do begin f.b := (x mod 2 = 1); if f.b then begin f.i := x; writeln(f.i) end else begin f.c := chr(64 + x); writeln(f.c) end end;
  p;
  f.b := true; setit(f.i); writeln(f.i); f.b := false; f.b := true; writeln(getit(f.i), f.i); read(f.i); writeln(f.i);
  s.k := red; s.r := 11; y := s.r + s.n; writeln(y)
end.
{- 224 test_gate_pas_a_variant_is_undefined_after_the_tag_field_changes_value__tmode}
{$mode objfpc}
program tmode;
var r: record case b: boolean of true: (i: integer); false: (c: char) end; c: char;
begin r.b := true; r.i := 1; r.b := false; c := r.c; writeln('done') end.
{- 225 test_gate_pas_a_variant_record_is_active_for_its_references_and_a_tag_allocated_variable_keeps_its_variants__ctl}
program ctl(output);
type a = record case b: boolean of true: (c: integer); false: (d: integer) end;
var v: a; w: a; e, f: ^a;
begin
  v.b := true; v.c := 7; writeln(v.c);
  v.b := false; v.d := 31; writeln(v.d);
  w.c := 11; writeln(w.c);
  new(e, true); e^.c := 5; e^.b := true; writeln(e^.c); dispose(e, true);
  new(f); f^.b := false; f^.d := 32; f^.b := true; f^.c := 9; writeln(f^.c); dispose(f)
end.
{- 226 test_gate_pas_a_variant_record_is_active_for_its_references_and_a_tag_allocated_variable_keeps_its_variants__disp0}
program disp0(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
begin
  writeln('before'); new(e, true); dispose(e); writeln('after')
end.
{- 227 test_gate_pas_a_variant_record_is_active_for_its_references_and_a_tag_allocated_variable_keeps_its_variants__dispk}
program dispk(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
begin
  writeln('before'); new(e, true); dispose(e, false); writeln('after')
end.
{- 228 test_gate_pas_a_variant_record_is_active_for_its_references_and_a_tag_allocated_variable_keeps_its_variants__dispn}
program dispn(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
begin
  writeln('before'); new(e); dispose(e, true); writeln('after')
end.
{- 229 test_gate_pas_a_variant_record_is_active_for_its_references_and_a_tag_allocated_variable_keeps_its_variants__dispnil}
program dispnil(output);
var a: ^integer;
begin
  writeln('before'); a := nil; dispose(a); writeln('after')
end.
{- 230 test_gate_pas_a_variant_record_is_active_for_its_references_and_a_tag_allocated_variable_keeps_its_variants__dispund}
program dispund(output);
var a: ^integer;
begin
  writeln('before'); dispose(a); writeln('after')
end.
{- 231 test_gate_pas_a_variant_record_is_active_for_its_references_and_a_tag_allocated_variable_keeps_its_variants__newtag}
program newtag(output);
type a = record case b: boolean of true: (c: integer); false: (d: char) end;
var e: ^a;
begin
  writeln('before'); new(e, true); e^.b := false; writeln('after')
end.
{- 232 test_gate_pas_a_variant_record_is_active_for_its_references_and_a_tag_allocated_variable_keeps_its_variants__vact}
program vact(output);
var a: record case val: boolean of true: (i: integer); false: (c: char) end;
begin
  writeln('before'); a.val := true; a.c := 'c'; writeln('after')
end.
{- 233 test_gate_pas_a_with_statement_evaluates_its_record_once_at_entry__tctl1}
program tctl1(output);
type rp = ^rec;
     rec = record n: integer; next: rp end;
var head, p: rp; a: array[1..3] of rec; i: integer;
begin
  new(head); head^.n := 1; new(head^.next); head^.next^.n := 2; head^.next^.next := nil;
  p := head;
  with p^ do begin p := next; writeln(n); n := 10; writeln(p^.n) end;
  writeln(head^.n, ' ', head^.next^.n);
  a[1].n := 7; a[2].n := 8; i := 1;
  with a[i] do begin i := 2; writeln(n); n := 5 end;
  writeln(a[1].n, ' ', a[2].n);
  p := head;
  with p^, next^ do begin p := nil; writeln(n) end;
  p := head;
  with p^ do begin p := nil; n := 99 end;
  writeln(head^.n)
end.
{- 234 test_gate_pas_a_with_statement_evaluates_its_record_once_at_entry__tctl2}
program tctl2(output);
type e = (ea, eb);
     sp = ^st;
     st = record case f: e of ea: (nx: sp); eb: (v: integer) end;
     attr = record t: sp; k: integer end;
var g: attr; q, r: sp;
begin
  new(q, ea); new(r, eb); q^.f := ea; r^.f := eb; q^.nx := r; r^.v := 42; g.t := q; g.k := 3;
  with g, g.t^ do begin t := nx; if nx = r then writeln('same') else writeln('different'); k := 4 end;
  writeln(g.k);
  if g.t = r then writeln('moved') else writeln('stayed')
end.
{-------- 235 test_gate_pas_a_word_symbol_is_never_defined_as_an_identifier__ok}
program wsctl(output);
type shade = (endpoint, dotted, format);
var nilcount, index, todo: integer; s: shade;
procedure setup(ofs: integer); begin nilcount := ofs; todo := ofs * 2 end;
begin
  setup(3); index := nilcount + todo; s := dotted;
  writeln('nilcount ', nilcount, ' todo ', todo, ' index ', index, ' shade ', ord(s))
end.
{- 236 test_gate_pas_a_write_reaches_a_routine_in_its_argument_list_after_the_arguments_before_it_have_been_written__woiso}
program woiso;
var n: integer; r: real;
function noisy(k: integer): integer;
begin
  write('<n', k, '>');
  noisy := k * 2
end;
begin
  n := 5; r := 2.5;
  writeln('a', noisy(1), 'b');
  writeln(n:4, ' ', noisy(2), ' ', r:8:3);
  writeln(r:6:2, noisy(3), noisy(4), n);
  write(noisy(5), 'x', noisy(6)); writeln;
  writeln(noisy(7))
end.
{- 237 test_gate_pas_a_write_reaches_a_routine_in_its_argument_list_after_the_arguments_before_it_have_been_written__woobj}
{$mode objfpc}
program woobj;
var n: integer; r: real; f: text; s: string;
function noisy(k: integer): integer;
begin
  write('<n', k, '>');
  noisy := k * 2
end;
function tag(s: string): string;
begin
  write('{', s, '}');
  tag := s
end;
begin
  n := 5; r := 2.5;
  writeln('a', noisy(1), 'b');
  writeln(n:4, ' ', tag('t'), ' ', r:8:3);
  writeln(tag('lead'));
  assign(f, 'wo.tmp'); rewrite(f);
  writeln(f, 'f', n:3, ' ', tag('inf'), ' ', noisy(6));
  close(f);
  reset(f); readln(f, s); writeln('read back: ', s); close(f)
end.
{- 238 test_gate_pas_an_anonymous_record_variable_borrows_no_declared_record_type__ra}
program ra(output);
type q = record c: char; n: integer end;
var r: record i: integer; j: integer end;
begin
  r.i := 5; r.j := 6; writeln(r.i, r.j)
end.
{- 239 test_gate_pas_an_anonymous_record_variable_borrows_no_declared_record_type__rm}
program rm(output);
type q = record c: char; n: integer end;
var r: record c: char; n: integer end; x: q;
begin
  r.c := 'a'; r.n := 7; x.c := 'b'; x.n := 8;
  writeln(r.c, r.n, x.c, x.n);
  with r do writeln(c, n)
end.
{- 240 test_gate_pas_an_anonymous_record_variable_borrows_no_declared_record_type__rp}
program rp(output);
type q = record c: char end; p = ^q;
var r: record i: integer end; v: p;
begin
  new(v); v^.c := 'z'; r.i := 5; writeln(r.i, v^.c)
end.
{- 241 test_gate_pas_an_anonymous_record_variable_borrows_no_declared_record_type__rw}
program rw(output);
type q = record c: char; n: integer end;
var r: record i: integer; j: integer end;
begin
  with r do begin i := 65; j := 66 end;
  with r do writeln(i, j)
end.
{--------- 242 test_gate_pas_an_arithmetic_or_transfer_function_has_a_value__ok}
program numctl(output);
var i: integer; r, z: real;
begin
  i := 46340; writeln(sqr(i):1, ' ', sqr(-i):1, ' ', sqr(2.5):4:2);
  z := 0.0; r := 2.0; writeln(sqrt(z):4:2, ' ', sqrt(r):8:5, ' ', ln(1.0):4:2, ' ', ln(0.5):8:5);
  r := -2147483647.9; writeln(trunc(r):1); r := 2147483647.4; writeln(round(r):1);
  r := -2.5; writeln(trunc(r):1, ' ', round(r):1); r := 2.5; writeln(trunc(r):1, ' ', round(r):1)
end.
{-------- 243 test_gate_pas_an_array_assigned_or_passed_by_value_is_a_copy__fwd}
program fwd(output);
type arr = array [1..3] of integer;
     item = record typ: integer end;
var a: arr; g: item;
procedure setv(var v: arr; x: integer); forward;
procedure keep(v: arr); forward;
function bump(var r: item): integer; forward;
procedure setv; begin v[1] := x end;
procedure keep; begin v[2] := 88; writeln('keep sees ', v[2]:1) end;
function bump; begin r.typ := r.typ + 1; bump := r.typ end;
begin
  a[1] := 1; a[2] := 2; a[3] := 3; g.typ := 4;
  setv(a, 42); writeln('after setv a1=', a[1]:1);
  keep(a); writeln('after keep a2=', a[2]:1);
  writeln('bump=', bump(g):1, ' g=', g.typ:1)
end.
{------- 244 test_gate_pas_an_array_assigned_or_passed_by_value_is_a_copy__recs}
program recs(output);
type cell = record k: integer; c: char end;
     cells = array [1..3] of cell;
var s, t: cells; i: integer;
begin
  for i := 1 to 3 do begin t[i].k := i * 10; t[i].c := chr(ord('a') + i) end;
  s := t; s[1].k := 9; s[2].c := 'z';
  writeln('t1=', t[1].k:1, ' t2=', t[2].c, ' s1=', s[1].k:1, ' s2=', s[2].c);
  t := s; t[3].k := 33; writeln('t1=', t[1].k:1, ' t2=', t[2].c, ' t3=', t[3].k:1, ' s3=', s[3].k:1)
end.
{------ 245 test_gate_pas_an_array_assigned_or_passed_by_value_is_a_copy__whole}
program whole(output);
type arr = array [1..3] of integer;
     mat = array [1..2, 1..2] of integer;
     alpha = packed array [1..4] of char;
     names = array [1..2] of alpha;
var a, b: arr; m, n: mat; x, y: names;
procedure byval(v: arr); begin v[1] := 99; writeln('byval sees ', v[1]:1) end;
procedure byref(var v: arr); begin v[2] := 77 end;
function sum(v: arr): integer; begin v[3] := 0; sum := v[1] + v[2] + v[3] end;
begin
  a[1] := 1; a[2] := 2; a[3] := 3;
  b := a; b[1] := 50; writeln('a1=', a[1]:1, ' b1=', b[1]:1);
  byval(a); writeln('after byval a1=', a[1]:1);
  byref(a); writeln('after byref a2=', a[2]:1);
  writeln('sum=', sum(a):1, ' a3=', a[3]:1);
  m[1, 1] := 1; m[2, 2] := 4; n := m; n[2, 2] := 9; writeln('m22=', m[2, 2]:1, ' n22=', n[2, 2]:1);
  x[1] := 'abcd'; y := x; y[1] := 'wxyz'; writeln('x1=', x[1], ' y1=', y[1])
end.
{- 246 test_gate_pas_an_array_element_is_not_fetched_by_a_builtin_looked_up_by_its_name__ctl}
program ctl(output);
type color = (red, green, blue);
     rec = record a: integer; b: char end;
     grid = array[1..3, 1..4] of integer; vec = array[1..6] of integer;
var i, j, n: integer; a: vec; neg: array[-3..3] of integer; flags: array[0..9] of boolean; hue: array[color] of integer; cs: array['a'..'e'] of integer;
    g: grid; rs: array[1..3] of rec; word: packed array[1..5] of char; en: array[1..3] of color;
procedure fill(var x: vec); var k: integer; begin for k := 1 to 6 do x[k] := k * 7 end;
function total(x: vec): integer; var k, s: integer; begin s := 0; for k := 1 to 6 do s := s + x[k]; x[1] := 0; total := s end;
begin
  for i := 1 to 6 do a[i] := i * i; n := 0; for i := 1 to 6 do n := n + a[i]; writeln(n);
  for i := -3 to 3 do neg[i] := i * 10; for i := -3 to 3 do write(neg[i], ' '); writeln;
  for i := 0 to 9 do flags[i] := odd(i); for i := 0 to 9 do write(flags[i], ' '); writeln;
  hue[red] := 100; hue[green] := 101; hue[blue] := 102; writeln(hue[red], ' ', hue[green], ' ', hue[blue]);
  cs['a'] := 1; cs['e'] := 5; writeln(cs['a'] + cs['e']);
  for i := 1 to 3 do for j := 1 to 4 do g[i, j] := i * 10 + j; writeln(g[2, 3], ' ', g[3, 4], ' ', g[1, 1]);
  for i := 1 to 3 do begin rs[i].a := i; rs[i].b := chr(ord('p') + i) end; writeln(rs[2].a, rs[3].b);
  fill(a); writeln(a[1], ' ', a[6]); writeln(total(a), ' ', a[1]);
  word := 'hello'; word[1] := 'J'; word[5] := 'y'; writeln(word, ' ', word[2]);
  en[1] := blue; en[2] := green; en[3] := red; writeln(ord(en[1]), ord(en[2]), ord(en[3]));
  a[a[1] div 7 + 1] := 99; writeln(a[2], ' ', a[a[2] - 94])
end.
{- 247 test_gate_pas_an_array_element_is_one_guarded_load_or_store_in_the_emitted_code__ctl}
program ctl(output);
type color = (red, green, blue);
     rec = record a: integer; b: char end;
var i, j, n: integer; a: array[1..6] of integer; neg: array[-3..3] of integer; flags: array[0..9] of boolean; hue: array[color] of integer; cs: array['a'..'e'] of integer;
    g: array[1..3, 1..4] of integer; rs: array[1..3] of rec; r: array[1..4] of real; sets: array[1..3] of set of 0..9; word: packed array[1..5] of char; chars: array[1..4] of char; big: array[1..200] of integer;
function twice(x: integer): integer; begin twice := x * 2 end;
begin
  for i := 1 to 6 do a[i] := i * i; n := 0; for i := 1 to 6 do n := n + a[i]; writeln(n);
  for i := -3 to 3 do neg[i] := i * 10; for i := -3 to 3 do write(neg[i], ' '); writeln;
  for i := 0 to 9 do flags[i] := odd(i); for i := 0 to 9 do write(flags[i], ' '); writeln;
  hue[red] := 100; hue[green] := 101; hue[blue] := 102; writeln(hue[red] + hue[blue]);
  cs['a'] := 1; cs['e'] := 5; writeln(cs['a'] + cs['e']);
  for i := 1 to 3 do for j := 1 to 4 do g[i, j] := i * 10 + j; writeln(g[2, 3], ' ', g[3, 4], ' ', g[1, 1]);
  for i := 1 to 3 do begin rs[i].a := i; rs[i].b := chr(ord('p') + i) end; writeln(rs[2].a, rs[3].b);
  for i := 1 to 4 do r[i] := i / 4; writeln(r[1]:0:2, ' ', r[4]:0:2);
  for i := 1 to 3 do sets[i] := [i, i + 3]; writeln(5 in sets[2], ' ', 2 in sets[2]);
  word := 'hello'; word[1] := 'J'; word[5] := 'y'; writeln(word, ' ', word[2]);
  for i := 1 to 4 do chars[i] := chr(ord('a') + i); writeln(chars[1], chars[4]);
  for i := 1 to 200 do big[i] := twice(i); n := 0; for i := 1 to 200 do n := n + big[twice(i) div 2]; writeln(n);
  a[a[1] + 1] := 99; writeln(a[2], ' ', a[a[2] - 94])
end.
{- 248 test_gate_pas_an_array_element_is_one_guarded_load_or_store_in_the_emitted_code__oorr}
program oorr(output);
var a: array[1..4] of integer; x: integer;
begin a[1] := 1; writeln('before'); x := a[9]; writeln('after') end.
{- 249 test_gate_pas_an_array_element_is_one_guarded_load_or_store_in_the_emitted_code__oorw}
program oorw(output);
var a: array[1..4] of integer;
begin a[1] := 1; writeln('before'); a[0] := 5; writeln('after') end.
{- 250 test_gate_pas_an_array_field_of_a_record_component_is_indexed_as_its_type__arrrec}
program arrrec(output);
type inner = record a : array[1..3] of integer; n : integer end;
var v : array[1..2] of inner; i, j : integer;
begin for j := 1 to 2 do begin v[j].n := j; for i := 1 to 3 do v[j].a[i] := j * 100 + i end;
  for j := 1 to 2 do writeln(v[j].n, v[j].a[1], v[j].a[3]) end.
{- 251 test_gate_pas_an_array_field_of_a_record_component_is_indexed_as_its_type__nest}
program nest(output);
type inner = record a : array[1..3] of integer; n : integer end;
     outer = record k : integer; in1 : inner end;
var o : outer; i : integer;
begin o.k := 7; o.in1.n := 3; for i := 1 to 3 do o.in1.a[i] := i * 10; writeln(o.k, o.in1.n, o.in1.a[1], o.in1.a[3]) end.
{- 252 test_gate_pas_an_array_field_of_a_record_component_is_indexed_as_its_type__nestptr}
program nestptr(output);
type inner = record a : array[1..3] of integer; n : integer end;
     outer = record k : integer; in1 : inner end;
     po = ^outer;
var p : po; i : integer;
begin new(p); p^.k := 7; p^.in1.n := 3; for i := 1 to 3 do p^.in1.a[i] := i * 10;
  writeln(p^.k, p^.in1.n, p^.in1.a[1], p^.in1.a[2], p^.in1.a[3]) end.
{--------------- 253 test_gate_pas_an_array_keeps_its_declared_low_bound__below}
program below(output);
var f: array [5..9] of integer; i: integer;
begin f[5] := 1; writeln(f[5]:1, ' ', low(f):1); i := 4; f[i] := 2; writeln('after') end.
{------------------ 254 test_gate_pas_an_array_keeps_its_declared_low_bound__lb}
program lb(output);
type idx = 3..7; negt = array [-3..3] of integer; small = 1..5;
var n: array [-2..2] of integer; f: array [5..9] of integer; g: array [idx] of integer; t: negt;
    e: array [0..9] of small; c: array ['c'..'f'] of integer; s: array [smallint] of integer; i: integer; ch: char;
procedure loc;
var q: array [-4..1] of integer; k: integer;
begin
  for k := low(q) to high(q) do q[k] := k * k;
  for k := -4 to 1 do write(q[k]:3); writeln(' loc ', low(q):1, ' ', high(q):1)
end;
begin
  for i := -2 to 2 do n[i] := i * 10;
  for i := low(n) to high(n) do write(n[i]:4); writeln(' n ', low(n):1, ' ', high(n):1);
  for i := low(f) to high(f) do f[i] := i; for i := 5 to 9 do write(f[i]:2); writeln(' f ', low(f):1, ' ', high(f):1);
  for i := low(g) to high(g) do g[i] := -i; for i := 3 to 7 do write(g[i]:3); writeln(' g ', low(g):1, ' ', high(g):1);
  for i := -3 to 3 do t[i] := i + 100; for i := low(t) to high(t) do write(t[i]:4); writeln(' t ', low(t):1, ' ', high(t):1);
  for i := 0 to 9 do e[i] := i mod 5 + 1; for i := low(e) to high(e) do write(e[i]:2); writeln(' e ', low(e):1, ' ', high(e):1);
  for ch := 'c' to 'f' do c[ch] := ord(ch); writeln(c['c']:4, c['f']:4, ' c ', ord(low(c)):1, ' ', ord(high(c)):1);
  s[-32768] := 7; s[0] := 8; s[32767] := 9; writeln(s[-32768]:2, s[0]:2, s[32767]:2, ' s ', low(s):1, ' ', high(s):1);
  loc
end.
{- 255 test_gate_pas_an_array_of_arrays_holds_each_row_as_an_array_and_copies_a_row_as_fpc_does__copies}
program copies(output);
type row = array [1..3] of integer;
var r, s: row; nest: array [0..1] of row; a2: array [0..1] of array [1..3] of integer; hi: array [1..2] of array [5..6] of real; i: integer;
begin
  r[1] := 1; r[2] := 2; r[3] := 3; s := r; s[1] := 50; writeln(r[1], s[1]);
  nest[0][1] := 7; nest[1] := nest[0]; nest[1][1] := 8; writeln(nest[0][1], nest[1][1]);
  s := nest[0]; s[1] := 60; writeln(nest[0][1], s[1]);
  nest[0] := s; s[1] := 70; writeln(nest[0][1], s[1]);
  a2[0][2] := 4; a2[1, 2] := 5; a2[1][3] := 6; a2[0] := a2[1]; a2[1][2] := 0; writeln(a2[0, 2], a2[1][2], a2[0][3]);
  for i := 1 to 2 do begin hi[i][5] := i / 4; hi[i, 6] := i * 1.5 end; writeln(hi[2][5]:0:2, hi[1, 6]:0:2)
end.
{- 256 test_gate_pas_an_array_of_arrays_holds_each_row_as_an_array_and_copies_a_row_as_fpc_does__kinds}
program kinds(output);
type crow = array [0..2] of char; brow = array [1..2] of boolean;
var m: array [1..2] of crow; b: array [0..1] of array [1..2] of boolean; c: array [1..2] of brow; i: integer;
begin
  for i := 0 to 2 do begin m[1][i] := chr(97 + i); m[2, i] := chr(65 + i) end; m[2] := m[1]; m[1][0] := 'z'; writeln(m[1][0], m[2][0], m[2, 2]);
  b[0][1] := true; b[1, 2] := false; c[2][1] := 3 > 2; c[1] := c[2]; writeln(b[0][1], b[1, 2], c[1][1], not c[2, 1]);
  if b[0, 1] and c[1][1] then writeln('both')
end.
{- 257 test_gate_pas_an_array_of_arrays_holds_each_row_as_an_array_and_copies_a_row_as_fpc_does__rows}
program rows(output);
type row = array [1..3] of integer; grid = array [0..2] of row;
var nest: array [0..1] of row; g: grid; r, s: row; i, j: integer;
procedure bump(var x: row); begin x[3] := x[3] + 100 end;
function sum(x: row): integer; var k, t: integer; begin t := 0; for k := 1 to 3 do t := t + x[k]; x[1] := -5; sum := t end;
begin
  for i := 0 to 1 do for j := 1 to 3 do nest[i][j] := i * 10 + j;
  r[1] := 5; r[2] := 6; r[3] := 7; nest[0] := r; r[1] := 99; writeln(nest[0][1], nest[0, 2], r[1]);
  s := nest[1]; s[2] := -1; writeln(nest[1][2], s[2]);
  bump(nest[1]); writeln(nest[1][3], sum(nest[1]), nest[1][1]);
  for i := 0 to 2 do for j := 1 to 3 do g[i, j] := i + j; writeln(g[2][3], g[0][1], g[1, 2])
end.
{- 258 test_gate_pas_an_array_of_arrays_holds_each_row_as_an_array_and_copies_a_row_as_fpc_does__tconst}
program tconst(output);
const nest: array [0..1] of array [1..2] of integer = ((1, 2), (3, 4)); m: array [1..2] of array ['a'..'c'] of char = (('x', 'y', 'z'), ('p', 'q', 'r'));
var i: integer;
begin for i := 0 to 1 do write(nest[i][1], nest[i, 2]); writeln(' ', m[2]['b'], m[1, 'c']) end.
{- 259 test_gate_pas_an_array_of_records_held_as_a_record_field_compiles_and_runs__fldarr}
program fldarr(output);
type inner = record a : array[1..3] of integer; n : integer end;
     outer = record k : integer; arr : array[1..2] of inner end;
var o : outer; i, j : integer;
begin for j := 1 to 2 do begin o.arr[j].n := j; for i := 1 to 3 do o.arr[j].a[i] := j * 100 + i end;
  for j := 1 to 2 do writeln(o.arr[j].n, o.arr[j].a[1], o.arr[j].a[3]) end.
{- 260 test_gate_pas_an_array_of_records_held_as_a_record_field_compiles_and_runs__fldarrptr}
program fldarrptr(output);
type inner = record a : array[1..3] of integer; n : integer end;
     outer = record k : integer; arr : array[1..2] of inner end;
     po = ^outer;
var p : po; i, j : integer;
begin new(p); p^.k := 9; for j := 1 to 2 do begin p^.arr[j].n := j; for i := 1 to 3 do p^.arr[j].a[i] := j * 100 + i end;
  for j := 1 to 2 do writeln(p^.k, p^.arr[j].n, p^.arr[j].a[1], p^.arr[j].a[2], p^.arr[j].a[3]) end.
{- 261 test_gate_pas_an_fpc_dialect_case_with_no_matching_constant_does_nothing__objcase}
program objcase;
{$mode objfpc}
type colour = (red, green, blue);
var k: colour; t: integer;
begin
  t := 0;
  for k := red to blue do case k of green: t := t + 5 end;
  case t of 1..4: writeln('low') end;
  writeln(t)
end.
{- 262 test_gate_pas_an_identifier_is_defined_before_it_is_used_in_its_block__u15}
program u15(output);
const one = 1;
procedure x;
const two = one;
      one = 2;
begin
  writeln(one, two)
end;
begin
  writeln(one)
end.
{- 263 test_gate_pas_an_identifier_is_defined_before_it_is_used_in_its_block__u17}
program u17(output);
const one = 1;
procedure x;
const one = one;
begin
  write(one)
end;
begin
  writeln(one)
end.
{- 264 test_gate_pas_an_identifier_is_defined_before_it_is_used_in_its_block__ufld}
program ufld(output);
const n = 3;
procedure p;
const k = n;
type r = record n: integer end;
var x: r;
begin
  x.n := k + 1; writeln(x.n, k)
end;
begin
  p
end.
{- 265 test_gate_pas_an_identifier_is_defined_before_it_is_used_in_its_block__uptr}
program uptr(output);
type t = integer;
procedure p;
type pp = ^t; t = record a: integer end;
var v: pp;
begin
  new(v); v^.a := 7; writeln(v^.a)
end;
begin
  p
end.
{- 266 test_gate_pas_an_identifier_is_defined_before_it_is_used_in_its_block__utyp}
program utyp(output);
type t = integer;
procedure p;
type u = t;
     t = char;
var x: u;
begin
  x := 1; writeln(x)
end;
begin
  p
end.
{--------- 267 test_gate_pas_an_if_while_or_until_condition_must_be_boolean__ok}
program boolctl(output);
type flag = boolean; color = (red, green);
var f: flag; b: boolean; n: integer;
function ready: boolean; begin ready := n < 3 end;
procedure p; var b: color; begin b := green; if b = green then writeln('local enum compared') end;
begin
  f := true; b := false; n := 0;
  if f then writeln('alias true');
  if b then writeln('never') else writeln('plain false');
  while ready do n := n + 1;
  repeat n := n - 1 until not ready or (n < 0);
  if ready then writeln('ready ', n);
  p;
  if b then writeln('never') else writeln('global still boolean')
end.
{------- 268 test_gate_pas_an_index_outside_its_type_is_a_diagnosed_error__bool}
program bool(output);
var a: array [1..3] of boolean; i: integer;
begin a[1] := true; writeln(ord(a[1]):1); i := 4; a[i] := true; writeln('after') end.
{-------- 269 test_gate_pas_an_index_outside_its_type_is_a_diagnosed_error__chr}
program chr(output);
var a: array ['a'..'c'] of integer; c: char;
begin a['b'] := 2; writeln(a['b']:1); c := 'd'; a[c] := 1; writeln('after') end.
{-------- 270 test_gate_pas_an_index_outside_its_type_is_a_diagnosed_error__ctl}
program ctl(output);
type r = record x, y: integer end;
var a: array [1..10] of integer; z: array [0..9] of integer; c: array ['a'..'c'] of integer;
    q: array [1..3] of r; b: array [1..3] of boolean; i: integer; ch: char;
begin
  for i := 1 to 10 do a[i] := i * i; for i := 0 to 9 do z[i] := a[i + 1] - i; for ch := 'a' to 'c' do c[ch] := ord(ch);
  for i := 1 to 3 do begin q[i].x := i; q[i].y := -i; b[i] := odd(i) end;
  for i := 1 to 10 do write(a[i]:4); writeln; for i := 0 to 9 do write(z[i]:4); writeln;
  writeln(c['a']:4, c['c']:4, q[2].x:4, q[3].y:4, ord(b[1]):2, ord(b[2]):2)
end.
{------ 271 test_gate_pas_an_index_outside_its_type_is_a_diagnosed_error__read1}
program read1(output);
var a: array [1..10] of integer; i: integer;
begin for i := 1 to 10 do a[i] := i; writeln('before'); i := 11; writeln(a[i]); writeln('after') end.
{-------- 272 test_gate_pas_an_index_outside_its_type_is_a_diagnosed_error__rec}
program rec(output);
type r = record x, y: integer end;
var a: array [1..3] of r; i: integer;
begin a[3].x := 5; writeln(a[3].x:1); i := 4; a[i].x := 1; writeln('after') end.
{------- 273 test_gate_pas_an_index_outside_its_type_is_a_diagnosed_error__zero}
program zero(output);
var a: array [0..9] of integer; i: integer;
begin writeln('z'); i := 10; a[i] := 1; writeln('after') end.
{- 274 test_gate_pas_an_iso_call_to_an_fpc_system_routine_is_refused_at_compile_time__isoown}
program isoown(output);
var i: integer;
function random(n: integer): integer; begin random := n * 3 + 1 end;
procedure randomize; begin writeln('seeded') end;
begin randomize; i := random(4); writeln(i, ' ', random(0))  end.
{- 275 test_gate_pas_an_iso_call_to_an_fpc_system_routine_is_refused_at_compile_time__isorandcall}
program isorandcall(output);
var i: integer;
begin i := random(5); writeln(i >= 0) end.
{- 276 test_gate_pas_an_iso_call_to_an_fpc_system_routine_is_refused_at_compile_time__isorandomize}
program isorandomize(output);
begin randomize; writeln(1) end.
{----------------- 277 test_gate_pas_an_ordinal_function_never_takes_a_real__ok}
program ordfn(output);
type color = (red, green, blue); number = real;
var r, i, j: integer; c, d, e: char; k: color; b: boolean; x: number;
procedure local;
var q: real;
begin q := 2.5; writeln('local real ', q:4:1, ' ', trunc(q):1, ' ', round(q):1) end;
begin
  r := 41; c := 'b'; k := green; b := false; x := 1.5;
  local;
  i := succ(r); j := pred(r); d := succ(c); e := pred(c);
  writeln(i:1, ' ', j:1, ' ', ord(c):1, ' ', d, ' ', e);
  i := ord(succ(k)); j := ord(pred(k)); writeln(ord(k):1, ' ', i:1, ' ', j:1, ' ', ord(b):1);
  i := trunc(x); d := chr(i + 64); j := succ(trunc(x)); writeln(d, ' ', i:1, ' ', j:1)
end.
{---------- 278 test_gate_pas_an_ordinal_function_result_exists_in_its_type__ok}
program ordrange(output);
type color = (red, green, blue); shade = red..green;
var i, n: integer; c, d: char; k: color; b: boolean; s: shade;
begin
  i := maxint - 1; i := succ(i); n := -maxint + 1; n := pred(n);
  writeln(i:1, ' ', n:1);
  k := red; while k <> blue do k := succ(k); writeln(ord(k):1);
  k := blue; while k <> red do k := pred(k); writeln(ord(k):1);
  c := 'a'; d := succ(c); c := 'z'; c := pred(c); writeln(c, d);
  b := false; b := succ(b); writeln(b);
  s := red; k := succ(s); writeln(ord(k):1);
  n := 0; for i := 32 to 126 do if chr(i) = 'A' then n := i; writeln(n:1, ' ', chr(n + 1))
end.
{- 279 test_gate_pas_an_unassigned_header_file_binds_to_stdio_only_under_iso_mode__hdrargs}
program hdrargs(input, output, prd, prr);
var prd, prr: text; c: char;
begin
  rewrite(prr);
  writeln(prr, 'to prr');
  writeln('to output');
  reset(prd);
  while not eof(prd) do begin read(prd, c); write(c) end;
  writeln('done')
end.
{- 280 test_gate_pas_an_unassigned_header_file_binds_to_stdio_only_under_iso_mode__hdrstdio}
{$mode iso}
program hdrstdio(input, output, extra);
var
  extra : text;
begin
  rewrite(extra);
  writeln(extra, 'to stdout');
  close(extra);
  assign(extra, 'hdrstdio_extra.name.that.is.never.created');
  reset(extra);
  writeln('unreachable')
end.
{--------------- 281 test_gate_pas_an_unnamed_file_leaves_no_tmp_entry__unnamed}
program unnamed;
var g: file of integer; n: integer;
begin
  rewrite(g);
  write(g, 42);
  reset(g);
  read(g, n);
  writeln(n:1);
end.
{- 282 test_gate_pas_an_unsigned_byte_word_or_longword_variable_wraps_on_assignment__unsignedwrap}
program unsignedwrap;
{$mode objfpc}
type tsmall = byte;
var t1: tsmall; b: byte; w: word; l: longword; c: cardinal; u8: uint8; u16: uint16; u32: uint32; i: integer; q: qword;
function Mix(x: longword): longword;
begin
  x := x * 2654435761;
  x := x xor (x shr 15);
  Mix := x + 12345
end;
function Pop32(n: uint32): uint32;
begin
  n := n - ((n shr 1) and $55555555);
  n := (n and $33333333) + ((n shr 2) and $33333333);
  n := (n + (n shr 4)) and $0F0F0F0F;
  n := (n * $01010101) shr 24;
  Pop32 := n
end;
procedure Step(var s: uint32);
begin
  s := s * 1664525 + 1013904223
end;
begin
  b := 250; b := b + 10; w := 65530; w := w + 10; l := 4294967290; l := l + 10; c := 0; c := c - 1;
  u8 := 255; inc(u8); u16 := 0; dec(u16); u32 := 4000000000; u32 := u32 * 2;
  writeln(b, ' ', w, ' ', l, ' ', c, ' ', u8, ' ', u16, ' ', u32);
  writeln(Mix(123456789), ' ', Mix(4294967295));
  u32 := 1; for i := 1 to 5 do Step(u32); writeln(u32);
  l := 3000000000; l := l + l; writeln(l, ' ', l shr 1);
  t1 := 200; t1 := t1 + 100; writeln(t1, ' ', Pop32(4294967295), ' ', Pop32(255 + 256))
end.
{-------------- 283 test_gate_pas_and_or_short_circuit_as_the_oracle_does__idxg}
program idxg(output);
var i: integer; a: array [1..10] of char;
begin
  i := 11;
  writeln('The result is: ', (i = 1) and (a[i] = 'g'));
  writeln('or: ', (i = 11) or (a[i] = 'g'))
end.
{-------------- 284 test_gate_pas_and_or_short_circuit_as_the_oracle_does__nilg}
program nilg(output);
type p = ^r; r = record v: integer; next: p end;
var x: r;
begin
  x.v := 6; x.next := nil;
  if (x.v = 10) or ((x.v = 5) and (x.next^.v = 5)) then writeln('OK');
  writeln((x.next <> nil) and (x.next^.v = 1))
end.
{-------------- 285 test_gate_pas_and_or_short_circuit_as_the_oracle_does__side}
program side(output);
var i, calls: integer; a: array [1..5] of integer; r: boolean;
function f(x: integer): boolean;
begin calls := calls + 1; writeln('f', x); f := x > 2 end;
function g(n: integer): boolean;
var loc: boolean;
begin
  loc := (n > 0) and g(n - 1) or (n = 0);
  g := loc and ((n < 100) or f(n))
end;
procedure p;
var u: boolean;
begin
  u := f(1) and f(7); writeln(u); u := f(8) or f(9); writeln(u);
  if not (f(0) or f(1)) then writeln('neither') ; writeln((calls > 0) and f(3))
end;
begin
  calls := 0;
  for i := 1 to 5 do a[i] := i * i;
  if f(1) and f(2) then writeln('both') else writeln('not both');
  if f(3) or f(4) then writeln('either') else writeln('neither');
  r := f(5) and f(0); writeln(r);
  r := f(0) or f(6); writeln(r);
  i := 6;
  while (i > 1) and (a[i - 1] > 4) do i := i - 1;
  writeln(i);
  i := 0;
  if (i >= 1) and (a[i] = 1) then writeln('bad') else writeln('guarded');
  writeln(g(4), calls);
  p;
  writeln((calls = 99) and f(9), calls)
end.
{---------- 286 test_gate_pas_array_field_elements_keep_their_declared_width__a}
program w(output);
type
  inner = record
    lo: integer;
    hi: integer
  end;
  link = ^node;
  node = record
    ints: array [1..6] of integer;
    reals: array [1..3] of real;
    tag: packed array [1..4] of char;
    sub: inner;
    next: link
  end;
var
  p, q: link;
  i, s: integer;
  t: real;
begin
  new(p);
  for i := 1 to 6 do p^.ints[i] := i * 300;
  p^.reals[1] := 1.5;
  p^.reals[2] := -2.25;
  p^.reals[3] := 1000.125;
  p^.tag := 'abcd';
  p^.sub.lo := 4000;
  p^.sub.hi := -70000;
  p^.next := nil;
  s := 0;
  for i := 1 to 6 do s := s + p^.ints[i];
  write('ints');
  for i := 1 to 6 do write(' ', p^.ints[i]:1);
  writeln(' sum ', s:1);
  t := p^.reals[1] + p^.reals[2] + p^.reals[3];
  writeln('reals ', p^.reals[1]:8:3, p^.reals[2]:8:3, p^.reals[3]:10:3, ' sum ', t:10:3);
  writeln('tag ', p^.tag, ' sub ', p^.sub.lo:1, ' ', p^.sub.hi:1);
  new(q);
  for i := 1 to 6 do q^.ints[i] := 7 - i;
  q^.sub.lo := 1;
  q^.sub.hi := 2;
  q^.next := p;
  write('second');
  for i := 1 to 6 do write(' ', q^.ints[i]:1);
  writeln(' first-again ', q^.next^.ints[6]:1, ' ', q^.next^.sub.hi:1)
end.
{---------------- 287 test_gate_pas_boolean_write_iso_mod_and_forward_params__g}
program g;
type flag = boolean;
var b: boolean; f: flag; i: integer;
function isbig(n: integer): boolean; forward;
procedure announce(n: integer; var k: integer); forward;
function isbig;
begin isbig := n > 100 end;
procedure announce;
begin writeln('n=', n); k := n + 1 end;
begin
  b := true; f := false; i := -7;
  writeln(b); writeln(f); writeln(true); writeln(false);
  writeln(b:8); writeln(b:1); writeln(b:0); write(b); writeln('|');
  writeln(i > 2); writeln(odd(i) and b); writeln(not b); writeln(isbig(101)); writeln(isbig(1) or b);
  writeln(i mod 2); writeln(i mod 3); writeln(-8 mod 3); writeln(8 mod 3); writeln(7 mod 2);
  announce(42, i); writeln(i)
end.
{---------- 288 test_gate_pas_bounds_fold_calls_and_fpc_integer_types__isobound}
program isobound(output);
type
  tRegion1 = 0..63 - 2 * SizeOf(byte);
  tSmall = Ord('a')..Ord('e');
  tWide = 1..SizeOf(longint) * 2;
var r: tRegion1; a: array [tSmall] of integer; i: integer; w: array [tWide] of char;
begin
  r := high(tRegion1); writeln(r, ' ', low(tSmall), ' ', high(tSmall), ' ', high(tWide));
  for i := low(a) to high(a) do a[i] := i; writeln(a[Ord('c')]);
  writeln(sizeof(w))
end.
{----------- 289 test_gate_pas_bounds_fold_calls_and_fpc_integer_types__isoints}
program isoints(output);
type tRow = array [5..9] of int64;
var n: uint64; k: nativeint; s: sizeint; p: ptrint; r: tRow; c: array ['a'..'f'] of byte; i: integer;
begin
  n := High(Uint64) div 8; k := High(int32) - 1; s := SizeOf(uint16) + SizeOf(r); p := Low(int8);
  for i := Low(r) to High(r) do r[i] := i * 1000000000;
  writeln(n, ' ', k, ' ', s, ' ', p, ' ', Length(r), ' ', Length(c), ' ', r[9] + r[5], ' ', High(uint8) + High(int16))
end.
{---------- 290 test_gate_pas_bounds_fold_calls_and_fpc_integer_types__objbound}
program objbound;
{$mode objfpc}
type
  colour = (red, green, blue, cyan);
  tByteHalf = 0..High(byte) div 2;
  tFromEnum = Ord(green)..Ord(High(colour)) * 3;
  tPairs = Pred(4)..Succ(9) + Abs(-2);
  tC = Low(colour)..Pred(cyan);
var x: tByteHalf; y: tFromEnum; z: tPairs; c: tC; w: array [Low(tPairs)..High(tPairs)] of integer;
begin
  x := High(tByteHalf); y := Low(tFromEnum); z := High(tPairs); c := High(tC);
  writeln(x, ' ', y, ' ', High(tFromEnum), ' ', Low(tPairs), ' ', z, ' ', Ord(c), ' ', Length(w), ' ', SizeOf(w) div SizeOf(integer))
end.
{------------ 291 test_gate_pas_bounds_fold_calls_and_fpc_integer_types__objlen}
program objlen;
{$mode objfpc}
var w: array [3..12] of integer;
begin writeln(Length(w), ' ', Low(w), ' ', High(w)) end.
{- 292 test_gate_pas_bytebool_wordbool_longbool_store_the_oracles_all_bits_value__conv}
program conv(output);
var bb: bytebool; wb: wordbool; lb: longbool;
begin
  bb := true; writeln(byte(bb)); writeln(word(bb)); writeln(longint(bb)); writeln(int64(bb));
  bb := false; writeln(byte(bb)); writeln(word(bb)); writeln(longint(bb)); writeln(int64(bb));
  wb := true; writeln(byte(wb)); writeln(word(wb)); writeln(longint(wb)); writeln(int64(wb));
  wb := false; writeln(byte(wb)); writeln(word(wb));
  lb := true; writeln(byte(lb)); writeln(word(lb)); writeln(longint(lb)); writeln(int64(lb));
  lb := false; writeln(longint(lb))
end.
{- 293 test_gate_pas_bytebool_wordbool_longbool_store_the_oracles_all_bits_value__mix}
program mix(output);
var b: boolean; bb: bytebool; wb: wordbool; lb: longbool;
begin
  wb := true; b := wb; writeln(b);
  wb := false; b := wb; writeln(b);
  lb := true; bb := lb; writeln(bb); writeln(byte(bb));
  b := false; lb := b; writeln(lb); writeln(longint(lb));
  wb := true; writeln(wb); writeln(not wb);
  wb := false; writeln(wb); writeln(not wb)
end.
{- 294 test_gate_pas_bytebool_wordbool_longbool_store_the_oracles_all_bits_value__plain}
program plain(output);
var a, c: integer; tb: byte; tw: word;
begin
  a := 1; c := 2; tb := byte(a < c); writeln(tb); tw := word(a > c); writeln(tw);
  tb := byte(a = a); writeln(tb)
end.
{---------------------- 295 test_gate_pas_calls_carry_more_than_six_operands__g}
program g;
var s: set of 1..20; y, x, z: real;
begin
  s := [1, 3, 5, 7, 9, 11, 13];
  if 13 in s then writeln('13 in') else writeln('13 out');
  if 11 in s then writeln('11 in') else writeln('11 out');
  writeln(1.5:1:1, 2.5:1:1, 3.5:1:1, 4.5:1:1);
  y := 1.0; x := 2.0; z := 3.0; write(y:1:1, x:1:1, z:1:1); writeln;
  writeln(1, ' ', 2, ' ', 3, ' ', 4);
  writeln(1, ' ', 2, ' ', 3, ' ', 4, ' ', 5)
end.
{- 296 test_gate_pas_char_ansichar_and_widechar_typecasts_in_the_fpc_dialects__chartype}
program chartype;
{$mode objfpc}
var i: integer; c: char; s: string;
begin i := 66; c := AnsiChar(i); s := 'x' + AnsiChar(67) + Char(68); writeln(c, s, ord(AnsiChar(70)), WideChar(71)) end.
{- 297 test_gate_pas_conditional_compilation_and_initialized_vars_answer_as_fpc__cif}
program cif(output);
const version = 3; flt = 2.5;
begin
{$if FPC_FULLVERSION >= 30200} writeln('a yes'); {$else} writeln('a no'); {$endif}
{$if fpc_version = 3} writeln('b yes'); {$else} writeln('b no'); {$endif}
{$if defined(fpc) and not defined(windows)} writeln('c yes'); {$else} writeln('c no'); {$endif}
{$if version >= 2} writeln('d yes'); {$else} writeln('d no'); {$endif}
{$if declared(flt)} writeln('e yes'); {$else} writeln('e no'); {$endif}
{$if not defined(fpc) or (fpc_fullversion < 20600)} writeln('f yes'); {$else} writeln('f no'); {$endif}
{$ifdef fpc}{$ifndef unix} writeln('g1'); {$else} writeln('g2'); {$endif}{$else} writeln('g3'); {$endif}
{$define mine}{$ifdef MINE} writeln('h yes'); {$endif}{$undef mine}{$ifdef mine} writeln('h bad'); {$endif}
{$if defined(cpu64) or defined(cpu32)} writeln('i yes'); {$elseif defined(cpu16)} writeln('i16'); {$else} writeln('i no'); {$endif}
{$ifdef fpc_iso} writeln('j iso'); {$endif}
{$macro on}{$define flt2 := 1e+2}{$if flt2 < 99} writeln('k bad'); {$else} writeln('k yes'); {$endif}
end.
{- 298 test_gate_pas_conditional_compilation_and_initialized_vars_answer_as_fpc__iv}
program iv(output);
var g: integer = 7;
procedure p;
var x: integer = 5;
begin x := x + 1; write(x, ' ') end;
begin p; p; writeln(g)
end.
{- 299 test_gate_pas_conditional_compilation_and_initialized_vars_answer_as_fpc__mac}
{$mode macpas}
program mac;
{$setc ADAM := TRUE}
{$setc BERTIL := FALSE}
{$J-}
{$push}
{$J+}
{$pop}
begin
{$ifc ADAM <> TRUE} writeln('a bad'); {$elsec} writeln('a ok'); {$endc}
{$ifc BERTIL = FALSE} writeln('b ok'); {$elsec} writeln('b bad'); {$endc}
{$ifc undefined FPC_MACPAS} writeln('c bad'); {$elsec} writeln('c ok'); {$endc}
{$ifc option(J)} writeln('d bad'); {$elsec} writeln('d ok'); {$endc}
end.
{- 300 test_gate_pas_conditional_compilation_and_initialized_vars_answer_as_fpc__objm}
{$mode objfpc}
program objm;
begin
{$ifdef fpc_objfpc} writeln('objfpc'); {$endif}
{$ifdef fpc_iso} writeln('iso'); {$else} writeln('not iso'); {$endif}
end.
{- 301 test_gate_pas_conditional_compilation_and_initialized_vars_answer_as_fpc__u1}
program u1(output);
type r = record a: integer end;
{$if sizeof(r) <> 4}
{$message fatal 'size'}
{$endif}
begin writeln(1) end.
{- 302 test_gate_pas_conditional_compilation_and_initialized_vars_answer_as_fpc__w1}
program p(output);
{$ifdef fpc} var k: integer = 7; {$else} var k: integer; {$endif}
begin {$ifdef fpc} writeln('fpc ', k) {$else} k := 0; writeln(k) {$endif} end.
{------------------------- 303 test_gate_pas_declared_locals_get_frame_slots__g}
program declaredlocals;
var sy: integer;
procedure block;
var test: boolean; n: integer; c: char;
  procedure typ;
    procedure fieldlist;
    begin test := sy = 7; n := n + 5; c := 'q' end;
  begin fieldlist end;
  procedure report;
  begin if test then writeln('yes ', n, ' ', c) else writeln('no ', n, ' ', c) end;
begin n := 0; sy := 7; typ; report; sy := 8; typ; report end;
begin block end.
{- 304 test_gate_pas_dispose_of_a_pointer_whose_pointee_a_with_statement_references_is_refused__ctl}
program ctl(output);
type r = record i: integer end;
var rp, sp: ^r; v: r;
begin
  new(rp); new(sp); sp^.i := 7;
  with rp^ do i := 42;
  writeln(rp^.i);
  with v do begin i := 5; writeln(i) end;
  with sp^ do begin i := i + 1; dispose(rp); writeln(i) end;
  new(rp); with rp^ do i := 9; writeln(rp^.i); dispose(rp); dispose(sp)
end.
{- 305 test_gate_pas_dispose_of_a_pointer_whose_pointee_a_with_statement_references_is_refused__win}
program win(output);
type r = record i: integer end;
var rp: ^r;
begin
  writeln('before'); new(rp);
  with rp^ do begin rp^.i := 42; dispose(rp) end;
  writeln('after')
end.
{- 306 test_gate_pas_dispose_of_a_pointer_whose_pointee_a_with_statement_references_is_refused__wnest}
program wnest(output);
type r = record i: integer end;
var rp, sp: ^r; v: r;
begin
  writeln('before'); new(rp); new(sp);
  with rp^ do with v do begin i := 1; dispose(rp) end;
  writeln('after')
end.
{- 307 test_gate_pas_dynamic_and_open_arrays_and_const_and_out_parameters_answer_as_fpc__dyn}
program dyn(output);
type TIntArray = array of integer; TPt = record x, y: real end;
var a: array of integer; b: TIntArray; r: array of real; m: array of array of integer; p: array of TPt; i, j: integer;
begin
  writeln(length(a), ' ', high(a));
  setlength(a, 5); for i := 0 to high(a) do a[i] := i * i; writeln(length(a), ' ', low(a), ' ', high(a), ' ', a[4]);
  b := a; b[0] := 99; writeln(a[0]);
  setlength(a, 7); a[6] := 1; writeln(a[4], ' ', a[5], ' ', a[6], ' ', length(b), ' ', b[0]);
  setlength(r, 2); r[1] := 2.5; r[0] := 1; writeln(r[0]:0:1, ' ', r[1]:0:1);
  setlength(m, 3, 4); for i := 0 to 2 do for j := 0 to 3 do m[i][j] := i * 10 + j; writeln(length(m), ' ', length(m[1]), ' ', m[2][3], ' ', m[1, 2]);
  setlength(p, 2); p[1].x := 1.5; writeln(p[1].x:0:1, ' ', p[0].y:0:1)
end.
{- 308 test_gate_pas_dynamic_and_open_arrays_and_const_and_out_parameters_answer_as_fpc__opens}
program opens(output);
type TIntArray = array of integer; TRec = record k: integer; v: real end;
var st: array [5..8] of integer; dy: TIntArray; rs: array of TRec; i: integer;
function sum(const a: array of integer): integer; var k, t: integer; begin t := 0; for k := low(a) to high(a) do t := t + a[k]; sum := t end;
procedure show(a: array of integer); var k: integer; begin write(length(a), ':'); for k := 0 to high(a) do write(' ', a[k]); a[0] := -1; writeln end;
procedure bump(var a: array of integer); var k: integer; begin for k := 0 to high(a) do a[k] := a[k] + 100 end;
procedure fill(var a: TIntArray; n: integer); var k: integer; begin setlength(a, n); for k := 0 to n - 1 do a[k] := k end;
function total(const r: array of TRec): real; var k: integer; t: real; begin t := 0; for k := 0 to high(r) do t := t + r[k].v * r[k].k; total := t end;
begin
  for i := 5 to 8 do st[i] := i; writeln(sum(st)); show(st); writeln(st[5]); bump(st); writeln(st[5], ' ', st[8]);
  fill(dy, 4); writeln(sum(dy)); show(dy); bump(dy); writeln(dy[0], ' ', dy[3]);
  setlength(rs, 2); rs[0].k := 2; rs[0].v := 1.5; rs[1].k := 3; rs[1].v := 0.5; writeln(total(rs):0:2)
end.
{- 309 test_gate_pas_dynamic_array_fields_of_records_and_classes_and_a_methods_own_name__classbag}
program classbag;
{$mode objfpc}
type
  TBag = class
  private
    FItems: array of string;
    FCount: integer;
    function GetItem(i: integer): string;
    procedure SetItem(i: integer; const v: string);
  public
    constructor Create;
    function Add(const s: string): integer;
    procedure Delete(i: integer);
    procedure Clear;
    property Count: integer read FCount;
    property Items[i: integer]: string read GetItem write SetItem; default;
  end;
constructor TBag.Create; begin FCount := 0; SetLength(FItems, 0) end;
function TBag.GetItem(i: integer): string; begin GetItem := FItems[i] end;
procedure TBag.SetItem(i: integer; const v: string); begin FItems[i] := v end;
function TBag.Add(const s: string): integer;
begin
  if FCount = Length(FItems) then SetLength(FItems, FCount * 2 + 4);
  FItems[FCount] := s; Add := FCount; FCount := FCount + 1
end;
procedure TBag.Delete(i: integer);
var k: integer;
begin
  for k := i to FCount - 2 do FItems[k] := FItems[k + 1];
  FCount := FCount - 1
end;
procedure TBag.Clear; begin FCount := 0 end;
var b: TBag; i: integer;
begin
  b := TBag.Create;
  b.Add('one'); b.Add('two'); b.Add('three');
  b[1] := 'TWO';
  b.Delete(0);
  for i := 0 to b.Count - 1 do write(b[i], '/', b.Items[i], ' ');
  writeln(b.Count);
  b.Clear; writeln(b.Count);
  b.Free
end.
{- 310 test_gate_pas_dynamic_array_fields_of_records_and_classes_and_a_methods_own_name__dynfields}
program dynfields;
{$mode objfpc}
type
  TIA = array of integer;
  TRec = record n: integer; a: array of integer; s: string; w: array of string; end;
  TBag = class
    cnt: integer;
    items: array of string;
    grid: array of array of integer;
    ids: TIA;
    name: string;
    procedure Fill(k: integer);
    function Total: integer;
  end;
procedure TBag.Fill(k: integer);
var i, j: integer;
begin
  SetLength(items, k); SetLength(ids, k); SetLength(grid, k);
  for i := 0 to High(items) do
  begin
    items[i] := StringOfChar(chr(ord('a') + i), i + 1);
    ids[i] := (i + 1) * 10;
    SetLength(grid[i], i + 1);
    for j := 0 to High(grid[i]) do grid[i][j] := i * 10 + j
  end;
  cnt := Length(items); name := 'bag'
end;
function TBag.Total: integer;
var i, j: integer;
begin
  Total := 0;
  for i := Low(ids) to High(ids) do Total := Total + ids[i];
  for i := 0 to Length(grid) - 1 do for j := 0 to Length(grid[i]) - 1 do Total := Total + grid[i][j]
end;
var r: TRec; b: TBag; i: integer;
begin
  r.n := 1; SetLength(r.a, 4); SetLength(r.w, 2); r.s := 'str';
  for i := 0 to High(r.a) do r.a[i] := i * i;
  r.w[0] := 'p'; r.w[1] := 'qq';
  writeln(Length(r.a), ' ', High(r.a), ' ', Low(r.a), ' ', r.a[3], ' ', Length(r.w), ' ', r.w[1], ' ', Length(r.s), ' ', r.s);
  b := TBag.Create; b.Fill(4);
  writeln(b.cnt, ' ', Length(b.items), ' ', b.items[3], ' ', High(b.ids), ' ', b.ids[2], ' ', Length(b.grid[3]), ' ', b.grid[3][2], ' ', b.Total, ' ', Length(b.name));
  SetLength(b.items, 2); SetLength(b.ids, 0);
  writeln(Length(b.items), ' ', b.items[1], ' ', Length(b.ids), ' ', High(b.ids));
  b.Free
end.
{- 311 test_gate_pas_dynamic_array_fields_of_records_and_classes_and_a_methods_own_name__methresult}
program methresult;
{$mode objfpc}
type TB = class
  x: integer;
  function Total: integer;
  function Twice: integer;
end;
function TB.Total: integer;
var i: integer;
begin
  Total := 0;
  for i := 1 to 3 do Total := Total + i * x
end;
function TB.Twice: integer;
begin
  Twice := Total * 2
end;
var b: TB;
begin b := TB.Create; b.x := 2; writeln(b.Total, ' ', b.Twice) end.
{-------------- 312 test_gate_pas_eoln_needs_a_defined_file_not_at_its_end__ctl}
program ctl(input, output);
var f: text; c: char; n, k: integer;
begin
  rewrite(f); writeln(f, 'one'); writeln(f); writeln(f, 'two three'); reset(f);
  n := 0;
  while not eof(f) do begin k := 0; while not eoln(f) do begin read(f, c); k := k + 1 end; readln(f); n := n + 1; writeln('file line ', n, ' has ', k) end;
  n := 0;
  while not eof do begin k := 0; while not eoln do begin read(c); k := k + 1 end; readln; n := n + 1; writeln('input line ', n, ' has ', k) end
end.
{--------------- 313 test_gate_pas_eoln_needs_a_defined_file_not_at_its_end__ee}
program ee(output);
var f: text; b: boolean;
begin
  rewrite(f); writeln(f, 'x'); reset(f); readln(f); writeln('before'); b := eoln(f); writeln('after ', b)
end.
{--------------- 314 test_gate_pas_eoln_needs_a_defined_file_not_at_its_end__ei}
program ei(input, output);
var b: boolean;
begin
  readln; writeln('before'); b := eoln; writeln('after ', b)
end.
{--------------- 315 test_gate_pas_eoln_needs_a_defined_file_not_at_its_end__eu}
program eu(output);
var f: text; b: boolean;
begin
  writeln('before'); b := eoln(f); writeln('after ', b)
end.
{------------------ 316 test_gate_pas_every_identifier_has_a_defining_point__ok}
program scopes(input, output);
const limit = 3; half = 1.5; star = '*';
type color = (red, green, blue); pt = record x, y: integer end;
     shape = record case k: color of red: (r: integer); green, blue: (g: char) end;
var total: integer; p: pt; s: shape; c: color;
procedure later(a, b: integer); forward;
function twice(n: integer): integer;
  var local: integer;
  function inner(m: integer): integer;
  begin inner := m + local end;
begin local := n; twice := inner(n) end;
procedure later;
var i: integer;
begin for i := a to b do total := total + twice(i) end;
begin
  total := 0; later(1, limit);
  with p do begin x := 4; y := 5 end;
  s.k := green; s.g := star; c := blue;
  writeln(total:1, ' ', p.x + p.y:1, ' ', s.g, ' ', ord(c):1, ' ', half:3:1)
end.
{--------------------- 317 test_gate_pas_exit_leaves_the_routine_it_names__xiso}
program xiso(output);
var calls, k: integer;
procedure find(target: integer);
var i, j: integer;
begin
  calls := calls + 1;
  i := 0;
  while i < 5 do
  begin
    for j := 1 to 5 do
      if i * 10 + j = target then
      begin
        writeln('found ', target, ' at ', i, ',', j);
        exit
      end;
    i := i + 1
  end;
  writeln('no ', target)
end;
function firstdiv(n: integer): integer;
var d: integer;
begin
  firstdiv := n;
  for d := 2 to n - 1 do
    if n mod d = 0 then
    begin
      firstdiv := d;
      exit
    end
end;
function sign(x: integer): integer;
begin
  if x < 0 then exit(-1);
  if x = 0 then exit(0);
  sign := 1
end;
function depth(n: integer): integer;
begin
  depth := n;
  if n >= 4 then exit;
  depth := depth(n + 1) * 10 + n
end;
begin
  calls := 0;
  find(23); find(42); find(99);
  writeln('firstdiv ', firstdiv(91), ' ', firstdiv(97), ' ', firstdiv(4));
  writeln('sign ', sign(-7), ' ', sign(0), ' ', sign(12));
  writeln('depth ', depth(1));
  for k := 1 to 10 do
    if k = 3 then
    begin
      writeln('main exits at k=', k, ' calls=', calls);
      exit
    end;
  writeln('not reached')
end.
{--------------------- 318 test_gate_pas_exit_leaves_the_routine_it_names__xmac}
program xmac;
{$MODE MACPAS}
var trail: integer;
procedure outer(n: integer);
var tag: integer;
  procedure mid;
    procedure inner;
    begin
      trail := trail * 10 + n;
      if n = 2 then Exit(outer);
      if n = 3 then Exit(mid);
      trail := trail * 10 + 7
    end;
  begin
    inner;
    writeln('mid after inner, n=', n, ' trail=', trail);
    if n = 1 then outer(2);
    if n = 1 then outer(3);
    writeln('mid ends, n=', n)
  end;
begin
  tag := n * 11;
  mid;
  writeln('outer after mid, n=', n, ' tag=', tag, ' trail=', trail)
end;
begin
  trail := 0;
  outer(1);
  writeln('trail=', trail)
end.
{- 319 test_gate_pas_fillchar_from_an_element_fills_a_string_or_an_array_run__elemfill}
program elemfill;
{$mode objfpc}
var s: string; g: array of integer; b: array of boolean; p: array [0..9] of byte; w: array [1..6] of word; i: integer;
begin
  setlength(s, 6); fillchar(s[1], 6, ' '); s[3] := 'x'; writeln('[', s, ']', length(s));
  fillchar(s[2], 2, '-'); writeln('[', s, ']');
  setlength(b, 4); fillchar(b[0], length(b), #1); writeln(b[0], ' ', b[3]);
  for i := 0 to 9 do p[i] := 7; fillchar(p[2], 3, 0); for i := 0 to 9 do write(p[i]); writeln;
  for i := 1 to 6 do w[i] := 9; fillchar(w[3], 2 * SizeOf(word), 0); for i := 1 to 6 do write(w[i]); writeln
end.
{- 320 test_gate_pas_fillchar_of_a_dereferenced_pointer_array_fills_the_pointee_bounds__lowb}
program lowb(output);
type
  pb = ^tb;
  tb = array[5..8] of longint;
var
  p: pb;
  i: longint;
begin
  new(p);
  fillchar(p^, sizeof(tb), 0);
  p^[5] := 3;
  p^[8] := 4;
  fillchar(p^, sizeof(tb), 0);
  for i := 5 to 8 do writeln(p^[i]);
  dispose(p)
end.
{- 321 test_gate_pas_fillchar_of_a_dereferenced_pointer_array_fills_the_pointee_bounds__named}
program named(output);
var
  a: array[1..5] of longint;
  i: longint;
begin
  for i := 1 to 5 do a[i] := i;
  fillchar(a, sizeof(a), 0);
  for i := 1 to 5 do writeln(a[i]);
end.
{- 322 test_gate_pas_fillchar_of_a_dereferenced_pointer_array_fills_the_pointee_bounds__parr}
program parr(output);
type
  pa = ^ta;
  ta = array[0..4] of longint;
var
  p: pa;
  i: longint;
begin
  new(p);
  fillchar(p^, sizeof(ta), 0);
  p^[2] := 9;
  p^[4] := 7;
  fillchar(p^, sizeof(ta), 0);
  for i := 0 to 4 do writeln(p^[i]);
  dispose(p)
end.
{- 323 test_gate_pas_fillchar_of_a_whole_variable_fills_every_scalar__wholefill}
program wholefill;
{$mode objfpc}
type
  tLine = array [0..4] of int64;
  tGrid = array [1..3] of tLine;
  tRec = record n: integer; r: real; c: char; b: boolean; a: array [1..3] of word end;
var g: tGrid; r: tRec; f: array [1..4] of boolean; i, j: integer; ch: array [1..5] of char;
procedure Clear(var s: tGrid); begin fillchar(s, sizeof(s), #0) end;
begin
  for i := 1 to 3 do for j := 0 to 4 do g[i][j] := i * 10 + j;
  Clear(g); writeln(g[2][3], ' ', g[3][4]);
  r.n := 5; r.r := 2.5; r.c := 'x'; r.b := true; r.a[2] := 9;
  fillchar(r, sizeof(r), 0); writeln(r.n, ' ', r.r:0:1, ' ', ord(r.c), ' ', r.b, ' ', r.a[2]);
  fillchar(f, sizeof(f), true); writeln(f[1], ' ', f[4]);
  fillchar(ch, sizeof(ch), '*'); for i := 1 to 5 do write(ch[i]); writeln
end.
{-------------------------- 324 test_gate_pas_five_or_more_parameters_arrive__g}
program g;
var t: integer;
procedure five(p1, p2, p3, p4, p5: integer);
begin writeln(p1, p5) end;
procedure eight(a, b, c, d, e, f, g, h: integer);
begin writeln(a, b, c); writeln(d, e, f); writeln(g, h) end;
function six(a, b, c, d, e, f: integer): integer;
begin six := a + b + c + d + e + f end;
procedure outer(a, b, c, d, e: integer);
begin five(e, d, c, b, a); eight(a, b, c, d, e, a + 10, b + 10, c + 10) end;
begin
  five(1, 2, 3, 4, 5);
  eight(1, 2, 3, 4, 5, 6, 7, 8);
  t := six(1, 2, 3, 4, 5, 6); writeln(t);
  outer(11, 12, 13, 14, 15)
end.
{------------------------ 325 test_gate_pas_format_matches_fpc_sysutils__fmtall}
program fmtall;
{$mode objfpc}
uses sysutils;
var i: integer; r, z, b: real; s: string; c: char; q: int64;
begin
  i := -42; r := 2.5; z := 0.000123456; b := 123456789.125; s := 'hello'; c := 'Z'; q := 12345678901;
  writeln(Format('[%d][%6d][%-6d][%.5d][%8.5d][%u][%x][%8x][%.4x]', [i, i, i, i, i, 7, 255, 4095, 10]));
  writeln(Format('[%s][%8s][%-8s][%.3s][%s][%d]', [s, s, s, s, c, q]));
  writeln(Format('[%f][%.0f][%.3f][%10.4f][%-10.1f][%f][%.2f]', [r, r, z, b, r, z, -r]));
  writeln(Format('[%e][%.3e][%12.4e][%e]', [r, b, z, -r]));
  writeln(Format('[%g][%.3g][%g][%g][%g]', [r, b, z, b, 100.0]));
  writeln(Format('[%n][%.1n][%n]', [b, b, r]));
  writeln(Format('[%*d][%-*d][%.*f][%%]', [5, 3, 4, 7, 2, r]), Format('[%1:s %0:s %s]', ['a', 'b']));
  writeln(Format('%d%s', [1, 'x']), Format('none', []));
  r := 0.05; z := 0.15; b := 0.715; writeln(Format('[%d][%f]', [0, 0.0]), Format('[%.1f][%.1f][%.2f][%.0f][%.0f][%.2f]', [r, z, b, 0.5, 1.5, -0.001]));
end.
{----------------------- 326 test_gate_pas_format_matches_fpc_sysutils__fmtexpr}
program fmtexpr;
{$mode objfpc}
uses sysutils;
var a: array [1..4] of integer; i: integer; sep, acc: string; x: real;
function Pair(k: integer; v: real): string;
begin
  Pair := Format('%s=%.3f', [IntToStr(k), v])
end;
begin
  for i := 1 to 4 do a[i] := i * i * 7;
  acc := ''; sep := '';
  for i := 1 to 4 do begin acc := acc + Format(sep + '%d', [a[i]]); sep := ',' end;
  writeln(acc);
  writeln(Format('<%s>', [Format('%5.2f|%-4d|', [a[2] / 3, a[1]])]), ' ', Length(Format('%10s', ['ab'])));
  x := 1.0; for i := 1 to 3 do begin x := x / 7; writeln(Pair(i, x), ' ', Format('%.12e', [x]), ' ', Format('%g', [x])) end
end.
{------------------------ 327 test_gate_pas_format_matches_fpc_sysutils__fmtown}
program fmtown;
{$mode objfpc}
type tset = set of 0..9;
function format(k: integer; t: tset): integer;
var j, n: integer;
begin
  n := 0; for j := 0 to 9 do if j in t then n := n + j; format := n * k
end;
begin
  writeln(format(2, [1, 3, 5]), ' ', format(1, []))
end.
{- 328 test_gate_pas_fpc_dialect_strings_case_else_and_builtins_answer_as_fpc__c1}
program c1(output);
var c: char; i: integer;
begin
  for i := 1 to 3 do
  begin
    c := chr(ord('a') + i - 1);
    case c of
      'a': writeln('a ', i);
      'b': writeln(upcase(c), ' ', copy('xyz', i, 2))
    else
      writeln('other ', i);
      writeln('second statement')
    end
  end
end.
{- 329 test_gate_pas_fpc_dialect_strings_case_else_and_builtins_answer_as_fpc__v1}
program v1(output);
type string = packed array[1..3] of char;
var otherwise: integer; s: string;
begin
  otherwise := 5; s := 'abc';
  writeln(s, otherwise)
end.
{- 330 test_gate_pas_fpc_system_and_math_routines_answer_as_fpc_and_stay_refused_in_iso__iso_random}
program iso_random(output);
begin writeln(random < 1.0) end.
{- 331 test_gate_pas_fpc_system_and_math_routines_answer_as_fpc_and_stay_refused_in_iso__mathfns}
{$mode fpc}
program mt;
uses math;
begin
  writeln(tan(0.5):0:12, ' ', arcsin(0.5):0:12, ' ', arccos(0.5):0:12, ' ', arctan2(1.0, 2.0):0:12);
  writeln(log2(10.0):0:12, ' ', logn(3.0, 81.0):0:12, ' ', hypot(3.0, 4.0):0:6, ' ', sinh(1.0):0:12, ' ', cosh(1.0):0:12, ' ', tanh(0.5):0:12);
  writeln(intpower(2.0, 10):0:1, ' ', intpower(2.0, -2):0:4, ' ', power(2.0, 0.5):0:12, ' ', degtorad(180.0):0:12, ' ', radtodeg(pi):0:6);
end.
{- 332 test_gate_pas_fpc_system_and_math_routines_answer_as_fpc_and_stay_refused_in_iso__sysrt}
{$mode fpc}
program rt1;
var s: string; i: integer;
begin str(42, s); writeln('[', s, ']'); str(7:5, s); writeln('[', s, ']'); str(3.14159:8:3, s); writeln('[', s, ']'); writeln(stringofchar('*', 5)); randomize; i := random(10); writeln((i >= 0) and (i < 10), ' ', random < 1.0) end.
{- 333 test_gate_pas_function_result_record_fields_assign_through_the_name__recfn}
program recfn;
{$mode objfpc}
type tr = record s: integer; a: array[0..3] of integer end;
function Mk(n: integer): tr;
begin
  Mk.s := n;
  Mk.a[3] := n * 3;
  if n > 4 then Mk.a[0] := 99
end;
var r: tr;
begin
  r := Mk(7);
  writeln(r.s, ' ', r.a[3], ' ', r.a[0])
end.
{- 334 test_gate_pas_function_result_record_fields_assign_through_the_name__recwith}
program recwith;
{$mode objfpc}
type tr = record s: integer; a: array[0..3] of integer end;
function Mk(n: integer): tr;
begin
  with Mk do begin s := n; a[2] := n + 1 end
end;
var r: tr;
begin
  r := Mk(5);
  writeln(r.s, ' ', r.a[2])
end.
{- 335 test_gate_pas_getmem_freemem_and_high_of_a_dereferenced_array_pointer__derefhigh}
program n;
{$mode objfpc}
type tf = array[0..9] of longword; pf = ^tf;
var a: pf; i: integer;
begin
  new(a);
  for i := 0 to 9 do a^[i] := i * i;
  writeln(a^[3], ' ', high(a^));
  dispose(a)
end.
{- 336 test_gate_pas_getmem_freemem_and_high_of_a_dereferenced_array_pointer__gmall}
program g1;
{$mode objfpc}
type
  TRec = record n: integer; s: integer end;
  PRec = ^TRec;
  TInts = array[0..0] of integer;
  PInts = ^TInts;
  TBig = array[1..50] of longword;
  PBig = ^TBig;
var
  r: PRec; q: PInts; p: pointer; b: PBig; i: integer;
begin
  getmem(r, sizeof(TRec)); r^.n := 4; r^.s := 9; writeln(r^.n + r^.s); freemem(r, sizeof(TRec));
  getmem(q, 10 * sizeof(integer)); for i := 0 to 9 do q^[i] := i * 3; writeln(q^[9], ' ', q^[4]); freemem(q);
  getmem(p, sizeof(TBig)); b := p; for i := low(b^) to high(b^) do b^[i] := i; writeln(low(b^), ' ', high(b^), ' ', b^[50]); freemem(p)
end.
{---------------------------- 337 test_gate_pas_heap_table_is_a_movable_root__w}
program w(output);
const
  keep = 300;
  churn = 20000;
type
  link = ^node;
  node = record
    id: integer;
    tag: char;
    mate: link;
    next: link
  end;
var
  head, p, q, m: link;
  i, n, sum, bad: integer;
begin
  head := nil;
  bad := 0;
  for i := 1 to keep do
  begin
    new(p);
    p^.id := i;
    p^.tag := chr(ord('a') + i mod 26);
    new(m);
    m^.id := i * 1000;
    m^.tag := 'm';
    m^.mate := nil;
    m^.next := nil;
    p^.mate := m;
    p^.next := head;
    head := p
  end;
  for i := 1 to churn do
  begin
    new(q);
    q^.id := i;
    q^.tag := 'z';
    q^.mate := nil;
    q^.next := nil;
    if q^.id <> i then bad := bad + 1;
    if q^.tag <> 'z' then bad := bad + 1;
    dispose(q)
  end;
  n := 0;
  sum := 0;
  p := head;
  while p <> nil do
  begin
    n := n + 1;
    sum := sum + p^.id;
    if p^.tag <> chr(ord('a') + p^.id mod 26) then bad := bad + 1;
    if p^.mate^.id <> p^.id * 1000 then bad := bad + 1;
    if p^.mate^.tag <> 'm' then bad := bad + 1;
    p := p^.next
  end;
  writeln('nodes ', n:1, ' sum ', sum:1, ' churn ', churn:1, ' bad ', bad:1);
  p := head;
  while p <> nil do
  begin
    q := p^.next;
    dispose(p^.mate);
    dispose(p);
    p := q
  end;
  new(p);
  p^.id := 7;
  p^.tag := 'k';
  writeln('reused ', p^.id:1, ' ', p^.tag)
end.
{- 338 test_gate_pas_include_exclude_assignfile_array_constructors_trystrtoint_and_fileexists__rtlbatch}
program rtlbatch;
{$mode objfpc}
uses sysutils;
type s = set of 0..9;
var x: s; i, n: integer; f: text; l: string;
function Sum(const a: array of integer): integer;
var k: integer;
begin
  Sum := 0;
  for k := low(a) to high(a) do Sum := Sum + a[k]
end;
function Longest(const a: array of string): string;
var k: integer;
begin
  Longest := '';
  for k := 0 to high(a) do if length(a[k]) > length(Longest) then Longest := a[k]
end;
begin
  x := [1, 2]; include(x, 3); include(x, 7); exclude(x, 1); exclude(x, 9);
  for i := 0 to 9 do if i in x then write(i); writeln;
  writeln(Sum([1, 2, 3]), ' ', Sum([10]), ' ', Longest(['ab', 'abcd', 'c']));
  assignfile(f, '/tmp/pas_rtlbatch_gate.txt'); rewrite(f); writeln(f, 'line one'); writeln(f, 'two'); closefile(f);
  assign(f, '/tmp/pas_rtlbatch_gate.txt'); reset(f); readln(f, l); close(f); writeln(l);
  writeln(FileExists('/tmp/pas_rtlbatch_gate.txt'), ' ', FileExists('/nonexistent/q'));
  writeln(TryStrToInt('42', n), ' ', n, ' ', TryStrToInt('4x', n), ' ', TryStrToInt('-17', n), ' ', n)
end.
{---------------- 339 test_gate_pas_inline_record_char_fields_print_as_chars__g}
program cf2;
var q: record r: real; n: integer; c: char end;
begin q.r := 2.5; q.n := 3; q.c := 'k'; writeln(q.c); writeln(q.n, q.c); writeln(q.r:6:2, q.c); writeln(q.r:6:2, q.n, ' ', q.c) end.
{- 340 test_gate_pas_labels_stay_under_ten_thousand_and_program_parameters_are_distinct__ok}
program lpctl(input, output);
label 1, 9999;
var n: integer;
begin
  n := 0;
  1: n := n + 1;
  if n < 3 then goto 1;
  if n = 3 then goto 9999;
  writeln('never');
  9999: writeln('labels 1 and 9999 reached, n = ', n)
end.
{-------------------- 341 test_gate_pas_low_and_high_of_a_string_variable__ansi}
{$mode objfpc}{$H+}
program ansi(output);
var s: ansistring;
begin
  s := 'abc';
  writeln(low(s), ' ', high(s));
  s := 'hello world';
  writeln(low(s), ' ', high(s))
end.
{-------------------- 342 test_gate_pas_low_and_high_of_a_string_variable__open}
{$mode delphi}
program open(output);
var t: shortstring;
procedure P(s: OpenString);
begin
  writeln(s, ' ', high(s), ' ', low(s))
end;
begin
  P('12345');
  t := 'xy';
  P(t);
  writeln(high(t))
end.
{------------------ 343 test_gate_pas_low_and_high_of_a_string_variable__shadow}
{$mode delphi}
program shadow(output);
var s: string;
procedure P(s: OpenString);
begin
  writeln(high(s))
end;
procedure Q;
var s: shortstring;
begin
  s := 'q';
  writeln(high(s))
end;
begin
  s := 'abcd';
  P('zz');
  writeln(high(s));
  Q;
  writeln(high(s))
end.
{------------------------ 344 test_gate_pas_maxint_is_the_required_constant__ok}
program maxctl(output);
const m = maxint; n = -maxint; half = 1073741823;
type big = 0..maxint; sym = n..m;
var i: integer; b: big; s: sym; r: real;
begin
  i := maxint; b := maxint div 2; s := -maxint; r := maxint;
  writeln(i:1, ' ', m:1, ' ', n:1, ' ', b = half, ' ', s:1, ' ', r:12:1);
  writeln(maxint - 1:1, ' ', maxint div 10:1, ' ', maxint mod 1000:1, ' ', -maxint + 1:1)
end.
{--------------------- 345 test_gate_pas_maxint_is_the_required_constant__redef}
program maxredef(output);
const maxint = 100;
type small = 0..maxint;
var s: small;
begin s := maxint; writeln(s:1, ' ', maxint div 3:1) end.
{- 346 test_gate_pas_mod_in_the_fpc_dialects_keeps_the_dividends_sign_and_takes_a_negative_divisor__modiso}
program modiso;
var a, b: integer;
begin
  a := -7; b := 3;
  writeln(a mod b, ' ', a div b, ' ', 7 mod b, ' ', (-a) mod b)
end.
{------------------ 347 test_gate_pas_monitor_plug_sends_every_assignment__plug}
program plug(output);
type e = (red, green, blue); r = record f1: e; f2: integer end;
var p: packed array [1..4] of char; v: r; a: array [1..3] of e; c: e; f: file of integer; i: integer;
begin
  p := 'ABCD';
  v.f1 := green; v.f2 := 5; a[2] := blue; c := red;
  rewrite(f); f^ := 42; writeln(f^:1); put(f);
  i := ord(v.f1) + ord(a[2]);
  writeln(p, ' ', i:1, ' ', ord(c):1)
end.
{- 348 test_gate_pas_move_copies_a_run_of_array_elements_or_string_characters__moves}
program moves;
{$mode objfpc}
type tarr = array[1..8] of integer; trow = array[0..2] of word;
var a, b: tarr; d, e: array of int64; s, t: string; i: integer; r1, r2: array[0..4] of trow; q: array[3..6] of byte; u: array[0..3] of byte;
begin
  for i := 1 to 8 do begin a[i] := i * 10; b[i] := 0 end;
  move(a[2], b[1], 3 * sizeof(integer));
  for i := 1 to 8 do write(b[i], ' '); writeln;
  move(a[1], a[3], 4 * sizeof(integer));
  for i := 1 to 8 do write(a[i], ' '); writeln;
  setlength(d, 6); setlength(e, 6);
  for i := 0 to 5 do d[i] := i * i + 1;
  move(d[1], e[0], 4 * sizeof(int64)); move(d[0], d[2], 3 * sizeof(d[0]));
  for i := 0 to 5 do write(e[i], '/', d[i], ' '); writeln;
  s := 'abcdefgh'; t := 'XYZ12345';
  move(t[2], s[3], 4);
  writeln(s);
  setlength(s, 4); fillchar(s[1], 4, '.'); move(t[1], s[2], 2); writeln(s);
  for i := 0 to 4 do begin r1[i][0] := i; r1[i][1] := i + 100; r1[i][2] := i + 200 end;
  move(r1[1], r2[0], 2 * sizeof(trow));
  writeln(r2[0][0], ' ', r2[1][2], ' ', r2[2][0]);
  for i := 3 to 6 do q[i] := i; for i := 0 to 3 do u[i] := 0;
  move(q[4], u[1], 3);
  for i := 0 to 3 do write(u[i], ' '); writeln
end.
{--------------- 349 test_gate_pas_nested_record_char_field_prints_as_a_char__n}
program nestedchar(output);
type
  inner = record
    n: integer;
    tag: char;
    amt: real
  end;
  link = ^outer;
  outer = record
    c: char;
    sub: inner
  end;
var
  p: link;
  r: outer;
begin
  new(p);
  p^.c := 'x';
  p^.sub.n := 4096;
  p^.sub.tag := 'q';
  p^.sub.amt := -1.25;
  r.c := 'y';
  r.sub.n := -70000;
  r.sub.tag := 'w';
  r.sub.amt := 2.5;
  writeln('ptr ', p^.c, p^.sub.tag, ' ', p^.sub.n:1, ' ', p^.sub.amt:8:3);
  writeln('var ', r.c, r.sub.tag, ' ', r.sub.n:1, ' ', r.sub.amt:8:3);
  writeln('ord ', ord(p^.sub.tag):1, ' ', ord(r.sub.tag):1);
  if p^.sub.tag = 'q' then writeln('cmp equal') else writeln('cmp differ')
end.
{----------------- 350 test_gate_pas_not_of_a_signed_integer_is_bitwise__isonot}
program isonot(output);
var a, b: integer; p, q: boolean; l: longint;
begin
  a := 10; b := 12; p := true; q := a > b; l := -5;
  writeln(not a, not (a + b), not (a and b), not 0, not l);
  writeln(not p, not q, not (a > b), not (p and q), not odd(a));
  if not (a = b) then writeln('ne');
  if not p or not q then writeln('either')
end.
{----------------- 351 test_gate_pas_not_of_a_signed_integer_is_bitwise__objnot}
program objnot;
{$mode objfpc}
var a, b: integer; p, q: boolean; l: longint;
begin
  a := 10; b := 12; p := true; q := a > b; l := -5;
  writeln(not a, not (a + b), not (a and b), not 0, not l);
  writeln(not p, not q, not (a > b), not (p and q), not odd(a));
  if not (a = b) then writeln('ne');
  if not p or not q then writeln('either')
end.
{------- 352 test_gate_pas_only_the_tree_crosses_from_the_parser_to_lower__nrec}
program nrec(output);
type arr = array [1..5] of integer;
     inner = record k: integer; a: arr end;
     pr = ^inner;
var r: inner; p, q: pr; j, s: integer;
begin
  for j := 1 to 5 do r.a[j] := j * j; r.k := 7;
  new(p); for j := 1 to 5 do p^.a[j] := r.a[j] + 1;
  writeln(r.a[2]:1, ' ', p^.a[5]:1, ' ', r.k:1);
  p^.a[2] := p^.a[2] * 10; writeln(p^.a[2]:1);
  s := 0; for j := 1 to 5 do s := s + p^.a[j] + r.a[j]; writeln(s:1);
  p^.a[4] := p^.a[1] + p^.a[3]; r.a[5] := r.k * 6; writeln(p^.a[4]:1, ' ', r.a[5]:1);
  new(q); q^.a[1] := p^.a[4] - r.a[1]; q^.a[q^.a[1] - 10] := r.a[r.a[1] + 1]; writeln(q^.a[1]:1, ' ', q^.a[1]:1)
end.
{- 353 test_gate_pas_overloaded_routines_are_chosen_by_argument_count_and_type_as_fpc_chooses__ovbasic}
{$mode objfpc}
program ovbasic;
function F(a: Integer): String; begin Result := 'int'; end;
function F(a: Double): String; begin Result := 'dbl'; end;
function F(a: String): String; begin Result := 'str'; end;
procedure P(a: Integer); begin writeln('P int ', a); end;
procedure P(a: Integer; b: Integer); begin writeln('P two ', a, ' ', b); end;
var i: Integer; d: Double; s: String;
begin
  i := 1; d := 2.5; s := 'x';
  writeln(F(i), ' ', F(d), ' ', F(s), ' ', F(3), ' ', F(1.5), ' ', F('lit'));
  P(1); P(1, 2);
end.
{- 354 test_gate_pas_overloaded_routines_are_chosen_by_argument_count_and_type_as_fpc_chooses__ovexpr}
{$mode objfpc}
program ovexpr;
function N(a: Extended): String; overload; begin N := 'extended'; end;
function N(a: Double): String; overload; begin N := 'double'; end;
function N(a: Single): String; overload; begin N := 'single'; end;
function N(a: Int64): String; overload; begin N := 'int64'; end;
function N(a: Longint): String; overload; begin N := 'longint'; end;
function N(a: Boolean): String; overload; begin N := 'boolean'; end;
function N(a: Char): String; overload; begin N := 'char'; end;
function N(a: String): String; overload; begin N := 'string'; end;
var l: Longint; db: Double; sg: Single; ex: Extended; i64: Int64; bo: Boolean; ch: Char;
begin
  l := 4; db := 2; sg := 1; ex := 3; i64 := 5; bo := true; ch := 'q';
  writeln(N(l / 2), ' ', N(db / 2), ' ', N(sg * 2), ' ', N(sg + db), ' ', N(sg * 2.5), ' ', N(-sg), ' ', N(l * l), ' ', N(i64 + l), ' ', N(true), ' ', N(not bo), ' ', N(bo and bo));
  writeln(N(ch), ' ', N('ab'), ' ', N('a'), ' ', N(l > 2), ' ', N(abs(l)), ' ', N(sqr(sg)), ' ', N(chr(65)), ' ', N(ex), ' ', N(l mod 3), ' ', N(l div 3));
end.
{- 355 test_gate_pas_overloaded_routines_are_chosen_by_argument_count_and_type_as_fpc_chooses__ovfloat}
{$mode objfpc}
program ovfloat;
function N(a: Extended): String; overload; begin N := 'extended'; end;
function N(a: Double): String; overload; begin N := 'double'; end;
function N(a: Single): String; overload; begin N := 'single'; end;
function M(a: Double): String; overload; begin M := 'double'; end;
function M(a: Extended): String; overload; begin M := 'extended'; end;
function K(a: Int64): String; overload; begin K := 'int64'; end;
function K(a: Longint): String; overload; begin K := 'longint'; end;
function K(a: Byte): String; overload; begin K := 'byte'; end;
function K(a: Word): String; overload; begin K := 'word'; end;
function Q(a: Int64): String; overload; begin Q := 'int64'; end;
function Q(a: Double): String; overload; begin Q := 'double'; end;
var l: Longint; w: Word; sm: Smallint; sg: Single; db: Double; by: Byte;
begin
  l := 1; w := 2; sm := 3; sg := 1; db := 2; by := 4;
  writeln(N(2.5), ' ', N(0.1), ' ', M(2.5), ' ', M(0.1), ' ', N(sg), ' ', N(db), ' ', M(sg));
  writeln(K(5), ' ', K(300), ' ', K(100000), ' ', K(l), ' ', K(w), ' ', K(sm), ' ', K(by), ' ', K(by + 1), ' ', K(l + 1), ' ', K(w + 1));
  writeln(Q(5), ' ', Q(l), ' ', Q(2.5), ' ', Q(by));
end.
{- 356 test_gate_pas_overloaded_routines_are_chosen_by_argument_count_and_type_as_fpc_chooses__ovmeth}
{$mode objfpc}
program ovmeth;
type
  TFoo = class
    procedure Say(a: Integer); overload;
    procedure Say(s: String); overload;
    function Twice(a: Integer): Integer;
  end;
procedure TFoo.Say(a: Integer); begin writeln('int ', a); end;
procedure TFoo.Say(s: String); begin writeln('str ', s); end;
function TFoo.Twice(a: Integer): Integer; begin Result := a * 2; end;
var f: TFoo;
begin
  f := TFoo.Create;
  f.Say(3);
  f.Say('x');
  writeln(f.Twice(4));
end.
{- 357 test_gate_pas_overloaded_routines_are_chosen_by_argument_count_and_type_as_fpc_chooses__ovtypes}
{$mode objfpc}
program ovtypes;
function Name(a: Byte): String; overload; begin Name := 'byte'; end;
function Name(a: Longint): String; overload; begin Name := 'longint'; end;
function Name(a: Int64): String; overload; begin Name := 'int64'; end;
function Name(a: Single): String; overload; begin Name := 'single'; end;
function Name(a: Double): String; overload; begin Name := 'double'; end;
function Name(a: Extended): String; overload; begin Name := 'extended'; end;
function Name(a: Char): String; overload; begin Name := 'char'; end;
function Name(a: String): String; overload; begin Name := 'string'; end;
function Name(a: Boolean): String; overload; begin Name := 'boolean'; end;
function Fact(n: Integer): Int64; overload; begin if n <= 1 then Result := 1 else Result := n * Fact(n - 1); end;
function Fact(n: Integer; acc: Int64): Int64; overload; begin if n <= 1 then Result := acc else Result := Fact(n - 1, acc * n); end;
function Sum(a, b: Integer): Integer; forward;
function Sum(a, b, c: Integer): Integer; overload; begin Result := a + b + c; end;
function Sum(a, b: Integer): Integer; begin Result := a + b; end;
procedure Swap(var a, b: Integer); overload; var t: Integer; begin t := a; a := b; b := t; end;
procedure Swap(var a, b: String); overload; var t: String; begin t := a; a := b; b := t; end;
procedure Show(a: Integer; b: Integer = 7); overload; begin writeln('show1 ', a, ' ', b); end;
procedure Show(s: String); overload; begin writeln('show2 ', s); end;
procedure Outer;
  procedure Inner(x: Integer); overload; begin writeln('inner int ', x); end;
  procedure Inner(x: String); overload; begin writeln('inner str ', x); end;
begin Inner(5); Inner('five'); end;
var b: Byte; l: Longint; i64: Int64; sg: Single; db: Double; ex: Extended; c: Char; s: String; bo: Boolean; i, j: Integer; s1, s2: String;
begin
  b := 1; l := 2; i64 := 3; sg := 1.5; db := 2.5; ex := 3.5; c := 'x'; s := 'hello'; bo := true;
  writeln(Name(b), ' ', Name(l), ' ', Name(i64), ' ', Name(sg), ' ', Name(db), ' ', Name(ex));
  writeln(Name(c), ' ', Name(s), ' ', Name(bo), ' ', Name('lit'), ' ', Name('c'), ' ', Name(true));
  writeln(Name(10), ' ', Name(2.5), ' ', Name(l + 1), ' ', Name(db * 2));
  writeln(Fact(5), ' ', Fact(5, 1), ' ', Sum(1, 2), ' ', Sum(1, 2, 3));
  i := 1; j := 2; Swap(i, j); writeln(i, ' ', j);
  s1 := 'a'; s2 := 'b'; Swap(s1, s2); writeln(s1, ' ', s2);
  Show(1); Show(1, 2); Show('x');
  Outer;
end.
{---------------------------- 358 test_gate_pas_pack_unpack_and_text_get_put__g}
program p4kit;
var a: array [1..10] of char; z: packed array [1..4] of char; i: integer; f: text; ch: char; n: integer;
begin
  for i := 1 to 10 do a[i] := chr(ord('a') + i - 1);
  pack(a, 3, z); writeln(z);
  z := 'WXYZ'; unpack(z, a, 6); for i := 1 to 10 do write(a[i]); writeln;
  rewrite(f); f^ := 'x'; put(f); f^ := 'y'; put(f); writeln(f, 'z');
  reset(f); n := 0; while not eof(f) do begin ch := f^; get(f); n := n + 1 end;
  writeln(n)
end.
{- 359 test_gate_pas_pack_unpack_stays_inside_the_unpacked_arrays_index_type__ok}
program packok(output);
var a: array [1..10] of integer;
    b: packed array [1..10] of integer;
    i: integer;
begin
   for i := 1 to 10 do a[i] := i * 3;
   pack(a, 1, b);
   for i := 1 to 10 do write(b[i]:1, ' ');
   writeln
end.
{- 360 test_gate_pas_paren_star_conditional_directives_act_as_the_brace_form__parenstar}
program parenstar(output);
(*$DEFINE ALPHA*)
var i: integer;
begin
  i := 0;
  (*$IFDEF ALPHA*) i := i + 1; (*$ENDIF*)
  (*$IFDEF BETA*) i := i + 10; (* a comment inside *) (*$ELSE*) i := i + 100; (*$ENDIF*)
  (*$IFNDEF BETA*) i := i + 1000; (*$ENDIF*)
  {$IFDEF ALPHA} i := i + 10000; {$ENDIF}
  writeln(i)
end.
{- 361 test_gate_pas_procedural_types_and_reals_written_per_dialect_answer_as_fpc__atroutine}
{$mode fpc}
program pt2;
type TFun = function(t: real): real;
function sq(t: real): real; begin sq := t * t end;
function apply(f: TFun; x: real): real; begin apply := f(x) end;
begin writeln(apply(@sq, 3.0):0:2) end.
{- 362 test_gate_pas_procedural_types_and_reals_written_per_dialect_answer_as_fpc__ptypes}
program pt1(output);
type TFun = function(t: real): real; TProc = procedure(n: integer); TNullary = function: integer;
function cooling(t: real): real; begin cooling := -0.07 * (t - 20) end;
function sq(t: real): real; begin sq := t * t end;
procedure show(n: integer); begin write('<', n, '>') end;
function seven: integer; begin seven := 7 end;
function apply(f: TFun; x: real): real; begin apply := f(x) end;
procedure euler(f: TFun; y, h: real; n: integer); var i: integer; begin for i := 1 to n do y := y + h * f(y); writeln(y:0:4) end;
procedure each(p: TProc; a, b: integer); var i: integer; begin for i := a to b do p(i); writeln end;
function twice(g: TNullary): integer; begin twice := 2 * g end;
begin writeln(apply(sq, 3.0):0:2, ' ', apply(cooling, 100.0):0:2); euler(cooling, 100.0, 2.0, 5); each(show, 1, 3); writeln(twice(seven)) end.
{- 363 test_gate_pas_procedural_types_and_reals_written_per_dialect_answer_as_fpc__reals_fpc}
{$mode fpc}
program rf3;
var r: real; i: integer; b: boolean; c: char;
begin r := -1.5; i := 42; b := true; c := 'z'; writeln(r); writeln(r:12); writeln(r:12:3); writeln(i:6, b:7, c:3, 'ab':4) end.
{- 364 test_gate_pas_procedural_types_and_reals_written_per_dialect_answer_as_fpc__reals_iso}
program rf5(output);
var r: real; i: integer; b: boolean; c: char;
begin r := -1.5; i := 42; b := true; c := 'z'; writeln(r); writeln(r:12); writeln(r:12:3); writeln(i:6, b:7, c:3, 'ab':4) end.
{- 365 test_gate_pas_procedural_types_and_reals_written_per_dialect_answer_as_fpc__reals_objfpc}
{$mode objfpc}
program rf3;
var r: real; i: integer; b: boolean; c: char;
begin r := -1.5; i := 42; b := true; c := 'z'; writeln(r); writeln(r:12); writeln(r:12:3); writeln(i:6, b:7, c:3, 'ab':4) end.
{---------------------- 366 test_gate_pas_read_at_end_of_line_yields_a_space__g}
program eolc;
var ch: char; n: integer;
begin n := 0;
  while not eof(input) do begin read(input, ch); n := n + 1; write(ord(ch):4); if not eof(input) then write(eoln(input):6) end;
  writeln; writeln(n)
end.
{------------------ 367 test_gate_pas_readln_and_writeln_require_a_textfile__ok}
program textok(output);
var f: file of integer;
    t: text;
    x: integer; s: char;
begin
   rewrite(f); write(f, 11); write(f, 22); reset(f);
   read(f, x); writeln('typed read: ', x:1);
   read(f, x); writeln('typed read: ', x:1);
   rewrite(t); writeln(t, 'zq'); reset(t);
   read(t, s); writeln('text read: ', s);
   readln(t);
   writeln('done')
end.
{------------------- 368 test_gate_pas_real_record_fields_read_back_as_reals__g}
program realrec;
type valu = record case boolean of true: (ival: integer); false: (rval: real) end;
var q: record r: real; n: integer end; v: valu; s: real;
procedure p;
var r: record case boolean of true: (r: real); false: (b: packed array [1..8] of 0..255) end;
begin r.r := 1.5; writeln(r.r:6:2) end;
begin
  q.r := 2.5; q.n := 3; s := q.r * 2;
  writeln(s:6:2); writeln(q.r:6:2, q.n);
  v.rval := 0.25; writeln(v.rval:8:3); v.ival := 7; writeln(v.ival);
  p
end.
{---------- 369 test_gate_pas_record_variables_are_scoped_to_their_procedure__s}
program sc(output);
var
  r: record a: integer; b: integer end;
  seen: integer;

procedure first;
var r: record case boolean of
          true:  (i: integer);
          false: (c: char)
       end;
begin
  r.i := 11;
  writeln('first ', r.i:1)
end;

procedure second;
var r: record r: real; n: integer end;
begin
  r.r := 2.5;
  r.n := 22;
  writeln('second ', r.r:6:2, ' ', r.n:1)
end;

procedure third;
var r: record a: char; b: char end;
begin
  r.a := 'x';
  r.b := 'y';
  writeln('third ', r.a, r.b)
end;

begin
  r.a := 1;
  r.b := 2;
  first;
  second;
  third;
  seen := r.a + r.b;
  writeln('outer ', r.a:1, ' ', r.b:1, ' sum ', seen:1)
end.
{----------------- 370 test_gate_pas_set_constructor_takes_a_subrange_member__g}
program setrange;
type sym = (a, b, c, d, e, f);
var letters: set of char; nums: set of 0..20; syms: set of sym; lo, hi, i: integer; ch: char; n: integer;
begin
  letters := ['A'..'Z', 'x'];
  nums := [1..3, 7, 9..10];
  syms := [b..d, f];
  lo := 12; hi := 15; nums := nums + [lo..hi];
  n := 0; for ch := 'A' to 'z' do if ch in letters then n := n + 1; writeln(n);
  n := 0; for i := 0 to 20 do if i in nums then n := n + 1; writeln(n);
  if (b in syms) and (c in syms) and not (a in syms) and not (e in syms) and (f in syms) then writeln('syms ok') else writeln('syms bad');
  if [2..3] <= nums then writeln('sub ok') else writeln('sub bad');
  if ['a'..'c'] * letters = [] then writeln('empty ok') else writeln('empty bad');
  hi := 2; if [lo..hi] = [] then writeln('rev ok') else writeln('rev bad')
end.
{--------------- 371 test_gate_pas_set_symmetric_difference_operator__isosymdif}
program isosymdif(output);
type t = set of 0..9;
var a, b, c: t; i: integer;
begin
  a := [1, 2, 3, 5]; b := [2, 3, 4, 8];
  c := a >< b;
  for i := 0 to 9 do if i in c then write(i:2);
  writeln;
  c := (a >< b) >< [1, 9] + [0];
  for i := 0 to 9 do if i in c then write(i:2);
  writeln
end.
{--------- 372 test_gate_pas_setlength_resizes_a_string_to_the_new_length__grow}
{$mode objfpc}
program grow(output);
var s: string;
begin
  s := 'hi';
  writeln(Length(s));
  SetLength(s, 9);
  writeln(Length(s))
end.
{------- 373 test_gate_pas_setlength_resizes_a_string_to_the_new_length__shrink}
{$mode objfpc}
program shrink(output);
var s: string;
begin
  s := 'hello world';
  SetLength(s, 5);
  writeln(s);
  writeln(Length(s))
end.
{------ 374 test_gate_pas_setlength_resizes_a_string_to_the_new_length__widewit}
{$mode objfpc}{H+}
program widewit(output);
var w: WideString;
begin
  w := '123456';
  SetLength(w, 6);
  writeln(Length(w))
end.
{- 375 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__bools}
{$mode fpc}
program p;
var b: boolean;
begin b := 3 > 2; writeln(b, ' ', true, ' ', 1 <> 2) end.
{- 376 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__bools_objfpc}
{$mode objfpc}
program p;
begin writeln(true, ' ', false:7, ' ', 1 < 2) end.
{- 377 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__bounds}
program bd(output);
const n = 10; m = 3;
type r = 0 .. n - 1; t = array [0 .. (n - 1) div 2] of integer; u = array [-m .. m * 2 + 1] of char; w = array [1 .. n mod 4 + 2] of integer;
  e = (red, green, blue); s = red .. blue; c = 'a' .. 'e';
var x: r; a: t; b: u; q: w; y: s; z: c; k: integer;
begin
  x := 9; a[4] := 1; b[-3] := 'q'; b[7] := 'z'; q[4] := 5; y := blue; z := 'd';
  writeln(x, a[4], high(a), ' ', low(u), ' ', high(u), b[-3], b[7], ' ', high(q), q[4], ' ', ord(y), z);
  for k := 1 to 3 do case k * 2 of 2: write('two'); n - 6: write('four'); m * 2: write('six') end; writeln
end.
{- 378 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__caseranges}
program cr(output);
var c: char;
begin for c := 'a' to 'e' do case c of 'a'..'b': write('L'); 'c', 'd'..'e': write('H') end; writeln end.
{- 379 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__dotted}
program dn.pas;
begin writeln('x') end.
{- 380 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__forin}
program fi3(output);
type e = (r, g, b);
var s: set of e; x: e; c: char; t, k: integer; a: array [3..5] of integer; d: array of integer; cs: set of char; str: packed array [1..3] of char;
begin
  s := [r, b]; t := 0; for x in s do t := t + ord(x); writeln(t);
  for c in 'abc' do write(c); writeln;
  a[3] := 1; a[4] := 2; a[5] := 3; t := 0; for k in a do t := t * 10 + k; writeln(t);
  setlength(d, 3); d[0] := 7; d[1] := 8; d[2] := 9; for k in d do write(k); writeln;
  cs := ['x', 'b', 'm']; for c in cs do write(c); writeln;
  str := 'pqr'; for c in str do write(c, '.'); writeln;
  for k in a do begin if k = 2 then continue; write(k) end; writeln
end.
{- 381 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__headless}
var a: integer;
begin a := 10; writeln(a) end.
{- 382 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__quotes}
program q(output);
begin writeln('it''s', ' ', 'it''s'#33, ' ', 'a', 'b') end.
{- 383 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__shifts}
{$mode fpc}
program p;
var a: integer; b: boolean;
begin a := 10; b := true xor false; writeln(a shr 1, ' ', a shl 2, ' ', a xor 3, ' ', b, ' ', (a shr 1) and 1, ' ', 1 shl 30, ' ', a xor a xor 7) end.
{- 384 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__strings}
program sc(output);
const nl = 'a'#66'c'; t = #$41#$42;
begin writeln(nl, ' ', t, ' ', 'x'#9'y', length('ab'#13#10)) end.
{----------------- 385 test_gate_pas_sizeof_of_an_array_element_folds__elemsize}
program elemsize;
{$mode objfpc}
type TIA = array of int64;
var g: array of integer; s: array [1..4] of word; t: TIA; r: array [0..2] of real; b: array of byte; i: integer;
begin
  setlength(g, 5); setlength(t, 4); setlength(b, 1);
  writeln(SizeOf(g[0]), ' ', SizeOf(s[1]), ' ', SizeOf(t[0]), ' ', SizeOf(r[2]), ' ', SizeOf(b[0]), ' ', SizeOf(s), ' ', SizeOf(integer));
  for i := 0 to 4 do g[i] := i + 1; fillchar(g[0], length(g) * SizeOf(g[0]), #0); writeln(g[0], g[4]);
  for i := 0 to 3 do t[i] := 9; fillchar(t[1], 2 * SizeOf(t[0]), 0); for i := 0 to 3 do write(t[i]); writeln
end.
{- 386 test_gate_pas_sizeof_of_an_array_or_an_empty_record_is_its_byte_count__arr}
{$mode objfpc}
program arr(output);
type small = 0..9; wide = 0..1000; neg = -5..5; vec = array[1..4] of longint;
var a: array[0..15] of longint; b: array[1..7] of byte; c: packed array[0..3] of char; d: array[1..3] of word;
    e: array[1..5] of small; f: array[0..3] of wide; g: array[1..6] of neg; v: vec; m: array[2..4] of array[1..5] of word;
    n: array[1..3] of vec; q: array[0..9] of boolean;
begin
  writeln(sizeof(a), ' ', sizeof(b), ' ', sizeof(c), ' ', sizeof(d), ' ', sizeof(e), ' ', sizeof(f), ' ', sizeof(g));
  writeln(sizeof(v), ' ', sizeof(vec), ' ', sizeof(m), ' ', sizeof(n), ' ', sizeof(q))
end.
{- 387 test_gate_pas_sizeof_of_an_array_or_an_empty_record_is_its_byte_count__empty}
{$mode macpas}
program empty(output);
type tr = record end;
     tp = packed record i: tr; end;
var e: tr; p: tp; a: array[0..15] of tp; pa: packed array[0..15] of tp; b: array[1..3] of tr;
begin
  pack(a, 0, pa);
  writeln(sizeof(tr), ' ', sizeof(e), ' ', sizeof(tp), ' ', sizeof(p), ' ', sizeof(a), ' ', sizeof(pa), ' ', sizeof(b))
end.
{- 388 test_gate_pas_sizeof_of_an_array_or_an_empty_record_is_its_byte_count__rec}
{$mode objfpc}
program rec(output);
type t2 = record a: byte; b: longint; end;
     tpk = packed record a: byte; b: longint; end;
     arr3 = array[1..3] of t2;
var x: array[1..3] of t2; y: array[0..4] of tpk; z: arr3; w: array[1..2] of arr3;
begin
  writeln(sizeof(t2), ' ', sizeof(tpk), ' ', sizeof(x), ' ', sizeof(y), ' ', sizeof(z), ' ', sizeof(arr3), ' ', sizeof(w))
end.
{- 389 test_gate_pas_string_plus_concatenates_and_a_one_character_literal_is_a_string_where_a_string_is_wanted__tctl}
{$mode objfpc}
program tctl;
type r = record a: integer; b: string; c: char; p: ansistring end;
     pr = ^r;
var s, u: string; c: char; x: r; p: pr; a: array[1..2] of r; n: integer; cs: set of char;
function f(a: string): string; begin f := a + '!' end;
function g(a: integer): string; begin g := 'n' end;
function h(c: char): string; begin h := c end;
procedure show(a: string; b: string); begin writeln(a, '/', b, length(a)) end;
begin
  s := 'ab'; s := s + 'x'; writeln(s);
  s := s + s; writeln(s, length(s));
  c := 'z'; u := 'ab'; u := u + c; writeln(u);
  u := 'x' + u; writeln(u);
  u := 'ab' + 'cd' + 'ef'; writeln(u);
  c := 'a'; u := c + 'b'; writeln(u);
  writeln('a' + 'b');
  x.b := 'q'; writeln(x.b); x.b := x.b + 'r'; writeln(x.b);
  x.p := 'a'; writeln(x.p);
  new(p); p^.b := 'w'; writeln(p^.b);
  a[2].b := 'm'; writeln(a[2].b);
  with x do begin b := 'y'; c := 'z'; writeln(b, c) end;
  c := 'k'; x.b := c; writeln(x.b);
  writeln(f('a') + f('b'));
  writeln(g(1) + g(2), length(f('abc')));
  c := 'w'; writeln(h(c) + h('v'));
  show(c, 'z'); show('p', 'qq');
  if s + 'y' = 'ababx' + 'y' then writeln('eq');
  n := 3; writeln(n + 4);
  cs := ['a'..'c']; cs := cs + ['x']; if 'x' in cs then writeln('in')
end.
{- 390 test_gate_pas_string_plus_concatenates_and_a_one_character_literal_is_a_string_where_a_string_is_wanted__tshadow}
{$mode objfpc}
program tshadow;
var a: array[1..3] of string; i: integer;
procedure loc;
var a: array[1..2] of string;
begin
  a[1] := 'xy'; a[2] := 'z';
  writeln(length(a), ' ', length(a[1]), ' ', a[1] + a[2]);
end;
function sh(a: string): integer; begin sh := length(a) end;
function sc(a: string): string; begin sc := a + '!' end;
begin
  a[1] := 'abc'; a[2] := 'de'; a[3] := 'f';
  writeln(length(a), ' ', length(a[2]), ' ', a[1] + a[3]);
  for i := 1 to 3 do write(length(a[i]));
  writeln;
  if a[2] = 'de' then writeln('eq');
  loc;
  writeln(sh('hello'), ' ', sc('q'));
end.
{---------------- 391 test_gate_pas_succ_and_pred_keep_their_arguments_type__ok}
program succtype(output);
const first = 'a';
var c, d: char; b: boolean; n: integer;
begin
  c := 'b'; b := false;
  writeln(succ(c), pred(c), ' ', succ(b), ' ', pred(true), ' ', succ('x'), ' ', succ(first));
  d := pred(c); if succ(c) = 'c' then writeln('succ compares as a char ', d);
  n := 0; c := 'a'; while c < 'e' do begin c := succ(c); n := n + 1 end;
  writeln(n:1, ' ', c, ' ', ord(succ(c)):1, ' ', ord(pred(true)):1, ' ', succ(b) and true)
end.
{- 392 test_gate_pas_sysutils_and_strutils_string_routines_answer_as_fpc__rtlstr}
program rtlstr;
{$mode objfpc}
uses sysutils, strutils;
begin
  writeln(StrToIntDef('42', 7), ' ', StrToIntDef('4x2', 7), ' ', StrToIntDef('', -1), ' ', StrToIntDef(' -15', 0), ' ', StrToIntDef('$1F', 0));
  writeln(CompareText('abc', 'ABD') < 0, ' ', CompareText('Hello', 'hello'), ' ', SameText('Pascal', 'PASCAL'), ' ', SameText('a', 'b'), ' ', CompareText('abcd', 'ABC') > 0);
  writeln(QuotedStr('it''s'), ' ', QuotedStr(''), ' ', QuotedStr('x'));
  writeln(PosEx('a', 'banana', 3), ' ', PosEx('na', 'banana', 4), ' ', PosEx('z', 'banana', 1), ' ', PosEx('b', 'banana', 0));
  writeln(LeftStr('Pascal', 3), '|', RightStr('Pascal', 3), '|', MidStr('Pascal', 2, 3), '|', RightStr('ab', 5), '|', LeftStr('ab', 0), '|')
end.
{- 393 test_gate_pas_sysutils_now_date_time_and_the_tick_counters_answer_in_range__clocks}
program clocks;
{$mode objfpc}
uses sysutils;
var t0, t1: TDateTime; a, b: int64; d: double; ok: boolean;
begin
  t0 := Now; a := GetTickCount64; b := GetTickCount;
  d := Date; t1 := Time;
  ok := (t0 > 45000) and (t0 < 80000) and (d <= t0) and (d = trunc(d)) and (t1 >= 0) and (t1 < 1) and (a >= 0) and (b >= 0) and (Now >= t0);
  writeln(ok, ' ', GetTickCount64 >= a, ' ', Now - t0 < 1)
end.
{- 394 test_gate_pas_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__args}
{$mode objfpc}
program args(output);
var k: longint;
function f8(a, b, c, d, e, f, g, h: longint; x: double; var y: longint): double;
begin y := y + a + b + c + d + e + f + g + h; f8 := x * (a + h) end;
procedure noargs; begin writeln('noargs') end;
procedure leave(n: longint);
begin
  if n = 3 then exit;
  writeln('leave ', n);
  leave(n + 1);
  writeln('back ', n)
end;
function ex(n: longint): longint;
begin
  ex := -1;
  if n > 5 then exit;
  ex := n * 10
end;
begin
  k := 0;
  writeln(f8(1,2,3,4,5,6,7,8, 1.5, k):0:2, ' ', k);
  noargs; noargs;
  writeln(ex(3), ' ', ex(9));
  leave(0);
  writeln('done')
end.
{- 395 test_gate_pas_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__census}
program census(output);
var r: longint;
function f(n: longint): longint;
begin
  if n < 2 then f := n else f := f(n - 1) + f(n - 2)
end;
begin
  r := f(15);
  writeln(r)
end.
{- 396 test_gate_pas_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__nest}
{$mode objfpc}
program nest(output);
var total: longint;
procedure l1(a1: longint; var r: longint);
  var v1: longint;
  procedure l2(a2: longint);
    var v2: longint;
    procedure l3(a3: longint);
      var v3: longint;
      procedure l4(a4: longint);
        var v4: longint;
        procedure l5(a5: longint);
          var v5: longint;
          procedure l6(a6: longint);
          begin
            r := r + a1 + v1 + a2 + v2 + a3 + v3 + a4 + v4 + a5 + v5 + a6;
            writeln('l6 ', r)
          end;
        begin v5 := 50; l6(6); l6(60) end;
      begin v4 := 40; l5(5) end;
    begin v3 := 30; l4(4) end;
  begin v2 := 20; l3(3) end;
begin v1 := 10; l2(2) end;
begin
  total := 0;
  l1(1, total); writeln(total);
  l1(100, total); writeln(total)
end.
{- 397 test_gate_pas_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__pproc}
{$mode macpas}
program pproc;

  procedure p1( procedure pp);
  begin
    pp
  end;

  procedure p2( procedure pp);
  begin
    p1( pp)
  end;

  procedure n;
  begin
    writeln( 'calling through n')
  end;

  procedure q;
  var qi: longint;

    procedure r;
    begin
      if qi = 1 then
        writeln( 'success for r')
      else
        begin
        writeln( 'fail');
        halt( 1)
      end
    end;

  begin
    qi:= 1;
    p1( r);
    p2( r);
    p1( n);
    p2( n);
  end;

begin
	q
end.
{- 398 test_gate_pas_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__rec}
{$mode objfpc}
program rec(output);
type pn = ^node; node = record v: longint; nx: pn end;
var n, t: longint;
function ack(m, n: longint): longint;
begin
  if m = 0 then ack := n + 1
  else if n = 0 then ack := ack(m - 1, 1)
  else ack := ack(m - 1, ack(m, n - 1))
end;
function build(d: longint): pn;
var p: pn;
begin
  if d = 0 then build := nil
  else begin new(p); p^.v := d; p^.nx := build(d - 1); build := p end
end;
function sum(p: pn): longint;
begin if p = nil then sum := 0 else sum := p^.v + sum(p^.nx) end;
function isodd(k: longint): boolean; forward;
function iseven(k: longint): boolean;
begin if k = 0 then iseven := true else iseven := isodd(k - 1) end;
function isodd(k: longint): boolean;
begin if k = 0 then isodd := false else isodd := iseven(k - 1) end;
begin
  writeln(ack(2, 3), ' ', ack(3, 4));
  t := 0; n := 0;
  while n < 4000 do begin t := t + sum(build(60)); n := n + 1 end;
  writeln(t);
  if iseven(100) then writeln('even') else writeln('odd');
  if isodd(7) then writeln('odd7') else writeln('even7')
end.
{----------- 399 test_gate_pas_the_c_parser_builds_the_pruned_parse_tree__prune}
program prune(output);
var i: integer; r: real; a: array[1..3] of integer;
procedure p(n: integer; var x: real);
var loc: integer; v: real;
begin loc := n; v := loc / 2; x := v end;
begin i := 1; r := 0.0; a[2] := 7; p(i, r); writeln(r:6:2, a[2]:3) end.
{- 400 test_gate_pas_the_classes_unit_tstringlist_and_tlist_answer_as_fpc__stringlists}
program stringlists;
{$mode objfpc}
uses sysutils, classes;
function ByLength(List: TStringList; I1, I2: Integer): Integer;
begin
  Result := Length(List[I1]) - Length(List[I2])
end;
function Desc(Item1, Item2: Pointer): Integer;
begin
  Result := 0
end;
var
  s, t: TStringList; l: TList; a, b, c: integer; i, idx: integer; found: boolean;
begin
  s := TStringList.Create;
  s.Add('pear'); s.Add('fig'); s.Add('banana'); s.Add('kiwis'); s.Add('Zebra123'); s.Add('apple12');
  s.CustomSort(@ByLength);
  for i := 0 to s.Count - 1 do write(s[i], ' '); writeln;
  s.Sort; for i := 0 to s.Count - 1 do write(s[i], ' '); writeln;
  s.CaseSensitive := true; s.Sort; for i := 0 to s.Count - 1 do write(s[i], ' '); writeln;
  s.Exchange(0, 5); s.Move(1, 3); writeln(s.Text);
  s.Text := 'one' + #10 + 'two' + #13#10 + 'three' + #10; writeln(s.Count, ' ', s[2], ' ', s.IndexOf('two'));
  s.Clear;
  s.CommaText := 'a, "b c",d,,e'; writeln(s.Count, '|', s[1], '|', s[3], '|', s.CommaText, '|', s.DelimitedText);
  s.StrictDelimiter := true; s.Delimiter := ';'; s.DelimitedText := ' x ; y;z'; writeln(s.Count, '[', s[0], '][', s[1], ']');
  s.Clear; s.Values['k1'] := 'v1'; s.Values['k2'] := 'v2'; s.Values['k1'] := 'w'; writeln(s.Text, s.Values['k2'], s.Names[1], s.IndexOfName('k2'), s.ValueFromIndex[0]);
  s.Clear; s.Sorted := true; s.Duplicates := dupIgnore;
  s.Add('m'); s.Add('c'); s.Add('x'); s.Add('c'); found := s.Find('x', idx); writeln(s.Count, ' ', found, ' ', idx, ' ', s.IndexOf('m'), ' ', s.Text);
  t := TStringList.Create; t.Assign(s); t.Sorted := false; t.Add('end'); writeln(t.Count, ' ', t.Equals(s), ' ', s.Equals(s));
  try s[9] := 'q'; except on E: Exception do writeln('err ', E.Message) end;
  try writeln(t[7]) except on E: Exception do writeln('err ', E.Message) end;
  l := TList.Create;
  l.Add(@a); l.Add(@c); l.Insert(1, @b);
  writeln(l.Count, ' ', l.IndexOf(@b), ' ', l.IndexOf(@c), ' ', l.Remove(@a), ' ', l.Count, ' ', l.IndexOf(@a));
  l.Exchange(0, 1); writeln(l.IndexOf(@b), ' ', l.First = Pointer(@c), ' ', l.Last = Pointer(@b));
  l.Delete(0); l.Clear; writeln(l.Count);
  l.Free; t.Free; s.Free
end.
{- 401 test_gate_pas_the_classes_unit_tstringlist_and_tlist_answer_as_fpc__tokenizing}
program tokenizing;
{$mode objfpc}
uses sysutils, classes;
var t: TStringList; i: integer;
begin
  t := TStringList.Create;
  t.Delimiter := ',';
  t.DelimitedText := 'Hello,How,Are,You,Today';
  t.Delimiter := '.';
  writeln(Format('to: "%s"', [t.DelimitedText]), ' ', t.Count);
  t.Add('banana'); t.Add('Apple'); t.Add('cherry'); t.Add('apple');
  t.Sort;
  for i := 0 to t.Count - 1 do write(t[i], ';'); writeln;
  writeln(t.IndexOf('CHERRY'), ' ', t.IndexOf('zzz'));
  t.Append('tail'); t.Delete(0); t.Insert(1, 'mid'); writeln(t.Text);
  t.Sorted := true; t.Duplicates := dupIgnore; t.Add('mid'); t.Add('zed'); writeln(t.CommaText, ' ', t.Count);
  t.Free
end.
{- 402 test_gate_pas_the_dialect_switch_stands_in_for_a_mode_directive_the_source_lacks__dswfn}
program dswfn;
var glob: integer;
function countchars: integer;
begin
  countchars := 255;
  if glob = 5 then countchars := 0
  else begin inc(glob); countchars := 1 + countchars end
end;
begin
  glob := 0;
  writeln(countchars)
end.
{- 403 test_gate_pas_the_dialect_switch_stands_in_for_a_mode_directive_the_source_lacks__dswvar}
program dswvar;
procedure hello;
begin
  writeln('hello')
end;
var x: UInt64; i: integer;
begin
  hello;
  x := 5;
  for i := 1 to 3 do x := x * 2;
  writeln(x)
end.
{------ 404 test_gate_pas_the_input_buffer_variable_is_the_next_character__peek}
program peek(input, output);
var c, d, e: char;
begin
  c := input^; e := input^; read(d);
  writeln('peek=', c, ' again=', e, ' read=', d, ' same=', c = d);
  c := input^; read(d); writeln('peek=', c, ' read=', d, ' same=', c = d)
end.
{------ 405 test_gate_pas_the_input_buffer_variable_is_the_next_character__walk}
program walk(input, output);
var c: char; n: integer;
begin
  n := 0;
  while not eof(input) do
    begin
      write('[', ord(input^):1, ']');
      if eoln(input) then begin readln; writeln(' eol') end else read(c);
      n := n + 1
    end;
  writeln(n:1)
end.
{- 406 test_gate_pas_the_tag_of_a_variable_passed_by_reference_is_not_changed_during_the_call__ctl}
program ctl(output);
type r = record n: integer; case val: boolean of true: (i: integer); false: (c: char) end;
var a: r;
procedure inc1(var i: integer); begin i := i + 1 end;
procedure same(var i: integer); begin a.val := true; i := i + 10 end;
function twice(var i: integer): integer; begin i := i * 2; twice := i end;
begin
  a.n := 1; a.val := true; a.i := 5;
  inc1(a.i); writeln(a.i);
  same(a.i); writeln(a.i);
  inc1(a.n); writeln(a.n);
  writeln(twice(a.n), ' ', a.n);
  a.val := false; a.val := true; a.i := 3; writeln(a.i)
end.
{- 407 test_gate_pas_the_tag_of_a_variable_passed_by_reference_is_not_changed_during_the_call__vtag}
program vtag(output);
var a: record case val: boolean of true: (i: integer); false: (c: char) end;
procedure b(var i: integer); begin a.val := false; i := 1 end;
begin writeln('before'); a.val := true; b(a.i); writeln('after') end.
{- 408 test_gate_pas_the_tag_of_a_variable_passed_by_reference_is_not_changed_during_the_call__vtag2}
program vtag2(output);
var a: record case val: boolean of true: (i: integer); false: (c: char) end;
procedure b(var i: integer); begin a.val := false end;
begin writeln('before'); a.val := true; b(a.i); writeln('after') end.
{- 409 test_gate_pas_the_tag_of_a_variable_passed_by_reference_is_not_changed_during_the_call__vtag3}
program vtag3(output);
type r = record case val: boolean of true: (i: integer); false: (c: char) end;
var a: r;
procedure b(var x: r; var i: integer); begin x.val := false; i := 1 end;
begin writeln('before'); a.val := true; b(a, a.i); writeln('after') end.
{- 410 test_gate_pas_two_routines_of_one_name_get_distinct_assembler_labels__nest}
{$mode delphi}
program nest(output);
procedure Test;
  function Next: integer;
    function Next: integer;
      function Next: integer;
      var
        Next: integer;
      begin
      end;
    begin
    end;
  begin
  end;
begin
end;
begin
  writeln('ok')
end.
{- 411 test_gate_pas_two_routines_of_one_name_get_distinct_assembler_labels__over}
{$mode objfpc}
program over(output);
procedure Test(aArg: LongInt);
begin
end;
function Test(aArg: LongInt): LongInt;
begin
  Test := aArg
end;
begin
  writeln('ok')
end.
{------------------- 412 test_gate_pas_typed_files_read_and_write_components__g}
program typedfile;
type byte = 0..255; bytfil = packed file of byte;
     rec = record k: integer; c: char end;
var fi: file of integer; fb: bytfil; fr: file of rec;
    i, n, s: integer; b: byte; r: rec;
begin
  rewrite(fi); for i := 1 to 5 do write(fi, i * i);
  reset(fi); s := 0; n := 0;
  while not eof(fi) do begin read(fi, i); s := s + i; n := n + 1 end;
  writeln(n, s);
  rewrite(fb); for i := 250 to 255 do begin fb^ := i; put(fb) end;
  reset(fb); n := 0; s := 0;
  while not eof(fb) do begin b := fb^; get(fb); s := s + b; n := n + 1 end;
  writeln(n, s);
  rewrite(fr); r.k := 7; r.c := 'q'; write(fr, r); r.k := 9; r.c := 'z'; write(fr, r);
  reset(fr); read(fr, r); writeln(r.k, ' ', r.c); read(fr, r); writeln(r.k, ' ', r.c);
  if eof(fr) then writeln('eof ok') else writeln('eof bad')
end.
{- 413 test_gate_pas_under_overflow_checking_an_unsigned_sum_that_goes_negative_is_runtime_error_215__diff}
{$MODE ISO}
{$Q+}
program diff(input, output);
var a, b: byte;
begin
  a := 1; b := 2; writeln(a-b)
end.
{- 414 test_gate_pas_under_overflow_checking_an_unsigned_sum_that_goes_negative_is_runtime_error_215__neg}
{$MODE ISO}
{$Q+}
program neg(input, output);
type halfword = 0..65535;
var a, b: halfword;
begin
  a := 4095; b := 4096; writeln('go');
  if abs(int(a+b-8192)) < 4096 then halt(0) else halt(1)
end.
{- 415 test_gate_pas_under_overflow_checking_an_unsigned_sum_that_goes_negative_is_runtime_error_215__pos}
{$MODE ISO}
{$Q+}
program pos(input, output);
var a, b: word;
begin
  a := 7; b := 9; writeln(a+b-3)
end.
{- 416 test_gate_pas_under_overflow_checking_an_unsigned_sum_that_goes_negative_is_runtime_error_215__signed}
{$MODE ISO}
{$Q+}
program signed(input, output);
var a, b: longint;
begin
  a := 1; b := 2; writeln(a+b-8)
end.
{----------------------- 417 test_gate_pas_uplevel_var_parameter_writes_back__g}
program upref;
type ctp = ^rec; rec = record idtype: integer end;
var g: integer;
procedure statement;
var lcp: ctp; n: integer;
  procedure searchid(k: integer; var fcp: ctp);
  begin new(fcp); fcp^.idtype := k end;
  procedure setn(var x: integer);
  begin x := 42 end;
  procedure forstatement;
  begin searchid(7, lcp); setn(n); writeln(lcp^.idtype, n) end;
begin lcp := nil; n := 0; forstatement; writeln(n) end;
begin statement end.
{---------------------------- 418 test_gate_pas_uses_and_units_answer_as_fpc__k}
program k(output);
var unit, interface, implementation, initialization, finalization, uses: integer;
begin
  unit := 1; interface := 2; implementation := 3; initialization := 4; finalization := 5; uses := 6;
  writeln(unit + interface + implementation + initialization + finalization + uses)
end.
{- 419 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__defaults_objfpc}
{$mode objfpc}
program dp3;
const K = 7;
type TV = record x, y, z: integer end;
var a: array [1..3] of integer = (4, 5, 6); v: TV = (x: 3; y: 4; z: 5); m: array [0..1, 0..1] of integer = ((1, 2), (3, 4));
procedure p(n: integer = 5; s: integer = K * 2); begin writeln(n, ' ', s) end;
function f(base: integer = 10): integer; inline; begin f := base * 2 end;
procedure q(); begin writeln('q') end;
begin p; p(1); p(1, 2); writeln(f, ' ', f(3)); q(); writeln(a[3], v.y, m[1, 0]) end.
{- 420 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__emptyparens}
program ep(output);
procedure p(); begin writeln('p') end;
function f(): integer; begin f := 3 end;
begin p(); writeln(f()) end.
{- 421 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__exitval}
program ex(output);
function f(n: integer): integer; begin if n > 0 then exit(n * 2); f := 0 end;
begin writeln(f(3), f(-1)) end.
{- 422 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__label_iso}
program lb2(output);
label up, 10, done;
var i: integer;
procedure p; label inner; var k: integer; begin k := 0; inner: k := k + 1; if k < 3 then goto inner; writeln('p', k) end;
begin i := 0; up: i := i + 1; if i < 3 then goto up; 10: writeln(i); p; goto done; writeln('skipped'); done: writeln('end') end.
{- 423 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__labels_fpc}
{$mode fpc}
program lb2f;
label up, 10, done;
var i: integer;
procedure p; label inner; var k: integer; begin k := 0; inner: k := k + 1; if k < 3 then goto inner; writeln('p', k) end;
begin i := 0; up: i := i + 1; if i < 3 then goto up; 10: writeln(i); p; goto done; writeln('skipped'); done: writeln('end') end.
{- 424 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__power}
{$mode objfpc}
program pw;
uses math;
var n: integer; x: real;
begin
  n := 3; x := 2.0;
  writeln(n ** 2, ' ', 2 ** 10, ' ', (x ** 3):0:2, ' ', -2 ** 2, ' ', 2 ** 3 ** 2, ' ', (n mod 10) ** 2, ' ', (2.0 ** 0.5):0:6)
end.
{- 425 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__prt1760}
program prt1760(output);
label skip;
begin goto skip; writeln('*** Should not execute this'); skip: writeln('At label') end.
{- 426 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__varagg}
program vi(output);
var a: array [1..3] of integer = (4, 5, 6);
begin writeln(a[2]) end.
{---------------- 427 test_gate_pas_variant_arms_overlay_the_same_storage__anon}
program anon(output);
var r: record k: integer; case integer of 1: (a: integer); 2: (b: 0..99); end;
begin
  r.k := 1; r.a := 0; r.b := 42;
  writeln(r.k, ' ', r.a);
  r.a := 17;
  writeln(r.b)
end.
{----------------- 428 test_gate_pas_variant_arms_overlay_the_same_storage__arr}
program arr(output);
type e1 = (a0, a1, a2);
     t = record n: integer; case integer of 1: (f1: e1); 2: (f2: 0..2); end;
var v: array[1..3] of t; i: integer;
begin
  for i := 1 to 3 do begin v[i].n := i; v[i].f1 := a0; v[i].f2 := i - 1 end;
  for i := 1 to 3 do writeln(v[i].n, ' ', v[i].f2, ' ', ord(v[i].f1))
end.
{---------------- 429 test_gate_pas_variant_arms_overlay_the_same_storage__enum}
program enum(output);
type e1 = (a0, a1, a2, a3, a4);
     r1 = 0..4;
     t1 = packed record case integer of 1: (f1: e1); 2: (f2: r1); end;
     t2 = record case integer of 1: (g1: e1); 2: (g2: r1); end;
var v: t1; w: t2;
begin
  v.f1 := a0; v.f2 := 4;
  if v.f1 = a4 then writeln('packed ok') else writeln('packed failed');
  w.g1 := a0; w.g2 := 2;
  if w.g1 = a2 then writeln('unpacked ok') else writeln('unpacked failed');
  w.g1 := a3;
  writeln(w.g2);
  if w.g2 = 3 then writeln('back ok')
end.
{----------------- 430 test_gate_pas_variant_arms_overlay_the_same_storage__int}
program int(output);
type t = record case boolean of true: (whole: integer); false: (small: 0..9); end;
var x: t;
begin
  x.whole := 0; x.small := 5;
  writeln(x.whole);
  x.whole := 7;
  writeln(x.small)
end.
{---------------- 431 test_gate_pas_variant_arms_overlay_the_same_storage__nest}
program nest(output);
type t = record
       case integer of
         1: (p: integer);
         2: (q: 0..9; case boolean of true: (u: integer); false: (w: 0..5));
     end;
var v: t;
begin
  v.p := 0; v.q := 8;
  writeln(v.p);
  v.u := 0; v.w := 3;
  writeln(v.u)
end.
{---------------- 432 test_gate_pas_variant_arms_overlay_the_same_storage__with}
program withs(output);
type e1 = (a0, a1, a2);
     t = record case integer of 1: (f1: e1); 2: (f2: 0..2); end;
var v: t;
begin
  with v do begin
    f1 := a0; f2 := 2;
    if f1 = a2 then writeln('with ok') else writeln('with failed');
    f1 := a1;
    writeln(f2)
  end
end.
{- 433 test_gate_pas_variant_record_arms_share_one_byte_storage_as_fpc_overlays_them__ftag}
program ftag(output);
type rl = record case t: boolean of true: (r: real); false: (i, j: integer) end;
var x: rl; k: integer;
begin
  x.t := true; x.r := 1.0;
  writeln('before');
  x.i := 5;
  writeln('after')
end.
{- 434 test_gate_pas_variant_record_arms_share_one_byte_storage_as_fpc_overlays_them__fund}
program fund(output);
type rl = record case t: boolean of true: (r: real); false: (i, j: integer) end;
var x: rl; k: integer;
begin
  x.t := true; x.r := 1.0; x.t := false;
  writeln('before');
  k := x.j;
  writeln('after')
end.
{- 435 test_gate_pas_variant_record_arms_share_one_byte_storage_as_fpc_overlays_them__tctl1}
program tctl1(output);
type
  byte = 0..255;
  wh = (crec, vrec, blck);
  rl = record case boolean of true: (r: real); false: (b: packed array [1..8] of byte) end;
  il = record case boolean of true: (i: integer); false: (b: packed array [1..4] of byte) end;
  pr = record case boolean of true: (r: real); false: (lo, hi: integer) end;
  ci = record case boolean of true: (i: integer); false: (c: char) end;
  bb = record case boolean of true: (f: boolean); false: (b: byte) end;
  sb = record case boolean of true: (s: set of 0..31); false: (b: packed array [1..4] of byte) end;
  rc = record fname: integer; case occur: wh of crec: (clev, cdspl: integer); vrec: (vdspl: integer); blck: () end;
var x: rl; y: il; z: pr; w: ci; v: bb; u: sb; d: array[1..3] of rc; k: integer; m: rc;
procedure bump(var n: integer); begin n := n + 1 end;
begin
  x.r := 6.5;
  for k := 1 to 8 do write(x.b[k]:4); writeln;
  for k := 1 to 8 do x.b[k] := 0; x.b[8] := 64; x.b[7] := 25;
  writeln(x.r:8:4);
  y.i := 258; for k := 1 to 4 do write(y.b[k]:4); writeln;
  y.b[1] := 255; y.b[2] := 0; y.b[3] := 0; y.b[4] := 0; writeln(y.i);
  z.r := 1.0; writeln(z.hi, ' ', z.lo);
  z.lo := 0; z.hi := 1073217536; writeln(z.r:8:4);
  w.i := 1; w.c := 'c'; writeln(w.i);
  w.i := 65; writeln(w.c);
  v.b := 1; writeln(v.f); v.f := false; writeln(v.b);
  u.s := [1, 5, 9]; for k := 1 to 4 do write(u.b[k]:4); writeln;
  u.b[1] := 3; u.b[2] := 0; u.b[3] := 0; u.b[4] := 128; writeln(0 in u.s, 1 in u.s, 2 in u.s, 31 in u.s);
  k := 2; d[k].fname := 7; d[k].occur := crec; d[k].clev := 5; d[k].cdspl := 123;
  writeln(d[k].fname, ' ', d[k].clev, ' ', d[k].cdspl);
  d[1].occur := vrec; d[1].vdspl := 99; writeln(d[1].vdspl, ' ', d[1].clev);
  m.occur := crec; m.clev := 3; m.cdspl := 77; writeln(m.clev, ' ', m.cdspl);
  with m do begin clev := 4; cdspl := 88; writeln(clev, ' ', cdspl) end;
  with d[k] do begin occur := vrec; vdspl := 11; writeln(vdspl, ' ', clev) end;
  y.i := 10; bump(y.i); bump(y.i); writeln(y.i, ' ', y.b[1]);
  m.clev := 40; bump(m.clev); writeln(m.clev);
end.
{- 436 test_gate_pas_variant_record_arms_share_one_byte_storage_as_fpc_overlays_them__tctl2}
program tctl2(output);
type
  byte = 0..255;
  ib = record case boolean of true: (r: real); false: (b: packed array [1..8] of byte) end;
  pib = ^ib;
  outer = record tag: integer; inner: ib; n: integer end;
  pw = record case boolean of true: (r: real); false: (b: packed array [1..8] of char) end;
var a: ib; p: pib; o: outer; c: pw; k: integer;
begin
  a.r := 6.5; for k := 1 to 8 do write(a.b[k]:4); writeln;
  new(p); p^.r := 6.5; for k := 1 to 8 do write(p^.b[k]:4); writeln;
  for k := 1 to 8 do p^.b[k] := 0; p^.b[8] := 64; p^.b[7] := 25; writeln(p^.r:8:4);
  o.tag := 1; o.inner.r := 6.5; o.n := 9; for k := 1 to 8 do write(o.inner.b[k]:4); writeln(' ', o.tag, ' ', o.n);
  o.inner.b[8] := 64; o.inner.b[7] := 0; writeln(o.inner.r:8:4);
  c.r := 1.0; for k := 1 to 8 do write(ord(c.b[k]):4); writeln;
end.
{- 437 test_gate_pas_variant_record_arms_share_one_byte_storage_as_fpc_overlays_them__tctl3}
program tctl3(output);
type wh = (crec, vrec, blck);
     rc = packed record
            fname: integer;
            case occur: wh of
              crec: (clev: integer; cdspl: integer);
              vrec: (vdspl: integer);
              blck: ()
          end;
var disp: array[0..3] of rc; top: integer; r: rc;
begin
  top := 2;
  disp[top].fname := 7;
  disp[top].occur := crec; disp[top].clev := 5; disp[top].cdspl := 123;
  writeln(disp[top].fname, ' ', disp[top].clev, ' ', disp[top].cdspl);
  disp[1].occur := vrec; disp[1].vdspl := 99;
  writeln(disp[1].vdspl);
  r.occur := crec; r.clev := 3; r.cdspl := 77;
  writeln(r.clev, ' ', r.cdspl);
  with disp[top] do begin occur := vrec; vdspl := 11; writeln(vdspl) end;
  with r do begin clev := 4; cdspl := 88; writeln(clev, ' ', cdspl) end;
end.
{- 438 test_gate_pas_variant_record_arms_share_one_byte_storage_as_fpc_overlays_them__tctl4}
program tctl4(output);
type
  kind = (ki, kr, kc, kb, ks);
  cell = record case kind of ki: (i: integer); kr: (r: real); kc: (c: char); kb: (b: boolean); ks: (s: set of 0..30) end;
var st: array[0..3] of cell; x: cell; n: integer; q: real; ch: char; f: boolean; ss: set of 0..30;
begin
  x.i := 17; n := x.i div 5 + x.i mod 5; writeln(n, ' ', x.i * 2 - 1, ' ', abs(-x.i), ' ', sqr(x.i), ' ', odd(x.i));
  if x.i > 10 then writeln('gt') else writeln('le');
  if (x.i >= 17) and (x.i <> 3) then writeln('ge');
  x.i := -x.i; writeln(x.i, ' ', abs(x.i));
  x.r := 7.5; q := x.r / 2.0; writeln(q:8:3, ' ', x.r * 2.0:8:3, ' ', x.r + 1.0:8:2, ' ', trunc(x.r), ' ', round(x.r), ' ', sqrt(x.r):8:4);
  if x.r > 2.5 then writeln('rgt'); if x.r = 7.5 then writeln('req');
  x.r := x.r / 3.0; writeln(x.r:10:6); x.r := -x.r; writeln(x.r:10:6, ' ', abs(x.r):10:6);
  x.c := 'k'; ch := x.c; writeln(ch, ' ', ord(x.c), ' ', succ(x.c), ' ', pred(x.c), ' ', chr(ord(x.c) + 1));
  if x.c = 'k' then writeln('ceq'); if x.c < 'z' then writeln('clt'); x.c := chr(ord(x.c) + 1); writeln(x.c);
  x.b := true; f := x.b; writeln(f, ' ', x.b and f, ' ', x.b or false);
  if x.b then writeln('bt'); if x.b then writeln('bnot') else writeln('bf');
  x.b := false; writeln(x.b); x.b := (n > 3); writeln(x.b);
  x.s := [1, 3, 5]; ss := x.s + [7]; writeln(5 in ss, ' ', 7 in x.s, ' ', 3 in x.s);
  x.s := x.s * [3, 5, 9]; for n := 0 to 10 do if n in x.s then write(n:2); writeln;
  x.s := x.s - [3]; for n := 0 to 10 do if n in x.s then write(n:2); writeln;
  ss := [5]; writeln(x.s = ss, ' ', x.s <= ss, ' ', x.s >= ss, ' ', x.s <> ss);
  x.s := []; writeln(x.s = []);
  st[2].i := 40; st[2].i := st[2].i + 2; st[3].r := st[2].i; writeln(st[2].i, ' ', st[3].r:8:2);
  for n := 0 to 3 do begin st[n].i := n * 10; end; n := 0; while st[n].i < 25 do n := n + 1; writeln(n);
  st[1].c := 'a'; st[1].c := succ(st[1].c); writeln(st[1].c);
  st[0].b := true; st[0].b := st[0].b and (st[1].c = 'b'); writeln(st[0].b);
end.
{---- 439 test_gate_pas_what_fpc_miso_accepts_beyond_iso_answers_as_fpc__assign}
program assign(output);
var s: integer; r: real; c: ansichar; a: array [1..3] of integer;
function f: integer; begin f := 41 end;
begin
  s := 1; s += 2; s -= 1; s *= 5; r := 9.0; r /= 2; a[2] := 3; a[2] += 4;
  writeln(s, ' ', r:0:2, ' ', a[2], ' ', f() + 1); writeln(); c := 'z'; writeln(c, ord(c))
end.
{------ 440 test_gate_pas_what_fpc_miso_accepts_beyond_iso_answers_as_fpc__c621}
program c621(output);
type t = integer;
const k = 3;
begin writeln(k) end.
{---- 441 test_gate_pas_what_fpc_miso_accepts_beyond_iso_answers_as_fpc__consts}
program consts(output);
const a = 'ab' + 'cd'; b = 3 * 4 + 1; c = b div 2 - 1; r = 1.5 * 2; neg = -b; q = 7 mod 3; ch = 'x'; dot = ch + '.'; h = 10 / 4;
  vowels = ['a', 'e', 'i', 'o', 'u']; digits = ['0'..'9']; r2 = sqrt(2.0); big = 10 * maxint div 100000; flag = not false; t = pi / 2;
var arr: array [1..b] of integer; k: char; n: integer;
procedure inner; const vowels = ['x']; begin writeln('x' in vowels, 'a' in vowels) end;
begin
  arr[b] := 2; writeln(a, ' ', b, ' ', c, ' ', r:0:2, ' ', neg, ' ', q, ' ', dot, ' ', h:0:2, ' ', arr[13]);
  n := 0; for k := 'a' to 'z' do if k in vowels then n := n + 1; writeln(n, '7' in digits, r2:0:4, ' ', big, ' ', flag, ' ', t:0:5, ' ', pi:0:5); inner
end.
{----- 442 test_gate_pas_what_fpc_miso_accepts_beyond_iso_answers_as_fpc__loops}
program loops(output);
var i, j, s: integer;
begin
  s := 0; for i := 1 to 10 do begin if i = 3 then continue; if i = 7 then break; s := s + i end; writeln(s, ' ', i);
  i := 0; s := 0; while i < 20 do begin i := i + 1; if odd(i) then continue; if i > 12 then break; s := s + i end; writeln(s, ' ', i);
  i := 0; repeat i := i + 1; if i = 2 then continue; if i = 5 then break; write(i) until i > 8; writeln;
  for i := 1 to 3 do begin for j := 1 to 3 do begin if j = 2 then break; write(i, j) end; if i = 2 then continue; write('|') end; writeln;
  for i := 3 downto 1 do begin if i = 2 then continue; write(i) end; writeln
end.
{--- 443 test_gate_pas_what_fpc_miso_accepts_beyond_iso_answers_as_fpc__tconsts}
program tconsts(output);
const w: array [0..7] of integer = (+6, +4, +2, +4, +2, +4, +6, +2); n: integer = 5;
  bs: array [boolean] of char = ('F', 'T'); cv: array ['1'..'3'] of char = ('A', 'C', 'G');
  half: record num, den: integer end = (num: 1; den: 2);
  m: array [0..1, 0..2] of integer = ((1, 2, 3), (4, 5, 6)); pts: array [1..2] of record x, y: real end = ((x: 1.5; y: 2.0), (x: -1.0; y: 0.5));
  rr: real = 2.5; cc: char = 'q'; colours: array [(red, green, blue)] of integer = (7, 8, 9);
var i: integer;
procedure show; const loc: array [1..3] of integer = (10, 20, 30); begin writeln(loc[1] + loc[3]) end;
begin
  for i := 0 to 7 do write(w[i]); writeln(' ', n, ' ', bs[true], bs[false], cv['2'], ' ', half.num, '/', half.den, ' ', m[1, 2], m[0, 1]);
  writeln(pts[2].x:0:1, ' ', pts[1].y:0:1, ' ', rr:0:1, cc, ' ', colours[green]); show
end.
{------------- 444 test_gate_pas_whole_array_into_a_record_field_round_trips__w}
program w(output);
type
  str = packed array [1..8] of char;
  rec = record
    name: str
  end;
  link = ^rec;
var
  p: link;
  r: rec;
  a, t: str;
  j: integer;
begin
  for j := 1 to 8 do
    t[j] := chr(ord('a') + j);
  a := t;
  write('plainarray ');
  for j := 1 to 8 do write(a[j]);
  writeln;
  r.name := t;
  write('localrec   ');
  for j := 1 to 8 do write(r.name[j]);
  writeln;
  new(p);
  p^.name := t;
  write('ptrrec     ');
  for j := 1 to 8 do write(p^.name[j]);
  writeln;
  for j := 1 to 8 do
    p^.name[j] := t[j];
  write('ptrperchar ');
  for j := 1 to 8 do write(p^.name[j]);
  writeln
end.
{-------------------------- 445 test_gate_pas_xor_keeps_the_iso_dialect__isoxor}
program isoxor(output);
var a, b: integer;
begin
  a := 10; b := 12;
  writeln('x', a + b);
  writeln('x', a and b);
  writeln('x', a or b, a);
  writeln(a, a xor b)
end.
{- 446 test_gate_pas_zero_based_strings_make_low_zero_and_index_from_zero_after_the_directive__offon}
{$mode objfpc}{$H+}
program offon(output);
var s: ansistring;
begin
  s := 'hello';
{$ZEROBASEDSTRINGS+}
  writeln(low(s), ' ', high(s), ' ', s[0], s[4]);
{$ZEROBASEDSTRINGS-}
  writeln(low(s), ' ', high(s), ' ', s[1], s[5]);
{$Push}
{$ZEROBASEDSTRINGS ON}
  writeln(low(s), ' ', high(s), ' ', s[0]);
{$Pop}
  writeln(low(s), ' ', high(s), ' ', s[1])
end.
{- 447 test_gate_pas_zero_based_strings_make_low_zero_and_index_from_zero_after_the_directive__short}
{$mode objfpc}{$H+}
program short(output);
var a: ansistring; t: shortstring;
begin
  a := 'abc'; t := 'xyz';
{$ZEROBASEDSTRINGS ON}
  writeln(low(a), ' ', high(a), ' ', a[0]);
  writeln(low(t), ' ', high(t), ' ', t[1]);
{$ZEROBASEDSTRINGS OFF}
  writeln(low(a), ' ', high(a), ' ', a[1])
end.
{- 448 test_gate_pas_zero_based_strings_make_low_zero_and_index_from_zero_after_the_directive__zbs}
{$mode objfpc}{$H+}
program zbs(output);
var s: ansistring; i: integer;
begin
  s := 'abc';
  writeln(low(s), ' ', high(s), ' ', s[1]);
{$ZEROBASEDSTRINGS ON}
  writeln(low(s), ' ', high(s), ' ', s[0]);
  for i := low(s) to high(s) do write(s[i]);
  writeln;
  s[0] := 'X';
{$ZEROBASEDSTRINGS OFF}
  writeln(s, ' ', s[1])
end.
{--------------- 449 test_gate_builder_mines_a_pascal_collection_by_fpc__modern}
program modern;
var s: string;
begin
  s := 'hi'; writeln(s)
end.
{- 450 test_gate_pas_a_bracket_actual_fills_a_dynamic_array_formal_and_raise_selects_objfpc__bareraise}
program bareraise;
uses SysUtils;
type TIntArray = array of integer;
procedure Solve(const m1, m2: integer; out r: integer);
begin
  if (m1 = 0) or (m2 = 0) then
    raise SysUtils.Exception.Create('Solve: modulus cannot be 0');
  r := m1 * 10 + m2
end;
function Sum(const a: TIntArray): integer;
var i: integer;
begin
  if Length(a) = 0 then raise Exception.Create('Arrays are empty');
  Sum := 0;
  for i := 0 to High(a) do Sum := Sum + a[i]
end;
var r: integer;
begin
  Solve(3, 4, r); writeln(r, ' ', Sum([1, 2, 3, 4]));
  try Solve(0, 1, r) except on E: Exception do writeln('caught ', E.Message) end;
  try writeln(Sum([])) except on E: Exception do writeln('caught ', E.Message) end
end.
{- 451 test_gate_pas_an_fpc_dialect_case_with_no_matching_constant_does_nothing__fpccase}
program fpccase(output);
var i, n: integer; s: string; c: char;
begin
  s := 'x'; n := 0;
  for i := 0 to 7 do
  begin
    case i mod 4 of 1: n := n + 1; 2: n := n + 10 end;
    case i of 3, 5: write('[', i, ']') end
  end;
  c := 'q'; case c of 'a': writeln('a'); 'b'..'d': writeln('bd') end;
  writeln(n, ' ', s)
end.
{----- 452 test_gate_pas_ansistring_and_pchar_flip_to_the_fpc_dialect__ansiflip}
var s: AnsiString; p: PChar; i: LongInt;
begin
  s := 'abc'; i := 7;
  str(i:4, s); writeln(s, '|', i, '|', length(s));
  p := nil; writeln(p = nil)
end.
{- 453 test_gate_pas_dynamic_and_open_arrays_and_const_and_out_parameters_answer_as_fpc__outp}
program outp;
type TIntArray = array of integer;
var dy: TIntArray; n: integer;
procedure fill(out a: TIntArray; k: integer); var j: integer; begin setlength(a, k); for j := 0 to k - 1 do a[j] := j * 3 end;
procedure get(out x: integer); begin x := 42 end;
begin fill(dy, 3); get(n); writeln(length(dy), ' ', dy[2], ' ', n) end.
{- 454 test_gate_pas_fpc_dialect_strings_case_else_and_builtins_answer_as_fpc__c2}
program c2;
var k: integer;
begin
  for k := 1 to 3 do
    case k of
      1: writeln('one ', k);
      2: writeln('two')
      otherwise writeln('many ', k)
    end
end.
{- 455 test_gate_pas_fpc_dialect_strings_case_else_and_builtins_answer_as_fpc__pa}
program pa;
var s: string;
begin
  s := paramstr(1);
  writeln(paramcount, ' ', s, ' ', paramstr(2), ' [', paramstr(3), ']')
end.
{- 456 test_gate_pas_fpc_dialect_strings_case_else_and_builtins_answer_as_fpc__rd}
program rd;
var f: text; t, u: string;
begin
  readln(t); readln(u);
  writeln('[', t, '] [', u, ']');
  assign(f, 'zz_out.txt'); rewrite(f); writeln(f, 'line one'); writeln(f, 'line two'); close(f);
  assign(f, 'zz_out.txt'); reset(f); readln(f, t); readln(f, u); close(f);
  writeln(t, '|', u)
end.
{- 457 test_gate_pas_fpc_dialect_strings_case_else_and_builtins_answer_as_fpc__s1}
program s1;
var s: string[20]; t: string; i: integer;
begin
  s := 'abc'; s := s + 'de'; t := concat(s, 'fg', 'h'); i := 42;
  writeln(i, ' ', length(s), ' ', s, ' ', t, ' ', ord(s[0]), ' ', upcase(s[1]), upcase('q'), ' ', upcase(t));
  writeln(pos('de', t), ' ', copy(t, 2, 3), '|', copy(t, 7, 10), '|', length(copy(t, 3, 0)), '|', copy(t, 6))
end.
{- 458 test_gate_pas_procedural_types_and_reals_written_per_dialect_answer_as_fpc__atflip}
program pt2b;
type TFun = function(t: real): real;
function sq(t: real): real; begin sq := t * t end;
function apply(f: TFun; x: real): real; begin apply := f(x) end;
begin writeln(apply(@sq, 3.0):0:2) end.
{- 459 test_gate_pas_shifts_bounds_case_ranges_headless_programs_string_runs_and_for_in_answer_as_fpc__headless_flip}
var a: integer;
begin a := 10; writeln(a shr 1, ' ', true) end.
{-------------- 460 test_gate_pas_string_element_arrays_read_as_strings__strarr}
program strarr;
const names: array [0..3] of string = ('alpha', 'beta', '', 'delta');
var s: array [1..4] of string; i, n: integer; u: string;
function Shout(x: string): string; begin Shout := x + '!' end;
procedure Local;
var w: array [5..7] of string; k: integer;
begin
  for k := 5 to 7 do w[k] := Copy('abcdefg', k - 4, k - 4);
  for k := low(w) to high(w) do write(w[k], '/', length(w[k]), ' ');
  writeln(length(w), ' ', w[6] + w[7], ' ', w[7][2])
end;
begin
  for i := 1 to 4 do s[i] := names[i - 1] + 'x';
  s[2] := s[2] + s[1]; u := s[2];
  writeln(u, ' ', s[2][3], ' ', length(s[2]), ' ', length(s), ' ', high(s), ' ', low(names));
  for i := 1 to 4 do writeln(i, ':', s[i], ':', Shout(s[i]), ':', pos('x', s[i]), ':', s[i] = 'deltax', ':', s[i] < 'b');
  n := 0; for i := 0 to 3 do n := n + length(names[i]); writeln(n, ' ', names[3][1], names[0]);
  Local
end.
{------------- 461 test_gate_pas_string_element_arrays_read_as_strings__strchar}
program strchar;
var u: string; c: char;
begin
  u := 'alphax'; c := 'b';
  writeln(u < 'b', ' ', u < c, ' ', 'alphax' < 'b', ' ', u > 'a');
end.
{------------- 462 test_gate_pas_string_element_arrays_read_as_strings__strzero}
program strzero;
const names: array [0..1] of string = ('alpha', 'beta');
 n: array [0..1] of integer = (5, 6);
var i: integer;
begin
  i := 0;
  writeln(names[0], '|', names[i], '|', n[0], '|', n[i]);
end.
{- 463 test_gate_pas_var_aggregates_defaults_directives_labels_and_power_answer_as_fpc__defaults_flip}
program dp3;
const K = 7;
type TV = record x, y, z: integer end;
var a: array [1..3] of integer = (4, 5, 6); v: TV = (x: 3; y: 4; z: 5); m: array [0..1, 0..1] of integer = ((1, 2), (3, 4));
procedure p(n: integer = 5; s: integer = K * 2); begin writeln(n, ' ', s) end;
function f(base: integer = 10): integer; inline; begin f := base * 2 end;
procedure q(); begin writeln('q') end;
begin p; p(1); p(1, 2); writeln(f, ' ', f(3)); q(); writeln(a[3], v.y, m[1, 0]) end.
{-------------------------- 464 test_gate_pas_xor_keeps_the_iso_dialect__fpcshl}
program fpcshl(output);
var a, b: integer;
begin
  a := 10; b := 12;
  writeln('x', a shl 2, a xor b);
  writeln(a, b shr 1)
end.
{---------------------------- 465 test_gate_pas_uses_and_units_answer_as_fpc__c}
program c;
uses crt;
begin writeln(1) end.
{---------------------------- 466 test_gate_pas_uses_and_units_answer_as_fpc__p}
program p;
uses utop, ubase, sysutils, math;
begin
  show(greeting);
  writeln(twice(5), ' ', thrice(5), ' ', ubase.twice(1));
  writeln(IntToStr(42) + '-' + UpperCase('ab') + Trim('  x  '), ' ', Max(3, 7), ' ', Power(2, 10):0:0);
end.
{---------------------------- 467 test_gate_pas_uses_and_units_answer_as_fpc__q}
program q;
uses Shapes;
var p: Point; c: Color;
function Value: integer;
begin
  Value := -1
end;
begin
  p := MakePoint(3, 4);
  writeln(p.x + p.y + Origin);
  Bump; shapes.bump;
  writeln(Count, ' ', Shapes.Count);
  writeln(Value, ' ', Shapes.Value);
  for c := Red to Blue do write(ColorName(c), ' ');
  writeln;
  c := Shapes.Green;
  writeln(ord(c))
end.
{---------------------------- 468 test_gate_pas_uses_and_units_answer_as_fpc__r}
program r;
uses ua, ub;
begin
  writeln(f, ' ', ua.f, ' ', ub.f, ' ', g)
end.
{--------------------------- 469 test_gate_pas_uses_and_units_answer_as_fpc__r2}
program r2;
uses ub, ua;
begin
  writeln(f, ' ', g)
end.
