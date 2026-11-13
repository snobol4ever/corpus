:- initialization(main).
main :- Nil = black('',_,_,''), insert(Nil, 1, a, Nil, T1), write(t1(T1)), nl, insert(T1, 2, b, Nil, T2), write(t2(T2)), nl.
insert(Tree0,Key,Val,Nil,Tree) :-
    insert2(Tree0,Key,Val,Nil,TreeI,_),
    fix_root(TreeI,Tree).
insert2(black('',_,_,''), K, V, Nil, T, Status) =>
    T = red(Nil,K,V,Nil),
    Status = not_done.
insert2(black(L,K0,V0,R), K, V, Nil, NT, Flag) =>
    (   K @< K0
    ->  insert2(L, K, V, Nil, IL, Flag0),
        fix_left(Flag0, black(IL,K0,V0,R), NT, Flag)
    ;   K == K0
    ->  NT = black(L,K0,V,R),
        Flag = done
    ;   insert2(R, K, V, Nil, IR, Flag0),
        fix_right(Flag0, black(L,K0,V0,IR), NT, Flag)
    ).
fix_root(black(L,K,V,R), Root) => Root = black(L,K,V,R).
fix_root(red(L,K,V,R), Root) => Root = black(L,K,V,R).
fix_left(done,T0,T,Done) => T = T0, Done = done.
fix_right(done,T0,T,Done) => T0 = T, Done = done.
fix_right(not_done,Tmp,Final,Done) =>
    fix_right(Tmp,Final,Done).
fix_right(black(red(Ep,KD,VD,De),KC,VC,red(red(Ga,KB,VB,Be),KA,VA,Al)),
          red(black(Ep,KD,VD,De),KC,VC,black(red(Ga,KB,VB,Be),KA,VA,Al)),
          not_done) :- !.
fix_right(T,T,done).
