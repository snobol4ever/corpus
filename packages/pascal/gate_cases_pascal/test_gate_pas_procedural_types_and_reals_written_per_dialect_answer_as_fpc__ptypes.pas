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
