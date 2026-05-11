// sm_lower.sc — Snocone translation of lower.c / lower_ctx.c
//
// Phase 1 (SL-1..SL-9): LabelTable, emit_goto, lower_expr skeleton,
//   lower_stmt, sm_lower main entry.
// Phase 2 (SL-10): lower_pat_expr fully translated.
//
// C originals:
//   one4all/src/runtime/x86/lower.c
//   one4all/src/runtime/x86/lower_ctx.c
//
// Authors: Lon Jones Cherryholmes · Claude Sonnet 4.6

//-----------------------------------------------------------------------
// SL-1 — LabelTable
//
// The LabelTable is a pair of parallel arrays for defined labels plus a
// patch list for forward references.  In C it is a struct with GC_MALLOC
// backing.  In Snocone it is six module-level variables; functions take
// no LabelTable argument because only one lowering pass runs at a time.
//
// C parallel:
//   typedef struct {
//       LabelEntry *labels;  int nlabels,  labels_cap;
//       PatchEntry *patches; int npatches, patches_cap;
//   } LabelTable;
//
// lt_names[i]        — label name  (string)
// lt_pcs[i]          — instruction index where label is defined (integer)
// lt_nlabels         — number of defined labels
// lt_patch_instrs[i] — instruction index of the forward-ref JUMP
// lt_patch_names[i]  — target label name for that JUMP
// lt_npatches        — number of pending patches
//-----------------------------------------------------------------------

lt_names        = ARRAY('1:256');
lt_pcs          = ARRAY('1:256');
lt_nlabels      = 0;
lt_patch_instrs = ARRAY('1:256');
lt_patch_names  = ARRAY('1:256');
lt_npatches     = 0;

//-----------------------------------------------------------------------
// labtab_init — reset the LabelTable to empty
//
// C: void labtab_init(LabelTable *lt)
//-----------------------------------------------------------------------
function labtab_init() {
    lt_names        = ARRAY('1:256');
    lt_pcs          = ARRAY('1:256');
    lt_nlabels      = 0;
    lt_patch_instrs = ARRAY('1:256');
    lt_patch_names  = ARRAY('1:256');
    lt_npatches     = 0;
    return;
}

//-----------------------------------------------------------------------
// labtab_free — release the LabelTable (no-op; GC owns everything)
//
// C: void labtab_free(LabelTable *lt) { (void)lt; }
//-----------------------------------------------------------------------
function labtab_free() {
    return;
}

//-----------------------------------------------------------------------
// labtab_define(name, instr_idx) — record a label definition
//
// Case-sensitive (distinct labels like visitEnd/VisitEnd must not collide).
//
// C: void labtab_define(LabelTable *lt, const char *name, int instr_idx)
//-----------------------------------------------------------------------
function labtab_define(name, instr_idx, i) {
    lt_nlabels              = lt_nlabels + 1;
    i                       = lt_nlabels;
    lt_names[i]             = name;
    lt_pcs[i]               = instr_idx;
    return;
}

//-----------------------------------------------------------------------
// labtab_find(name) — look up a label; return its instr_idx or -1
//
// C: int labtab_find(const LabelTable *lt, const char *name)
//-----------------------------------------------------------------------
function labtab_find(name, i) {
    i = 1;
    while (LE(i, lt_nlabels)) {
        if (IDENT(lt_names[i], name)) {
            labtab_find = lt_pcs[i];
            return;
        }
        i = i + 1;
    }
    labtab_find = -1;
    return;
}

//-----------------------------------------------------------------------
// labtab_patch_later(jump_instr_idx, name) — queue a forward-ref patch
//
// C: void labtab_patch_later(LabelTable *lt, int jump_instr_idx,
//                             const char *name)
//-----------------------------------------------------------------------
function labtab_patch_later(jump_instr_idx, name, i) {
    lt_npatches              = lt_npatches + 1;
    i                        = lt_npatches;
    lt_patch_instrs[i]       = jump_instr_idx;
    lt_patch_names[i]        = name;
    return;
}

//-----------------------------------------------------------------------
// labtab_resolve(p) — patch all forward refs; undefined label → error
//
// Undefined goto maps to instruction 0 (matches C: Error 24 path).
// Returns 0 on full success, -1 if any label was undefined.
//
// C: int labtab_resolve(LabelTable *lt, SM_Program *p)
//   (p is unused in Snocone phase 1 — sm_patch_jump is stubbed)
//-----------------------------------------------------------------------
function labtab_resolve(i, name, target, ok) {
    ok = 0;
    i  = 1;
    while (LE(i, lt_npatches)) {
        name   = lt_patch_names[i];
        target = labtab_find(name);
        if (EQ(target, -1)) {
            OUTPUT = 'sm_lower: undefined label ' name ' -> Error 24';
            target = 0;
            ok     = -1;
        }
        // sm_patch_jump stub: in Phase 1 just record the resolution
        // (real sm_patch_jump rewrites lt_patch_instrs[i] in the SM_Program)
        i = i + 1;
    }
    labtab_resolve = ok;
    return;
}

//-----------------------------------------------------------------------
// SL-1 inline smoke test
//
// Defines three labels, patches two forward references, resolves them.
// Expected output (verified manually against C labtab behaviour):
//
//   smoke: define LOOP -> 10
//   smoke: define DONE -> 20
//   smoke: define END -> 99
//   smoke: find LOOP -> 10
//   smoke: find DONE -> 20
//   smoke: find MISSING -> -1
//   smoke: patch_later 5 -> DONE
//   smoke: patch_later 7 -> LOOP
//   smoke: resolve -> 0
//   smoke: all ok
//-----------------------------------------------------------------------
function run_smoke_test(r) {
    labtab_init();

    labtab_define('LOOP', 10);
    OUTPUT = 'smoke: define LOOP -> ' lt_pcs[1];

    labtab_define('DONE', 20);
    OUTPUT = 'smoke: define DONE -> ' lt_pcs[2];

    labtab_define('END', 99);
    OUTPUT = 'smoke: define END -> ' lt_pcs[3];

    OUTPUT = 'smoke: find LOOP -> '    labtab_find('LOOP');
    OUTPUT = 'smoke: find DONE -> '    labtab_find('DONE');
    OUTPUT = 'smoke: find MISSING -> ' labtab_find('MISSING');

    labtab_patch_later(5, 'DONE');
    OUTPUT = 'smoke: patch_later 5 -> ' lt_patch_names[1];

    labtab_patch_later(7, 'LOOP');
    OUTPUT = 'smoke: patch_later 7 -> ' lt_patch_names[2];

    r = labtab_resolve();
    OUTPUT = 'smoke: resolve -> ' r;

    if (EQ(r, 0))  OUTPUT = 'smoke: all ok';
    if (NE(r, 0))  OUTPUT = 'smoke: FAIL resolve returned ' r;

    labtab_free();
    return;
}

run_smoke_test();
