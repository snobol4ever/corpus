program sho(output);
var x: integer;
procedure p;
var x: 1..5;
begin
  x := 3; writeln('p ', x)
end;
procedure q(x: integer);
begin
  x := x * 10; writeln('q ', x)
end;
begin
  x := 10; writeln('main ', x); p; q(7)
end.
