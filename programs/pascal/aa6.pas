program aa6;
var m: array [0..3] of packed array [1..4] of char;
procedure outer;
  procedure inner;
  begin
    m[0] := ' abi'; m[1] := ' abr'
  end;
begin
  inner
end;
begin
  outer;
  writeln(m[0]); writeln(m[1])
end.
