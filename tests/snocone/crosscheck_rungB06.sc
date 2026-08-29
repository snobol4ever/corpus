/*-------------------------------------------------- 1 B06_not_fail_succeeds */
// B06_not_fail_succeeds: ~expr when expr fails → condition true
x = "";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
}
/*------------------------------------------------- 2 B06_not_query_combined */
// B06_not_query_combined: ~~x double negation — cancels out, takes true branch
x = "hello";
if (~~DIFFER(x, "")) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*-------------------------------------------------- 3 B06_not_succeed_fails */
// B06_not_succeed_fails: ~expr when expr succeeds → condition false
x = "hello";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
} else {
    OUTPUT = "not empty";
}
/*-------------------------------------------------- 4 B06_query_empty XFAIL */
// B06_query_empty: ?x fails when x is empty
x = "";
if (?x) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*----------------------------------------------- 5 B06_query_nonempty XFAIL */
// B06_query_nonempty: ?x succeeds when x is non-empty (DIFFER from "")
x = "hello";
if (?x) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
