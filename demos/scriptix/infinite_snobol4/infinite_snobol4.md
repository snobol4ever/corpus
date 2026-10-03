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
// the infinite loop."): this Snocone section starts the program. It sets the evaluator's globals, defines inf_render(),
// inf_judge(), check() and the test's functions f, g and h, reads the arguments, and its last statement hands the program to the
// Icon section's drive(), which owns the loop: batch after batch it writes the next lines and calls check() on them.
// check(batch, sbl, base) opens the batch file and the SPITBOL child on it through SPITBOL's own pipe file I/O,
// INPUT(.inf_oracle, 8, '!*sbl -bf inf_eval.sno < batch'), and judges every line exactly as the child's inf_eval.sno does --
// EVAL under SETEXIT, the same rendering (inf_render here is inf_eval.sno's, statement for statement), the child's lines read
// with &TRIM off so a rendered null string keeps its blank -- printing a DIFF line (numbered from base) for each disagreement
// and returning how many. A batch opens with its PRE-SET lines, which give a..z their values, and its code may stomp on them
// (Lon: "So add the a through z as pre-sets for the entire batch. They can be stomped on. That is the fun of the batch.");
// state lives for the whole batch on both sides. THE CLOSED WORLD (Lon 2026-10-03, in-chat to the ceo: "Let's begin designing
// new PRESETS, a through z, 26 variables. And interesting strings, "a" .. "z". Have TABLES/ARRAY indexed by number with
// values, "a" .. "z". Use interesting integers, 0 .. 9 ... 36 string values ... sprinkling the pattern with CAPTURES, immediate
// and conditional, to variables with names capital A..Z. All single letter names. Then write supporting code never using
// single variable names. So by keeping the access through indirection pointing back into this small set of characters a..z
// and variables a..z, then I thinking interesting things will happen."; "So we could have a[0] = \"a\", and a[1] = \"b\".";
// "Build the pattern from literal strings containing a..z union with 0..9. And build the subject string also from those. I
// suspect some parenthesis, brackets, and braces in a balanced manner in a pattern would be good."; "The test is to run the
// pattern, and the results are values X..Z."; "From now on do not allow assignment, =, operator in expressions since they
// would modify subsequent tests. Just assign CONDITIONAL and IMMEDIATE to X through Z for each."; "create an Icon generator
// that is grammar aware like we have, but that has smarts. Like when outputting a, it will do a[random number 0..9] instead.")
// is preset 3, the default: a = ARRAY('0:35') holding the 36 strings 'a'..'z' '0'..'9' by number, b..j = 1..9 and k = 0 (each
// integer names the letter that holds it: a[b] is 'b'), l..t the ring l = 'm' ... t = 'l' that $ walks, u = TABLE() the
// inverse (u[a[n]] = n for all 36), v..z five patterns carrying captures into X, Y and Z, the three cells a direct $ or .
// names, while PATTERN . h(n) and PATTERN $ $g(n) capture into any capital A..Z; the 26 capitals are nulled by one chained
// assignment at the top of every batch, since the SPITBOL child restarts per batch and the Snocone evaluator does not (check()
// nulls inf_caps at the top of every batch for the same reason). The preset line (inf_caps = 1), the second line of the batch,
// turns the result line into the evaluated value followed by the 26 capitals, A=- for null, else A= and the rendered value.
// NO ASSIGNMENT IN A TEST: neither walk emits the = operator; a test changes the world only through its captures, and
// the SMART EMITTERS (c_value, c_pvalue, c_subj, c_prim, c_sarg, c_index, c_elem) emit each cell the way its value is reached,
// a as a[random 0..9], an integer cell as a subscript, a ring cell behind $, a capture cell bare, behind $ or deferred as *$X.
// THE VARIABLES a..z BELONG TO THE TEST (Lon: "So never use variable a..z since
// they are used by the test for simplicity."): every name here is inf_-prefixed, as in inf_eval.sno, because SNOBOL4 scope is
// dynamic. Evaluating two function levels down from the child's flat loop, &FNCLEVEL and &RTNTYPE describe two different
// programs; the Icon section's exclusion list names them. THE SUPPORTING CODE USES NO SINGLE-LETTER NAME, and the test's
// three functions are f, g and h (Lon 2026-10-03: "We should add a f, g, h as FUNCTIONS that return a value and a name of
// variable, like .a or .x. And return \"a\" and \"x\"." then "Then you could have PATTERN . f() will assign to variable A (not a).
// I said it wrong. Use capitols from NAMES in the program."): f(n) returns a VALUE, the value of the cell named by the n-th
// string ($a[n]: f(1) is 1, f(11) is 'm', f(21) is the pattern v, f(0) is the array a itself); g(n) returns the STRING that
// names the CAPITAL of the n-th string ('A' for 0, 'X' for 23; a digit stays itself), a name to indirect through, so
// PATTERN $ $g(n) captures into that capital; h(n) returns the NAME of that capital (.A, a value of datatype NAME), so
// PATTERN . h(n) captures into it; each fails when a[n] does not exist or names no capital. h reads the names from
// inf_names, the one table of the supporting code that spells the capitals, because SCRIP cannot lower the name operator
// over an indirect variable (.$x, a SPITBOL form; hq_snobol4's row). A call saves and restores the cell that shares its
// name, so calling f leaves the cell f as it was.
// Arguments, key=value: batch=N (1024 default; 2048, 4096, 8192 at a time), sbl=COMMAND (the child's oracle command, default
// /home/resources/x64/bin/sbl -bf), and the generator's own words, each handed to the Icon section's inf_opt: walk=
// random|every|both kind=expr|match|both count= limit= seed= elimit= plimit= climit= preset=0|1|2|3 (3 the closed world,
// the default; 0 alternates 1 and 2 by batch) batches=N (stop after N batches; 0, the default, runs the generator dry).
&TRIM = 1;
inf_safe = DUPL('.', 32) SUBSTR(&ALPHABET, 33, 95) DUPL('.', 129);
inf_bsize = 1024;
inf_sbl = '/home/resources/x64/bin/sbl -bf';
function inf_render(inf_value) inf_dtype {
    inf_dtype = DATATYPE(inf_value);
    inf_render = inf_dtype;
    if (IDENT(inf_dtype, 'STRING')) { inf_render = inf_dtype ' ' SIZE(inf_value) ' ' REPLACE(inf_value, &ALPHABET, inf_safe); return; }
    if ((IDENT(inf_dtype, 'INTEGER'), IDENT(inf_dtype, 'REAL'))) { inf_render = inf_dtype ' ' inf_value; }
    return;
}
inf_names = TABLE();
inf_names['A'] = .A; inf_names['B'] = .B; inf_names['C'] = .C; inf_names['D'] = .D; inf_names['E'] = .E; inf_names['F'] = .F; inf_names['G'] = .G; inf_names['H'] = .H; inf_names['I'] = .I; inf_names['J'] = .J; inf_names['K'] = .K; inf_names['L'] = .L; inf_names['M'] = .M; inf_names['N'] = .N; inf_names['O'] = .O; inf_names['P'] = .P; inf_names['Q'] = .Q; inf_names['R'] = .R; inf_names['S'] = .S; inf_names['T'] = .T; inf_names['U'] = .U; inf_names['V'] = .V; inf_names['W'] = .W; inf_names['X'] = .X; inf_names['Y'] = .Y; inf_names['Z'] = .Z;
function f(inf_arg) inf_s { if (~(inf_s = a[inf_arg])) { freturn; } f = $inf_s; return; }
function g(inf_arg) inf_s { if (~(inf_s = a[inf_arg])) { freturn; } g = REPLACE(inf_s, &LCASE, &UCASE); return; }
function h(inf_arg) inf_s {
    if (~(inf_s = a[inf_arg])) { freturn; }
    h = inf_names[REPLACE(inf_s, &LCASE, &UCASE)];
    if (~DIFFER(h)) { freturn; }
    return;
}
function inf_capline() inf_rest, inf_letter {
    inf_rest = &UCASE;
    inf_capline = '';
    while (inf_rest ? LEN(1) . inf_letter = '') {
        if (DIFFER($inf_letter)) { inf_capline = inf_capline ' ' inf_letter '=' inf_render($inf_letter); }
        else { inf_capline = inf_capline ' ' inf_letter '=-'; }
    }
    return;
}
function inf_judge(inf_line) inf_result {
    &ERRLIMIT = 1000;
    SETEXIT('inf_errh');
    if (inf_result = EVAL(inf_line)) { inf_judge = inf_render(inf_result); } else { inf_judge = 'FAIL'; }
    if (DIFFER(inf_caps)) { inf_judge = inf_judge ' |' inf_capline(); }
    return;
inf_errh:
    inf_judge = 'ERROR ' &ERRTYPE;
    if (DIFFER(inf_caps)) { inf_judge = inf_judge ' |' inf_capline(); }
    return;
}
function check(inf_batch, inf_cmd, inf_base) inf_line, inf_want, inf_got, inf_count, inf_differ {
    if (~INPUT(.inf_expr, 7, inf_batch)) { OUTPUT = 'infinite_snobol4: the batch file ' inf_batch ' does not open'; freturn; }
    if (~INPUT(.inf_oracle, 8, '!*' inf_cmd ' inf_eval.sno < ' inf_batch)) {
        OUTPUT = 'infinite_snobol4: the SPITBOL child does not start: ' inf_cmd ' inf_eval.sno';
        freturn;
    }
    inf_count = 0;
    inf_differ = 0;
    inf_caps = '';
    while (inf_line = inf_expr) {
        &TRIM = 0;
        if (~(inf_want = inf_oracle)) {
            &TRIM = 1;
            OUTPUT = 'infinite_snobol4: the SPITBOL child answered fewer lines than the batch holds, at line ' (inf_base + inf_count + 1);
            freturn;
        }
        &TRIM = 1;
        inf_count = inf_count + 1;
        inf_got = inf_judge(inf_line);
        if (DIFFER(inf_got, inf_want)) {
            OUTPUT = 'DIFF ' (inf_base + inf_count) '  ' inf_line '  spitbol: ' inf_want '  scrip: ' inf_got;
            inf_differ = inf_differ + 1;
        }
    }
    if (inf_oracle) { OUTPUT = 'infinite_snobol4: the SPITBOL child answered more lines than the batch holds'; freturn; }
    ENDFILE(7);
    ENDFILE(8);
    check = inf_differ;
    return;
}
function inf_setarg(inf_arg) inf_key, inf_val {
    if (~(inf_arg ? BREAK('=') . inf_key '=' REM . inf_val)) { freturn; }
    if (IDENT(inf_key, 'batch')) {
        if (INTEGER(inf_val) GT(inf_val, 0)) { inf_bsize = inf_val; return; }
        freturn;
    }
    if (IDENT(inf_key, 'sbl')) { inf_sbl = inf_val; return; }
    if (inf_opt(inf_key, inf_val)) { return; }
    freturn;
}
function inf_readargs() inf_index, inf_arg {
    inf_index = HOST(3);
    while (inf_arg = HOST(2, inf_index)) {
        inf_index = inf_index + 1;
        if (~inf_setarg(inf_arg)) {
            OUTPUT = 'infinite_snobol4: an argument is batch=N, sbl=COMMAND or a generator word key=value, not ' inf_arg;
            freturn;
        }
    }
    return;
}
if (inf_readargs()) { drive(inf_bsize, inf_sbl); }
```

```Icon
# The Icon section drives: drive(bsize, sbl), called by the Snocone section's last statement once the arguments are read,
# loops batch after batch -- inf_batch writes the next expressions to inf_batch.txt from one generator held in a co-expression,
# and the Snocone section's check() evaluates them against the SPITBOL child and returns how many differ. One line per batch, a
# total at the end; a SCRIP that agrees with SPITBOL prints nothing else.
global tokens, limit, leaves, subjects, pleaves, opt, gen, nbatch, closed, caps
procedure inf_variables()
    return ["a", "b", "c", "d", "e", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
            "$r", "$s", "$x", ".i", "a[1]", "a[2]", "a[10]", "a[26]", "t['a']", "t['b']", "t[0]", "t[3]", "t[r]", "t[s]",
            "f(i)", "f(l)", "g(i)", "g(l)", "h(i)", "h(l)", "$g(l)", "$h(i)", "APPLY(x, i)", "APPLY(y, s)", "APPLY(z, r)", "EVAL(e)"];
