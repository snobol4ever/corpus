{$mode objfpc}
program one(output);
type
{$PackRecords 1}
  r1 = record a: byte; b: longint; c: word; d: int64; end;
{$PackRecords 2}
  r2 = record a: byte; b: longint; c: word; d: int64; end;
{$PackRecords 4}
  r4 = record a: byte; b: longint; c: word; d: int64; end;
{$PackRecords 8}
  r8 = record a: byte; b: longint; c: word; d: int64; end;
begin
  writeln(sizeof(r1), ' ', sizeof(r2), ' ', sizeof(r4), ' ', sizeof(r8))
end.
