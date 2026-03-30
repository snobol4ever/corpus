// A05_array_loop.sc — fill array in while loop, read back
A = ARRAY(5);
I = 1;
while (LE(I, 5)) {
    A<I> = I * I;
    I = I + 1;
}
I = 1;
while (LE(I, 5)) {
    OUTPUT = A<I>;
    I = I + 1;
}
