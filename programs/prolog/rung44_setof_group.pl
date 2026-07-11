age(peter, 7).
age(ann, 11).
age(pat, 8).
age(tom, 5).
age(sue, 11).
main :-
    bagof(Child, age(Child, Age), Kids),
    write(Age), write(-), write(Kids), nl,
    fail.
main :- write(done), nl.
