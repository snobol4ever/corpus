program tread(input, output);
var n: integer; ch: char;
procedure outer;
  procedure readc(var f: text);
    var c: char;
  begin write('peek[', f^, '] '); read(f, c); writeln('read[', c, ']') end;
  procedure readi(var f: text);
    var k: integer;
  begin read(f, k); writeln('int[', k:1, '] eoln=', eoln(f)) end;
begin readc(input); readc(input); readi(input); readc(input); readc(input) end;
procedure skipline(var f: text);
begin readln(f) end;
begin
  outer; writeln('eoln now ', eoln(input));
  skipline(input); n := 0;
  while not eoln(input) do begin n := n + 1; read(ch) end;
  writeln('second line length ', n:1)
end.
