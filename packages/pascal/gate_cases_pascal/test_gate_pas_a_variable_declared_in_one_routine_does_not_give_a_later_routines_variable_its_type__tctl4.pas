program tctl4(output);
function same(b: boolean): boolean; begin same := b end;
procedure two; var b: integer; begin b := 5; writeln(b) end;
begin writeln(same(true)); two; writeln(same(false)) end.
