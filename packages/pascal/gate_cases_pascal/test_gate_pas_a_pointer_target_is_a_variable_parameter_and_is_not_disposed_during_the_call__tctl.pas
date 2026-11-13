program tctl(output);
type rec = record n: integer; nxt: ^rec end;
var a, other: ^integer; r: ^rec; x: integer; f: file of integer;
procedure inc1(var c: integer); begin c := c + 1 end;
procedure show(var c: integer); begin writeln(c) end;
procedure setn(var n: integer); begin n := 7 end;
procedure killother(var c: integer); begin c := c + 10; dispose(other) end;
procedure byval(c: integer); begin dispose(a); writeln(c) end;
function fn(var c: integer): integer; begin c := c * 2; fn := c end;
begin
  new(a); a^ := 4; inc1(a^); inc1(a^); writeln(a^);
  show(a^);
  new(r); r^.n := 1; setn(r^.n); writeln(r^.n);
  rewrite(f); f^ := 3; put(f); reset(f); inc1(f^); writeln(f^);
  new(other); other^ := 1; killother(a^); writeln(a^);
  x := 5; inc1(x); writeln(x);
  writeln(fn(a^), a^);
  byval(a^);
  new(a); a^ := 2; inc1(a^); dispose(a); writeln('done')
end.
