# fib_recur.reb -- naive doubly-recursive Fibonacci.
# bottleneck: recursive user-function call overhead (Rebus has no independent rival
# implementation, so this is measured m3 vs m4 only -- see README § Rebus benchmarks).
# Standalone: scrip fib_recur.reb

function fib(n)
  if n < 2 then return n
  return fib(n - 1) + fib(n - 2)
end

function main()
  OUTPUT := fib(24)
end
