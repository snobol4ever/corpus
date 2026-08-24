program repeat2(output);
var i, n : integer;
begin
  i := 1; n := 1;
  repeat
    n := n * i;
    i := i + 1
  until i > 5;
  writeln(n);
  i := 10;
  repeat
    write(i);
    i := i - 3
  until i < 1;
  writeln
end.
