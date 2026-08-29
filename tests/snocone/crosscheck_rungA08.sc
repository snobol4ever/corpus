/*------------------------------------------------------------ 1 A08_alphabet */
// A08_alphabet.sc — &ALPHABET and &UCASE &LCASE keywords
OUTPUT = SIZE(&ALPHABET);
OUTPUT = SIZE(&UCASE);
OUTPUT = SIZE(&LCASE);
/*------------------------------------------------------------ 2 A08_datatype */
// A08_datatype.sc — DATATYPE returns type name of value
OUTPUT = REPLACE(DATATYPE('hello'), &LCASE, &UCASE);
OUTPUT = REPLACE(DATATYPE(42),      &LCASE, &UCASE);
OUTPUT = REPLACE(DATATYPE(3.14),    &LCASE, &UCASE);
/*--------------------------------------------------------------- 3 A08_eq_ne */
// A08_eq_ne.sc — EQ and NE numeric equality
if (EQ(42, 42)) {
    OUTPUT = '42 = 42';
} else {
    OUTPUT = 'wrong';
}
if (NE(42, 99)) {
    OUTPUT = '42 != 99';
} else {
    OUTPUT = 'wrong';
}
/*---------------------------------------------------------------- 4 A08_lpad */
// A08_lpad.sc — LPAD pads string on left
OUTPUT = LPAD('hi', 6);
