# A linked list in Icon

A record of a value and the next node, built three nodes long and reversed in place, shown before and after. The list procedures are one cell, the run the next.

```Icon
record Node(val, tail)
procedure cons(v, rest)
   return Node(v, rest)
end
procedure reverse_list(head)
   local prev, nxt;
   prev := &null;
   while \head do {
      nxt := head.tail;
      head.tail := prev;
      prev := head;
      head := nxt;
   };
   return prev;
end
procedure show(head)
   local s;
   s := "";
   while \head do {
      s ||:= head.val || " ";
      head := head.tail;
   };
   return s;
end
```

```Icon
procedure main()
   local lst;
   lst := cons(1, cons(2, cons(3, &null)));
   write(show(lst));
   lst := reverse_list(lst);
   write(show(lst));
end
```
