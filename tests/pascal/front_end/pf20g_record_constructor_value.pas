{$mode delphi}
type
  TP = record
    X: Integer;
    constructor Make(a: Integer);
  end;
constructor TP.Make(a: Integer);
begin
  X := a;
end;
var p: TP;
begin
  p := TP.Make(7);
  writeln(p.X);
end.
