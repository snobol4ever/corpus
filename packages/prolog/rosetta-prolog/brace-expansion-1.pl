sym(',', commalist) --> ['\\',','], !.
sym(H, Context)         --> [H], { not(H = '{'; H = '}'), (Context = commalist -> not(H = ','); true) }.
syms([H|T], Context)    --> sym(H, Context), !, syms(T, Context).
syms([], _)             --> [].
symbol(Symbol, Context) --> syms(Syms,Context), {atom_chars(Symbol, Syms)}.

braces(Member) --> ['{'], commalist(List), ['}'], {length(List, Len), Len > 1, member(Member, List)}.

commalist([H|T]) --> sym_braces(H, commalist), [','], commalist(T).
commalist([H]) --> sym_braces(H, commalist).

sym_braces(String, Context) --> symbol(S1, Context), braces(S2), sym_braces(S3, Context), {atomics_to_string([S1,S2,S3],String)}.
sym_braces(String, Context) --> braces(S1), symbol(S2, Context), sym_braces(S3, Context), {atomics_to_string([S1,S2,S3],String)}.
sym_braces(String, Context) --> symbol(String, Context).
sym_braces(String, _) --> braces(String).
sym_braces(String, Context) --> ['{'], sym_braces(S2, Context), {atomics_to_string(['{',S2],String)}.
sym_braces(String, Context) --> ['}'], sym_braces(S2, Context), {atomics_to_string(['}',S2],String)}.

grammar(String) --> sym_braces(String, braces).

brace_expansion(In, Out) :- atom_chars(In, Chars), findall(Out,grammar(Out, Chars, []), List), list_to_set(List, Out).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines brace_expansion/2 and never calls it; the driver expands the task's four test strings.
:- initialization(forall(member(In, ['~/{Downloads,Pictures}/*.{jpg,gif,png}', 'It{{em,alic}iz,erat}e{d,}, please.', '{,{,gotta have{ ,\\, again\\, }}more }cowbell!', '{}} some }{,{\\\\{ edge, edge} \\,}{ cases, {here} \\\\\\\\\\}']), (format("~w~n", [In]), brace_expansion(In, Out), forall(member(O, Out), format("    ~w~n", [O]))))).