end
procedure inf_pattern_variables()
    return ["p", "q", "u", "v", "w", "*p", "f(i)", "*f(l)"];
end
procedure c_alpha()
    return &lcase || &digits;
end
procedure c_caps()
    return ["X", "Y", "Z", "h(0)", "$g(1)"];
end
procedure c_lit(n)
    local s, al;
    al := c_alpha();
    s := "";
    every 1 to n do s ||:= ?al;
    return s;
end
procedure c_bal(d)
    local s, i, al;
    al := c_alpha();
    s := "";
    every 1 to ?3 do
        if ?10 <= 6 | d <= 0 then s ||:= ?al
        else { i := ?3; s ||:= "([{"[i] || c_bal(d - 1) || ")]}"[i]; };
    return s;
end
procedure c_digit()
    return string(?10 - 1);
end
procedure c_char()
    return ?c_alpha();
end
procedure c_int()
    return ?"bcdefghijk";
end
procedure c_ring()
    return ?"lmnopqrst";
end
procedure c_patc()
    return ?"vwxyz";
end
procedure c_cap()
    return ?"XYZ";
end
procedure c_index()
    local r;
    r := ?100;
    return ( (r <= 50, c_digit())
           | (r <= 75, c_int())
           | (r <= 85, "u[" || c_cap() || "]")
           | (r <= 92, "u['" || c_char() || "']")
           | ("u[g(" || c_digit() || ")]")
           );
