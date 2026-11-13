program arity(output);
var t: integer;
procedure helper(a: integer);
begin writeln('helper ', a:1) end;
procedure later(x, y: integer); forward;
function fact(n: integer): integer;
begin if n <= 1 then fact := 1 else fact := n * fact(n - 1) end;
function zero: integer;
begin zero := 0 end;
procedure outer;
  procedure inner(a, b: integer);
  begin writeln('inner ', a + b:1) end;
begin inner(2, 3); later(4, 5) end;
procedure later;
begin writeln('later ', x * y:1) end;
begin
  t := zero;
  helper(1); outer; later(6, 7);
  writeln('fact ', fact(5):1, ' ', ord('A'):1, ' ', chr(66), ' ', t:1, ' ', odd(3), ' ', abs(-4):1, ' ', sqr(3):1)
end.
