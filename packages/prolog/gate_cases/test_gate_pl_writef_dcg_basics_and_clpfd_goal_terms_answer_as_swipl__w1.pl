:- use_module(library(dcg/basics)).
:- use_module(library(clpfd)).
:- initialization(main).
main :- writef('a %w b %w\n', [x, f(y)]), writef("s=%s\n", [[104,105]]), writef('%d|%3r|%3l|\n', [42, ab, cd]), writef('plain\\l'),
    phrase((blanks, integer(N), blanks, digits(Ds), eos), `  42 007`), atom_codes(A, Ds), writef('%w %w\n', [N, A]),
    [P, Q] ins 1..2, C in 1..3, all_distinct([P, Q, C]), fd_dom(C, Dom), writef('%w\n', [Dom]), halt.
