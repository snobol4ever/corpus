# Towers of Hanoi in Icon

Three needles, N disks: move the pile from A to C by way of B. The globals and the setup are one cell, the recursion one cell, the run the last. From corpus rosetta-icon towers-of-hanoi, with a counter and a log of the moves kept in a list.

```Icon
global moves, log
procedure setup()
   moves := 0;
   log := [];
end
```

```Icon
procedure move(n, src, dst)
   moves +:= 1;
   put(log, src || ">" || dst);
   write("Move disk ", n, " from ", src, " to ", dst);
   return;
end
procedure hanoi(n, src, dst, via)
   if n = 0 then return;
   hanoi(n - 1, src, via, dst);
   move(n, src, dst);
   hanoi(n - 1, via, dst, src);
end
```

```Icon
procedure main()
   local k;
   setup();
   hanoi(3, "A", "C", "B");
   write("moves: ", moves);
   every k := 1 to *log do writes(log[k], if k < *log then "," else "\n");
end
```
