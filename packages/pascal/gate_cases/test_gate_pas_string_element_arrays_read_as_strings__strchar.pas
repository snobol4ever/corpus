program strchar;
var u: string; c: char;
begin
  u := 'alphax'; c := 'b';
  writeln(u < 'b', ' ', u < c, ' ', 'alphax' < 'b', ' ', u > 'a');
end.
