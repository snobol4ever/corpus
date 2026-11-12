{$mode objfpc}
program dflt(output);
type
{$PackRecords 1}
  p1 = record b: byte; l: longint; end;
{$PackRecords C}
  pc = record b: byte; l: longint; end;
{$PackRecords 1}
  q1 = record b: byte; l: longint; end;
{$PackRecords DEFAULT}
  pd = record b: byte; l: longint; end;
begin
  writeln(sizeof(p1), ' ', sizeof(pc), ' ', sizeof(q1), ' ', sizeof(pd))
end.
