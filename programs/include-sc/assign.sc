// assign.sc — Snocone port of assign.inc
// Conditional assignment during pattern matching.
// pattern . *assign(name, expression)

procedure assign(name, expression) {
    assign = .dummy;
    if (IDENT(DATATYPE(expression), 'EXPRESSION')) {
        $name = EVAL(expression);
        nreturn;
    }
    $name = expression;
    nreturn;
}
