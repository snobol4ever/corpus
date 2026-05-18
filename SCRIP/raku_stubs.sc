/* raku_stubs.sc — temporary stubs for parser_raku.sc semantic actions.
   These will be replaced by proper implementations in a later session (SCT-5).
   Generated 2026-05-17 (Claude Sonnet 4.6) as part of the PIVOT to get all
   six parsers running under SPITBOL. */

/* Variable-name pushers — use capture variables set by grammar patterns */
function push_var()       { Push(tree('TT_VAR',  capvf capvr));    push_var       = .dummy; nreturn; }
function push_qlit()      { Push(tree('TT_QLIT', capstr));         push_qlit      = .dummy; nreturn; }
function push_ilit(val)    { Push(tree('TT_ILIT', val));         push_ilit      = .dummy; nreturn; }
function push_float()     { Push(tree('TT_FLIT', capstr));         push_float     = .dummy; nreturn; }
function push_nul()       { Push(tree('TT_NUL',  ''));             push_nul       = .dummy; nreturn; }
function push_empty()     { Push(tree('TT_NUL',  ''));             push_empty     = .dummy; nreturn; }
function push_rxlit()     { Push(tree('TT_RXLIT',capstr));         push_rxlit     = .dummy; nreturn; }
function push_col_var()   { Push(tree('TT_VAR',  capvf capvr));    push_col_var   = .dummy; nreturn; }
function push_twigil()    { Push(tree('TT_VAR',  captwf captwr));  push_twigil    = .dummy; nreturn; }
function push_param()     { Push(tree('TT_VAR',  cappf cappr));    push_param     = .dummy; nreturn; }
function push_has_field() { Push(tree('TT_VAR',  capff capfr));    push_has_field = .dummy; nreturn; }
function push_mth_qlit()  { Push(tree('TT_QLIT', capmtf capmtr));  push_mth_qlit  = .dummy; nreturn; }
function push_key_qlit()  { Push(tree('TT_QLIT', capkey));         push_key_qlit  = .dummy; nreturn; }
function push_mod_qlit()  { Push(tree('TT_QLIT', capmodname));     push_mod_qlit  = .dummy; nreturn; }
function push_ncname_qlit(){ Push(tree('TT_QLIT',capncname));      push_ncname_qlit = .dummy; nreturn; }
function push_named_key() { Push(tree('TT_QLIT', capnamedkey));    push_named_key = .dummy; nreturn; }
function push_subst_args(){ Push(tree('TT_QLIT', caprepl));        push_subst_args= .dummy; nreturn; }

