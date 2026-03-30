// A11_capture_dollar.sc — deferred capture with dollar ($)
x = 'hello world';
if (x ? LEN(5) $ v) {
    OUTPUT = v;
}
