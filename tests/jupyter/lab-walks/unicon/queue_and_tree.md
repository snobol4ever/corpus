# queue_and_tree

A whole Unicon program: the Queue class of the corpus (rosetta queue-definition), a record, a recursive build and count of a tree, and a breadth-first walk that writes each visit.

```unicon
class Queue (items)
  method push (item)
    put (items, item);
  end

  method take ()
    return pop (items);
  end

  method is_empty ()
    return *items = 0;
  end

  initially ()
    items := [];
end
```

```unicon
record node(name, kids)

procedure build(name, depth)
   local n, i;
   n := node(name, []);
   if depth > 0 then {
      every i := 1 to 2 do put(n.kids, build(name || i, depth - 1));
   };
   return n;
end

procedure count(n)
   local c, k;
   c := 1;
   every k := !n.kids do c +:= count(k);
   return c;
end
```

```unicon
procedure walk(root)
   local q, n, k, seen;
   q := Queue();
   q.push(root);
   seen := 0;
   while not q.is_empty() do {
      n := q.take();
      seen +:= 1;
      write("visit ", n.name);
      every k := !n.kids do q.push(k);
   };
   return seen;
end
```

```unicon
procedure main()
   local t, c, s;
   t := build("n", 2);
   c := count(t);
   write("nodes: ", c);
   s := walk(t);
   write("walked: ", s);
end
```
