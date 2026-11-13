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
