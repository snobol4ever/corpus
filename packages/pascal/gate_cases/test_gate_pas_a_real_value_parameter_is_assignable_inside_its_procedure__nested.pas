program nested(output);
procedure outer;
var warp: real; xp: real; course: integer;
  procedure inner(var xp: real; course: integer; warp: real);
  begin
    while warp >= 0.125 do begin xp := xp + 1.0; warp := warp - 0.125 end
  end;
begin
  xp := 0; warp := 0.5; course := 3;
  inner(xp, course, warp);
  writeln(xp:6:2, warp:6:2)
end;
begin outer end.
