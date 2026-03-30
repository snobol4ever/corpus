// A14_arith_loop_fileinfo.sc — count chars and lines from stdin
// Snocone translation of crosscheck/arith/fileinfo.sno
// Tests: while (INPUT), SIZE(), integer accumulation, EOF termination
&TRIM = 1;
chars = 0;
lines = 0;
while (line = INPUT) {
    chars = chars + SIZE(line);
    lines = lines + 1;
}
OUTPUT = chars && ' characters, ' && lines && ' lines read';
