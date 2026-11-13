{$mode objfpc}
program pushpop(output);
type
{$PackRecords 1}
  a1 = record b: byte; l: longint; end;
{$Push}
{$PackRecords 4}
  a4 = record b: byte; l: longint; end;
{$Push}
{$PackRecords 2}
  a2 = record b: byte; l: longint; w: word; end;
{$Pop}
  a4b = record b: byte; l: longint; w: word; end;
{$Pop}
  a1b = record b: byte; l: longint; w: word; end;
begin
  writeln(sizeof(a1), ' ', sizeof(a4), ' ', sizeof(a2), ' ', sizeof(a4b), ' ', sizeof(a1b))
end.
