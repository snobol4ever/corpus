{$mode objfpc}{$h+}
program lc;
uses SysUtils;
type TSA = array of string; PInt = ^Integer;
function Reverse(a: TSA): TSA;
var I, J: SizeInt; t: Pointer;
begin
  I := 0; J := High(a);
  while I < J do begin
    t := Pointer(a[I]);
    Pointer(a[I]) := Pointer(a[J]);
    Pointer(a[J]) := t;
    Inc(I); Dec(J);
  end;
  Result := a;
end;
var a, b: TSA; k: Integer; n: Cardinal; c: Char;
begin
  SetLength(a, 4); a[0] := 'one'; a[1] := 'two'; a[2] := 'three'; a[3] := 'four';
  b := Reverse(a);
  for k := 0 to High(b) do write(b[k], ' ');
  writeln;
  n := 65; Integer(n) := -1; writeln(n);
  c := 'a'; Byte(c) := 66; writeln(c);
  k := 7; Cardinal(k) := 9; writeln(k);
end.
