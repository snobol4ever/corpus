program samearity(output);
var t: integer;
procedure bump(n: integer);
begin t := t + n end;
procedure inner;
  procedure bump(n: integer);
  begin t := t + 100 * n end;
begin bump(2) end;
begin t := 0; bump(1); inner; bump(3); writeln(t) end.
