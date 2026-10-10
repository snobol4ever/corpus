assert( mymap(key1,value1) ).
assert( mymap(key2,value1) ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this block is the page's session goals assert(mymap(key1,value1)) and assert(mymap(key2,value1)) pasted as clauses of assert/1, which shadow the builtin (calling assert/1 would match them and assert nothing); the driver replays them in source order through clause/2 as assertz/1 goals (assert/1's ISO name) and then types the page's iteration ?- forall(mymap(Key,Value), writeln([Key,Value])) of associative-array-iteration-2, which cannot be included (its query runs at include time before the replay, measured: Unknown procedure: mymap/2, and its echoed answers are a syntax error), so the map the page builds prints.
:- initialization((forall(clause(assert(T), true), assertz(T)), forall(mymap(Key, Value), writeln([Key, Value])))).
