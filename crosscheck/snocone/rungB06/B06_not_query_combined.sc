// B06_not_query_combined: ~~x double negation — cancels out, takes true branch
x = "hello";
if (~~DIFFER(x, "")) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
