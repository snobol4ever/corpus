/*--------------------------------------------------- 1 B06_not_fail_succeeds */
// B06_not_fail_succeeds: ~expr when expr fails → condition true
x = "";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
}
/*-------------------------------------------------- 2 B06_not_query_combined */
// B06_not_query_combined: ~~x double negation — cancels out, takes true branch
x = "hello";
if (~~DIFFER(x, "")) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*--------------------------------------------------- 3 B06_not_succeed_fails */
// B06_not_succeed_fails: ~expr when expr succeeds → condition false
x = "hello";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
} else {
    OUTPUT = "not empty";
}
