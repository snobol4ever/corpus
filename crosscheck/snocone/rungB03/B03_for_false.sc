// B03_for_false.sc — for condition false on entry: body skipped
for (i = 5; LE(i, 3); i = ADD(i, 1)) {
    OUTPUT = 'should not print';
}
OUTPUT = 'done';
