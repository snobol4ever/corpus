```Snocone
// infinite_snobol4.md -- THE SCRIPtix PROGRAM: Icon generates SNOBOL4 expressions and drives, SNOBOL4 EVALs each one and checks
// it against a SPITBOL child, every difference reported, in ONE file (Lon 2026-10-02, in-chat to the ceo: "The Icon drives the
// generation of SNOBOL4 expressions, passes the string to a SNOBOL4 function, which calls EVAL and communicates to the
// CHILD-PROCESS, compares and reports differences."; "we'll proceed with the SCRIPtix demo using some of the same SNOBOL4 and
// Icon programs you've already created, but ALL in one file, except the child processes. I suppose you could do batches, with
// 1024, 2048, 4096, or 8192 at a time. This is the ULTIMATE test of SCRIPtix."; "You could use that instead of IPC COMM's.
// Better DEMO since it straight SNOBOL4 feature."; "Let's have the Icon drive but still put the S4 code first."; "Change that
// ugly SNOBOL4 code to Snocone.").
// HOW IT RUNS (Lon: "change the rules, what ever works for Icon and SNOBOL4 combo." and "But we want Icon to drive since it has
// the infinite loop."): this Snocone section starts the program. It sets the evaluator's globals, defines render(), judge()
// and check(), reads the arguments, and its last statement hands the program to the Icon section's drive(), which owns the
// loop: batch after batch it writes the next expressions and calls check() on them.
// check(batch, sbl, base) opens the batch file and the SPITBOL child on it through SPITBOL's own pipe file I/O,
// INPUT(.inf_oracle, 8, '!*sbl -bf inf_eval.sno < batch'), and judges every expression exactly as the child's inf_eval.sno
// does -- EVAL under SETEXIT, the same rendering, the child's lines read with &TRIM off so a rendered null string keeps its
// blank -- printing a DIFF line (numbered from base) for each disagreement and returning how many. Evaluating two function
// levels down from the child's flat loop, &FNCLEVEL and &RTNTYPE describe two different programs; the Icon section's
// exclusion list names them.
// Arguments, key=value: batch=N (1024 default; 2048, 4096, 8192 at a time), sbl=COMMAND (the child's oracle command, default
// /home/resources/x64/bin/sbl -bf), and the generator's own words, each handed to the Icon section's inf_opt: walk=
// random|every|both kind=expr|match|both count= limit= seed= elimit= plimit= climit=.
&TRIM = 1;
safe = DUPL('.', 32) SUBSTR(&ALPHABET, 33, 95) DUPL('.', 129);
bsize = 1024;
sbl = '/home/resources/x64/bin/sbl -bf';
function render(r) t {
    t = DATATYPE(r);
    render = t;
    if (IDENT(t, 'STRING')) { render = t ' ' SIZE(r) ' ' REPLACE(r, &ALPHABET, safe); return; }
    if ((IDENT(t, 'INTEGER'), IDENT(t, 'REAL'))) { render = t ' ' r; }
    return;
}
function judge(line) r {
    &ERRLIMIT = 1000;
    SETEXIT('judge_err');
    if (r = EVAL(line)) { judge = render(r); return; }
    judge = 'FAIL';
    return;
judge_err:
    judge = 'ERROR ' &ERRTYPE;
    return;
}
function check(batch, sbl, base) line, want, got, k, d {
    if (~INPUT(.inf_expr, 7, batch)) { OUTPUT = 'infinite_snobol4: the batch file ' batch ' does not open'; freturn; }
    if (~INPUT(.inf_oracle, 8, '!*' sbl ' inf_eval.sno < ' batch)) {
        OUTPUT = 'infinite_snobol4: the SPITBOL child does not start: ' sbl ' inf_eval.sno';
        freturn;
    }
    k = 0;
    d = 0;
    while (line = inf_expr) {
        &TRIM = 0;
        if (~(want = inf_oracle)) {
            &TRIM = 1;
            OUTPUT = 'infinite_snobol4: the SPITBOL child answered fewer lines than the batch holds, at expression ' (base + k + 1);
            freturn;
        }
        &TRIM = 1;
        k = k + 1;
        got = judge(line);
        if (DIFFER(got, want)) { OUTPUT = 'DIFF ' (base + k) '  ' line '  spitbol: ' want '  scrip: ' got; d = d + 1; }
    }
    if (inf_oracle) { OUTPUT = 'infinite_snobol4: the SPITBOL child answered more lines than the batch holds'; freturn; }
    ENDFILE(7);
    ENDFILE(8);
    check = d;
    return;
}
function setarg(arg) key, val {
    if (~(arg ? BREAK('=') . key '=' REM . val)) { freturn; }
    if (IDENT(key, 'batch')) {
        if (INTEGER(val) GT(val, 0)) { bsize = val; return; }
        freturn;
    }
    if (IDENT(key, 'sbl')) { sbl = val; return; }
    if (inf_opt(key, val)) { return; }
    freturn;
}
function readargs() i, arg {
    i = HOST(3);
    while (arg = HOST(2, i)) {
        i = i + 1;
        if (~setarg(arg)) {
            OUTPUT = 'infinite_snobol4: an argument is batch=N, sbl=COMMAND or a generator word key=value, not ' arg;
            freturn;
        }
    }
    return;
}
if (readargs()) { drive(bsize, sbl); }
```

