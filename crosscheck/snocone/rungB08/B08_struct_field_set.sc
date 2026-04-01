// B08_struct_field_set: assign to struct fields
struct rect { width, height }
r = rect(10, 5);
OUTPUT = width(r);
width(r) = 20;
OUTPUT = width(r);
OUTPUT = height(r);
