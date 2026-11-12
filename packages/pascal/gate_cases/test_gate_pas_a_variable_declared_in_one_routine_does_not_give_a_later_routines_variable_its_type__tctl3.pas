program tctl3(output);
var d: integer;
function nxt(c: char): char; begin nxt := succ(c) end;
procedure a1; var c: integer; begin c := 98; writeln(c) end;
procedure a2; var c: integer; begin c := ord(nxt('a')); writeln(c) end;
procedure a3; var c: integer; begin c := ord('b'); writeln(c) end;
procedure a4; var c: integer; begin d := ord(nxt('a')); writeln(d) end;
procedure a5; var c: integer; begin c := ord(succ('a')); writeln(c) end;
begin a1; a2; a3; a4; a5 end.
