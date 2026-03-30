// A05_data_field_set.sc — DATA type: set field after creation
DATA('point(x,y)');
P = point(10, 20);
OUTPUT = x(P);
OUTPUT = y(P);
x(P) = 99;
OUTPUT = x(P);
