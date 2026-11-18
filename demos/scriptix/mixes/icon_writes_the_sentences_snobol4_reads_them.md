# Icon writes the sentences, SNOBOL4 reads them

A grammar can be run in two directions. Run forwards it GENERATES every
sentence of its language; run backwards it PARSES a sentence it is handed.

* **Icon generates.** Each rule of the grammar is a generator: `expr` suspends
  every expression, built from every `term`, built from every `factor`.
  Alternation in the grammar is alternation in Icon.
* **SNOBOL4 parses.** One recursive pattern says yes or no to a string, and a
  small set of functions, each matching the front of the subject with a pattern,
  turns a sentence into postfix.

So each tests the other. Icon knows the value of a sentence because it built
it; SNOBOL4 must read every one back and its postfix must come to that same
value. Then Icon breaks sentences on purpose and SNOBOL4 must refuse them.

```SNOBOL4
        read = 0
        refused = 0
*  The recognizer: the grammar as one pattern that refers to itself.
        p_factor = ANY('237') | '(' *p_expr ')'
        p_term   = p_factor ARBNO('*' p_factor)
        p_expr   = p_term ARBNO(ANY('+-') p_term)
*  sentence(s): succeeds if s is in the language.
        DEFINE('sentence(s)')                              :(sentence_end)
sentence s POS(0) p_expr RPOS(0)                           :S(RETURN)
        refused = refused + 1                              :(FRETURN)
sentence_end
*  The translator: postfix(s) is s in postfix, or failure. REST is what is
*  left to read; each function takes its own part off the front of it.
        DEFINE('postfix(s)')                               :(postfix_end)
postfix rest = s
        postfix = p_sum()                                  :F(FRETURN)
        IDENT(rest)                                        :F(FRETURN)
        read = read + 1                                    :(RETURN)
postfix_end
        DEFINE('p_sum()op,r')                              :(p_sum_end)
p_sum   p_sum = p_product()                                :F(FRETURN)
p_sum_1 rest POS(0) ANY('+-') . op =                       :F(RETURN)
        r = p_product()                                    :F(FRETURN)
        p_sum = p_sum ' ' r ' ' op                         :(p_sum_1)
p_sum_end
        DEFINE('p_product()r')                             :(p_product_end)
p_product p_product = p_atom()                             :F(FRETURN)
p_product_1 rest POS(0) '*' =                              :F(RETURN)
        r = p_atom()                                       :F(FRETURN)
        p_product = p_product ' ' r ' *'                   :(p_product_1)
p_product_end
        DEFINE('p_atom()')                                 :(p_atom_end)
p_atom  rest POS(0) ANY('237') . p_atom =                  :S(RETURN)
        rest POS(0) '(' =                                  :F(FRETURN)
        p_atom = p_sum()                                   :F(FRETURN)
        rest POS(0) ')' =                                  :S(RETURN)F(FRETURN)
p_atom_end
END
```

```Icon
global read, refused        # SNOBOL4's two counters
global sentence, postfix     # SNOBOL4's two functions, declared because this section calls them
record made(text, value)

# The grammar, forwards. d is how deep the brackets may go.
procedure factor(d)
    local e;
    suspend made(e := "2" | "3" | "7", integer(e));
    if d > 0 then suspend (e := expr(d - 1), made("(" || e.text || ")", e.value));
end
procedure term(d)
    local a, b;
    suspend a := factor(d);
    suspend (a := factor(d), b := factor(0), made(a.text || "*" || b.text, a.value * b.value));
end
procedure expr(d)
    local a, b;
    suspend a := term(d);
    suspend (a := term(d), b := term(0), made(a.text || "+" || b.text, a.value + b.value) |
                                         made(a.text || "-" || b.text, a.value - b.value));
end

# run(p): the value of the postfix string p, on a stack.
procedure run(p)
    local stack, tok, a, b;
    stack := [];
    p ? while tok := tab(upto(' ') | 0) do {
        if tok == ("+" | "-" | "*") then {
            b := pull(stack); a := pull(stack);
            put(stack, case tok of { "+": a + b; "-": a - b; "*": a * b });
        } else put(stack, integer(tok));
        move(1) | break;
    };
    return stack[1];
end

# broken(s): s spoiled in a way that is certainly outside the language.
procedure broken(s)
    suspend (s || ")") | ("*" || s) | (s || "+") | ("(" || s) | (s[1] || "+*" || s[2:0]) | (s || "5") | "";
end

procedure main()
    local s, n, wrong, p, longest, big;
    n := wrong := 0; longest := ""; big := made("", 0);
    every s := expr(1) do {
        n +:= 1;
        if not sentence(s.text) then { wrong +:= 1; write("   pattern refused ", s.text); next; };
        if not (p := postfix(s.text)) then { wrong +:= 1; write("   no postfix for ", s.text); next; };
        if run(p) ~= s.value then { wrong +:= 1; write("   ", s.text, " is ", s.value, " but ", p, " runs to ", run(p)); };
        if n = (1 | 10 | 100 | 1000 | 3000) then write("   sentence ", right(n, 4), ": ", left(s.text, 14), " = ", right(s.value, 4), "   postfix: ", p);
        if *s.text > *longest then longest := s.text;
        if s.value > big.value then big := s;
    };
    write("icon generated ", n, " sentences; snobol4 read ", read, " of them; ", wrong, " disagreements");
    write("the longest is ", longest, " and the largest is ", big.text, " = ", big.value);
    n := 0;
    every s := expr(0) do every p := broken(s.text) do {
        n +:= 1;
        if sentence(p) | postfix(p) then write("   snobol4 took the broken sentence ", image(p));
    };
    write("icon broke ", n, " sentences; snobol4's pattern refused ", refused, " of them");
    write("the first sentence worth 42: ", (s := expr(1), s.value = 42, s.text));
end
```