/* Built-in function name pushers — push a TT_VAR node so reduce('TT_FNC',N) wraps it */
function push_fn_raku_mcall(){ Push(tree('TT_VAR','raku_mcall'));    push_fn_raku_mcall= .dummy; nreturn; }
function push_mcall_mth_qlit(){ Push(tree('TT_QLIT',capmf capmr));  push_mcall_mth_qlit= .dummy; nreturn; }
function push_fn_raku_new(){ Push(tree('TT_VAR','raku_new'));      push_fn_raku_new= .dummy; nreturn; }
function push_cls_qlit()  { Push(tree('TT_QLIT',capclsf capclsr)); push_cls_qlit  = .dummy; nreturn; }
function push_fn_raku_die(){ Push(tree('TT_VAR','die'));           push_fn_raku_die= .dummy; nreturn; }
function push_fn_map()    { Push(tree('TT_VAR','map'));            push_fn_map    = .dummy; nreturn; }
function push_fn_grep()   { Push(tree('TT_VAR','grep'));           push_fn_grep   = .dummy; nreturn; }
function push_fn_sort()   { Push(tree('TT_VAR','sort'));           push_fn_sort   = .dummy; nreturn; }
function push_fn_match()  { Push(tree('TT_VAR','raku_match'));     push_fn_match  = .dummy; nreturn; }
function push_fn_matchg() { Push(tree('TT_VAR','raku_matchg'));    push_fn_matchg = .dummy; nreturn; }
function push_fn_subst()  { Push(tree('TT_VAR','raku_subst'));     push_fn_subst  = .dummy; nreturn; }
function push_fn_capture(){ Push(tree('TT_VAR','raku_cap'));       push_fn_capture= .dummy; nreturn; }
function push_fn_ncap()   { Push(tree('TT_VAR','raku_ncap'));      push_fn_ncap   = .dummy; nreturn; }
function push_fn_arr_get(){ Push(tree('TT_VAR','raku_arr_get'));   push_fn_arr_get= .dummy; nreturn; }
function push_fn_arr_set(){ Push(tree('TT_VAR','raku_arr_set'));   push_fn_arr_set= .dummy; nreturn; }
function push_fn_hash_get(){ Push(tree('TT_VAR','raku_hash_get')); push_fn_hash_get= .dummy; nreturn; }
function push_fn_hash_set(){ Push(tree('TT_VAR','raku_hash_set')); push_fn_hash_set= .dummy; nreturn; }
function push_fn_hash_delete(){ Push(tree('TT_VAR','raku_hash_delete')); push_fn_hash_delete= .dummy; nreturn; }
function push_fn_hash_exists(){ Push(tree('TT_VAR','raku_hash_exists')); push_fn_hash_exists= .dummy; nreturn; }
function push_fn_try()    { Push(tree('TT_VAR','raku_try'));       push_fn_try    = .dummy; nreturn; }
function push_fn_catch()  { Push(tree('TT_VAR','raku_catch'));     push_fn_catch  = .dummy; nreturn; }
function push_fn_control(){ Push(tree('TT_VAR','raku_control'));   push_fn_control= .dummy; nreturn; }
function push_fn_quit()   { Push(tree('TT_VAR','raku_quit'));      push_fn_quit   = .dummy; nreturn; }
function push_fn_do()     { Push(tree('TT_VAR','raku_do'));        push_fn_do     = .dummy; nreturn; }
function push_fn_once()   { Push(tree('TT_VAR','raku_once'));      push_fn_once   = .dummy; nreturn; }
function push_fn_start()  { Push(tree('TT_VAR','raku_start'));     push_fn_start  = .dummy; nreturn; }
function push_fn_supply() { Push(tree('TT_VAR','raku_supply'));    push_fn_supply = .dummy; nreturn; }
function push_fn_react()  { Push(tree('TT_VAR','raku_react'));     push_fn_react  = .dummy; nreturn; }
function push_fn_whenever(){ Push(tree('TT_VAR','raku_whenever')); push_fn_whenever= .dummy; nreturn; }
function push_fn_quietly(){ Push(tree('TT_VAR','raku_quietly'));   push_fn_quietly= .dummy; nreturn; }
function push_fn_race()   { Push(tree('TT_VAR','raku_race'));      push_fn_race   = .dummy; nreturn; }
function push_fn_hyper()  { Push(tree('TT_VAR','raku_hyper'));     push_fn_hyper  = .dummy; nreturn; }
function push_fn_lazy()   { Push(tree('TT_VAR','raku_lazy'));      push_fn_lazy   = .dummy; nreturn; }
function push_fn_eager()  { Push(tree('TT_VAR','raku_eager'));     push_fn_eager  = .dummy; nreturn; }
function push_fn_sink()   { Push(tree('TT_VAR','raku_sink'));      push_fn_sink   = .dummy; nreturn; }
function push_fn_gather() { Push(tree('TT_VAR','raku_gather'));    push_fn_gather = .dummy; nreturn; }
function push_fn_use()    { Push(tree('TT_VAR','raku_use'));       push_fn_use    = .dummy; nreturn; }
function push_fn_no()     { Push(tree('TT_VAR','raku_no'));        push_fn_no     = .dummy; nreturn; }
function push_fn_need()   { Push(tree('TT_VAR','raku_need'));      push_fn_need   = .dummy; nreturn; }
function push_fn_import() { Push(tree('TT_VAR','raku_import'));    push_fn_import = .dummy; nreturn; }
function push_fn_require(){ Push(tree('TT_VAR','raku_require'));   push_fn_require= .dummy; nreturn; }
function push_fn_write()  { Push(tree('TT_VAR','raku_write'));     push_fn_write  = .dummy; nreturn; }
function push_fn_writes() { Push(tree('TT_VAR','raku_writes'));    push_fn_writes = .dummy; nreturn; }
function push_fn_say_fh() { Push(tree('TT_VAR','raku_say_fh'));   push_fn_say_fh = .dummy; nreturn; }
function push_fn_print_fh(){ Push(tree('TT_VAR','raku_print_fh'));push_fn_print_fh= .dummy; nreturn; }
function push_fn_loop()   { Push(tree('TT_VAR','raku_loop'));      push_fn_loop   = .dummy; nreturn; }
function push_fn_without(){ Push(tree('TT_VAR','raku_without'));   push_fn_without= .dummy; nreturn; }

