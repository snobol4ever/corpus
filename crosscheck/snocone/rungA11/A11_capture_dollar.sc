// A11_capture_dollar.sc — deferred capture with dollar ($)
X = 'hello world';
if (X ? LEN(5) $ V) {
    OUTPUT = V;
}
