#include <stdio.h>
#include "icall.h"
int file_number(int argc, descriptor *argv) { if (argc < 1) Error(105); if (IconType(argv[1]) != 'f') ArgError(1, 105); RetInteger(fileno(FileVal(argv[1]))); }
int open_null(int argc, descriptor *argv) { FILE *f = fopen("/dev/null", "r"); (void)argc; if (!f) Fail; RetFile(f, Fs_Read, "null"); }
