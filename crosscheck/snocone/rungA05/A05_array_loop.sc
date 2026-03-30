// A05_array_loop.sc — fill array in while loop, read back
arr = ARRAY(5);
i = 1;
while (LE(i, 5)) {
    arr<i> = i * i;
    i = i + 1;
}
i = 1;
while (LE(i, 5)) {
    OUTPUT = arr<i>;
    i = i + 1;
}
