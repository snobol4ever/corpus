program dynctor;
{$mode objfpc}
type TIA = array of integer; TSA = array of string;
function Total(const a: TIA): integer;
var i: integer;
begin Total := 0; for i := 0 to High(a) do Total := Total + a[i] end;
function Joined(a: TSA; sep: string): string;
var i: integer;
begin Joined := ''; for i := 0 to Length(a) - 1 do begin if i > 0 then Joined := Joined + sep; Joined := Joined + a[i] end end;
procedure Show(x, y: TIA);
begin writeln(Length(x), ' ', Length(y), ' ', x[0] + y[High(y)]) end;
var v: TIA;
begin
  writeln(Total([1, 2, 3, 4]), ' ', Total([]), ' ', Joined(['a', 'bb', 'ccc'], '-'));
  Show([5, 6, 7], [8, 9]);
  v := nil; writeln(Length(v))
end.
