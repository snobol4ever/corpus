# A calculator in three languages

SNOBOL4 is the LEXER: one pattern cuts a line into tokens, and a line with a
character it does not know fails to match. Icon is the PARSER: a recursive
descent over the tokens, with a table of variables it keeps between lines.
Raku is the FRONT: it feeds the lines, formats the answers and reads the two
counters the other two languages keep as globals.

```SNOBOL4
        lexed = 0
        p_tok = SPAN(' ') | (SPAN('0123456789') | SPAN(&LCASE) | ANY('+-*/()=')) $ tok *keep()
        DEFINE('keep()')                                   :(keep_end)
keep    ntok = ntok + 1
        toks[ntok] = tok                                   :(RETURN)
keep_end
*  lex(s): the tokens of s as an array, or failure.
        DEFINE('lex(s)i')                                  :(lex_end)
lex     toks = TABLE()
        ntok = 0
        s POS(0) ARBNO(p_tok) RPOS(0)                      :F(FRETURN)
        lex = GT(ntok, 0) ARRAY(ntok)                      :F(FRETURN)
        lexed = lexed + ntok
lex_1   i = LT(i, ntok) i + 1                              :F(RETURN)
        lex[i] = toks[i]                                   :(lex_1)
lex_end
END
```

```Icon
global memory, evaluated, ts, at
global lex                   # SNOBOL4's function, declared because this section calls it

procedure peek()
    return ts[at];
end
procedure take(want)
    if /want | ts[at] == want then { at +:= 1; return ts[at - 1]; };
end
# factor, term and sum: each returns a value or fails.
procedure factor()
    local v;
    if take("(") then { v := sum(); take(")") | fail; return v; };
    if take("-") then return -factor();
    if v := integer(peek()) then { take(); return v; };
    if member(memory, peek()) then return memory[take()];
end
procedure term()
    local v, r, op;
    v := factor() | fail;
    while op := take("*" | "/") do {
        r := factor() | fail;
        if op == "*" then v *:= r else { if r = 0 then fail; v /:= r; };
    };
    return v;
end
procedure sum()
    local v, r, op;
    v := term() | fail;
    while op := take("+" | "-") do {
        r := term() | fail;
        if op == "+" then v +:= r else v -:= r;
    };
    return v;
end
# calc(line): the answer as a string; Raku calls this.
procedure calc(line)
    local name, v;
    /memory := table();
    /evaluated := 0;
    ts := [];
    every put(ts, !lex(line));
    if *ts = 0 then return "? I cannot read that";
    at := 1;
    if ts[2] == "=" then { name := ts[1]; at := 3; };
    (v := sum() & at > *ts) | return "? that is no expression";
    evaluated +:= 1;
    if \name then { memory[name] := v; return name || " is " || v; };
    return string(v);
end
procedure main()
end
```

```Raku
sub calc($line) { ... }
our $lexed;
our $evaluated;
my @lines = 'x = 3 + 4 * 2', 'y = (x - 1) * x', 'y / 4 + x', 'x = x * x - y',
            '2 $ 3', 'x + ', '(x + y) * -2', 'z', '7 / (x - x)';
for @lines -> $line {
    say $line.fmt('%-18s'), ' -> ', calc($line);
}
say "$lexed tokens lexed by SNOBOL4, $evaluated lines evaluated by Icon";
```
