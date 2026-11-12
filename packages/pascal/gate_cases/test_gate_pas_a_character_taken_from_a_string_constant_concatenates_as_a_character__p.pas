{\$mode $md}{\$H+}
program $p;
const D = '0123456789ABC';
      E: string = 'xyz';
var s, t: string; v: int64; i: integer;
function g(v: int64): string;
begin
  Result := '';
  Result := D[v mod 10 + 1] + Result;
  Result := D[(v div 10) mod 10 + 1] + Result
end;
begin
  s := 'abc'; t := 'Z'; v := 7; i := 2;
  writeln(D[3] + t);
  writeln(D[v + 1] + t);
  writeln(E[i] + t);
  writeln(s[i] + t);
  writeln(t + D[3]);
  writeln(D[3] + D[4]);
  writeln(g(75));
  writeln('[' + D[3] + ']')
end.
