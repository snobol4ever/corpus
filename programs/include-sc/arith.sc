// arith.sc — Snocone number utility library
// Five number functions — all iterative, no SNOBOL4 idioms needed.
//
// Conversion notes:
//   SQRT() not implemented in snocone x86 — use ISqrt() integer square root.
//   DIFFER(b, 0) works correctly in while() conditions.
//   freturn inside if() inside while() works correctly.

procedure ISqrt(n, i) {
    // Integer square root: largest i such that i*i <= n.
    i = 0;
    while (LE((i + 1) * (i + 1), n)) { i = i + 1; }
    ISqrt = i; return;
}

procedure Fibonacci(n, a, b, t, i) {
    // nth Fibonacci number (0-indexed: Fib(0)=0, Fib(1)=1, Fib(10)=55).
    if (LE(n, 0)) { Fibonacci = 0; return; }
    if (EQ(n, 1)) { Fibonacci = 1; return; }
    a = 0; b = 1; i = 1;
    while (LT(i, n)) { i = i + 1; t = b; b = a + b; a = t; }
    Fibonacci = b; return;
}

procedure GCD(a, b, t) {
    // Greatest common divisor via Euclidean algorithm.
    while (DIFFER(b, 0)) { t = b; b = REMDR(a, b); a = t; }
    GCD = a; return;
}

procedure Factorial(n, acc, i) {
    // n! iteratively. Factorial(0)=1.
    acc = 1; i = 0;
    while (LT(i, n)) { i = i + 1; acc = acc * i; }
    Factorial = acc; return;
}

procedure IsPrime(n, i, lim) {
    // Succeeds if n is prime; freturns otherwise.
    // Uses trial division up to ISqrt(n).
    if (LE(n, 1)) { freturn; }
    if (EQ(n, 2)) { return; }
    if (IDENT(REMDR(n, 2), 0)) { freturn; }
    lim = ISqrt(n); i = 1;
    while (1) {
        i = i + 2;
        if (GT(i, lim)) { break; }
        if (IDENT(REMDR(n, i), 0)) { freturn; }
    }
    return;
}

procedure Sieve(n, arr, i, j) {
    // Sieve of Eratosthenes up to n.
    // Returns TABLE where arr[k]=1 means k is prime, arr[k]=0 means composite.
    arr = TABLE(); i = 2;
    while (LE(i, n)) { arr[i] = 1; i = i + 1; }
    i = 2;
    while (LE(i * i, n)) {
        if (IDENT(arr[i], 1)) {
            j = i * i;
            while (LE(j, n)) { arr[j] = 0; j = j + i; }
        }
        i = i + 1;
    }
    Sieve = arr; return;
}
