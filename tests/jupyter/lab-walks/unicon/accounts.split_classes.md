# accounts

A whole Unicon program: an Account class whose methods call each other (withdraw asks can_pay), a Savings class that inherits from it and calls the inherited deposit, a procedure that walks the object's log, and a main with a loop and output.

```unicon
class Account (owner, balance, log)   # an account keeps its own log
  method deposit (amt)
    balance +:= amt;
    put (log, "deposit " || amt);
    return balance;
  end

  method can_pay (amt)
    return balance >= amt;
  end

  method withdraw (amt)
    if can_pay (amt) then {
      balance -:= amt;
      put (log, "withdraw " || amt);
      return balance;
    };
    put (log, "refused " || amt);
    fail;
  end

  method show ()
    write (owner, ": ", balance);
  end

  initially (o, b)
    owner := o;
    balance := b;
    log := [];
end
```

```unicon
class Savings : Account (rate)
  method add_interest ()
    local i;
    i := balance * rate / 100;
    deposit (i);
    return i;
  end

  initially (o, b, r)
    self.Account.initially (o, b);
    rate := r;
end
```

```unicon
procedure report (a)
   local line;
   a.show ();
   every line := !a.log do write ("  ", line);
   return *a.log;
end
```

```unicon
procedure main ()
   local s, i, n;
   s := Savings ("ann", 100, 5);
   every i := 1 to 3 do {
      s.deposit (i * 10);
      s.add_interest ();
   };
   s.withdraw (500);
   s.withdraw (50);
   n := report (s);
   write ("entries: ", n);
end
```
