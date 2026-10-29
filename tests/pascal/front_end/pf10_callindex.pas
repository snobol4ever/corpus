{$mode objfpc}
program ci;
uses SysUtils;
function nm: string; begin nm := 'Hello' end;
function up(const s: string): string; begin up := UpperCase(s) end;
begin
  writeln(nm()[1], nm[2], up('abc')[3], Lowercase(nm())[1], up('xyz')[1]);
  writeln(ord(paramstr(0)[1]) > 0, ' ', length(up('abcd')), ' ', up('q')[1]);
end.
