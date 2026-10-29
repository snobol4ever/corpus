program pf17_methodptr;
{$mode objfpc}
type
  TProc = procedure of object;
  TFn = function(x: Integer): Integer of object;
  TObj = class
    p: Integer;
    procedure go; virtual;
    function twice(x: Integer): Integer;
  end;
  TKid = class(TObj)
    procedure go; override;
  end;
procedure TObj.go;
begin
  writeln('go ', p);
end;
function TObj.twice(x: Integer): Integer;
begin
  twice := x * 2 + p;
end;
procedure TKid.go;
begin
  writeln('kid ', p);
end;
procedure Fire(m: TProc);
begin
  m();
end;
var
  o, o2: TObj;
  k: TObj;
  m: TProc;
  f: TFn;
begin
  o := TObj.Create;
  o.p := 5;
  o2 := TObj.Create;
  o2.p := 7;
  m := @o.go;
  m();
  o.p := 6;
  m();
  m := @o2.go;
  m;
  Fire(m);
  f := @o.twice;
  writeln(f(4));
  f := @o2.twice;
  writeln(f(4));
  if Assigned(m) then writeln('assigned');
  m := nil;
  if not Assigned(m) then writeln('nil');
  k := TKid.Create;
  k.p := 9;
  m := @k.go;
  m();
  o.Free;
  o2.Free;
  k.Free;
end.