/* Phasers */
function push_fn_ph_BEGIN(){ Push(tree('TT_VAR','raku_BEGIN')); push_fn_ph_BEGIN= .dummy; nreturn; }
function push_fn_ph_END()  { Push(tree('TT_VAR','raku_END'));   push_fn_ph_END  = .dummy; nreturn; }
function push_fn_ph_INIT() { Push(tree('TT_VAR','raku_INIT'));  push_fn_ph_INIT = .dummy; nreturn; }
function push_fn_ph_CHECK(){ Push(tree('TT_VAR','raku_CHECK')); push_fn_ph_CHECK= .dummy; nreturn; }
function push_fn_ph_ENTER(){ Push(tree('TT_VAR','raku_ENTER')); push_fn_ph_ENTER= .dummy; nreturn; }
function push_fn_ph_LEAVE(){ Push(tree('TT_VAR','raku_LEAVE')); push_fn_ph_LEAVE= .dummy; nreturn; }
function push_fn_ph_KEEP() { Push(tree('TT_VAR','raku_KEEP'));  push_fn_ph_KEEP = .dummy; nreturn; }
function push_fn_ph_UNDO() { Push(tree('TT_VAR','raku_UNDO'));  push_fn_ph_UNDO = .dummy; nreturn; }
function push_fn_ph_FIRST(){ Push(tree('TT_VAR','raku_FIRST')); push_fn_ph_FIRST= .dummy; nreturn; }
function push_fn_ph_NEXT() { Push(tree('TT_VAR','raku_NEXT'));  push_fn_ph_NEXT = .dummy; nreturn; }
function push_fn_ph_LAST() { Push(tree('TT_VAR','raku_LAST'));  push_fn_ph_LAST = .dummy; nreturn; }
function push_fn_ph_PRE()  { Push(tree('TT_VAR','raku_PRE'));   push_fn_ph_PRE  = .dummy; nreturn; }
function push_fn_ph_POST() { Push(tree('TT_VAR','raku_POST'));  push_fn_ph_POST = .dummy; nreturn; }
function push_fn_ph_CLOSE(){ Push(tree('TT_VAR','raku_CLOSE')); push_fn_ph_CLOSE= .dummy; nreturn; }
function push_fn_ph_TEMP() { Push(tree('TT_VAR','raku_TEMP'));  push_fn_ph_TEMP = .dummy; nreturn; }

