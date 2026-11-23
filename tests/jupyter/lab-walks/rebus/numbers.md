# Numbers: factorial, Fibonacci, primes and gcd in Rebus

Program 1 of the Rebus Lab walks. The same program as the notebook `numbers.ipynb`: the helper functions first, `main` last.

## The recursive functions: factorial and Fibonacci

```Rebus
function fact(n)
  if n <= 1 then return 1
  return n * fact(n - 1)
end

function fib(n)
  if n < 2 then return n
  return fib(n - 1) + fib(n - 2)
end
```

## Primes by trial division and the greatest common divisor

```Rebus
function isprime(n)
  local d
  if n < 2 then fail
  d := 2
  while d * d <= n do {
    if n % d = 0 then fail
    d := d + 1
  }
  return n
end

function gcd(a, b)
  if b = 0 then return a
  return gcd(b, a % b)
end
```

## The main function: a loop, an array and output along the way

```Rebus
function main()
  local i, found, primes, k
  primes := ARRAY(10)
  found := 0
  i := 1
  while i <= 8 do {
    OUTPUT := i || " " || fact(i) || " " || fib(i)
    i := i + 1
  }
  i := 2
  while found < 10 do {
    if isprime(i) then {
      found := found + 1
      primes[found] := i
    }
    i := i + 1
  }
  OUTPUT := "tenth prime " || primes[10]
  OUTPUT := "gcd " || gcd(84, 36)
end
```
