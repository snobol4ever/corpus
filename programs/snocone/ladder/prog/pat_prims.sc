s = 'abc123xyz';
if (s ? SPAN('abc'))    { OUTPUT = 'span-ok'; }
if (s ? BREAK('123'))   { OUTPUT = 'break-ok'; }
if (s ? LEN(3))         { OUTPUT = 'len-ok'; }
if (s ? ANY('xyz'))     { OUTPUT = 'any-ok'; }
if (s ? NOTANY('123'))  { OUTPUT = 'notany-ok'; }
if (s ? BREAKX('z'))    { OUTPUT = 'breakx-ok'; }
