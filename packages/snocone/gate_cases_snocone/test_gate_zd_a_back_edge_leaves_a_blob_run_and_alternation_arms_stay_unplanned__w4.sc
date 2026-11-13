digits = DUPL('0', 1) '123456789';
s = '12';
if (s ? (POS(0) (SPAN(digits) | '') RPOS(0))) { OUTPUT = 'ident'; } else { OUTPUT = 'quoted'; }
t = 'T12';
if (t ? (POS(0) ANY('T') (SPAN(digits) | '') RPOS(0))) { OUTPUT = 'ident2'; } else { OUTPUT = 'quoted2'; }
