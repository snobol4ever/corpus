program tctl2(output);
var g: char; k: integer;
procedure one(c: char; var f: text); begin write(f, c); writeln(f) end;
procedure two;
var c, f: integer;
begin c := 65; f := 66; writeln(c, ' ', f, ' ', c + f) end;
function nxt(c: char): char; begin nxt := succ(c) end;
procedure three;
var c: integer;
begin c := ord(nxt('a')); writeln(c); writeln(nxt('a')) end;
procedure fw(c: char); forward;
procedure four; var c: integer; begin c := 7; writeln(c * 2) end;
procedure fw; begin writeln(c); writeln(ord(c)) end;
begin
  g := 'q'; one(g, output); two; three; four; fw('z'); k := 66; writeln(k); writeln(g)
end.
