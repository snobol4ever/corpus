my &fact = sub ($k) { $k <= 1 ?? 1 !! $k * fact($k - 1) };
say fact(10);
