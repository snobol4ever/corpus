:- initialization(main).
fwl(Out, Fmt, Args, Props) :- current_locale(Old), locale_create(Tmp, Old, Props), setup_call_cleanup(set_locale(Tmp), format(Out, Fmt, Args), set_locale(Old)).
t(Fmt, Args, Props) :- ( catch(fwl(atom(A), Fmt, Args, Props), E, (writeq(ex(E)), nl, fail)) -> atom_codes(A, Cs), writeq(Cs) ; writeq(failed) ), nl.
main :-
    t('~:d', [123456789], [grouping([2,2])]),
    t('~2:d', [123456789], [grouping([2,2])]),
    t('~:d', [123456789], [grouping([2,2,repeat(3)])]),
    t('~2:d', [123456789], [decimal_point(','), thousands_sep('.')]),
    t('~2:d', [123456789], [decimal_point(','), thousands_sep(' ')]),
    t('~2:d', [123456789], [decimal_point(','), thousands_sep('. ')]),
    t('~2:f', [1234567.89], [decimal_point(','), thousands_sep(' ')]),
    t('~2:f', [1234567.89], [decimal_point(','), thousands_sep('. ')]),
    t('~:d', [-1234567], [thousands_sep(' ')]),
    t('~:d', [1234567], [grouping([3]), thousands_sep(',')]),
    current_locale(L), writeq(L), nl,
    format(atom(A), '~:d', [1234567]), writeq(A), nl,
    format(atom(B), '~D', [1234567]), writeq(B), nl,
    halt.
