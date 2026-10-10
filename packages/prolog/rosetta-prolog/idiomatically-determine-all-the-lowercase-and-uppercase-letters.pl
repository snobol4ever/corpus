chars :-
    findall(Lower, maplist(char_type(Lower), [alpha, ascii, lower]), Lowers),

    writeln('-- Lower Case Characters --'),
    writeln(Lowers),
    nl,

    findall(Upper, maplist(char_type(Upper), [alpha, ascii, upper]), Uppers),
    writeln('-- Upper Case Characters --'),
    writeln(Uppers).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines chars/0 and never calls it; the driver calls it once at load.
:- initialization(chars).
