digits = DUPL('0', 1) '123456789';
alpha = DUPL('a', 1) 'bc';
s = '12x';
if (s ? (POS(0) (SPAN(digits) | SPAN(alpha)) RPOS(0))) { OUTPUT = 'ident'; } else { OUTPUT = 'quoted'; }
OUTPUT = 'after';
