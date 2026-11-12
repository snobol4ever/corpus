program succtype(output);
const first = 'a';
var c, d: char; b: boolean; n: integer;
begin
  c := 'b'; b := false;
  writeln(succ(c), pred(c), ' ', succ(b), ' ', pred(true), ' ', succ('x'), ' ', succ(first));
  d := pred(c); if succ(c) = 'c' then writeln('succ compares as a char ', d);
  n := 0; c := 'a'; while c < 'e' do begin c := succ(c); n := n + 1 end;
  writeln(n:1, ' ', c, ' ', ord(succ(c)):1, ' ', ord(pred(true)):1, ' ', succ(b) and true)
end.
