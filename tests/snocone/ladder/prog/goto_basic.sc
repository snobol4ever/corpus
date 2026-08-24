i = 0;
top: OUTPUT = i;
i = i + 1;
if (LT(i, 3)) { goto top; }
OUTPUT = 'done';
