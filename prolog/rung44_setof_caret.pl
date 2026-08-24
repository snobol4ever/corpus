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
