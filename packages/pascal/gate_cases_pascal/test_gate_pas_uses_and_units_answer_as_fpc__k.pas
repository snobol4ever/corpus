program k(output);
var unit, interface, implementation, initialization, finalization, uses: integer;
begin
  unit := 1; interface := 2; implementation := 3; initialization := 4; finalization := 5; uses := 6;
  writeln(unit + interface + implementation + initialization + finalization + uses)
end.
