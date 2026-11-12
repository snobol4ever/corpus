a = 'a';
&ERRLIMIT = 10;
SETEXIT('h1');
if (x = 1 + a) { OUTPUT = 'if: ok'; } else { OUTPUT = 'if: fail'; }
goto n2;
h1: OUTPUT = 'if: trapped ' &ERRTYPE;
n2: SETEXIT('h2');
while (x = 2 + a) { OUTPUT = 'while: ok'; }
OUTPUT = 'while: fail';
goto n3;
h2: OUTPUT = 'while: trapped ' &ERRTYPE;
n3: OUTPUT = 'end';
