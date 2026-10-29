# corpus/tests/pascal/front_end -- the witnesses of DESIGN-PLAN: pascal-front-end (the cto, 2026-10-28, CEO-1996/1998)

Every `.pas` here is a witness of one step of `.github/ARCH-PASCAL-REDESIGN.md` section 8; its `.ref` is cut from fpc 3.2.2 (`fpc -v0`
in the mode the program's own `{$mode}` directive names, then the binary's stdout), the road `harness/scripts/test_design_pascal_front_end_steps.sh --cut`
runs. A step is GREEN when its witnesses equal their refs in mode 3 and mode 4 and its probe reads green.

| witness | step | what it measures | today (SCRIP 40d6d5c50) |
|---|---|---|---|
| pf01_typer | 1 | the four predicate families in the shapes the shadow census disagreed on: a set across scopes, a char subrange, a two-index char array, an alias row type, a cast char(x), a record boolean field | EQUAL; the probe (the census flag) missing |
| pf02_scopes | 1, 2 | a global integer and boolean shadowed by a procedure's set and string of the same names, a char subrange printed, Format's result | RED: error 102 numeric expected (the leaked string mark) |
| pf03_caps | 3 | 600 arrays, records, short strings, booleans and chars declared and used (the 256 and 512 caps of the tables) | RED: 6.5.3.2 index error (a dropped array mark) |
| pf04_shortstring | 4 | string[5] truncation on assignment and concatenation, sizeof, s[0], an array of string[2] | RED: no truncation, sizeof undefined |
| pf05_pointers | 5 | @a[i], inc(p), p^ := v, @a, q^[i], @r.y, a walk by inc over an array | RED: 6.5.4 the pointer denotes no variable |
| pf05_pchar | 5 | PChar(s), p[i], (p + 4)^, strlen, @c[0] with inc and a store through it | RED: parse error |
| pf06_extended | 6 | extended, double and single printed by writeln and :0:18, sqrt in extended, e * 3 = 1 | RED: extended printed as a double |
| pf07_names | 7 | stdout and ErrOutput, low/high of a string constant and of an array, val with IOResult, TAlignment, TStringSplitOptions, faAnyFile, FindFirst over no file | RED: stdout, erroutput, ioresult undeclared |
| pf08_syntax | 8 | absolute, string[2 * N], procedure of object, a unit-qualified type, an lvalue cast, exit(value) | RED: parse error at string[2 * N] |
| pf09_generics | 9 | generic record and function, specialize, TArray<Integer>, TList<Integer> with Sort, TDictionary<string, Integer> with Keys | RED: parse error at the dotted unit name |
| pf15_string_helpers | 15 | S.Split (array, bare char, count, options, ExcludeLastEmpty), string.Join (2 and 4 arguments), on a var, a const, a concatenation held in a var, a for-in over the result | GREEN (SCRIP row 15) |
| pf15_overloaded_methods | 15 | same-class method overloads picked by arity and by object-versus-array argument, constructors overloaded in either declaration order | GREEN (SCRIP row 15) |
| pf15_literal_receiver | 15 | a string literal and a parenthesised expression as the receiver of a helper-method call: 'p q r'.Split, (s + t).Split inside for-in and string.Join | GREEN (SCRIP row 15, pascal.y recv_primary) |
| pf17_procvars | 17 | procedure and function variables: p := @hello, p(), a bare q, passing one as an argument, f := @dbl then f(4), Assigned, nil, p := q | RED: error 22 undefined function called |
| pf17_methodptr | 17 | method pointers: m := @o.go bound to its object (a later o.p shows), m := @o2.go, a bare m, passing m as an argument, function of object, Assigned and nil, a virtual method reached through a TKid | RED: ISO violation on the method's arity |

The ten witnesses print only deterministic text (FindFirst searches for a name no file has). Programs outside the plan's finish are named in section 8.
