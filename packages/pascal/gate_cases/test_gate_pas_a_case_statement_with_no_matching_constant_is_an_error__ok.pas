program casectl(output);
type color = (red, green, blue);
var i, n: integer; c: char; k: color;
begin
  n := 0;
  for i := 1 to 6 do
    case i of
      1, 2: n := n + 1;
      3: case odd(i) of true: n := n + 10; false: n := n + 1000 end;
      4, 5, 6: n := n + 100
    end;
  for c := 'a' to 'c' do case c of 'a': n := n + 1; 'b', 'c': n := n + 2 end;
  for k := red to blue do case k of blue: writeln('last arm'); red, green: n := n + 5 end;
  writeln(n:1)
end.
