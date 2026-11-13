x = ''; y = '';
if ('abc' ? 'a' . x FLUSH 'b' . y) OUTPUT = 'YES 1 ' x y; else OUTPUT = 'NO 1';
x = ''; p = 'a' . x FLUSH 'b';
if ('ab' ? p) OUTPUT = 'YES 2 stored ' x; else OUTPUT = 'NO 2 stored';
if ('abc' ? ('a' | 'ab') FLUSH 'c') OUTPUT = 'YES 3 cut'; else OUTPUT = 'NO 3 cut';
x = ''; y = ''; z = '';
if ('abc' ? 'a' . x FLUSH 'b' . y FLUSH 'c' . z) OUTPUT = 'YES 4 twice ' x y z; else OUTPUT = 'NO 4 twice';