end
procedure c_elem()
    local r;
    r := ?100;
    return ( (r <= 75, "a[" || c_index() || "]")
           | (r <= 90, "ITEM(a, " || c_index() || ")")
           | ("ITEM($a[0], " || c_index() || ")")
           );
end
procedure c_value()
    local r;
    r := ?100;
    return ( (r <= 22, c_elem())
           | (r <= 34, c_int())
           | (r <= 42, c_ring())
           | (r <= 50, "$" || c_ring())
           | (r <= 55, "$$" || c_ring())
           | (r <= 65, c_cap())
           | (r <= 70, "$" || c_cap())
           | (r <= 76, "u[" || c_elem() || "]")
           | (r <= 80, "u['" || c_char() || "']")
           | (r <= 84, "f(" || c_index() || ")")
           | (r <= 88, "g(" || c_index() || ")")
           | (r <= 91, "h(" || c_index() || ")")
           | (r <= 94, "$g(" || c_index() || ")")
           | (r <= 96, "$h(" || c_index() || ")")
           | (r <= 98, c_patc())
           | ("APPLY('f', " || c_index() || ")")
           );
end
procedure c_pvalue()
    local r;
    r := ?100;
    return ( (r <= 30, c_patc())
           | (r <= 45, "*" || c_patc())
           | (r <= 55, "*" || c_cap())
           | (r <= 65, "*$" || c_cap())
           | (r <= 72, "*" || c_elem())
           | (r <= 80, "f(" || string(20 + ?5) || ")")
           | (r <= 86, "*f(" || c_index() || ")")
           | (r <= 90, "*$g(" || c_index() || ")")
           | (r <= 95, c_elem())
           | (c_cap())
           );
