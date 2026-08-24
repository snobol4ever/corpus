:- initialization(main).
t(L,U,X) :- ( between(L,U,X) -> write(yes) ; write(no) ), nl.
main :- t(1,5,3), t(1,5,1), t(1,5,5), t(1,5,0), t(1,5,6), t(5,1,3), t(3,3,3).
