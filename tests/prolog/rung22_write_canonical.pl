%------------------------------------------------ 1 rung22_write_canonical_print
:- initialization(main).
main :- print(hello), nl, print(42), nl.
%---------------------------------- 2 rung22_write_canonical_write_canonical_ops
:- initialization(main).
main :- write_canonical(1+2), nl.
%------------------------------------------ 3 rung22_write_canonical_writeq_atom
:- initialization(main).
main :- writeq('hello world'), nl, writeq(foo), nl.
%-------------------------------------- 4 rung22_write_canonical_writeq_compound
:- initialization(main).
main :- writeq(f(a, 'Hello')), nl.
