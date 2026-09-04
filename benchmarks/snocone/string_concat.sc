// string_concat.sc -- fixed-count string concatenation via Snocone's && operator.
// Twin: snobol4/string_concat.sno (SNOBOL4 spells the same operation with a space, juxtaposition).
// bottleneck: string allocation + concat runtime path.
s = '';
i = 1;
while (LE(i, 4000)) {
    s = s && 'x';
    i = i + 1;
}
OUTPUT = SIZE(s);
