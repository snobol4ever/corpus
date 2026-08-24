Item = SPAN('0123456789') | '(' *List ')';
List = Item ARBNO(',' Item);
if ('(1,(2,3),4)' ? POS(0) List RPOS(0)) { OUTPUT = 'recursive-ok'; }
if ('(1,,2)' ? POS(0) List RPOS(0)) { OUTPUT = 'wrong'; } else { OUTPUT = 'reject-ok'; }
