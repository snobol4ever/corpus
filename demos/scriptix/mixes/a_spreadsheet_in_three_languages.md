# A spreadsheet in three languages

Each language does the kind of work it was made for.

* **SNOBOL4, pattern matching.** A sheet is typed as plain lines, `B1 = A1 * 2 + C3`.
  One grammar of patterns reads every line: the cell's name, the formula as a postfix
  string, every reference and every range it holds. A line it cannot read is refused
  with its place, never guessed at.
* **Prolog, logic.** The references are facts. Prolog finds an order of evaluation in
  which every cell comes after the cells it reads, finds and names EVERY CYCLE
  (`B1 -> C1 -> B2 -> B1`), and marks the cells that hang on one. It also says, for each
  cell, which other cells depend on it.
* **Icon, evaluation and search.** Icon evaluates the cells in Prolog's order, its
  generators walking the ranges of SUM, MAX, MIN, COUNT and AVG, prints each sheet as an
  aligned table, and answers WHAT IF: one cell changed, and only the cells Prolog says
  depend on it computed again, each named.

Three sheets are typed here: a clean one, one with cycles, one with lines that are not formulas.
SNOBOL4 hands Prolog the facts: Prolog calls SNOBOL4's functions, one cell and one reference
at a time. Prolog hands Icon its answers by calling Icon's procedures, `place` for each cell
in its order and `affects` for each pair of a cell and a cell that depends on it. Icon calls
SNOBOL4 for each cell's postfix string, and reads SNOBOL4's two counters as globals.

THE ANSWER has no oracle. `a_spreadsheet_in_three_languages.ref` was written by hand from
the three sheets, each value worked out from its formula by arithmetic and each cycle read
off the cell graph, and the program was then checked to print exactly that.

