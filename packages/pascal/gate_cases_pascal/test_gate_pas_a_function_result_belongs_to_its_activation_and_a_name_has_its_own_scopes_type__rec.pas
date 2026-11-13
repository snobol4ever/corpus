program rec(output);
type lv = ^cell; cell = record n: integer; next: lv end;
var r: lv;
function f(n: integer): integer;
var t: integer;
begin f := n * 10; if n > 0 then t := f(n - 1) end;
procedure outer;
  function g(n: integer): integer; forward;
  function h(n: integer): integer;
  var t: integer;
  begin h := n + 100; if n > 0 then t := g(n - 1) end;
  function g; begin g := h(n) end;
begin writeln(h(3)) end;
function build(n: integer): lv;
var p, rest: lv;
begin new(p); p^.n := n; build := p; if n > 1 then begin rest := build(n - 1); p^.next := rest end else p^.next := nil end;
function fib(n: integer): integer;
begin if n < 2 then fib := n else fib := fib(n - 1) + fib(n - 2) end;
begin
  writeln(f(3)); outer; writeln(fib(15));
  r := build(4); while r <> nil do begin write(r^.n:2); r := r^.next end; writeln
end.
