// B02_while_false.sc — while condition false on entry: body skipped
i = 5;
while (LE(i, 3)) {
    OUTPUT = 'should not print';
}
OUTPUT = 'done';