```SNOBOL4
        digits  = '0123456789'
        okchars = &UCASE digits ' +-*/():,.='
        sheet_title = TABLE() ; sheet_text = TABLE()
        sheet_title[1] = 'a clean sheet'
        sheet_text[1] = 'A1 = 10;A2 = 20;A3 = 30;B1 = A1 * 2 + C3;B2 = (A1 + A2) / 4;'
+                       'B3 = MAX(A1:A3) - MIN(A1:A3);C1 = SUM(B1:B3);C2 = C1 / A2;'
+                       'C3 = SUM(A1:A3);D1 = COUNT(A1:C3);'
        sheet_title[2] = 'a sheet with cycles'
        sheet_text[2] = 'A1 = 5;A2 = A1 + 1;B1 = C1 * 2;C1 = B2 + A2 + F1;B2 = B1 - 3;'
+                       'F1 = C1 + 1;D1 = B2 + 100;G1 = D1 * 2;D2 = A2 * 10;E1 = E1 + 1;'
        sheet_title[3] = 'a sheet with lines that are not formulas'
        sheet_text[3] = 'A1 = 4;A2 = 6 $ 2;A3 = (A1 + 3;B1 = A1 * 2 +;B2 = SUM(A1:A3;'
+                       'C1 = A1 + A2;C2 = B1 * 3;2B = 7;D1 = 100 / A1;D2 = D1 / (A1 - 4);'
+                       'E1 half of this line is missing;'
        nsheet = 3
        ncell = TABLE() ; cname = TABLE() ; ftext = TABLE() ; postt = TABLE()
        nref = TABLE() ; refn = TABLE() ; seen = TABLE() ; nrefused = TABLE() ; stk = TABLE()
        p_o    = SPAN(' ') | ''
        p_cell = ANY(&UCASE) SPAN(digits)
        p_num  = (SPAN(digits) ('.' SPAN(digits) | '')) $ tk *emit(tk)
        p_ref  = (p_cell (':' p_cell | '')) $ tk *emit(tk)
        p_func = SPAN(&UCASE) $ fn '(' *emit('{' fn) p_o *expr p_o
+                ARBNO(',' p_o *expr p_o) ')' *emit('}')
        fac    = p_func | p_ref | p_num | '(' p_o *expr p_o ')' | '-' p_o *fac *emit('neg')
        trm    = *fac ARBNO(p_o ANY('*/') $ op *stk_push(op) p_o *fac *popemit())
        expr   = *trm ARBNO(p_o ANY('+-') $ op *stk_push(op) p_o *trm *popemit())
        DEFINE('emit(x)')                                  :(emit_end)
emit    post = post ' ' x                                  :(RETURN)
emit_end
        DEFINE('stk_push(x)')                              :(push_end)
stk_push sp = sp + 1
        stk[sp] = x                                        :(RETURN)
push_end
        DEFINE('popemit()')                                :(pe_end)
popemit post = post ' ' stk[sp]
        sp = sp - 1                                        :(RETURN)
pe_end
*  addref(s,name,r): the cell name reads the cell r, once.
        DEFINE('addref(s,name,r)')                         :(ar_end)
addref  IDENT(seen[s ':' name ':' r], 1)                   :S(RETURN)
        seen[s ':' name ':' r] = 1
        nref[s ':' name] = nref[s ':' name] + 1
        refn[s ':' name ':' nref[s ':' name]] = r          :(RETURN)
ar_end
*  expand(s,name,a,b): every cell of the range a:b is read by name.
        DEFINE('expand(s,name,a,b)c1,r1,c2,r2,c,r')        :(ex_end)
expand  a POS(0) LEN(1) . c1 SPAN(digits) . r1
        b POS(0) LEN(1) . c2 SPAN(digits) . r2
        r = r1
ex_row  c = ORD(c1)
ex_col  addref(s, name, CHAR(c) r)
        c = LT(c, ORD(c2)) c + 1                           :S(ex_col)
        r = LT(r, r2) r + 1                                :S(ex_row)F(RETURN)
ex_end
*  refs(s,name): every reference of the postfix string, the ranges opened out.
        DEFINE('refs(s,name)rest,t,a,b')                   :(rf_end)
refs    nref[s ':' name] = 0
        rest = postt[s ':' name] ' '
rf_1    rest BREAK(' ') . t SPAN(' ') =                    :F(RETURN)
        t POS(0) p_cell RPOS(0)                            :S(rf_one)
        t POS(0) (p_cell . a) ':' (p_cell . b) RPOS(0)     :F(rf_1)
        expand(s, name, a, b)                              :(rf_1)
rf_one  addref(s, name, t)                                 :(rf_1)
rf_end
*  diagnose(line): why a line is refused, and where (a column of the line, from 1).
        DEFINE('diagnose(line)pos,c,odepth,lhs,rhs,f0,n,i') :(dg_end)
diagnose
        line '='                                           :S(dg_char)
        diagnose = 'there is no = in this line'            :(RETURN)
dg_char pos = 0
        line POS(0) SPAN(okchars) @pos
        LT(pos, SIZE(line))                                :F(dg_name)
        c = SUBSTR(line, pos + 1, 1)
        diagnose = 'unexpected character ' "'" c "'" ' at column ' pos + 1  :(RETURN)
dg_name line BREAK('=') . lhs '=' REM . rhs
        f0 = SIZE(lhs) + 1
        lhs = TRIM(lhs)
        lhs POS(0) p_cell RPOS(0)                          :S(dg_par)
        diagnose = "'" lhs "' is not a cell name, at column 1"  :(RETURN)
dg_par  i = 0 ; odepth = 0
dg_c    i = LT(i, SIZE(line)) i + 1                        :F(dg_open)
        c = SUBSTR(line, i, 1)
        IDENT(c, '(')                                      :F(dg_c1)
        odepth = odepth + 1
        stk[odepth] = i                                    :(dg_c)
dg_c1   IDENT(c, ')')                                      :F(dg_c)
        EQ(odepth, 0)                                      :F(dg_pop)
        diagnose = 'unexpected ) at column ' i             :(RETURN)
dg_pop  odepth = odepth - 1                                :(dg_c)
dg_open EQ(odepth, 0)                                      :S(dg_pre)
        diagnose = '( opened at column ' stk[odepth] ' is never closed'  :(RETURN)
dg_pre  n = SIZE(rhs)
dg_try  EQ(n, 0)                                           :S(dg_none)
        post = '' ; sp = 0
        SUBSTR(rhs, 1, n) POS(0) p_o *expr p_o RPOS(0)     :S(dg_skip)
        n = n - 1                                          :(dg_try)
dg_skip IDENT(SUBSTR(rhs, n + 1, 1), ' ')                  :F(dg_say)
        n = n + 1                                          :(dg_skip)
dg_say  diagnose = 'the formula stops making sense at column ' f0 + n + 1  :(RETURN)
dg_none diagnose = 'the formula cannot be read, from column ' f0 + 2   :(RETURN)
dg_end
*  What Prolog and Icon ask for.
        DEFINE('sheet_cells(s)')                           :(f1_end)
sheet_cells sheet_cells = ncell[s]                         :(RETURN)
f1_end
        DEFINE('cell_at(s,i)')                             :(f2_end)
cell_at cell_at = cname[s ':' i]                           :(RETURN)
f2_end
        DEFINE('ref_count(s,name)')                        :(f3_end)
ref_count ref_count = nref[s ':' name]                     :(RETURN)
f3_end
        DEFINE('ref_at(s,name,k)')                         :(f4_end)
ref_at  ref_at = refn[s ':' name ':' k]                    :(RETURN)
f4_end
        DEFINE('post_of(s,name)')                          :(f5_end)
post_of post_of = postt[s ':' name]                        :(RETURN)
f5_end
        DEFINE('title_of(s)')                              :(f6_end)
title_of title_of = sheet_title[s]                         :(RETURN)
f6_end
        DEFINE('has_cell(s,name)')                         :(f7_end)
has_cell has_cell = DIFFER(postt[s ':' name]) 1            :S(RETURN)F(FRETURN)
f7_end
        DEFINE('reads_of(s,name)k')                        :(f8_end)
reads_of k = 0
f8_1    k = LT(k, nref[s ':' name]) k + 1                  :F(f8_2)
        reads_of = reads_of ' ' refn[s ':' name ':' k]     :(f8_1)
f8_2    reads_of = IDENT(reads_of) ' nothing'               :(RETURN)
f8_end
*  The reading itself.
        cells = 0 ; refused = 0
        s = 0
sheet   s = LT(s, nsheet) s + 1                            :F(done)
        ncell[s] = 0 ; nrefused[s] = 0 ; ln = 0
        text = sheet_text[s]
        OUTPUT = 'snobol4: sheet ' s ', ' sheet_title[s] ':'
next    text BREAK(';') . line ';' =                       :F(summ)
        ln = ln + 1
        line = TRIM(line)
        post = '' ; sp = 0
        line POS(0) (p_cell . name) p_o '=' p_o *expr p_o RPOS(0)  :F(bad)
        post = SUBSTR(post, 2)
        ncell[s] = ncell[s] + 1
        cname[s ':' ncell[s]] = name
        postt[s ':' name] = post
        line BREAK('=') '=' REM . rhs
        rhs POS(0) SPAN(' ') =
        ftext[s ':' name] = rhs
        refs(s, name)
        OUTPUT = 'snobol4:   ' RPAD(name, 3) '= ' RPAD(rhs, 24) ' postfix ' RPAD(post, 30) ' reads' reads_of(s, name)  :(next)
bad     nrefused[s] = nrefused[s] + 1
        OUTPUT = 'snobol4:   line ' ln ' refused: ' diagnose(line) '  [' line ']'  :(next)
summ    OUTPUT = 'snobol4:   ' ncell[s] ' cells read, ' nrefused[s] ' lines refused'
        cells = cells + ncell[s] ; refused = refused + nrefused[s]  :(sheet)
done    OUTPUT = 'snobol4: ' cells ' cells in ' nsheet ' sheets, ' refused ' lines refused'
END
```

