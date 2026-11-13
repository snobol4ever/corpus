{$mode objfpc}
program rec(output);
type t2 = record a: byte; b: longint; end;
     tpk = packed record a: byte; b: longint; end;
     arr3 = array[1..3] of t2;
var x: array[1..3] of t2; y: array[0..4] of tpk; z: arr3; w: array[1..2] of arr3;
begin
  writeln(sizeof(t2), ' ', sizeof(tpk), ' ', sizeof(x), ' ', sizeof(y), ' ', sizeof(z), ' ', sizeof(arr3), ' ', sizeof(w))
end.
