// B08_struct_proc: struct created inside procedure
struct pair { first, second }
procedure make_pair(a, b) {
    return pair(a, b);
}
p = make_pair("hello", "world");
OUTPUT = first(p);
OUTPUT = second(p);
