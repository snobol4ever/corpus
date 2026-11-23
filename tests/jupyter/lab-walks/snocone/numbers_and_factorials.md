# Numbers and factorials in Snocone

A whole program in three parts: functions that call functions (`GCD`, `IsPrime`, a recursive `Fact`), a table of factorials, and a loop that lists the primes.

```snocone
function GCD(a, b, t) {
    while (DIFFER(b, 0)) { t = b; b = REMDR(a, b); a = t; }
    GCD = a; return;
}
function IsPrime(n, i, lim) {
    if (LE(n, 1)) freturn;
    i = 2;
    while (LE(i * i, n)) {
        if (EQ(REMDR(n, i), 0)) freturn;
        i = i + 1;
    }
    return;
}
function Fact(n) {
    if (LE(n, 1)) { Fact = 1; return; }
    Fact = n * Fact(n - 1);
    return;
}
```

```snocone
facts = TABLE();
i = 0;
while (LT(i, 6)) {
    i = i + 1;
    facts[i] = Fact(i);
    OUTPUT = i '! = ' facts[i];
}
```

```snocone
n = 0;
count = 0;
while (LT(n, 30)) {
    n = n + 1;
    if (IsPrime(n)) { count = count + 1; OUTPUT = n ' is prime'; }
}
OUTPUT = count ' primes, gcd(' facts[5] ', ' facts[4] ') = ' GCD(facts[5], facts[4]);
```