end
procedure c_str()
    local r;
    r := ?100;
    return "'" || ( (r <= 40, c_lit(?3)) | (r <= 70, c_bal(2)) | (r <= 80, c_char()) | (r <= 90, "") | c_bal(3) ) || "'";
end
procedure c_subj()
    local r;
    r := ?100;
    return ( (r <= 45, c_str())
           | (r <= 62, c_elem())
           | (r <= 72, c_elem() || " " || c_elem())
           | (r <= 80, c_cap())
           | (r <= 84, "$" || c_ring())
           | (r <= 89, c_ring() || " " || c_cap())
           | (r <= 94, "g(" || c_index() || ") f(" || c_index() || ")")
           | (c_elem() || " " || c_str())
           );
end
procedure c_sarg()
    local r;
    r := ?100;
    return ( (r <= 35, "'" || c_lit(?3) || "'")
           | (r <= 50, ?["'()'", "'[]'", "'{}'", "'([{'", "')]}'", "'0123456789'", "'abcdefghij'"])
           | (r <= 65, c_elem())
           | (r <= 75, c_cap())
           | (r <= 85, "*" || c_cap())
           | (r <= 90, "*$" || c_cap())
           | (r <= 95, "g(" || c_index() || ")")
           | ("$" || c_ring())
           );
end
procedure c_prim()
    local r;
    r := ?100;
    return ( (r <= 35, ?["ANY", "NOTANY", "SPAN", "BREAK", "BREAKX"] || "(" || c_sarg() || ")")
           | (r <= 60, ?["POS", "RPOS", "LEN", "TAB", "RTAB"] || "(" || c_index() || ")")
           | (r <= 70, ?["ARB", "BAL", "REM", "FAIL", "FENCE", "ABORT"])
           | (r <= 85, c_str())
           | (r <= 92, c_elem())
           | c_pvalue()
           );
