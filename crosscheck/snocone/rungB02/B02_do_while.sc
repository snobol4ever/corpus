// B02_do_while.sc — do-while body executes at least once even if condition false
i = 5;
do {
    OUTPUT = 'ran';
    i = ADD(i, 1);
} while (LE(i, 3));
