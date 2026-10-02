```SNOBOL4
*  infinite_snobol4.md -- THE SCRIPtix PROGRAM: Icon generates SNOBOL4 expressions, SNOBOL4 EVALs each one and checks it
*  against a SPITBOL child, every difference reported, in ONE file (Lon 2026-10-02, in-chat to the ceo: "We want the Icon to
*  produce millions of snippets of SNOBOL4 expressions per second, and pass that string over to SNOBOL4 to run through EVAL";
*  "The Icon drives the generation of SNOBOL4 expressions, passes the string to a SNOBOL4 function, which calls EVAL and
*  communicates to the CHILD-PROCESS, compares and reports differences."; "we'll proceed with the SCRIPtix demo using some of
*  the same SNOBOL4 and Icon programs you've already created, but ALL in one file, except the child processes. I suppose you
*  could do batches, with 1024, 2048, 4096, or 8192 at a time. This is the ULTIMATE test of SCRIPtix."; "I'm hoping we have
*  the "!process" file I/O fake-out sub-process."; "You could use that instead of IPC COMM's. Better DEMO since it straight
*  SNOBOL4 feature.").
*  THIS SECTION DRIVES. Per batch it asks the Icon section for the next N expressions (inf_batch writes them to inf_batch.txt
*  and fails when the walks are spent), opens the SPITBOL child on the batch through SPITBOL's own pipe file I/O,
*  INPUT(.oracle, 8, '!*sbl -bf inf_eval.sno < inf_batch.txt'), and evaluates every expression itself exactly as the child's
*  inf_eval.sno does -- the same loop shape at function level zero, EVAL under SETEXIT, the same rendering -- so the two
*  answers are comparable line for line (the child's lines are read with &TRIM off, so a rendered null string keeps its
*  trailing blank; &TRIM is back on before every EVAL, as the child has it). Each difference prints one DIFF line,
*  each batch one line, and the run ends with a total. A SCRIP that agrees with SPITBOL prints batch lines and the total only.
*  Arguments, key=value: batch=N (1024 default; 2048, 4096, 8192 at a time), sbl=COMMAND (the child's oracle command,
*  default /home/resources/x64/bin/sbl -bf), and the generator's own words, each handed to the Icon section: walk=random|
*  every|both kind=expr|match|both count= limit= seed= elimit= plimit= climit= (the walks of inf_snobol4.icn).
        &TRIM = 1
        safe = DUPL('.', 32) SUBSTR(&ALPHABET, 33, 95) DUPL('.', 129)
        DEFINE('render(r)t')                                    :(render_end)
render  t = DATATYPE(r)
        render = t
        IDENT(t, 'STRING')                                      :S(render_s)
        IDENT(t, 'INTEGER')                                     :S(render_n)
        IDENT(t, 'REAL')                                        :S(render_n)F(RETURN)
render_s
        render = t ' ' SIZE(r) ' ' REPLACE(r, &ALPHABET, safe)  :(RETURN)
render_n
        render = t ' ' r                                        :(RETURN)
render_end
        bsize = 1024
        sbl = '/home/resources/x64/bin/sbl -bf'
        i = HOST(3)
args    arg = HOST(2, i)                                        :F(go)
        i = i + 1
        arg BREAK('=') . key '=' REM . val                      :F(badarg)
        IDENT(key, 'batch')                                     :S(setbatch)
        IDENT(key, 'sbl')                                       :S(setsbl)
        inf_opt(key, val)                                       :S(args)F(badarg)
setbatch
        bsize = INTEGER(val) val                                :F(badarg)
        GT(bsize, 0)                                            :S(args)F(badarg)
setsbl  sbl = val                                               :(args)
badarg  OUTPUT = 'infinite_snobol4: an argument is batch=N, sbl=COMMAND or a generator word key=value, not ' arg :(END)
go      b = 0
        k = 0
        d = 0
batch   n = inf_batch(bsize, 'inf_batch.txt')                   :F(done)
        b = b + 1
        bd = 0
        INPUT(.expr, 7, 'inf_batch.txt')                        :F(nobatch)
        INPUT(.oracle, 8, '!*' sbl ' inf_eval.sno < inf_batch.txt') :F(nochild)
next    line = expr                                             :F(endb)
        &TRIM = 0
        want = oracle                                           :F(short)
        &TRIM = 1
        k = k + 1
        &ERRLIMIT = 1000
        SETEXIT('errh')
        r = EVAL(line)                                          :S(ok)
        got = 'FAIL'                                            :(cmp)
ok      got = render(r)                                         :(cmp)
errh    got = 'ERROR ' &ERRTYPE                                 :(cmp)
cmp     IDENT(got, want)                                        :S(next)
        OUTPUT = 'DIFF ' k '  ' line '  spitbol: ' want '  scrip: ' got
        bd = bd + 1                                             :(next)
endb    &TRIM = 1
        extra = oracle                                          :S(long)
        ENDFILE(7)
        ENDFILE(8)
        d = d + bd
        OUTPUT = 'batch ' b ': ' n ' expressions, ' (n - bd) ' agree, ' bd ' differ' :(batch)
nobatch OUTPUT = 'infinite_snobol4: the batch file inf_batch.txt does not open' :(END)
nochild OUTPUT = 'infinite_snobol4: the SPITBOL child does not start: ' sbl ' inf_eval.sno' :(END)
short   OUTPUT = 'infinite_snobol4: the SPITBOL child answered fewer lines than batch ' b ' holds, at expression ' k :(END)
long    OUTPUT = 'infinite_snobol4: the SPITBOL child answered more lines than batch ' b ' holds' :(END)
done    OUTPUT = 'total: ' k ' expressions in ' b ' batches of at most ' bsize ', ' (k - d) ' agree, ' d ' differ'
END
```

```Icon
# The Icon section: the generator of inf_snobol4.icn, its grammar procedures verbatim, its four walks one generator
# (inf_walks) held in a co-expression, so each inf_batch call resumes the walk where the last batch stopped.
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
            "&LASTNO", "&STCOUNT"];
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
```
