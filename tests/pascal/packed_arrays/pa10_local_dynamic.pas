{$mode delphi}
program pa10_local_dynamic;
procedure p(n: longint);
var a: array of boolean; w: array of longword;
begin
  setlength(a, n); setlength(w, n);
  a[5] := true; w[n - 1] := 4000000000;
  writeln(a[5], ' ', a[6], ' ', w[n - 1], ' ', w[0], ' ', length(a), ' ', length(w));
end;
function q: longint;
var b: array of byte; i: longint;
begin
  setlength(b, 1000000); for i := 0 to 9 do b[i * 100000] := i + 250; q := b[900000] + b[100000];
end;
begin p(1000000); p(1000000); writeln(q); end.
