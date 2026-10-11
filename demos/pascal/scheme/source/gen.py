import sys
tpl, prelude, out = sys.argv[1], sys.argv[2], sys.argv[3]
s = open(tpl).read()
def lit(t, w):
    assert len(t) <= w, t
    return "'" + (t + ' ' * (w - len(t))).replace("'", "''") + "'"
names = ['eq?', 'eqv?', 'number?', 'gensym', 'boehm?', 'procedure?', 'expand', 'eval', 'apply', 'load', 'values', 'call-with-values',
         'call-with-exception', 'add-global', 'add-syntax', 'error', 'fixnum?', 'fixnum-add', 'fixnum-subtract', 'fixnum-multiply',
         'fixnum-quotient', 'fixnum-modulo', 'fixnum->real', 'real?', 'real-add', 'real-subtract', 'real-multiply', 'real-divide',
         'pair?', 'cons', 'car', 'cdr', 'set-car!', 'set-cdr!']
reg = '\n'.join('    regprim(%s, %d);' % (lit(n, 20), i + 1) for i, n in enumerate(names))
msgs = ['not a pair', 'not a fixnum', 'not a real', 'not a char', 'not a string', 'Symbols must have names', 'Not enough arguments',
        'Too many arguments', 'arguments must be unique', 'unknown variable', 'too many arguments', 'not enough arguments',
        'invalid lambda expression', 'not a procedure', 'Unknown use of hash syntax', 'unexpected list end', 'Unterminated list',
        'Invalid cons', 'Not a Real', 'load needs a named file']
mtxt = '\n'.join('  msgs[%d] := %s;' % (i + 1, lit(m, 32)) for i, m in enumerate(msgs))
lines = open(prelude).read().split('\n')
while lines and lines[-1].strip() == '':
    lines.pop()
ptxt = '\n'.join('  prel[%d] := %s;' % (i + 1, lit(l, 80)) for i, l in enumerate(lines)) + '\n  preln := %d' % len(lines)
s = s.replace('{{REGISTER}}', reg.rstrip(';') + ';').replace('{{MESSAGES}}', mtxt).replace('{{PRELUDE}}', ptxt)
s = s.replace('    regprim(%s, 34);' % lit('set-cdr!', 20), '    regprim(%s, 34)' % lit('set-cdr!', 20))
s = s.replace('  msgs[20] := %s;' % lit('load needs a named file', 32), '  msgs[20] := %s' % lit('load needs a named file', 32))
open(out, 'w').write(s)
print(len(lines), 'prelude lines', len(names), 'primitives', len(msgs), 'messages')
