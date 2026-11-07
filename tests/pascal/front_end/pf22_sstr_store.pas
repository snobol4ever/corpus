{$mode delphi}
type tErg = string[63];
function F(n: integer): tErg;
var idx: integer;
begin
  idx := 63;
  repeat
    Result[idx] := Chr(Ord('0') + n mod 10);
    dec(idx);
    n := n div 10;
  until n = 0;
  Move(Result[idx + 1], Result[1], 63 - idx);
  SetLength(Result, 63 - idx);
end;
var s: string[5];
begin
  writeln(F(4071));
  s := 'abc';
  s[2] := 'X';
  writeln(s, s[3], Length(s));
  s[0] := #2;
  writeln(s, Length(s));
end.
