(*$c+,d+,l-,t-*)
(* recursion on the p-machine: fact and fib *)
program recursion(output);
var
   k: integer;

function fact(n: integer): integer;
begin
   if n <= 1 then
      fact := 1
   else
      fact := n * fact(n - 1)
end;

function fib(n: integer): integer;
begin
   if n < 2 then
      fib := n
   else
      fib := fib(n - 1) + fib(n - 2)
end;

begin
   for k := 1 to 10 do
      writeln(k, fact(k), fib(k))
end.
