// B06_not_succeed_fails: ~expr when expr succeeds → condition false
x = "hello";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
} else {
    OUTPUT = "not empty";
}
