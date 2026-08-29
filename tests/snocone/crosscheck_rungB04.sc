/*------------------------------------------------------- 1 B04_concat_assign */
FIRST = "Hello";
LAST = "World";
FULL = FIRST   ", "   LAST   "!";
OUTPUT = FULL;
/*-------------------------------------------------------- 2 B04_concat_basic */
OUTPUT = "hello"   " "   "world";
/*-------------------------------------------------------- 3 B04_concat_chain */
A = "foo";
B = "bar";
C = "baz";
OUTPUT = A   "-"   B   "-"   C;
/*------------------------------------------------ 4 B04_concat_null_identity */
X = "hello";
OUTPUT = ""   X;
OUTPUT = X   "";
OUTPUT = ""   "";
/*-------------------------------------------------- 5 B04_concat_type_coerce */
N = 42;
OUTPUT = "value="   N;
OUTPUT = N   " things";