```Icon
# The Icon section drives: drive(bsize, sbl), called by the Snocone section's last statement once the arguments are read,
# loops batch after batch -- inf_batch writes the next expressions to inf_batch.txt from one generator held in a co-expression,
# and the Snocone section's check() evaluates them against the SPITBOL child and returns how many differ. One line per batch, a
# total at the end; a SCRIP that agrees with SPITBOL prints nothing else.
global tokens, limit, leaves, subjects, pleaves, opt, gen
procedure inf_integers()
    return ["0", "1", "2", "10"];
end
procedure inf_reals()
    return ["0.0", "1.5", "1.1", "2.0"];
end
procedure inf_strings()
    return ["''", "'a'", "'ab'", "'abc'", "'0'", "'1'", "'1.1'", "'x'", "'y'", "'z'", "'(matched [things])'", "'('", "')'",
            "'['", "']'", "\"b\""];
end
procedure inf_keywords()
    local l, k;
    l := [];
    every k := !["ABEND", "ABORT", "ALPHABET", "ANCHOR", "ARB", "BAL", "CASE", "CODE", "COMPARE", "DUMP", "ERRLIMIT", "ERRTEXT",
                 "ERRTYPE", "FAIL", "FENCE", "FILE", "FNCLEVEL", "FTRACE", "FULLSCAN", "INPUT", "LASTFILE", "LASTLINE", "LASTNO",
                 "LCASE", "LINE", "MAXLNGTH", "OUTPUT", "PROFILE", "REM", "RTNTYPE", "STCOUNT", "STLIMIT", "STNO", "SUCCEED",
                 "TRACE", "TRIM", "UCASE"] do put(l, "&" || k);
    return l;
end
procedure inf_patterns()
    local l, f, a;
    l := ["ARB", "BAL", "REM", "FAIL", "FENCE", "ABORT", "SUCCEED"];
    every f := !["ANY", "NOTANY", "SPAN", "BREAK", "BREAKX"] do
        every a := !["'a'", "'ab'", "''"] do put(l, f || "(" || a || ")");
    every f := !["POS", "RPOS", "LEN", "TAB", "RTAB"] do
        every a := !["0", "1", "2"] do put(l, f || "(" || a || ")");
    every f := !["ARBNO", "FENCE"] do
        every a := !["'a'", "LEN(1)", "'a' | 'b'"] do put(l, f || "(" || a || ")");
    return l;
end
procedure inf_calc_patterns()
    local l, f, a;
    l := [];
    every f := !["ANY", "NOTANY", "SPAN", "BREAK", "BREAKX"] do
        every a := !["'+-'", "'*/'", "'xyz'", "'0123456789'", "'()'"] do put(l, f || "(" || a || ")");
    every f := !["POS", "RPOS", "LEN", "TAB", "RTAB"] do put(l, f || "(3)");
    return l ||| ["'x'", "'+'", "'('", "')'", "'1'", "''"];
end
procedure inf_exclusions()
    return ["SUCCEED", " ** &STLIMIT", " ^ &STLIMIT", " ! &STLIMIT", "&LINE", "&LASTLINE", "&FILE", "&LASTFILE", "&STNO",
            "&LASTNO", "&STCOUNT", "&FNCLEVEL", "&RTNTYPE"];
end
procedure inf_excluded(e)
    return find(!inf_exclusions(), e);
end
procedure r_token(s)
    tokens +:= 1;
    return s;
end
procedure r_room(n)
    return tokens + n <= limit;
end
procedure r_bin(s)
    return r_token(?[" " || s || " ", s || " ", " " || s, s]);
end
procedure r_un(s)
    return r_token(?[s, s || " "]);
end
procedure r_match()
    local r;
    r := ?100;
    return ( (r <= 40 | not r_room(4), r_alt())
           | (r <= 80, r_token(?subjects) || r_bin("?") || r_alt())
           | (r_alt() || r_bin("?") || r_alt())
           );
end
procedure r_alt()
    local r;
    r := ?100;
    return ( (r <= 75 | not r_room(4), r_cat())
           | (r_cat() || r_bin("|") || r_alt())
           );
end
procedure r_cat()
    local r;
    r := ?100;
    return ( (r <= 70 | not r_room(4), r_add())
           | (r_add() || r_token(" ") || r_cat())
           );
end
procedure r_add()
    local r;
    r := ?100;
    return ( (r <= 75 | not r_room(4), r_mul())
           | (r <= 88, r_mul() || r_bin("+") || r_add())
           | (r_mul() || r_bin("-") || r_add())
           );
end
procedure r_mul()
    local r;
    r := ?100;
    return ( (r <= 75 | not r_room(4), r_exp())
           | (r <= 88, r_exp() || r_bin("*") || r_mul())
           | (r_exp() || r_bin("/") || r_mul())
           );
end
procedure r_exp()
    local r;
    r := ?100;
    return ( (r <= 85 | not r_room(4), r_unary())
           | (r <= 92, r_unary() || r_bin("**") || r_exp())
           | (r <= 96, r_unary() || r_bin("^") || r_exp())
           | (r_unary() || r_bin("!") || r_exp())
           );
end
procedure r_unary()
    local r;
    r := ?100;
    return ( (r <= 85 | not r_room(3), r_primary())
           | (r_un(?"-+*") || r_unary())
           );
end
procedure r_primary()
    local r;
    r := ?100;
    return ( (r <= 40 | not r_room(3), r_token(?leaves))
           | (r_token("(") || r_match() || r_token(")"))
           );
end
procedure r_element()
    local r;
    r := ?100;
    return ( (r <= 20, "x")
           | (r <= 40, "y")
           | (r <= 60, "z")
           | (r <= 80, string(?100))
           | ("(" || r_expression() || ")")
           );
end
procedure r_factor()
    local r;
    r := ?100;
    return ( (r <= 80, r_element())
           | (r <= 90, "+" || r_factor())
           | ("-" || r_factor())
           );
end
procedure r_term()
    local r;
    r := ?100;
    return ( (r <= 70, r_factor())
           | (r <= 85, r_factor() || "*" || r_term())
           | (r_factor() || "/" || r_term())
           );
end
procedure r_expression()
    local r;
    r := ?100;
    return ( (r <= 70, r_term())
           | (r <= 85, r_term() || "+" || r_expression())
           | (r_term() || "-" || r_expression())
           );
end
procedure r_subject()
    local r;
    r := ?100;
    return ( (r <= 40, r_token(?subjects))
           | r_token("'" || r_expression() || "'")
           );
end
procedure r_palt()
    local r;
    r := ?100;
    return ( (r <= 60 | not r_room(3), r_pcat())
           | (r_pcat() || r_token(" | ") || r_palt())
           );
end
procedure r_pcat()
    local r;
    r := ?100;
    return ( (r <= 55 | not r_room(3), r_pelem())
           | (r_pelem() || r_token(" ") || r_pcat())
           );
end
procedure r_pelem()
    local r;
    r := ?100;
    return ( (r <= 70 | not r_room(3), r_token(?pleaves))
           | (r <= 80, r_token("(") || r_palt() || r_token(")"))
           | (r <= 90, r_token("ARBNO(") || r_palt() || r_token(")"))
           | (r_token("FENCE(") || r_palt() || r_token(")"))
           );
end
procedure e_token(s)
    suspend (tokens <- tokens + 1, tokens <= limit, s);
end
procedure e_room(n)
    return tokens + n <= limit;
end
procedure e_bin(s)
    suspend e_token(" " || s || " ") | e_token(s || " ") | e_token(" " || s) | e_token(s);
end
procedure e_un(s)
    suspend e_token(s) | e_token(s || " ");
end
procedure e_match()
    local f;
    suspend (e_room(3), e_token(!subjects) || e_bin("?") || e_alt());
    every f := e_alt() do
        suspend ( f
                | (e_room(2), f || e_bin("?") || e_alt())
                );
end
procedure e_alt()
    local f;
    every f := e_cat() do
        suspend ( f
                | (e_room(2), f || e_bin("|") || e_alt())
                );
end
procedure e_cat()
    local f;
    every f := e_add() do
        suspend ( f
                | (e_room(2), f || e_token(" ") || e_cat())
                );
end
procedure e_add()
    local f;
    every f := e_mul() do
        suspend ( f
                | (e_room(2), f || e_bin("+" | "-") || e_add())
                );
end
procedure e_mul()
    local f;
    every f := e_exp() do
        suspend ( f
                | (e_room(2), f || e_bin("*" | "/") || e_mul())
                );
end
procedure e_exp()
    local f;
    every f := e_unary() do
        suspend ( f
                | (e_room(2), f || e_bin("**" | "^" | "!") || e_exp())
                );
end
procedure e_unary()
    suspend e_primary() | (e_room(2), e_un(!"-+*") || e_unary());
end
procedure e_primary()
    suspend e_token(!leaves) | (e_room(3), e_token("(") || e_match() || e_token(")"));
end
procedure e_element()
    suspend ( e_token("x" | "y" | "z" | "1" | "42")
            | (e_room(3), e_token("(") || e_expression() || e_token(")"))
            );
end
procedure e_factor()
    suspend ( e_element()
            | (e_room(2), e_token("+" | "-") || e_factor())
            );
end
procedure e_term()
    local f;
    every f := e_factor() do
        suspend ( f
                | (e_room(2), f || e_token("*" | "/") || e_term())
                );
end
procedure e_expression()
    local f;
    every f := e_term() do
        suspend ( f
                | (e_room(2), f || e_token("+" | "-") || e_expression())
                );
end
procedure e_palt()
    local f;
    every f := e_pcat() do
        suspend ( f
                | (e_room(2), f || e_token(" | ") || e_palt())
                );
end
procedure e_pcat()
    local f;
    every f := e_pelem() do
        suspend ( f
                | (e_room(2), f || e_token(" ") || e_pcat())
                );
end
procedure e_pelem()
    suspend e_token(!pleaves) | (e_room(3), e_token("(" | "ARBNO(" | "FENCE(") || e_palt() || e_token(")"));
end
procedure random_walk(kind, n, lim, seed)
    local e, saved;
    &random := seed;
    saved := leaves;
    if kind == "expr" then leaves := leaves ||| inf_patterns() ||| inf_patterns();
    every 1 to n do {
        repeat {
            tokens := 0;
            limit := lim;
            e := if kind == "expr" then r_match() else r_subject() || r_token(" ? ") || r_palt();
            if tokens <= limit & not inf_excluded(e) then break;
        };
        suspend e;
    };
    leaves := saved;
end
procedure every_expr(lim)
    local e;
    limit := lim;
    tokens := 0;
    every e := e_match() do
        if not inf_excluded(e) then suspend e;
end
procedure every_match(plim, clim)
    local subj, pats, s, p, e;
    subj := inf_strings();
    limit := clim;
    tokens := 0;
    every put(subj, "'" || e_expression() || "'");
    pats := [];
    limit := plim;
    tokens := 0;
    every put(pats, e_palt());
    every s := !subj do
        every p := !pats do {
            e := s || " ? " || p;
            if not inf_excluded(e) then suspend e;
        };
end
procedure inf_defaults()
    local a;
    if /opt then {
        opt := table();
        opt["walk"] := "both";
        opt["kind"] := "both";
        opt["count"] := "50";
        opt["limit"] := "8";
        opt["seed"] := "1";
        opt["elimit"] := "1";
        opt["plimit"] := "1";
        opt["climit"] := "1";
    };
    if /subjects then {
        subjects := inf_strings();
        leaves := inf_integers() ||| inf_reals() ||| inf_strings() ||| inf_keywords() ||| inf_patterns();
        pleaves := [];
        every a := !(inf_patterns() ||| inf_calc_patterns()) do
            if not inf_excluded(a) then put(pleaves, a);
    };
    return;
end
procedure inf_opt(k, v)
    inf_defaults();
    if /opt[k] then fail;
    if k == ("walk") then v == ("random" | "every" | "both") | fail;
    if k == ("kind") then v == ("expr" | "match" | "both") | fail;
    if k == ("count" | "limit" | "seed" | "elimit" | "plimit" | "climit") then integer(v) | fail;
    opt[k] := v;
    return v;
end
procedure inf_walks()
    local w, d;
    w := opt["walk"];
    d := opt["kind"];
    if d == ("expr" | "both") then {
        if w == ("random" | "both") then suspend random_walk("expr", integer(opt["count"]), integer(opt["limit"]), integer(opt["seed"]));
        if w == ("every" | "both") then suspend every_expr(integer(opt["elimit"]));
    };
    if d == ("match" | "both") then {
        if w == ("random" | "both") then suspend random_walk("match", integer(opt["count"]), integer(opt["limit"]), integer(opt["seed"]));
        if w == ("every" | "both") then suspend every_match(integer(opt["plimit"]), integer(opt["climit"]));
    };
end
procedure inf_batch(n, name)
    local f, k, e;
    inf_defaults();
    /gen := create inf_walks();
    f := open(name, "w") | fail;
    k := 0;
    while k < n & e := @gen do {
        write(f, e);
        k +:= 1;
    };
    close(f);
    if k = 0 then fail;
    return k;
end
procedure drive(bsize, sbl)
    local b, n, d, total, differ;
    b := total := differ := 0;
    while n := inf_batch(bsize, "inf_batch.txt") do {
        b +:= 1;
        d := check("inf_batch.txt", sbl, total) | stop("infinite_snobol4: batch ", b, " was not checked");
        write("batch ", b, ": ", n, " expressions, ", n - d, " agree, ", d, " differ");
        total +:= n;
        differ +:= d;
    };
    write("total: ", total, " expressions in ", b, " batches of at most ", bsize, ", ", total - differ, " agree, ", differ, " differ");
    return total;
end
```
