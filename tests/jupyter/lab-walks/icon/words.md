# Word count in Icon

Split a sentence into words by string scanning, count them in a table, and write them in order. Scanning with `?`, `upto`, `tab` and `many`; a table with a default of 0. One cell a procedure.

```Icon
procedure words(s)
   local w, ws;
   ws := [];
   s ? while tab(upto(&letters)) do {
      w := tab(many(&letters));
      put(ws, map(w));
   };
   return ws;
end
```

```Icon
procedure count(ws)
   local t, w;
   t := table(0);
   every w := !ws do t[w] +:= 1;
   return t;
end
```

```Icon
procedure main()
   local ws, t, k;
   ws := words("the cat and the dog and the bird");
   t := count(ws);
   every k := !sort(t) do write(k[1], " ", k[2]);
end
```
