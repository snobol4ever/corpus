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
