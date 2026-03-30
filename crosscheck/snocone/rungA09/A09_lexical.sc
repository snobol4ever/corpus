// A09_lexical.sc — Lexical string comparison builtins
if (LGT('b', 'a')) { OUTPUT = 'b > a'; }
if (LLT('a', 'b')) { OUTPUT = 'a < b'; }
if (LEQ('cat', 'cat')) { OUTPUT = 'cat = cat'; }
if (LNE('cat', 'dog')) { OUTPUT = 'cat != dog'; }
