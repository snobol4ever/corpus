// lower_driver.sc — drive the Snocone-hosted lowering pipeline.
//
// Loaded after global.sc, tree.sc, tdump.sc, qize.sc, stack.sc, counter.sc,
// ShiftReduce.sc, semantic.sc, parser_<lang>.sc, and lower.sc.  The parser
// scans INPUT (the program source) into a stack of (STMT ...) trees.  This
// driver collects those trees, builds a TT_PROGRAM root, then dispatches
// on a single command-token at the head of the (already-consumed) INPUT —
// or, if that hook isn't wired, defaults to --dump-sm.
//
// The parser's tail (e.g. parser_snobol4.sc's main loop) needs one small
// amendment: instead of (or in addition to) calling TDump(result), call
// Lower_collect(result) to enqueue, and at end Lower(g_program); sm_dump().
//
// For SL-2 we provide three entry points the parser can call:
//   Lower_collect(stmt) — enqueue one statement to the prog tree
//   Lower_run()         — finish: invoke Lower(g_program) + sm_dump()
//   Lower_dump_ast()    — print the collected program tree via TLump
//
// Authors: Lon Jones Cherryholmes · Claude Opus 4.7

g_program = tree('TT_PROGRAM', '');

function Lower_collect(stmt) {
    if (DIFFER(stmt)) Append(g_program, stmt);
    return;
}

function Lower_run() {
    Lower(g_program);
    sm_dump();
    return;
}

function Lower_dump_ast() {
    ast_dump(g_program);
    return;
}
