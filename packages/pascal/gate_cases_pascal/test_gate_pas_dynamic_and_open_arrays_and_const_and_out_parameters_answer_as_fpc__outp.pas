program outp;
type TIntArray = array of integer;
var dy: TIntArray; n: integer;
procedure fill(out a: TIntArray; k: integer); var j: integer; begin setlength(a, k); for j := 0 to k - 1 do a[j] := j * 3 end;
procedure get(out x: integer); begin x := 42 end;
begin fill(dy, 3); get(n); writeln(length(dy), ' ', dy[2], ' ', n) end.
