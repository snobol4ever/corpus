// assign.sc — Snocone port of assign.sno

function assign(name, expression) {
    assign = .dummy;
    if (IDENT(REPLACE(DATATYPE(expression), &LCASE, &UCASE), 'EXPRESSION')) {
        $name = EVAL(expression);
        nreturn;
    }
    $name = expression;
    nreturn;
}
