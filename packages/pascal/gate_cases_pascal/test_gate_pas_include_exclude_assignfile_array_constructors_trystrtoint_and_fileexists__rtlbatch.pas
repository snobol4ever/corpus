program rtlbatch;
{$mode objfpc}
uses sysutils;
type s = set of 0..9;
var x: s; i, n: integer; f: text; l: string;
function Sum(const a: array of integer): integer;
var k: integer;
begin
  Sum := 0;
  for k := low(a) to high(a) do Sum := Sum + a[k]
end;
function Longest(const a: array of string): string;
var k: integer;
begin
  Longest := '';
  for k := 0 to high(a) do if length(a[k]) > length(Longest) then Longest := a[k]
end;
begin
  x := [1, 2]; include(x, 3); include(x, 7); exclude(x, 1); exclude(x, 9);
  for i := 0 to 9 do if i in x then write(i); writeln;
  writeln(Sum([1, 2, 3]), ' ', Sum([10]), ' ', Longest(['ab', 'abcd', 'c']));
  assignfile(f, '/tmp/pas_rtlbatch_gate.txt'); rewrite(f); writeln(f, 'line one'); writeln(f, 'two'); closefile(f);
  assign(f, '/tmp/pas_rtlbatch_gate.txt'); reset(f); readln(f, l); close(f); writeln(l);
  writeln(FileExists('/tmp/pas_rtlbatch_gate.txt'), ' ', FileExists('/nonexistent/q'));
  writeln(TryStrToInt('42', n), ' ', n, ' ', TryStrToInt('4x', n), ' ', TryStrToInt('-17', n), ' ', n)
end.
