program u1(output);
type r = record a: integer end;
{$if sizeof(r) <> 4}
{$message fatal 'size'}
{$endif}
begin writeln(1) end.
