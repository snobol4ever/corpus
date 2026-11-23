# Sieve of Eratosthenes in Icon

Strike the multiples of each prime from a list of ones, then collect what is left. Nested `every` loops over generators. The sieve is one cell, the run the next.

```Icon
procedure sieve(n)
   local p, i, j, out;
   p := list(n, 1);
   p[1] := 0;
   every i := 2 to n do
      if p[i] = 1 then {
         every j := i + i to n by i do p[j] := 0;
      };
   out := "";
   every i := 1 to n do if p[i] = 1 then out ||:= i || " ";
   return out;
end
```

```Icon
procedure main()
   local s;
   s := sieve(20);
   write(s);
end
```