function push_sub_name_var() { Push(tree('TT_VAR', capsnf capsnr)); push_sub_name_var = .dummy; nreturn; }
function push_mth_name_var() { Push(tree('TT_VAR', capmtf capmtr)); push_mth_name_var = .dummy; nreturn; }
function push_self_var()     { Push(tree('TT_VAR', 'self'));         push_self_var     = .dummy; nreturn; }
function push_cls_name_var() { Push(tree('TT_VAR', capclsf capclsr)); push_cls_name_var = .dummy; nreturn; }
/* Sub-list emitter: pops top node, wraps in STMT(:subj), slinks to sub_list. No child inspection. */
function emit_to_sub_list(nd, subj, stmt) {
    nd   = Pop();
    subj = tree(':subj', ''); Append(subj, nd);
    stmt = tree('STMT',  ''); Append(stmt, subj);
    sub_list = slink(sub_list, stmt);
    emit_to_sub_list = .dummy;
    nreturn;
}
Emit_to_sub_list = (epsilon . *emit_to_sub_list());
/* Flag setters — pure side-effects, no stack interaction */
function set_has_def()    { raku_has_def  = 1; set_has_def   = .dummy; nreturn; }
function set_has_catch()  { raku_has_catch= 1; set_has_catch = .dummy; nreturn; }
function set_stdin()      { capidx = 0;         set_stdin     = .dummy; nreturn; }
function set_stdout()     { capidx = 1;         set_stdout    = .dummy; nreturn; }
function set_stderr()     { capidx = 2;         set_stderr    = .dummy; nreturn; }

