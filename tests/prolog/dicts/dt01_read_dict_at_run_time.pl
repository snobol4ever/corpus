:- initialization(main, main).
main :-
    open_string("#{created:1.5,name:'f.txt'}. _{}. tag{bb:1,aa:2}. ", S),
    read(S, T1), writeq(T1), nl, V1 = T1.name, writeq(V1), nl,
    read(S, T2), term_variables(T2, Vs2), maplist(=(anon), Vs2), writeq(T2), nl, ( is_dict(T2) -> writeln(empty_is_dict) ; writeln(empty_not_dict) ),
    read(S, T3), writeq(T3), nl,
    ( T3 = tag{aa:2, bb:1} -> writeln(unifies_with_literal) ; writeln(no_unify) ),
    dict_pairs(T3, Tag, Pairs), writeq(Tag-Pairs), nl,
    term_to_atom(T4, 'p{z:1, a:"s"}'), writeq(T4), nl, V4 = T4.a, writeq(V4), nl,
    catch(V5 = T4.nokey, error(F, _), (print(F), nl)), ( var(V5) -> true ; true ),
    read_term_from_atom('_{k:v}', T6, []), ( is_dict(T6, Tg) -> ( var(Tg) -> writeln(anon_tag_var) ; writeln(anon_tag_bound) ) ; writeln(not_dict) ).