end
procedure c_sample(p, n)
    local l, seen, s;
    l := [];
    seen := set();
    every 1 to n do {
        s := p();
        if member(seen, s) then next;
        insert(seen, s);
        put(l, s);
    };
    return l;
end
procedure c_presets()
    local l, x, n;
    l := ["(A = B = C = D = E = F = G = H = I = J = K = L = M = N = O = P = Q = R = S = T = U = V = W = X = Y = Z = '')", "(inf_caps = 1)",
          "(a = ARRAY('0:35'))"];
    n := 0;
    every x := !(&lcase || &digits) do { put(l, "(a[" || n || "] = '" || x || "')"); n +:= 1; };
    n := 1;
    every x := !"bcdefghij" do { put(l, "(" || x || " = " || n || ")"); n +:= 1; };
    put(l, "(k = 0)");
    every x := 12 to 19 do put(l, "(" || &lcase[x] || " = '" || &lcase[x + 1] || "')");
    put(l, "(t = 'l')");
    put(l, "(u = TABLE())");
    n := 0;
    every x := !(&lcase || &digits) do { put(l, "(u['" || x || "'] = " || n || ")"); n +:= 1; };
    every put(l, !["(v = LEN(1) $ X)", "(w = ANY('bcd') . Y)", "(x = *$X)", "(y = BREAK('n') $ Z)", "(z = POS(0) *v *w)"]);
    return l;
end
procedure inf_presets(variant)
    local l, x;
    if variant = 3 then return c_presets();
    l := ["(i = 0)", "(j = 1)", "(k = -1)", "(l = 10)", "(m = -9223372036854775807 - 1)", "(n = 9223372036854775807)",
          "(b = 0.5)", "(c = -2.0)", "(d = 1.0E10)", "(r = 'b')", "(s = 'a')", "(o = '')",
          "(p = 'a' | 'b')", "(q = SPAN('abc'))", "(u = ARB 'c')", "(v = FENCE(LEN(1)))", "(w = BREAK('c') . r)",
          "(e = *(i + j))", "(x = 'f')", "(y = 'g')", "(z = 'h')"];
    if variant = 1 then {
        put(l, "(a = ARRAY(26))");
        every x := 1 to 26 do put(l, "(a[" || x || "] = '" || &lcase[x] || "')");
        put(l, "(t = TABLE())");
        every x := !&lcase do put(l, "(t['" || x || "'] = '" || x || "')");
    } else {
        put(l, "(a = ARRAY(10))");
        every x := 1 to 10 do put(l, "(a[" || x || "] = " || x || ")");
        put(l, "(t = TABLE())");
        every x := 0 to 9 do put(l, "(t[" || x || "] = " || x || ")");
    };
    return l;
end
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
            "&LASTNO", "&STCOUNT", "&FNCLEVEL", "&RTNTYPE",
            "! n", "!n", "** n", "**n", "^ n", "^n"];
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
procedure r_leaf()
    local r;
    if /closed then return ?leaves;
    r := ?100;
    return ( (r <= 60, c_value()) | (r <= 75, c_str()) | (r <= 85, c_digit()) | (r <= 92, c_prim()) | ?leaves );
