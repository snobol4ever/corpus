/*- 1 test_gate_gc_a_callee_saved_register_at_an_allocating_return_is_named_not_assumed__w */
function Double(n) {
    Double = n + n; return;
}
OUTPUT = Double(21);
/*- 2 test_gate_gc_a_collection_inside_a_snocone_procedure_finds_its_frame_in_both_modes__alloc */
function f() x {
    x = DUPL('ab', 50);
    f = x;
    return;
}
OUTPUT = SIZE(f());
/*- 3 test_gate_gc_a_collection_inside_a_snocone_procedure_finds_its_frame_in_both_modes__replace */
function f() rest {
    rest = 'ABC';
    rest ? LEN(1) = '';
    f = rest;
    return;
}
OUTPUT = f();
/*------------------------- 4 test_gate_gc_map_table_present_in_both_media__d */
function Double(n) {
    Double = n + n; return;
}
OUTPUT = Double(21);
/*------------- 5 test_gate_gc_snocone_deferred_eval_survives_a_collection__w */
d = *1;
OUTPUT = EVAL(d);
/*-------------------------- 6 test_gate_nreturn_by_name_value_broken__mk_int */
function mkname() { mkname = .dummy; nreturn; }
mkname() = 43;
OUTPUT = dummy;
/*-------------------------- 7 test_gate_nreturn_by_name_value_broken__mk_str */
function mkname() { mkname = .dummy; nreturn; }
mkname() = 'stored';
OUTPUT = dummy;
/*------------------- 8 test_gate_sc_duplicate_label_is_refused_at_parse__ctl */
function f() { goto x; x: f = 'f'; return; }
function g() { goto y; y: g = 'g'; return; }
OUTPUT = f() g();
/*--------------- 9 test_gate_snc_a_label_at_end_of_file_is_a_statement__bare */
OUTPUT = "one";
OUTPUT = "two";
fin:
/*-------------- 10 test_gate_snc_a_label_at_end_of_file_is_a_statement__twin */
OUTPUT = "one";
OUTPUT = "two";
fin: ;
/*- 11 test_gate_sno_flush_runs_the_recorded_conditional_assignments_then_cuts__s */
x = ''; y = '';
if ('abc' ? 'a' . x FLUSH 'b' . y) OUTPUT = 'YES 1 ' x y; else OUTPUT = 'NO 1';
x = ''; p = 'a' . x FLUSH 'b';
if ('ab' ? p) OUTPUT = 'YES 2 stored ' x; else OUTPUT = 'NO 2 stored';
if ('abc' ? ('a' | 'ab') FLUSH 'c') OUTPUT = 'YES 3 cut'; else OUTPUT = 'NO 3 cut';
x = ''; y = ''; z = '';
if ('abc' ? 'a' . x FLUSH 'b' . y FLUSH 'c' . z) OUTPUT = 'YES 4 twice ' x y z; else OUTPUT = 'NO 4 twice';
/*- 12 test_gate_sno_the_real_model_is_spitbols_gtnum_reading_and_ftz_daz_arithmetic__sc */
x = 1.0E-300; q = x / 1.0E10; OUTPUT = 'quot ' q;
OUTPUT = 'lit ' 2.5E-310;
s = '2.6308364999025777e-310' - 0.; OUTPUT = 'coerce ' s;
/*---------------- 13 test_gate_sno_tracing_does_not_change_a_match_result__p */
OUTPUT = 'hello world';
OUTPUT = 3 + 4;
/*- 14 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__a */
function f(s) { &ERRLIMIT = 10; SETEXIT('f_err'); f = 'FAIL'; f = 'ok ' EVAL(s); return; f_err: f = 'ERROR ' &ERRTYPE; return; }
function g(s) r { &ERRLIMIT = 10; SETEXIT('g_err'); if (r = EVAL(s)) { g = 'ok ' r; return; } g = 'FAIL'; return; g_err: g = 'ERROR ' &ERRTYPE; return; }
OUTPUT = f('1 + 1');
OUTPUT = g('2 + 2');
OUTPUT = f("1 + 'a'");
OUTPUT = g("2 + 'b'");
/*- 15 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__b */
a = 'a';
&ERRLIMIT = 10;
SETEXIT('h1');
if (x = 1 + a) { OUTPUT = 'if: ok'; } else { OUTPUT = 'if: fail'; }
goto n2;
h1: OUTPUT = 'if: trapped ' &ERRTYPE;
n2: SETEXIT('h2');
while (x = 2 + a) { OUTPUT = 'while: ok'; }
OUTPUT = 'while: fail';
goto n3;
h2: OUTPUT = 'while: trapped ' &ERRTYPE;
n3: OUTPUT = 'end';
/*- 16 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__cf */
function f(n) i, x {
  &ERRLIMIT = 10; SETEXIT('h');
  i = 0;
  while (LT(i, n)) {
    i = i + 1;
    if (GT(i, 1)) { x = EVAL("1 + 'a'"); OUTPUT = 'after eval ' i; }
    else { OUTPUT = 'first ' i; }
  }
  f = 'end ' i;
  return;
  h: OUTPUT = 'trap ' &ERRTYPE ' ' i; SETEXIT('h'); goto CONTINUE;
}
OUTPUT = f(3);
OUTPUT = f(2);
OUTPUT = 'done';
/*- 17 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__cn */
function g(n) i, j, s {
  &ERRLIMIT = 20; SETEXIT('h');
  s = '';
  for (i = 1; LE(i, n); i = i + 1) {
    for (j = 1; LE(j, 2); j = j + 1) {
      if (EQ(REMDR(i + j, 2), 0)) { s = s EVAL(i " + 'z'"); }
      else { s = s (i * j) ','; }
    }
  }
  g = s;
  return;
  h: s = s 'E' &ERRTYPE ','; SETEXIT('h'); goto CONTINUE;
}
OUTPUT = g(3);
OUTPUT = 'done';
/*- 18 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__ct */
&ERRLIMIT = 10; SETEXIT('h');
i = 0;
while (LT(i, 3)) {
  i = i + 1;
  x = EVAL("1 + 'a'");
  OUTPUT = 'after eval ' i;
}
OUTPUT = 'end';
goto e;
h: OUTPUT = 'trap ' &ERRTYPE ' ' i; SETEXIT('h'); goto CONTINUE;
e: OUTPUT = 'done';
/*- 19 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__ei */
function h(s, t) { &ERRLIMIT = 10; SETEXIT('h_err'); if (EVAL(s)) { h = 'first'; } else if (EVAL(t)) { h = 'second'; } else { h = 'neither'; } return; h_err: h = 'ERROR ' &ERRTYPE; return; }
OUTPUT = h('1', '2');
OUTPUT = h("DIFFER(1,1)", '2');
OUTPUT = h("DIFFER(1,1)", "2 + 'q'");
OUTPUT = 'after';
/*- 20 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__lp */
function F(n, i, t) {
    i = 0;
    while (i = LT(i, n) i + 1) { if ('AP' ? (POS(0) (SPAN('AP') | '') RPOS(0))) t = 'y'; else t = 'q'; OUTPUT = n t; F(n - 1); }
    return;
}
F(2);
OUTPUT = 'after';
/*- 21 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__nf */
function g(s) r { &ERRLIMIT = 10; SETEXIT('g_err'); if (s) { r = EVAL(s); g = 'ok ' r; return; } g = 'FAIL'; return; g_err: g = 'ERROR ' &ERRTYPE; return; }
OUTPUT = g("2 + 'b'");
OUTPUT = 'after';
/*- 22 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__nt */
&ERRLIMIT = 10; SETEXIT('g_err'); s = "2 + 'b'"; if (s) { r = EVAL(s); OUTPUT = 'ok ' r; } OUTPUT = 'FAIL'; goto e;
g_err: OUTPUT = 'ERROR ' &ERRTYPE;
e: OUTPUT = 'after';
/*- 23 test_gate_snocone_a_setexit_trap_is_taken_from_a_function_body_a_nested_block_and_a_condition__sw */
function g(s) { &ERRLIMIT = 10; SETEXIT('g_err'); switch (EVAL(s)) { case 1: g = 'one'; return; default: g = 'other'; return; } g_err: g = 'ERROR ' &ERRTYPE; return; }
OUTPUT = g('1');
OUTPUT = g('2');
OUTPUT = g("1 + 'a'");
OUTPUT = 'after';
/*- 24 test_gate_snocone_apply_of_a_snocone_function_carries_its_arguments_into_the_tiny_record__c */
function f(inf_arg) { f = inf_arg + 1; return; }
function two(a, b) { two = a '-' b; return; }
function fr(x) { if (GT(x, 5)) { fr = x; return; } freturn; }
function fact(n) { if (LE(n, 1)) { fact = 1; return; } fact = n * APPLY('fact', n - 1); return; }
function h(k) { h = .inf_tab[k]; nreturn; }
function outer(v) { outer = 'outer ' APPLY('f', v); return; }
inf_tab = TABLE();
inf_tab[1] = 'one';
OUTPUT = 'apply ' APPLY('f', 2);
x = 'f';
OUTPUT = 'apply x ' APPLY(x, 3);
OUTPUT = 'two ' APPLY('two', 'a', 'b');
OUTPUT = 'two short ' APPLY('two', 'a');
OUTPUT = 'two long ' APPLY('two', 'a', 'b', 'c');
OUTPUT = 'fr ' APPLY('fr', 9);
if (APPLY('fr', 1)) { OUTPUT = 'fr matched'; } else { OUTPUT = 'fr failed'; }
OUTPUT = 'fact ' APPLY('fact', 5);
OUTPUT = 'nr ' APPLY('h', 1);
OUTPUT = outer(7);
OUTPUT = 'eval ' EVAL("APPLY('f', 4)");
OUTPUT = 'end';
/*- 25 test_gate_zd_a_back_edge_leaves_a_blob_run_and_alternation_arms_stay_unplanned__w1 */
function F(n, i, t) {
    if (DIFFER(n)) {
        if ('AP' ? (POS(0) (SPAN('AP') | '') RPOS(0))) t = 'y'; else t = 'q';
        OUTPUT = n t;
        i = 0;
        while (i = LT(i, n) i + 1) F(n - 1);
        return;
    }
    return;
}
F(2);
OUTPUT = 'after';
/*- 26 test_gate_zd_a_back_edge_leaves_a_blob_run_and_alternation_arms_stay_unplanned__w2 */
struct tree { t, v, n, c }
function TD(x, i, t) {
    if (DIFFER(n(x))) {
        if (~(t(x) ? (POS(0) ANY(&UCASE) (SPAN(&UCASE) | '') RPOS(0)))) t = 'q'; else t = t(x);
        OUTPUT = '(' t;
        i = 0;
        while (i = LT(i, n(x)) i + 1) TD(c(x)[i]);
        OUTPUT = ')';
        return;
    }
    return;
}
a = tree('A', '', 0, ''); b = tree('B', '', 0, ''); p = tree('P', '', 2, ARRAY(2)); c(p)[1] = a; c(p)[2] = b;
TD(p);
OUTPUT = 'after';
/*- 27 test_gate_zd_a_back_edge_leaves_a_blob_run_and_alternation_arms_stay_unplanned__w3 */
digits = DUPL('0', 1) '123456789';
alpha = DUPL('a', 1) 'bc';
s = '12x';
if (s ? (POS(0) (SPAN(digits) | SPAN(alpha)) RPOS(0))) { OUTPUT = 'ident'; } else { OUTPUT = 'quoted'; }
OUTPUT = 'after';
/*- 28 test_gate_zd_a_back_edge_leaves_a_blob_run_and_alternation_arms_stay_unplanned__w4 */
digits = DUPL('0', 1) '123456789';
s = '12';
if (s ? (POS(0) (SPAN(digits) | '') RPOS(0))) { OUTPUT = 'ident'; } else { OUTPUT = 'quoted'; }
t = 'T12';
if (t ? (POS(0) ANY('T') (SPAN(digits) | '') RPOS(0))) { OUTPUT = 'ident2'; } else { OUTPUT = 'quoted2'; }
/*- 29 test_gate_zd_a_back_edge_leaves_a_blob_run_and_alternation_arms_stay_unplanned__w5 */
function F(str) {
    if (str ? (POS(0) 'zz') = ) { F = 'replaced'; return; }
    F = str;
    return;
}
OUTPUT = F('hi');
OUTPUT = F('zzz');
OUTPUT = 'after';
/*- 30 test_gate_zd_a_back_edge_leaves_a_blob_run_and_alternation_arms_stay_unplanned__w6 */
function GenTab(pos) {
    GenTab = .dummy;
    pos = IDENT(pos) 4;
    B = IDENT(B) X;
    if (~(B = B ' ' DUPL(' ', pos - SIZE(B) - 1)))
        B = B ' ';
    nreturn;
}
function Show(s) { Show = '[' s ']'; return; }
B = 'ab'; X = '';
GenTab(10); OUTPUT = Show(B);
B = 'abcdefghijkl'; X = '';
GenTab(3); OUTPUT = Show(B);
GenTab(); OUTPUT = Show(B);
OUTPUT = 'done';
