# words

A whole Unicon program: a generator words that scans a string and suspends each word, a procedure that keeps the longest, and a main with a loop, a counter and a scanning find.

```unicon
procedure words (s)
   local w;   # the word being scanned
   s ? {
      while tab (upto (&letters)) do {
         w := tab (many (&letters));
         suspend w;
      };
   };
end
```

```unicon
procedure longest (s)   # the first of the longest words
   local w, best;
   best := "";
   every w := words (s) do
      if *w > *best then best := w;
   return best;
end
```

```unicon
procedure main ()
   local text, w, n;
   text := "the quick brown fox jumps";
   n := 0;
   every w := words (text) do {
      n +:= 1;
      write (n, " ", w);
   };
   write ("longest: ", longest (text));
   text ? write ("first space at ", find (" "));
end
```
