/*-------------------------------------------------------- 1 B08_struct_basic */
// B08_struct_basic: define struct, create instance, access fields
struct point { x, y }
p = point(3, 4);
OUTPUT = x(p);
OUTPUT = y(p);
/*---------------------------------------------------- 2 B08_struct_field_set */
// B08_struct_field_set: assign to struct fields
struct rect { width, height }
r = rect(10, 5);
OUTPUT = width(r);
width(r) = 20;
OUTPUT = width(r);
OUTPUT = height(r);
/*--------------------------------------------------------- 3 B08_struct_proc */
// B08_struct_proc: struct created inside procedure
struct pair { first, second }
function make_pair(a, b) {
    return pair(a, b);
}
p = make_pair("hello", "world");
OUTPUT = first(p);
OUTPUT = second(p);
/*---------------------------------------------------- 4 B08_struct_two_types */
// B08_struct_two_types: two distinct struct types coexist
struct point { x, y }
struct interval { lo, hi }
p = point(3, 4);
iv = interval(1, 10);
OUTPUT = x(p);
OUTPUT = lo(iv);
OUTPUT = hi(iv);
