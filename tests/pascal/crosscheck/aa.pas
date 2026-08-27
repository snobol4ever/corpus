{------------------------------------------------------------------------ 1 aa1}
program aa1;
type alpha = packed array [1..8] of char;
var a: array [1..3] of alpha;
begin
  a[1] := 'ab      ';
  a[2] := 'cd      ';
  writeln(a[1]);
  writeln(a[2])
end.
{------------------------------------------------------------------------ 2 aa2}
program aa2;
var m: array [0..3] of packed array [1..4] of char;
begin
  m[0] := ' abi';
  m[1] := ' abr';
  writeln(m[0]);
  writeln(m[1])
end.
