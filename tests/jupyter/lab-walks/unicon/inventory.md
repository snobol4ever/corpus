# inventory

A whole Unicon program: a record, a table of records keyed by name, a procedure that adds or restocks, a total over the table's keys, and a sorted report.

```unicon
record item(name, qty, price)   # one stock line

procedure add(stock, name, qty, price)
   if member(stock, name) then
      stock[name].qty +:= qty
   else
      stock[name] := item(name, qty, price);
   return stock[name];
end
```

```unicon
procedure value(stock)
   local total, k;   # the value so far, a key
   total := 0;
   every k := key(stock) do total +:= stock[k].qty * stock[k].price;
   return total;
end

procedure report(stock)
   local pairs, p, it;
   pairs := sort(stock);
   every p := !pairs do {
      it := p[2];
      write(left(it.name, 8), right(it.qty, 5), right(it.price, 4));
   };
   return *pairs;
end
```

```unicon
procedure main()
   local stock, n;
   stock := table();
   add(stock, "bolt", 100, 2);
   add(stock, "nut", 250, 1);
   add(stock, "gear", 12, 15);
   add(stock, "bolt", 50, 2);
   n := report(stock);
   write("items: ", n);
   write("value: ", value(stock));
end
```
