{$mode iso}
program nstiso;
procedure Use(function C(L, R: integer): integer);
begin
  writeln(C(9, 4))
end;
procedure Outer;
var k: integer;
  function Inner(L, R: integer): integer;
  begin
    Inner := L - R + k
  end;
begin
  k := 100;
  Use(Inner)
end;
begin
  Outer
end.
