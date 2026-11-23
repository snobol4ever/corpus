# Fibonacci generator in Icon

A procedure that suspends each Fibonacci number in turn, taken eight at a time by `every` with a limit, then three more by a co-expression. The generator is one cell, the run the next.

```Icon
procedure fib()
   local a, b;
   a := 0; b := 1;
   repeat {
      suspend a;
      a :=: b;
      b +:= a;
   };
end
```

```Icon
procedure main()
   local k, s, c;
   s := "";
   every k := fib() \ 8 do s ||:= k || " ";
   write(s);
   c := create fib();
   write(@c, " ", @c, " ", @c);
end
```
