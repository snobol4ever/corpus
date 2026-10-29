program pf15_overloaded_methods;
{$mode objfpc}{$h+}
type
  TBag = class
    n: Integer;
    s: string;
    constructor Create(k: Integer); overload;
    constructor Create; overload;
    procedure Put(x: Integer); overload;
    procedure Put(x, y: Integer); overload;
    procedure Put(const a: array of string); overload;
    procedure Put(o: TBag); overload;
    function Total: Integer;
  end;
constructor TBag.Create;
begin
  n := 100;
  s := '';
end;
constructor TBag.Create(k: Integer);
begin
  n := k;
  s := '';
end;
procedure TBag.Put(o: TBag);
begin
  n := n + o.n;
  s := s + '<' + o.s + '>';
end;
procedure TBag.Put(const a: array of string);
var i: Integer;
begin
  for i := 0 to High(a) do s := s + a[i] + ';';
end;
procedure TBag.Put(x: Integer);
begin
  n := n + x;
end;
procedure TBag.Put(x, y: Integer);
begin
  n := n + x * y;
end;
function TBag.Total: Integer;
begin
  Total := n;
end;
var
  a, b: TBag;
  names: array of string;
begin
  a := TBag.Create;
  b := TBag.Create(5);
  WriteLn(a.Total, ' ', b.Total);
  a.Put(1);
  a.Put(2, 3);
  WriteLn(a.Total);
  a.Put(['x', 'y']);
  WriteLn(a.s);
  SetLength(names, 2);
  names[0] := 'p';
  names[1] := 'q';
  b.Put(names);
  b.Put(a);
  WriteLn(b.Total, ' ', b.s);
  a.Free;
  b.Free;
end.
