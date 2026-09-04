%------------------------------------------------------------ 1 simple_assign_11
foo(X,Y) :- X \== Y.
%------------------------------------------------------------- 2 simple_assign_3
foo(X,Y) :- X @>= Y.
%------------------------------------------------------------- 3 simple_assign_4
foo(X,Y) :- X @=< Y.
%------------------------------------------------------------- 4 simple_assign_6
foo(X,Y) :- X >= Y.
%------------------------------------------------------------- 5 simple_assign_7
foo(X,Y) :- X == Y.
%------------------------------------------------------------- 6 simple_assign_8
foo(X,Y) :- X =< Y.
%------------------------------------------------------------- 7 simple_assign_9
foo(X,Y) :- X \= Y.
%------------------------------------------------------------ 8 simple_program_1
foo(_, X) :- bar(_, X).
%----------------------------------------------------------- 9 simple_program_10
foo(X,Y,Z) :- Z is X \/ Y.
%---------------------------------------------------------- 10 simple_program_11
foo(X) :- X is 2^32.
%---------------------------------------------------------- 11 simple_program_12
foo(X) :- X is 2^3^4.
%---------------------------------------------------------- 12 simple_program_13
foo(X,Y,Z) :- Z is X // Y.
%---------------------------------------------------------- 13 simple_program_14
foo(X) :- X is 1 + 2.
%---------------------------------------------------------- 14 simple_program_15
foo(X) :- X is 1 + 2 * 3.
%---------------------------------------------------------- 15 simple_program_16
foo(X) :- X is 1.
%---------------------------------------------------------- 16 simple_program_17
foo(X) :- X is (1 + 2) * 3.
%---------------------------------------------------------- 17 simple_program_18
foo(X) :- X is 1 - 2 - 3.
%---------------------------------------------------------- 18 simple_program_19
foo(X, Y) :- Y is X + 1.
%----------------------------------------------------------- 19 simple_program_2
foo(_, X, _, X).
%---------------------------------------------------------- 20 simple_program_20
foo(X,Y,Z) :- Z is X mod Y.
%---------------------------------------------------------- 21 simple_program_21
foo(X) :- X is -1.
%---------------------------------------------------------- 22 simple_program_22
foo(X,Y,Z) :- Z is X ** Y.
%---------------------------------------------------------- 23 simple_program_23
foo(X,Y,Z) :- Z is X rem Y.
%---------------------------------------------------------- 24 simple_program_24
foo(X,Y,Z) :- Z is X << 2.
%---------------------------------------------------------- 25 simple_program_25
foo(X,Y,Z) :- Z is X >> 2.
%---------------------------------------------------------- 26 simple_program_26
foo(X,Y,Z) :- Z is X xor Y.
%---------------------------------------------------------- 27 simple_program_27
foo.
%---------------------------------------------------------- 28 simple_program_28
"hi".
%---------------------------------------------------------- 29 simple_program_29
foo :- X is 0'a + 1.
%----------------------------------------------------------- 30 simple_program_3
foo(_x, _x).
%---------------------------------------------------------- 31 simple_program_30
foo(0'0).
%---------------------------------------------------------- 32 simple_program_31
foo(0'a).
%---------------------------------------------------------- 33 simple_program_32
foo(0' ).
%---------------------------------------------------------- 34 simple_program_33
foo(0'A).
%---------------------------------------------------------- 35 simple_program_34
foo(X,Y) :- X @> Y.
%---------------------------------------------------------- 36 simple_program_35
foo(X,Y) :- X @< Y.
%---------------------------------------------------------- 37 simple_program_36
foo(X,Y) :- X > Y.
%---------------------------------------------------------- 38 simple_program_37
foo(X,Y) :- X < Y.
%---------------------------------------------------------- 39 simple_program_38
foo(bar).
%---------------------------------------------------------- 40 simple_program_39
foo(a, b).
%----------------------------------------------------------- 41 simple_program_4
foo(_x, _y).
%---------------------------------------------------------- 42 simple_program_40
point(a, b, c).
%---------------------------------------------------------- 43 simple_program_41
age(42).
%---------------------------------------------------------- 44 simple_program_42
point(3, X, "name").
%---------------------------------------------------------- 45 simple_program_44
foo(bar(a)).
%---------------------------------------------------------- 46 simple_program_45
foo(bar(a), baz(b, c)).
%---------------------------------------------------------- 47 simple_program_46
foo(X).
%---------------------------------------------------------- 48 simple_program_47
foo :- a, b ; c.
%---------------------------------------------------------- 49 simple_program_48
foo :- a, b, c.
%---------------------------------------------------------- 50 simple_program_49
foo :- a, b.
%----------------------------------------------------------- 51 simple_program_5
foo(_).
%---------------------------------------------------------- 52 simple_program_50
foo(X) :- bar(X) ; baz(X).
%---------------------------------------------------------- 53 simple_program_51
foo :- a ; b ; c.
%---------------------------------------------------------- 54 simple_program_52
foo :- a ; b.
%---------------------------------------------------------- 55 simple_program_53
foo :- X is 1.5 + 2.0.
%---------------------------------------------------------- 56 simple_program_54
foo(1.0).
%---------------------------------------------------------- 57 simple_program_55
foo(-3.14).
%---------------------------------------------------------- 58 simple_program_56
foo(3.14).
%---------------------------------------------------------- 59 simple_program_57
foo(X,Y) :- a -> b, c -> d.
%---------------------------------------------------------- 60 simple_program_58
foo(X) :- X -> a.
%---------------------------------------------------------- 61 simple_program_59
foo([]).
%----------------------------------------------------------- 62 simple_program_6
foo(_, _).
%---------------------------------------------------------- 63 simple_program_60
foo([[a, b], [c, d]]).
%---------------------------------------------------------- 64 simple_program_61
foo([a]).
%---------------------------------------------------------- 65 simple_program_62
foo([member/2, append/3]).
%---------------------------------------------------------- 66 simple_program_63
foo([a, b, c]).
%---------------------------------------------------------- 67 simple_program_64
foo([X, Y]).
%----------------------------------------------------------- 68 simple_program_7
foo(X,Y,Z) :- Z is X /\ Y.
%---------------------------------------------------------- 69 simple_program_70
foo :- lists:member(X, [1,2,3]).
%---------------------------------------------------------- 70 simple_program_71
foo :- not(bar).
%---------------------------------------------------------- 71 simple_program_73
foo(bar(a, baz(b))).
%---------------------------------------------------------- 72 simple_program_74
foo :- (a, b), (c, d).
%---------------------------------------------------------- 73 simple_program_75
foo :- (a ; b), c.
%---------------------------------------------------------- 74 simple_program_76
foo :- (a, b) ; c.
%---------------------------------------------------------- 75 simple_program_77
foo :- a ; (b, c).
%---------------------------------------------------------- 76 simple_program_78
foo :- (a ; (b, c)), d.
%---------------------------------------------------------- 77 simple_program_79
foo('').
%----------------------------------------------------------- 78 simple_program_8
foo(X,Y) :- Z is \X.
%---------------------------------------------------------- 79 simple_program_80
foo(0b1010).
%---------------------------------------------------------- 80 simple_program_81
foo(0xff).
%---------------------------------------------------------- 81 simple_program_82
foo(0o17).
%---------------------------------------------------------- 82 simple_program_83
foo :- bar.
%---------------------------------------------------------- 83 simple_program_85
even(0) :- true.
%---------------------------------------------------------- 84 simple_program_86
record(3, X, "name") :- log(X).
%---------------------------------------------------------- 85 simple_program_87
twice(X, Y) :- plus(X, X).
%---------------------------------------------------------- 86 simple_program_88
foo(X) :- bar(X).
%----------------------------------------------------------- 87 simple_program_9
foo(X,Y) :- X is \ Y.
%---------------------------------------------------------- 88 simple_program_65
foo(X) :- bar(X).
foo(a).
%---------------------------------------------------------- 89 simple_program_66
foo(X) :- bar(X).
foo(X) :- baz(X).
%---------------------------------------------------------- 90 simple_program_68
foo(a).
foo(b).
%---------------------------------------------------------- 91 simple_program_89
foo(X) :- bar(X).
bar(a).
%---------------------------------------------------------- 92 simple_program_43
foo(a).
bar(b, c).
baz.
%---------------------------------------------------------- 93 simple_program_67
foo(a).
foo(b).
foo(c).
%---------------------------------------------------------- 94 simple_program_69
foo(a).
bar(b).
foo(c).
%---------------------------------------------------------------------- 95 cut_1
foo :- !.
%---------------------------------------------------------------------- 96 cut_2
foo :- a, !, b.
%---------------------------------------------------------------------- 97 dcg_1
a --> b, c, d.
%---------------------------------------------------------------------- 98 dcg_2
a --> [].
%---------------------------------------------------------------------- 99 dcg_3
a --> b, {c}, d.
%--------------------------------------------------------------------- 100 dcg_4
a --> [x], b, [y].
%--------------------------------------------------------------------- 101 dcg_5
np(X) --> det(X), noun(X).
%--------------------------------------------------------------------- 102 dcg_6
sentence --> noun_phrase, verb_phrase.
%--------------------------------------------------------------------- 103 dcg_7
greeting --> [hello].
%--------------------------------------------------------------------- 104 dcg_8
a --> [x, y].
%--------------------------------------------------------------- 105 directive_2
:- X is 1 + 2.
%--------------------------------------------------------------- 106 directive_3
:- foo.
%--------------------------------------------------------------- 107 directive_4
:- foo(a).
%--------------------------------------------------------------- 108 directive_5
:- foo, bar.
%--------------------------------------------------------------- 109 directive_6
:- foo ; bar.
%--------------------------------------------------------------- 110 directive_7
:- discontiguous bar/2.
%--------------------------------------------------------------- 111 directive_8
:- dynamic foo/1.
%--------------------------------------------------------------- 112 directive_9
:- multifile foo/1.
%----------------------------------------------------------------- 113 functor_1
foo :- functor(foo(a), F, A).
%--------------------------------------------------------------------- 114 ite_1
foo :- a -> b ; c.
%--------------------------------------------------------------------- 115 ite_2
foo :- a ; b -> c.
%--------------------------------------------------------------------- 116 ite_3
foo(X,Y,Z) :- (X -> Y ; Z).
%-------------------------------------------------------------------- 117 list_1
foo([H|T]).
%-------------------------------------------------------------------- 118 list_2
foo([a, b|T]).
%--------------------------------------------------------------------- 119 naf_1
foo :- \+(bar).
%--------------------------------------------------------------------- 120 naf_2
foo :- \+(bar(X)).
%----------------------------------------------------------- 121 simple_assign_1
foo(X) :- X = 5.
%---------------------------------------------------------- 122 simple_assign_10
foo(X,Y) :- X =\= Y.
%---------------------------------------------------------- 123 simple_assign_12
foo(X) :- X = a:b.
%----------------------------------------------------------- 124 simple_assign_2
foo(X) :- X = 1 + 2.
%----------------------------------------------------------- 125 simple_assign_5
foo(X,Y) :- X =:= Y.
%--------------------------------------------------------- 126 simple_program_72
foo :- arg(1, foo(a,b), X).
%--------------------------------------------------------- 127 simple_program_84
greet :- write(hello).
%-------------------------------------------------------------- 128 directive_10
:- foo.
bar :- baz.
%----------------------------------------------------------------- 129 dcg_cut_1
a --> b, !, c.
%----------------------------------------------------------------- 130 dcg_ite_1
a --> b ; c.
%------------------------------------------------------------ 131 op_directive_1
:- op(700, xfx, ===).
%-------------------------------------------------------------------- 132 univ_1
foo :- foo(a,b) =.. L.
%-------------------------------------------------------------------- 133 univ_2
foo :- X =.. [f, 1, 2].
%-------------------------------------------------------------- 134 directive_32
:- initialization(main).
main :- print(hello), nl, print(42), nl.
%-------------------------------------------------------- 135 format_directive_1
:- initialization(main).
main :- format("hello~n").
%-------------------------------------------------------- 136 format_directive_2
:- initialization(main).
main :- format("hello ~a~n", [world]).
%-------------------------------------------------------- 137 format_directive_3
:- initialization(main).
main :- format("count: ~d~n", [7]).
%-------------------------------------------------------- 138 format_directive_4
:- initialization(main).
main :- format("skip~i ok~n", [ignored]).
%-------------------------------------------------------------- 139 directive_11
foo(a).
:- write(starting).
foo(b).
%-------------------------------------------------------- 140 format_directive_6
:- initialization(main).
main :-
    format("~q~n", ['hello world']),
    format("~w|~q~n", ['it''s', 'it''s']),
    format("~e~n", [3.14159]),
    format("~2f~n", [3.14159]),
    format("~g~n", [3.14159]),
    format("~16r~n", [255]),
    format("~2r~n", [10]),
    format("~c~n", [65]),
    format("~3c~n", [42]),
    format("~s~n", [[104,105]]),
    format("~d~n", [42]).
%------------------------------------------------------ 141 atomconv_directive_1
:- initialization(main).
main :- atom_codes(abc, Cs), atom_chars(abc, Chs), atom_length(abcde, L), atom_concat(foo, bar, FB), number_codes(N, [0'4,0'2]), number_chars(M, ['1','7']), char_code(a, C), write(Cs), nl, write(Chs), nl, write(L), nl, write(FB), nl, write(N), nl, write(M), nl, write(C), nl.
%-------------------------------------------------------------- 142 directive_24
:- initialization(main).
main :- numbervars(foo, 0, End), write(foo), nl, write(End), nl.
%-------------------------------------------------------------- 143 directive_25
:- initialization(main).
main :- numbervars(f(X,Y,X), 0, End), write(f(X,Y,X)), nl, write(End), nl.
%-------------------------------------------------------------- 144 directive_26
:- initialization(main).
main :- numbervars([A,B,C], 0, End), write([A,B,C]), nl, write(End), nl.
%-------------------------------------------------------------- 145 directive_27
:- initialization(main).
main :- numbervars(f(A,B), 25, End), write(f(A,B)), nl, write(End), nl.
%-------------------------------------------------------------- 146 directive_28
:- initialization(main).
main :- numbervars(f(X,Y), 3, End), write(f(X,Y)), nl, write(End), nl.
%-------------------------------------------------------------- 147 directive_29
:- initialization(main).
main :- char_type('7', digit(V)), write(V), nl.
%-------------------------------------------------------------- 148 directive_39
:- initialization(main).
main :- X is max(3,7), write(X), nl, Y is min(3,7), write(Y), nl.
%-------------------------------------------------------------- 149 directive_40
:- initialization(main).
main :- X is 2 ** 10, write(X), nl, Y is 3 ^ 3, write(Y), nl.
%-------------------------------------------------------------- 150 directive_41
:- initialization(main).
main :- X is sign(-5), write(X), nl, Y is sign(0), write(Y), nl, Z is sign(3), write(Z), nl.
%-------------------------------------------------------------- 151 directive_42
:- initialization(main).
main :- X is truncate(7), write(X), nl, Y is integer(4), write(Y), nl.
%-------------------------------------------------------------- 152 directive_43
:- initialization(main).
main :- term_string(hello, S), write(S), nl.
%-------------------------------------------------------------- 153 directive_44
:- initialization(main).
main :- term_string(f(1,2), S), write(S), nl.
%-------------------------------------------------------------- 154 directive_45
:- initialization(main).
main :- term_string(42, S), write(S), nl.
%-------------------------------------------------------------- 155 directive_46
:- initialization(main).
main :- term_string(T, hello), write(T), nl.
%-------------------------------------------------------------- 156 directive_47
:- initialization(main).
main :- term_string(T, '42'), write(T), nl.
%-------------------------------------------------------------- 157 directive_53
:- initialization(main).
main :- char_code(a, N), write(N), nl.
%-------------------------------------------------------------- 158 directive_54
:- initialization(main).
main :- char_code(C, 65), write(C), nl.
%-------------------------------------------------------------- 159 directive_55
:- initialization(main).
main :- number_chars(42, C), write(C), nl.
%-------------------------------------------------------------- 160 directive_56
:- initialization(main).
main :- number_codes(42, C), write(C), nl.
%-------------------------------------------------------------- 161 directive_82
:- initialization(main).
main :- write(hello_world), nl.
%-------------------------------------------------------- 162 format_directive_5
:- initialization(main).
main :- format("x = ~w~n", [42]).
%---------------------------------------------------------- 163 read_directive_1
:- initialization(main).
main :- get_char(C), read(T), write(C), nl, write(T), nl.
%----------------------------------------------- 164 write_canonical_directive_4
:- initialization(main).
main :- write_canonical(1+2), nl.
%-------------------------------------------------------- 165 writeq_directive_3
:- initialization(main).
main :- writeq('hello world'), nl, writeq(foo), nl.
%-------------------------------------------------------- 166 writeq_directive_4
:- initialization(main).
main :- writeq(f(a, 'Hello')), nl.
%-------------------------------------------------------------- 167 directive_12
:- initialization(main).
f(a).
main :- f(X), write(X), nl.
%-------------------------------------------------------------- 168 directive_30
:- initialization(main).
main :- char_type(a, to_upper(U)), write(U), nl,
        char_type('Z', to_lower(L)), write(L), nl.
%-------------------------------------------------------------- 169 directive_31
:- initialization(main).
main :- char_type('A', upper(L)), write(L), nl,
        char_type(b, lower(U)), write(U), nl.
%-------------------------------------------------------------- 170 directive_66
:- initialization(main).
main :-
    concat_atom([foo, bar, baz], A), write(A), nl.
%-------------------------------------------------------------- 171 directive_83
:- initialization(main).
p(a,b).
main :- p(X,_), write(X), nl.
%------------------------------------------------------ 172 sub_atom_directive_1
:- initialization(main).
main :- sub_atom(abc, B, 1, _, S), write(B-S), nl, fail.
main :- write(done), nl.
%-------------------------------------------------------------- 173 directive_13
:- initialization(main).
f(a).
f(b).
main :- f(X), write(X), nl.
%-------------------------------------------------------------- 174 directive_16
% rung01_hello — write/1, nl/0, halt/0
% Expected output: hello
:- initialization(main).
main :- write(hello), nl.
%-------------------------------------------------------------- 175 directive_35
:- initialization(main).
main :-
    X1 is 2**10, write(X1), nl,
    X2 is 3**3,  write(X2), nl.
%-------------------------------------------------------------- 176 directive_36
:- initialization(main).
main :-
    X1 is 1 << 4,   write(X1), nl,
    X2 is 256 >> 3, write(X2), nl.
%-------------------------------------------------------------- 177 directive_49
:- initialization(main).
main :-
    number_string(42, S), write(S), nl,
    number_string(N, "99"), write(N), nl.
%-------------------------------------------------------------- 178 directive_51
:- initialization(main).
main :-
    string_concat("foo", "bar", S), write(S), nl,
    string_concat(hello, ' world', S2), write(S2), nl.
%-------------------------------------------------------------- 179 directive_52
:- initialization(main).
main :-
    string_length("hello", N), write(N), nl,
    string_length(abcde, M), write(M), nl.
%-------------------------------------------------------------- 180 directive_57
:- initialization(main).
main :-
    upcase_atom(hello, U), write(U), nl,
    downcase_atom('HELLO', D), write(D), nl.
%-------------------------------------------------------------- 181 directive_58
:- initialization(main).
main :-
    term_string(point(3,4), S), write(S), nl,
    term_string(42, S2), write(S2), nl.
%-------------------------------------------------------------- 182 directive_60
:- initialization(main).
main :-
    term_to_atom(1+2, A), write(A), nl,
    term_to_atom(f(a,b,c), B), write(B), nl.
%-------------------------------------------------------------- 183 directive_61
:- initialization(main).
main :-
    atomic_list_concat([hello, world], A), write(A), nl,
    atomic_list_concat([1, 2, 3], B), write(B), nl.
%-------------------------------------------------------------- 184 directive_62
:- initialization(main).
main :-
    atomic_list_concat([hello, beautiful, world], ' ', A), write(A), nl,
    atomic_list_concat([a, b, c], '-', B), write(B), nl.
%-------------------------------------------------------------- 185 directive_63
:- initialization(main).
main :-
    string_to_atom(hello, A), write(A), nl,
    string_to_atom(S, world), write(S), nl.
%-------------------------------------------------------------- 186 directive_64
:- initialization(main).
main :-
    atomic_list_concat([hello, world], A), write(A), nl,
    atomic_list_concat([1, 2, 3], B), write(B), nl.
%-------------------------------------------------------------- 187 directive_65
:- initialization(main).
main :-
    atomic_list_concat([hello, beautiful, world], ' ', A), write(A), nl,
    atomic_list_concat([a, b, c], '-', B), write(B), nl.
%-------------------------------------------------------------- 188 directive_67
:- initialization(main).
main :-
    string_to_atom(hello, A), write(A), nl,
    string_to_atom(S, world), write(S), nl.
%-------------------------------------------------------------- 189 directive_73
:- initialization(main).
main :-
    X is pi, write(X), nl,
    Y is exp(1.0), write(Y), nl.
%-------------------------------------------------------------- 190 directive_77
:- initialization(main).
main :-
    X is gcd(12, 8), write(X), nl,
    Y is gcd(100, 75), write(Y), nl.
%-------------------------------------------------------------- 191 directive_85
:- initialization(main).
p :- ( write(a) ; write(b) ), nl, fail.
p.
main :- p.
%-------------------------------------------------------------- 192 directive_86
:- initialization(main).
main :- open('/tmp/scrip_rung06_tail.txt', write, W), write(W, 'hello(world).'), nl(W), write(W, 'second(1).'), nl(W), write(W, xy), close(W),
    open('/tmp/scrip_rung06_tail.txt', read, R), read(R, T), set_input(R), read_term(T2, []), set_input(user_input), get_char(R, C1), peek_char(R, P), get_char(R, C2), get_char(R, E), close(R),
    write(T), nl, write(T2), nl, write(C1), write(P), write(C2), nl, write(E), nl.
%----------------------------------------------- 193 write_canonical_directive_2
:- initialization(main).
main :-
    write_canonical(f(a,b)), nl,
    write_canonical(g(1,2,3)), nl.
%----------------------------------------------- 194 write_canonical_directive_3
:- initialization(main).
main :-
    write_canonical(1+2), nl,
    write_canonical(a-b), nl.
%--------------------------------------------------------------- 195 directive_1
% SCRIP DEMO1 -- Hello World (Prolog section)
% Idiom: write/1 + nl/0
:- initialization(main, main).
main :-
    write('Hello, World!'), nl.
%-------------------------------------------------------------- 196 directive_14
:- initialization(main).
f(a).
f(b).
f(c).
main :- ( f(X), write(X), nl, fail ) ; true.
%-------------------------------------------------------------- 197 directive_33
:- initialization(main).
main :-
    X1 is 12 /\ 10, write(X1), nl,
    X2 is 12 \/ 3,  write(X2), nl,
    X3 is 12 xor 10, write(X3), nl.
%-------------------------------------------------------------- 198 directive_34
:- initialization(main).
main :-
    X1 is max(3,7),  write(X1), nl,
    X2 is min(3,7),  write(X2), nl,
    X3 is max(-1,0), write(X3), nl.
%-------------------------------------------------------------- 199 directive_37
:- initialization(main).
main :-
    X1 is sign(5),  write(X1), nl,
    X2 is sign(-3), write(X2), nl,
    X3 is sign(0),  write(X3), nl.
%-------------------------------------------------------------- 200 directive_48
:- initialization(main).
main :-
    atom_string(hello, S), write(S), nl,
    atom_string(A, "world"), write(A), nl,
    atom_string(42, S2), write(S2), nl.
%-------------------------------------------------------------- 201 directive_50
:- initialization(main).
main :-
    string_upper("hello", U), write(U), nl,
    string_lower("WORLD", L), write(L), nl,
    string_upper(foo, U2), write(U2), nl.
%-------------------------------------------------------------- 202 directive_59
:- initialization(main).
main :-
    term_to_atom(foo(1,2), A), write(A), nl,
    term_to_atom(hello, B), write(B), nl,
    term_to_atom([1,2,3], C), write(C), nl.
%-------------------------------------------------------------- 203 directive_68
:- initialization(main).
fruit(apple). fruit(banana). fruit(cherry).
main :-
    aggregate_all(count, fruit(_), N),
    write(N), nl.
%-------------------------------------------------------------- 204 directive_69
:- initialization(main).
val(5). val(3). val(8). val(1).
main :-
    aggregate_all(max(V), val(V), Max), write(Max), nl,
    aggregate_all(min(W), val(W), Min), write(Min), nl.
%-------------------------------------------------------------- 205 directive_70
:- initialization(main).
score(10). score(20). score(30).
main :-
    aggregate_all(sum(S), score(S), Total),
    write(Total), nl.
%-------------------------------------------------------------- 206 directive_72
:- initialization(main).
main :-
    nb_setval(msg, hello),
    nb_getval(msg, X),
    write(X), nl.
%-------------------------------------------------------------- 207 directive_75
:- initialization(main).
main :-
    X is sqrt(4.0), write(X), nl,
    Y is sin(0.0), write(Y), nl,
    Z is cos(0.0), write(Z), nl.
%-------------------------------------------------------------- 208 directive_76
:- initialization(main).
main :-
    X is float_integer_part(3.7), write(X), nl,
    Y is float_fractional_part(3.7), write(Y), nl,
    Z is float(5), write(Z), nl.
%--------------------------------------------------------- 209 index_directive_1
:- initialization(main).
fact(a, 1).
fact(b, 2).
fact(c, 3).
main :- fact(b, V), write(V), nl.
%--------------------------------------------------------- 210 simple_program_91
:- initialization(main).
main :-
    plus(3, Y, 10), write(Y), nl,
    plus(0, W, 5),  write(W), nl.
main.
%--------------------------------------------------------- 211 simple_program_92
:- initialization(main).
main :-
    plus(X, 4, 10), write(X), nl,
    plus(Y, 3, 3),  write(Y), nl.
main.
%----------------------------------------------- 212 write_canonical_directive_1
:- initialization(main).
main :-
    write_canonical(hello), nl,
    write_canonical('Hello'), nl,
    write_canonical([]), nl.
%-------------------------------------------------------- 213 writeq_directive_1
:- initialization(main).
main :-
    writeq(hello), nl,
    writeq('Hello'), nl,
    writeq([]), nl.
%-------------------------------------------------------- 214 writeq_directive_2
:- initialization(main).
main :-
    writeq(1+2), nl,
    writeq(f(a,b)), nl,
    writeq(a-b), nl.
%-------------------------------------------------------------- 215 directive_20
:- initialization(main).
main :-
    atom_chars(hi, Cs),
    write(Cs), nl,
    atom_chars(A, [w,o,r,l,d]),
    write(A), nl.
%-------------------------------------------------------------- 216 directive_21
:- initialization(main).
main :-
    atom_codes(hi, Cs),
    write(Cs), nl,
    atom_codes(A, [104,101,108,108,111]),
    write(A), nl.
%-------------------------------------------------------------- 217 directive_22
:- initialization(main).
main :-
    atom_concat(foo, bar, R),
    write(R), nl,
    atom_concat(hello, ' world', R2),
    write(R2), nl.
%-------------------------------------------------------------- 218 directive_23
:- initialization(main).
main :-
    atom_length(hello, N),
    write(N), nl,
    atom_length('', Z),
    write(Z), nl.
%-------------------------------------------------------------- 219 directive_38
:- initialization(main).
main :- X is 5 /\ 3, write(X), nl,
        Y is 5 \/ 3, write(Y), nl,
        Z is 5 xor 3, write(Z), nl,
        W is 5 >> 1, write(W), nl,
        V is 5 << 1, write(V), nl.
%-------------------------------------------------------------- 220 directive_71
:- initialization(main).
main :-
    nb_setval(counter, 0),
    nb_setval(counter, 42),
    nb_getval(counter, V),
    write(V), nl.
%-------------------------------------------------------------- 221 directive_74
:- initialization(main).
main :-
    X is truncate(3.7), write(X), nl,
    Y is ceiling(3.2), write(Y), nl,
    Z is floor(3.9), write(Z), nl,
    W is round(3.5), write(W), nl.
%-------------------------------------------------------------- 222 directive_84
:- initialization(main).
p(1).
p(2).
p(3).
main :- p(X), write(X), nl, fail.
main.
%-------------------------------------------------------- 223 simple_program_100
:- initialization(main).
main :-
    sub_atom(abcdef, 2, 3, _, Sub),
    write(Sub), nl,
    sub_atom(abcdef, B, 1, _, b),
    write(B), nl.
%-------------------------------------------------------- 224 simple_program_102
:- initialization(main).
main :-
    upcase_atom(hello, U),
    write(U), nl,
    downcase_atom('WORLD', D),
    write(D), nl.
%--------------------------------------------------------- 225 simple_program_90
:- initialization(main).
main :-
    plus(3, 4, Z), write(Z), nl,
    plus(0, 7, W), write(W), nl,
    plus(10, 20, V), write(V), nl.
main.
%-------------------------------------------------------------- 226 directive_17
% rung02_facts — deterministic fact lookup
% Expected output (one per line): brown jones smith
:- initialization(main).
person(brown).
person(jones).
person(smith).
main :- person(X), write(X), nl, fail ; true.
%-------------------------------------------------------- 227 simple_program_103
:- initialization(main).
main :-
    atom_to_term('foo(1,2)', T, B),
    write(T), nl,
    write(B), nl,
    atom_to_term(A, bar(x), []),
    write(A), nl.
%--------------------------------------------------------- 228 simple_program_97
% ** and ^ for exponentiation
:- initialization(main).
main :-
    A is 2 ** 10, write(A), nl,
    B is 2 ^ 10,  write(B), nl,
    C is 3 ** 0,  write(C), nl,
    D is 2 ** -1, write(D), nl.
%-------------------------------------------------------------- 229 directive_19
:- initialization(main).
main :-
    upcase_atom(hello, U),
    write(U), nl,
    downcase_atom('WORLD', D),
    write(D), nl,
    atom_length(abcde, N),
    write(N), nl.
%-------------------------------------------------------------- 230 directive_78
% rung35_bridge_setup/01_scc_basic — all three positions are concrete goals.
:- initialization(main).
main :-
    setup_call_cleanup(
        write(setup),
        (nl, write(goal), nl),
        (write(cleanup), nl)
    ).
%-------------------------------------------------------- 231 simple_program_101
:- initialization(main).
main :-
    atom_number('42', N),
    write(N), nl,
    atom_number('3.14', F),
    write(F), nl,
    atom_number(A, 7),
    write(A), nl.
%-------------------------------------------------------- 232 simple_program_104
% sub_atom in determinate mode: Before and Length both bound
:- initialization(main).
main :-
    sub_atom(hello, 1, 3, _, Sub1),
    write(Sub1), nl,
    sub_atom(hello, 0, 5, 0, Sub2),
    write(Sub2), nl,
    sub_atom(hello, 0, 0, _, Sub3),
    write(Sub3), nl.
%--------------------------------------------------------- 233 simple_program_96
% ISO §8.7 — truncate/round/ceiling/floor
:- initialization(main).
main :-
    A is truncate(3.7),  write(A), nl,
    B is truncate(-3.7), write(B), nl,
    C is round(3.5),     write(C), nl,
    D is round(4.5),     write(D), nl,
    E is ceiling(3.2),   write(E), nl,
    F is floor(3.7),     write(F), nl,
    G is floor(-3.2),    write(G), nl.
%--------------------------------------------------------- 234 simple_program_98
% abs/1, sign/1, max/2, min/2
:- initialization(main).
main :-
    A is abs(-7),      write(A), nl,
    B is abs(7),       write(B), nl,
    C is sign(-5),     write(C), nl,
    D is sign(0),      write(D), nl,
    E is sign(3),      write(E), nl,
    F is max(3, 7),    write(F), nl,
    G is min(3, 7),    write(G), nl.
%--------------------------------------------------------- 235 simple_program_95
% ISO §8.4 mod (sign of divisor) vs rem (sign of dividend)
:- initialization(main).
main :-
    A is 7 mod 3,   write(A), nl,
    B is -7 mod 3,  write(B), nl,
    C is 7 mod -3,  write(C), nl,
    D is -7 mod -3, write(D), nl,
    E is 7 rem 3,   write(E), nl,
    F is -7 rem 3,  write(F), nl,
    G is 7 rem -3,  write(G), nl,
    H is -7 rem -3, write(H), nl.
%-------------------------------------------------------- 236 simple_program_105
:- initialization(main).
main :-
    writeln(hello),
    writeln([1,2,3]),
    writeln(f(a,b)),
    writeln('quoted atom'),
    writeln(1+2*3),
    ( writeln(in_disj) ; true ),
    writeln(user_output, via_stream),
    write(tail_no_nl),
    writeln(after_tail),
    writeln(end).
main :- write(main_failed), nl.
%-------------------------------------------------------------- 237 directive_80
:- initialization(main).
main :-
    put(72), put(105), put(33), nl,
    open('/tmp/rung74_in.txt', write, WS),
    write(WS, '  ab cd.efg'), nl(WS),
    close(WS),
    open('/tmp/rung74_in.txt', read, RS),
    set_input(RS),
    get0(C0),
    get(C1),
    get0(C2),
    skip(0'.),
    get0(C3),
    close(RS),
    write(chars(C0,C1,C2,C3)), nl,
    write(done), nl,
    halt.
%-------------------------------------------------------------- 238 directive_81
:- initialization(main).
main :-
    telling(T0), seeing(S0),
    write(std(T0,S0)), nl,
    tell('/tmp/rung80.txt'),
    write(alpha(1)), write('.'), nl,
    write(beta(two)), write('.'), nl,
    told,
    append('/tmp/rung80.txt'),
    write(gamma(3)), write('.'), nl,
    told,
    telling(T1), write(after_told(T1)), nl,
    see('/tmp/rung80.txt'),
    read(A), read(B), read(C), read(D),
    seen,
    write(read4(A,B,C,D)), nl,
    seeing(S1), write(after_seen(S1)), nl,
    write(done), nl,
    halt.
%-------------------------------------------------------------- 239 directive_79
:- initialization(main).
main :-
    open('/tmp/rung72_ug.txt', write, WS), write(WS, 'ABC'), close(WS),
    open('/tmp/rung72_ug.txt', read, RS),
    get_char(RS, C1),
    unget_char(RS, C1),
    get_char(RS, C2),
    get_code(RS, D1),
    unget_code(RS, D1),
    get_code(RS, D2),
    close(RS),
    write(char(C1,C2)), nl,
    write(code(D1,D2)), nl,
    open('/tmp/rung72_ug.bin', write, WSB, [type(binary)]), put_byte(WSB, 200), close(WSB),
    open('/tmp/rung72_ug.bin', read, RSB, [type(binary)]),
    get_byte(RSB, B1),
    unget_byte(RSB, B1),
    get_byte(RSB, B2),
    close(RSB),
    write(byte(B1,B2)), nl,
    write(done), nl,
    halt.
%-------------------------------------------------------------- 240 directive_18
% rung08_recursion — fibonacci/2, factorial/2
% Expected output: 8  6
:- initialization(main).

fib(0, 0).
fib(1, 1).
fib(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, F1),
    fib(N2, F2),
    F is F1 + F2.

factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

main :-
    fib(6, F), write(F), nl,
    factorial(3, G), write(G), nl.
%--------------------------------------------------------- 241 arith_directive_1
:- initialization(main).
main :- X is 3 + 4 * 2, Y is X - 1, Z is X mod 3, X > Y, Y >= 10, Z =:= 2, X =\= Y, Y < X, Y =< X, write(X), nl, write(Y), nl, write(Z), nl.
%-------------------------------------------------------------- 242 directive_15
:- initialization(main).
main :- ( ( X = a ; X = b ), write(X), nl, fail ) ; true.
%------------------------------------------------------- 243 findall_directive_4
:- initialization(main).
main :- findall(X, fail, Xs), write(Xs), nl.
%-------------------------------------------------------------------- 244 ite_10
:- initialization(main).
main :- read(X), read(Y), ( ( X == end_of_file, Y == end_of_file ) -> write(both_eof) ; write(no) ), nl.
%-------------------------------------------------------------------- 245 ite_11
:- initialization(main).
main :- read_term(X, []), ( X == end_of_file -> write(rt_eof) ; write(X) ), nl.
%--------------------------------------------------------------------- 246 ite_9
:- initialization(main).
main :- read(X), ( X == end_of_file -> write(eof) ; write(X) ), nl.
%------------------------------------------------------- 247 between_directive_1
:- initialization(main).
main :- between(1, 3, X), write(X), nl, fail.
main :- write(done), nl.
%----------------------------------------------------- 248 copy_term_directive_1
:- initialization(main).
main :-
    copy_term(foo(1,2), T), write(T), nl.
%----------------------------------------------------------- 249 ite_directive_2
:- initialization(main).
main :- ( char_type(a, alpha) -> write(yes) ; write(no) ), nl,
        ( char_type('3', alpha) -> write(yes) ; write(no) ), nl.
%------------------------------------------------------- 250 findall_directive_2
:- initialization(main).
main :-
    findall(X, fail, Xs),
    write(Xs), nl.
%----------------------------------------------------------- 251 ite_directive_3
:- initialization(main).
main :- ( char_type(' ', space) -> write(yes) ; write(no) ), nl,
        ( char_type(a, alnum) -> write(yes) ; write(no) ), nl,
        ( char_type('3', alnum) -> write(yes) ; write(no) ), nl.
%----------------------------------------------------------- 252 ite_directive_5
:- initialization(main).
main :-
    ( compound(f(a,b)) -> write(yes) ; write(no) ), nl,
    ( compound(foo)    -> write(yes) ; write(no) ), nl.
%----------------------------------------------------------- 253 ite_directive_6
:- initialization(main).
main :-
    ( ground(g(a,b))  -> write(yes) ; write(no) ), nl,
    ( ground(g(a,X))  -> write(yes) ; write(no) ), nl.
%----------------------------------------------------------- 254 ite_directive_9
:- initialization(main).
q(1).
q(2).
main :- ( q(2) -> write(yes) ; write(no) ), nl, ( q(3) -> write(yes) ; write(no) ), nl.
%---------------------------------------------------------- 255 list_directive_1
:- initialization(main).
mem(X, [X|_]).
mem(X, [_|T]) :- mem(X, T).
main :- ( mem(X, [1,2,3]), write(X), nl, fail ) ; true.
%----------------------------------------------------------------- 256 abolish_1
:- initialization(main).
main :-
    abolish(ghost/1),
    write(ok), nl.
main.
%--------------------------------------------------------- 257 catch_directive_1
:- initialization(main).
main :-
    catch(safe(3), _, write(bad)),
    write(ok), nl.
safe(X) :- X > 0, write(X), nl.
%------------------------------------------------------- 258 findall_directive_1
:- initialization(main).
color(red). color(green). color(blue).
main :-
    findall(X, color(X), Xs),
    write(Xs), nl.
%------------------------------------------------------- 259 findall_directive_3
:- initialization(main).
pair(a,1). pair(b,2). pair(c,3).
main :-
    findall(K-V, pair(K,V), Ps),
    write(Ps), nl.
%---------------------------------------------------------- 260 ite_directive_10
:- initialization(main).
q(1).
q(2).
main :- ( q(X) -> write(X) ; write(none) ), nl, fail.
main :- write(done), nl.
%--------------------------------------------------------- 261 catch_directive_2
:- initialization(main).
main :-
    put_char(h), put_char(i), nl,
    tab(3), write(x), nl,
    tab(2+1), write(y), nl,
    catch(put_char(ab), error(type_error(character,_),_), (write(caught), nl)).
%----------------------------------------------------------- 262 cut_directive_7
:- initialization(main).
q(1).
q(2).
q(3).
p(X) :- q(X), !.
main :- p(X), write(X), nl.
%------------------------------------------------------- 263 directive_replace_1
% rung03_unify — head unification, compound terms
% Expected output: b a
:- initialization(main).
main :-
    f(X, a) = f(b, Y),
    write(X), write(' '), write(Y), nl.
%--------------------------------------------------------------------- 264 ite_4
:- initialization(main).
main :-
    ( b @>= a -> write(yes) ; write(no) ), nl,
    ( b @>= b -> write(yes) ; write(no) ), nl,
    ( a @>= b -> write(yes) ; write(no) ), nl.
main.
%--------------------------------------------------------------------- 265 ite_5
:- initialization(main).
main :-
    ( b @> a -> write(yes) ; write(no) ), nl,
    ( a @> b -> write(yes) ; write(no) ), nl,
    ( z @> z -> write(yes) ; write(no) ), nl.
main.
%--------------------------------------------------------------------- 266 ite_6
:- initialization(main).
main :-
    ( a @=< b -> write(yes) ; write(no) ), nl,
    ( a @=< a -> write(yes) ; write(no) ), nl,
    ( b @=< a -> write(yes) ; write(no) ), nl.
main.
%--------------------------------------------------------------------- 267 ite_7
:- initialization(main).
main :-
    ( a @< b -> write(yes) ; write(no) ), nl,
    ( b @< a -> write(yes) ; write(no) ), nl,
    ( a @< a -> write(yes) ; write(no) ), nl.
main.
%---------------------------------------------------------- 268 list_directive_2
% rung05_backtrack — member/2, fail, multiple solutions
% Expected output: a b c (one per line)
:- initialization(main).
member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
main :- member(X, [a, b, c]), write(X), nl, fail ; true.
%---------------------------------------------------------- 269 simple_assign_13
:- initialization(main).
main :-
    msort([c,a,b,a], S),
    S = [A,B,C,D],
    write(A), nl, write(B), nl, write(C), nl, write(D), nl.
main.
%---------------------------------------------------------- 270 simple_assign_14
:- initialization(main).
main :-
    msort([b,b,a,a,c], S),
    S = [X1,X2,X3,X4,X5],
    write(X1), nl, write(X2), nl, write(X3), nl, write(X4), nl, write(X5), nl.
main.
%---------------------------------------------------------- 271 simple_assign_15
:- initialization(main).
main :-
    sort([apple,banana,cherry], S),
    S = [A,B,C],
    write(A), nl, write(B), nl, write(C), nl.
main.
%---------------------------------------------------------- 272 simple_assign_16
:- initialization(main).
main :-
    sort([c,a,b,a], S),
    S = [A,B,C],
    write(A), nl, write(B), nl, write(C), nl.
main.
%--------------------------------------------------------- 273 simple_program_93
:- initialization(main).
main :-
    succ(X, 1), write(X), nl,
    succ(Y, 5), write(Y), nl,
    succ(Z, 100), write(Z), nl.
main.
%--------------------------------------------------------- 274 simple_program_94
:- initialization(main).
main :-
    succ(0, A), write(A), nl,
    succ(4, B), write(B), nl,
    succ(99, C), write(C), nl.
main.
%----------------------------------------------------------- 275 cut_directive_6
:- initialization(main).
main :-
    succ_or_zero(3, X), write(X), nl,
    succ_or_zero(1, Y), write(Y), nl,
    succ_or_zero(0, Z), write(Z), nl.
succ_or_zero(0, 0) :- !.
succ_or_zero(N, M) :- M is N - 1.
%----------------------------------------------------------- 276 cut_directive_9
:- initialization(main).
q(1).
q(2).
q(3).
t(X) :- q(X), !.
main :- t(X), write(X), nl, fail.
main :- write(done), nl.
%----------------------------------------------------------- 277 dcg_directive_1
:- initialization(main).

ab --> [a], [b].

main :-
    phrase(ab, [a,b,c,d], Rest),
    write(Rest), nl.
%------------------------------------------------------- 278 directive_replace_7
% rung42_floatunify — unify variables against float literals (both operand orders)
% Expected output: 3.14 2.5
:- initialization(main).
main :-
    X = 3.14,
    2.5 = Y,
    write(X), write(' '), write(Y), nl.
%----------------------------------------------------------------- 279 functor_2
% functor/3: functor(Term, Name, Arity)
:- initialization(main).
main :-
    functor(foo(a,b), F, A), write(F/A), nl,
    functor(hello, F2, A2), write(F2/A2), nl,
    functor(42, F3, A3), write(F3/A3), nl,
    functor(T, bar, 2), numbervars(T, 0, _), write(T), nl.
%--------------------------------------------------------------------- 280 ite_8
:- initialization(main).
main :-
    ( apple @< banana -> write(ok1) ; write(fail1) ), nl,
    ( zebra @> mango  -> write(ok2) ; write(fail2) ), nl,
    ( cat @=< cat     -> write(ok3) ; write(fail3) ), nl,
    ( dog @>= cat     -> write(ok4) ; write(fail4) ), nl.
main.
%--------------------------------------------------------- 281 simple_program_99
% arg(+N, +Term, ?Arg): 1-based argument access
:- initialization(main).
main :-
    arg(1, foo(a,b,c), X), write(X), nl,
    arg(2, foo(a,b,c), Y), write(Y), nl,
    arg(3, foo(a,b,c), Z), write(Z), nl,
    arg(1, f(hello), W), write(W), nl.
%------------------------------------------------------- 282 assertz_directive_1
:- initialization(main).
:- assertz(fact(1, one)).
:- assertz(fact(2, two)).
:- assertz(fact(3, three)).

main :-
    fact(2, W),
    write(W), nl.
%------------------------------------------------------------------- 283 bagof_1
:- initialization(main).
item(banana).
item(apple).
item(cherry).
item(apple).
main :-
    bagof(X, item(X), L),
    write(L), nl.
%------------------------------------------------------------------- 284 catch_1
% catch a type_error thrown by is/2 on non-numeric
:- initialization(main).
main :-
    catch(
        ( X is foo + 1, write(X) ),
        error(type_error(evaluable, foo/0), _),
        write(caught_type_error)
    ), nl.
%------------------------------------------------------------------- 285 catch_2
% catch instantiation_error from is/2 on unbound var
:- initialization(main).
main :-
    catch(
        ( X is _ + 1, write(X) ),
        error(instantiation_error, _),
        write(caught_instantiation_error)
    ), nl.
%------------------------------------------------------------------- 286 catch_3
% catch existence_error for calling undefined predicate
:- initialization(main).
main :-
    catch(
        no_such_pred(42),
        error(existence_error(procedure, no_such_pred/1), _),
        write(caught_existence_error)
    ), nl.
%----------------------------------------------------------- 287 ite_directive_1
% rung04_arith — is/2, arithmetic, comparisons
% Expected output: 6  true  false
:- initialization(main).
main :-
    X is 2 * 3,
    write(X), nl,
    ( 3 < 5 -> write(true) ; write(false) ), nl,
    ( 5 < 3 -> write(true) ; write(false) ), nl.
%----------------------------------------------------------- 288 ite_directive_7
% rung41_ite_nested — if-then-else nested in conjunction/disjunction + bare arrow
:- initialization(main).
a(1). a(2). a(3).
main :-
    ( ( a(X) -> true ; fail ), write(X), nl, fail ; true ),
    ( a(Y) -> write(Y) ; write(none) ), nl,
    ( fail -> write(t) ; write(e) ), nl,
    ( fail -> write(a) ; fail -> write(b) ; write(c) ), nl.
%------------------------------------------------------------------- 289 setof_1
:- initialization(main).
num(3).
num(1).
num(2).
num(3).
main :-
    setof(X, num(X), L),
    write(L), nl.
%---------------------------------------------------------- 290 simple_assign_17
% ISO §8.4 — integer division truncates toward zero
% 7 // 2 = 3,  -7 // 2 = -3,  7 // -2 = -3,  -7 // -2 = 3
:- initialization(main).
main :-
    A is 7 // 2,   write(A), nl,
    B is -7 // 2,  write(B), nl,
    C is 7 // -2,  write(C), nl,
    D is -7 // -2, write(D), nl.
%------------------------------------------------------- 291 directive_replace_2
% rung32_bridge_negation/03_var_goal_once — once(Var) where Var binds caller var.
% Bridge requirement: once/1 with goal_e->kind == E_VAR must dispatch the
% deref'd Term through the bridge, AND the bridge's env-share must propagate
% caller-visible bindings. This mirrors rung31 test 02 but for once/1.
:- initialization(main).
main :-
    G = (X = 7),
    once(G),
    write(X), nl.
%------------------------------------------------------- 292 directive_replace_4
% rung35_bridge_setup/02_call_var — Goal position is a Var.
:- initialization(main).
main :-
    G = (write(goal), nl),
    setup_call_cleanup(
        (write(setup), nl),
        G,
        (write(cleanup), nl)
    ).
%------------------------------------------------------- 293 directive_replace_5
% rung35_bridge_setup/03_setup_var — Setup position is a Var.
:- initialization(main).
main :-
    S = (write(setup), nl),
    setup_call_cleanup(
        S,
        (write(goal), nl),
        (write(cleanup), nl)
    ).
%------------------------------------------------------- 294 directive_replace_6
% rung35_bridge_setup/04_cleanup_var — Cleanup position is a Var.
:- initialization(main).
main :-
    C = (write(cleanup), nl),
    setup_call_cleanup(
        (write(setup), nl),
        (write(goal), nl),
        C
    ).
%------------------------------------------------------- 295 assertz_directive_2
:- initialization(main).
:- assertz(color(red)).
:- assertz(color(green)).
:- assertz(color(blue)).

main :-
    color(X),
    write(X), nl,
    fail.
main.
%------------------------------------------------------- 296 assertz_directive_3
:- initialization(main).
:- assertz(person(alice, 30)).
:- assertz(person(bob, 25)).
:- assertz(person(carol, 35)).

main :-
    person(Name, Age),
    write(Name), write(' '), write(Age), nl,
    fail.
main.
%------------------------------------------------------- 297 directive_replace_3
% rung32_bridge_negation/05_var_goal_once_arith — once(Var) with arith compound.
% Bridge requirement: once/1's bridge dispatch must recurse the Term→EXPR
% walker through arithmetic compounds (TT_COMPOUND "+" arity 2 → E_ADD)
% so is/2 inside the goal sees a real expression tree. Mirrors rung31
% test 03 but under once/1 instead of catch/3.
:- initialization(main).
main :-
    G = (A is 6 * 7),
    once(G),
    write(A), nl.
%------------------------------------------------------- 298 assertz_directive_4
:- initialization(main).
:- assertz(animal(cat)).
:- assertz(animal(dog)).
:- assertz(animal(bird)).
:- assertz(animal(fish)).

main :-
    animal(X),
    write(X), nl,
    fail.
main.
%----------------------------------------------------------- 299 cut_directive_1
% SCRIP DEMO4 -- Palindrome (Prolog section)
% Idiom: reverse/2 built-in; unification does the comparison
:- initialization(main, main).

palindrome(S, yes) :- string_chars(S, Cs), reverse(Cs, Cs), !.
palindrome(_, no).

main :-
    palindrome("racecar", A), write(A), nl,
    palindrome("hello",   B), write(B), nl,
    palindrome("level",   C), write(C), nl.
%------------------------------------------------------------------- 300 setof_2
:- initialization(main).
age(peter, 7).
age(ann, 11).
age(pat, 8).
age(tom, 5).
age(sue, 11).
main :-
    setof(Child, Age^age(Child, Age), Kids),
    write(Kids), nl,
    setof(A, C^age(C, A), Ages),
    write(Ages), nl.
%---------------------------------------------------------- 301 list_directive_3
% rung06_lists — append/3, length/2, reverse/2
% Expected output: [a,b,c,d]  4  [d,c,b,a]
:- initialization(main).
append([], L, L).
append([H|T], L, [H|R]) :- append(T, L, R).
length([], 0).
length([_|T], N) :- length(T, N1), N is N1 + 1.
reverse([], []).
reverse([H|T], R) :- reverse(T, RT), append(RT, [H], R).
main :-
    append([a,b], [c,d], L), write(L), nl,
    length([a,b,c,d], N), write(N), nl,
    reverse([a,b,c,d], R), write(R), nl.
%-------------------------------------------------------- 302 writeq_directive_5
:- initialization(main).
main :-
    read_term_from_atom('foo(x,y,z).', T1, []),
    writeq(T1), nl,
    read_term_from_atom('bar(A,B,A).', T2, [variables(V2)]),
    numbervars(t(T2,V2), 0, _),
    writeq(T2), nl, writeq(V2), nl,
    read_term_from_atom('bar(A,B,A).', T3, [variable_names(VN3)]),
    numbervars(VN3, 0, _),
    writeq(VN3), nl,
    read_term_from_atom('baz(P,Q,P,R).', T4, [singletons(S4)]),
    numbervars(t(T4,S4), 0, _),
    writeq(S4), nl,
    read_term_from_atom('quux(A,B,A,C,B).', T5, [variables(V5), variable_names(VN5), singletons(S5)]),
    numbervars(t(T5,V5,VN5,S5), 0, _),
    writeq(T5), nl, writeq(V5), nl, writeq(VN5), nl, writeq(S5), nl,
    read_term_from_chars([g,'(',a,',',b,')','.'], T6, [variables(V6)]),
    writeq(T6), nl, writeq(V6), nl,
    read_term_from_codes([104,105,40,88,44,89,41,46], T7, [variable_names(VN7)]),
    numbervars(VN7, 0, _),
    writeq(VN7), nl,
    write(done), nl.
%--------------------------------------------------- 303 cut_directive_replace_1
% SCRIP DEMO3 -- Roman Numerals (Prolog section)
% Idiom: arithmetic rules map value to numeral via recursive subtraction
:- initialization(main, main).

roman(0, '') :- !.
roman(N, R) :- N >= 1000, !, N1 is N - 1000, roman(N1, R1), atom_concat('M',  R1, R).
roman(N, R) :- N >= 900,  !, N1 is N - 900,  roman(N1, R1), atom_concat('CM', R1, R).
roman(N, R) :- N >= 500,  !, N1 is N - 500,  roman(N1, R1), atom_concat('D',  R1, R).
roman(N, R) :- N >= 400,  !, N1 is N - 400,  roman(N1, R1), atom_concat('CD', R1, R).
roman(N, R) :- N >= 100,  !, N1 is N - 100,  roman(N1, R1), atom_concat('C',  R1, R).
roman(N, R) :- N >= 90,   !, N1 is N - 90,   roman(N1, R1), atom_concat('XC', R1, R).
roman(N, R) :- N >= 50,   !, N1 is N - 50,   roman(N1, R1), atom_concat('L',  R1, R).
roman(N, R) :- N >= 40,   !, N1 is N - 40,   roman(N1, R1), atom_concat('XL', R1, R).
roman(N, R) :- N >= 10,   !, N1 is N - 10,   roman(N1, R1), atom_concat('X',  R1, R).
roman(N, R) :- N >= 9,    !, N1 is N - 9,    roman(N1, R1), atom_concat('IX', R1, R).
roman(N, R) :- N >= 5,    !, N1 is N - 5,    roman(N1, R1), atom_concat('V',  R1, R).
roman(N, R) :- N >= 4,    !, N1 is N - 4,    roman(N1, R1), atom_concat('IV', R1, R).
roman(N, R) :- N >= 1,    !, N1 is N - 1,    roman(N1, R1), atom_concat('I',  R1, R).

main :-
    roman(1776, A), write(A), nl,
    roman(42,   B), write(B), nl,
    roman(9,    C), write(C), nl.
%----------------------------------------------------------- 304 cut_directive_5
%-------------------------------------------------------------------------------
% 1
% In a certain bank the positions of cashier, manager, and teller are held by
% Brown, Jones, and Smith, though not necessarily respectively.  The teller, who
% was an only child, earns the least.  Smith, who married Brown's sister, earns
% more than the manager. What position does each man fill?
:- initialization(main). main :- puzzle; true.
person(brown).
person(jones).
person(smith).
puzzle :-
   person(Cashier),
   person(Manager),
   person(Teller),
   differ(Cashier, Manager, Teller),
   differ(smith, Manager),
   differ(Teller, brown),
   differ(smith, Teller),
   display(Cashier, Manager, Teller),
%  Smith is the cashier.
%  Brown is the manager.
%  Jones is the teller.
   fail.
%-------------------------------------------------------------------------------
display(Cashier, Manager, Teller) :-
   write('Cashier='), write(Cashier),
   write(' Manager='), write(Manager),
   write(' Teller='), write(Teller),
   write('\n').
%-------------------------------------------------------------------------------
differ(X, X) :- !, fail.
differ(_, _).
differ(X, X, _) :- !, fail.
differ(X, _, X) :- !, fail.
differ(_, X, X) :- !, fail.
differ(_, _, _).
%-------------------------------------------------------------------------------
%-------------------------------------------------------------- 305 clause_ite_1
:- initialization(main).
main :- ( clause(ghost(_), _) -> write(found) ; write(nofact) ), nl.
%----------------------------------------------------- 306 throw_ite_directive_1
:- initialization(main).
main :- write(before), nl, ( throw(oops) -> write(yes) ; write(no) ), nl, write(after), nl.
%------------------------------------------------------------- 307 assertz_ite_2
:- initialization(main).
main :- assertz(gadget(1)),
        ( predicate_property(gadget(_), dynamic) -> write(yes) ; write(no) ), nl.
%--------------------------------------------------- 308 between_ite_directive_1
:- initialization(main).
t(L,U,X) :- ( between(L,U,X) -> write(yes) ; write(no) ), nl.
main :- t(1,5,3), t(1,5,1), t(1,5,5), t(1,5,0), t(1,5,6), t(5,1,3), t(3,3,3).
%-------------------------------------------------------- 309 format_directive_7
:- initialization(main).
main :- format(atom(A), "~w+~w", [1, 2]), write(A), nl, atom_length(A, L), write(L), nl, format(codes(C), "~a", [hi]), write(C), nl, format(chars(Ch), "~a", [ok]), write(Ch), nl,
    current_output(S), write(S, via_current), nl(S), current_input(I), set_input(I), set_output(S), write(still), nl, keysort([b-2, a-1, c-0, a-0], K), write(K), nl.
%------------------------------------------------------- 310 ite_naf_directive_1
:- initialization(main).
q(1).
main :- ( \+ q(2) -> write(a) ; write(b) ), nl, ( \+ q(1) -> write(c) ; write(d) ), nl.
%------------------------------------------------------------- 311 retract_ite_1
:- initialization(main).
main :-
    ( retract(ghost(x)) -> write(found) ; write(notfound) ), nl.
%------------------------------------------------------------- 312 assertz_ite_1
:- initialization(main).
main :- assertz(widget(1)), assertz(widget(2)),
        ( current_predicate(widget/1) -> write(yes) ; write(no) ), nl,
        ( current_predicate(nothing/3) -> write(yes) ; write(no) ), nl.
%----------------------------------------------------------- 313 ite_directive_4
:- initialization(main).
main :-
    ( callable(f(x)) -> write(yes) ; write(no) ), nl,
    ( atom(f(x))     -> write(yes) ; write(no) ), nl.
%----------------------------------------- 314 copy_term_ite_directive_replace_1
:- initialization(main).
main :-
    copy_term(f(X, X), f(A, B)),
    (A == B -> write(same) ; write(diff)), nl,
    copy_term(hello, C), write(C), nl.
%----------------------------------------- 315 copy_term_ite_directive_replace_2
:- initialization(main).
main :-
    copy_term(f(X, X), f(A, B)),
    (A == B -> write(same) ; write(diff)), nl,
    copy_term(hello, C), write(C), nl.
%------------------------------------------------------ 316 ite_list_directive_1
% rung40_typetest_compound — type tests on compound-literal args (mode-3 BINARY parity)
:- initialization(main).
main :-
    ( is_list([1,2,3]) -> write(yes) ; write(no) ), nl,
    ( is_list([a|b])   -> write(yes) ; write(no) ), nl.
%------------------------------------------------------------- 317 ite_replace_1
:- initialization(main).
main :-
    sort([], S),
    ( S = [] -> write(ok) ; write(fail) ), nl.
main.
%------------------------------------------------ 318 op_ite_directive_replace_1
:- op(100, xf, fact).
:- initialization(main).
main :-
    ( 5 fact == fact(5) -> write(yes) ; write(no) ), nl,
    ( (1 + 2) fact == fact(1 + 2) -> write(yes) ; write(no) ), nl.
%------------------------------------------------- 319 catch_between_directive_1
:- initialization(main).
main :- catch(between(a,3,_), error(F1,_), (write(F1), nl)),
        catch(between(1,b,_), error(F2,_), (write(F2), nl)),
        catch(between(_,3,_), error(F3,_), (write(F3), nl)),
        catch(between(1,_,_), error(F4,_), (write(F4), nl)),
        catch(between(1,3,foo), error(F5,_), (write(F5), nl)).
%----------------------------------------------------------- 320 cut_directive_8
:- initialization(main).
q(1).
q(2).
p(X) :- q(X), X = 2, !.
p(0).
main :- p(X), write(X), nl, fail.
main :- write(done), nl.
%------------------------------------------------------- 321 dcg_ite_directive_1
:- initialization(main).

greeting --> [hello], [world].

main :-
    ( phrase(greeting, [hello, world]) -> write(yes) ; write(no) ), nl,
    ( phrase(greeting, [hello, there]) -> write(yes) ; write(no) ), nl.
%-------------------------------------------------------------------- 322 univ_3
% =.. (univ): decompose and construct terms
:- initialization(main).
main :-
    foo(a,b,c) =.. L, write(L), nl,
    T =.. [bar, 1, 2], write(T), nl,
    hello =.. L2, write(L2), nl,
    42 =.. L3, write(L3), nl.
%----------------------------------------------------- 323 catch_ite_directive_1
:- initialization(main).
main :-
    current_prolog_flag(bounded, B), write(B), nl,
    ( current_prolog_flag(double_quotes, _) -> write(has_dq) ; write(no_dq) ), nl,
    set_prolog_flag(double_quotes, codes),
    current_prolog_flag(double_quotes, D), write(D), nl,
    ( catch(set_prolog_flag(bounded, false), error(permission_error(modify,flag,_),_), write(ro_protected)) ), nl,
    ( catch(set_prolog_flag(no_such_flag, x), error(domain_error(prolog_flag,_),_), write(dom_checked)) ), nl.
%--------------------------------------------------- 324 ite_directive_replace_3
% rung42_floatunify — equality and disequality of float literals
% Expected output: yes neq
:- initialization(main).
main :-
    ( 2.5 = 2.5 -> write(yes) ; write(no) ),
    write(' '),
    ( 1.5 = 2.5 -> write(eq) ; write(neq) ),
    nl.
%-------------------------------------------------- 325 call_directive_replace_1
% rung33_bridge_callN/02_call1_compound — call/1 with Var bound to compound goal.
% Bridge requirement: Var is bound to a compound (X=5); bridge dispatches
% it and caller-visible variable X gets bound. Mirrors rung31/02 shape
% but under call/1 instead of catch/3.
:- initialization(main).
main :-
    G = (X = 5),
    call(G),
    write(X), nl.
%-------------------------------------------------- 326 call_directive_replace_2
% rung33_bridge_callN/03_call2_extra_arg — call/2 with Var bound to atom,
% one extra arg appended. call(G, X) where G=write is call(write, X) = write(X).
% Bridge requirement: call/N with N>1 must reconstruct the goal by appending
% extra args to the deref'd Term (G=atom -> call G(extra_args...)).
:- initialization(main).
main :-
    G = write,
    call(G, hello),
    nl.
%------------------------------------------------- 327 catch_directive_replace_1
% rung31_bridge_catch/02_var_goal_unify — goal-as-var binds caller-visible vars.
% Bridge requirement: when synth-EXPR walks the Term, TT_VAR slots must map to
% the caller's env cells (pointer-identity dedup) so unification threads
% bindings end-to-end through TT_REF chains.
:- initialization(main).
main :-
    G = (X = 5),
    catch(G, _, fail),
    write(X), nl.
%------------------------------------------------- 328 catch_directive_replace_2
% rung31_bridge_catch/03_var_goal_arith — goal-as-var with arithmetic compound.
% Bridge requirement: Term→EXPR walker must recurse through arithmetic operators
% (TT_COMPOUND "+" arity 2 → E_ADD with E_ILIT children) so is/2's arith eval
% sees a real expression tree, not a wrapped E_VAR holding a compound Term.
:- initialization(main).
main :-
    G = (A is 3 + 4),
    catch(G, _, fail),
    write(A), nl.
%---------------------------------------------------- 329 forall_ite_directive_2
:- initialization(main).
q(1).
q(2).
q(3).
r(1).
r(2).
r(3).
s(1).
main :- once(q(X)), write(X), nl, ( forall(q(Y), r(Y)) -> write(all) ; write(notall) ), nl, ( forall(q(Z), s(Z)) -> write(all) ; write(notall) ), nl, ignore(q(9)), write(end), nl.
%--------------------------------------------------- 330 ite_directive_replace_4
:- initialization(main).
main :-
    put_code(0'A), put_code(user_output, 0'B), put_char(c), nl,
    get_char(C1), get_code(N2), peek_char(C3),
    get_char(user_input, C4), get_code(user_input, N5),
    write(C1), nl, write(N2), nl, write(C3), nl,
    write(C4), nl, write(N5), nl,
    ( C1 == end_of_file, N2 =:= -1, C3 == end_of_file, C4 == end_of_file, N5 =:= -1 -> write(eof_all_ok) ; write(eof_bad) ), nl,
    write(done), nl.
%------------------------------------------------------------ 331 op_directive_2
:- dynamic counter/1.
:- discontiguous foo/1.
:- multifile bar/2.
:- op(700, xfx, ===).
:- set_prolog_flag(double_quotes, atom).
:- initialization(main).
foo(1).
main :- X = (a === b), write(X), nl, foo(Y), write(Y), nl, write(before), nl, counter(_), write(never), nl.
main :- write(second), nl.
%------------------------------------------------- 332 writeq_format_directive_1
:- initialization(main).
main :-
    writeq('hello world'), nl,
    format("~w plus ~w is ~d~n", [2, 3, 5]),
    write_term([a,b,c], [quoted(true)]), nl,
    ( set_output(user_error), writeq(redirected_to_err), nl, format("~w~n", [also_err]), set_output(user_output) ),
    writeq(restored_to_out), nl,
    format("~a done~n", [format]),
    write(plain_write), nl.
%----------------------------------------------- 333 asserta_assertz_directive_1
:- initialization(main).
:- assertz(item(b)).
:- assertz(item(c)).
:- asserta(item(a)).

main :-
    item(X),
    write(X), nl,
    fail.
main.
%--------------------------------------------------- 334 findall_dcg_directive_1
:- initialization(main).

item(X) --> [X].

% Use findall to collect all parses
main :-
    findall(X, phrase(item(X), [a]), As),
    write(As), nl,
    findall(X, phrase(item(X), [b]), Bs),
    write(Bs), nl.
%--------------------------------------------------- 335 ite_directive_replace_2
% rung35_bridge_setup/05_cleanup_on_fail — Cleanup runs even when Goal fails.
:- initialization(main).
main :-
    G = fail,
    ( setup_call_cleanup(
        (write(setup), nl),
        G,
        (write(cleanup), nl)
      ) -> write(goal_ok) ; write(goal_failed) ),
    nl.
%-------------------------------------------------- 336 call_directive_replace_4
% rung33_bridge_callN/04_call3_user_pred — call/3 with user predicate and two args.
% G is bound to a user-defined predicate atom; call(G, A, B) reconstructs
% the compound G(A,B) and dispatches via pl_box_choice.
:- initialization(main).

add(X, Y, Z) :- Z is X + Y.

main :-
    G = add,
    call(G, 3, 4, R),
    write(R), nl.
%--------------------------------------------------- 337 ite_directive_replace_1
% rung32_bridge_negation/04_var_goal_not — not(Var) discriminating dispatch.
% Decisive: silent-success would skip the side effect entirely (the goal is
% never invoked), printing only "after". Real dispatch invokes the goal,
% printing "side\nafter" and the not/1 reports failed (because the inner
% goal succeeded with the side effect). This isolates the dispatch behavior
% from the boolean outcome.
:- initialization(main).
main :-
    G = (write(side), nl),
    ( not(G) -> write(neg_succ) ; write(after) ),
    nl.
%---------------------------------------------------- 338 ite_writeq_directive_2
:- initialization(main).
main :-
    atom_number(A1, 123), writeq(A1), nl,
    atom_number(A2, -42), writeq(A2), nl,
    atom_number(A3, 0), writeq(A3), nl,
    atom_number('456', N1), ( integer(N1) -> writeq(N1-int) ; writeq(N1-other) ), nl,
    atom_number('-7', N2), writeq(N2), nl,
    atom_number('2.5', N3), ( float(N3) -> writeq(N3-flt) ; writeq(N3-other) ), nl,
    atom_number(A4, 2.5), writeq(A4), nl,
    ( atom_number('789', 789) -> writeq(roundtrip_ok) ; writeq(roundtrip_fail) ), nl,
    write(done), nl,
    halt.
%----------------------------------------------------- 339 catch_ite_directive_3
:- initialization(main).
main :-
    open('/tmp/rung65_scrip.txt', write, S), write(S, hello), nl(S), write(S, world), nl(S), close(S),
    open('/tmp/rung65_scrip.txt', read, R), get_char(R, C1), get_char(R, C2), get_code(R, N3), close(R),
    write(readback(C1, C2, N3)), nl,
    open('/tmp/rung65_scrip.txt', append, A), write(A, more), nl(A), close(A, [force(true)]),
    open('/tmp/rung65_scrip.txt', read, R2, [type(text)]), get_char(R2, F1), close(R2),
    write(firstchar(F1)), nl,
    ( catch(open('/tmp/rung65_absent.txt', read, _), error(existence_error(source_sink, _), _), true) -> write(existence_ok) ; write(existence_bad) ), nl,
    ( catch(open('/tmp/rung65_scrip.txt', bogus, _), error(domain_error(io_mode, bogus), _), true) -> write(iomode_ok) ; write(iomode_bad) ), nl,
    ( catch(open(_Unbound, read, _), error(instantiation_error, _), true) -> write(inst_ok) ; write(inst_bad) ), nl,
    ( catch(open(123, read, _), error(domain_error(source_sink, 123), _), true) -> write(sourcesink_ok) ; write(sourcesink_bad) ), nl,
    write(done), nl.
%----------------------------------------------------- 340 catch_ite_directive_2
:- initialization(main).
main :-
    current_output(CO), write(CO), nl,
    current_input(CI), write(CI), nl,
    ( catch(set_output(foo), error(existence_error(stream,_),_), write(setout_existence)) ), nl,
    ( catch(current_output(a), error(domain_error(stream,_),_), write(curout_domain)) ), nl,
    ( catch(set_output(_), error(instantiation_error,_), write(setout_inst)) ), nl,
    ( catch(set_output(123), error(domain_error(stream_or_alias,_),_), write(setout_domain)) ), nl,
    ( catch(set_output(user_input), error(permission_error(output,stream,_),_), write(setout_perm)) ), nl,
    ( catch(set_input(user_output), error(permission_error(input,stream,_),_), write(setin_perm)) ), nl,
    write(user_error, this_goes_to_stderr), nl(user_error),
    ( flush_output -> write(flushed0) ; write(flush0_fail) ), nl,
    ( flush_output(user_output) -> write(flushed1) ; write(flush1_fail) ), nl,
    write(done), nl.
%------------------------------------------------------- 341 dcg_ite_directive_2
:- initialization(main).

sentence --> noun_phrase, verb_phrase.
noun_phrase --> [the], noun.
verb_phrase --> verb, noun_phrase.
verb_phrase --> verb.
noun --> [cat].
noun --> [dog].
noun --> [mouse].
verb --> [chases].
verb --> [sees].

main :-
    ( phrase(sentence, [the, cat, chases, the, mouse]) -> write(yes) ; write(no) ), nl,
    ( phrase(sentence, [the, dog, sees]) -> write(yes) ; write(no) ), nl,
    ( phrase(sentence, [cat, chases]) -> write(yes) ; write(no) ), nl.
%----------------------------------------------------- 342 catch_ite_directive_4
:- initialization(main).
main :-
    open('/tmp/rung71_br.bin', write, WS, [type(binary)]),
    put_byte(WS, 0), put_byte(WS, 65), put_byte(WS, 128), put_byte(WS, 255),
    close(WS),
    open('/tmp/rung71_br.bin', read, RS, [type(binary)]),
    get_byte(RS, B1), get_byte(RS, B2),
    peek_byte(RS, P3), get_byte(RS, B3),
    get_byte(RS, B4),
    peek_byte(RS, PE), get_byte(RS, BE),
    close(RS),
    write(read(B1,B2,B3,B4)), nl,
    write(peek_consistent(P3,B3)), nl,
    write(eof(PE,BE)), nl,
    ( catch((open('/tmp/rung71_br.bin', write, WS2, [type(binary)]), put_byte(WS2, 300), close(WS2)), error(type_error(T,V),_), (write(range_err(T,V)), nl)) -> true ; write(no_range_check), nl ),
    write(done), nl,
    halt.
%----------------------------------------------------------- 343 ite_directive_8
:- initialization(main).
main :-
    open('/tmp/rung67_a.txt', write, S),
    ( stream_property(S, mode(write)) -> write(mode_write_ok) ; write(mode_write_bad) ), nl,
    ( stream_property(S, output) -> write(is_output) ; write(not_output) ), nl,
    ( stream_property(S, input) -> write(bug_input) ; write(correctly_not_input) ), nl,
    ( stream_property(S, type(text)) -> write(type_text_ok) ; write(type_text_bad) ), nl,
    ( ( stream_property(S, file_name(F)), atom(F) ) -> write(has_file_name) ; write(no_file_name) ), nl,
    ( stream_property(S, mode(read)) -> write(bug_read) ; write(correctly_not_read) ), nl,
    write(S, hello),
    close(S),
    open('/tmp/rung67_a.txt', read, S2),
    ( stream_property(S2, mode(read)) -> write(read_mode_ok) ; write(read_mode_bad) ), nl,
    ( stream_property(S2, input) -> write(read_is_input) ; write(read_not_input) ), nl,
    ( stream_property(S2, end_of_stream(not)) -> write(nonempty_not_eof) ; write(eof_bad) ), nl,
    close(S2),
    write(done), nl.
%--------------------------------------------------- 344 ite_directive_replace_5
:- initialization(main).
main :-
    open('/tmp/rung77_data.txt', write, W),
    write(W, 'foo(bar, 42, [x,y,z]).'), nl(W),
    write(W, 'hello.'), nl(W),
    write(W, 'p(A, B, A).'), nl(W),
    close(W),
    open('/tmp/rung77_data.txt', read, R),
    read(R, T1), write(t1=T1), nl,
    read(R, T2), write(t2=T2), nl,
    read(R, T3),
    ( T3 = p(A,B,C), A==C, A\==B -> write(t3=shared_ok) ; write(t3=bad) ), nl,
    read(R, T4), write(t4=T4), nl,
    close(R),
    open('/tmp/rung77_data.txt', read, R2), set_input(R2),
    read(X1), write(x1=X1), nl,
    close(R2),
    write(done), nl,
    halt.
%--------------------------------------------------- 345 ite_directive_replace_6
:- initialization(main).
main :-
    open('/tmp/rung78_d.txt', write, W),
    write(W, 'tree(node(A,leaf,B), C, A).'), nl(W),
    write(W, 'q(X, Y, X).'), nl(W),
    close(W),
    open('/tmp/rung78_d.txt', read, R),
    read_term(R, T, [variables(Vs), variable_names(VN), singletons(S)]),
    length(Vs, NVs), write(nvars=NVs), nl,
    length(VN, NVN), write(nnames=NVN), nl,
    length(S, NS), write(nsingletons=NS), nl,
    ( T = tree(node(X,leaf,_),_,X2), X==X2 -> write(a_shared_ok) ; write(a_bad) ), nl,
    set_input(R),
    read_term(T2, [singletons(S2)]),
    length(S2, NS2), write(rt2_singletons=NS2), nl,
    ( T2 = q(P,_,P2), P==P2 -> write(rt2_shared_ok) ; write(rt2_bad) ), nl,
    close(R),
    write(done), nl,
    halt.
%----------------------------------------------------- 346 catch_ite_directive_5
:- initialization(main).
main :-
    open('/tmp/rung76_s.txt', write, WS),
    put_char(WS, a), put_char(WS, b), put_char(WS, c),
    close(WS),
    open('/tmp/rung76_s.txt', read, RS),
    ( at_end_of_stream(RS) -> write(at0_true) ; write(at0_false) ), nl,
    get_char(RS, C1), get_char(RS, C2), get_char(RS, C3),
    write(read(C1,C2,C3)), nl,
    ( at_end_of_stream(RS) -> write(ateof_true) ; write(ateof_false) ), nl,
    get_char(RS, C4),
    write(past(C4)), nl,
    ( at_end_of_stream(RS) -> write(pasteof_true) ; write(pasteof_false) ), nl,
    close(RS),
    open('/tmp/rung76_s.txt', read, RS2), set_input(RS2),
    ( at_end_of_stream -> write(cur_true) ; write(cur_false) ), nl,
    close(RS2),
    ( catch(at_end_of_stream(nosuch), error(existence_error(T,V),_), (write(exist(T,V)), nl)) -> true ; write(no_exist_check), nl ),
    ( catch(put_char(user_output, _), error(instantiation_error,_), (write(instantiation_caught), nl)) -> true ; write(no_inst_check), nl ),
    write(done), nl,
    halt.
%---------------------------------------------------------- 347 list_directive_4
:- initialization(main).
main :-
    display(1+2*3), nl,
    display((1+2)*3), nl,
    display([a,b,c]), nl,
    display('hello world'), nl,
    display('Foo'), nl,
    display('.'), nl,
    display(foo(bar(1),baz(2))), nl,
    display((a:-b,c)), nl,
    display(- 5), nl,
    T1 = f(X,Y,g(X,Z)), numbervars(T1, 0, _), display(T1), nl,
    T2 = [p,q|W], numbervars(T2, 0, _), display(T2), nl,
    display(user_output, hello(world)), nl,
    print(1+2*3), nl,
    print([a,b,c]), nl,
    print('hello world'), nl,
    print(foo(bar(1),baz(2))), nl,
    print(user_output, [x,y,z]), nl,
    write(done), nl,
    halt.
%------------------------------------------------- 348 writeq_format_directive_3
:- initialization(main).
main :- write('hello world'), nl, writeq('hello world'), nl, print(foo), nl, write_canonical([a,b]), nl, writeln(done), tab(3), write(x), nl, format('~w ~a ~d~n', [alpha, beta, 42]).
%--------------------------------------------------- 349 catch_throw_directive_1
:- initialization(main).
main :-
    catch(throw(myerr), myerr, write(matched)), nl.
%--------------------------------------------------- 350 catch_throw_directive_3
:- initialization(main).
main :-
    catch(throw(hello), E, (write(caught), write(' '), write(E), nl)).
%--------------------------------------------------- 351 catch_throw_directive_4
:- initialization(main).
main :-
    catch(foo, E, (write(caught), write(' '), write(E), nl)).
foo :- throw(error(type_error(integer, foo), context)).
%------------------------------------------- 352 write_canonical_writeq_format_1
:- initialization(main).
main :- write(user_output, a), nl(user_output), write(user_error, hidden), nl(user_error), writeq(user_output, 'B c'), nl(user_output), print(user_output, [1,2]), nl(user_output),
    write_canonical(user_output, f('X', y)), nl(user_output), writeln(user_output, done1), tab(user_output, 3), put_char(user_output, x), nl(user_output),
    format(user_output, "~w-~a~n", [p, q]), format(user_error, "~w~n", [err]), flush_output(user_output), set_output(user_error), write(also_hidden), nl, set_output(user_output), write(back), nl.
%--------------------------------------------------- 353 catch_throw_directive_2
:- initialization(main).
main :-
    catch(inner, E, (write(outer), write(' '), write(E), nl)).
inner :-
    catch(throw(mine), other, write(wrong)).
%---------------------------------------------------- 354 forall_ite_directive_1
:- initialization(main).
main :-
    ( forall(member(X,[2,4,6]), X mod 2 =:= 0) -> write(all_even) ; write(not_all) ), nl,
    ( forall(member(Y,[2,3,4]), Y mod 2 =:= 0) -> write(all_even2) ; write(not_all2) ), nl,
    ( forall(member(_,[]), fail) -> write(vacuous_true) ; write(vacuous_false) ), nl.
%------------------------------------------------ 355 op_ite_directive_replace_2
:- op(200, fy, ~).
:- initialization(main).
main :-
    ( ~ ~ a == ~(~(a)) -> write(yes) ; write(no) ), nl,
    ( X = ~ foo, X == ~(foo) -> write(yes) ; write(no) ), nl,
    ( ~ (b + c) == ~(b + c) -> write(yes) ; write(no) ), nl.
%----------------------------------------------- 356 assertz_retract_directive_1
:- initialization(main).
:- assertz(age(alice, 30)).
:- assertz(age(bob, 25)).

main :-
    retract(age(bob, X)),
    write(X), nl.
%----------------------------------------------- 357 findall_directive_replace_1
% rung34_bridge_setof/03_findall_var_fail
% findall/3 with goal-as-Var that always fails. Should produce empty list (not exception).
:- initialization(main).
main :-
    G = fail,
    findall(X, G, Xs),
    write(Xs), nl.
%-------------------------------------------------- 358 call_directive_replace_3
% rung33_bridge_callN/05_call2_compound_g — call/2 where G is already a compound.
% call(G, ExtraArg) where G=succ(3) reconstructs succ(3, R) — G's args
% prepended, extra args appended. Tests the compound-G case of call/N.
:- initialization(main).
main :-
    G = succ(3),
    call(G, R),
    write(R), nl.
%--------------------------------------------- 359 catch_ite_directive_replace_1
% rung31_bridge_catch/01_var_goal_fails — goal-as-var that fails should be caught as failure.
% Bridge requirement: catch(Var, _, _) must dispatch the deref'd Term as a goal,
% not silently succeed via the default switch arm.
:- initialization(main).
main :-
    G = fail,
    ( catch(G, _, write(caught)) -> write(succeeded) ; write(failed) ),
    nl.
%------------------------------------------------------------- 360 catch_throw_1
% throw and catch a user-defined error term
:- initialization(main).
main :-
    catch(
        throw(my_error(42, hello)),
        my_error(Code, Msg),
        (write(Code), write(' '), write(Msg), nl)
    ).
%----------------------------------------------- 361 findall_directive_replace_3
% rung34_bridge_setof/02_findall_var_goal_arith
% findall/3 where the goal Var contains an arithmetic expression.
:- initialization(main).
val(1). val(2). val(3).
main :-
    G = (val(X), Y is X * 2),
    findall(Y, G, Ys),
    write(Ys), nl.
%----------------------------------------------- 362 findall_directive_replace_5
% rung34_bridge_setof/05_findall_var_conj
% findall/3 where goal Var is bound to a conjunction with a filter.
:- initialization(main).
num(10). num(20). num(30).
main :-
    G = (num(X), X > 15),
    findall(X, G, Xs),
    write(Xs), nl.
%----------------------------------------------------------- 363 op_ite_format_1
:- initialization(main).
main :-
    op(600, xfx, rt_infix),
    op(300, fy, rt_pre),
    ( current_op(P1, T1, rt_infix) -> format("~w ~w~n", [P1, T1]) ; write(none), nl ),
    ( current_op(P2, T2, rt_pre) -> format("~w ~w~n", [P2, T2]) ; write(none), nl ),
    op(400, yfx, rt_multi),
    ( current_op(400, yfx, rt_multi) -> write(yes) ; write(no) ), nl.
%------------------------------------------------- 364 writeq_format_directive_2
:- initialization(main).
main :-
    writeq(user_output, 'quoted atom'), nl,
    format(user_output, "~w=~d~n", [x, 42]),
    write_term(user_output, foo(bar), [quoted(true)]), nl,
    writeq(user_error, this_to_err), nl(user_error),
    format(user_error, "~w~n", [err_fmt]),
    write(done), nl.
%---------------------------------------------- 365 call_ite_directive_replace_1
% rung33_bridge_callN/01_call1_atom — call/1 with Var bound to atom goal.
% Bridge requirement: call/1 with goal_e->kind == E_VAR dispatches the
% deref'd Term as a goal. Here Var is bound to 'true' (atom); bridge
% must recognise atom as zero-arity callable.
:- initialization(main).
main :-
    G = true,
    ( call(G) -> write(succeeded) ; write(failed) ),
    nl.
%----------------------------------------------- 366 findall_directive_replace_2
% rung34_bridge_setof/01_findall_var_goal
% findall/3 where the goal argument is a Var bound to a callable term.
% Bridge requirement: findall(X, G, Xs) must dispatch G as a goal when G is a Var.
:- initialization(main).
item(a). item(b). item(c).
main :-
    G = item(X),
    findall(X, G, Xs),
    write(Xs), nl.
%------------------------------------------------------------- 367 catch_throw_2
% inner catch handles its own error; outer catch not triggered
:- initialization(main).
risky :- throw(inner_err).

main :-
    catch(
        catch(risky, inner_err, write(inner_caught)),
        outer_err,
        write(outer_caught)
    ), nl.
%------------------------------------------------------- 368 cut_ite_directive_2
% rung07_cut — !, differ/N, closed-world negation
% Expected output: differ(a,b)=yes  differ(a,a)=no
:- initialization(main).

differ(X, X) :- !, fail.
differ(_, _).

main :-
    ( differ(a, b) -> write(yes) ; write(no) ), nl,
    ( differ(a, a) -> write(yes) ; write(no) ), nl.
%----------------------------------------------- 369 findall_directive_replace_4
% rung34_bridge_setof/04_findall_var_userpred
% findall/3 where goal Var is bound to a call into a user-defined predicate.
:- initialization(main).
color(red).
color(green).
color(blue).
main :-
    G = color(C),
    findall(C, G, Cs),
    write(Cs), nl.
%----------------------------------------------- 370 ite_naf_directive_replace_1
% rung32_bridge_negation/01_var_goal_neg_succeeds — \+ Var where Var=fail.
% Bridge requirement: \+/1 with goal_e->kind == E_VAR must dispatch the
% deref'd Term through the bridge, not silently succeed (which would also
% incidentally produce 'succeeded' here but for the wrong reason — to
% disambiguate, test 02 covers the negative case where silent-success
% would produce the wrong outcome).
:- initialization(main).
main :-
    G = fail,
    ( \+ G -> write(succeeded) ; write(failed) ),
    nl.
%------------------------------------------------------------- 371 ite_replace_2
:- initialization(main).
main :-
    ( a \= b -> write(t1_differ) ; write(t1_eq) ), nl,
    ( a \= a -> write(t2_differ) ; write(t2_eq) ), nl,
    ( f(X1) \= f(a) -> write(t3_differ) ; write(t3_unify) ), nl,
    ( 1 \= 2 -> write(t4_differ) ; write(t4_eq) ), nl,
    ( X2 = a, X2 \= b -> write(t5_differ) ; write(t5_eq) ), nl,
    ( ( X3 \= a ) ; true ), ( var(X3) -> write(t6_unbound) ; write(t6_bound) ), nl,
    ( g(a,Y) \= g(b,c) -> write(t7_differ) ; write(t7_unify) ), nl,
    write(done), nl.
main :- write(main_failed), nl.
%----------------------------------------- 372 catch_functor_directive_replace_1
% rung31_bridge_catch/04_var_goal_userpred — goal-as-var dispatches user predicate.
% Bridge requirement: walker must recognize TT_COMPOUND with user-defined
% functor (not in builtin or arith table) and route to pl_box_choice + bb_broker
% for clause resolution rather than treating as builtin.
:- initialization(main).

double(X, Y) :- Y is X * 2.

main :-
    G = double(21, R),
    catch(G, _, fail),
    write(R), nl.
%---------------------------------------------------- 373 dcg_ite_list_replace_1
:- initialization(main).

digits([D|Ds]) --> digit(D), digits(Ds).
digits([]) --> [].
digit(D) --> [D], { D >= 0'0, D =< 0'9 }.

main :-
    atom_codes('123', Codes),
    ( phrase(digits(Ds), Codes) ->
        atom_codes(A, Ds), write(A)
    ; write(fail)
    ), nl.
%----------------------------------------------------------- 374 op_ite_format_2
:- op(700, xfx, ===).
:- op(200, xfy, likes).
:- op(500, fy, myp).
:- op(400, yf, myq).
:- initialization(main).
main :-
    ( current_op(P1, T1, (===)) -> format("~w ~w~n", [P1, T1]) ; write(none), nl ),
    ( current_op(P2, T2, likes) -> format("~w ~w~n", [P2, T2]) ; write(none), nl ),
    ( current_op(P3, T3, myp) -> format("~w ~w~n", [P3, T3]) ; write(none), nl ),
    ( current_op(P4, T4, myq) -> format("~w ~w~n", [P4, T4]) ; write(none), nl ),
    ( current_op(700, xfx, ===) -> write(yes) ; write(no) ), nl,
    ( current_op(_, _, nosuchop) -> write(yes) ; write(no) ), nl.
%------------------------------------------------------- 375 catch_ite_replace_1
:- initialization(main).
main :-
    open('/tmp/rung83_probe.txt', write, S0), close(S0),
    open('/tmp/rung83_probe.txt', read, R),
    G1 = write(R, hello),
    ( catch(G1, error(permission_error(Op,Ty,_), _), true)
      -> write(perm(Op,Ty)), nl
      ;  write(no_catch), nl ),
    close(R),
    G2 = nl(user_output),
    ( catch(G2, _, fail) -> write(nl1_ok) ; write(nl1_fail) ), nl,
    G3 = write(user_output, w2ok),
    ( catch(G3, _, fail) -> write(w2_after) ; write(w2_fail) ), nl.
main :- write(main_failed), nl.
%----------------------------------------------------------------- 376 cut_ite_1
:- initialization(main).
main :-
    ( acyclic_term(foo(a,b,c)) -> write(compound_yes) ; write(compound_no) ), nl,
    ( acyclic_term(_) -> write(var_yes) ; write(var_no) ), nl,
    ( acyclic_term([1,2,3,4,5]) -> write(list_yes) ; write(list_no) ), nl,
    ( acyclic_term(42) -> write(int_yes) ; write(int_no) ), nl,
    ( acyclic_term(hello) -> write(atom_yes) ; write(atom_no) ), nl,
    S = f(1), ( acyclic_term(g(S,S)) -> write(shared_yes) ; write(shared_no) ), nl,
    ( acyclic_term(a+b*c-d) -> write(oper_yes) ; write(oper_no) ), nl,
    make_cycle(X), acyc(X, R), write(cyclic(R)), nl,
    write(done), nl.
make_cycle(X) :- X = f(X).
acyc(T, yes) :- acyclic_term(T), !.
acyc(_, no).
%----------------------------------------------- 377 ite_naf_directive_replace_2
% rung32_bridge_negation/02_var_goal_neg_fails — \+ Var where Var=true.
% Discriminating test: pre-bridge default-arm silent-success would dispatch
% the inner goal as 'succeed' (the silent-success bug), so \+ would correctly
% return 'failed' here BUT for the wrong reason (the inner true also genuinely
% succeeds). The bridge mechanism must invoke the actual goal — verified by
% test 04 which uses a goal whose outcome distinguishes silent-success from
% real dispatch under negation.
%
% This test still has value: confirms the bridge does not regress when the
% inner goal genuinely succeeds (so \+ correctly fails).
:- initialization(main).
main :-
    G = true,
    ( \+ G -> write(succeeded) ; write(failed) ),
    nl.
%---------------------------------------------------- 378 dcg_ite_list_replace_2
% SCRIP DEMO2 -- Word Count (Prolog section)
% Idiom: DCG rules tokenise char list; phrase/3 counts words
:- initialization(main, main).

whites --> [].
whites --> [C], { char_type(C, space) }, whites.

word([C|Cs]) --> [C], { char_type(C, alpha) }, word(Cs).
word([])     --> [].

words([])     --> whites.
words([W|Ws]) --> whites, word(W), { W \= [] }, words(Ws).

count_words(Str, N) :-
    string_chars(Str, Chars),
    phrase(words(Ws), Chars, []),
    length(Ws, N).

main :-
    count_words("the quick brown fox jumps over the lazy dog", N),
    write(N), nl.
%---------------------------------------------------- 379 ite_writeq_directive_1
:- initialization(main).
main :-
    name(foo, C1),
    writeq(C1), nl,
    name(123, C2),
    writeq(C2), nl,
    name(-42, C3),
    writeq(C3), nl,
    name(X4, "hello"),
    writeq(X4), nl,
    name(X5, "123"),
    ( integer(X5) -> writeq(X5-int) ; writeq(X5-other) ), nl,
    name(X6, "-42"),
    ( integer(X6) -> writeq(X6-int) ; writeq(X6-other) ), nl,
    name(X7, "12abc"),
    ( atom(X7) -> writeq(X7-atom) ; writeq(X7-other) ), nl,
    name(X8, ""),
    writeq(X8), nl,
    ( name(bar, [0'b,0'a,0'r]) -> writeq(roundtrip_ok) ; writeq(roundtrip_fail) ), nl,
    write(done), nl,
    halt.
%------------------------------------------------------ 380 typetest_directive_1
:- initialization(main).
main :- a == a, a \== b, a @< b, b @> a, a @=< a, b @>= a, compare(O, 1, 2), atom(foo), number(3), integer(3), float(1.5), atomic(foo), var(_), nonvar(foo), compound(f(x)), callable(foo), write(O), nl, write(ok), nl.
%----------------------------------------------------- 381 assertz_clause_call_1
:- initialization(main).
main :- assertz((greet :- write(hello), nl)),
        ( clause(greet, Body) -> call(Body) ; write(noclause), nl ).
%--------------------------------------------------------- 382 between_ite_naf_1
:- initialization(main).
main :-
    ( member(X,[1,2,-3]), \+ X>0, write(found(X)), nl, fail ; true ),
    ( member(A,[1,2,3,4]), (A mod 2 =:= 0 -> true ; fail), write(even(A)), nl, fail ; true ),
    ( between(1,4,N), \+ (N =:= 2), write(n(N)), nl, fail ; true ).
%---------------------------------------------- 383 copy_term_ite_list_replace_1
% copy_term/2: fresh copy with new variables
:- initialization(main).
main :-
    copy_term(f(X,X), f(A,B)),
    ( A == B -> write(shared) ; write(not_shared) ), nl,
    X = original,
    ( A == original -> write(aliased) ; write(independent) ), nl,
    copy_term([H|T], Copy), numbervars(Copy, 0, _), write(Copy), nl.
%----------------------------------------------------- 384 findall_bagof_setof_1
:- initialization(main).
num(1).
num(2).
main :-
    ( setof(X, fail, L) -> write(L) ; write(no_setof) ), nl,
    ( bagof(X, (num(X), X > 5), B) -> write(B) ; write(no_bagof) ), nl,
    findall(Y, fail, F),
    write(F), nl,
    keysort([b-2, a-1, b-1, a-9], K),
    write(K), nl.
%----------------------------------------------------------- 385 ite_univ_list_1
% compound/1, atomic/1, is_list/1 style checks via =..
:- initialization(main).
main :-
    ( compound(foo(a)) -> write(yes) ; write(no) ), nl,
    ( compound(hello)  -> write(yes) ; write(no) ), nl,
    ( atomic(hello)    -> write(yes) ; write(no) ), nl,
    ( atomic(42)       -> write(yes) ; write(no) ), nl,
    ( atomic(foo(a))   -> write(yes) ; write(no) ), nl,
    T = p(1,p(2,p(3,nil))),
    T =.. [p, H | _], write(H), nl.
%------------------------------------------------------- 386 ite_writeq_format_1
:- initialization(main).
main :-
    write_to_atom(A1, foo(x,y)), writeq(A1), nl,
    format_to_atom(A2, "~w-~w", [a,b]), writeq(A2), nl,
    read_from_atom('foo(1,2).', T3), write(T3), nl,
    with_output_to(atom(A4), write(hi(9))), writeq(A4), nl,
    with_output_to(codes(A5), write(ab)), write(A5), nl,
    with_output_to(chars(A6), write(cd)), write(A6), nl,
    with_output_to(atom(A7), (write(a), write(b), write(c))), writeq(A7), nl,
    format(atom(A8), "~w!~w", [x,y]), writeq(A8), nl,
    ( with_output_to(atom(_), fail) -> write(unexpected) ; write(goal_failed) ), nl,
    write(done), nl.
%----------------------------------------------------- 387 assertz_retract_ite_1
:- initialization(main).
:- assertz(item(a)).
:- assertz(item(b)).
:- assertz(item(c)).

retract_loop :-
    retract(item(_)),
    retract_loop.
retract_loop.

main :-
    retract_loop,
    ( item(_) -> write(notempty) ; write(empty) ), nl.
%--------------------------------------------- 388 catch_ite_directive_replace_2
:- initialization(main).
t(N, G) :- ( catch(G, error(E,_), true) -> ( var(E) -> write(N=success) ; E = permission_error(Op,Ty,_), write(N=perm(Op,Ty)) ) ; write(N=failed) ), nl.
main :-
    open('/tmp/rung79_w.txt', write, W),
    t(getchar_on_write, get_char(W, _)),
    t(getcode_on_write, get_code(W, _)),
    t(peekchar_on_write, peek_char(W, _)),
    t(getbyte_on_write, get_byte(W, _)),
    t(ateof_on_write, at_end_of_stream(W)),
    close(W),
    open('/tmp/rung79_w.txt', read, R),
    t(putchar_on_read, put_char(R, x)),
    t(putcode_on_read, put_code(R, 0'y)),
    t(putbyte_on_read, put_byte(R, 65)),
    close(R),
    write(done), nl,
    halt.
%------------------------------------------- 389 catch_throw_directive_replace_1
% rung31_bridge_catch/05_var_goal_throw — goal-as-var throws; catch recovers.
% Bridge requirement: when the dispatched goal throws via the synth-EXPR path,
% the throw must propagate to catch/3's setjmp boundary, not be swallowed by
% the synthetic EXPR's lifetime cleanup.
%
% Note: catcher uses _ (anonymous) to test only that the throw propagates and
% recovery fires. Throw-payload unification (catcher = compound binding throw
% payload's args) is a separate capability — tested in PR-24 (rung_exception_iso).
:- initialization(main).

risky(X) :- X > 10, throw(too_big(X)).
risky(X) :- write(small(X)), nl.

main :-
    G = risky(99),
    catch(G, _, write(caught)),
    nl.
%----------------------------------------------------- 390 findall_bagof_setof_2
:- initialization(main).
main :-
    findall(X, (X=1;X=2;X=3), La), write(La), nl,
    ( findall(Y, (Y=4;Y=5), Lb) -> write(Lb) ; write(none) ), nl,
    ( bagof(Z, (Z=6;Z=7;Z=8), Lc) -> write(Lc) ; write(none) ), nl,
    ( setof(W, (W=3;W=1;W=2;W=1), Ld) -> write(Ld) ; write(none) ), nl.
%------------------------------------------------------- 391 termops_directive_1
:- initialization(main).
main :- functor(f(a,b), Nm, Ar), arg(1, f(a,b), A1), T =.. [g, 1, 2], copy_term(h(X,X,_), Cp), numbervars(Cp, 0, End), succ(3, S), plus(2, 3, P), sort([c,a,b,a], Srt), write(Nm), nl, write(Ar), nl, write(A1), nl, write(T), nl, write(Cp), nl, write(End), nl, write(S), nl, write(P), nl, write(Srt), nl.
%-------------------------------------------------------- 392 functor_ite_univ_1
% rung09_builtins — functor/3, arg/3, =../2, type tests
% Expected output: foo 2  b  [foo,a,b]  yes yes no no
:- initialization(main).

main :-
    functor(foo(a,b), Name, Arity),
    write(Name), write(' '), write(Arity), nl,

    arg(2, foo(a,b), Arg),
    write(Arg), nl,

    foo(a,b) =.. List,
    write(List), nl,

    ( atom(hello)   -> write(yes) ; write(no) ), nl,
    ( integer(42)   -> write(yes) ; write(no) ), nl,
    ( atom(42)      -> write(yes) ; write(no) ), nl,
    ( integer(hello)-> write(yes) ; write(no) ), nl.
%----------------------------------------------------------- 393 dcg_directive_2
:- initialization(main).
greeting --> [hello], [world].
main :- phrase(greeting, [hello, world]), write(ok), nl.
%----------------------------------------------------------- 394 cut_directive_2
:- initialization(main).
count(0) :- !.
count(N) :- N > 0, write(N), nl, N1 is N - 1, count(N1).
main :- count(3).
%----------------------------------------------------------- 395 cut_directive_3
:- initialization(main).
f(a) :- !.
f(b).
main :- ( f(X), write(X), nl, fail ) ; true.
%------------------------------------------------------ 396 lastcall_directive_1
:- initialization(main).
count(N, N) :- !.
count(I, N) :- I < N, J is I + 1, count(J, N).
main :- count(0, 100000), write(done), nl.
%----------------------------------------------------------- 397 cut_directive_4
:- initialization(main).
t(1).
t(2).
t(3).
f(X) :- t(X), X > 1, !.
main :- f(X), write(X), nl.
%---------------------------------------------------- 398 call_directive_1
:- initialization(main).
main :- G = write(hi), call(G), nl, call(write, there), nl.
%------------------------------------------------------- 399 findall_directive_5
:- initialization(main).
main :- findall(X, between(1, 4, X), L), write(L), nl.
%------------------------------------------------------- 400 cut_ite_directive_1
:- initialization(main).
t(1).
t(2).
t(3).
g :- t(X), !, X > 2.
main :- ( g -> write(yes) ; write(no) ), nl.
%--------------------------------------------------- 401 setof_bagof_directive_1
:- initialization(main).
q(c).
q(a).
q(b).
q(a).
main :- setof(X, q(X), S), write(S), nl, bagof(Y, q(Y), B), write(B), nl.
%--------------------------------------------- 402 catch_throw_directive_5
:- initialization(main).
main :- catch(throw(boom), E, (write(caught(E)), nl)), write(done), nl.
%--------------------------------------------- 403 catch_throw_directive_6
:- initialization(main).
p :- throw(oops).
main :- catch(p, E, (write(E), nl)), write(after), nl.
%----------------------------------------- 404 assertz_retract_directive_2
:- dynamic(f/1).
:- initialization(main).
main :- assertz(f(1)), assertz(f(2)), retract(f(1)), findall(X, f(X), L), write(L), nl.
%--------------------------------------------------- 405 abolish_pred_1
:- dynamic(k/1).
:- initialization(main).
main :- assertz(k(1)), abolish(k/1), catch((k(_), write(found)), error(existence_error(procedure,_),_), write(gone)), nl.
%-------------------------------------------------- 406 asserta_order_1
:- dynamic(g/1).
:- initialization(main).
main :- assertz(g(1)), assertz(g(2)), asserta(g(0)), findall(X, g(X), L), write(L), nl.
%------------------------------------------------- 407 clause_reflect_1
:- dynamic(likes/1).
:- initialization(main).
main :- assertz(likes(wine)), assertz(likes(beer)), findall(H, clause(likes(H), true), L), write(L), nl.
%---------------------------------------------- 408 retract_backtrack_1
:- dynamic(h/1).
:- initialization(main).
main :- assertz(h(1)), assertz(h(2)), assertz(h(3)), (retract(h(_)), fail ; true), findall(X, h(X), L), write(L), nl.
%---------------------------------------------------------------------- 409 init_directive_1
:- initialization(main).
main :- write(initialized), nl.
%----------------------------------------------------------------------- 410 write_atom_1
:- initialization(main).
main :- write(some_atom), nl.
%---------------------------------------------------------------------------------- 411 nl_1
:- initialization(main).
main :- write(a), nl, write(b), nl.
%--------------------------------------------------------------- 412 zero_arity_dispatch_1
:- initialization(main).
main(x) :- write(wrong), nl.
main :- write(right), nl.
%---------------------------------------------------------------------- 413 fact_zero_arity_1
:- initialization(main).
ready.
main :- ready, write(yes), nl.
%---------------------------------------------------------------------- 414 fact_one_arg_atom_1
:- initialization(main).
color(red).
main :- color(X), write(X), nl.
%---------------------------------------------------------------------- 415 fact_two_args_1
:- initialization(main).
edge(a, b).
main :- edge(X, Y), write(X-Y), nl.
%---------------------------------------------------------------------- 416 fact_anonymous_var_arg_1
:- initialization(main).
point(1, 2, 3).
main :- point(_, Y, _), write(Y), nl.
%---------------------------------------------------------------------- 417 fact_nested_functor_arg_1
:- initialization(main).
wrap(point(1, 2)).
main :- wrap(point(X, Y)), write(X+Y), nl.
%---------------------------------------------------------------------- 418 fact_integer_arg_1
:- initialization(main).
count(42).
main :- count(N), write(N), nl.
%---------------------------------------------------------------------- 419 fact_string_arg_1
:- initialization(main).
label("hello").
main :- label(S), write(S), nl.
%---------------------------------------------------------------------- 420 rule_single_goal_body_1
:- initialization(main).
greet :- write(hi).
main :- greet, nl.
%---------------------------------------------------------------------- 421 rule_head_var_passthrough_1
:- initialization(main).
show(X) :- write(X).
main :- show(passed), nl.
%---------------------------------------------------------------------- 422 rule_body_two_goals_1
:- initialization(main).
both :- write(a), write(b).
main :- both, nl.
%---------------------------------------------------------------------- 423 rule_head_var_repeated_1
:- initialization(main).
same(X, X) :- write(matched).
main :- same(a, a), nl.
%---------------------------------------------------------------------- 424 rule_body_calls_fact_1
:- initialization(main).
color(red).
likes_color :- color(X), write(X).
main :- likes_color, nl.
%---------------------------------------------------------------------- 425 unify_var_binds_atom_1
:- initialization(main).
main :- X = bound, write(X), nl.
%---------------------------------------------------------------------- 426 unify_var_binds_compound_1
:- initialization(main).
main :- X = pair(a, b), write(X), nl.
%---------------------------------------------------------------------- 427 unify_atom_atom_same_1
:- initialization(main).
main :- (a = a -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 428 unify_atom_atom_differ_1
:- initialization(main).
main :- (a = b -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 429 unify_compound_arity_differ_1
:- initialization(main).
main :- (f(a) = f(a, b) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 430 unify_two_vars_alias_1
:- initialization(main).
main :- X = Y, Y = val, write(X), nl.
%---------------------------------------------------------------------- 431 unify_occurs_check_1
:- initialization(main).
main :- (unify_with_occurs_check(X, f(X)) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 432 clause_choice_three_clauses_enumerate_1
:- initialization(main).
q(1).
q(2).
q(3).
main :- q(X), write(X), fail.
main :- nl.
%---------------------------------------------------------------------- 433 clause_choice_first_solution_only_1
:- initialization(main).
r(1).
r(2).
r(3).
main :- r(X), write(X), nl.
%---------------------------------------------------------------------- 434 clause_choice_no_clause_fails_1
:- initialization(main).
s(1).
s(2).
main :- (s(99) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 435 clause_choice_redo_after_fail_1
:- initialization(main).
main :- between(1, 3, X), write(X), fail.
main :- nl.
%---------------------------------------------------------------------- 436 clause_choice_two_clauses_distinct_heads_1
:- initialization(main).
sound(dog, woof).
sound(cat, meow).
main :- sound(cat, S), write(S), nl.
%---------------------------------------------------------------------- 437 disjunction_both_branches_1
:- initialization(main).
main :- (write(left) ; write(right)), fail.
main :- nl.
%---------------------------------------------------------------------- 438 disjunction_left_only_1
:- initialization(main).
main :- (write(left) ; write(right)), nl.
%---------------------------------------------------------------------- 439 disjunction_right_only_1
:- initialization(main).
main :- (fail ; write(right)), nl.
%---------------------------------------------------------------------- 440 disjunction_nested_disjunction_1
:- initialization(main).
main :- (fail ; (fail ; write(inner))), nl.
%---------------------------------------------------------------------- 441 disjunction_in_rule_body_1
:- initialization(main).
classify(X) :- write(before), (X > 0 ; X < 0), write(after).
main :- classify(5), nl.
%---------------------------------------------------------------------- 442 cut_in_disjunction_1
:- initialization(main).
p(1).
p(2).
q(X) :- p(X), (X =:= 1, ! ; true), write(X).
main :- q(_), nl, fail.
main :- write(done), nl.
%---------------------------------------------------------------------- 443 cut_last_goal_1
:- initialization(main).
p(1).
p(2).
q(X) :- p(X), write(X), !.
main :- q(_), nl, fail.
main :- write(done), nl.
%---------------------------------------------------------------------- 444 cut_first_goal_1
:- initialization(main).
q :- !, write(first).
q :- write(second).
main :- q, nl.
%---------------------------------------------------------------------- 445 ite_condition_fails_1
:- initialization(main).
main :- (fail -> write(then) ; write(else)), nl.
%---------------------------------------------------------------------- 446 ite_bare_if_then_no_else_1
:- initialization(main).
main :- (1 =:= 1 -> write(yes)), nl.
%---------------------------------------------------------------------- 447 ite_nested_ite_1
:- initialization(main).
main :- (1 =:= 1 -> (2 =:= 3 -> write(a) ; write(b)) ; write(c)), nl.
%---------------------------------------------------------------------- 448 neg_succeeds_on_failing_goal_1
:- initialization(main).
main :- (\+ fail -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 449 neg_fails_on_succeeding_goal_1
:- initialization(main).
main :- (\+ true -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 450 neg_negation_of_unification_1
:- initialization(main).
main :- (\+ (a = b) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 451 neg_double_negation_1
:- initialization(main).
main :- (\+ \+ (X = 1) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 452 ofi_once_first_solution_1
:- initialization(main).
p(1).
p(2).
main :- once(p(X)), write(X), nl.
%---------------------------------------------------------------------- 453 ofi_once_of_failing_goal_1
:- initialization(main).
main :- (once(fail) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 454 ofi_forall_all_hold_1
:- initialization(main).
q(1).
q(2).
q(3).
main :- (forall(q(X), X > 0) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 455 ofi_forall_counterexample_1
:- initialization(main).
r(1).
r(2).
r(-1).
main :- (forall(r(X), X > 0) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 456 ofi_ignore_succeeds_1
:- initialization(main).
main :- ignore(X = bound), write(X), nl.
%---------------------------------------------------------------------- 457 ofi_ignore_of_failing_goal_1
:- initialization(main).
main :- (ignore(fail) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 458 dg_plain_directive_runs_1
:- write(ran), nl.
%---------------------------------------------------------------------- 459 dg_failing_directive_warns_1
:- fail.
:- write(after), nl.
%---------------------------------------------------------------------- 460 dg_directive_before_initialization_1
:- write(immediate), nl.
:- initialization(main).
main :- write(deferred), nl.
%---------------------------------------------------------------------- 461 arith_eval_add_1
:- initialization(main).
main :- X is 2 + 3, write(X), nl.
%---------------------------------------------------------------------- 462 arith_eval_sub_1
:- initialization(main).
main :- X is 5 - 3, write(X), nl.
%---------------------------------------------------------------------- 463 arith_eval_mul_1
:- initialization(main).
main :- X is 4 * 3, write(X), nl.
%---------------------------------------------------------------------- 464 arith_eval_int_div_1
:- initialization(main).
main :- X is 7 // 2, write(X), nl.
%---------------------------------------------------------------------- 465 arith_eval_float_div_1
:- initialization(main).
main :- X is 7 / 2, write(X), nl.
%---------------------------------------------------------------------- 466 arith_eval_mod_1
:- initialization(main).
main :- X is -7 mod 3, write(X), nl.
%---------------------------------------------------------------------- 467 arith_eval_rem_1
:- initialization(main).
main :- X is -7 rem 3, write(X), nl.
%---------------------------------------------------------------------- 468 arith_eval_negation_1
:- initialization(main).
main :- N = 5, X is -N, write(X), nl.
%---------------------------------------------------------------------- 469 arith_eval_abs_1
:- initialization(main).
main :- X is abs(-5), write(X), nl.
%---------------------------------------------------------------------- 470 arith_eval_min_max_1
:- initialization(main).
main :- X is min(3, 7), Y is max(3, 7), write(X-Y), nl.
%---------------------------------------------------------------------- 471 arith_eval_power_1
:- initialization(main).
main :- X is 2 ** 10, write(X), nl.
%---------------------------------------------------------------------- 472 arith_eval_nested_expression_1
:- initialization(main).
main :- X is (2 + 3) * (4 - 1), write(X), nl.
%---------------------------------------------------------------------- 473 arith_eval_zero_divisor_error_1
:- initialization(main).
main :- catch(( _ is 1 / 0, write(nocaught) ), error(evaluation_error(zero_divisor), _), write(caught)), nl.
%---------------------------------------------------------------------- 474 arith_compare_lt_1
:- initialization(main).
main :- (2 < 3 -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 475 arith_compare_gt_1
:- initialization(main).
main :- (3 > 2 -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 476 arith_compare_le_1
:- initialization(main).
main :- (2 =< 2 -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 477 arith_compare_ge_1
:- initialization(main).
main :- (2 >= 2 -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 478 arith_compare_eq_arith_1
:- initialization(main).
main :- (2 + 1 =:= 3 -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 479 arith_compare_ne_arith_1
:- initialization(main).
main :- (2 =\= 3 -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 480 arith_compare_mixed_int_float_1
:- initialization(main).
main :- (2 =:= 2.0 -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 481 term_compare_standard_order_lt_1
:- initialization(main).
main :- (1 @< a -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 482 term_compare_compare_3_1
:- initialization(main).
main :- compare(Order, 1, 2), write(Order), nl.
%---------------------------------------------------------------------- 483 term_compare_term_eq_1
:- initialization(main).
main :- (foo(1, 2) == foo(1, 2) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 484 term_compare_term_ne_1
:- initialization(main).
main :- (foo(1, 2) \== foo(1, 3) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 485 term_compare_sort_2_1
:- initialization(main).
main :- sort([3, 1, 2, 1], L), write(L), nl.
%---------------------------------------------------------------------- 486 term_compare_msort_2_1
:- initialization(main).
main :- msort([3, 1, 2, 1], L), write(L), nl.
%---------------------------------------------------------------------- 487 term_compare_keysort_2_1
:- initialization(main).
main :- keysort([b-2, a-1, a-3], L), write(L), nl.
%---------------------------------------------------------------------- 488 type_test_var_1
:- initialization(main).
main :- (var(_) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 489 type_test_nonvar_1
:- initialization(main).
main :- (nonvar(bound) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 490 type_test_atom_1
:- initialization(main).
main :- (atom(foo) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 491 type_test_number_1
:- initialization(main).
main :- (number(42) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 492 type_test_integer_1
:- initialization(main).
main :- (integer(42) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 493 type_test_float_1
:- initialization(main).
main :- (float(3.14) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 494 type_test_atomic_1
:- initialization(main).
main :- (atomic(foo) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 495 type_test_compound_1
:- initialization(main).
main :- (compound(foo(1, 2)) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 496 type_test_callable_1
:- initialization(main).
main :- (callable(foo) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 497 type_test_is_list_1
:- initialization(main).
main :- (is_list([1, 2, 3]) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 498 type_test_ground_1
:- initialization(main).
main :- (ground(foo(1, bar(2))) -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 499 term_construction_functor_decompose_1
:- initialization(main).
main :- functor(foo(1, 2, 3), Name, Arity), write(Name/Arity), nl.
%---------------------------------------------------------------------- 500 term_construction_functor_construct_1
:- initialization(main).
main :- functor(T, foo, 2), T = foo(a, b), write(T), nl.
%---------------------------------------------------------------------- 501 term_construction_arg_nth_1
:- initialization(main).
main :- arg(2, foo(a, b, c), X), write(X), nl.
%---------------------------------------------------------------------- 502 term_construction_univ_decompose_1
:- initialization(main).
main :- foo(1, 2) =.. L, write(L), nl.
%---------------------------------------------------------------------- 503 term_construction_univ_construct_1
:- initialization(main).
main :- T =.. [foo, 1, 2], write(T), nl.
%---------------------------------------------------------------------- 504 term_construction_copy_term_1
:- initialization(main).
main :- copy_term(foo(X, X), foo(A, B)), (A == B -> write(yes) ; write(no)), nl.
%---------------------------------------------------------------------- 505 atom_ops_atom_length_1
:- initialization(main).
main :- atom_length(hello, L), write(L), nl.
%---------------------------------------------------------------------- 506 atom_ops_atom_concat_1
:- initialization(main).
main :- atom_concat(foo, bar, X), write(X), nl.
%---------------------------------------------------------------------- 507 atom_ops_atom_chars_1
:- initialization(main).
main :- atom_chars(abc, L), write(L), nl.
%---------------------------------------------------------------------- 508 atom_ops_atom_codes_1
:- initialization(main).
main :- atom_codes(abc, L), write(L), nl.
%---------------------------------------------------------------------- 509 atom_ops_char_code_1
:- initialization(main).
main :- char_code(a, C), write(C), nl.
%---------------------------------------------------------------------- 510 atom_ops_number_codes_1
:- initialization(main).
main :- number_codes(42, L), write(L), nl.
%---------------------------------------------------------------------- 511 atom_ops_atom_number_1
:- initialization(main).
main :- atom_number('42', N), write(N), nl.
%---------------------------------------------------------------------- 512 atom_ops_atom_string_1
:- initialization(main).
main :- atom_string(foo, S), write(S), nl.
%------------------------------------------------------ 513 write_family_write_1
:- initialization(main).
main :- write(hello), nl.
%----------------------------------------------------- 514 write_family_writeq_1
:- initialization(main).
main :- writeq('needs quotes'), nl.
%------------------------------------------------------ 515 write_family_print_1
:- initialization(main).
main :- print('needs quotes'), nl.
%-------------------------------------------- 516 write_family_write_canonical_1
:- initialization(main).
main :- write_canonical(1+2), nl.
%---------------------------------------------------- 517 write_family_writeln_1
:- initialization(main).
main :- writeln(hello).
%--------------------------------------------------------- 518 write_family_nl_1
:- initialization(main).
main :- write(a), nl, write(b), nl.
%-------------------------------------------------------- 519 write_family_tab_1
:- initialization(main).
main :- write(a), tab(3), write(b), nl.
%--------------------------------------------------- 520 write_family_put_char_1
:- initialization(main).
main :- put_char(x), nl.
%--------------------------------------------------- 521 write_family_format_2_1
:- initialization(main).
main :- format("~w-~w~n", [a,b]).
%----------------------------------------- 522 write_family_format_3_atom_sink_1
:- initialization(main).
main :- format(atom(A), "~w", [hi]), write(A), nl.
%---------------------------------------- 523 write_family_format_3_codes_sink_1
:- initialization(main).
main :- format(codes(C), "~w", [hi]), write(C), nl.
%------------------------------------------------------ 524 streams_open_write_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_open_write.txt', write, S), write(S, 'ok.'), close(S), open('/tmp/scrip_rung06_sw_open_write.txt', read, R2), read(R2, T), close(R2), write(T), nl.
%------------------------------------------------------- 525 streams_open_read_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_open_read.txt', write, S0), write(S0, 'data(42).'), close(S0), open('/tmp/scrip_rung06_sw_open_read.txt', read, R), read(R, T), close(R), write(T), nl.
%----------------------------------------------------------- 526 streams_close_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_close_a.txt', write, A), open('/tmp/scrip_rung06_sw_close_b.txt', write, B), write(A, first), close(A), write(B, second), close(B), write(closed), nl.
%-------------------------------------------------- 527 streams_current_output_1
:- initialization(main).
main :- current_output(S), write(S, probe), nl(S), write(ok), nl.
%--------------------------------------------------- 528 streams_current_input_1
:- initialization(main).
main :- current_input(S0), open('/tmp/scrip_rung06_sw_current_input.txt', write, W), write(W, 'val(7).'), close(W), open('/tmp/scrip_rung06_sw_current_input.txt', read, R), set_input(R), current_input(S1), (S1 == R -> write(matched) ; write(nomatch)), nl, read(T), close(R), set_input(S0), write(T), nl.
%------------------------------------------------------ 529 streams_set_output_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_set_output.txt', write, S), set_output(S), write('redirected.'), nl, set_output(user_output), write(back), nl, close(S), open('/tmp/scrip_rung06_sw_set_output.txt', read, R), read(R, T), close(R), write(T), nl.
%------------------------------------------------------- 530 streams_set_input_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_set_input.txt', write, W), write(W, 'sentinel(9).'), close(W), open('/tmp/scrip_rung06_sw_set_input.txt', read, R), set_input(R), read(T), close(R), set_input(user_input), write(T), nl.
%---------------------------------------------------- 531 streams_stream_alias_1
:- initialization(main).
main :- write(user_output, visible), nl(user_output), write(user_error, hidden), nl(user_error), write(done), nl.
%----------------------------------------------------- 532 streams_stream_term_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_stream_term.txt', write, S), Terms = [S], [S2] = Terms, write(S2, 'passed.'), close(S2), open('/tmp/scrip_rung06_sw_stream_term.txt', read, R), read(R, T), close(R), write(T), nl.
%----------------------------------------- 533 streams_read_term_empty_options_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_read_term_opts.txt', write, W), write(W, 'opts(a,b).'), close(W), open('/tmp/scrip_rung06_sw_read_term_opts.txt', read, R), read_term(R, T, []), close(R), write(T), nl.
%-------------------------------------------------------- 534 streams_get_char_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_get_char.txt', write, W), write(W, ab), close(W), open('/tmp/scrip_rung06_sw_get_char.txt', read, R), get_char(R, C1), get_char(R, C2), get_char(R, C3), close(R), write(C1), write(C2), write(C3), nl.
%------------------------------------------------------- 535 streams_peek_char_1
:- initialization(main).
main :- open('/tmp/scrip_rung06_sw_peek_char.txt', write, W), write(W, xy), close(W), open('/tmp/scrip_rung06_sw_peek_char.txt', read, R), peek_char(R, P1), peek_char(R, P2), get_char(R, C1), close(R), write(P1), write(P2), write(C1), nl.
%---------------------------------------------------- 536 declarations_dynamic_1
:- dynamic(foo/1).
:- initialization(main).
main :- (foo(x) -> write(yes) ; write(no)), nl.
%---------------------------------------------- 537 declarations_discontiguous_1
:- discontiguous(bar/1).
bar(1).
other(x).
bar(2).
:- initialization(main).
main :- bar(1), bar(2), write(ok), nl.
%-------------------------------------------------- 538 declarations_multifile_1
:- multifile(baz/1).
baz(1).
baz(2).
:- initialization(main).
main :- findall(N, baz(N), L), write(L), nl.
%------------------------------------------------------- 539 declarations_op_3_1
:- op(700, xfx, ===>).
implies(X ===> Y) :- write(X), write(then), write(Y), nl.
:- initialization(main).
main :- implies(rain ===> wet).
%---------------------------------------------- 540 declarations_ensure_loaded_1
:- ensure_loaded(library(lists)).
:- initialization(main).
main :- write(loaded), nl.
%------------------------------------------------- 541 declarations_use_module_1
:- use_module(library(lists)).
:- initialization(main).
main :- write(loaded), nl.
%------------------------------------------------ 542 between_enumerates_range_1
:- initialization(main).
main :- findall(X, between(1,5,X), L), write(L), nl.
%---------------------------------------------- 543 between_single_value_range_1
:- initialization(main).
main :- findall(X, between(3,3,X), L), write(L), nl.
%----------------------------------------------- 544 between_empty_range_fails_1
:- initialization(main).
main :- (between(5,3,_) -> write(yes) ; write(no)), nl.
%------------------------------------------ 545 between_bound_third_arg_checks_1
:- initialization(main).
main :- (between(1,10,7) -> write(yes) ; write(no)), nl.
%-------------------------------------------- 546 between_backtrack_all_values_1
:- initialization(main).
main :- (between(1,4,X), write(X), fail ; true), nl.
%-------------------------------------------- 547 sub_atom_fixed_before_length_1
:- initialization(main).
main :- sub_atom(hello, 0, 3, _, S), write(S), nl.
%-------------------------------------------------- 548 sub_atom_enumerate_all_1
:- initialization(main).
main :- findall(S, sub_atom(ab, _, _, _, S), L), write(L), nl.
%------------------------------------------------- 549 sub_atom_find_substring_1
:- initialization(main).
main :- (sub_atom(hello, B, _, 0, lo) -> write(B) ; write(notfound)), nl.
%--------------------------------------------------------- 550 sub_atom_prefix_1
:- initialization(main).
main :- sub_atom(hello, 0, 2, _, P), write(P), nl.
%--------------------------------------------------------- 551 sub_atom_suffix_1
:- initialization(main).
main :- sub_atom(hello, _, 2, 0, S), write(S), nl.
%------------------------------------------------ 552 sub_atom_empty_substring_1
:- initialization(main).
main :- sub_atom(hello, 2, 0, _, S), (S == '' -> write(empty) ; write(S)), nl.
%-------------------------------------------------- 553 repeat_repeat_with_cut_1
:- initialization(main).
main :- repeat, write(x), !, nl.
%---------------------------------------- 554 repeat_repeat_bounded_by_counter_1
:- dynamic(seen/1).
:- initialization(main).
main :- repeat, findall(X, seen(X), L), length(L, N), (N >= 3 -> ! ; (assertz(seen(N)), fail)), write(N), nl.
%----------------------------------------------------- 555 findall_collect_all_1
color(red).
color(green).
color(blue).
:- initialization(main).
main :- findall(C, color(C), L), write(L), nl.
%---------------------------------------------------- 556 findall_empty_result_1
:- initialization(main).
main :- findall(X, fail, L), write(L), nl.
%-------------------------------------------- 557 findall_template_is_compound_1
:- initialization(main).
main :- findall(f(X,X), between(1,3,X), L), write(L), nl.
%-------------------------------------------------- 558 findall_nested_findall_1
:- initialization(main).
main :- findall(L1, (between(1,2,X), findall(Y,between(1,X,Y),L1)), LL), write(LL), nl.
%---------------------------------------- 559 findall_findall_over_disjunction_1
:- initialization(main).
main :- findall(X, (X=1 ; X=2 ; X=3), L), write(L), nl.
%------------------------------------------------- 560 bagof_setof_bagof_basic_1
likes(mary,wine).
likes(mary,cheese).
:- initialization(main).
main :- bagof(X, likes(mary,X), L), write(L), nl.
%---------------------------------------- 561 bagof_setof_bagof_fails_on_empty_1
likes(mary,wine).
:- initialization(main).
main :- (bagof(X, likes(nobody,X), L) -> write(L) ; write(fails)), nl.
%------------------------------------------ 562 bagof_setof_setof_sorts_dedups_1
item(banana).
item(apple).
item(banana).
:- initialization(main).
main :- setof(X, item(X), L), write(L), nl.
%------------------------------------------- 563 bagof_setof_caret_existential_1
likes(mary,wine).
likes(john,wine).
likes(mary,cheese).
:- initialization(main).
main :- setof(X, Y^likes(Y,X), L), write(L), nl.
%-------------------------------------- 564 bagof_setof_free_variable_grouping_1
likes(mary,wine).
likes(mary,cheese).
likes(john,beer).
:- initialization(main).
main :- findall(Y-L, bagof(X,likes(Y,X),L), Groups), write(Groups), nl.
%----------------------------- 565 catch_throw_catcher_does_not_unify_rethrows_1
:- initialization(main).
main :- catch(catch(throw(foo), bar, write(inner)), foo, write(outer)), nl.
%------------------------------------ 566 catch_throw_catch_of_succeeding_goal_1
:- initialization(main).
main :- catch(write(normal), _, write(recovery)), nl.
%------------------------------------------------ 567 catch_throw_nested_catch_1
:- initialization(main).
main :- catch(catch(throw(x), x, write(caught_inner)), x, write(caught_outer)), nl.
%-------------------------------------------- 568 catch_throw_ball_is_compound_1
:- initialization(main).
main :- catch(throw(err(bad_input, 42)), err(Reason,Code), (write(Reason), write(Code))), nl.
%------------------------------------- 569 catch_throw_error_term_from_builtin_1
:- initialization(main).
main :- catch(( X is 1/0, write(X) ), error(evaluation_error(zero_divisor),_), write(caught)), nl.
