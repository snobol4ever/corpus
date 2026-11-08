{$mode delphi}
type
  TV = record
    X: Integer;
    class operator Add(const a, b: TV): TV;
  end;
class operator TV.Add(const a, b: TV): TV;
begin
  Result.X := a.X + b.X;
end;
var a, b, c: TV;
begin
  a.X := 3;
  b.X := 4;
  c := a + b;
  writeln(c.X);
end.
