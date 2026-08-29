/*--------------------------------------------------------- 1 A05_data_define */
// A05_data_define.sc — DATA type: define, create, access fields
DATA('complex(real,imag)');
x = complex(3, -2);
OUTPUT = real(x);
OUTPUT = imag(x);
/*------------------------------------------------------ 2 A05_data_field_set */
// A05_data_field_set.sc — DATA type: set field after creation
DATA('point(x,y)');
p = point(10, 20);
OUTPUT = x(p);
OUTPUT = y(p);
x(p) = 99;
OUTPUT = x(p);
/*--------------------------------------------------------------- 3 A05_table */
// A05_table.sc — create table, set and get keyed values
t = TABLE();
t['name'] = 'Alice';
t['age'] = 30;
t['lang'] = 'SNOBOL4';
OUTPUT = t['name'];
OUTPUT = t['age'];
OUTPUT = t['lang'];
