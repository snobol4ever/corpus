program dynresult;
{$mode objfpc}
type FArray = array of cardinal; SArray = array of string;
function freq(n: integer): FArray;
var u: integer;
begin
  SetLength(freq, n + 1);
  for u := 1 to n do begin INC(freq[u]); INC(freq[u], u) end;
  freq[0] := Length(freq) * 10 + High(freq)
end;
function words(n: integer): SArray;
var k: integer;
begin
  SetLength(Result, n);
  for k := 0 to High(Result) do Result[k] := StringOfChar('w', k + 1)
end;
var pf: FArray; ws: SArray; i: integer;
begin
  pf := freq(3);
  for i := 0 to 3 do write(pf[i], ' ');
  writeln(length(pf));
  ws := words(3); for i := 0 to High(ws) do write(ws[i], '/'); writeln(Length(ws))
end.
