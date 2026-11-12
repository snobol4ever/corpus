program ctl(output);
type s5 = packed array [1..5] of char; u = array [1..3] of char;
var a: packed array [1..10] of char; b: packed array [1..2] of char; x: s5; c: char; u3: u;
procedure q(var z: s5); begin z := 'world'; writeln(z) end;
procedure r(z: s5); begin z := 'again'; writeln(z) end;
procedure p;
var s: packed array [1..3] of char;
begin s := 'abc'; writeln(s) end;
begin
  a := 'abcdefghij'; writeln(a);
  b := 'ab'; writeln(b);
  x := 'hello'; writeln(x); q(x); r(x); writeln(x);
  p; c := 'q'; writeln(c); a[3] := 'z'; writeln(a);
  u3[1] := 'a'; u3[2] := 'b'; u3[3] := 'c'; writeln(u3[2])
end.
