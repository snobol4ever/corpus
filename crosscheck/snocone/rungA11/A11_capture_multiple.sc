// A11_capture_multiple.sc — multiple captures in one pattern
X = 'John Smith';
if (X ? BREAK(' ') . FIRST && LEN(1) && REM . LAST) {
    OUTPUT = FIRST && ' / ' && LAST;
}
