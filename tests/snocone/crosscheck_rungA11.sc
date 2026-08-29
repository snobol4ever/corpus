/*------------------------------------------------------ 1 A11_capture_dollar */
// A11_capture_dollar.sc — deferred capture with dollar ($)
x = 'hello world';
if (x ? LEN(5) $ v) {
    OUTPUT = v;
}
/*--------------------------------------------------------- 2 A11_capture_dot */
// A11_capture_dot.sc — immediate capture with dot (.)
x = 'hello world';
if (x ? LEN(5) . v) {
    OUTPUT = v;
}
/*-------------------------------------------------------- 3 A11_capture_loop */
// A11_capture_loop.sc — capture inside loop (LOOP/DONE → while + break)
x = 'aaa';
n = 0;
while (x ? POS(n)   'a' . v) {
    OUTPUT = v;
    n = n + 1;
}
/*---------------------------------------------------- 4 A11_capture_multiple */
// A11_capture_multiple.sc — multiple captures in one pattern
x = 'John Smith';
if (x ? BREAK(' ') . first   LEN(1)   REM . last) {
    OUTPUT = first   ' / '   last;
}
