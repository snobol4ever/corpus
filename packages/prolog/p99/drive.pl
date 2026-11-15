% drive.pl -- the driver of the ProP99 suite (ours; Werner Hett's solutions are read in place and never changed).
% Consulted AFTER one solution file. A solution defines its predicate and runs nothing, and the problem page (index.html of the
% collection) states an example query for 41 of the problems. The table below is those queries: the page's text, the same goal as a
% term (written without the operators p47 declares, so this file reads whatever was loaded before it), and the variables it names.
% The driver runs every stated example whose predicate the load defines, in the page's order, and prints the query, then the first
% answer as the toplevel would (each variable and its value), or yes, no, or the formal of the error it raised. A solution that loads
% an earlier one (p10 loads p09) answers that one's example too. It prints nothing when the load defines none: such a file is no test.
% NOT IN THE TABLE: the three random examples (p23, p24, p25: no two runs agree) and the two written with is over a user function
% (G is gcd(36,63), Phi is totient_phi(10): arithmetic_function, which the oracle no longer has).

p99x(p01, my_last/2, 'my_last(X,[a,b,c,d])', my_last(X,[a,b,c,d]), ['X'=X]).
p99x(p03, element_at/3, 'element_at(X,[a,b,c,d,e],3)', element_at(X,[a,b,c,d,e],3), ['X'=X]).
p99x(p07, my_flatten/2, 'my_flatten([a, [b, [c, d], e]], X)', my_flatten([a, [b, [c, d], e]], X), ['X'=X]).
p99x(p08, compress/2, 'compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X)', compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X), ['X'=X]).
p99x(p09, pack/2, 'pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X)', pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X), ['X'=X]).
p99x(p10, encode/2, 'encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X)', encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X), ['X'=X]).
p99x(p11, encode_modified/2, 'encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X)', encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X), ['X'=X]).
p99x(p13, encode_direct/2, 'encode_direct([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X)', encode_direct([a,a,a,a,b,c,c,a,a,d,e,e,e,e],X), ['X'=X]).
p99x(p14, dupli/2, 'dupli([a,b,c,c,d],X)', dupli([a,b,c,c,d],X), ['X'=X]).
p99x(p15, dupli/3, 'dupli([a,b,c],3,X)', dupli([a,b,c],3,X), ['X'=X]).
p99x(p15, dupli/3, 'dupli(X,3,Y)', dupli(X,3,Y), ['X'=X,'Y'=Y]).
p99x(p16, drop/3, 'drop([a,b,c,d,e,f,g,h,i,k],3,X)', drop([a,b,c,d,e,f,g,h,i,k],3,X), ['X'=X]).
p99x(p17, split/4, 'split([a,b,c,d,e,f,g,h,i,k],3,L1,L2)', split([a,b,c,d,e,f,g,h,i,k],3,L1,L2), ['L1'=L1,'L2'=L2]).
p99x(p18, slice/4, 'slice([a,b,c,d,e,f,g,h,i,k],3,7,L)', slice([a,b,c,d,e,f,g,h,i,k],3,7,L), ['L'=L]).
p99x(p19, rotate/3, 'rotate([a,b,c,d,e,f,g,h],3,X)', rotate([a,b,c,d,e,f,g,h],3,X), ['X'=X]).
p99x(p19, rotate/3, 'rotate([a,b,c,d,e,f,g,h],-2,X)', rotate([a,b,c,d,e,f,g,h],-2,X), ['X'=X]).
p99x(p20, remove_at/4, 'remove_at(X,[a,b,c,d],2,R)', remove_at(X,[a,b,c,d],2,R), ['X'=X,'R'=R]).
p99x(p21, insert_at/4, 'insert_at(alfa,[a,b,c,d],2,L)', insert_at(alfa,[a,b,c,d],2,L), ['L'=L]).
p99x(p22, range/3, 'range(4,9,L)', range(4,9,L), ['L'=L]).
p99x(p26, combination/3, 'combination(3,[a,b,c,d,e,f],L)', combination(3,[a,b,c,d,e,f],L), ['L'=L]).
p99x(p27, group3/4, 'group3([aldo,beat,carla,david,evi,flip,gary,hugo,ida],G1,G2,G3)', group3([aldo,beat,carla,david,evi,flip,gary,hugo,ida],G1,G2,G3), ['G1'=G1,'G2'=G2,'G3'=G3]).
p99x(p27, group/3, 'group([aldo,beat,carla,david,evi,flip,gary,hugo,ida],[2,2,5],Gs)', group([aldo,beat,carla,david,evi,flip,gary,hugo,ida],[2,2,5],Gs), ['Gs'=Gs]).
p99x(p28, lsort/2, 'lsort([[a,b,c],[d,e],[f,g,h],[d,e],[i,j,k,l],[m,n],[o]],L)', lsort([[a,b,c],[d,e],[f,g,h],[d,e],[i,j,k,l],[m,n],[o]],L), ['L'=L]).
p99x(p28, lfsort/2, 'lfsort([[a,b,c],[d,e],[f,g,h],[d,e],[i,j,k,l],[m,n],[o]],L)', lfsort([[a,b,c],[d,e],[f,g,h],[d,e],[i,j,k,l],[m,n],[o]],L), ['L'=L]).
p99x(p31, is_prime/1, 'is_prime(7)', is_prime(7), []).
p99x(p32, gcd/3, 'gcd(36, 63, G)', gcd(36, 63, G), ['G'=G]).
p99x(p33, coprime/2, 'coprime(35, 64)', coprime(35, 64), []).
p99x(p35, prime_factors/2, 'prime_factors(315, L)', prime_factors(315, L), ['L'=L]).
p99x(p36, prime_factors_mult/2, 'prime_factors_mult(315, L)', prime_factors_mult(315, L), ['L'=L]).
p99x(p40, goldbach/2, 'goldbach(28, L)', goldbach(28, L), ['L'=L]).
p99x(p41, goldbach_list/2, 'goldbach_list(9,20)', goldbach_list(9,20), []).
p99x(p41, goldbach_list/3, 'goldbach_list(1,2000,50)', goldbach_list(1,2000,50), []).
p99x(p46, (table)/3, 'table(A,B,and(A,or(A,B)))', table(A,B,and(A,or(A,B))), ['A'=A,'B'=B]).
p99x(p47, (table)/3, 'table(A,B, A and (A or not B))', table(A,B,and(A,or(A,not(B)))), ['A'=A,'B'=B]).
p99x(p48, (table)/2, 'table([A,B,C], A and (B or C) equ A and B or A and C)', table([A,B,C],equ(and(A,or(B,C)),or(and(A,B),and(A,C)))), ['A'=A,'B'=B,'C'=C]).
p99x(p54a, istree/1, 'istree(t(a,t(b,nil,nil),nil))', istree(t(a,t(b,nil,nil),nil)), []).
p99x(p54a, istree/1, 'istree(t(a,t(b,nil,nil)))', istree(t(a,t(b,nil,nil))), []).
p99x(p55, cbal_tree/2, 'cbal_tree(4,T)', cbal_tree(4,T), ['T'=T]).
p99x(p57, construct/2, 'construct([3,2,5,7,1],T)', construct([3,2,5,7,1],T), ['T'=T]).
p99x(p57, test_symmetric/1, 'test_symmetric([5,3,18,1,4,12,21])', test_symmetric([5,3,18,1,4,12,21]), []).
p99x(p57, test_symmetric/1, 'test_symmetric([3,2,5,7,4])', test_symmetric([3,2,5,7,4]), []).
p99x(p58, sym_cbal_trees/2, 'sym_cbal_trees(5,Ts)', sym_cbal_trees(5,Ts), ['Ts'=Ts]).
p99x(p59, hbal_tree/2, 'hbal_tree(3,T)', hbal_tree(3,T), ['T'=T]).
p99x(p70b, istree/1, 'istree(t(a,[t(f,[t(g,[])]),t(c,[]),t(b,[t(d,[]),t(e,[])])]))', istree(t(a,[t(f,[t(g,[])]),t(c,[]),t(b,[t(d,[]),t(e,[])])])), []).
p99x(p70b, nnodes/2, 'nnodes(t(a,[t(f,[])]),N)', nnodes(t(a,[t(f,[])]),N), ['N'=N]).
p99x(p73, tree_ltl/2, 'tree_ltl(t(a,[t(b,[]),t(c,[])]),LTL)', tree_ltl(t(a,[t(b,[]),t(c,[])]),LTL), ['LTL'=LTL]).

p99x_drive :- p99x(_, PI, Text, Goal, Bs), p99x_one(PI, Text, Goal, Bs), fail.
p99x_drive.

p99x_one(N/A, Text, Goal, Bs) :- current_predicate(N/A), !,
    write('?- '), write(Text), write('.'), nl,
    catch(p99x_run(Goal, R), E, p99x_ball(E, R)),
    p99x_show(R, Bs).
p99x_one(_, _, _, _).

p99x_run(G, R) :- ( call(G) -> R = yes ; R = no ).

p99x_ball(error(F, _), raised(F)) :- !.
p99x_ball(E, raised(E)).

p99x_show(yes, []) :- !, write(yes), nl.
p99x_show(yes, Bs) :- !, \+ \+ ( numbervars(Bs, 0, _), p99x_bind(Bs) ).
p99x_show(R, _) :- writeq(R), nl.

p99x_bind([]).
p99x_bind([N=V|T]) :- write(N), write(' = '), write_term(V, [quoted(true), numbervars(true)]), nl, p99x_bind(T).

:- p99x_drive.
