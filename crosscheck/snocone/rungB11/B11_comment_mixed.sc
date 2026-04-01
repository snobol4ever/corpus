// line comment at top
/* block at top */
a = 1; // trailing
b = /* mid-expr */ 2;
/* block
   spanning
   lines */
OUTPUT = a + b; // should print 3
