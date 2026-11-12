program bareraise;
uses SysUtils;
type TIntArray = array of integer;
procedure Solve(const m1, m2: integer; out r: integer);
begin
  if (m1 = 0) or (m2 = 0) then
    raise SysUtils.Exception.Create('Solve: modulus cannot be 0');
  r := m1 * 10 + m2
end;
function Sum(const a: TIntArray): integer;
var i: integer;
begin
  if Length(a) = 0 then raise Exception.Create('Arrays are empty');
  Sum := 0;
  for i := 0 to High(a) do Sum := Sum + a[i]
end;
var r: integer;
begin
  Solve(3, 4, r); writeln(r, ' ', Sum([1, 2, 3, 4]));
  try Solve(0, 1, r) except on E: Exception do writeln('caught ', E.Message) end;
  try writeln(Sum([])) except on E: Exception do writeln('caught ', E.Message) end
end.
