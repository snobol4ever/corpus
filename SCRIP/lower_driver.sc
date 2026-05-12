
g_program = tree('TT_PROGRAM', '');

// Lower_collect
function Lower_collect(stmt) {
    if (DIFFER(stmt)) Append(g_program, stmt);
    return;
}

// Lower_run
function Lower_run() {
    Lower(g_program);
    sm_dump();
    return;
}

// Lower_dump_ast
function Lower_dump_ast() {
    ast_dump(g_program);
    return;
}
