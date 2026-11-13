program asg(output);
var b: 1..5; i: integer;
begin
  i := 3; b := i; writeln('in ', b); i := 10; b := i; writeln('after ', b)
end.
