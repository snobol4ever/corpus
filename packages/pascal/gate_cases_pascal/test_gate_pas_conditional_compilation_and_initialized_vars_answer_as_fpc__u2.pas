program u2(output);
type r = record a: integer end;
begin
{$if sizeof(r) <> 4} writeln(1); {$endif}
end.
