/*-------------------------------------------------------- 1 A05_data_define */
// A05_data_define.sc — DATA type: define, create, access fields
DATA('complex(real,imag)');
x = complex(3, -2);
OUTPUT = real(x);
OUTPUT = imag(x);
/*----------------------------------------------------- 2 A05_data_field_set */
// A05_data_field_set.sc — DATA type: set field after creation
DATA('point(x,y)');
p = point(10, 20);
OUTPUT = x(p);
OUTPUT = y(p);
x(p) = 99;
OUTPUT = x(p);
/*-------------------------------------------------------------- 3 A05_table */
// A05_table.sc — create table, set and get keyed values
t = TABLE();
t['name'] = 'Alice';
t['age'] = 30;
t['lang'] = 'SNOBOL4';
OUTPUT = t['name'];
OUTPUT = t['age'];
OUTPUT = t['lang'];
/*------------------------------------------------- 4 A05_array_create XFAIL */
// A05_array_create.sc — create array, set and get elements
arr = ARRAY(5);
arr<1> = 'first';
arr<3> = 'third';
arr<5> = 'fifth';
OUTPUT = arr<1>;
OUTPUT = arr<3>;
OUTPUT = arr<5>;
/*--------------------------------------------------- 5 A05_array_loop XFAIL */
// A05_array_loop.sc — fill array in while loop, read back
arr = ARRAY(5);
i = 1;
while (LE(i, 5)) {
    arr<i> = i * i;
    i = i + 1;
}
i = 1;
while (LE(i, 5)) {
    OUTPUT = arr<i>;
    i = i + 1;
}
