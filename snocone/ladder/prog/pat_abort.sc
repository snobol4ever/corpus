if ('-1B-A-' ? (ANY('AB') | '1' ABORT)) { OUTPUT = 'wrong'; } else { OUTPUT = 'abort-ok'; }
if ('-AB-1-' ? (ANY('AB') | '1' ABORT)) { OUTPUT = 'abort-nohit-ok'; }
