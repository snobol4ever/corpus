program chararrlit(output);
type alpha = packed array[1..8] of char;
var id: alpha;
    n: integer;
begin
  id[1]:='w'; id[2]:='r'; id[3]:='i'; id[4]:='t'; id[5]:='e';
  id[6]:='l'; id[7]:='n'; id[8]:=' ';
  n := 0;
  if id = 'writeln ' then n := n + 1;
  if 'writeln ' = id then n := n + 10;
  if id <> 'readln  ' then n := n + 100;
  if id = 'readln  ' then n := n + 1000;
  writeln(n)
end.
