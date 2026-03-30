// A11_capture_multiple.sc — multiple captures in one pattern
x = 'John Smith';
if (x ? BREAK(' ') . first && LEN(1) && REM . last) {
    OUTPUT = first && ' / ' && last;
}