/* Capitalised pattern-action wrappers (epsilon . *fn()) style) */
Push_var       = (epsilon . *push_var());
Push_qlit      = (epsilon . *push_qlit());
function Push_ilit(v) { Push_ilit = EVAL("epsilon . *push_ilit(" v ")"); return; }
Push_float     = (epsilon . *push_float());
Push_nul       = (epsilon . *push_nul());
Push_empty     = (epsilon . *push_empty());
Push_rxlit     = (epsilon . *push_rxlit());
Push_col_var   = (epsilon . *push_col_var());
Push_twigil    = (epsilon . *push_twigil());
Push_param     = (epsilon . *push_param());
Push_has_field = (epsilon . *push_has_field());
Push_mth_qlit  = (epsilon . *push_mth_qlit());
Push_key_qlit  = (epsilon . *push_key_qlit());
Push_mod_qlit  = (epsilon . *push_mod_qlit());
Push_ncname_qlit = (epsilon . *push_ncname_qlit());
Push_named_key = (epsilon . *push_named_key());
Push_subst_args= (epsilon . *push_subst_args());
function push_main_var()     { Push(tree('TT_VAR', 'main'));        push_main_var     = .dummy; nreturn; }
/* Wraps top node in STMT(:subj(nd)) and pushes — for finish_main_body replacement */
function push_stmt_subj(nd, subj, stmt) {
    nd   = Pop();
    subj = tree(':subj', ''); Append(subj, nd);
    stmt = tree('STMT',  ''); Append(stmt, subj);
    Push(stmt);
    push_stmt_subj = .dummy;
    nreturn;
}
Push_main_var    = (epsilon . *push_main_var());
Push_stmt_subj   = (epsilon . *push_stmt_subj());
Push_sub_name_var = (epsilon . *push_sub_name_var());
Push_mth_name_var = (epsilon . *push_mth_name_var());
Push_self_var     = (epsilon . *push_self_var());
Push_cls_name_var = (epsilon . *push_cls_name_var());
Push_fn_raku_mcall=(epsilon . *push_fn_raku_mcall());
Push_mcall_mth_qlit=(epsilon . *push_mcall_mth_qlit());
Push_fn_raku_new=(epsilon . *push_fn_raku_new());
Push_cls_qlit  = (epsilon . *push_cls_qlit());
Push_fn_raku_die=(epsilon . *push_fn_raku_die());
Push_fn_map    = (epsilon . *push_fn_map());
Push_fn_grep   = (epsilon . *push_fn_grep());
Push_fn_sort   = (epsilon . *push_fn_sort());
Push_fn_match  = (epsilon . *push_fn_match());
Push_fn_matchg = (epsilon . *push_fn_matchg());
Push_fn_subst  = (epsilon . *push_fn_subst());
Push_fn_capture= (epsilon . *push_fn_capture());
Push_fn_ncap   = (epsilon . *push_fn_ncap());
Push_fn_arr_get= (epsilon . *push_fn_arr_get());
Push_fn_arr_set= (epsilon . *push_fn_arr_set());
Push_fn_hash_get=(epsilon . *push_fn_hash_get());
Push_fn_hash_set=(epsilon . *push_fn_hash_set());
Push_fn_hash_delete=(epsilon . *push_fn_hash_delete());
Push_fn_hash_exists=(epsilon . *push_fn_hash_exists());
Push_fn_try    = (epsilon . *push_fn_try());
Push_fn_catch  = (epsilon . *push_fn_catch());
Push_fn_control= (epsilon . *push_fn_control());
Push_fn_quit   = (epsilon . *push_fn_quit());
Push_fn_do     = (epsilon . *push_fn_do());
Push_fn_once   = (epsilon . *push_fn_once());
Push_fn_start  = (epsilon . *push_fn_start());
Push_fn_supply = (epsilon . *push_fn_supply());
Push_fn_react  = (epsilon . *push_fn_react());
Push_fn_whenever=(epsilon . *push_fn_whenever());
Push_fn_quietly= (epsilon . *push_fn_quietly());
Push_fn_race   = (epsilon . *push_fn_race());
Push_fn_hyper  = (epsilon . *push_fn_hyper());
Push_fn_lazy   = (epsilon . *push_fn_lazy());
Push_fn_eager  = (epsilon . *push_fn_eager());
Push_fn_sink   = (epsilon . *push_fn_sink());
Push_fn_gather = (epsilon . *push_fn_gather());
Push_fn_use    = (epsilon . *push_fn_use());
Push_fn_no     = (epsilon . *push_fn_no());
Push_fn_need   = (epsilon . *push_fn_need());
Push_fn_import = (epsilon . *push_fn_import());
Push_fn_require= (epsilon . *push_fn_require());
Push_fn_write  = (epsilon . *push_fn_write());
Push_fn_writes = (epsilon . *push_fn_writes());
Push_fn_say_fh = (epsilon . *push_fn_say_fh());
Push_fn_print_fh=(epsilon . *push_fn_print_fh());
Push_fn_loop   = (epsilon . *push_fn_loop());
Push_fn_without= (epsilon . *push_fn_without());
Push_fn_ph_BEGIN=(epsilon . *push_fn_ph_BEGIN());
Push_fn_ph_END = (epsilon . *push_fn_ph_END());
Push_fn_ph_INIT= (epsilon . *push_fn_ph_INIT());
Push_fn_ph_CHECK=(epsilon . *push_fn_ph_CHECK());
Push_fn_ph_ENTER=(epsilon . *push_fn_ph_ENTER());
Push_fn_ph_LEAVE=(epsilon . *push_fn_ph_LEAVE());
Push_fn_ph_KEEP= (epsilon . *push_fn_ph_KEEP());
Push_fn_ph_UNDO= (epsilon . *push_fn_ph_UNDO());
Push_fn_ph_FIRST=(epsilon . *push_fn_ph_FIRST());
Push_fn_ph_NEXT= (epsilon . *push_fn_ph_NEXT());
Push_fn_ph_LAST= (epsilon . *push_fn_ph_LAST());
Push_fn_ph_PRE = (epsilon . *push_fn_ph_PRE());
Push_fn_ph_POST= (epsilon . *push_fn_ph_POST());
Push_fn_ph_CLOSE=(epsilon . *push_fn_ph_CLOSE());
Push_fn_ph_TEMP= (epsilon . *push_fn_ph_TEMP());
Set_has_def    = (epsilon . *set_has_def());
Set_has_catch  = (epsilon . *set_has_catch());
Set_stdin      = (epsilon . *set_stdin());
Set_stdout     = (epsilon . *set_stdout());
Set_stderr     = (epsilon . *set_stderr());
