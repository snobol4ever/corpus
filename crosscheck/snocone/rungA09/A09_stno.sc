// A09_stno.sc — &STNO increments per statement
X = 1;
X = 2;
if (GT(&STNO, 1)) {
    OUTPUT = 'stno ok';
} else {
    OUTPUT = 'wrong';
}
