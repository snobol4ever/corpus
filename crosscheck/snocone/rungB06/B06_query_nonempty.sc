// B06_query_nonempty: ?x succeeds when x is non-empty (DIFFER from "")
x = "hello";
if (?x) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
