s = 'abcdef';
if (s ? POS(0) 'abc')  { OUTPUT = 'pos0-ok'; }
if (s ? 'def' RPOS(0)) { OUTPUT = 'rpos0-ok'; }
if (s ? TAB(3))        { OUTPUT = 'tab3-ok'; }
if (s ? RTAB(3))       { OUTPUT = 'rtab3-ok'; }
if (s ? REM)           { OUTPUT = 'rem-ok'; }
