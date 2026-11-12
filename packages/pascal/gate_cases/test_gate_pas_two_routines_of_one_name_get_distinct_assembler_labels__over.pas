{$mode objfpc}
program over(output);
procedure Test(aArg: LongInt);
begin
end;
function Test(aArg: LongInt): LongInt;
begin
  Test := aArg
end;
begin
  writeln('ok')
end.
