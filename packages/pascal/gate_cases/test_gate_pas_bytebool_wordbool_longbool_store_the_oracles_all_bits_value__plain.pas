program plain(output);
var a, c: integer; tb: byte; tw: word;
begin
  a := 1; c := 2; tb := byte(a < c); writeln(tb); tw := word(a > c); writeln(tw);
  tb := byte(a = a); writeln(tb)
end.
