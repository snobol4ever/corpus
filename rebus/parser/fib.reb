function fib(n)
if n <= 1 then return n
return fib(n - 1) + fib(n - 2)
end

function main()
OUTPUT := fib(7)
end
