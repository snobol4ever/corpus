//---------------------------------------------------------------------------------------------------
// Assignment during pattern matching: The unevaluated expression may fail
// which causes the assignment not to occur, but the pattern that invoked
// the assignment will always continue.
//
// pattern . *assign(name, expression)
//---------------------------------------------------------------------------------------------------
function assign(name, expression) {
    assign = .dummy;
    if (IDENT(DATATYPE(expression), 'EXPRESSION')) {
        $name = EVAL(expression);
        nreturn;
    }
    $name = expression;
    nreturn;
}
