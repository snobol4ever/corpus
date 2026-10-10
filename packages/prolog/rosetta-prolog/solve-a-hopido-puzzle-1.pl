hopido(Grid,[C|Solved],Xs,Ys) :-	
	select(C,Grid,RGrid),
	solve(RGrid,C,Solved,Xs,Ys).
	
solve([],_,[],_,_).	
solve(Grid,p(X,Y),[p(X1,Y1)|R],Xs,Ys) :-
	valid_move(X,Y,Xs,Ys,X1,Y1),
	select(p(X1,Y1),Grid,NextGrid),
	solve(NextGrid,p(X1,Y1),R,Xs,Ys).	
	
valid_move(X,Y,Xs,_,X1,Y)   :- j3(X,X1,Xs).			% right	(3,0)
valid_move(X,Y,Xs,_,X1,Y)   :- j3(X1,X,Xs).			% left (-3,0)
valid_move(X,Y,_,Ys,X,Y1)   :- j3(Y,Y1,Ys).			% up (0,3).
valid_move(X,Y,_,Ys,X,Y1)   :- j3(Y1,Y,Ys).  			% down (0,-3).
valid_move(X,Y,Xs,Ys,X1,Y1) :- j2(X,X1,Xs), j2(Y,Y1,Ys).  	% up-right (2,2).
valid_move(X,Y,Xs,Ys,X1,Y1) :- j2(X1,X,Xs), j2(Y,Y1,Ys).  	% up-left (-2,2).
valid_move(X,Y,Xs,Ys,X1,Y1) :- j2(X1,X,Xs), j2(Y1,Y,Ys).  	% down-left (-2,-2).
valid_move(X,Y,Xs,Ys,X1,Y1) :- j2(X,X1,Xs), j2(Y1,Y,Ys).  	% down-right (2,-2).

j2(O,N,[O,_,N|_]).
j2(O,N,[_|T]) :- j2(O,N,T).

j3(O,N,[O,_,_,N|_]).
j3(O,N,[_|T]) :- j3(O,N,T).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines hopido/4 and never calls it; the driver solves the task's puzzle (the cells solve-a-hopido-puzzle-2 lists) and prints the path, as that file's test/0 does.
:- initialization((P = [p(1,0),p(2,0),p(4,0),p(5,0),p(0,1),p(1,1),p(2,1),p(3,1),p(4,1),p(5,1),p(6,1),p(0,2),p(1,2),p(2,2),p(3,2),p(4,2),p(5,2),p(6,2),p(1,3),p(2,3),p(3,3),p(4,3),p(5,3),p(2,4),p(3,4),p(4,4),p(3,5)], XYs = [0,1,2,3,4,5,6], hopido(P, S, XYs, XYs), maplist(writeln, S))).