end
procedure r_primary()
    local r;
    r := ?100;
    return ( (r <= 50 | not r_room(3), r_token(r_leaf()))
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
    if \closed then return r_token(c_subj());
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
    if \closed & r_room(3) & r > 60 then
        return ( (r <= 70, r_token("(") || r_palt() || r_token(")"))
               | (r <= 76, r_token("ARBNO(") || r_palt() || r_token(")"))
               | (r <= 80, r_token("FENCE(") || r_palt() || r_token(")"))
               | (r <= 88, r_pelem() || r_bin("$") || r_token(c_cap()))
               | (r <= 94, r_pelem() || r_bin(".") || r_token(c_cap()))
               | (r <= 97, r_pelem() || r_bin(".") || r_token("h(" || c_index() || ")"))
               | (r_pelem() || r_bin("$") || r_token("$g(" || c_index() || ")"))
               );
    if \closed then return r_token(c_prim());
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
    suspend (e_room(3), e_token(!subjects) || e_bin("?") || e_alt());
    suspend e_alt() || ("" | (e_room(2), e_bin("?") || e_alt()));
end
procedure e_alt()
    suspend e_cat() || ("" | (e_room(2), e_bin("|") || e_alt()));
end
procedure e_cat()
    suspend e_add() || ("" | (e_room(2), e_token(" ") || e_cat()));
end
procedure e_add()
    suspend e_mul() || ("" | (e_room(2), e_bin("+" | "-") || e_add()));
end
procedure e_mul()
    suspend e_exp() || ("" | (e_room(2), e_bin("*" | "/") || e_mul()));
end
procedure e_exp()
    suspend e_unary() || ("" | (e_room(2), e_bin("**" | "^" | "!") || e_exp()));
end
procedure e_unary()
    suspend e_primary() | (e_room(2), e_un(!"-+*") || e_unary());
end
procedure e_primary()
    suspend ( e_token(!leaves)
            | (e_room(3), e_token("(") || e_match() || e_token(")"))
            );
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
    suspend e_factor() || ("" | (e_room(2), e_token("*" | "/") || e_term()));
end
procedure e_expression()
    suspend e_term() || ("" | (e_room(2), e_token("+" | "-") || e_expression()));
end
procedure e_palt()
    suspend e_pcat() || ("" | (e_room(2), e_token(" | ") || e_palt()));
end
procedure e_pcat()
    suspend e_pelem() || ("" | (e_room(2), e_token(" ") || e_pcat()));
end
procedure e_pelem()
    suspend e_token(!pleaves) | (e_room(3), e_token("(" | "ARBNO(" | "FENCE(") || e_palt() || e_token(")"));
    if \closed then suspend (e_room(3), e_token(!pleaves) || e_bin("$" | ".") || e_token(!caps));
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
    if \closed then subj := subjects else {
        subj := inf_strings();
        limit := clim;
        tokens := 0;
        every put(subj, "'" || e_expression() || "'");
    };
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
        opt["preset"] := "3";
        opt["batches"] := "0";
    };
    return;
end
procedure inf_lists()
    local a;
    if \subjects then return;
    caps := c_caps();
    if opt["preset"] == "3" then {
        closed := 1;
        &random := integer(opt["seed"]);
        subjects := c_sample(c_subj, 10);
        leaves := ["0", "1", "9"] ||| c_sample(c_value, 16) ||| c_sample(c_str, 4) ||| inf_keywords();
        pleaves := [];
        every a := !(c_sample(c_prim, 20) ||| c_sample(c_pvalue, 6)) do if not inf_excluded(a) then put(pleaves, a);
        return;
    };
    subjects := inf_strings() ||| ["r", "s", "a[1]", "t['b']"];
    leaves := inf_integers() ||| inf_reals() ||| inf_strings() ||| inf_keywords() ||| inf_patterns() ||| inf_variables();
    pleaves := [];
    every a := !(inf_patterns() ||| inf_calc_patterns() ||| inf_pattern_variables()) do
        if not inf_excluded(a) then put(pleaves, a);
    return;
end
procedure inf_opt(k, v)
    inf_defaults();
    if /opt[k] then fail;
    if k == ("walk") then v == ("random" | "every" | "both") | fail;
    if k == ("kind") then v == ("expr" | "match" | "both") | fail;
    if k == ("count" | "limit" | "seed" | "elimit" | "plimit" | "climit" | "batches") then integer(v) | fail;
    if k == "preset" then (0 <= integer(v) <= 3) | fail;
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
    local f, k, e, variant, pre;
    inf_defaults();
    inf_lists();
    /gen := create inf_walks();
    /nbatch := 0;
    nbatch +:= 1;
    variant := integer(opt["preset"]);
    if variant = 0 then variant := (nbatch - 1) % 2 + 1;
    pre := inf_presets(variant);
    f := open(name, "w") | fail;
    every write(f, !pre);
    k := 0;
    while k < n & e := @gen do {
        write(f, e);
        k +:= 1;
    };
    close(f);
    if k = 0 then fail;
    return k + *pre;
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
        if b = integer(opt["batches"]) then break;
    };
    write("total: ", total, " expressions in ", b, " batches of at most ", bsize, ", ", total - differ, " agree, ", differ, " differ");
    return total;
end
```
