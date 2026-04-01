// B08_struct_two_types: two distinct struct types coexist
struct point { x, y }
struct interval { lo, hi }
p = point(3, 4);
iv = interval(1, 10);
OUTPUT = x(p);
OUTPUT = lo(iv);
OUTPUT = hi(iv);
