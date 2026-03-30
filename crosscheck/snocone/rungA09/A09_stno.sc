// A09_stno.sc — &STNO increments per statement
x = 1;
x = 2;
if (GT(&STNO, 1)) {
    OUTPUT = 'stno ok';
} else {
    OUTPUT = 'wrong';
}