```Icon
global order, status, deps, evals, val

# place(s, cell, state): Prolog hands over each cell of a sheet in its order of evaluation,
# then the cells it cannot order, each with its state: ok, cycle or hangs.
procedure place(s, cell, state)
    /order := table();
    /status := table();
    /order[s] := [];
    put(order[s], cell);
    status[s || ":" || cell] := state;
    return *order[s];
end

# affects(s, x, y): Prolog says the cell y depends, directly or not, on the cell x.
procedure affects(s, x, y)
    /deps := table();
    /deps[s || ":" || x] := [];
    put(deps[s || ":" || x], y);
    return 1;
end
# the values and the count of evaluations Icon keeps from here on, set where they are declared
procedure main()
    evals := 0;
    val := table();
end
```

```Prolog
:- dynamic defined/2, reads/3.

% The facts, asked of SNOBOL4 one cell at a time.
load(S) :- sheet_cells(S, N), forall(between(1, N, I), (cell_at(S, I, C), assertz(defined(S, C)), load_reads(S, C))).
load_reads(S, C) :- ref_count(S, C, K), forall(between(1, K, J), (ref_at(S, C, J, R), assertz(reads(S, C, R)))).

% An order of evaluation: the smallest cell that has all it reads done, again and again.
order(S, Order, Stuck) :- findall(C, defined(S, C), Cs0), msort(Cs0, Cs), sweep(S, Cs, [], Order, Stuck).
sweep(S, Todo, Done, Order, Stuck) :-
    (   member(C, Todo), ready(S, C, Done)
    ->  delete(Todo, C, Rest), sweep(S, Rest, [C|Done], Order, Stuck)
    ;   reverse(Done, Order), Stuck = Todo ).
ready(S, C, Done) :- \+ ( reads(S, C, R), defined(S, R), \+ memberchk(R, Done) ).

% Every cycle, once, started at its smallest cell: a path of cells each reading the next.
cycles(S, Cycles) :- findall(Cyc, (defined(S, Start), walk(S, Start, Start, [Start], Cyc)), Cs), sort(Cs, Cycles).
walk(S, Start, At, Seen, Cyc) :-
    reads(S, At, N), defined(S, N),
    (   N == Start -> reverse([Start|Seen], Cyc)
    ;   N @> Start, \+ memberchk(N, Seen), walk(S, Start, N, [N|Seen], Cyc) ).

% The cells that read x, and those that read them, and so on.
affected(S, X, Ys) :- spread(S, [X], [], Ys0), msort(Ys0, Ys).
spread(_, [], Seen, Seen).
spread(S, [X|Todo], Seen, Out) :-
    findall(Y, (reads(S, Y, X), \+ memberchk(Y, Seen), \+ memberchk(Y, Todo)), New0), sort(New0, New),
    append(Seen, New, Seen1), append(Todo, New, Todo1), spread(S, Todo1, Seen1, Out).

arrow(Cyc, Text) :- atomic_list_concat(Cyc, ' -> ', Text).
say(Parts) :- atomic_list_concat(['prolog: '|Parts], Line), write(Line), nl.
names(Cs, Text) :- ( Cs == [] -> Text = 'none' ; atomic_list_concat(Cs, ' ', Text) ).

report(S) :-
    order(S, Order, Stuck), cycles(S, Cycles),
    findall(C, (member(Cyc, Cycles), member(C, Cyc)), OnCyc0), sort(OnCyc0, OnCyc),
    findall(C, (member(C, Stuck), \+ memberchk(C, OnCyc)), Hang),
    names(Order, OT), names(OnCyc, CT), names(Hang, HT),
    title_of(S, Title), say(['sheet ', S, ', ', Title, ': ', 'evaluate in the order ', OT]),
    forall(member(Cyc, Cycles), (arrow(Cyc, A), say(['  a cycle: ', A]))),
    ( Cycles == [] -> say(['  no cycle']) ; say(['  on a cycle: ', CT, '; hanging on one: ', HT]) ),
    forall(member(C, Order), place(S, C, ok, _)),
    forall(member(C, Stuck), ( memberchk(C, OnCyc) -> place(S, C, cycle, _) ; place(S, C, hangs, _) )),
    forall(( member(X, Order), \+ reads(S, X, _) ),
           ( affected(S, X, Ys), names(Ys, YT), say(['  ', X, ' feeds ', YT]),
             forall(( member(Y, Ys), memberchk(Y, Order) ), affects(S, X, Y, _)) )).

:- forall(between(1, 3, S), load(S)).
:- forall(between(1, 3, S), report(S)).
```

