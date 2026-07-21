s = 'hello world';
if (s ? 'world') { OUTPUT = 'matched'; }
if (s ? 'xyz')   { OUTPUT = 'wrong'; } else { OUTPUT = 'nomatch-ok'; }
OUTPUT = 'after';
