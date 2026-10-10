:- op(200, xfx, user:(=+)).

%% +Prepend =+ +Chars
%
%    Will destructively update Chars
%    So that Chars = Prepend prefixed to Chars.
%    eazar001 in ##prolog helped refine this approach.

[X|Xs] =+ Chars :-
  append(Xs, Chars, Rest),
  nb_setarg(2, Chars, Rest),
  nb_setarg(1, Chars, X).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines =+/2 and never calls it; the driver runs the Rosetta page's own query (Str = `World!`, `Hello, ` =+ Str) and prints Str.
:- initialization((Str = `World!`, `Hello, ` =+ Str, format("~s~n", [Str]))).
