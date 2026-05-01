// A13_define_in_pattern.sc — function call used as value
function upcase(s) {
    return REPLACE(s, &LCASE, &UCASE);
}
OUTPUT = upcase('hello');
OUTPUT = upcase('world');