```Icon
global order, status, deps, evals, val
global post_of, has_cell, title_of           # SNOBOL4's functions, declared because this section calls them
global cells, refused                        # SNOBOL4's counters, declared because this section reads them

# words(s): the blank-separated words of s, one at a time.
procedure words(s)
    local w;
    s ? while tab(upto(~' ')) do { w := tab(many(~' ')); suspend w; };
end

# range_cells(t): every cell name of a range such as A1:C3, row by row.
procedure range_cells(t)
    local c1, r1, c2, r2, c, r;
    t ? { c1 := move(1); r1 := integer(tab(upto(':'))); move(1); c2 := move(1); r2 := integer(tab(0)); };
    every r := r1 to r2 do every c := ord(c1) to ord(c2) do suspend char(c) || r;
end

procedure cell_value(s, c)
    return (has_cell(s, c) & \val[s || ":" || c]) | "#REF!";
end

procedure range_values(s, t)
    local l, c;
    l := [];
    every c := range_cells(t) do if has_cell(s, c) then put(l, cell_value(s, c));
    return l;
end

procedure arith(op, a, b)
    local r;
    if type(a) == "list" | type(b) == "list" then return "#VALUE!";
    if type(a) == "string" then return a;
    if type(b) == "string" then return b;
    case op of {
        "+": return a + b;
        "-": return a - b;
        "*": return a * b;
        "/": {
            if b = 0 then return "#DIV/0!";
            if type(a) == "integer" & type(b) == "integer" & a % b = 0 then return a / b;
            r := real(a) / real(b);
            return if r = integer(r) then integer(r) else r;
        }
    };
end

# reduce(f, args): SUM, COUNT, AVG, MAX or MIN of the numbers among the arguments and the cells of their ranges.
procedure reduce(f, args)
    local items, x, n, total, best;
    items := [];
    every x := !args do if type(x) == "list" then every put(items, !x) else put(items, x);
    n := 0;
    total := 0;
    every x := !items do if type(x) ~== "string" then { n +:= 1; total +:= x; };
    if f ~== "COUNT" then every x := !items do if type(x) == "string" then return x;
    case f of {
        "SUM": return total;
        "COUNT": return n;
        "AVG": return arith("/", total, n);
        "MAX": { every x := !items do if /best | x > best then best := x; return \best | 0; };
        "MIN": { every x := !items do if /best | x < best then best := x; return \best | 0; };
        default: return "#NAME?"
    };
end

# calc(s, cell): the cell's postfix string run on a stack.
procedure calc(s, cell)
    local st, t, a, b, args, x, f;
    st := [];
    evals +:= 1;
    every t := words(post_of(s, cell)) do {
        if t == ("+" | "-" | "*" | "/") then { b := pop(st); a := pop(st); push(st, arith(t, a, b)); }
        else if t == "neg" then push(st, arith("-", 0, pop(st)))
        else if t[1] == "{" then push(st, t)
        else if t == "}" then {
            args := [];
            while x := pop(st) do {
                if type(x) == "string" & x[1] == "{" then { f := x[2:0]; break; };
                push(args, x);
            };
            push(st, reduce(f, args));
        }
        else if upto(':', t) then push(st, range_values(s, t))
        else if integer(t) then push(st, integer(t))
        else if real(t) then push(st, real(t))
        else push(st, cell_value(s, t));
    };
    return pop(st);
end

procedure shown(s, c)
    local st;
    st := status[s || ":" || c];
    return if st == "cycle" then "#CYCLE" else if st == "hangs" then "#HANGS" else string(val[s || ":" || c]);
end

# grid(s): the sheet as an aligned table.
procedure grid(s)
    local cols, maxr, c, r, line, name;
    cols := set();
    maxr := 0;
    every c := !order[s] do { insert(cols, c[1]); maxr <:= integer(c[2:0]); };
    cols := sort(cols);
    line := "icon:      |";
    every c := !cols do line ||:= right(c, 9) || " |";
    write(line);
    every r := 1 to maxr do {
        line := "icon: " || right(r, 4) || " |";
        every c := !cols do {
            name := c || r;
            line ||:= right(if member(status, s || ":" || name) then shown(s, name) else "", 9) || " |";
        };
        write(line);
    };
end

# what_if(s, cell, v): the cell set to v, and only the cells that depend on it computed again.
procedure what_if(s, cell, v)
    local before, old, dset, c, n, new, k;
    k := s || ":" || cell;
    write("icon: what if ", cell, " = ", v, " in sheet ", s, "?");
    before := evals;
    old := copy(val);
    val[k] := v;
    dset := set(\deps[k]) | set();
    every c := !order[s] do if member(dset, c) then {
        new := calc(s, c);
        val[s || ":" || c] := new;
        write("icon:   ", left(c, 3), left(old[s || ":" || c], 8), " -> ", new);
    };
    n := evals - before;
    if n = 0 then write("icon:   nothing depends on ", cell);
    write("icon:   computed again: ", n, ", left as they were: ", *order[s] - n - 1);
    val := old;
end

procedure main()
    local s, c, done;
    every s := 1 to 3 do {
        write("icon: sheet ", s, ", ", title_of(s), ":");
        done := 0;
        every c := !order[s] do if status[s || ":" || c] == "ok" then { val[s || ":" || c] := calc(s, c); done +:= 1; };
        grid(s);
        write("icon: ", done, " of ", *order[s], " cells computed, ", *order[s] - done, " left alone (on a cycle or hanging on one)");
    };
    write("icon: ", evals, " evaluations in all");
    what_if(1, "A1", 50);
    what_if(1, "A2", 0);
    what_if(1, "D1", 100);
    what_if(2, "A1", 9);
    what_if(3, "A1", 0);
    write("icon: ", evals, " evaluations in all, with what-if");
    write("icon: SNOBOL4 read ", cells, " cells and refused ", refused, " lines, and ", evals, " evaluations were Icon's");
end
```
