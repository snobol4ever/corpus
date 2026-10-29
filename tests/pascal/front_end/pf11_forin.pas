{$mode objfpc}
program fi;
uses Classes, SysUtils;
type TColor = (cRed, cGreen, cBlue); TNum = 1..4;
var a: array[1..3] of Integer; d: array of Integer; s: string; cs: set of Char; c: Char; i, t: Integer;
    sl: TStringList; k: TColor; n: TNum; w: string;
begin
  a[1] := 5; a[2] := 6; a[3] := 7; t := 0;
  for i in a do t := t + i; writeln(t);
  SetLength(d, 3); d[0] := 1; d[1] := 2; d[2] := 4; t := 0;
  for i in d do t := t * 2 + i; writeln(t);
  s := 'abc'; for c in s do write(UpCase(c), ','); writeln;
  cs := ['x', 'a', 'm']; for c in cs do write(c); writeln;
  for k in TColor do write(ord(k)); writeln;
  for n in TNum do write(n, ' '); writeln;
  sl := TStringList.Create; sl.Add('one'); sl.Add('two'); sl.Add('three');
  for w in sl do write(w, length(w), ';'); writeln;
  for i in [1, 3, 5] do write(i); writeln;
  sl.Free;
end.
