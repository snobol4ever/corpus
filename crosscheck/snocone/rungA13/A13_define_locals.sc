// A13_define_locals.sc — function with local variable
procedure swap(a, b)(tmp) {
    tmp = a;
    a = b;
    b = tmp;
    OUTPUT = a && ' ' && b;
    return;
}
swap('hello', 'world');
