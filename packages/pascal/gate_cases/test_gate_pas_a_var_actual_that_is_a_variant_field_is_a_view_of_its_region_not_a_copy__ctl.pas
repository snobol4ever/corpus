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
