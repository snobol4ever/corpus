if ('1AB+' ? ANY('AB') FENCE '+') { OUTPUT = 'wrong'; } else { OUTPUT = 'fence-blocks-ok'; }
if ('A+B'  ? ANY('AB') FENCE '+') { OUTPUT = 'fence-pass-ok'; }
