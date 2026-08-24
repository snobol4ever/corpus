OUTPUT = IDENT('x', 'x') 'ident-ok';
OUTPUT = DIFFER('x', 'y') 'differ-ok';
a = 'q'; b = 'q';
OUTPUT = IDENT(a, b) 'vars-ident';
