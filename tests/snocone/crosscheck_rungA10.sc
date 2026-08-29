/*------------------------------------------------- 1 A10_capture_conditional */
// A10_capture_conditional.sc — match succeeds, output result
x = 'hello';
if (x ? 'hello') {
    OUTPUT = 'found';
}
/*------------------------------------------------------ 2 A10_capture_delete */
// A10_capture_delete.sc — replace match with empty (deletion)
x = 'hello world';
x ? ' world' = '';
OUTPUT = x;
/*----------------------------------------------------- 3 A10_capture_replace */
// A10_capture_replace.sc — pattern replacement (subject pat = replacement)
x = 'hello world';
x ? 'world' = 'there';
OUTPUT = x;
