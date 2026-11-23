# collatz

A whole Unicon program: a recursive procedure steps that counts the Collatz steps of a number, a global table memo that remembers each answer, a procedure longest that scans a range in a loop, and a main that writes the results.

```unicon
global memo   # steps already known

procedure steps (n)
   local r;   # the steps of this n
   if n = 1 then
      return 0;
   if \memo[n] then
      return memo[n];
   if n % 2 = 0 then
      r := 1 + steps (n / 2)
   else
      r := 1 + steps (3 * n + 1);
   memo[n] := r;
   return r;
end
```

```unicon
procedure longest (limit)
   local n, best, s;
   best := 1;
   every n := 2 to limit do {
      s := steps (n);
      if s > steps (best) then best := n;
   };
   return best;
end
```

```unicon
procedure main ()
   local n, best;
   memo := table ();
   write ("steps(6) = ", steps (6));
   every n := 1 to 6 do write (n, ": ", steps (n));
   best := longest (30);
   write ("longest under 30: ", best, " with ", steps (best), " steps");
   write ("memo holds ", *memo);
end
```
