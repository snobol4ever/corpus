program tctl(output);
type enum = (one, two, three);
     sr   = two..three;
     sri  = 1..2;
     srj  = 1..3;
var s: packed array [sr] of char; t: packed array [sri] of char; u: packed array [1..3] of char; v: packed array [enum] of char;
    w: array [sr] of integer; x: packed array [two..three] of char; c: char;
begin
  s[two] := 'a'; s[three] := 'b'; writeln(s[two], s[three]);
  t := 'xy'; writeln(t);
  u := 'abc'; writeln(u);
  v[one] := 'p'; v[two] := 'q'; v[three] := 'r'; writeln(v[one], v[three]);
  w[two] := 5; w[three] := 6; writeln(w[two] + w[three]);
  x[two] := 'm'; x[three] := 'n'; c := x[three]; writeln(x[two], c)
end.
