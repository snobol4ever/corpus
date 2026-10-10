%--------------------------------------------------- 1 hakank_swi_1d_rubiks_cube
/*

  1D Rubik's Cube in SWI Prolog

  From
  http://www.mail-archive.com/programming@jsoftware.com/msg05817.html
  """
  1D Rubik's Cube

  Oleg Kobchenko
  Mon, 11 Jun 2007 19:09:55 -0700

  I found an interesting game, as found on Andrew Nikitin's 
  MSX-BASIC page http://nsg.upor.net/msx/basic/basic.htm ,
  and I am not sure if its solver has been given as a puzzle.
  Here it goes.

  1D Rubik's Cube is a line of 6 numbers with
  original position:

    1 2 3 4 5 6

  which can be rotated in 3 different ways
  in groups of four:
      _______                _______
     (1 2 3 4)5 6  --(0)->  (4 3 2 1)5 6
        _______                _______
      1(2 3 4 5)6  --(1)->   1(5 4 3 2)6
          _______                _______
      1 2(3 4 5 6) --(2)->   1 2(6 5 4 3)

  Given a scrambled line, return the shortest sequence of 
  rotations to restore the original position.

  Examples:

     solve 1 3 2 6 5 4
  1 2 1
     solve 5 6 2 1 4 3
  0 2
     solve 6 5 4 1 2 3
  0 1 2

  """


  Here is a GAP program for this problem.
  Note: It actually solves the opposite problem:
  Given a sequence, how to construct it, i.e. the 
  order of operations are reversed:

  Coding: the three operations (reverse) as cycle notation:

    1 2 3 4 5 6      (1,4)(2,3)
    4 3 2 1 5 6     

    1 2 3 4 5 6      (2,5)(3,4)
    1 5 4 3 2 6     

    1 2 3 4 5 6      (3,6)(4,6)
    1 2 6 5 4 3

    Now the GAP code:
  
    gap> g:=Group([(1,4)(2,3), (2,5)(3,4), (3,6)(4,5)]);
    Group([ (1,4)(2,3), (2,5)(3,4), (3,6)(4,5) ])
    gap> Order(g);                                      
    360
    gap> a:=g.1; b:=g.2; c:=g.3;                        
    (1,4)(2,3)
    (2,5)(3,4)
    (3,6)(4,5)
    gap> StructureDescription(g);
    "A6"
    gap> ListPerm(a);
    [ 4, 3, 2, 1 ]
    gap> ListPerm(b);
    [ 1, 5, 4, 3, 2 ]
    gap> ListPerm(c);
    [ 1, 2, 6, 5, 4, 3 ]

    And the three problems:
    gap> Factorization(g,PermList([1,3,2,6,5,4]));
    x2*x3*x2

    gap> Factorization(g,PermList([5,6,2,1,4,3]));
    x1*x3

    gap> Factorization(g,PermList([6,5,4,1,2,3]));
    x1*x2*x3

  
  Here we test both length 6 problems as well as length 8 problems.
  This means that we have to retract/assert both initial states
  and goal_states (perhaps not as pure as it could be).

  This program use the module bplan which must be downloaded:
  http://hakank.org/swi_prolog/bplan.pl (or via http://hakank.org/swi_prolog/ ).


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(bplan).

:- dynamic initial_state/1.
:- dynamic goal_state/1.
:- dynamic legal_move/3.

%%
%% Shortest plan for a length 6 and length 8 problem instance.
%%
go :-
        %% Length 6 problem
        Initial1 = [1,3,2,6,5,4],
        run_problem_once(Initial1),
        nl,
        
        %% Length 8 problem
        Initial = [2,4,1,7,5,3,8,6],
        run_problem_once(Initial),
        nl.

%%
%% Test a couple of length 6 problems
%%
go2 :-
        InitialStates =
        [
         [1,3,2,6,5,4],         % Moves: [2,3,2]
         [5,6,2,1,4,3],         % Moves: [1,3]
         [6,5,4,1,2,3],         % Moves: [1,2,3]
         [2,1,5,4,3,6],         % Moves: 1,2,1
         
         [5,1,2,3,4,6],         % Moves: 1,2,1,2
         [5,4,3,2,1,6],         % Moves: 1,2,1,2,1
         
         %% These two takes 11 steps (no problem at all).
         [6,3,5,2,4,1],        % GAP: x3*x1*x2*x1*x3*x2*x1*x2*x1*x3*x1
         [6,4,2,5,3,1],        % GAP: x1*x3*x2*x3*x2*x1*x3*x2*x3*x2*x1
         
         [6,5,4,3,1,2],        % [1, 3, 2, 1, 3, 1, 2, 1]
         [6,3,4,5,2,1],
         [_,_,_,_,_,_]         % 0 moves
        ],
        
        member(Initial,InitialStates),
        run_problem_once(Initial),
        nl,
        fail,
        nl.

go2.


%%
%% Test some 8 length problems.
%%
go3 :-
        InitialStates = [
                         [2,4,1,7,5,3,8,6],
                         [8,7,6,3,2,5,4,1]
                        ],
        member(Initial,InitialStates),
        run_problem_once(Initial),
        nl,
        fail,
        nl.

go3.

%%
%% Check all plans of a certain length (1..15).
%% N.B. The shortest is (still) of length 10.
%%
%% Note: It just shows the number of solutions.
%%
%% Result (edited):
%%
%% len=1..9: no solutions
%%
%% len=10
%% % 69 inferences, 0.000 CPU in 0.000 seconds (100% CPU, 843696 Lips)
%% number_of_solutions=27
%%
%% len=11
%% % 605,713 inferences, 0.307 CPU in 0.307 seconds (100% CPU, 1972598 Lips)
%% number_of_solutions=131
%%
%% len=12
%% % 823,096 inferences, 0.436 CPU in 0.436 seconds (100% CPU, 1889367 Lips)
%% number_of_solutions=1976
%%
%% len=13
%% % 1,028,973 inferences, 0.599 CPU in 0.599 seconds (100% CPU, 1716804 Lips)
%% number_of_solutions=9469
%%
%% len=14
%% % 2,040,996 inferences, 1.189 CPU in 1.189 seconds (100% CPU, 1716202 Lips)
%% number_of_solutions=89196
%%
%% len=15
%% % 6,343,194 inferences, 3.474 CPU in 3.474 seconds (100% CPU, 1826040 Lips)
%% number_of_solutions=427105
%%
go4 :-
        Initial = [2,4,1,7,5,3,8,6],
        between(1,15,Len),
        writeln(len=Len),
        nl,
        run_problem_findall(Initial,Len,false),
        nl,
        fail,
        nl.

go4.

%%
%% Length 6 problems.
%%

%%
%% legal_move(From, Move, To).
%%
%% Legal moves for length 6 problems.
%%
legal_move6([M4,M3,M2,M1,M5,M6], 1, [M1,M2,M3,M4,M5,M6]). % move 1
legal_move6([M1,M5,M4,M3,M2,M6], 2, [M1,M2,M3,M4,M5,M6]). % move 2
legal_move6([M1,M2,M6,M5,M4,M3], 3, [M1,M2,M3,M4,M5,M6]). % move 3

%% goal_state([1,2,3,4,5,6]). %% dynamically asserted

%%
%% Length 8 problems
%%

%%
%% Legal moves for length 8 problems.
%%
legal_move8([M4,M3,M2,M1,M5,M6,M7,M8],1,[M1,M2,M3,M4,M5,M6,M7,M8]). % move 1
legal_move8([M1,M5,M4,M3,M2,M6,M7,M8],2,[M1,M2,M3,M4,M5,M6,M7,M8]). % move 2
legal_move8([M1,M2,M6,M5,M4,M3,M7,M8],3,[M1,M2,M3,M4,M5,M6,M7,M8]). % move 3
legal_move8([M1,M2,M3,M7,M6,M5,M4,M8],4,[M1,M2,M3,M4,M5,M6,M7,M8]). % move 4
legal_move8([M1,M2,M3,M4,M8,M7,M6,M5],5,[M1,M2,M3,M4,M5,M6,M7,M8]). % move 5

%% goal_state([1,2,3,4,5,6,7,8]). %% dynamically asserted


%%
%% run_problem_once(Initial)
%%
%% Wrapper for running a problem once, finding an/the optimal/shortest plan.
%%
run_problem_once(Initial) :-
        writeln(initial_state=Initial),
        retractall(initial_state(_)),
        assertz(initial_state(Initial)),
        length(Initial, InitialLen),
        writeln(initialLen=InitialLen),
        assert_legal_moves(InitialLen),
        
        time(once(bplan(L))),
        writeln(moves=L), 
        length(L, Len),
        writeln(len=Len),
        retractall(initial_state(_)),
        nl.

%%
%% run_problem_findall(Initial,Len)
%% run_problem_findall(Initial,Len,ShowSolutions)
%%
%% Wrapper for finding all plans of length Len.
%%
%%
run_problem_findall(Initial,Len) :-
        run_problem_findall(Initial,Len,true).

run_problem_findall(Initial,Len,ShowSolutions) :-
        writeln(initial_state=Initial),
        retractall(initial_state(_)),        
        assertz(initial_state(Initial)),
        length(Initial,InitialLen),
        writeln(initialLen=InitialLen),
        assert_legal_moves(InitialLen),

        %% create a list of the appropriate plan length
        length(L,Len),
        time(findall(L, plan(L),All)),
        (
         ShowSolutions == true
        ->
         writeln(All)
        ;
         true
        ),
        length(All, AllLen),
        writeln(number_of_solutions=AllLen),
        retractall(initial_state(_)),        
        nl.

%%
%% Assert goal_state/1 and legal_move/3 for the different lengths.
%%

%% Length 6
assert_legal_moves(6) :-
        abolish_all_tables,
        retractall(goal_state(_)),
        numlist(1,6,Goal),
        writeln(goal=Goal),
        assertz(goal_state(Goal)),
        retractall(legal_move(_,_,_)),        
        legal_move6(From,Move,To),
        assertz(legal_move(From,Move,To)),
        fail.
assert_legal_moves(6).

%% Length 8
assert_legal_moves(8) :-
        abolish_all_tables,
        retractall(goal_state(_)),
        numlist(1,8,Goal),
        assertz(goal_state(Goal)),
        retractall(legal_move(_,_,_)),
        legal_move8(From,Move,To),
        assertz(legal_move(From,Move,To)),
        fail.
assert_legal_moves(8).

:- initialization(go).
%----------------------------------------------------------- 2 hakank_swi_3_jugs
/*

  Three jugs problem in SWI Prolog

  Modelled as a shortest path problem.

  Problem from Taha "Introduction to Operations Research", page 245f

  Also see http://mathworld.wolfram.com/ThreeJugProblem.html

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 15,
        Start = 1, %% start node
        End = 15,  %% end node
        M = 9,     %% a large number
   
        Nodes = [
                 "8,0,0", %% start
                 "5,0,3",
                 "5,3,0",
                 "2,3,3",
                 "2,5,1",
                 "7,0,1",
                 "7,1,0",
                 "4,1,3",
                 "3,5,0",
                 "3,2,3",
                 "6,2,0",
                 "6,0,2",
                 "1,5,2",
                 "1,4,3",
                 "4,4,0" %% goal
      ],

        %% distance matrix (the moves)
        D = [[M, 1, M, M, M, M, M, M, 1, M, M, M, M, M, M],
             [M, M, 1, M, M, M, M, M, M, M, M, M, M, M, M],
             [M, M, M, 1, M, M, M, M, 1, M, M, M, M, M, M],
             [M, M, M, M, 1, M, M, M, M, M, M, M, M, M, M],
             [M, M, M, M, M, 1, M, M, 1, M, M, M, M, M, M],
             [M, M, M, M, M, M, 1, M, M, M, M, M, M, M, M],
             [M, M, M, M, M, M, M, 1, 1, M, M, M, M, M, M],
             [M, M, M, M, M, M, M, M, M, M, M, M, M, M, 1], 
             [M, M, M, M, M, M, M, M, M, 1, M, M, M, M, M],
             [M, 1, M, M, M, M, M, M, M, M, 1, M, M, M, M],
             [M, M, M, M, M, M, M, M, M, M, M, 1, M, M, M],
             [M, 1, M, M, M, M, M, M, M, M, M, M, 1, M, M],
             [M, M, M, M, M, M, M, M, M, M, M, M, M, 1, M],
             [M, 1, M, M, M, M, M, M, M, M, M, M, M, M, 1], 
             [M, M, M, M, M, M, M, M, M, M, M, M, M, M, M]],
        
        length(D,N),
   
        %% decision variables
        
        %% the resulting matrix, 1 if connected, 0 else
        new_matrix(N,N,0..1,X),
        flatten(X,XFlatten),
        
        length(OutFlow,N),
        OutFlow ins 0..1,

        length(InFlow,N),
        InFlow ins 0..1,

        length(Rhs,N), %% requirements (right hand statement)
        % Rhs ins -1..1,

        %% objective to minimize
        Z in 0..M,

        %% total cost/length (Z) to minimize
        flatten(D,DFlatten),
        scalar_product(DFlatten,XFlatten,#=,Z),

        numlist(1,N,Is),
        maplist(rhs(Rhs,Start,End),Is),
      
        %% outflow constraint
        maplist(outflow(X,D,N,M,OutFlow),Is),
   
        %% inflow constraint
        maplist(inflow(X,D,N,M,InFlow),Is),
   
        %% inflow = outflow
        maplist(inflow_eq_outflow,InFlow,OutFlow,Rhs),
        
        %% solve
        flatten([OutFlow, InFlow],Vars),

        labeling([min(Z)], Vars),
   
        writeln(z=Z),
        format("InFlow = ~w\n", [InFlow]),
        format("OutFlow= ~w\n", [OutFlow]),
        writeln("Path:"),
        findall(Node,
                (between(1,N,I),
                 element(I,InFlow,1),
                 nth1(I,Nodes,Node)
                ),
                Flow1
               ),
        nth1(Start,Nodes,StartNode),
        append([StartNode],Flow1,Flow),
        maplist(writeln,Flow),
        nl.


rhs(Rhs,Start,_End,Start) :-
        element(Start,Rhs,1).
rhs(Rhs,_Start,End,End) :-
        element(End,Rhs,-1).
rhs(Rhs,Start,End,I) :-
        I #\= Start,
        I #\= End,
        element(I,Rhs,0).

%% outflow constraint
outflow(X,D,N,M,OutFlow,I) :-
        findall(J,
                (between(1,N,J),
                 matrix_element(D,I,J,DIJ),
                 DIJ #< M
                ),
                Js),
        sum_js(Js,I,X,0,Sum),
        element(I,OutFlow,Sum).

sum_js([],_I,_X,Sum,Sum).
sum_js([J|Js],I,X,Sum0,Sum) :-
        matrix_element(X,I,J,XIJ),
        Sum1 #= Sum0 + XIJ,
        sum_js(Js,I,X,Sum1,Sum).


%% inflow constraint
inflow(X,D,N,M,InFlow,J) :-
        findall(I,
                (between(1,N,I),
                 matrix_element(D,I,J,DIJ),
                 DIJ #< M
                ),
                Is),
        sum_is(Is,J,X,0,Sum),
        element(J,InFlow,Sum).

sum_is([],_K,_X,Sum,Sum).
sum_is([I|Is],J,X,Sum0,Sum) :-
        matrix_element(X,I,J,XIJ),
        Sum1 #= Sum0 + XIJ,
        sum_is(Is,J,X,Sum1,Sum).

%% inflow = outflow
%% foreach(I in 1..N) OutFlow[I]-InFlow[I]#=Rhs[I] end,
inflow_eq_outflow(InFlow,OutFlow,Rhs) :-
        OutFlow-InFlow #= Rhs.
        
:- initialization(go).
%--------------------------------------------------- 3 hakank_swi_3_jugs_regular
/*

  3 jugs problem using regular constraint in SWI Prolog

  Using the regular constraint and DFS to solve the 3 jugs problem.

  Also see http://mathworld.wolfram.com/ThreeJugProblem.html


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Using indomain to get the shortest path
%%
%% ...
%% len=7
%% x=[9,10,11,12,13,14,15]
%% path=[1,9,10,11,12,13,14,15]
%%
%% The path:
%% state: 1  move: [8,0,0]
%% state: 9  move: [3,5,0]
%% state: 10  move: [3,2,3]
%% state: 11  move: [6,2,0]
%% state: 12  move: [6,0,2]
%% state: 13  move: [1,5,2]
%% state: 14  move: [1,4,3]
%% state: 15  move: [4,4,0]
%%
go :-

        dfa(1,Transition,NStates,InputMax,InitialState,AcceptingStates,Nodes),
        
        %% get the minimum length by checking increasing length of X
        Len in 1..InputMax,
        indomain(Len),
        writeln(len=Len),

        length(X,Len),
        X ins 0..InputMax,

        regular2(X, NStates, InputMax, Transition, InitialState, AcceptingStates,Path),

        labeling([],X),

        writeln(x=X),
        writeln(path=Path),
        nl,
        writeln("The path:"),
        findall([S,Node],
                ( member(S,Path),
                  nth1(S,Nodes,Node)
                ),
                Paths),
        maplist(format("state: ~w  move: ~w~n"),Paths),
        nl.


%%
%% Note: The solution for this model is
%% 8 steps where X =  [2,3,4,5,6,7,8,15,15,15,15,15,15,15,15]
%% which is clealy wrong. The optimal result is 7 steps, see above.
%%
%% One problem seems to be that X is already assigned to [2,3,4,5,6,7,8,15,15,15,15,15,15,15,15]
%% before the labeling, so min(Cost) cannot backtrack to the correct result.
%%
go2 :-

        dfa(1,Transition,NStates,InputMax,InitialState,AcceptingStates,Nodes),       
        length(X,InputMax),
        X ins 0..InputMax,

        %% Find the shortest path
        %% Cost #= 1+sum([ X[I-1] #!= X[I] : I in 2..InputMax]),
        Cost in 0..NStates,
        jugs_cost(X,NStates,Cost),

        % Cost #= 7,

        %% Using regular2/7 to get the Path which simplifies the printing of the solution.
        regular2(X, NStates, InputMax, Transition, InitialState, AcceptingStates,Path),

        writeln(xbefore_labeling=X), 
        writeln(cost_before_labeling=Cost),       
        labeling([ff,min(Cost)],X),

        writeln(cost=Cost),
        writeln(x=X),
        writeln(path=Path),
        findall([S,Node],
                ( member(S,Path),
                  nth1(S,Nodes,Node)
                ),
                Paths),
        maplist(format("state: ~w  move: ~w~n"),Paths),
        
        nl.


%% Cost #= 1+sum([ X[I-1] #!= X[I] : I in 2..InputMax]),
jugs_cost(X,N,Cost) :-
        numlist(2,N,Is),
        sumx(Is,X, 0,Cost1),
        Cost #= Cost1 + 1.

sumx([],_X,Sum,Sum).
sumx([I|Is],X,Sum0,Sum) :-
        element(I,X,XI),
        I1 #= I-1,
        element(I1,X,XI1),
        B in 0..1, %% don't forget the domain of B!
        (B #= 1) #<==> (XI #\= XI1),
        Sum1 #= Sum0 + B,
        sumx(Is,X,Sum1,Sum).
        

dfa(1,Transition,NStates,InputMax,InitialState,AcceptingStates,Nodes) :-
        Transition = 
        [ %%1  2  3  4  5  6  7  8  9 10 11 12 13 14 15
          [ 0, 2, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0], % 1 Initial state
          [ 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], % 2 
          [ 0, 0, 0, 4, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0], % 3
          [ 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], % 4
          [ 0, 0, 0, 0, 0, 6, 0, 0, 9, 0, 0, 0, 0, 0, 0], % 5
          [ 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0], % 6
          [ 0, 0, 0, 0, 0, 0, 0, 8, 9, 0, 0, 0, 0, 0, 0], % 7
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15], % 8 
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0,10, 0, 0, 0, 0, 0], % 9
          [ 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,11, 0, 0, 0, 0], %10
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,12, 0, 0, 0], %11 
          [ 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,13, 0, 0], %12
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,14, 0], %13 
          [ 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15], %14
          [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,15] %15 Accepting state
        ],

        NStates = 15,
        InputMax = 15,
        InitialState = 1,
        AcceptingStates = [15],

        Nodes = [
                 ["8,0,0"],     % 1 start
                 ["5,0,3"],     % 2
                 ["5,3,0"],     % 3 
                 ["2,3,3"],     % 4 
                 ["2,5,1"],     % 5
                 ["7,0,1"],     % 6
                 ["7,1,0"],     % 7
                 ["4,1,3"],     % 8
                 ["3,5,0"],     % 9
                 ["3,2,3"],     % 10
                 ["6,2,0"],     % 11
                 ["6,0,2"],     % 12
                 ["1,5,2"],     % 13
                 ["1,4,3"],     % 14
                 ["4,4,0"]      % 15 goal
                ].

:- initialization(go).
%----------------------------------------------- 4 hakank_swi_K4P2GracefulGraph2
/*

  K4P2 Graceful Graph in SWI Prolog

  Problem from Tailor/Minion summer_school/examples/K4P2GracefulGraph.eprime
  Also see
  http://mathworld.wolfram.com/GracefulGraph.html


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        graph(Graph),        
        length(Graph,M),
        flatten(Graph,GraphF),
        max_list(GraphF,N),
        writeln([n=N,m=M]),

        graceful_graph(Graph, M,N,Nodes,Edges),
        writeln(nodes=Nodes),
        writeln(edges=Edges).


%% Count the number of solutions
%%
%% Number of solutions: 1440
%% % 6,083,184,095 inferences, 428.301 CPU in 428.299 seconds (100% CPU, 14203065 Lips)
%%
go2 :-
        graph(Graph),        
        length(Graph,M),
        flatten(Graph,GraphF),
        max_list(GraphF,N),
        writeln([n=N,m=M]),       
        findall(_, graceful_graph(Graph, M,N,_Nodes,_Edges),L),
        length(L,Len),
        format("Number of solutions: ~d~n", [Len]).


graceful_graph(Graph, M,N,Nodes,Edges) :-

        length(Nodes,N),
        Nodes ins 0..M,

        length(Edges,M),
        Edges ins 1..M,

        all_distinct(Edges),
        all_distinct(Nodes),

        maplist(graph_edges(Nodes),Graph,Edges),
        
        flatten([Nodes,Edges],Vars),
        labeling([bisect],Vars).

graph_edges(Nodes,[From,To],Edge) :-
        element(From,Nodes,NodesFrom),
        element(To,Nodes,NodesTo),        
        abs(NodesFrom - NodesTo) #= Edge.


graph(Graph) :- 
        Graph = 
        [[1, 2],
         [1, 3],
         [1, 4],
         [2, 3],
         [2, 4],
         [3, 4],
       
         [5, 6],
         [5, 7],
         [5, 8],
         [6, 7],
         [6, 8],
         [7, 8],
         
         [1, 5],
         [2, 6],
         [3, 7],
         [4, 8]].
:- initialization(go).
%--------------------------------------------------------- 5 hakank_swi_a_puzzle
/*

  "A puzzle" in SWI Prolog

  From "God plays dice"
  "A puzzle"
  http://gottwurfelt.wordpress.com/2012/02/22/a-puzzle/

  And the sequel "Answer to a puzzle"
  http://gottwurfelt.wordpress.com/2012/02/24/an-answer-to-a-puzzle/

  This problem instance was taken from the latter blog post.

  """
  8809 = 6
  7111 = 0
  2172 = 0
  6666 = 4
  1111 = 0
  3213 = 0
  7662 = 2
  9312 = 1
  0000 = 4
  2222 = 0
  3333 = 0
  5555 = 0
  8193 = 3
  8096 = 5
  7777 = 0
  9999 = 4
  7756 = 1
  6855 = 3
  9881 = 5
  5531 = 0

  2581 = ?
  """

  Note: 
  This model yields 10 solutions, since x4 is not 
  restricted in the constraints. 
  All solutions has x assigned to the correct result. 
  

  The problem stated in "A puzzle"
  http://gottwurfelt.wordpress.com/2012/02/22/a-puzzle/
  is
  """
  8809 = 6
  7662 = 2
  9312 = 1
  8193 = 3
  8096 = 5
  7756 = 1
  6855 = 3
  9881 = 5

  2581 = ?
  """
  
  This problem instance - using the same principle - yields 
  two different solutions of x, one is the same (correct) as 
  for the above problem instance, and one is not.
  This is because here both x4 and x1 are underdefined.
  
  Note: 
  This problem has another non-algebraic and - let's say - topological
  approach which yield the same solution as the first problem and one
  of the two solutions of the second problem.

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        puzzle(puzzle1).


go2 :-
        puzzle(puzzle2).

%% wrapper
puzzle(Puzzle) :-
        findall([X,All],call(Puzzle,All,X),L),
        transpose(L,LT),
        length(L,Len),
        [Xs|Ls] = LT,
        writeln(ls=Ls),
        writeln(xs=Xs),        
        format("~d solutions~n", [Len]),
        nl.

puzzle1(All,X) :-
        %% decision variables
        X0 in 0..9,
        X1 in 0..9,
        X2 in 0..9,
        X3 in 0..9,
        X4 in 0..9,
        X5 in 0..9,
        X6 in 0..9,
        X7 in 0..9,
        X8 in 0..9,
        X9 in 0..9,
        
        All = [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9],
        X in 0..9, %% the unknown
        
        %% This yields 10 solutions, all with the same values for X
        X8+X8+X0+X9 #= 6,
        X7+X1+X1+X1 #= 0,
        X2+X1+X7+X2 #= 0,
        X6+X6+X6+X6 #= 4,
        X1+X1+X1+X1 #= 0,
        X3+X2+X1+X3 #= 0,
        X7+X6+X6+X2 #= 2,
        X9+X3+X1+X2 #= 1,
        X0+X0+X0+X0 #= 4,
        X2+X2+X2+X2 #= 0,
        X3+X3+X3+X3 #= 0,
        X5+X5+X5+X5 #= 0,
        X8+X1+X9+X3 #= 3,
        X8+X0+X9+X6 #= 5,
        X7+X7+X7+X7 #= 0,
        X9+X9+X9+X9 #= 4,
        X7+X7+X5+X6 #= 1,
        X6+X8+X5+X5 #= 3,
        X9+X8+X8+X1 #= 5,
        X5+X5+X3+X1 #= 0,
        
        X2+X5+X8+X1 #= X,
        
        flatten([X,All],Vars),
        labeling([],Vars).

%%
%% This version has fewer hints, but give two different values of X.
%% 
puzzle2(All,X) :-
        

        %% decision variables
        X0 in 0..9,
        X1 in 0..9,
        X2 in 0..9,
        X3 in 0..9,
        X4 in 0..9,
        X5 in 0..9,
        X6 in 0..9,
        X7 in 0..9,
        X8 in 0..9,
        X9 in 0..9,
        
        All = [X0,X1,X2,X3,X4,X5,X6,X7,X8,X9],
        X in 0..9, %% the unknown
        
        X8+X8+X0+X9 #= 6,
        X7+X6+X6+X2 #= 2,
        X9+X3+X1+X2 #= 1,
        X8+X1+X9+X3 #= 3,
        X8+X0+X9+X6 #= 5,
        X7+X7+X5+X6 #= 1,
        X6+X8+X5+X5 #= 3,
        X9+X8+X8+X1 #= 5,
        
        X2+X5+X8+X1 #= X,
        
        flatten([All,X],Vars),
        labeling([],Vars).
:- initialization(go).
%-------------------------------------------------- 6 hakank_swi_a_round_of_golf
/*

  A Round of Golf puzzle in SWI Prolog

  From http://brownbuffalo.sourceforge.net/RoundOfGolfClues.html
  """
  Title: A Round of Golf
  Author: Ellen K. Rodehorst
  Publication: Dell Favorite Logic Problems
  Issue: Summer, 2000
  Puzzle #: 9
  Stars: 1
 
  When the Sunny Hills Country Club golf course isn't in use by club members, 
  of course, it's open to the club's employees. Recently, Jack and three other 
  workers at the golf course got together on their day off to play a round of 
  eighteen holes of golf. 
  Afterward, all four, including Mr. Green, went to the clubhouse to total 
  their scorecards. Each man works at a different job (one is a short-order 
  cook), and each shot a different score in the game. No one scored below 
  70 or above 85 strokes. From the clues below, can you discover each man's 
  full name, job and golf score?
  
  1. Bill, who is not the maintenance man, plays golf often and had the lowest 
  score of the foursome.
  2. Mr. Clubb, who isn't Paul, hit several balls into the woods and scored ten 
  strokes more than the pro-shop clerk.
  3. In some order, Frank and the caddy scored four and seven more strokes than 
  Mr. Sands.
  4. Mr. Carter thought his score of 78 was one of his better games, even 
     though Frank's score  was lower.
  5. None of the four scored exactly 81 strokes.
  
  Determine: First Name - Last Name - Job - Score 
  """

  Compare with the F1 model: 
  http://www.f1compiler.com/samples/A 20Round 20of 20Golf.f1.html

  Solution:
             Jack, Bill, Paul, Frank
             Clubb Sands Carter Green
             maint cook  caddy clerk
             85    71    78    75
  first_name: [1, 2, 3, 4]
  last_name : [4, 1, 2, 3]
  job       : [2, 1, 4, 3]
  score     : [85, 71, 78, 75]


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        N = 4,

        Jack  = 1,
        Bill  = 2,
        Paul  = 3,
        Frank = 4,
        FirstName = [Jack, Bill, Paul, Frank],
        FirstNameS = ["Jack", "Bill", "Paul", "Frank"],
        
        LastName = [_Green,Clubb,Sands,Carter],
        LastNameS = ["Green","Clubb","Sands","Carter"],
        LastName ins 1..N,
        
        Job = [_Cook,MaintenanceMan,Clerk,Caddy],
        JobS = ["Cook","Maintenance Man","Clerk","Caddy"],
        Job ins 1..N,
        
        length(Score,N),
        Score ins 70..85,
        Score = [ScoreJack,ScoreBill,ScorePaul,ScoreFrank],
        
        all_different(LastName),
        all_different(Job),
        all_different(Score),
        
        % 1. Bill, who is not the maintenance man, plays golf often and had 
        %    the lowest score of the foursome.
        Bill #\= MaintenanceMan,

        ScoreBill #< ScoreJack,
        ScoreBill #< ScorePaul,
        ScoreBill #< ScoreFrank,
   
        % 2. Mr. Clubb, who isn"t Paul, hit several balls into the woods and 
        %    scored ten strokes more than the pro-shop clerk.
        Clubb #\= Paul,

        element(Clubb,Score,ScoreClubb),
        element(Clerk,Score,ScoreClerk),
        ScoreClubb #= ScoreClerk + 10,
       
        % 3. In some order, Frank and the caddy scored four and seven more 
        %    strokes than Mr. Sands.
        Frank #\= Caddy,
        Frank #\= Sands,
        Caddy #\= Sands,
   
        element(Sands,Score,ScoreSands),
        element(Caddy,Score,ScoreCaddy),
        element(Carter,Score,ScoreCarter),
        (
         (ScoreFrank #= ScoreSands + 4 #/\
         ScoreCaddy #= ScoreSands + 7)
        #\/
        (ScoreFrank #= ScoreSands + 7 #/\
        ScoreCaddy #= ScoreSands + 4)
        ),
        
        % 4. Mr. Carter thought his score of 78 was one of his better games, even 
        % though Frank"s score was lower.
        Frank #\= Carter,
   
        % Score[Carter] #= 78,
        ScoreCarter #= 78,
        ScoreFrank #< ScoreCarter,
   
        % 5. None of the four scored exactly 81 strokes.
        maplist(not_81_strokes, Score),
   
        append([Score,LastName,Job],Vars),

        labeling([ff],Vars),
   
        format("First names: ~w~n", [FirstName]),
        format("Last names : ~w~n", [LastName]),
        format("Jobs       : ~w~n", [Job]),
        format("Score      : ~w~n", [Score]),
        nl,

        % A nicer presentation.
        % Get the inverse of Last name and Jobs to present
        % the names/jobs.
        inverse(LastName,LastNameInv),
        inverse(Job,JobInv),
   
        numlist(1,N,Is),
        maplist(nice_print(FirstName,FirstNameS,LastNameS,LastNameInv,JobS,JobInv,Score),Is),
        nl.


not_81_strokes(Score) :-
        Score #\= 81.

nice_print(FirstName,FirstNameS,LastNameS,LastNameInv,JobS,JobInv,Score, I) :-
      nth1(I,FirstName,F),
      nth1(I,LastNameInv,L),
      nth1(I,JobInv,J),
      nth1(I,Score,S),
      nth1(F,FirstNameS,F2),
      nth1(L,LastNameS,L2),
      nth1(J,JobS,J2),
      format("~w\t~w\t~w\t~4w~n",[F2,L2,J2,S]).
:- initialization(go).
%---------------------------------------------------- 7 hakank_swi_abbots_puzzle
/*

  Abbot's puzzle in SWI Prolog

  From
  http://www.comp.nus.edu.sg/~henz/projects/puzzles/arith/index.html
  """
  The Abbot's Puzzle    from "Amusements in Mathematics, Dudeney", number 110.

  If 100 bushels of corn were distributed among 100 people in such a
  manner that each man received three bushels, each woman two, and each
  child half a bushel, how many men, women, and children were there?

  Dudeney added the condition that there are five times as many women as
  men. That way, the solution becomes unique (otherwise, there are seven
  solutions). 
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   findall(LD, abbot(LD),L),
   writeln(L),
   nl.

abbot(LD) :-
   LD = [M, W, C],
   LD ins 1..100,
   M + W + C #= 100,

   % Men: 3, Women: 2, Children: 1/2 = 100
   M * 3 + W * 2 + C//2 #= 100,
   M * 5 #= W,    % additional condition added by Dudeney      

   label(LD).


:- initialization(go).
%-------------------------------------------------------- 8 hakank_swi_ackermann
/*

  Ackermann function in SWI Prolog



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

:- table ack/3.
go :-
        M = 3,
        between(0,10,N),
        writeln(n=N),
        abolish_all_tables,
        time(once(ack(M,N,R))),
        writeln([3,N,R]),
        fail,
        nl.

go.

ack(0,N,R) :-
        R #= N+1.
ack(M,0,R) :-
        M #> 0,
        M1 #= M -1, ack(M1,1,R).
ack(M,N,R) :-
        M #> 0, N #> 0,
        M1 #= M-1, N1 #= N-1,
        ack(M,N1,R1),
        ack(M1,R1,R).
:- initialization(go).
%----------------------------------------------------- 9 hakank_swi_added_corner
/*

  Added corner puzzle in SWI Prolog

  Problem from http://www.delphiforfun.org/Programs/AddedCorners.htm
  """
  This puzzle requires that you enter the digits 1 through 8 in the circles and 
  squares (one digit in each figure) so that the number in each square is equal 
  to the sum on the numbers in the circles which  adjoin it.  
  ...
  
    C F C
    F   F
    C F C
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall(X, added_corner(X),L),
        length(L,Len),
        format("It was ~d solutions.\n", Len).


added_corner(X) :-
        Digits = 1..8,

        X = [A,B,C,D,E,F,G,H],
        X ins Digits,

        all_different(X),
        B #= A + C,
        D #= A + F,
        E #= C + H,
        G #= F + H,

        label(X),

        format("~d ~d ~d\n", [A,B,C]),
        format("~d   ~d\n",  [D,E]),
        format("~d ~d ~d\n", [F,G,H]),
        nl.

        
:- initialization(go).
%---------------------------------- 10 hakank_swi_all_differ_from_at_least_k_pos
/*

  Global constraint all_differ_from_at_least_k_pos in SWI Prolog

  From Global Constraint Catalog
  http://www.emn.fr/x-info/sdemasse/gccat/Call_different_from_at_least_k_pos.html
  """
  Enforce all pairs of distinct vectors of the VECTORS collection to differ 
  from at least K positions.
  
  Example
  (
   2, <
   vec-<2, 5, 2, 0>,
   vec-<3, 6, 2, 1>,
   vec-<3, 6, 1, 0>
   >
 )
  
  The all_differ_from_at_least_k_pos constraint holds since:
   * The first and second vectors differ from 3 positions, which is 
     greater than or equal to K=2.
   * The first and third vectors differ from 3 positions, which is greater 
     than or equal to K=2.
   * The second and third vectors differ from 2 positions, which is greater 
     than or equal to K=2.
  """

  Note:
  all_differ_from_at_least_k_pos/2 is defined in http://hakank.org/swi_prolog/hakank_utils.pl


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   Rows = 3,
   Cols = 4,

   new_matrix(Rows,Cols,0..6,X),
   flatten(X,XList),

   K in 0..Cols,
   K #= 2,

   % the example above
   % X = [[2,5,2,0],
   %      [3,6,2,1],
   %      [3,6,1,0]],

   % X = [[2,5,2,_],
   %      [3,6,2,1],
   %      [3,6,1,0]],

   X = [[3,6,3,_],
        [3,6,2,1],
        [3,6,1,0]],


   % this fails
   % X = [[2,5,2,0],
   %      [2,5,2,1],
   %      [3,6,1,0]],

   all_differ_from_at_least_k_pos(K,X),

   flatten([XList,K],Vars),
   labeling([],Vars),
   maplist(writeln,X),
   nl.

%%
%% Require that all rows should be completely different
%%
go2 :-
        N = 3,

        new_matrix(N,N,1..N,X),

        % K in 1..N,
        K #= 3,

        findall(X,(all_differ_from_at_least_k_pos(K,X),flatten(X,Vars), label(Vars)),L),
        length(L,Len),
        maplist(writeln,L),
        writeln(len=Len),
        nl.

        
%%
%% Require that all rows and columns should differ by K positions.
%%
go3 :-
        N = 3,

        new_matrix(N,N,1..N,X),
        transpose(X,XT),
        

        % K in 1..N,
        K #= 2,

        findall(X,
                (all_differ_from_at_least_k_pos(K,X),
                 all_differ_from_at_least_k_pos(K,XT),
                 flatten(X,Vars),
                 label(Vars)),
                L),
        length(L,Len),
        maplist(writeln,L),
        writeln(len=Len),
        nl.

        
:- initialization(go).
%------------------------------------------------------- 11 hakank_swi_all_equal
/*

  Global constraint all_equal in SWI Prolog

  From Global Constraint Catalogue
  http://www.emn.fr/x-info/sdemasse/gccat/Call_equal.html
  """
  Constraint
 
      all_equal(VARIABLES)
 
  Purpose
 
      Enforce all variables of the collection VARIABLES to take the same value.
 
  Example
      (<5, 5, 5, 5>)
 
  The all_equal constraint holds since all its variables are fixed to value 5.
  """

  all_equal/1 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   N = 5,
   Lower = 0,
   Upper = 6,
   findall(X, all_equal_test(N,Lower, Upper,X),List),
   length(List,Len),
   writeln(List),
   writeln(length=Len),
   nl.

all_equal_test(N, Lower, Upper, X) :-
   length(X,N),
   X ins Lower..Upper,
   all_equal(X),
   labeling([],X).

:- initialization(go).
%---------------------------------------------------- 12 hakank_swi_all_min_dist
/*

  Global constraint all_min_dist in SWI Prolog

  From Global Constraint Catalogue
  http://www.emn.fr/x-info/sdemasse/gccat/Call_min_dist.html
  """
  Enforce for each pair (vari, varj) i ‹ j of distinct variables of the 
  collection VARIABLES that 
  |vari - varj| >= MINDIST.
  
  Example
   (2, <5, 1, 9, 3>)
  
  The all_min_dist constraint holds since the following expressions 
  |5-1|, |5-9|, |5-3|, |1-9|, |1-3|, |9-3| are all greater than or equal 
  to the first argument MINDIST = 2 of the all_min_dist constraint.
  """

  Note:
  all_min_dist/2 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 4,
        length(X,N),
        X ins 1..9,
        
        % C in 0..9,
        C #= 2,
        
        findall([x=X,c=C], (
                    all_min_dist(C, X),
                    flatten([X,C], Vars),
                    labeling([],Vars)
                   ),
                L),
        length(L,Len),
        maplist(writeln,L),
        writeln(len=Len),
        nl.
:- initialization(go).
%--------------------------------------- 13 hakank_swi_alldiffer_on_intersection
/*

  Global constraint alldiffer_on_intersection in SWI Prolog

  From Global Constraint Catalogue
  http://www.emn.fr/x-info/sdemasse/gccat/Calldifferent_on_intersection.html
  """
  The values that both occur in the VARIABLES1 and VARIABLES2 collections 
  have only one occurrence.
  
  Example
  (
   <5, 9, 1, 5>,
   <2, 1, 6, 9, 6, 2>
  )
  
  The alldifferent_on_intersection constraint holds since the values 9 and 1 
  that both occur in <5, 9, 1, 5> as well as in <2, 1, 6, 9, 6, 2> have 
  exactly one occurrence in each collection.
  """

  Note: alldiffer_on_intersection/2 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   M = 4,
   N = 6,

   length(X,M),
   X ins 1..9,

   length(Y,N),
   Y ins 1..9,

   % X = [5,9,1,5],
   X = [5,9,1,_],

   Y = [2,1,6,9,6,2], % constraint holds

   %% Y = [2,1,6,9,6,1], % constraint do not hold since 
   %%                    % there are two 1's in Y and one 1 in X

   alldiffer_on_intersection(X,Y),

   flatten([X,Y],Vars),
   labeling([],Vars),

   writeln(x=X),
   writeln(y=Y),
   nl,
   fail.

go.


go2 :-
   M = 3,
   N = 3,

   length(X,M),
   X ins 1..3,
   X = [1,3,_],

   length(Y,N),
   Y ins 0..2,
   Y = [1,_,2],
   
   alldiffer_on_intersection(X,Y),

   flatten([X,Y],Vars),
   labeling([],Vars),

   writeln(x=X),
   writeln(y=Y),
   nl,
   fail.

go2.


:- initialization(go).
%------------------------------------------------ 14 hakank_swi_alldifferent_cst
/*

  Global constraint alldifferent_cst in SWI Prolog

  From Global Constraint Catalog:
  http://www.emn.fr/x-info/sdemasse/gccat/Calldifferent_cst.html
  """
  For all pairs of items (VARIABLES[i], VARIABLES[j]) (i!=j) of the 
  collection VARIABLES enforce 
  VARIABLES[i].var+VARIABLES[i].cst != VARIABLES[j].var+VARIABLES[j].cst.
 
  Example
   (<
      var-5 cst-0,
      var-1 cst-1,
      var-9 cst-0,
      var-3 cst-4
   >
   )
  
  The alldifferent_cst constraint holds since all the expressions 
  5+0=5, 1+1=2, 9+0=9 and 3+4=7 correspond to distinct values.
  """

  Note: alldifferent_cst/2 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   N = 4,

   Cst = [0,1,0,4],
   % Cst = [0,0,0,0], % for plain all_different 

   length(X,N),
   X ins 1..9,

   % X = [5,1,9,3],

   findall([X,Cst], 
           (alldifferent_cst(X, Cst),
            flatten([X,Cst], Vars),
            label(Vars)),L),
   length(L,Len),
   
   maplist(print_result,L),
   write(len=Len),
   nl.


%%
%% Here both X and Cst are free variables.
%%
go2 :-
   N = 4,

   length(Cst,N),
   Cst ins 1..3,

   length(X,N),
   X ins 1..5,

   findall([X,Cst], 
           (alldifferent_cst(X, Cst),
            flatten([X,Cst], Vars),
            label(Vars)),L),
   length(L,Len),
   
   maplist(print_result,L),
   write(len=Len),
   nl.


print_result([X,C]) :-
        maplist(plus,X,C,Res),
        writeln([x=X,cst=C,res=Res]).


:- initialization(go).
%------------------------------------------- 15 hakank_swi_alldifferent_except_0
/*

  Decomposition of global constraint alldifferent_except_0 in SWI Prolog

  From Global constraint catalogue:
  http://www.emn.fr/x-info/sdemasse/gccat/Calldifferent_except_0.html
  """ 
  Enforce all variables of the collection VARIABLES to take distinct 
  values, except those variables that are assigned to 0.
  
  Example
     (<5, 0, 1, 9, 0, 3>)
  
  The alldifferent_except_0 constraint holds since all the values 
  (that are different from 0) 5, 1, 9 and 3 are distinct.
  """



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% all_different_except_0 and not other constraints. 209 solutions.
%
go :-
        N = 4,
        length(X,N),
        X ins 0..N,
        findall(X,(alldifferent_except_0(X),label(X)),L),
        writeln(L),
        length(L,Len),
        writeln(len=Len),
        nl.

%
% alldifferent_except_0 + increasing. It's 32 solutions.
%
go2 :-
        N = 5,
        length(X,N),
        X ins 0..N,
        findall(X,(alldifferent_except_0(X), increasing(X),label(X)),L),
        writeln(L),
        length(L,Len),
        writeln(len=Len),
        nl.

%
% alldifferent_except_0 and there must be exactly 2 0s.
% There are 5400 solutions.
%
go3 :-
        N = 6,
        length(X,N),
        X ins 0..N,
        findall(X, (alldifferent_except_0(X),count_occurrences(X,0,2),label(X)), L),
        writeln(L),
        length(L,Len),
        writeln(len=Len),
        nl.

%%
%% Note: The implementation of alldifferent_except_0/1 has
%%       moved to hakank_utils.pl
%%

% %%
% %% alldifferent_except_0(X)
% %%
% %% Ensure that all values in Xs which are != 0 are different.
% %%                                %
% alldifferent_except_0(X) :-
%         length(X,Len),
%         findall([I,J], (between(2,Len,I), I1 #= I-1, between(1,I1,J)),L),
%         alldifferent_except_0_(L,X).

% alldifferent_except_0_([], _X).
% alldifferent_except_0_([[I,J]|L],X) :-
%         element(I,X,XI),
%         element(J,X,XJ),        
%         (XI #\= 0 #/\ XJ #\= 0) #==> (XI #\= XJ),
%         alldifferent_except_0_(L,X).

:- initialization(go).
%--------------------------------------------- 16 hakank_swi_alldifferent_modulo
/*

  Global constraint alldifferent_modulo in SWI Prolog

  From Global Constraint Catalogue
  http://www.emn.fr/x-info/sdemasse/gccat/Calldifferent_modulo.html
  """
  Enforce all variables of the collection VARIABLES to have a distinct 
  rest when divided by M.
  
  Example
  (<25, 1, 14, 3>, 5)
  
  The equivalence classes associated with values 25, 1, 14 and 3 are 
  respectively equal to 
     25 mod 5 = 0, 1 mod 5 = 1, 14 mod 5 = 4 and 3 mod = 3. 
  Since they are distinct the alldifferent_modulo constraint holds.
  """

  alldifferent_modulo/2 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   N = 4,
   length(X,N),
   X ins 1..20,

   M in 2..5,
   indomain(M),
   writeln(m=M),
   % M = 5,

   findall([mod=M,X], (alldifferent_modulo(X, M), flatten([X,M], Vars), labeling([],Vars)),L),
   length(L,Len),

   maplist(writeln,L),
   writeln(len=Len).

go.

%%
%% Reverse problem: find M given list X
%%
go2 :-
   N = 4,
   length(X,N),
   X ins 1..20,

   X = [20,19,13,6],
   
   M in 2..5,

   findall([mod=M,X], (alldifferent_modulo(X, M), flatten([X,M], Vars), labeling([],Vars)),L),
   length(L,Len),

   maplist(writeln,L),
   writeln(len=Len).
:- initialization(go).
%--------------------------------------------------- 17 hakank_swi_allpartitions
/*

  All partitions in SWI Prolog

  Simple implementation of all partitions.
  Also, I tried some different search strategies.

  For the number of different partitions, see
  The On-Line Encyclopedia of Integer Sequences:
  https://oeis.org/A000041

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
        N = 8,
        findall(X, allpartitions(N, X),L),
        writeln(L),
        nl.


/*
  [[2],[1,1]]
  [n:2,len:2]
  [[3],[1,2],[1,1,1]]
  [n:3,len:3]
  [[4],[1,3],[2,2],[1,1,2],[1,1,1,1]]
  [n:4,len:5]
  [[5],[1,4],[2,3],[1,1,3],[1,2,2],[1,1,1,2],[1,1,1,1,1]]
  [n:5,len:7]
  [[6],[1,5],[2,4],[3,3],[1,1,4],[1,2,3],[2,2,2],[1,1,1,3],[1,1,2,2],[1,1,1,1,2],[1,1,1,1,1,1]]
  [n:6,len:11]
  [[7],[1,6],[2,5],[3,4],[1,1,5],[1,2,4],[1,3,3],[2,2,3],[1,1,1,4],[1,1,2,3],[1,2,2,2],[1,1,1,1,3],[1,1,1,2,2],[1,1,1,1,1,2],[1,1,1,1,1,1,1]]
  [n:7,len:15]
  [[8],[1,7],[2,6],[3,5],[4,4],[1,1,6],[1,2,5],[1,3,4],[2,2,4],[2,3,3],[1,1,1,5],[1,1,2,4],[1,1,3,3],[1,2,2,3],[2,2,2,2],[1,1,1,1,4],[1,1,1,2,3],[1,1,2,2,2],[1,1,1,1,1,3],[1,1,1,1,2,2],[1,1,1,1,1,1,2],[1,1,1,1,1,1,1,1]]
  [n:8,len:22]
  [n:9,len:30]
  [n:10,len:42]
  [n:11,len:56]
  [n:12,len:77]
  [n:13,len:101]
  [n:14,len:135]
  [n:15,len:176]
  [n:16,len:231]
  [n:17,len:297]
  [n:18,len:385]
  [n:19,len:490]
  [n:20,len:627]
  [n:21,len:792]
  [n:22,len:1002]
  [n:23,len:1255]
  [n:24,len:1575]
  [n:25,len:1958]
  [n:26,len:2436]
  [n:27,len:3010]
  [n:28,len:3718]
  [n:29,len:4565]
  [n:30,len:5604]
  [n:31,len:6842]
  [n:32,len:8349]
  [n:33,len:10143]
  [n:34,len:12310]

*/
go2 :-
        N in 2..34,
        indomain(N),
        findall(X, allpartitions(N, X),L),
        length(L, Len),
        % for larger N we really don't want to print all partitions
        (
         Len =< 22 -> writeln(L)
        ;
         true
        ),
        writeln([n:N, len:Len]),
        fail.

%
% The first part is simply to get an ordered array where the sum is N.
% This ordering is needed for removing symmetries when all 0's is removed.
% The second part removes 0 from the array.
%
allpartitions(N, Xs) :-
        % part I: get all candidates
        length(X, N),
        X ins 0..N,
        sum(X,#=,N),
        increasing(X), % Symmetry breaking
        label(X),
        
        % part II: for presentation, remove all 0's from X
        delete(X, 0, Xs). 
:- initialization(go).
%------------------------------------------------------ 18 hakank_swi_alphametic
/*

  General alphametic (cryptarithmetic) solver in SWI Prolog
  
  This is a fairly general solver for alphametic problems, 
  but it requires explicit variables. E.g.

    alphametic([[S,E,N,D],[M,O,R,E],[M,O,N,E,Y]], Base, Res)


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        problem(P,Ss,Base,Ls),
        writeln(p=P),
        writeln(Ss),
        writeln(Ls),
        nl,
        once(alphametic(Ss,Ls,Base, Vars)),
        writeln(vars=Vars),
        maplist(writeln,Ls),
        nl,
        fail,
        nl.

go.

%%
%% alphametic(S, L,Base, Vars)
%%
alphametic(S, L,Base, Vars) :-
        reverse(L,Rev),
        Rev = [Last|Sums],
        term_variables(L,Vars),
        Base1 #= Base-1,
        Vars ins 0..Base1,
        all_different(Vars),
        calc_vals(Sums,Base,0,Vals),
        calc(Last,Base,Vals),
        maplist(first_larger_than_0,Sums),
                
        labeling([ff], Vars).

first_larger_than_0(Ss) :-
        element(1,Ss,S),
        S #> 0.

calc_vals([],_Base,Vals,Vals).
calc_vals([S|Ss],Base,Vals0,Vals) :-
        calc(S,Base,Val),
        Vals1 #= Vals0 + Val,
        calc_vals(Ss,Base,Vals1,Vals).

calc(X,Base, Y) :-
        length(X,Len),
        numlist(1,Len,Is),
        calc_(Is,X,Base,Len,0,Sum),
        Sum #= Y.

calc_([],_X,_Base,_Len,Sum,Sum).
calc_([I|Is],[X|Xs],Base,Len,Sum0,Sum) :-
        LenI #= Len-I,
        Sum1 #= Sum0 + X*Base^LenI,
        calc_(Is,Xs,Base,Len,Sum1,Sum).
        

print_res(L) :-
        reverse(L,Rev),
        Rev = [Last|Sums],
        reverse(Sums,Sums2),
        maplist(print_single,Sums2),
        print_single(Last),
        nl.

print_single(L) :-
        maplist(write,L),
        nl.



problem(1,Ss,Base,Ls) :-
        Ss = "SEND+MORE=MONEY",
        Base = 10,
        Ls = [[_S,E,N,_D],[M,O,_R,E],[M,O,N,E,_Y]].


problem(2,Ss,Base,Ls) :-
        Ss = "SATURN+URANUS+NEPTUNE+PLUTO=PLANETS",        
        Base = 10,
        Ls = [[S,A,T,U,R,N], 
              [U,R,A,N,U,S], 
              [N,E,P,T,U,N,E],
              [P,L,U,T,_O],    
              [P,L,A,N,E,T,S]].

problem(3,Ss,Base,Ls) :-
        Ss = "VINGT+CINQ+CINQ=TRENTE",
        Base = 10,
        Ls = [[V,I,N,G,T],[C,I,N,Q],[C,I,N,Q],[T,R,E,N,T,E]].

problem(4,Ss,Base,Ls) :-
        Ss = "EIN+EIN+EIN+EIN=VIER",
        Base = 10,
        Ls = [[E,I,N],[E,I,N],[E,I,N],[E,I,N],[V,I,E,R]].

problem(5,Ss,Base,Ls) :-
        Ss = "WRONG+WRONG=RIGHT",
        Base = 10,
        Ls = [[W,R,O,N,G],[W,R,O,N,G],[R,I,G,H,T]].


:- initialization(go).
%----------------------------------------------------- 19 hakank_swi_alphametic3
/*

  General alphametic (cryptarithmetic) solver in SWI Prolog

  This version is a port of the ECLiPSe CLP model by Joachim Schimpf:
  http://eclipseclp.org/examples/cryptarith.ecl.txt
  """
  Examples:
  %
  % ?- cryptarith([S,E,N,D] + [M,O,R,E] = [M,O,N,E,Y], 10, Sol).
  % 
  % ?- cryptarith([D,O,N,A,L,D] + [G,E,R,A,L,D] = [R,O,B,E,R,T], 10, Sol).
  % 
  % ?- cryptarith([S,I,X] + [S,I,X] + [S,I,X] + [B,E,A,S,T] = [S,A,T,A,N], 10, Sol).
  % 
  % By Jim Gillogly, rec.puzzles 2003-09-05 (base 12, 2 solutions):
  % ?- cryptarith([[K,K,K] = [6,6,6],
  %                [K,K,K] = [G,E,O,R,G,E] - [W,A,L,K,E,R] + [B,U,S,H]], 12, Sol).
  """

  It's mainly in expression/3 that I've changed compared with the ECLiPSe model.
  (I also added the Sol parameter in the cryptarith/3 predicate.)

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% SEND+MORE=MONEY
%%
go :-
        cryptarith([S,E,N,D]+[M,O,R,E]=[M,O,N,E,Y],10,Sol),
        writeln([S,E,N,D]+[M,O,R,E]=[M,O,N,E,Y]),
        writeln(sol=Sol),
        nl.

%%
%% DONALD+GERALD=ROBERT
%%
go2 :-
        cryptarith([D,O,N,A,L,D] + [G,E,R,A,L,D] = [R,O,B,E,R,T],10,Sol),
        writeln([D,O,N,A,L,D] + [G,E,R,A,L,D] = [R,O,B,E,R,T]),
        writeln(sol=Sol),
        nl.

%%
%% SEND+MANY+MORE=MONEY has 6 solutions
%% 
go3 :-
        cryptarith([S,E,N,D]+[M,A,N,Y]+[M,O,R,E]=[M,O,N,E,Y],10,Sol),
        writeln([S,E,N,D]+[M,A,N,Y]+[M,O,R,E]=[M,O,N,E,Y]),
        writeln(sol=Sol),
        nl.

%%
%%  SIX + SIX + SIX + BEAST = SATAN
%%
%% and
%%
%%  3*SIX + BEAST = SATAN
%%
go4 :-
        cryptarith([S,I,X] + [S,I,X] + [S,I,X] + [B,E,A,S,T] = [S,A,T,A,N], 10, Sol),
        writeln([S,I,X] + [S,I,X] + [S,I,X] + [B,E,A,S,T] = [S,A,T,A,N]),
        writeln(Sol).

go4b :-
        cryptarith([3]*[S,I,X] + [B,E,A,S,T] = [S,A,T,A,N], 10, Sol),
        writeln([3]*[S,I,X] + [B,E,A,S,T] = [S,A,T,A,N]),
        writeln(Sol).
        


%%
%% Interactive version: Write an expression (as a Prolog term, i.e. end with ".")
%% Note: We assume base 10.
%%
%% Examples:
%%   [S,E,N,D]+[M,O,R,E]=[M,O,N,E,Y].
%%   [D,O,N,A,L,D] + [G,E,R,A,L,D] = [R,O,B,E,R,T].
%%   [S,I,X] + [S,I,X] + [S,I,X] + [B,E,A,S,T] = [S,A,T,A,N].
%%   [S,E,N,D]+[M,A,N,Y]+[M,O,R,E]=[M,O,N,E,Y].
%% 
go5 :-
        writeln("Write a Prolog term to solve. Eg: [S,E,N,D]+[M,O,R,E]=[M,O,N,E,Y]."),
        read_term(Ls,[]),
        cryptarith(Ls,10,Sol),
        writeln(Ls),
        writeln(Sol),
        nl.


cryptarith(Equations, Base,Digits) :-
	term_variables(Equations, Digits),
        Base1 #= Base-1,
	Digits ins 0..Base1,
	all_different(Digits),
	constraint(Equations, Base),
	labeling([ff],Digits).

constraint([], _).
constraint([C|Cs], Base) :-
	constraint(C, Base),
	constraint(Cs, Base).

constraint(E1=E2, Base) :-
	expression(E1, CE1, Base),
	expression(E2, CE2, Base),
	CE1 #= CE2.
	
expression(E1+E2, CE1+CE2, Base) :-
	expression(E1, CE1, Base),
	expression(E2, CE2, Base).

expression(E1-E2, CE1-CE2, Base) :-
	expression(E1, CE1, Base),
	expression(E2, CE2, Base).

expression(E1*E2, CE1*CE2, Base) :-
	expression(E1, CE1, Base),
	expression(E2, CE2, Base).
        

expression(Digits, WeightedDigits, Base) :-
	Digits = [First|_],
	First #\= 0,
        to_num(Digits,Base,WeightedDigits).
:- initialization(go).
%----------------------------------------------------------- 20 hakank_swi_among
/*

  Global constraint among in SWI Prolog

  Among: Requires exactly 'n' variables in 'x' to take one of the values in 'v'.

  From Global Constraint Catalog:
  http://www.emn.fr/x-info/sdemasse/gccat/Camong.html
  """
  Constraint
    among(NVAR,VARIABLES,VALUES)
  ...
  Purpose
    NVAR is the number of variables of the collection VARIABLES that
    take their value in VALUES.

  Example:
  (3, <4, 5, 5, 4, 1>, <1,5,8>)

  The among constraint holds since exactly 3 values of the collection
  of values 
  <4, 5, 5, 4, 1> belong to the set of values {1, 5, 8}.
  """

  Note: among/3 is defined in http://hakank.org/swi_prolog/hakank_utils.pl

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(library(ordsets)).

go :-
        Len = 5,
        length(X,Len),
        X ins 1..8,

        V = [1,5,8],

        %% X = [4,5,5,4,1], % the example above
       
        %% N: number of elements in X that is in V
        N in 1..Len,
        N #= 3,

        among(N, X, V),

        label(X),
        writeln(v=V),
        writeln(x=X),
        writeln(n=N),
        nl.


go2 :-

        Len = 5,
        length(X,Len),
        X ins 1..8,

        V = [1,5,8],

        %% N: number of elements in X that is in V
        N in 1..Len,
        N #= 3,

        findall([x=X,n=N,v=V],
                (
                 among(N, X, V),
                 label(X)
                ),
                L),
        
        length(L,Len2),
        maplist(writeln,L),
        nl,
        writeln(len=Len2),
        nl.

%%
%% Now we let V and N be free as well,
%%
go3 :-
        Len = 5,
        length(X,Len),
        X ins 1..4,

        length(V,3),
        V ins 1..3,

        %% N: number of elements in X that is in V
        N in 1..Len,

        findall([x=X,n=N,v=V],
                (
                 among(N, X, V),
                 flatten([X,V,N],Vars),
                 label(Vars)
                ),
                L),
        
        length(L,Len2),
        maplist(writeln,L),
        nl,
        writeln(len=Len2),
        nl.
:- initialization(go).
%------------------------------------------------------- 21 hakank_swi_among_seq
/*

  Global constraint among_seq in SWI Prolog

  From Global constraint catalog:
  http://www.emn.fr/x-info/sdemasse/gccat/Camong_seq.html
  """
  Constraint

    among_seq(LOW,UP,SEQ,VARIABLES,VALUES)

  Purpose  
  Constrains all sequences of SEQ consecutive variables of the collection 
  VARIABLES to take at least LOW values in VALUES and at most UP values 
  in VALUES.

  Example
    (
    1,2,4,<9,2,4,5,5,7,2>,
    <0,2,4,6,8>
    )

  The among_seq constraint holds since the different sequences of 4 
  consecutive variables contains respectively 2, 2, 1 and 1 even numbers.
  """

  Note:
  among_seq/5 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   Len = 7,

   V = [0,2,4,6,8],

   length(X,Len),
   X ins 0..9,

   %% the example above
   %% (don't work with all_different/1 and increasing/1 though)
   % X = [9,2,4,5,5,7,2], 

   % some symmetry breaking if we let X free
   all_different(X),
   increasing(X),

   Low = 1,
   High = 2,
   SeqLen = 4,
   among_seq(Low,High,SeqLen,X,V),

   label(X),

   writeln([low=Low,high=High,seq_len=SeqLen]),
   writeln(x=X),
   writeln(v=V),
   nl,
   fail.

go.

:- initialization(go).
%---------------------------------------------------- 22 hakank_swi_arch_friends
/*

  Arch Friends puzzle (Dells Logic Puzzles) in SWI Prolog

  From http://brownbuffalo.sourceforge.net/ArchFriendsClues.html
  """
  Title: Arch Friends
  Author: Mark T. Zegarelli
  Publication: Dell Logic Puzzles
  Issue: April, 1998
  Page: 7
  Stars: 1

  Harriet, upon returning from the mall, is happily describing her four
  shoe purchases to her friend Aurora. Aurora just loves the four
  different kinds of shoes that Harriet bought 
     (ecru espadrilles,fuchsia flats, purple pumps, and suede sandals),
  but Harriet can't recall at which different store 
     (Foot Farm, Heels in a Handcart, The Shoe Palace, or Tootsies) 
  she got each pair. Can you help these two figure out the order in
  which Harriet bought each pair of shoes, and where she bought each?

  1. Harriet bought fuchsia flats at Heels in a Handcart.
  2. The store she visited just after buying her purple pumps was not
     Tootsies.
  3. The Foot Farm was Harriet's second stop.
  4. Two stops after leaving The Shoe Place, Harriet bought her suede
     sandals.

  Determine: Order - Shoes - Store 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
    N = 4,
    Shoes = [_EcruEspadrilles, FuchsiaFlats, PurplePumps,
             SuedeSandals],
    Shoes ins 1..N,

    Store = [FootFarm, HeelsInAHandcart, TheShoePalace, Tootsies],
    Store ins 1..N,

    all_different(Shoes),
    all_different(Store),

    % 1. Harriet bought fuchsia flats at Heels in a Handcart.
    FuchsiaFlats #= HeelsInAHandcart,

    % 2. The store she visited just after buying her purple pumps was not
    %    Tootsies.
    PurplePumps + 1 #\= Tootsies,

    % 3. The Foot Farm was Harriet's second stop.
    FootFarm #= 2,

    % 4. Two stops after leaving The Shoe Place, Harriet bought her suede
    % sandals.
    TheShoePalace + 2 #= SuedeSandals,

    flatten([Shoes,Store],Vars),

    label(Vars),
    writeln(shoes=Shoes),
    writeln(store=Store),
    nl.
:- initialization(go).
%------------------------------------------------------ 23 hakank_swi_assignment
/*

  Assignment problems in SWI Prolog

  Different assignments problem, both minimization and maximization. 
  See the sources of the problem below.
 
  Compare to the following MiniZinc models, from which these problems
  are taken:
  * http://www.hakank.org/minizinc/assignment.mzn
  * http://www.hakank.org/minizinc/assignment2.mzn
  * http://www.hakank.org/minizinc/assignment2_2.mzn 
  * http://www.hakank.org/minizinc/assignment3.mzn
  * http://www.hakank.org/minizinc/assignment5.mzn
  * http://www.hakank.org/minizinc/assignment6.mzn


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Test all the assignment problems.
%%
go :-
        findall(P,cost(P,_,_),Ps),
        max_list(Ps,NumProblems),
        between(1,NumProblems,N),
        once(assignment(N,Z,A)),
        writeln(z=Z),
        writeln(assignment=A),
        nl,
        fail,
        nl.

go.


%
% assignment(ProblemNumber)
% 
assignment(Problem, TotalCost, Assignments) :-

    cost(Problem, Mode, Cost),
    (
     var(TotalCost)
    ->
     format("\nProblem ~d\n", Problem)
    ),
    
    % get the dimension of the problem
    length(Cost, Rows),
    transpose(Cost,CostT),
    length(CostT,Cols),

    % decision variables: a 0..1 matrix
    new_matrix(Rows,Cols,0..1, X),
    flatten(X,Vars),
    
    % exacly one assignment per row, all rows must be assigned
    row_col_assignment(X,#=,1),
    
    % zero or one assignments per column
    transpose(X, XT),
    row_col_assignment(XT,#=<,1),

    
    % calculate TotalCost
    % TotalCost #= sum([X[I,J]*Cost[I,J] : I in 1..Rows, J in 1..Cols]),
    flatten(Cost, CostFlatten),
    scalar_product(CostFlatten,Vars,#=,TotalCost),
    
    % prepare for maximization (if needed)
    TotalCostNeg #= -TotalCost,
    
    %
    % get the optimization mode
    %
    (
     Mode == minimize
    ->
     OptValue #= TotalCost 
    ;
     OptValue #= TotalCostNeg
    ),

    %%
    %% search
    %%
    (
     var(TotalCost)
    ->
     writeln(Mode), 
     once(labeling([min(OptValue)], Vars))
    ;
     labeling([], Vars)
    ),
    % print_matrix(X),
    % writeln(totalCost=TotalCost),
    
    %
    % get the assignments.
    %
    findall(J,
            (between(1,Rows,I),
             between(1,Cols,J),
             matrix_element(X,I,J,1)
            ),
            Assignments),
    nl.


%%
%% exacly one assignment per row, all rows must be assigned
%% foreach(I in 1..Rows) sum([X[I,J] : J in 1..Cols]) #= 1 end,
%%
row_col_assignment([],_Rel,_Value).
row_col_assignment([X|Xs],Rel,Value) :-
        sum(X,Rel,Value),
        row_col_assignment(Xs,Rel,Value).


%
% cost(ProblemNumber, OptimizationMode, CostMatrix). 
%

% Data from 
% Winston "Operations Research", Assignment Problems, page 393f
% added the fifth column
% See http://www.hakank.org/minizinc/assignment.mzn
cost(1, Op, M) :-
        Op = minimize, 
        M = [[14,  5, 8,  7, 15],
             [ 2, 12, 6,  5,  3],
             [ 7,  8, 3,  9,  7],
             [ 2,  4, 6, 10,  1]].


% 
% Winston "Operations Research", page 398, swimming team example
% (original version]
% See http://www.hakank.org/minizinc/assignment2.mzn 
% 
cost(2, Op, M) :-
        Op = minimize, 
        M = [[54, 54, 51, 53], 
             [51, 57, 52, 52],
             [50, 53, 54, 56],
             [56, 54, 55, 53]].


% 
% Winston "Operations Research", page 398, swimming team example
% See http://www.hakank.org/minizinc/assignment2_2.mzn 
% expanded version
%
cost(3, Op, M) :-
        Op = minimize, 
        M = [[54, 54, 51, 53,   50,60,70,80,90,100], 
             [51, 57, 52, 52,   40,50,60,70,80, 90],
             [50, 53, 54, 56,   40,50,60,80,93, 69],
             [56, 54, 55, 53,   60,80,40,60,50,100]].


%
% Winston "Operations Research", page 399
% 
% """
% Tom Cruise, Freddy Prinze Jr, Harrison Ford, and Matt LeBlanc
% are marooned on a desert island with Jennifer Anniston,
% Courtney Cos, Gwynneth Paltrow, and Julia Roberts.
% The 'compatibility matrix' in Table 52 indicate how much happiness
% each couple would experience if the spend all their time toghether.
% The happiness earned by a couple is proportional to the fraction 
% of time the spend toghether. 
% ...
% The optimal solution requires that that each person send all their
% time with one person of the opposite sex, so this result is often
% referred to as the Marriage Theorem.
% """
%
% See http://www.hakank.org/minizinc/assignment3.mzn

% males:
% 1 "Tom Cruise"
% 2 "Freddie Prinz Jr"
% 3 "Harrison Ford"
% 4 "Mark LeBlanc"
%
% females:
% 1 "Jennifer Anniston"
% 2 "Courtney Cox"
% 3 "Gwynneth Paltrow"
% 4 "Julia Roberts"
cost(4, Op, M) :-
        Op = maximize, M = 
        [[7, 5, 8, 2],
         [7, 8, 9, 4],
         [3, 5, 7, 9],
         [5, 5, 6, 7]].


% From
%  "SAS OR 9.1 User's Guide Mathematical Programming"
% """
% Consider assigning five programmers to five programming jobs. Each
% programmer prefers specific programming job over others. [...] 
% Suppose you ask each programmer to rank the jobs according to preference
% (using 1 for the most preferred job and 5 for the least preffered job].
% PROC ASSIGN maximizes the total preference of the group by minimizing the
% sum of the preferences. 
% 
%    PROGRAMMER     JOB1 JOB2 JOB3 JOB4 JOB5
%    PROGRAMMER1    4    1    3    5    2
%              2    2    1    3    4    5
%              3    3    2    4    1    5
%              4    2    3    4    5    1
%              5    4    2    3    1    5
% 
% """
% 
% See http://www.hakank.org/minizinc/assignment5.mzn
% 
cost(5, Op, M) :-
        Op = minimize, 
        M = [[4, 1, 3, 5, 2],
             [2, 1, 3, 4, 5],
             [3, 2, 4, 1, 5],
             [2, 3, 4, 5, 1],
             [4, 2, 3, 1, 5]].

%
% From GLPK:s example assign.mod:
% """
% The assignment problem is one of the fundamental combinatorial
% optimization problems.
%
% In its most general form, the problem is as follows:
%
% There are a number of agents and a number of tasks. Any agent can be
% assigned to perform any task, incurring some cost that may vary
% depending on the agent-task assignment. It is required to perform all
% tasks by assigning exactly one agent to each task in such a way that
% the total cost of the assignment is minimized.
%
% (From Wikipedia, the free encyclopedia.] 
% """
% 
% """
% These data correspond to an example from [Christofides].
% """
%
% See http://www.hakank.org/minizinc/assignment6.mzn
%
cost(6,Op, M) :-
        Op = minimize, 
        M = [[13, 21, 20, 12,  8, 26, 22, 11],
             [12, 36, 25, 41, 40, 11,  4,  8],
             [35, 32, 13, 36, 26, 21, 13, 37],
             [34, 54,  7,  8, 12, 22, 11, 40],
             [21,  6, 45, 18, 24, 34, 12, 48],
             [42, 19, 39, 15, 14, 16, 28, 46],
             [16, 34, 38,  3, 34, 40, 22, 24],
             [26, 20,  5, 17, 45, 31, 37, 43]].

:- initialization(go).
%---------------------------------------------------- 24 hakank_swi_averbach_1_2
/*

  Seating puzzle in SWI Prolog

  From Averbach & Chein "Problem Solving Through Recreational Mathematics", 
  page 2, problem 1.2
  
  """
  Ms X, Ms Y, and Ms Z - and American woman, and Englishwoman, and a 
  Frenchwoman, but not neccessarily in that order, were seated around a 
  circular table, playing a game of Hearts. 
  Each passed three cards to the person on her right.
  Ms Y passed three hearts to the American, 
  Ms X passed the queen of spades and two diamonds to the person who
  passed her cards to the Frenchwoman
  
  Who was the American? The Englishwoman? The Frenchwoman?
  """"

  This model gives the following solution
  Table:[1,2,3]
  Women:[1,3,2]
  Placing:[American,French,English]
 
          1                      American
                       
      3      2               English   French


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   Women = [American,_English,French],
   Women ins 1..3,

   Table = [X,Y,_Z],
   Table ins 1..3,

   all_different(Table),
   all_different(Women),

   rightTo(Y, American),
   leftTo(X, French),
   
   X #= 1, % symmetry breaking

   labeling([],Women),

   writeln("Table"=Table),
   writeln("Women"=Women),
   Str = ['American', 'English', 'French'],
   %% Placing = [P : Place in Table, element(Place,Women,WI), nth(WI,Str,P)],
   findall(P,
           (member(Place,Table),
            element(Place,Women,WI),
            nth1(WI,Str,P)
           ),
           Placing
           ),
   writeln("Placing"=Placing),
   nl.



% x is right to y
rightTo(X, Y) :-
    X #= Y + 1 ;
    X #= Y - 2. % around the corner


leftTo(X, Y) :-
    rightTo(Y,X).
:- initialization(go).
%---------------------------------------------------- 25 hakank_swi_averbach_1_3
/*

  Recreational mathematics in SWI Prolog

  Problem 1.3 from 
  Averbach & Chein "Problem Solving Through Recreational Mathematics", page 2.
  """
  Armand Alloway, Basil Bennington, Col. Carton Cunningham, Durwood Dunstan, and 
  Everitt Elmsby, Esq are the five senior members of the Devonshire Polo Club. 
  Each owns a pony that is named of the wife of one of the others.
  
  - Mr Alloway's pony is named Geogette; 
  - Col Cunningham owns Jasmine
  - Mr Elmsby owns Inez
  - Francine, owned by Mr Dunstan is named after Alloways wife
  - Georgettes husband owns the pony that is named after Mr Bennington's wife
  - Helene Cunningham is the only wife who knows how to ride a horse.
  
  Who is Jasmine's husband? Who owns Helene?
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :- 
        % the men
        Men = [Alloway,Bennington,Cunningham,Dunstan,Elmsby],
        Men = [1,2,3,4,5],
        
        % the name of the wifes, and the names of the ponies
        Francine = 1,
        Georgette = 2,
        Helene = 3,
        Inez = 4,
        Jasmine = 5,

        length(Wife,5),
        Wife ins 1..5,
        length(Pony,5),
        Pony ins 1..5,
               
        all_different(Wife),
        all_different(Pony),

        % wife and pony don't have the same name
        maplist(dif, Wife,Pony),
               
        % Mr Alloway's pony is named Geogette, 
        element(Alloway,Pony,PonyAlloway),
        PonyAlloway #= Georgette,
        element(Alloway,Wife,WifeAlloway),
        WifeAlloway #\= Georgette,

        % Col Cunningham owns Jasmine
        element(Cunningham,Pony,PonyCunningham),
        PonyCunningham #= Jasmine,
        element(Cunningham,Wife,WifeCunningham),
        WifeCunningham #\= Jasmine,
 
        % Mr Elmsby owns Inez
        element(Elmsby,Pony,PonyElmsby),
        PonyElmsby #= Inez,
        element(Elmsby,Wife,WifeElmsby),
        WifeElmsby #\= Inez,

        % Francine, owned by Mr Dunstan is named after Alloways wife
        element(Dunstan,Pony,PonyDunstan),
        PonyDunstan #= Francine,
        WifeAlloway #= Francine,

        % Georgettes husband owns the pony that is named after 
        % Mr Bennington's wife
        % This is translated to:
        % "There is an X such that X is is Georgettes husband and X 
        % owns a pony with the same name as Bennington's wife."
        X in 1..5,
        element(X,Wife,WifeX),
        element(X,Pony,PonyX),
        element(Bennington,Wife,WifeBennington),
        (WifeX #= Georgette, PonyX #= WifeBennington),

        % Helene Cunningham is the only wife who knows how to ride a horse.
        WifeCunningham #= Helene,

        append([Wife,Pony],Vars),
        label(Vars),

        write(wife:Wife),nl,
        write(pony:Pony),nl,
        fail.

:- initialization(go).
%----------------------------------------------------- 26 hakank_swi_babysitting
/*

  Babysitting puzzle (Dell Logic Puzzles) in SWI Prolog

  """
  Title: Babysitting
  Author: Scott Marley
  Publication: Dell Logic Puzzles
  Issue: April, 1998
  Page: 7
  Stars: 1

  Each weekday, Bonnie takes care of five of the neighbors' children. 
  The children's names are Keith, Libby, Margo, Nora, and Otto; last 
  names are Fell, Gant, Hall, Ivey, and Jule. Each is a different
  number of years old, from two to six. Can you find each child's 
  full name and age?

  1. One child is named Libby Jule.
  2. Keith is one year older than the Ivey child, who is one year 
     older than Nora.
  3. The Fell child is three years older than Margo.
  4. Otto is twice as many years old as the Hall child.

  Determine: First name - Last name - Age 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   
   N = 5,

   Keith = 1, 
   Libby = 2, 
   Margo = 3, 
   Nora  = 4, 
   Otto  = 5,
   First = [Keith, Libby, Margo, Nora, Otto],

   Last  = [Fell, _Gant, Hall, Ivey, Jule],
   Last ins 1..N,

   length(Age,N),
   Age ins 2..6,

   all_different(Last),
   all_different(Age),

   % 1. One child is named Libby Jule.
   Libby #= Jule,
   % 2. Keith is one year older than the Ivey child, who is one year 
   %    older than Nora.
   element(Ivey, Age, AgeIvey),
   element(Keith,Age,AgeKeith),
   element(Nora,Age,AgeNora),
   AgeKeith #= AgeIvey + 1,
   AgeIvey #= AgeNora + 1,

   % 3. The Fell child is three years older than Margo.
   element(Fell, Age, AgeFell),
   element(Margo,Age,AgeMargo),
   AgeFell #= AgeMargo + 3,

   % 4. Otto is twice as many years old as the Hall child.
   element(Hall,Age,AgeHall),
   element(Otto, Age, AgeOtto),
   AgeOtto #= AgeHall*2,

   % search
   flatten([First,Last,Age], Vars),
   label(Vars),

   writeln(first=First),
   writeln(last=Last),
   writeln(age=Age),
   nl,
   
   % print solution
   FirstS = ["Keith", "Libby", "Margo", "Nora", "Otto"],
   LastS  = ["Fell", "Gant", "Hall", "Ivey", "Jule"],
   pretty_print(First,FirstS),
   pretty_print(Last,LastS),
   pretty_print([1,2,3,4,5], Age),
   nl.


%%
%% Pretty print solution
%%
pretty_print(X,S) :-
        length(X,Len),
        findall(E,
                (
                 between(1,Len,I),
                 nth1(J,X,I),
                 nth1(J,S,E)
                ),
                Sol),
        format("~t~w~12|~t~w~23|~t~w~37|~t~w~47|~t~w~64|~n",Sol).

:- initialization(go).
%---------------------------------------------------- 27 hakank_swi_bales_of_hay
/*

  Bales of hay problem in SWI Prolog

  From The Math Less Traveled, 
  "The haybaler", http://www.mathlesstraveled.com/?p=582 
  """
  You have five bales of hay.

  For some reason, instead of being weighed individually, they were weighed 
  in all possible combinations of two. The weights of each of these 
  combinations were written down and arranged in numerical order, without 
  keeping track of which weight matched which pair of bales. The weights, 
  in kilograms, were 80, 82, 83, 84, 85, 86, 87, 88, 90, and 91.

  How much does each bale weigh? Is there a solution? Are there multiple 
  possible solutions? 
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 5,
        length(Bales,N),
        Bales ins 0..50,

        Weights = [80, 82, 83, 84, 85, 86, 87, 88, 90, 91],
        
        numlist(1,10,Ws),
        maplist(bales_of_hay(N,Bales,Weights),Ws,BIJs),
        
        increasing(Bales),

        flatten([Bales,BIJs], Vars),
        labeling([down],Vars),

        writeln(Bales).


bales_of_hay(N,Bales,Weights,W, [BI,BJ]) :-
        [I,J] ins 1..N,
        I #< J,
        element(I,Bales,BI),
        element(J,Bales,BJ),
        element(W,Weights,WeightsW),
        BI + BJ #= WeightsW.
:- initialization(go).
%---------------------------------------------------- 28 hakank_swi_bin_packing2
/*

  Global constraint bin_packing in SWI Prolog

  From Global Constraint Catalogue
  http://www.emn.fr/x-info/sdemasse/gccat/sec4.35.html
  """
  Given several items of the collection ITEMS (each of them having a specific 
  weight), and different bins of a fixed capacity, assign each item to a bin 
  so that the total weight of the items in each bin does not exceed CAPACITY.
  
  Example
    <(5,<bin-3 weight-4, bin-1 weight-3,bin-3 weight-1>)>
  
   The bin_packing constraint holds since the sum of the height of items 
  that are assigned to bins 1 and 3 is respectively equal to 3 and 5. 
  The previous quantities are both less than or equal to the maximum 
  CAPACITY 5. Figure 4.35.1 shows the solution associated with the example.
  
  Remark
  
  Note the difference with the classical bin-packing problem [MT90] where 
  one wants to find solutions that minimise the number of bins. In our 
  case each item may be assigned only to specific bins (i.e., the different 
  values of the bin variable) and the goal is to find a feasible solution. 
  This constraint can be seen as a special case of the cumulative 
  constraint [AB93], where all task durations are equal to 1.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        member(Problem,[1,2]),
        writeln(problem=Problem),
        once(do_problem(Problem)),
        fail,
        nl.

go.

 
do_problem(Problem) :-
       
        %% we let the Capacity be unknown since it should be minimized
        problem(Problem,Bins, Weights,_CapacityOrig),       

        length(Weights,N),
        length(Bins,N),
        
        Capacity in 1..20,
        
        bin_packing(Bins,Weights,Capacity),
        
        flatten([Weights,Bins,Capacity],Vars),
        labeling([min(Capacity)],Vars),

        writeln(capacity=Capacity),
        writeln(bins=Bins),
        writeln(weights=Weights),
        nl.
 
 
bin_packing(Bins, Weights, Capacity) :-
        length(Bins,N),
        length(Weights,N),
        numlist(1,N,Bs),
        maplist(bin_packing_(Weights,Bins,Capacity),Bs),
        nl.

%%foreach(B in 1..N)
%%   sum([(Weights[J]*(Bins[J] #= B)) : J in 1..N ]) #=< Capacity
%%end,
bin_packing_(Weights,Bins,Capacity,B) :-
        sum_b(Bins,Weights,Capacity,B,0,Sum),
        Sum #=< Capacity.

sum_b([],_Weights,_Capacity,_B,Sum,Sum).
sum_b([Bin|Bins],[Weight|Weights],Capacity,B,Sum0,Sum) :-
        BB in 0..1,
        Bin #= B #<==> BB #= 1,
        Sum1 #= Sum0 + Weight*BB,
        sum_b(Bins,Weights,Capacity,B,Sum1,Sum).

%% The example cited above
problem(1, Bins, Weights, Capacity) :-
        Bins = [3,1,3],
        Weights = [4,3,1],
        Capacity = 5.

%% another example
problem(2, Bins, Weights, Capacity) :- 
        Bins = [3,1,3,2,2,1,2,3],
        Weights = [4,3,1,3,4,3,1,2],
        Capacity = 5.
:- initialization(go).
%--------------------------------------------------- 29 hakank_swi_breaking_news
/*

  Breaking News puzzle in SWI Prolog

  From http://brownbuffalo.sourceforge.net/BreakingNewsClues.html
  """
  Title: Breaking News
  Author: Faith Johnson
  Publication: Dell Logic Puzzles
  Issue: April, 1998
  Page: 9
  Stars: 1

  The Daily Galaxy sent its four best reporters 
      (Corey, Jimmy, Lois, and Perry) 
  to different locations 
      (Bayonne, New Hope, Port Charles, and South Amboy) 
  to cover four breaking news events 
      (30-pound baby, blimp launching, skyscraper dedication, and 
       beached whale). 
  Their editor is trying to remember where each of the reporters is. 
  Can you match the name of each reporter with the place he or she 
  was sent, and the event that each covered?

  1. The 30-pound baby wasn't born in South Amboy or New Hope.
  2. Jimmy didn't go to Port Charles.
  3. The blimp launching and the skyscraper dedication were covered, 
     in some order, by Lois and the reporter who was sent to Port Charles.
  4. South Amboy was not the site of either the beached whale or the 
     skyscraper dedication.
  5. Bayonne is either the place that Corey went or the place where 
     the whale was beached, or both.

  Determine: Reporter -- Location -- Story
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        N = 4,

        Corey = 1,
        Jimmy = 2,
        Lois  = 3,
        Perry = 4,
        _Reporters = [Corey, Jimmy, Lois, Perry],
        ReportersS = ["Corey", "Jimmy", "Lois", "Perry"],

        Locations = [Bayonne, NewHope, PortCharles, SouthAmboy],
        LocationsS = ["Bayonne", "New Hope", "Port Charles", "South Amboy"],
        Locations ins 1..N,
        
        News = [Baby, Blimp, Skyscraper, Whale],
        NewsS = ["Baby", "Blimp", "Skyscraper", "Whale"],
        News ins 1..N,
   
        all_different(Locations),
        all_different(News),

        %% use assignment (inverse) for the presentation   
        inverse(Locations, LocationsInv),
        inverse(News, NewsInv),

        %% 1. The 30-pound baby wasn"t born in South Amboy or New Hope.
        Baby #\= SouthAmboy,
        Baby #\= NewHope,
   
        %% 2. Jimmy didn"t go to Port Charles.
        Jimmy #\= PortCharles,
   
        %% 3. The blimp launching and the skyscraper dedication were covered, 
        %%    in some order, by Lois and the reporter who was sent to 
        %%    Port Charles.
        Lois #\= PortCharles,
        ( 
          (Blimp #= Lois #/\ Skyscraper #= PortCharles)
        #\/
        (Skyscraper #= Lois #/\ Blimp #= PortCharles)
        ),

        %% 4. South Amboy was not the site of either the beached whale or the 
        %%    skyscraper dedication.
        SouthAmboy #\= Whale,
        SouthAmboy #\= Skyscraper,

        %% 5. Bayonne is either the place that Corey went or the place where 
        %%    the whale was beached, or both.
        ( 
          Bayonne #= Corey #\/ Bayonne #= Whale
        ),

        flatten([Locations,News],Vars),
        labeling([],Vars),
      
        writeln(locations=Locations),
        writeln(news=News),      
        nl,
        writeln(locationsInv=LocationsInv),
        writeln(newsInv=NewsInv),
        nl,
        findall([ReporterSI,LocationsInvIS, NewsSI],
                (between(1,N,I),
                 nth1(I,ReportersS,ReporterSI),
                 nth1(I,LocationsInv,LocationsInvI),
                 nth1(LocationsInvI,LocationsS,LocationsInvIS),
                 nth1(I,NewsInv,NewsInvI),
                 nth1(NewsInvI,NewsS,NewsSI)
                ),
                Res),
        maplist(format("~s: ~s ~w\n"),Res),
        nl.
   


% print_all(What, X,S) =>
%    Len = length(X),
%    printf(What),print(": "),
%    foreach(I in 1..Len)
%       % element(IX,X,I),
%       IX = find_first_of(X,I),
%       % element(IX,S,This),
%       This = S[IX],
%       printf("%w ", This)
%    end,
%    nl.
:- initialization(go).
%-------------------------------------------------- 30 hakank_swi_broken_weights
/*

  Broken weights problem in SWI Prolog

  From
  http://www.mathlesstraveled.com/?p=701
  """
  Here's a fantastic problem I recently heard. Apparently it was first 
  posed by Claude Gaspard Bachet de Méziriac in a book of arithmetic problems 
  published in 1612, and can also be found in Heinrich Dorrie’s 100 
  Great Problems of Elementary Mathematics.
  
      A merchant had a forty pound measuring weight that broke 
      into four pieces as the result of a fall. When the pieces were 
      subsequently weighed, it was found that the weight of each piece 
      was a whole number of pounds and that the four pieces could be 
      used to weigh every integral weight between 1 and 40 pounds. What 
      were the weights of the pieces?
  
  Note that since this was a 17th-century merchant, he of course used a 
  balance scale to weigh things. So, for example, he could use a 1-pound 
  weight and a 4-pound weight to weigh a 3-pound object, by placing the 
  3-pound object and 1-pound weight on one side of the scale, and 
  the 4-pound weight on the other side.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

% :- table broken_weights_rec/2. % Not needed.

go :-
   N = 4,
   M = 40,
   broken_weights(N,M,Weights,X),
   writeln(weights=Weights),
   writeln("the matrix:"),
   print_solution(X),
   nl.

%%
%% Alternative version of the problem:
%% what is the minimal number of weights
%% for weighting all values of 1..80.
%% We don't minimize the last value of the
%% weights, so any value is good.
%%
%% One answer for N=80;
%% It needs 5 weights, for example [1,2,6,18,53]
%%
go2 :-
   M = 80,
   N in 1..M,
   indomain(N),
   writeln(n=N),

   broken_weights(N,M,Weights,X,false),
   writeln(Weights),
   print_solution(X),
   nl.

%%
%% What is the minimal number of weights
%% for weighting all values of 1..80?
%% Also, we minimize the last value of the
%% weights.'
%%
%% (The difference between this problem and go2/0 is
%% that we here minimize the last value,)
%%
%% Weights [1,3,9,27,40]
%%
%% (This takes about 1:30minutes.)
%%
go3 :-
        M = 80,
        N in 1..40,
        indomain(N),
        writeln(n=N),

        broken_weights(N,M,Weights,X,true),
        writeln(Weights),
        print_solution(X).

%%
%% Recursive variant.
%% From http://stackoverflow.com/questions/38468488/how-to-program-this-puzzle-recursively
%%
%% """
%% So, the answer is (1,3,9,27) which can be generalized as twice the sum of previous terms + 1.
%% """
%% Note that this don't solve the minimization problem, just the satisfiability problem.
%%
%% For N in 1..40:
%% [1,3,9,27,81,243,729,2187,6561,19683,59049,177147,531441,1594323,4782969,14348907,43046721,129140163,387420489,1162261467,3486784401,10460353203,31381059609,94143178827,282429536481,847288609443,2541865828329,7625597484987,22876792454961,68630377364883,205891132094649,617673396283947,1853020188851841,5559060566555523,16677181699666569,50031545098999707,150094635296999121,450283905890997363,1350851717672992089,4052555153018976267]
%%
%% (It don't need to be tabled.)
%%
go4 :-
        findall(Res,(between(1,40,N),broken_weights_rec(N,Res)),L),
        writeln(L),
        nl.

%%   
%%% default call
%%
broken_weights(N,M, Weights, X) :-
   broken_weights(N,M, Weights, X, true).

%%
%% Minimize = true -> minimize the last value of Weights
%%
broken_weights(N,M, Weights, X, Minimize) :-

        length(Weights,N),
        Weights ins 1..M,
        
        new_matrix(M,N,-1..1,X),
        
        all_distinct(Weights),
        
        %% symmetry breaking
        increasing_strict(Weights),
        
        sum(Weights,#=,M),
   
        findall(J,
                between(1,M,J),
                Js),
        maplist(scalar_product_list(Weights),X,Js),
   
        %% Minimize last weight
        element(N,Weights,WeightsN),
        
        flatten([Weights,X],Vars),
        (
         Minimize == true
        ->
         %% minimize the last weights
         labeling([min(WeightsN),enum], Vars)
        ;
         labeling([enum],Vars)
        ).

%%
%% Sum Weights and each slice of X to give this value J
%%
scalar_product_list(Weights,X,J) :-
        scalar_product2(Weights,X,J).


%%
%% Recursive version of the optimal (last) value of the broken weight problem
%% for N different weight
%% It don't need to be tables.
%%
broken_weights_rec(N, Res) :-
        broken_weights_rec1(N,_,Res).
broken_weights_rec1(N,1,1) :- N #=< 1,!.
broken_weights_rec1(N,NewSum,NewTerm) :-
        N1 #= N-1,
        broken_weights_rec1(N1,OldSum, _OldTerm),
        NewTerm #= 2*OldSum + 1,
        NewSum #= OldSum+NewTerm.

print_solution(X) :-
        length(X,Len),
        numlist(1,Len,Nums),
        transpose([Nums,X],Vars),
        % maplist(format("~d: ~w~n"),Vars).
        maplist(print_row,Vars).

print_row(Row) :-
        flatten(Row,Row2),
        format("~t~d~4|: ~t~d~10| ~t~d~15| ~t~d~20| ~t~d~25| ~n", Row2).
:- initialization(go).
%---------------------------------------------------- 31 hakank_swi_bus_schedule
/*

  Bus scheduling in SWI Prolog

  Problem from Taha "Introduction to Operations Research", page 58.
  Scheduling of buses during a day.

  This is a slightly more general model than Taha's.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   %% number of time slots
   TimeSlots = 6,
   
   %% demand: minimum number of buses at time t
   Demands = [8, 10, 7, 12, 4, 4],      
   sum(Demands,#=,MaxNum),
   
   %% result: how many buses start the schedule at time slot t?
   length(X,TimeSlots),
   X ins 0..MaxNum,

   %% the objective to minimize: the total number of buses
   sum(X,#=,NumBuses),

   %% meet the demands for this and the next time slot.
   %% Around the corner as well (hence the rotation).
   rotate(X,XRotated),
   maplist(meet_demands,X,XRotated,Demands),
   
   %% search for minimum number of buses satisfying the constraints
   labeling([min(NumBuses)], X),

   writeln([NumBuses, X]).

%%
%% Require that this and the next timeslot meets the demands
%%
meet_demands(X1,X2,Demand) :-
        X1+X2 #>= Demand.

%%
%% rotate a list (put first element -> last)
%%
rotate(L,L2) :-
        L=[X|LRest], append(LRest,[X],L2).
        
:- initialization(go).
%------------------------------------------------- 32 hakank_swi_calculs_d_enfer
/*

  Calculs d'enfer puzzle in SWI Prolog.

  Problem from Jianyang Zhou "The Manual of NCL version 1.2", page 33
  http://citeseer.ist.psu.edu/161721.html
  
  The solution is the manual is:
  """
  a = -16, b = -14, c = -13, d = -12, e = -10,
  f = 4, g = 13, h = -1, i = -3, j = -11, k = -9,
  l = 16, m = -8, n = 11, o = 0, p = -6, q = -4,
  r = 15, s = 2, t = 9, u = -15, v = 14, w = -7,
  x = 7, y = -2, z = -5.
 
  max_{#1\in [1,26]}{|x_{#1}|} minimized to 16
  """
 
  Also, see the discussion of the Z model:
  http://www.comp.rgu.ac.uk/staff/ha/ZCSP/additional_problems/calculs_enfer/calculs_enfer.ps
  (which shows the same solution).


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
        time(once(calculs_d_enfer(AA,Amax))),
        writeln(amax=Amax),
        writeln(AA).

go2 :-
        time(once(calculs_d_enfer2(AA,Amax))),
        writeln(amax=Amax),
        writeln(AA).


calculs_d_enfer(AA,Amax) :-

        NN #= 26,

        AA = [_A,_B,_C,_D,E,F,G,H,I,_J,_K,L,_M,N,O,_P,_Q,R,S,T,U,V,W,X,_Y,Z],
        AA ins -100..100,
        
        % The objective is to minimize the maximum of the absolute 
        % values of [I]
        length(Aabs,NN),
        Aabs ins 0..100,

        %% Aabs is the abs value of AA
        maplist(abs2,AA,Aabs),
        
        % we want to minimize the maximum value in AA
        Amax in 0..NN,
        max_list_clp(Aabs,Amax),
        
        all_different(AA),

        Z+E+R+O     #= 0,
        O+N+E       #= 1,
        T+W+O       #= 2,
        T+H+R+E+E   #= 3,
        F+O+U+R     #= 4,
        F+I+V+E     #= 5,
        S+I+X       #= 6,
        S+E+V+E+N   #= 7,
        E+I+G+H+T   #= 8,
        N+I+N+E     #= 9,
        T+E+N       #= 10,
        E+L+E+V+E+N #= 11,
        T+W+E+L+F   #= 12,
        
        % search
        labeling([min(Amax),ff,down,bisect], AA).

%%
%% Using sum() instead
%%
calculs_d_enfer2(AA,Amax) :-

        NN #= 26,

        AA = [_A,_B,_C,_D,E,F,G,H,I,_J,_K,L,_M,N,O,_P,_Q,R,S,T,U,V,W,X,_Y,Z],
        AA ins -100..100,
        
        length(Aabs,NN),
        Aabs ins 0..100,

        %% Aabs is the abs value of AA
        maplist(abs2,AA,Aabs),
        
        % we want to minimize the maximum value in AA
        Amax in 0..NN,
        max_list_clp(Aabs,Amax),
       
        all_different(AA),

        sum([Z,E,R,O],     #=,  0),
        sum([O,N,E],       #=,  1),
        sum([T,W,O],       #=,  2),
        sum([T,H,R,E,E],   #=,  3),
        sum([F,O,U,R],     #=,  4),
        sum([F,I,V,E],     #=,  5),
        sum([S,I,X],       #=,  6),
        sum([S,E,V,E,N],   #=,  7),
        sum([E,I,G,H,T],   #=,  8),
        sum([N,I,N,E],     #=,  9),
        sum([T,E,N],       #=, 10),
        sum([E,L,E,V,E,N], #=, 11),
        sum([T,W,E,L,F],   #=, 12),
        
        labeling([min(Amax),ff,down,bisect], AA).

%%
%% Abs is the absolute value of A (for maplist).
%%
abs2(A,Abs) :- Abs #= abs(A).
:- initialization(go).
%--------------------------------------------------------- 33 hakank_swi_changes
/*

  Coin minimization in SWI Prolog

  Which coins to use if we have to pay one exact sum and
  as few coins as possible.

  Here we use the Swedish coins before the big coin reforms (there has
  been a couple of them).

      1 kr     OneKr          (100 oere)
     50 oere   FiftyOre
     25 oere   TwentyFiveOre
     10 oere   TenOre
      5 oere   FiveOre
      1 oere   OneOre


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% changes is in oere (100 oere in 1 kr)
% 
go:-
        Change = 123,
        once(changes(LD,NumCoins,Change)),
        writeln([ld=LD,num_coins=NumCoins,change=Change]),
        nl.

% minimal changes for 1..100
go2:-
        between(1,100,Change),
        once(changes(LL,NumCoins,Change)),
        write([change:Change, numcoins:NumCoins,coins:LL]),nl,
        fail.

go2.

changes([OneKr,FiftyOre,TwentyFiveOre,TenOre,FiveOre,OneOre],NumCoins,Change) :-

        LD = [OneKr, FiftyOre, TwentyFiveOre,TenOre,FiveOre, OneOre],

        LD ins 0..100,

        % the value of coins, in oere
        100*OneKr+50*FiftyOre+25*TwentyFiveOre+10*TenOre+5*FiveOre+1*OneOre #= Change,

        % number of coins, the weights which we will minimize
        OneKr+FiftyOre+TwentyFiveOre+TenOre+FiveOre+OneOre #= NumCoins,

        labeling([min(NumCoins)], LD).


:- initialization(go).
%------------------------------------------------ 34 hakank_swi_circling_squares
/*

  Circling the squares problem in SWI Prolog

  From http://www.comp.nus.edu.sg/~henz/projects/puzzles/arith/#circling
  """
  Circling the Squares from "Amusements in Mathematics, Dudeney",
  number 43.

  The puzzle is to place a different number in each of the ten squares
  so that the sum of the squares of any two adjacent numbers shall be
  equal to the sum of the squares of the two numbers diametrically
  opposite to them. The four numbers placed, as examples, must stand as
  they are. Fractions are not allowed, and no number need contain more
  than two figures. 
  """

  There are 6 different solutions to this puzzle.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   findall(LD,circling_squares(LD),_).


circling_squares(LD) :-
   LD = [A,B,C,D,E,F,G,H,I,K],
   LD ins 1..99,
   all_different(LD),

   A #= 16,
   B #= 2,
   F #= 8,
   G #= 14,

   s(A,B,  F,G),
   s(B,C,  G,H),
   s(C,D,  H,I),
   s(D,E,  I,K),
   s(E,F,  K,A),
   
   labeling([ff], LD),
   write_list(LD).


%
% help predicate
%
s(X1,X2, Y1, Y2 ) :-
   X1*X1 + X2*X2  #= Y1*Y1 + Y2*Y2.

write_list([A,B,C,D,E,F,G,H,I,K]) :-
   format("     ~d  ~d\n", [K,A]),
   format("   ~d       ~d\n", [I,B]),
   format(" ~d          ~d\n", [H,C]),
   format("   ~d       ~d\n", [G,D]),
   format("     ~d  ~d\n", [F,E]),
   nl,nl.
   


:- initialization(go).
%--------------------------------------------------------- 35 hakank_swi_circuit
/*

  (Decomposition of) global constraint circuit in SWI Prolog

  See Global Constraint Catalog:
  http://www.emn.fr/x-info/sdemasse/gccat/Ccircuit.html

  Also, see 
  https://www.swi-prolog.org/pldoc/man?predicate=circuit/1
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-   
        % find all circuits of order 5
        N = 5,
        Print = 1,
        test1(N, Print), % circuit_me/1
        test2(N, Print). % circuit/1 (built-in)


%%
%% Benchmark: circuit_me/1 vs circuit/1 (built-in)
%%
%% Show all circuits of order 4..11 and compare
%% circuit_me/1 (test1/2) with the built-in
%% circuit/1 (test2(2). The built-in surprisingly
%% a little slower. Perhaps there's a better branching
%% to use in test2/2?
%%
%% N: 4
%% circuit_me/1: 0.01s
%% circuit/1: 0.00s
%%
%% N: 5
%% circuit_me/1: 0.01s
%% circuit/1: 0.01s
%%
%% N: 6
%% circuit_me/1: 0.03s
%% circuit/1: 0.03s
%%
%% N: 7
%% circuit_me/1: 0.17s
%% circuit/1: 0.22s
%%
%% N: 8
%% circuit_me/1: 1.23s
%% circuit/1: 1.70s
%%
%% N: 9
%% circuit_me/1: 10.36s
%% circuit/1: 14.76s
%%
%% N: 10
%% circuit_me/1: 98.37s
%% circuit/1: 144.11s
%%
%% N: 11
%% circuit_me/1: ERROR: Stack limit (1.0Gb) exceeded
%%
%%
go2 :-
        Print = 0,
        between(4,11,N),
        format("\nN: ~d\n", [N]),
        time2(test1(N, Print), Time1),
        format("circuit_me/1: ~2fs~n",[Time1]),
        time2(test2(N, Print), Time2),
        format("circuit/1: ~2fs~n",[Time2]),
        fail,
        nl.

go2.

%
%% Benchmark: time to first solution for N=20.20..10
%%
%% Here we see that the built-in is much faster than circuit_me/1.
%%
%% N: 20
%% circuit_me/1: 0.10s
%% circuit/1: 0.02s
%%
%% N: 40
%% circuit_me/1: 0.54s
%% circuit/1: 0.11s
%%
%% N: 60
%% circuit_me/1: 1.65s
%% circuit/1: 0.73s
%%
%% N: 80
%% circuit_me/1: 4.11s
%% circuit/1: 1.61s
%%
%% N: 100
%% circuit_me/1: 8.77s
%% circuit/1: 2.45s
%%
%%
go3 :-
        between(0,20,100,N),
        format("N: ~d~n",[N]),
        
        length(X1,N),
        X1 ins 1..N,
        time2(once((circuit_me(X1),labeling([ff,enum],X1))),Time1),
        % writeln(x1=X1),
        format("circuit_me/1: ~2fs~n",[Time1]),
        
        length(X2,N),
        X2 ins 1..N,
        time2(once((circuit(X2),labeling([ff,enum],X2))),Time2),
        % writeln(x2=X2),
        format("circuit/1: ~2fs~n",[Time2]),
        nl,
        fail,
        nl.

go3.

%%
%% Testing circuit_path/2
%%
go4 :- 
   N = 6,
   length(X,N),
   X ins 1..N,
   length(Path,N),
   Path ins 1..N,
   circuit_path(X,Path),

   flatten([X,Path],Vars),
   labeling([],Vars),

   writeln('x   '=X),
   writeln(path=Path),
   nl,
   fail,
   nl.  

go4.


%%
%% Generate all circuits for N using my circuit_me/1
%%
test1(N,Print) :-
        length(X,N),
        X ins 1..N, 
        findall(X, (circuit_me(X),labeling([ffc,enum],X)),L),
        length(L,Len),
        (
         Print == 1
        ->
         writeln(L),
         writeln(len=Len)
        ;
         true
        ).

%%
%% Generate all circuits for N using my circuit/1 (built-in)
%%
test2(N,Print) :-
        length(X,N),
        X ins 1..N, 
        findall(X, (circuit(X),labeling([min,enum],X)),L),
        length(L,Len),
        (
         Print == 1
        ->
         writeln(L),
         writeln(len=Len)
        ;
         true
        ).


   
       
%
% circuit(X) succeeds for the array X if it's a circuit.
%
% This implementation use an extra array (Z) for the orbit of x[1].
%
circuit_me(X) :-
        
   length(X,N),
   length(Z,N),
   Z ins 1..N,

   %
   % The main constraint is that Z[I] must not be 1 
   % until I = N, and for I = N it must be 1.
   %
   all_different(X),
   all_different(Z),
   % all_distinct(X), % slower
   % all_distinct(Z), % slower

   % put the orbit of x[1] in in z[1..n]
   element(1,X,X1),
   element(1,Z,Z1),
   X1 #= Z1,
   
   % when I = N it must be 1
   element(N,Z,ZN),
   ZN #= 1,

   %
   % Get the orbit for Z.
   %
   numlist(2,N,Is),
   maplist(orbit(X,Z),Is).
   

%% foreach(I in 2..N)
%%   element(Z[I-1],X,Z[I])
%% end.  
orbit(X,Z,I) :-
        I1 #= I-1,
        element(I1,Z,ZI1),
        element(I,Z,ZI),
        element(ZI1,X,ZI).

%%
%% As circuit/1 but with the path as second parameter.
%%
circuit_path(X,Z) :-
   length(X,N),
   length(Z,N),
   Z ins 1..N,

      %
   % The main constraint is that Z[I] must not be 1 
   % until I = N, and for I = N it must be 1.
   %
   all_different(X),
   all_different(Z),
   % all_distinct(X), % slower
   % all_distinct(Z), % slower

   % put the orbit of x[1] in in z[1..n]
   element(1,X,X1),
   element(1,Z,Z1),
   X1 #= Z1,
   
   % when I = N it must be 1
   element(N,Z,ZN),
   ZN #= 1,

   %
   % Get the orbit for Z.
   %
   numlist(2,N,Is),
   maplist(orbit(X,Z),Is).
:- initialization(go).
%-------------------------------------------------- 36 hakank_swi_clock_triplets
/*

  Clock Triplet in SWI Prolog

  Problem formulation
  http://www.f1compiler.com/samples/Dean 20Clark 27s 20Problem.f1.html
  """
  Dean Clark's Problem (Clock Triplets Problem)
 
  The problem was originally posed by Dean Clark and then presented
  to a larger audience by Martin Gardner. 
 
  The problem was discussed in Dr. Dobbs's Journal, May 2004 in an article 
  by Timothy Rolfe. According to the article, in his August 1986 column for 
  Isaac Asimov's Science Fiction Magazine, Martin Gardner presented this problem:
  
    Now for a curious little combinatorial puzzle involving the twelve
    numbers on the face of a clock. Can you rearrange the numbers (keeping
    them in a circle) so no triplet of adjacent numbers has a sum higher 
    than 21? This is the smallest value that the highest sum of a triplet
    can have.
  ""


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 12,
        Sum = 21,
        P = 3, %% number in each list to sum
        time(findall(Xs,clock_triplet(N, P, Sum, Xs),L)),
        maplist(writeln, L),
        length(L,Len),
        format("Sum: ~d Number of solutions: ~d\n",[Sum,Len]),
        nl.

%%
%% checks if 21 really is the smallest number (it is).
%%
go2 :-
   N = 12,
   Sum in 2..21,
   indomain(Sum),

   P = 3, % number in each list to sum
   findall(Xs,clock_triplet(N, P, Sum, Xs),L),
   length(L,Len),
   format("Sum: ~d Number of solutions: ~d\n",[Sum,Len]),
   (Len == 0
   ->
    fail
   ).
go2.


%%
%% This is slighly more general version where
%% P is the length of the tuples to sum
%% and N is the length of Xs (the numbers in the "clock")
%%
clock_triplet(N, P, Sum, Xs) :-

   length(Xs,N),
   Xs ins 1..N,

   all_distinct(Xs),

   numlist(0,N,Is),
   P1 #= P-1,
   numlist(0,P1,Ks),   
   maplist(check_sum(N,Sum,Xs,Ks),Is),

   
   %% symmetry breaking
   element(1,Xs,1),
   element(2,Xs,Xs2),
   element(N,Xs,XsN),   
   Xs2 #> XsN,

   labeling([min,bisect],Xs).

check_sum(N,Sum,Xs,Ks,I) :-
        check_sum_(Ks,Xs,I,N,0,KSum),
        KSum #=< Sum.

check_sum_([],_Xs,_I,_N,KSum,KSum).
check_sum_([K|Ks],Xs,I,N,KSum0,KSum) :-
        I1 #= 1+((I+K) mod N),
        element(I1,Xs,XsI1),
        KSum1 #= KSum0+XsI1,
        check_sum_(Ks,Xs,I,N,KSum1,KSum).
        
        
:- initialization(go).
%---------------------------------------------------------- 37 hakank_swi_coins3
/*

  Two coin applications in SWI Prolog

  From "The ECLiPSe Book" pages 99f and 234 ff
  The solution in ECLiPSe is at page 236.

  """
  What is the minimum number of coins that allows one to pay _exactly_
  any amount smaller than one Euro? Recall that there are six different
  euro cents, of denomination 1, 2, 5, 10, 20, 50
  """

  There are 4 optimal solutions (8 coins):
    x=[1,2,1,2,1,1]
    x=[1,2,2,1,1,1]
    x=[2,1,1,2,1,1]
    x=[2,1,2,1,1,1]


  The other application (go2/0) is to create the denominations
  which minimize the number of coins used in this way.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% First coin problem
%
go :-
       
   % the different coin values
   Variables = [1,2,5,10,25,50],

   length(Variables,N),

   length(Xs,N),
   Xs ins 0..99,

   % total number of the coins used
   NumCoins in 0..99,
   sum(Xs,#=,NumCoins),
   
   % This is the "main loop":
   % Checks that all changes from 1 to 99 can be made.
   % To be honest I have forgotten exactly how
   % the ECLiPSe solution looked like.
   % Here is one way.
   coins1_constraint(Xs,Variables,N),
   
   labeling([min(NumCoins)], Xs),

   writeln(num_coins=NumCoins),
   writeln(x=Xs),
   nl.


coins1_constraint(Xs,Variables,N) :-
        numlist(1,99,Js),
        maplist(do_coins(Xs,N,Variables),Js).

do_coins(Xs,N,Variables,J) :-
        length(Tmp,N),
        Tmp ins 0..99,
        %% scalar_product(Variables,Tmp,#=,J),
        scalar_product2(Variables,Tmp,J),
        maplist(tmp_lesseq_than_x,Tmp,Xs).
   
tmp_lesseq_than_x(Tmp,X) :-
        Tmp #=< X.
                
%
% A related problem:
%
% We can see that there is a set with just 5 different 
% denominations for the 8 coin change. However, it requires that 
% more than one coin of some of the denominations
%
% Result: 
%   num_coins:8
%   variables:[1,2,4,11,33]
%   x:[1,1,2,2,2]
%                               %
% 
% Is there a set of coin denominations which make it possible to change 
% into 1..99 with less than 8 coins?
% 
% Answer: Yes, there is. For example the following configuration:
%                                %
% This is done by this constraint:
%       NumCoins #=< 8,
%
% num_coins:7
% variables:[1,2,3,6,12,25,50]
% x:[1,1,1,1,1,1,1]
% 
% Though, it come with a cost of using 7 different coin denominations.
%
go2 :-

        %% Number of coin denominations
        N in 1..10,
        indomain(N),
        writeln(n=N),

        %% we assume that there are no coin of a denomination larger than 50.
        length(Variables,N),
        Variables ins 1..50,

        all_different(Variables),
        increasing_strict(Variables),

        length(Xs,N),
        Xs ins 1..2, % we'll use either one or two coins

        %% total number of the coins used
        %% in the exchange
        %% optimize over total number of coins
        sum(Xs,#=,NumCoins),

        %% Check the combinations
        numlist(1,99,Js),
        maplist(do_coins(Xs,N,Variables),Js),
  
        %% Now, can we manage with less than 8 coins?
        NumCoins #< 8,

        %% search
        flatten([Variables,Xs],Vars),
        labeling([ff,bisect,min(NumCoins)],Vars),
        
        writeln(num_coins=NumCoins), 
        writeln(variables=Variables),
        writeln(x=Xs), nl, nl.
:- initialization(go).
%------------------------------------------------------ 38 hakank_swi_coins_grid
/*

  Coins grid puzzle in SWI Prolog

  Problem from 
  Tony Hürlimann: "A coin puzzle - SVOR-contest 2007"
  http://www.svor.ch/competitions/competition2007/AsroContestSolution.pdf
  """
  In a quadratic grid (or a larger chessboard) with 31x31 cells, one 
  should place coins in such a way that the following conditions are 
  fulfilled:
    1. In each row exactly 14 coins must be placed.
    2. In each column exactly 14 coins must be placed.
    3. The sum of the quadratic horizontal distance from the main
       diagonal of all cells containing a coin must be as small as possible.
    4. In each cell at most one coin can be placed.

   The description says to place 14x31 = 434 coins on the chessboard 
   each row containing 14 coins and each column also containing 14 coins.
  """

  Note: This problem is quite hard for most C(L)P solvers.
  A MIP solver solves the full 14,31 problem in millis.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   N = 7, % 31,
   C = 3, % 14,
   time(once(coins(N, C))).


%%
%% standard CLP(FD) approach
%%
coins(N,C) :-
   
   new_matrix(N,N,0..1, X),

   %% quadratic horizontal distance
   total_sum(X, N, N, Sum),

   %% Rows and columns sums to C,
   sums(X, C),
   transpose(X, Transposed),
   sums(Transposed, C),

   flatten(X, Vars),
   labeling([min(Sum),down, bisect],Vars),
   writeln(sum=Sum),
   print_matrix(X).

%%
%% Total sum of X[I,J]'s
%%
total_sum(X, Rows, Cols, Sum) :-
        findall([I,J], (between(1,Rows,I), between(1,Cols,J)), Ixes),
        total_sum_(Ixes, X, 0, Sum).

total_sum_([], _X, Sum0, Sum) :-
        Sum0 #= Sum.
total_sum_([[I,J]|IJs],X, Sum0, TotalSum) :-
        matrix_element(X,I,J, Val),
        A #= abs(I-J),
        Sum1 #= (Val*A*A)+Sum0,
        total_sum_(IJs,X,Sum1, TotalSum).

% sum of the rows and cols are #= Sum 
sums([], _Sum).
sums([L|Ls], Sum) :-
        sum(L, #=, Sum),
        sums(Ls, Sum).


:- initialization(go).
%------------------------------------------- 39 hakank_swi_combinatorial_auction
/*

  Combinatorial auction in SWI Prolog

  http://en.wikipedia.org/wiki/Combinatorial_auction
  """
  A combinatorial auction is an auction in which bidders can place
  bids on combinations of items, or "packages," rather than
  just individual items. Simple combinatorial auctions have been
  used for many years in estate auctions, where a common procedure
  is to auction the individual items and then at the end to accept
  bids for packages of items.
  """

  This simple example is from the lecture slides
  Constraint Satisfaction Problems, Constraint Optimization
  by Bernhard Nebel and Stefan Wölfl
  http://www.informatik.uni-freiburg.de/~ki/teaching/ws0910/csp/csp10-handout4.pdf
  """
  In combinatorial auctions, bidders can give bids for set of items.
  The auctioneer [then] has to generate an optimial selection, e.g.
  one that maximizes revenue.

  Definition
  The combinatorial auction problem  is specified as follows:
    Given: A set of items Q = {q1,...,qn} and a set of bids
           B = {b1,...,bm} such that each bid is bi = (Qi, ri),
           where Qi (= Q and ri is a strictly positive real number.
    Task: Find a subset of bids B'(= B such that any two bids in B'
          do not share an item maximizing Sum(Qi,ri) (= Biri.

  ...

  Example Auction

  Consider the following auction:
    b1 = {1,2,3,4}, r1 = 8
    b2 = {2,3,6},   r2 = 6
    b3 = {1,4,5},   r3 = 5
    b4 = {2,8},     r4 = 2
    b5 = {5,6},     r5 = 2

  What is the optimal assignment?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        run(1).

go2 :-
        run(2).

go3 :-
        run(3).


run(Problem) :-
        problem(Problem,NumItems,NumBids,Packages,Bids),
        combinatorial_auction(NumItems,NumBids,Packages,Bids, X, Total),
        writeln(total=Total),
        writeln(x=X),
        findall(P,(between(1,NumBids,I),
                   element(I,X,1),
                   nth1(I,Packages,P)
                  ),
                Ps),
        writeln(packages=Ps),
        nl.

combinatorial_auction(NumItems,NumBids,Packages,Bids, X, Total) :-
        length(X,NumBids),
        X ins 0..1,

        %% Total #= sum([X[I]*Bids[I] : I in 1..NumBids]),
        scalar_product(Bids,X,#=,Total),

        %% ensure that each items is selected atmost once
        numlist(1,NumItems,Js),
        maplist(selected_atmost_once(X,NumBids,Packages),Js),
        
        labeling([max(Total)], X).

%% ensure that each items is selected atmost once
selected_atmost_once(X,NumBids,Packages,J) :-
        findall(I,
                (between(1,NumBids,I),
                 nth1(I,Packages,Package),
                 member(J,Package)
                ),
                Is),
        extract_from_indices(Is,X,Xs),
        sum(Xs,#=<,1).





%% The example cited above
problem(1,NumItems,NumBids,Packages,Bids) :-
        NumItems = 7,
        NumBids = 5,
        Packages =
        [[1,2,3,4],
         [2,3,6],
         [1,4,5],
         [2,7],
         [5,6]],
        Bids = [8,6,5,2,2].


%%
%% From Numberjack Tutorial, page 24 (slide 51/175)
%%
problem(2,NumItems,NumBids,Packages,Bids) :-
        NumItems = 4,
        NumBids = 5,
        Packages =
        [[1,2],
         [1,3],
         [2,4],
         [2,3,4],
         [1]],
        Bids = [8,6,5,2,2].

problem(3,NumItems,NumBids,Packages,Bids) :-
        NumItems = 10,
        NumBids = 5,
        Packages =
        [[2,5,6],
         [1,4,7,9,10],
         [2,4,8,10],
         [2,3,4,6,7],
         [1,5,8]],
        Bids = [8,6,5,2,2].
:- initialization(go).
%----------------------------------------------- 40 hakank_swi_contracting_costs
/*

  Contracting costs  in SWI Prolog

  From 
  http://www.comp.nus.edu.sg/~henz/projects/puzzles/arith/index.html
  """
  Contracting Costs    from "Mathematical Puzzles of Sam Loyd, Volume 2",
  number 20.

  A contractor planning the construction of a house found that he would
  have to pay:

    * $ 1,100 to the paper hanger and the painter,
    * $ 1,700 to the painter and plumber,
    * $ 1,100 to the plumber and electrician,
    * $ 3,300 to the electrician and carpenter,
    * $ 5,300 to the carpenter and mason,
    * $ 3,200 to the mason and painter. 

  What does each man charge for his services?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall([ph:PH, pa:Pa, pl:Pl, el:El, ca:Ca, ma:Ma], contracting_costs([PH, Pa, Pl, El, Ca, Ma]), L),
        writeln(L).

contracting_costs(LD) :-
        LD = [PH, Pa, Pl, El, Ca, Ma],
        LD ins 1..5300,
        1100 #= PH + Pa,
        1700 #= Pa + Pl,
        1100 #= Pl + El,
        3300 #= El + Ca,
        5300 #= Ca + Ma,
        3200 #= Ma + Pa,

        label(LD).
:- initialization(go).
%---------------------------------------------------- 41 hakank_swi_costas_array
/*

  Costas array in SWI Prolog

  From http://mathworld.wolfram.com/CostasArray.html:
  """
  An order-n Costas array is a permutation on {1,...,n} such
  that the distances in each row of the triangular difference
  table are distinct. For example, the permutation {1,3,4,2,5}
  has triangular difference table {2,1,-2,3}, {3,-1,1}, {1,2},
  and {4}. Since each row contains no duplications, the permutation
  is therefore a Costas array.
  """
  Also see
  http://en.wikipedia.org/wiki/Costas_array

  [From my MiniZinc model:] 
  This model is based on Barry O'Sullivan's MiniZinc model
  (http://www.g12.cs.mu.oz.au/mzn/costas_array/CostasArray.mzn)
  Here are the two rather simple differences 
  (marked by "hakank" below)
   1) no symmetry breaking on the order of the Costas array
   2) fixes the lower triangular matrix in the difference
      matrix to -n+1
  
  Since there is no symmetry breaking of the order of the Costas 
  array it gives all the solutions for a specific length of 
  the array, e.g. those 
  listed in http://mathworld.wolfram.com/CostasArray.html
  
  1	1	(1)
  2	2	(1, 2), (2,1)
  3	4	(1, 3, 2), (2, 1, 3), (2, 3, 1), (3, 1, 2)
  4	12	(1, 2, 4, 3), (1, 3, 4, 2), (1, 4, 2, 3), (2, 1, 3, 4), 
                (2, 3, 1, 4), (2, 4, 3, 1), (3, 1, 2, 4), (3, 2, 4, 1), 
                (3, 4, 2, 1), (4, 1, 3, 2), (4, 2, 1, 3), (4, 3, 1, 2)
  ....
  
  See http://www.research.att.com/~njas/sequences/A008404
  for the number of solutions for n=1..
  1, 2, 4, 12, 40, 116, 200, 444, 760, 2160, 4368, 7852, 12828, 
  17252, 19612, 21104, 18276, 15096, 10240, 6464, 3536, 2052, 
  872, 200, 88, 56, 204,...

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Show all 444 solutions for N=8.
%%
go :-
        N = 8,
        findall(Costas,costas(N,Costas,print),L),
        length(L,Len),
        writeln(len=Len),
        nl.

%%
%% Number of solutions for N=2..10
%%
go2 :-
        between(2,10,N),
        findall(Costas,costas(N,Costas,noprint),L),
        length(L,Len),
        writeln(N=Len),
        fail,
        nl.

go2.


costas(N,Costas,Print) :-
   
        length(Costas,N),
        Costas ins 1..N,

        NegN1 #= -N+1,
        N1 #= N-1,
        new_matrix(N,N,NegN1..N1,Differences),
   
        %%
        %% hakank: Here are my two changes
        %%
        %% 1) I skipped this constraint since I want 
        %%    to generate all solutions.
        %% Costas[1] #< Costas[N],
   
        %% 2) Fix the values in the lower triangle in the
        %% difference matrix to -n+1. This removes variants 
        %% of the difference matrix for the the same Costas array.
        findall([I,J],
                (between(1,N,I),
                 between(1,I,J)
                ),
                IJs1),
        maplist(fix_lower_triangle(Differences,NegN1),IJs1),
   
        %% hakank: All the following constraints below are from 
        %% Barry O'Sullivans's original MiniZinc model.
        all_different(Costas),

        %% "How do the positions in the Costas array relate 
        %%  to the elements of the distance triangle."
        findall([I,J],
                (between(1,N,I),
                 I1 #= I+1,
                 between(I1,N,J)
                ),
                IJs2),
        maplist(position_distance_triangle(Differences,Costas),IJs2),
        

        %% "All entries in a particular row of the difference 
        %%  triangle must be distint."
        numlist(1,N1,Is3),
        maplist(distinct_row(Differences,N),Is3),
                
        %% "All the following are redundant - only here to speed up search."
   
        %% "We can never place a 'token' in the same row as any other."
        maplist(no_place_token(Differences),IJs2),        
        findall([K,L],
                (between(3,N,K),
                 K1 #= K+1,
                 between(K1,N,L)
                ),
                KLs),
        maplist(differences_add_eq(Differences),KLs),
        
        flatten([Costas,Differences],Vars),
        labeling([ff,enum],Vars),
        
        (
         Print == print
        ->
         writeln(costas=Costas),
         maplist(print_row(NegN1),Differences),
         nl
        ;
         true
        ).

print_row(NegN1,DifferenceRow) :-
        findall(E,
                (member(E,DifferenceRow),
                 E #\= NegN1
                ),
               Es),
        writeln(Es).
        

%% 2) Fix the values in the lower triangle in the
%% difference matrix to -n+1. This removes variants 
%% of the difference matrix for the the same Costas array.
fix_lower_triangle(Differences,NegN1,[I,J]) :-
        matrix_element(Differences,I,J,DIJ),
        DIJ #= NegN1.

%% "How do the positions in the Costas array relate 
%%  to the elements of the distance triangle."
position_distance_triangle(Differences,Costas,[I,J]) :-
        element(J,Costas,CJ),
        JI #= J-I,
        element(JI,Costas,CJ1),
        CDiff #= CJ - CJ1,
        matrix_element(Differences,I,J,CDiff).

%% "All entries in a particular row of the difference 
%%  triangle must be distint."
distinct_row(Differences,N,I) :-
        I1 #= I+1,
        numlist(I1,N,Js),
        N1 #= N-1,
        findall([I,J],
                (between(1,N1,I),
                 member(J,Js)
                ),
                IJs
               ),
        extract_from_indices2d(IJs,Differences,Ds),
        all_different(Ds).

        

%% "We can never place a 'token' in the same row as any other."
%% foreach(I in 1..N, J in I+1..N)  Differences[I,J] #!= 0 end,
no_place_token(Differences,[I,J]) :-
        matrix_element(Differences,I,J,DIJ),
        DIJ #\= 0.


%% foreach(K in 3..N, L in K+1..N)
%%   Differences[K-2,L-1] + Differences[K,L] #= 
%%   Differences[K-1,L-1] + Differences[K-1,L]
%% end,
differences_add_eq(Differences,[K,L]) :-
        K2 #= K-2,
        K1 #= K-1,
        L1 #= L-1,
        matrix_element(Differences,K2,L1,DK2L1),
        matrix_element(Differences,K,L,DKL),
        matrix_element(Differences,K1,L1,DK1L1),
        matrix_element(Differences,K1,L,DK1L),
        DK2L1 + DKL #= DK1L1 + DK1L.
:- initialization(go).
%------------------------------------------------------- 42 hakank_swi_countdown
/*

  Countdown in SWI Prolog

  See Peter Ludemann's SWI-Prolog Discord post 
     Prolog program is much slower than Haskell – why?
     https://swi-prolog.discourse.group/t/prolog-program-is-much-slower-than-haskell-why/6266/16

  as well as his GitHub repo: https://github.com/kamahen/nerdle

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
go :-
    L = [1,3,5,10,25,50],
    Target = 999,
    countdown(L,Target,X,Ops),
    p(X,Ops),
    nl,
    fail,
    nl.
go.

countdown(L,Target, X,Ops) :-
    length(L,LLen),
    between(2,LLen,Len),
    length(X,Len),
    list_domain_disjunction(L,Domain),        
    X ins Domain,
    
    length(Y,Len),
    Y ins -100000000..100000000,
    OpsLen is Len-1,
    
    length(Ops,OpsLen),
    Ops ins 1..4,

    % Note: This should really be global_cardinality/2
    %       but I'm lazy...
    all_different(X),

    % Ensure that the equation is correct
    check_c(X,Ops,[],Y),
    last(Y,Target),
        
    flatten([X,Y,Ops],Vars),
    
    labeling([ffc,enum,down],Vars).

% Create the equation
check_c([],_Op,Y,Y).
check_c([V],_Op,Y,[V|Y]).
check_c([V1,V2|Ls],[Op|Ops],Y0,[V|Y]) :-
    make_op(V1,V2,Op,V),
    check_c([V|Ls],Ops,Y0,Y).

% Convert the operatos number to constraints
make_op(A,B, Op,Res) :-
  (Op #= 1) #==> (Res #= A + B),
  (Op #= 2) #==> (Res #= A - B),
  (Op #= 3) #==> (Res #= A * B),
  (Op #= 4) #==> (A #= Res * B). % Res = A / B division 

% convert a list of integers to a proper clpfd domain
list_domain_disjunction([D|Ds],Disj) :-
        foldl(disj,Ds,D,Disj).
disj(A,B,C) :-C = \/(B,A).

% Print the solution
p(X,Ops) :-
    length(X,Len),
    forall(between(1,Len,_),write("(")),
    p_(X,Ops).
p_([],_).
p_([V],_) :- format("~d)",[V]).
p_([V1|Vs],[Op|Ops]) :-
    OpsV = [+,-,*,//],
    nth1(Op,OpsV,OpS),
    format("~d) ~w ",[V1,OpS]),
    p_(Vs,Ops).

:- initialization(go).
%---------------------------------------------------- 43 hakank_swi_covering_opl
/*

  Set covering problem (OPL) in SWI Prolog

  This example is from the OPL example covering.mod
  """
  Consider selecting workers to build a house. The construction of a 
  house can be divided into a number of tasks, each requiring a number of 
  skills (e.g., plumbing or masonry). A worker may or may not perform a 
  task, depending on skills. In addition, each worker can be hired for a 
  cost that also depends on his qualifications. The problem consists of 
  selecting a set of workers to perform all the tasks, while minimizing the 
  cost. This is known as a set-covering problem. The key idea in modeling 
  a set-covering problem as an integer program is to associate a 0/1 
  variable with each worker to represent whether the worker is hired. 
  To make sure that all the tasks are performed, it is sufficient to 
  choose at least one worker by task. This constraint can be expressed by a 
  simple linear inequality.
  """

  Solution from the OPL model:
  """
  Optimal solution found with objective: 14
  crew= {23 25 26}
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        NumWorkers = 32,

        %% The workers qualified for the works
        Qualified = 
        [
            [  1,  9, 19, 22, 25, 28, 31 ],
            [  2, 12, 15, 19, 21, 23, 27, 29, 30, 31, 32 ],
            [  3, 10, 19, 24, 26, 30, 32 ],
            [  4, 21, 25, 28, 32 ],
            [  5, 11, 16, 22, 23, 27, 31 ],
            [  6, 20, 24, 26, 30, 32 ],
            [  7, 12, 17, 25, 30, 31 ] ,
            [  8, 17, 20, 22, 23  ],
            [  9, 13, 14, 26, 29, 30, 31 ],
            [ 10, 21, 25, 31, 32 ],
            [ 14, 15, 18, 23, 24, 27, 30, 32 ],
            [ 18, 19, 22, 24, 26, 29, 31 ],
            [ 11, 20, 25, 28, 30, 32 ],
            [ 16, 19, 23, 31 ],
            [  9, 18, 26, 28, 31, 32 ]
        ],
        
        %% cost per worker
        Cost = [1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 
                3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 8, 9 ],


        %% which workers to hire        
        length(Hire,NumWorkers),
        Hire ins 0..1,

        maplist(check_hired(Hire),Qualified),       
        scalar_product(Cost,Hire,#=,TotalCost),

        % search
        flatten(Hire,Vars),
        labeling([min(TotalCost),ffc],Vars),

        writeln(total_cost=TotalCost),
        writeln(hire=Hire),
        findall(H,(between(1,NumWorkers,H), nth1(H,Hire,1)), ToHire),
        writeln(to_hire=ToHire),
        nl.

%%
%% Ensure that for each job there is at least one qualified
%%
check_hired(Hire,Jobs) :-
        % findall(HJ,(member(H,Job),writeln(h=H),element(H,Hire,HJ)),Qualified), % don't work
        extract_from_indices(Jobs,Hire,Qualified),
        sum(Qualified,#>=,1).
:- initialization(go).
%-------------------------------------------------------- 44 hakank_swi_crossbar
/*

  Crossbar problem in SWI Prolog

  Prolog/FD benchmark problem (crossbar.pl in B Prolog)

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        List= [V1,V2,V3,V4,V5,V6,V7,V8,V9,V10,
               V11,V12,V13,V14,V15,V16,V17,V18,V19,V20],
        length(List,N),
        List ins 0..N,

        %% Note:
        %% SWI-Prolog don't accept
        %%     V in [1,2,3,4,5]
        %% Instead one must write
        %%     V in 1\/2\/3\/4\/5
        make_disj_domain(V1, [2,4,6,7,8,9,10,11,16,18,20]),
	make_disj_domain(V2,[2,3,4,8,10,12,17,19,20]),
	make_disj_domain(V3,[2,3,4,6,8,9,11,17,18]),
	make_disj_domain(V4,[1,3,4,5,6,7,9,10,11,13,18]),
	make_disj_domain(V5,[1,5,6,10,12,13,14,17,18,19,20]),
	make_disj_domain(V6,[1,3,10,12,15,16,19,20]),
	make_disj_domain(V7,[5,8,9,10,17]),
        make_disj_domain(V8,[1,2,5,6,7,12,14,15,16,17]),
	make_disj_domain(V9,[1,2,3,4,5,7,11,12,13,14,16,17,20]),
	make_disj_domain(V10,[4,5,8,9,10,11,13,17,18,19,20]),
	make_disj_domain(V11,[2,4,6,7,8,10,12,14,17,18,20]),
	make_disj_domain(V12,[3,7,8,9,10,13,14,15,18,20]),
	make_disj_domain(V13,[2,3,6,7,8,9,11,13,16,20]),
	make_disj_domain(V14,[2,3,5,6,8,9,12,13,15,16,17,18]),
	make_disj_domain(V15,[2,7,8,10,12,13,14,15,16,17,18,20]),
	make_disj_domain(V16,[1,2,6,11,13,16,17,19,20]),
	make_disj_domain(V17,[1,3,6,9,13,19]),
	make_disj_domain(V18,[1,3,6,7,8,10,13,14,19]),
        make_disj_domain(V19,[1,2,3,4,5,6,7,9,11,12,14,16,17,19,20]),
        make_disj_domain(V20,[3,5,6,7,8,9,11,12,13,14,16,18,20]),

	all_different(List),

        label(List),

        writeln(List),
        nl.

:- initialization(go).
%------------------------------------------------------ 45 hakank_swi_crossword2
/*

  Crossword problem in SWI Prolog

  This is a standard example for constraint logic programming. See e.g.
 
  http://www.cis.temple.edu/~ingargio/cis587/readings/constraints.html
  """
  We are to complete the puzzle
 
       1   2   3   4   5
     +---+---+---+---+---+       Given the list of words:
   1 | 1 |   | 2 |   | 3 |             AFT     LASER
     +---+---+---+---+---+             ALE     LEE
   2 | # | # |   | # |   |             EEL     LINE
     +---+---+---+---+---+             HEEL    SAILS
   3 | # | 4 |   | 5 |   |             HIKE    SHEET
     +---+---+---+---+---+             HOSES   STEER
   4 | 6 | # | 7 |   |   |             KEEL    TIE
     +---+---+---+---+---+             KNOT
   5 | 8 |   |   |   |   |
     +---+---+---+---+---+       
   6 |   | # | # |   | # |       The numbers 1,2,3,4,5,6,7,8 in the crossword
     +---+---+---+---+---+       puzzle correspond to the words 
                                                   that will start at those locations.
  """

  The model was inspired by Sebastian Brand's Array Constraint 
  cross word example but it is slightly generalized
  * http://www.cs.mu.oz.au/~sbrand/project/ac/
  * http://www.cs.mu.oz.au/~sbrand/project/ac/examples.pl


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        overlapping(Overlappings),
        length(Overlappings,NumOverlappings),
        words(Words),
        length(Words,NumWords),

        ESize = 8,

        %% decision variables
        length(E,ESize),
        E ins 1..NumWords,
        
        all_different(E),

        numlist(1,NumOverlappings,Is),
        maplist(do_overlappings(Overlappings,E,Words),Is),
        label(E),

        writeln(e=E),
        numlist(1,ESize,Ws),
        maplist(print_word(Words,E),Ws),
        nl.

print_word(Words,E,I) :-
        nth1(I,E,EI),
        nth1(EI,Words,Word),
        format("~w (~w) ~s~n",[I,EI,Word]).
        

do_overlappings(Overlappings,E,Words,I) :-
        
        %% first word        
        matrix_element(Overlappings,I,1,O1),       
        %% position in first word
        matrix_element(Overlappings,I,2,O2),
        %% second word
        matrix_element(Overlappings,I,3,O3),
        %% position in second word
        matrix_element(Overlappings,I,4,O4),
        
        %% fetch the two E variables to use        
        nth1(O1,E,E1),
        nth1(O3,E,E2), 

        %% Get the words
        nth1(E1,Words,Word1),
        nth1(E2,Words,Word2),

        Word1 \= Word2,

        %% The same char in the overlapping.
        nth1(O2,Word1,C),
        nth1(O4,Word2,C).

%
% Definition of the words. A _ is used to fill the row.
%
words(Words) :- 
        Words= [[h, o, s, e, s], %%  HOSES
                [l, a, s, e, r], %%  LASER
                [s, a, i, l, s], %%  SAILS
                [s, h, e, e, t], %%  SHEET
                [s, t, e, e, r], %%  STEER
                [h, e, e, l],    %%  HEEL
                [h, i, k, e],    %%  HIKE
                [k, e, e, l],    %%  KEEL
                [k, n, o, t],    %%  KNOT
                [l, i, n, e],    %%  LINE
                [a, f, t],       %%  AFT
                [a, l, e],       %%  ALE
                [e, e, l],       %%  EEL
                [l, e, e],       %%  LEE
                [t, i, e]].      %%  TIE


%
% Overlappings of the words
% As an array for easy acces 
%
overlapping(Overlapping) :- 
        Overlapping =
        [[1, 3, 2, 1], 
         [1, 5, 3, 1], 
         
         [4, 2, 2, 3], 
         [4, 3, 5, 1], 
         [4, 4, 3, 3], 
         
         [7, 1, 2, 4], 
         [7, 2, 5, 2], 
         [7, 3, 3, 4], 
         
         [8, 1, 6, 2], 
         [8, 3, 2, 5], 
         [8, 4, 5, 3], 
         [8, 5, 3, 5]].  
:- initialization(go).
%---------------------------------------------------------- 46 hakank_swi_crypta
/*

  Cryptarithmetic puzzle in SWI Prolog

  Prolog benchmark problem GNU Prolog (crypta.pl)
  """
  Name           : crypta.pl                                              
  Title          : crypt-arithmetic                                       
  Original Source: P. Van Hentenryck's book                               
  Adapted by     : Daniel Diaz - INRIA France                             
  Date           : September 1992                                         
                                                                         
  Solve the operation:                                                    
                                                                        
     B A I J J A J I I A H F C F E B B J E A                              
   + D H F G A B C D I D B I F F A G F E J E                              
   -----------------------------------------                              
   = G J E G A C D D H F A F J B F I H E E F                              
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        LD = [A,B,C,D,E,F,G,H,I,J],
        LD ins 0..9,
        Sr1 in 0..1,
        Sr2 in 0..1,

        B #>= 1,
        D #>= 1,
        G #>= 1,
        
        all_different(LD),           
        
           A+10*E+100*J+1000*B+10000*B+100000*E+1000000*F+
           E+10*J+100*E+1000*F+10000*G+100000*A+1000000*F
        #= F+10*E+100*E+1000*H+10000*I+100000*F+1000000*B+10000000*Sr1,
        
           C+10*F+100*H+1000*A+10000*I+100000*I+1000000*J+
           F+10*I+100*B+1000*D+10000*I+100000*D+1000000*C+Sr1
        #= J+10*F+100*A+1000*F+10000*H+100000*D+1000000*D+10000000*Sr2,
        
           A+10*J+100*J+1000*I+10000*A+100000*B+
           B+10*A+100*G+1000*F+10000*H+100000*D+Sr2
        #= C+10*A+100*G+1000*E+10000*J+100000*G,       
        
        label(LD),
        
        writeln(LD).
:- initialization(go).
%---------------------------------------------------------- 47 hakank_swi_crypto
/*

  Crypto problem (alphametic) in SWI Prolog

  This is a standard alphametic problem in mathematical recreations, 
  constraint programming etc.
    
  From GLPK:s model cryto.mod.
 
  """
  This problem comes from the newsgroup rec.puzzle.
  The numbers from 1 to 26 are assigned to the letters of the alphabet.
  The numbers beside each word are the total of the values assigned to
  the letters in the word (e.g. for LYRE: L, Y, R, E might be to equal
  5, 9, 20 and 13, or any other combination that add up to 47).
  Find the value of each letter under the equations:
 
  BALLET  45     GLEE  66     POLKA      59     SONG     61
  CELLO   43     JAZZ  58     QUARTET    50     SOPRANO  82
  CONCERT 74     LYRE  47     SAXOPHONE 134     THEME    72
  FLUTE   30     OBOE  53     SCALE      51     VIOLIN  100
  FUGUE   50     OPERA 65     SOLO       37     WALTZ    34
 
  Solution:
  A, B,C, D, E,F, G, H, I, J, K,L,M, N, O, P,Q, R, S,T,U, V,W, X, Y, Z
  5,13,9,16,20,4,24,21,25,17,23,2,8,12,10,19,7,11,15,3,1,26,6,22,14,18
 
  Reference:
  Koalog Constraint Solver <http://www.koalog.com/php/jcs.php>,
  Simple problems, the crypto-arithmetic puzzle ALPHACIPHER.
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        BALLET     =  45,
        CELLO      =  43,
        CONCERT    =  74,
        FLUTE      =  30,
        FUGUE      =  50,
        GLEE       =  66,
        JAZZ       =  58,
        LYRE       =  47,
        OBOE       =  53,
        OPERA      =  65,
        POLKA      =  59,
        QUARTET    =  50,
        SAXOPHONE  = 134,
        SCALE      =  51,
        SOLO       =  37,
        SONG       =  61,
        SOPRANO    =  82,
        THEME      =  72,
        VIOLIN     = 100,
        WALTZ      =  34,
        
        %% note: D is not in any constraint
        LD = [A,B,C,_D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z],
        LD ins 1..26,
        
        all_different(LD),

            B + A + L + L + E + T #= BALLET,
                C + E + L + L + O #= CELLO,
        C + O + N + C + E + R + T #= CONCERT,
                F + L + U + T + E #= FLUTE,
                F + U + G + U + E #= FUGUE,
                    G + L + E + E #= GLEE,
                    J + A + Z + Z #= JAZZ,
                    L + Y + R + E #= LYRE,
                    O + B + O + E #= OBOE,
                O + P + E + R + A #= OPERA,
                P + O + L + K + A #= POLKA,
        Q + U + A + R + T + E + T #= QUARTET,
S + A + X + O + P + H + O + N + E #= SAXOPHONE,
                S + C + A + L + E #= SCALE,
                    S + O + L + O #= SOLO,
                    S + O + N + G #= SONG,
        S + O + P + R + A + N + O #= SOPRANO,
                T + H + E + M + E #= THEME,
            V + I + O + L + I + N #= VIOLIN,
                W + A + L + T + Z #= WALTZ,


        labeling([ff,bisect],LD),

        Alpha = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z],
        zip2(Alpha,LD,Zip),
        maplist(format("~w: ~w~n"),Zip),
        nl.

:- initialization(go).
%--------------------------------------------------------- 48 hakank_swi_cur_num
/*

  Curious numbers in SWI Prolog


  Curious Numbers from "Amusements in Mathematics, Dudeney", number 114.
  """
  The number 48 has this peculiarity, that if you add 1 to it the result
  is a square number, and if you add 1 to its half, you also get a
  square number. Now, there is no limit to the numbers that have this
  peculiarity, and it is an interesting puzzle to find three more of
  them---the smallest possible numbers. What are they?
  """ 


  The least such numbers are: 
  [
   [48,49,7,24,25,5],
   [1680,1681,41,840,841,29],
   [57120,57121,239,28560,28561,169], 
   [1940448,1940449,1393,970224,970225,985]
  ]

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall(X,curious(X),L),
        maplist(writeln,L),
        nl.

curious(LD) :-
        LD = [X,A,B,C,D,E],
        LD ins 1..2000000,
        X + 1 #= A,             % if you add 1 to it 
        A #= B * B,             % the result is a square number
        
        X #= 2 * C,             % if you to its half
        C + 1 #= D,             % add 1 
        D #= E * E,             % you also get a square number
        
        labeling([ffc,bisect], LD).

:- initialization(go).
%------------------------------------------------------- 49 hakank_swi_de_bruijn
/*

  de Bruijn sequence in SWI Prolog

  Implementation of de Bruijn sequences in Comet, both "classical" 
  and "arbitrary". 
 
  Compare with the the web based programs:
    http://www.hakank.org/comb/debruijn.cgi   
    http://www.hakank.org/comb/debruijn_arb.cgi

  For Base = 2, N = 3, M = 8 there are 2 solutions:
    x : [](0, 1, 3, 7, 6, 5, 2, 4)
    bincode : [0, 0, 0, 1, 1, 1, 0, 1]

    x : [](0, 1, 2, 5, 3, 7, 6, 4)
    bincode : [0, 0, 0, 1, 0, 1, 1, 1]


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).




% Let's start simple: This has 2 solutions.
go :-
        Base #= 2,
        N #= 3,
        M #= Base^N,
        deBruijn(Base, N, M, X, Binary, BinCode, GCC),
        writeln(x=X),
        maplist(writeln,Binary),
        % writeln(binCode=BinCode),
        maplist(term_to_atom,BinCode,BinCodeL),
        atom_string(BinCodeL,BinCodeS),
        writeln(bincode=BinCodeS),
        writeln(gcc=GCC),
        nl,
        fail,
        nl.


go.

%%
%% This is an "arbitrary" de Bruijn sequence, i.e. the length of
%% the sequence is 52, ( < Base**N =28561). It has many solutions.
%% 
%% (This might represent a "random" - or perhaps not that random - card deck.)
%%
%% Quite hard problem...
%%
go2 :-
        Base #= 13,
        N #= 4,
        M #= 52,
        Tmp #= (Base^N)-1,
        wrapper(Base, N, M, Tmp),
        fail.

go2.

%%
%% The "door code" sequence, i.e. all codes of length 4 in for 0..9.
%% It's quite hard....
%%
go3 :-
        Base #= 10,
        N #= 4,
        M #= Base^N,
        Tmp #= (Base^N)-1,
        wrapper(Base, N, M, Tmp).

%%
%% Another problem. It's 2000 solutions.
%% 
go4 :-
        Base #= 2,
        N #= 5,
        M #= 27,
        Tmp #= (Base^N)-1,
        wrapper(Base, N, M, Tmp),
        fail.

go4.


%
% de Bruijn sequence with 
%   Base: base to use
%   N: length of each element (row)
%   M: length of sequence
%
deBruijn(Base, N, M, X, Binary, BinCode, GCC) :-

        %%
        %% X: list of the integers to use which are converted to
        %%    base-ary numbers below
        %%
        length(X,M),
        Base2 #= (Base^N)-1,
        X ins 0..Base2,

        % all_different(X),
        all_distinct(X),

        %%
        %% Binary: the matrix of the "fully expanded" integers in X
        %%
        Base1 #= Base-1,
        new_matrix(M,N,0..Base1,Binary),

        %% convert the integer to base-ary representation
        maplist(to_binary(Base),Binary,X),
        
        %% number of occurrences for each number
        length(GCC,Base),
        GCC ins 0..M,

        %%
        %% The de Bruijn criterion: Connect one element to the next...
        %% ... and around the corner.
        %%
        de_bruijn_criterion(Binary,M,N),
        
        %% 
        %% BinCode: The de Bruijn sequence, i.e. the first
        %%          elements in each row in Binary (i.e. the first column)
        transpose(Binary,BinaryT),
        nth1(1,BinaryT,BinCode),
        
        %% GCC: Count the number of different elements in the bin code
        findall(I,between(1,Base,I),BinCodeIs),
        maplist(gcc(BinCode),BinCodeIs,GCC),

        %%
        %% If possible, we require that the occurrences of number are the same.
        %%
        (
         M mod Base #= 0
        ->
         numlist(1,Base,GCCIs),
         maplist(gcc2(Base,M,GCC),GCCIs)
        ;
         true
        ),
        
        %% symmetry breaking
        element(1,X,X1),
        min_list_clp(X,X1),

        %% solve
        flatten([X,Binary,GCC,BinCode], Vars),
        labeling([ffc,enum],Vars).


de_bruijn_criterion(Binary,M,N) :-
        findall([I1,J,I,J1],(between(2,M,I), between(2,N,J), I1 #= I-1, J1 #= J-1),IJs1),
        findall([M,J,1,J1],(between(2,N,J),J1 #= J-1), IJs2),
        append(IJs1,IJs2,IJs),
        de_bruijn_criterion_(IJs,M,Binary).

de_bruijn_criterion_([],_M,_Binary).
de_bruijn_criterion_([[I1,J,I,J1]|IJs],M,Binary) :-
        matrix_element(Binary,I1,J,BinaryVal),
        matrix_element(Binary,I,J1,BinaryVal),
        de_bruijn_criterion_(IJs,M,Binary).

% global cardinality
gcc(BinCode,I,GCC) :-
        I1 #= I-1,
        count_occurrences(BinCode,I1,GCC).

% all GCCs should be the same, i.e. M div Base
gcc2(Base,M,GCC,I) :-
        GCCI #= M div Base,
        element(I,GCC,GCCI).

        
%        
% wrapper
%
wrapper(Base, N, M, Tmp) :-
        writeln([base=Base, n=N, m=M, '(Base**N)-1)'=(Tmp)]),
        deBruijn(Base, N, M, X, Binary, BinCode, GCC),
        writeln(x=X),
        % writeln(binary=Binary),
        maplist(writeln,Binary),
        maplist(term_to_atom,BinCode,BinCodeL),
        atom_string(BinCodeL,BinCodeS),
        writeln(bincode=BinCodeS),
        writeln(gcc=GCC),
        nl.


% convert the integer to base-ary representation
to_binary(Base,BinarySlice,X) :-
        to_num(BinarySlice, Base, X).
:- initialization(go).
%----------------------------------------------------- 50 hakank_swi_devils_word
/*

  Devil's word in SWI Prolog

  Translate each character in a word to ASCII value and then try
  to sum its values (either positive or negative) to a total.
  
  E.g. "hakankjellerstrand" and total 666 gives 359 solutions.
  Here is the first:
  +104 +97 +107 +97 +110 +107 +106 -101 +108 +108 -101 +114 +115 +116 -114 -97 -110 -100

  See http://www.hakank.org/data_snooping/666.cgi

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        Name = "hakankjellerstrand",
        atom_codes(Name,Res),
        format("~s", Name), 
        nl,
        Total #= 666,
        writeln(total=Total),
        devils_word(Res, SignedRes,Total),
        labeling([ff],SignedRes),
        
        writeln([Total, SignedRes]),
        nl.


%%
%% Let's see how many solutions there are: 359
%%
go2 :-

        Name = "hakankjellerstrand",
        atom_codes(Name,Res),
        format("~s", Name),
        nl,
        Total #= 666,
        findall(SignedRes, (devils_word(Res, SignedRes,Total),
                             labeling([ff],SignedRes)),L),
        length(L,Len),
        format("There are ~d solutions.\n", Len),
        nl.

%%
%% Let us go crazy and set Total free as well.
%% There are 130362 solutions.
%%
go3 :-
        Name = "hakankjellerstrand",
        %%Name = "hakan", 
        format("~s", Name), 
        atom_codes(Name,Res),

        nl,
        maplist(abs,Res,ResAbs),
        sum(ResAbs,#=,AbsSum),
        Total in 1..AbsSum,
        
        findall([Total,SignedRes],
                (devils_word(Res, SignedRes,Total),
                 labeling([ff],SignedRes)),L), 
        maplist(writeln,L),
        length(L,Len),
        format("There are ~d solutions.~n", Len),
        nl.

devils_word(List, SignedRes, Total) :-
        length(List,Len),
        length(Signs,Len),
        Signs ins -1\/1,
        scalar_product(List,Signs,#=,Total),
        maplist(signedres,List,Signs,SignedRes).


signedres(S,E,Y) :-
        Y #= S*E.
:- initialization(go).
%------------------------------------------------------------ 51 hakank_swi_diet
/*

  Diet problem in SWI Prolog

  Standard diet problem.

  Minimize the cost for the products:
   Type of                        Calories   Chocolate    Sugar    Fat
   Food                                      (ounces)     (ounces) (ounces)
   Chocolate Cake (1 slice)       400           3            2      2
   Chocolate ice cream (1 scoop)  200           2            2      4
   Cola (1 bottle)                150           0            4      1
   Pineapple cheesecake (1 piece) 500           0            4      5



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

% find all optimal solutions
go :-
        data(Price, Limits, [Calories, Chocolate, Sugar, Fat]),
        once(diet(Calories,Chocolate,Sugar,Fat,Price,Limits, Xs,XSum)),
        writeln([cost=XSum, Xs]),

        % and get all optimal solutions
        % (It happens to be a unique solution.)
        format("Find all solutions with cost ~d:\n", XSum),
        findall(Xs2,diet(Calories,Chocolate,Sugar,Fat,Price,Limits, Xs2,XSum),Sols),
        writeln(Sols),
        nl.


go2 :-
        data(Price, Limits, [Calories, Chocolate, Sugar, Fat]),       
        diet2([Calories,Chocolate,Sugar,Fat],Price,Limits, Xs,XSum),
        writeln([cost=XSum, Xs]).


% 
% Diet problem
%
diet(Calories,Chocolate,Sugar,Fat,Price,Limits, Xs,XSum) :-

        length(Price,Len),
        length(Xs, Len),
 	Xs ins 0..10,

        nth1(1,Limits,Limits1),
        nth1(2,Limits,Limits2),
        nth1(3,Limits,Limits3),
        nth1(4,Limits,Limits4),
        
        scalar_product(Calories,  Xs, #>=, Limits1), % 500,
        scalar_product(Chocolate, Xs, #>=, Limits2), %   6,
        scalar_product(Sugar,     Xs, #>=, Limits3), %  10,
        scalar_product(Fat,       Xs, #>=, Limits4), %   8,
        
        scalar_product(Price, Xs, #=, XSum), % to minimize
        
        % optimize or find all (optimal) solutions
        ( var(XSum)
        -> 
          labeling([min(XSum)], Xs)
        ; 
          % here XSum is bound so we just label the vars
          labeling([], Xs)
        ).

%
% This is a more general solution where all the nutritions 
% are handled in a foreach loop.
%
diet2(Products,Price,Limits, Xs,XSum) :-

        length(Price,Len),
        length(Xs,Len),
        Xs ins 0..10,

        scalar_product_rows(Products,Xs,#>=,Limits),
        scalar_product(Price, Xs, #=, XSum), % to minimize
        (var(XSum)
        ->
         labeling([min(XSum)], Xs)
        ; 
         labeling([],Xs)
        ).

scalar_product_rows([],_Xs,_Rel,_Limits).
scalar_product_rows([Product|Products],Xs,Rel,[Limit|Limits]) :-
        scalar_product(Product, Xs,Rel, Limit),
        scalar_product_rows(Products,Xs,Rel,Limits).

%
% data
%
data(Price, Limits, Nutrition) :-
        Price = [ 50, 20, 30, 80], % price in cents for each nutrition
        Limits = [500,  6, 10,  8], % limits, requirements for each nutrition type
        
        % nutrition for each product
        Nutrition = 
        [[400, 200, 150, 500],  % calories
         [  3,   2,   0,   0],  % chocolate
         [  2,   2,   4,   4],  % sugar
         [  2,   4,   1,   5]]. % fat


:- initialization(go).
%---------------------------------------------------------- 52 hakank_swi_dinner
/*

  A dinner problem in SWI Prolog

  http://www.sellsbrothers.com/spout/#The_Logic_of_Logic
  """
  My son came to me the other day and said, "Dad, I need help with a"
  "math problem." The problem went like this:

    * We're going out to dinner taking 1-6 grandparents, 1-10 parents and/or 1-40 children
    * Grandparents cost $3 for dinner, parents $2 and children $0.50
    * There must be 20 total people at dinner and it must cost $20
    * How many grandparents, parents and children are going to dinner?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   findall([grandparents=Grandparents, 
                parents=Parents, 
                children=Children], 
          dinner([Grandparents,
                  Parents,
                  Children]),L),
   writeln(L),
   nl.

dinner([Grandparents, Parents, Children]) :-
   Grandparents in 0..100,
   Parents      in 0..100,
   Children     in 0..100,
   Grandparents * 3 + Parents * 2 + Children // 2 #= 20,

   Grandparents + Parents + Children #= 20, % number of people = 20

   % must be some of each
   Grandparents #> 0,
   Parents      #> 0,
   Children     #> 0,
   
   label([Grandparents, Parents, Children]).
   
:- initialization(go).
%--------------------------------------------- 53 hakank_swi_discrete_tomography
/*

  Discrete tomography in SWI Prolog

  Note: The origin of the problem is from ECLiPSe,
  but this model has been transformed in this way
     MiniZinc -> SICStus Prolog -> ECLiPSe -> B-Prolog -> Picat -> SWI Prolog
  Here is my own take at the problem.

  Problem from http://eclipse-clp.org/examples/tomo.ecl.txt
  """
  This is a little "tomography" problem, taken from an old issue
  of Scientific American.
 
  A matrix which contains zeroes and ones gets "x-rayed" vertically and
  horizontally, giving the total number of ones in each row and column.
  The problem is to reconstruct the contents of the matrix from this
  information. Sample run:
 
  ?- go.
     0 0 7 1 6 3 4 5 2 7 0 0
  0                         
  0                         
  8      * * * * * * * *    
  2      *             *    
  6      *   * * * *   *    
  4      *   *     *   *    
  5      *   *   * *   *    
  3      *   *         *    
  7      *   * * * * * *    
  0                         
  0                         
 
 
  Eclipse solution by Joachim Schimpf, IC-Parc
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        between(1,4,P),
        findall(X,discrete_tomography(P,X),L),
        maplist(pretty_print,L),
        fail,
        nl.

go.


discrete_tomography(P,X) :-

        problem(P,RowSums,ColSums),
        format("\nProblem ~d:\n",[P]),

        length(RowSums,Rows),
        length(ColSums,Cols),

        new_matrix(Rows,Cols,0..1, X),
    
        %% check row/col sums
        maplist(check_sums,X,RowSums),
        transpose(X,XT),
        maplist(check_sums,XT,ColSums),

        flatten(X,Vars),
        label(Vars).

check_sums(X,Sum) :-
        sum(X,#=,Sum).

%%
%% Convert to a nicer picture
%% replace 0 -> ' ', 1 -> '#'
%%
pretty_print(X) :-
        Convert = [[0,' '],[1,'#']],
        maplist(pretty_print_row(Convert),X),
        nl.

pretty_print_row(Convert,X) :-
        convert_row(X,Convert,[],X2),
        atom_string(X2,S),
        writeln(S).

convert_row([],_Convert,S,S).
convert_row([C|Cs],Convert, S0,[C2|S]) :-
        memberchk([C,C2],Convert),
        convert_row(Cs,Convert,S0,S).


%
% The three first problems are from the ECLiPSe model:
%
% The above stated problem
problem(1, R, S) :- 
        R = [0,0,8,2,6,4,5,3,7,0,0],  % row sums
        S = [0,0,7,1,6,3,4,5,2,7,0,0]. % column sums


problem(2, R, S) :-
        R = [10,4,8,5,6],
        S = [5,3,4,0,5,0,5,2,2,0,1,5,1].


% This give three slightly different solutions.
problem(3, R, S) :- 
        R = [11,5,4],
        S = [3,2,3,1,1,1,1,2,3,2,1].


% This is my own problem.
problem(4, R, S) :- 
        R = [0,2,2,2,2,2,8,8,4,4,4,4,4,0],
        S = [0,0,0,12,12,2,2,2,2,7,7,0,0,0].
:- initialization(go).
%------------------------------------------------------ 54 hakank_swi_distribute
/*

  Global constraint distribute in SWI Prolog

  Decomposition of global constraint distribute.

  From MiniZinc globals.mzn (slighly edited:
  """
  Requires that Card[I] is the number of occurences of Value[I] in list X.
  """

  Note: distribute/3 is a variant of the global constraint
  global cardinality count (global_cardinality, gcc).

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


/*
   Unique solution:
  
   card=[4,1,1,1]
   value=[6,7,8,9]
   x=[6,7,6,8,6,9,6]
 
*/
go :-
        
        %% This test is from MiniZinc's testcases.
        Len = 4,
        length(Card,Len), 
        Card ins 1..10, 
        length(Value,Len),
        Value ins 1..10,
        length(X,7),
        X ins 1..10,
        
        %% test values
        Card  = [4, _, 1, _],
        Value = [_, 7, 8, _],
        X  = [_, 7, 6, 8, 6, 9, _],

        distribute(Card, Value, X),
   
        flatten([Card,Value,X],Vars),
        labeling([ff],Vars),

        writeln(value=Value),
        writeln(card=Card),
        writeln(x=X),
        nl.

%%
%% No initial values of Card and Value. A lot of solutions.
%%
go2 :-

        %% This test is from MiniZinc's testcases.
        Len = 5,
        length(Card,Len), 
        Card ins 1..10, 
        length(Value,Len),
        Value ins 1..10,
        
        length(X,7),
        X ins 1..10,
        
        distribute(Card, Value, X),
   
        flatten([Card,Value,X],Vars),
        labeling([ff],Vars),

        writeln(value=Value),
        writeln(card=Card),
        writeln(x=X),
        nl,
        fail,
        nl.

go2.


%%
%% A larger example.
%%
go3 :-

        Value = [0,1,2,3,5,7],
        Card  = [1,3,1,1,1,1],
        
        length(X,18),
        X ins 0..9,
        
        distribute(Card, Value, X),
   
        flatten([Card,Value,X],Vars),
        labeling([],Vars),

        writeln('value'=Value),
        writeln('card '=Card),
        writeln('    x'=X),
        nl,
        fail,
        nl.

go3.

:- initialization(go).
%---------------------------------------- 55 hakank_swi_divisible_by_9_through_1
/*

  Divisible by 9 through 1 puzzle in SWI Prolog
  
  From http://msdn.microsoft.com/en-us/vcsharp/ee957404.aspx
  " Solving Combinatory Problems with LINQ"
  """
  Find a number consisting of 9 digits in which each of the digits 
  from 1 to 9 appears only once. This number must also satisfy these 
  divisibility requirements:
  
   1. The number should be divisible by 9.
   2. If the rightmost digit is removed, the remaining number should 
      be divisible by 8.
   3. If the rightmost digit of the new number is removed, the remaining 
      number should be divisible by 7.
   4. And so on, until there's only one digit (which will necessarily 
      be divisible by 1).
  """
  
  Also, see
  "Intel Parallel Studio: Great for Serial Code Too (Episode 1)"
  http://software.intel.com/en-us/blogs/2009/12/07/intel-parallel-studio-great-for-serial-code-too-episode-1/


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        time(once(problem(10,X,T))),
        writeln(X),
        writeln(T),
        nl.

/* 

  Here are the solutions for the bases (2..14):
   
   base=2
   [2,[1],[1]]
   
   base=3
   
   base=4
   [4,[1,2,3],[27,6,1]]
   [4,[3,2,1],[57,14,3]]
   
   base=5
   
   base=6
   [6,[1,4,3,2,5],[2285,380,63,10,1]]
   [6,[5,4,3,2,1],[7465,1244,207,34,5]]

   base=7

   base=8
   [8,[3,2,5,4,1,6,7],[874615,109326,13665,1708,213,26,3]]
   [8,[5,2,3,4,7,6,1],[1391089,173886,21735,2716,339,42,5]]
   [8,[5,6,7,4,3,2,1],[1538257,192282,24035,3004,375,46,5]]
   
   base=9
   
   base=10
   [10,[3,8,1,6,5,4,7,2,9],[381654729,38165472,3816547,381654,38165,3816,381,38,3]]
   
   base=11
   
   base=12
   
   base=13
   
   base=14
   [14,[9,12,3,10,5,4,7,6,11,8,1,2,13],[559922224824157,39994444630296,2856746045021,204053288930,14575234923,1041088208,74363443,5311674,379405,27100,1935,138,9]]

*/
go2 :-
        between(2,14,Base),
        writeln(base=Base),
        (
         time(findall([Base,X,T], problem(Base, X, T), All))
        ->
         maplist(writeln,All)
        ;
         true
        ),
        nl,
        fail,
        nl.

go2.

        
%%
%% Solve the Divisible by 9 through 1 puzzle in base Base.
%%
problem(Base, X, T) :-

        Base1 #= Base-1,
        M #= (Base^Base1)-1,    % largest value
        N #= Base - 1,          % the digits are in 1..N , 
                                % N is also the length of X 
        length(X,N),
        X ins 1..N,
        
        length(T,N),
        T ins 1..M,

        all_different(X),
        div_loop(1,N,Base,X, [],T),
        % decreasing_strict(T), % don't help
        
        append(T,X,Vars),
        labeling([ff],Vars).

%%
%% The divisible loop.
%%
div_loop(N1,N,_Base,_X, T, T) :- N1 #> N.
div_loop(I,N, Base, X, T0,[TI|T]) :-
        Base_I #= Base-I,
        findall(J,between(1,Base_I,J),Js),
        extract_from_indices(Js,X,XIs),
        to_num(XIs, Base, TI),
        TI mod Base_I #= 0,
        I1 #= I+1,
        div_loop(I1,N,Base,X,T0,T).
:- initialization(go).
%--------------------------------------------------- 56 hakank_swi_donald_gerald
/*

  DONALD + GERALD = ROBERT in SWI Prolog

  Classic alphametic problem.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        X = [D,O,N,A,L,G,E,R,B,T],
        X ins 0..9,

        all_different(X),

           100000*D + 10000*O + 1000*N + 100*A + 10*L + D 
         + 100000*G + 10000*E + 1000*R + 100*A + 10*L + D
        #= 100000*R + 10000*O + 1000*B + 100*E + 10*R + T,

        D #> 0,
        G #> 0,
        R #> 0,

        labeling([ffc],X),

        writeln(X).


:- initialization(go).
%------------------------------------------------- 57 hakank_swi_dudeney_numbers
/*

  Dudeney numbers in SWI Prolog

  From Pierre Schaus blog post
  Dudeney number
   http://cp-is-fun.blogspot.com/2010/09/test-python.html
  """
  I discovered yesterday Dudeney Numbers
  A Dudeney Numbers is a positive integer that is a perfect cube such that the sum 
  of its decimal digits is equal to the cube root of the number. There are only six 
  Dudeney Numbers and those are very easy to find with CP.
  I made my first experience with google cp solver so find these numbers (model below) 
  and must say that I found it very convenient to build CP models in python!
  When you take a close look at the line: 
      solver.Add(sum([10**(n-i-1)*x[i] for i in range(n)]) == nb)
  It is difficult to argue that it is very far from dedicated 
  optimization languages!
  """
  
  Also see: http://en.wikipedia.org/wiki/Dudeney_number



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 6,
        findall([x=X,nb=NB,s=S], dudeney(N,X,NB,S),L),
        maplist(writeln,L),
        length(L,Len),
        writeln(len=Len),
        nl.


dudeney(N, X, NB, S) :-

   length(X,N),
   X ins 0..9,

   UB1 #= 10^N,
   NB in 1..UB1,
   UB2 #= 9*N+1,
   S in 1..UB2,

   NB #= S*S*S,
   %% NB #= sum([X[I]*10**(N-I) : I in 1..N]),
   numlist(1,N,Is),
   maplist(sum_d(N),X,Is,SS),
   sum(SS,#=,NB),
   sum(X,#=,S),

   labeling([],X).

sum_d(N,XI,I,S) :-
        S #= XI*10^(N-I).
:- initialization(go).
%------------------------------------------------------------ 58 hakank_swi_eq10
/*

  Eq10 problem in SWI Prolog

  Standard benchmark problem.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        LD = [X1,X2,X3,X4,X5,X6,X7],
        LD ins 0..10,

        0+98527*X1+34588*X2+5872*X3+59422*X5+65159*X7 
        #= 1547604+30704*X4+29649*X6,

        0+98957*X2+83634*X3+69966*X4+62038*X5+37164*X6+85413*X7 
        #= 1823553+93989*X1,

        900032+10949*X1+77761*X2+67052*X5 
        #= 0+80197*X3+61944*X4+92964*X6+44550*X7,

        0+73947*X1+84391*X3+81310*X5 
        #= 1164380+96253*X2+44247*X4+70582*X6+33054*X7,

        0+13057*X3+42253*X4+77527*X5+96552*X7 
        #= 1185471+60152*X1+21103*X2+97932*X6,

        1394152+66920*X1+55679*X4 
        #= 0+64234*X2+65337*X3+45581*X5+67707*X6+98038*X7,

        0+68550*X1+27886*X2+31716*X3+73597*X4+38835*X7 
        #= 279091+88963*X5+76391*X6,

        0+76132*X2+71860*X3+22770*X4+68211*X5+78587*X6 
        #= 480923+48224*X1+82817*X7,

        519878+94198*X2+87234*X3+37498*X4 
        #= 0+71583*X1+25728*X5+25495*X6+70023*X7,

        361921+78693*X1+38592*X5+38478*X6 
        #= 0+94129*X2+43188*X3+82528*X4+69025*X7,

        label(LD),
        writeln(LD).
:- initialization(go).
%------------------------------------------------------------ 59 hakank_swi_eq20
/*

  Eq20 problem in SWI Prolog

  Standard Prolog benchmark problem

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
        
   X = [X0,X1,X2,X3,X4,X5,X6],
   X ins 0..10,

   -76706*X0 + 98205*X1 + 23445*X2 + 67921*X3 + 24111*X4 + 
   -48614*X5 + -41906*X6
   #= 821228,
   87059*X0 + -29101*X1 + -5513*X2 + -21219*X3 + 22128*X4 +
   7276*X5 + 57308*X6
   #= 22167,
   -60113*X0 + 29475*X1 + 34421*X2 + -76870*X3 + 62646*X4 + 
   29278*X5 + -15212*X6
   #= 251591,
   49149*X0 + 52871*X1 + -7132*X2 + 56728*X3 + -33576*X4 + 
   -49530*X5 + -62089*X6
   #= 146074,
   -10343*X0 + 87758*X1 + -11782*X2 + 19346*X3 + 70072*X4 + 
   -36991*X5 + 44529*X6
   #= 740061,
   85176*X0 + -95332*X1 + -1268*X2 + 57898*X3 + 15883*X4 +
   50547*X5 + 83287*X6
   #= 373854,
   -85698*X0 + 29958*X1 + 57308*X2 + 48789*X3 + -78219*X4 +
   4657*X5 + 34539*X6
   #= 249912,
   -67456*X0 + 84750*X1 + -51553*X2 + 21239*X3 + 81675*X4 + 
   -99395*X5 + -4254*X6
   #= 277271,
   94016*X0 + -82071*X1 + 35961*X2 + 66597*X3 + -30705*X4 + 
   -44404*X5 + -38304*X6
   #= 25334,
   -60301*X0 + 31227*X1 + 93951*X2 + 73889*X3 + 81526*X4 + 
   -72702*X5 + 68026*X6
   #= 1410723,
   -16835*X0 + 47385*X1 + 97715*X2 + -12640*X3 + 69028*X4 + 
   76212*X5 + -81102*X6
   #= 1244857,
   -43277*X0 + 43525*X1 + 92298*X2 + 58630*X3 + 92590*X4 +
   -9372*X5 + -60227*X6
   #= 1503588,
   -64919*X0 + 80460*X1 + 90840*X2 + -59624*X3 + -75542*X4 + 
   25145*X5 + -47935*X6
   #= 18465,
   -45086*X0 + 51830*X1 + -4578*X2 + 96120*X3 + 21231*X4 +
   97919*X5 + 65651*X6
   #= 1198280,
   85268*X0 + 54180*X1 + -18810*X2 + -48219*X3 + 6013*X4 +
   78169*X5 + -79785*X6
   #= 90614,
   8874*X0 + -58412*X1 + 73947*X2 + 17147*X3 + 62335*X4 +
   16005*X5 + 8632*X6
   #= 752447,
   71202*X0 + -11119*X1 + 73017*X2 + -38875*X3 + -14413*X4 + 
   -29234*X5 + 72370*X6
   #= 129768,
   1671*X0 + -34121*X1 + 10763*X2 + 80609*X3 + 42532*X4 +
   93520*X5 + -33488*X6
   #= 915683,
   51637*X0 + 67761*X1 + 95951*X2 + 3834*X3 + -96722*X4 +
   59190*X5 + 15280*X6
   #= 533909,
   -16105*X0 + 62397*X1 + -6704*X2 + 43340*X3 + 95100*X4 + 
   -68610*X5 + 58301*X6
   #= 876370,
   
   label(X),
   writeln(X).
:- initialization(go).
%---------------------------------------------------------- 60 hakank_swi_euler1
/*

  Euler Problem 1 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=1
  """
  If we list all the natural numbers below 10 that are multiples of 3 
  or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

  Find the sum of all the multiples of 3 or 5 below 1000.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             % euler1a,
             euler1b % ,
             % euler1c,
             % euler1d,
             % euler1e
            ],
        run_problems(L).

%%
%% 0.119s
%%
euler1a :-
        euler1a_pred(1, 999, 0, Res),
        writeln(Res).

%%
%% 0.001s
%%
euler1b :-
        numlist(1,999,Is),
        maplist(p,Is,Ls),
        sum_list(Ls,Res),
        writeln(Res).

%%
%% 0.006s
%%
euler1c :-
        setof(I,
                (between(1,999,I),
                 (I mod 3 #= 0 ; I mod 5 #= 0)
                ),
                Is
               ),
        sum_list(Is,Res),
        writeln(Res).

%%
%% 0.001s
%%
euler1d :-
        numlist(1,999,Is),
        include(p_d,Is,Ls),
        sum_list(Ls,Res),
        writeln(Res).

%%
%% 0.001s
%%
euler1e :-
        numlist(1,999,Is),
        setof(I,
                (member(I,Is),
                 p_d(I)
                ),
                Ls
               ),
        sum_list(Ls,Res),
        writeln(Res).


euler1a_pred(N, Limit, R, R) :- N #> Limit.
euler1a_pred(N, Limit, R, R2) :-
        B in 0..1,
        (N mod 3 #= 0 #\/N mod 5 #= 0) #<==> B #= 1,
        R1 #= R + B*N,
        N2 #= N + 1,
        euler1a_pred(N2, Limit, R1,R2).


p(N,N) :- N mod 3 #= 0.
p(N,N) :- N mod 5 #= 0.
p(_,0).


p_d(N) :- N mod 3 #= 0 ; N mod 5 #= 0.
:- initialization(go).
%--------------------------------------------------------- 61 hakank_swi_euler10
/*

  Euler Problem 10 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=10
  """
  The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

  Find the sum of all the primes below two million.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).


go :-
        %%
        %% All euler10a..10f takes about the same 
        %% time (~19s) since is_prime/1 etc are
        %% are too slow...
        %% euler10g use primes/2 which is a kind of
        %% prime sieve (kind of).
        %%
        L = [
             %euler10a,
             %euler10b,
             %euler10c,
             %euler10d,
             %euler10e,
             %%euler10f,
             euler10g
             ],
        run_problems(L).

%%
%% 18.5s
%%
euler10a :-
        N = 2000000,
        findall(I,
                (between(1,N,I),
                 is_prime2(I)
                 % is_prime(I)                
                 ),
                Primes),
        sum_list(Primes,Sum),
        writeln(Sum).




%%
%% 20.1s
%%
euler10b :-
        N = 2000000,
        prime_sum(N,0,PrimeSum),
        writeln(PrimeSum).

prime_sum(0,Sum,Sum).
prime_sum(N,Sum0,Sum) :-
        (
         is_prime(N)
        ->
         Sum1 is Sum0 + N
        ;
         Sum1 is Sum0
        ),
        N1 is N-1,
        prime_sum(N1,Sum1,Sum).

%%
%% Checking only odd numbers: 19.2s
%%
euler10c :-
        N = 2000000,
        prime_sum_odd(3,N, 2,PrimeSum),
        writeln(PrimeSum).

prime_sum_odd(I,N,Sum,Sum) :- I > N.
prime_sum_odd(I,N,Sum0,Sum) :-
        (
         is_prime(I)
        ->
         Sum1 #= Sum0 + I
        ;
         Sum1 #= Sum0
        ),
        I1 #= I+2,
        prime_sum_odd(I1,N,Sum1,Sum).

%%
%% 19.413s
%%
euler10d :-
        N = 2000000,
        findall(I,
                (between(3,2,N,I),
                is_prime(I)
                ),
                Primes),
        sum_list(Primes,Sum),
        Sum2 #= Sum+2,
        writeln(Sum2).

%%
%% Using next_prime/2: 19.372s
%%
euler10e :-
        N = 2000000,
        prime_sum2(0,N,0,Sum),
        writeln(Sum).

prime_sum2(P,N,Sum,Sum) :- P > N.
prime_sum2(P,N,Sum0,Sum) :-
        next_prime(P,P2),
        Sum1 is Sum0 + P,
        prime_sum2(P2,N,Sum1,Sum).

%%
%% numlist_step/3 and include + is_prime2
%% 19.1s
%%
euler10f :-
        numlist_step(3,2,2000000,L),
        include(is_prime2, L, R),
        sum_list(R,Sum),
        Sum2 #= Sum+2,
        writeln(Sum2).

%%
%% 8.4s
%%
euler10g :-
        %% We must increase the stack for this...
        set_prolog_stack(global, limit(10_000_000_000)),
        primes(2_000_000,L),
        sum_list(L,Sum),
        writeln(Sum).


%%
%% Using clp: 11.4s
%%
euler10h :-
        %% We must increase the stack for this...
        set_prolog_stack(global, limit(10_000_000_000)),
        primes2(2_000_000,L),
        sum_list(L,Sum),
        writeln(Sum).



primes2(N,L) :-
        N2 #= 1+(N div 2),
        findall(J2,(between(2,N2,I),
                    II #= I*I,
                    II #=< N,
                    NDivI #= 1+(N div I),
                    between(0,NDivI,J),
                    J2 #= II+I*J,
                    J2 #=< N
                   ),
                Js),
        sort(Js,Deletes),        
        numlist(2,N,All),
        delete_all(All,Deletes,L).

:- initialization(go).
%--------------------------------------------------------- 62 hakank_swi_euler11
/*

  Euler Problem 11 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=11
  """
  In the 20x20 grid below, four numbers along a diagonal line have been 
  marked in red.

  08 02 22 97 38 15 00 40 00 75 04 05 07 78 52 12 50 77 91 08
  49 49 99 40 17 81 18 57 60 87 17 40 98 43 69 48 04 56 62 00
  81 49 31 73 55 79 14 29 93 71 40 67 53 88 30 03 49 13 36 65
  52 70 95 23 04 60 11 42 69 24 68 56 01 32 56 71 37 02 36 91
  22 31 16 71 51 67 63 89 41 92 36 54 22 40 40 28 66 33 13 80
  24 47 32 60 99 03 45 02 44 75 33 53 78 36 84 20 35 17 12 50
  32 98 81 28 64 23 67 10 26 38 40 67 59 54 70 66 18 38 64 70
  67 26 20 68 02 62 12 20 95 63 94 39 63 08 40 91 66 49 94 21
  24 55 58 05 66 73 99 26 97 17 78 78 96 83 14 88 34 89 63 72
  21 36 23 09 75 00 76 44 20 45 35 14 00 61 33 97 34 31 33 95
  78 17 53 28 22 75 31 67 15 94 03 80 04 62 16 14 09 53 56 92
  16 39 05 42 96 35 31 47 55 58 88 24 00 17 54 24 36 29 85 57
  86 56 00 48 35 71 89 07 05 44 44 37 44 60 21 58 51 54 17 58
  19 80 81 68 05 94 47 69 28 73 92 13 86 52 17 77 04 89 55 40
  04 52 08 83 97 35 99 16 07 97 57 32 16 26 26 79 33 27 98 66
  88 36 68 87 57 62 20 72 03 46 33 67 46 55 12 32 63 93 53 69
  04 42 16 73 38 25 39 11 24 94 72 18 08 46 29 32 40 62 76 36
  20 69 36 41 72 30 23 88 34 62 99 69 82 67 59 85 74 04 36 16
  20 73 35 29 78 31 90 01 74 31 49 71 48 86 81 16 23 57 05 54
  01 70 54 71 83 51 54 69 16 92 33 48 61 43 52 01 89 19 67 48

  The product of these numbers is 26 63 78 14 = 1788696.

  What is the greatest product of four adjacent numbers in any direction 
  (up, down, left, right, or diagonally) in the 20x20 grid?
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler11a
            ],
        run_problems(L).

p11([[08, 2,22,97,38,15, 0,40, 0,75, 4, 5, 7,78,52,12,50,77,91, 8],
     [49,49,99,40,17,81,18,57,60,87,17,40,98,43,69,48, 4,56,62, 0],
     [81,49,31,73,55,79,14,29,93,71,40,67,53,88,30, 3,49,13,36,65],
     [52,70,95,23, 4,60,11,42,69,24,68,56, 1,32,56,71,37, 2,36,91],
     [22,31,16,71,51,67,63,89,41,92,36,54,22,40,40,28,66,33,13,80],
     [24,47,32,60,99, 3,45, 2,44,75,33,53,78,36,84,20,35,17,12,50],
     [32,98,81,28,64,23,67,10,26,38,40,67,59,54,70,66,18,38,64,70],
     [67,26,20,68, 2,62,12,20,95,63,94,39,63, 8,40,91,66,49,94,21],
     [24,55,58, 5,66,73,99,26,97,17,78,78,96,83,14,88,34,89,63,72],
     [21,36,23, 9,75, 0,76,44,20,45,35,14, 0,61,33,97,34,31,33,95],
     [78,17,53,28,22,75,31,67,15,94, 3,80, 4,62,16,14, 9,53,56,92],
     [16,39, 5,42,96,35,31,47,55,58,88,24, 0,17,54,24,36,29,85,57],
     [86,56, 0,48,35,71,89, 7, 5,44,44,37,44,60,21,58,51,54,17,58],
     [19,80,81,68, 5,94,47,69,28,73,92,13,86,52,17,77, 4,89,55,40],
     [04,52, 8,83,97,35,99,16, 7,97,57,32,16,26,26,79,33,27,98,66],
     [88,36,68,87,57,62,20,72, 3,46,33,67,46,55,12,32,63,93,53,69],
     [04,42,16,73,38,25,39,11,24,94,72,18, 8,46,29,32,40,62,76,36],
     [20,69,36,41,72,30,23,88,34,62,99,69,82,67,59,85,74, 4,36,16],
     [20,73,35,29,78,31,90, 1,74,31,49,71,48,86,81,16,23,57, 5,54],
     [01,70,54,71,83,51,54,69,16,92,33,48,61,43,52, 1,89,19,67,48]]).


%%
%% 1.97s
%%
euler11a :-
        p11(M),

        %% Rows
        maplist(running_prod(4),M,RowsProducts),
        maplist(max_list,RowsProducts,RowMaxes),
        max_list(RowMaxes,Max1),

        %% Columns
        transpose(M,MT),        
        maplist(running_prod(4),MT,ColsProducts),
        maplist(max_list,ColsProducts,ColMaxes),
        max_list(ColMaxes,Max2),

        %% Diag down
        findall(MaxProd,
                (between(1,17,I),
                 findall(P,
                         (
                          between(1,17,J),
                          findall(S,
                                  (
                                   between(0,3,A),
                                   IA is A+I,
                                   JA is A+J,
                                   matrix_element(M,IA,JA,S)
                                  ),
                                  AS
                                 ),
                          prodlist(AS,P)
                         ),
                         Ps
                        ),
                 max_list(Ps,MaxProd)
                ),
                D1Prods
               ),
        max_list(D1Prods,Max3),       
                 
        %% Diag up
        findall(MaxProd,
                (between(1,17,J),
                 findall(P,
                         (
                          between(4,20,I),
                          findall(S,
                                  (
                                   between(0,3,A),
                                   IA is I-A,
                                   JA is J+A,
                                   matrix_element(M,IA,JA,S)
                                  ),
                                  AS
                                 ),
                          prodlist(AS,P)
                         ),
                         Ps
                        ),
                 max_list(Ps,MaxProd)
                ),
                D2Prods
               ),
        max_list(D2Prods,Max4),

        max_list([Max1,Max2,Max3,Max4],AllMax),
        writeln(AllMax).
:- initialization(go).
%--------------------------------------------------------- 63 hakank_swi_euler12
/*

  Euler Problem 12 in SWI Prolog

  Problem 12
  """
  The sequence of triangle numbers is generated by adding the natural numbers. 
  So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. 
  The first ten terms would be:

  1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

  Let us list the factors of the first seven triangle numbers:

       1: 1
       3: 1,3
       6: 1,2,3,6
      10: 1,2,5,10
      15: 1,3,5,15
      21: 1,3,7,21
      28: 1,2,4,7,14,28

  We can see that the 7th triangle number, 28, is the first triangle number 
  to have over five divisors.

  Which is the first triangle number to have over five-hundred divisors?")
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).


go :-
        L = [
             euler12a
            ],
        run_problems(L).


%%
%% 0.95s
%%
euler12a :- 
        e12a(0,0,Num,0,Len),
        writeln([num=Num,len=Len]).

e12a(_N,Num,Num,Len,Len) :- Len > 500.
e12a(N,Num0,Num,Len0,Len) :-
        Len0 < 500,
        Num1 is Num0+N+1, % the N'th triangle number
        num_divisors(Num1,Len1),
        N1 is N+1,
        e12a(N1,Num1,Num,Len1,Len).
:- initialization(go).
%--------------------------------------------------------- 64 hakank_swi_euler13
/*

  Euler Problem 13 in SWI Prolog

  Problem 13
  """ 
  Work out the first ten digits of the sum of the following 
  one-hundred 50-digit numbers.
    37107287533902102798797998220837590246510135740250
    ....
    20849603980134001723930671666823555245252804609722
    53503534226472524250874054075591789781264330331690")
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).
:- use_module(library(readutil)). % for read_file_to_string/3.

go :-
        L = [
             euler13a %%,
             %% euler13b
            ],
        run_problems(L).
  
%% 0.000s
euler13a :-
        nums(Nums),
        sum_list(Nums, Sum),
        sub_atom(Sum, _Before, 10, _After, Sub),
        writeln(Sub).

%%
%% Reading the 100 numbers from a file.
%%
%% 0.000s
%%
euler13b :-
        read_file_to_string("euler13_data.txt",Str,[]),
        split_string(Str,"\n", "",Lines),
        %% number_code has the arguments in wrong order for maplist        
        %% maplist(codes_number,Lines,Nums),
        maplist_rev_args(number_codes,Lines,Nums),
        sum_list(Nums, Sum),
        number_chars(Sum,Codes),
        length(Sub,10),
        append(Sub,_,Codes),
        writeln(Sub).

%%
%% Reverse number_codes/2 for maplist/3.
%% (But cf maplist_rev_args/3 for this.)
%%
codes_number(String,Number) :-
        number_codes(Number,String).


nums(Nums) :-
        Nums =
        [37107287533902102798797998220837590246510135740250,
         46376937677490009712648124896970078050417018260538,
         74324986199524741059474233309513058123726617309629,
         91942213363574161572522430563301811072406154908250,
         23067588207539346171171980310421047513778063246676,
         89261670696623633820136378418383684178734361726757,
         28112879812849979408065481931592621691275889832738,
         44274228917432520321923589422876796487670272189318,
         47451445736001306439091167216856844588711603153276,
         70386486105843025439939619828917593665686757934951,
         62176457141856560629502157223196586755079324193331,
         64906352462741904929101432445813822663347944758178,
         92575867718337217661963751590579239728245598838407,
         58203565325359399008402633568948830189458628227828,
         80181199384826282014278194139940567587151170094390,
         35398664372827112653829987240784473053190104293586,
         86515506006295864861532075273371959191420517255829,
         71693888707715466499115593487603532921714970056938,
         54370070576826684624621495650076471787294438377604,
         53282654108756828443191190634694037855217779295145,
         36123272525000296071075082563815656710885258350721,
         45876576172410976447339110607218265236877223636045,
         17423706905851860660448207621209813287860733969412,
         81142660418086830619328460811191061556940512689692,
         51934325451728388641918047049293215058642563049483,
         62467221648435076201727918039944693004732956340691,
         15732444386908125794514089057706229429197107928209,
         55037687525678773091862540744969844508330393682126,
         18336384825330154686196124348767681297534375946515,
         80386287592878490201521685554828717201219257766954,
         78182833757993103614740356856449095527097864797581,
         16726320100436897842553539920931837441497806860984,
         48403098129077791799088218795327364475675590848030,
         87086987551392711854517078544161852424320693150332,
         59959406895756536782107074926966537676326235447210,
         69793950679652694742597709739166693763042633987085,
         41052684708299085211399427365734116182760315001271,
         65378607361501080857009149939512557028198746004375,
         35829035317434717326932123578154982629742552737307,
         94953759765105305946966067683156574377167401875275,
         88902802571733229619176668713819931811048770190271,
         25267680276078003013678680992525463401061632866526,
         36270218540497705585629946580636237993140746255962,
         24074486908231174977792365466257246923322810917141,
         91430288197103288597806669760892938638285025333403,
         34413065578016127815921815005561868836468420090470,
         23053081172816430487623791969842487255036638784583,
         11487696932154902810424020138335124462181441773470,
         63783299490636259666498587618221225225512486764533,
         67720186971698544312419572409913959008952310058822,
         95548255300263520781532296796249481641953868218774,
         76085327132285723110424803456124867697064507995236,
         37774242535411291684276865538926205024910326572967,
         23701913275725675285653248258265463092207058596522,
         29798860272258331913126375147341994889534765745501,
         18495701454879288984856827726077713721403798879715,
         38298203783031473527721580348144513491373226651381,
         34829543829199918180278916522431027392251122869539,
         40957953066405232632538044100059654939159879593635,
         29746152185502371307642255121183693803580388584903,
         41698116222072977186158236678424689157993532961922,
         62467957194401269043877107275048102390895523597457,
         23189706772547915061505504953922979530901129967519,
         86188088225875314529584099251203829009407770775672,
         11306739708304724483816533873502340845647058077308,
         82959174767140363198008187129011875491310547126581,
         97623331044818386269515456334926366572897563400500,
         42846280183517070527831839425882145521227251250327,
         55121603546981200581762165212827652751691296897789,
         32238195734329339946437501907836945765883352399886,
         75506164965184775180738168837861091527357929701337,
         62177842752192623401942399639168044983993173312731,
         32924185707147349566916674687634660915035914677504,
         99518671430235219628894890102423325116913619626622,
         73267460800591547471830798392868535206946944540724,
         76841822524674417161514036427982273348055556214818,
         97142617910342598647204516893989422179826088076852,
         87783646182799346313767754307809363333018982642090,
         10848802521674670883215120185883543223812876952786,
         71329612474782464538636993009049310363619763878039,
         62184073572399794223406235393808339651327408011116,
         66627891981488087797941876876144230030984490851411,
         60661826293682836764744779239180335110989069790714,
         85786944089552990653640447425576083659976645795096,
         66024396409905389607120198219976047599490197230297,
         64913982680032973156037120041377903785566085089252,
         16730939319872750275468906903707539413042652315011,
         94809377245048795150954100921645863754710598436791,
         78639167021187492431995700641917969777599028300699,
         15368713711936614952811305876380278410754449733078,
         40789923115535562561142322423255033685442488917353,
         44889911501440648020369068063960672322193204149535,
         41503128880339536053299340368006977710650566631954,
         81234880673210146739058568557934581403627822703280,
         82616570773948327592232845941706525094512325230608,
         22918802058777319719839450180888072429661980811197,
         77158542502016545090413245809786882778948721859617,
         72107838435069186155435662884062257473692284509516,
         20849603980134001723930671666823555245252804609722,
         53503534226472524250874054075591789781264330331690].
:- initialization(go).
%--------------------------------------------------------- 65 hakank_swi_euler14
/*

  Euler Problem 14 in SWI Prolog

  Problem 14
  """
  The following iterative sequence is defined for the set of positive integers:

  n n/2 (n is even)
  n 3n + 1 (n is odd)

  Using the rule above and starting with 13, we generate the following 
  sequence:
  13 40 20 10 5 16 8 4 2 1

  It can be seen that this sequence (starting at 13 and finishing at 1) 
  contains 
  10 terms. Although it has not been proved yet (Collatz Problem), it is 
  thought that all starting numbers finish at 1.

  Which starting number, under one million, produces the longest chain?

  NOTE: Once the chain starts the terms are allowed to go above one million.)
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/


:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler14a %% ,
             %% euler14b
            ],
        run_problems(L).


%%
%% 10.2s 
%%
euler14a :-
        abolish_all_tables,
        findall(Len-N,
                (
                 between(3,2,999_999,N),
                 collLength(N,Len)
                ),
                L),
        %% sort(1, @>, L, Sorted),
        %% [(MaxLen-N)|_] = Sorted,
        max_member(Max,L),
        (MaxLen-N) = Max,
        writeln([n=N,len=MaxLen]).

%%
%% 18.2s
%%
euler14b :-
        abolish_all_tables,
        e14b(3,999_999,[1,0],Max),
        writeln(Max).

e14b(N,Limit,Max,Max) :- N > Limit. % , !.
e14b(N,Limit,[M,Max0],Max) :-
        N =< Limit,
        collLength(N,Len),
        (Len > Max0
        ->
         Max1 = [N,Len]
        ;
         Max1 = [M,Max0]
         ),
        N1 is N + 2,
        e14b(N1,Limit,Max1,Max).
        

:- table collLength/2.
collLength(1,1). % :- !. % slightly faster with a cut.
collLength(N,L) :-
        N > 1,
        (
         N mod 2 =:= 0
        ->
         T is N div 2
        ;
         T is 3*N+1
        ),
        collLength(T,L1),
        L is L1 + 1.


%%
%% Experimental using mode tabling.
%% After http://picat-lang.org/euler/p14.pi
%%
%% But SWI-Prolog version 8.1.13 don't give the correct answer...
%% It shoule be fixed in 8.1.14.
%%
%% This takes about 34s.
%%
%% ?- make,abolish_all_tables,time(euler14xxx).
%%
%% [n=3,len=525]
%% chain_len=8
%% 
euler14xxx :-
        writeln("Nope, it got the correct length (525) but not the correct N (837799) nor the correct Chain."),
        % halt,
        abolish_all_tables,
        max_chain(N,Chain,Len),
        writeln([n=N,len=Len]),
        length(Chain,ChainLen),
        writeln(chain_len=ChainLen).

:- table max_chain(-,-,max).
max_chain(N,Chain,Len) :-
        %% between(3,2,999999,N),  % checking the odd numbers
        between(2,999999,N),  % checking all numbers -> [n=2,len=525], chain_len=2
        % writeln(n=N),
        gen(N,Chain,Len).

:- table gen(+,-,-). % original
gen(1,Chain,Len) :-
        !,
        Chain=[1],
        Len=1.
gen(N,Chain,Len) :-
        N > 1,
        N mod 2 =:= 0, % !,
        Ndiv2 is N div 2,
        gen(Ndiv2,Chain1,Len1),
        Chain=[N|Chain1],
        Len is Len1+1.
gen(N,Chain,Len) :-
        N > 1,
        N mod 2 =:= 1, % !,
        T3N1 is 3*N+1,
        gen(T3N1,Chain1,Len1),
        Chain=[N|Chain1],
        Len is Len1+1.
:- initialization(go).
%--------------------------------------------------------- 66 hakank_swi_euler15
/*

  Euler Problem 15 in SWI Prolog

  Problem 15
  """
  Starting in the top left corner of a 2×2 grid, there are 6 routes 
  (without backtracking) to the bottom right corner.
  
  How many routes are there through a 20×20 grid?
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).


go :-
        L = [
             euler15a
            ],
        run_problems(L).

%%
%% 0.000s
%%
euler15a :-
        %% prod(21..40) // prod(2..20)
        numlist(21,40,A),
        numlist(2,20,B),
        prodlist(A,ProdA),
        prodlist(B,ProdB),
        Tot is ProdA // ProdB,
        writeln(Tot).
:- initialization(go).
%--------------------------------------------------------- 67 hakank_swi_euler16
/*

  Euler Problem 16 in SWI Prolog

  Problem 16
  """
  2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
  
  What is the sum of the digits of the number 2^1000?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler16a
            ],
        run_problems(L).

%%
%% 0.000s
%%
euler16a :-
        N is 2^1000,
        digits_sum(N,Sum),
        writeln(Sum).

:- initialization(go).
%--------------------------------------------------------- 68 hakank_swi_euler17
/*

  Euler Problem 17 in SWI Prolog

  """
  If the numbers 1 to 5 are written out in words: one, two, three, four, five, 
  then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
  
  If all the numbers from 1 to 1000 (one thousand) inclusive were written out in 
  words, how many letters would be used?
  
  NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) 
  contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of 
  "and" when writing out numbers is in compliance with British usage.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler17a
            ],
        run_problems(L).

%%
%% 0.01s
%%
euler17a :-
        findall(Spell, 
                (between(1,1000,N),
                 spell(N,Spell)
                ), 
                L),
        concat_string_list(L, Str),
        string_length(Str, Len),
        writeln(Len).


digit(1,"one").
digit(2,"two").
digit(3,"three").
digit(4,"four").
digit(5,"five").
digit(6,"six").
digit(7,"seven").
digit(8,"eight").
digit(9,"nine").

teens(10,"ten").
teens(11,"eleven").
teens(12,"twelve").
teens(13,"thirteen").
teens(14,"fourteen").
teens(15,"fifteen").
teens(16,"sixteen").
teens(17,"seventeen").
teens(18,"eighteen").
teens(19,"nineteen").

tens(20,"twenty").
tens(30,"thirty").
tens(40,"forty").
tens(50,"fifty").
tens(60,"sixty").
tens(70,"seventy").
tens(80,"eighty").
tens(90,"ninety").

hundred(100,"onehundred").
thousand(1000,"onethousand").

% fix
spell(0, "") :- !.

% 1..10
spell(N,Spell) :-
        N > 0,
        N < 10, !,
        digit(N,Spell), !.

% 10..19
spell(N, Spell) :-
        N > 9,
        N < 20,
        teens(N,Spell), !.

% 20..99
spell(N, Spell) :-
        N >= 20,
        N < 100,
        !,
        D is 10*(N//10),
        tens(D,Ten),
        M is N mod 10,
        (M > 0
        ->
         digit(M, One)
        ;
         One = ""
        ),
        concat_string_list([Ten,One],Spell), !.

% 100.999
spell(N, Spell) :-
        N >= 100,
        N < 1000,
        Hundred is (N//100),
        digit(Hundred,Hundred1),
        M is N mod 100,
        spell(M, Ones),
        ( M > 0
        ->
          AndStr = "and"
        ; AndStr = ""
        ),
        concat_string_list([Hundred1,"hundred",AndStr,Ones],Spell), !.

% 1000
spell(1000, "onethousand") :-
        !.

:- initialization(go).
%--------------------------------------------------------- 69 hakank_swi_euler18
/*

  Euler Problem 18 in SWI Prolog

  """
  By starting at the top of the triangle below and moving to adjacent 
  numbers on the row below, the maximum total from top to bottom is 23.

  3
  7 4
  2 4 6
  8 5 9 3

  That is, 3 + 7 + 4 + 9 = 23.

  Find the maximum total from top to bottom of the triangle below:

   75
   95 64
   17 47 82
   18 35 87 10
   20 04 82 47 65
   19 01 23 75 03 34
   88 02 77 73 07 63 67
   99 65 04 28 06 16 70 92
   41 41 26 56 83 40 80 70 33
   41 48 72 33 47 32 37 16 94 29
   53 71 44 65 25 43 91 52 97 51 14
   70 11 33 28 77 73 17 78 39 68 17 57
   91 71 52 38 17 14 91 43 58 50 27 29 48
   63 66 04 68 89 53 67 30 73 16 69 87 40 31
   04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

  NOTE: As there are only 16384 routes, it is possible to solve this problem 
  by trying every route. However, Problem 67, is the same challenge with a 
  triangle containing one-hundred rows; it cannot be solved by brute force, 
  and requires a clever method! ;o)
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).



go :-
        L = [
             %% euler18a,
             euler18b
            ],
        run_problems(L).


p18(Triangle) :- 
        Triangle  = 
        [[75],
         [95,64],
         [17,47,82],
         [18,35,87,10],
         [20, 4,82,47,65],
         [19, 1,23,75, 3,34],
         [88, 2,77,73, 7,63,67],
         [99,65, 4,28, 6,16,70,92],
         [41,41,26,56,83,40,80,70,33],
         [41,48,72,33,47,32,37,16,94,29],
         [53,71,44,65,25,43,91,52,97,51,14],
         [70,11,33,28,77,73,17,78,39,68,17,57],
         [91,71,52,38,17,14,91,43,58,50,27,29,48],
         [63,66, 4,68,89,53,67,30,73,16,69,87,40,31],
         [ 4,62,98,27,23, 9,70,98,73,93,38,53,60, 4,23]].

%%
%% Using nb_setval for the global max value (sorry about that).
%% 0.06s
%%
euler18a :-
        abolish_all_tables,
        p18(Tri),
        nb_setval(maxval, 0),
        matrix_element5(Tri, 1, 1, Tri11),
        pp(1, 1, Tri11, Tri),
        nb_getval(maxval,MaxVal),
        writeln(MaxVal).
        
% :- table pp/4. % It's much slower with tabling: 0.38s
pp(Row, Column, Sum, Tri) :-
        nb_getval(maxval,MaxVal),
        (Sum > MaxVal
        ->
         nb_setval(maxval,Sum)
        ;
         true
        ),
        Row1 is Row + 1,
        length(Tri,TriLen),
        (Row1 =< TriLen
        ->
         findall(_,
                 (between(0,1,I),
                  ColumnI is Column+I,
                  matrix_element5(Tri,Row1,ColumnI,TriRC1),
                  SumT is Sum+TriRC1,
                  pp(Row1,ColumnI, SumT, Tri)
                 ),
                 _)
        ;
        true
        ).
        
%%
%% (Idea from Neng-Fa Zhou.)
%%
%% NOTE: The tabling (+,+,+,max) does not work (as I expect).
%% Perhaps it will be fixed in version 8.1.14.
%%
%% Without tabling
%% ?- make, euler18xxx.
%% 794
%% true ;
%% 794
%% true ;
%% 852
%%
euler18b :-
        abolish_all_tables,
        p18(Tri),
        pp2(1,1,Tri,Sum),
        writeln(Sum).

:- table pp2(+,+,+,max).
pp2(Row,_Column,Tri,Sum) :-
        length(Tri,Len),
        Row > Len,
        Sum = 0.
pp2(Row,Column,Tri,Sum) :-
        length(Tri,Len),
        Row =< Len,
        Row1 is Row+1,
        pp2(Row1,Column,Tri,Sum1),
        matrix_element5(Tri,Row,Column,TriRC),
        Sum is Sum1+TriRC.
pp2(Row,Column,Tri,Sum) :-
        length(Tri,Len),
        Row =< Len,        
        Row1 is Row+1, 
        Column1 is Column+1,
        pp2(Row1,Column1,Tri,Sum1),
        matrix_element5(Tri,Row,Column,TriRC),
        Sum is Sum1+TriRC.

:- initialization(go).
%--------------------------------------------------------- 70 hakank_swi_euler19
/*

  Euler problem 19 in SWI Prolog

  """
  You are given the following information, but you may prefer 
  to do some research for yourself.

  * 1 Jan 1900 was a Monday.
  * Thirty days has September,
    April, June and November.
    All the rest have thirty-one,
    Saving February alone,
    Which has twenty-eight, rain or shine.
    And on leap years, twenty-nine.
  * A leap year occurs on any year evenly divisible by 4, but not 
    on a century unless it is divisible by 400.
  
  How many Sundays fell on the first of the month during the 
  twentieth century (1 Jan 1901 to 31 Dec 2000)?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler19a
            ],
        run_problems(L).
  
%%
%% 0.1s 
%%
euler19a :-
        date2julian(1901, 1, 1,DateFrom),
        date2julian(2000,12,31,DateTo),
        findall(Date,
                between(DateFrom,DateTo,Date),
                L),
        e19a(L,0,Sum),
        writeln(Sum).

e19a([],Sum,Sum).
e19a([D|T],Sum0,Sum) :-
        julian2date(D, DD),
        [DD1,DD2,DD3] = DD,
        dow(DD1,DD2,DD3,Dow),
        (  
           (DD3 == 1,  Dow == 0)
        ->
           Sum1 is Sum0 + 1
        ;
           Sum1 is Sum0
        ),
        e19a(T,Sum1,Sum).


%
% Day of week, Sakamoto's method
% http:%en.wikipedia.org/wiki/Weekday_determination#Sakamoto.27s_Method
%
dow(Y, M, D, Dow) :-
   T = [0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4],
   (M < 3
   ->
    YY is Y - 1
   ;
    YY is Y
   ),
   nth1(M,T,TM),
   Dow is (YY + YY div 4 - YY div 100 + YY div 400 + TM + D) mod 7.


%
% http://en.wikipedia.org/wiki/Julian_day
% gregorian date -> julian day
date2julian(Year,Month,Day, JD) :-
  A is floor((14-Month) / 12), % 1 for Jan or Feb, 0 for other months
  Y is Year + 4800 - A,
  M is Month + 12*A - 3, % 0 for Mars, 11 for Feb
  JD is Day + floor( (153*M + 2) / 5) + 365*Y + floor(Y/4) -
       floor(Y / 100) + floor(Y / 400) - 32045.


% julian day -> gregorian date
julian2date(JD, Date) :-
  Y is 4716,
  V is 3,
  J is 1401,
  U is 5,
  M is 2,
  S is 153,
  N is 12,
  W is 2,
  R is 4,
  B is 274277,
  P is 1461,
  C is  -38,
  F is JD + J + (((4 * JD + B) div 146097) * 3) div 4 + C,
  E is R * F + V,
  G is mod(E, P) div R,
  H is U * G + W,
  Day is (mod(H, S)) div U + 1,
  Month is mod(H div S + M, N) + 1,
  Year is (E div P) - Y + (N + M - Month) div N,
  Date = [Year,Month,Day].
:- initialization(go).
%---------------------------------------------------------- 71 hakank_swi_euler2
/*

  Euler Problem 2 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=2
  """
  Each new term in the Fibonacci sequence is generated by adding the previous two 
  terms. By starting with 1 and 2, the first 10 terms will be:

  1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  Find the sum of all the even-valued terms in the sequence which do not exceed 
  four million.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler2a % ,
             %% euler2b
            ],
        run_problems(L),
        nl.

%%
%% 0.001s
%%
euler2a :-
        abolish_all_tables,
        p2(Total), % get all < 4000000
        include(even,Total,L),
        sum_list(L,Sum),
        writeln(Sum).

%%
%% 0.001s
%%
euler2b :-
        abolish_all_tables,
        numlist(1,100,I), % The 100th Fib is large enough...
        maplist(fib,I,Fibs),
        include(less_than_and_even(4000000),Fibs,L),
        sum_list(L,Sum),
        writeln(Sum).



% This generates a list of all fib numbers < 4000000
p2(Total) :-
        p2(1, 1, Total).

% Some trickery to remove last element.
p2(C, _, [F|Total]) :-
        fib(C, F),
        (F #< 4000000
        ->
         C1 #= C+1,
         p2(C1, F, Total)
        ;
         Total = []
        ).

less_than_and_even(Y,X) :- X < Y, even(X).
:- initialization(go).
%--------------------------------------------------------- 72 hakank_swi_euler20
/*

  Euler problem 20 in SWI Prolog

  """
  n! means n (n 1) ... 3 2 1
  
  Find the sum of the digits in the number 100!"
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler20a %%,
             %% euler20b,
             %% euler20c,
             %% euler20d
            ],
        run_problems(L).

%%
%% 0.000s
%%
euler20a :-
        factorial2(100,F),
        digits_sum(F,Sum),        
        writeln(Sum).

%%
%% 0.000s
%%
euler20b :-
        factorial3(100,F),
        digits_sum(F,Sum),        
        writeln(Sum).

%%
%% 0.00s
%%
euler20c :-
        factorial4(100,F),
        digits_sum(F,Sum),        
        writeln(Sum).


%%
%% 0.002s
%%
euler20d :-
        n_factorial(100,F), % clpfd version
        digits_sum(F,Sum),
        writeln(Sum).
:- initialization(go).
%--------------------------------------------------------- 73 hakank_swi_euler21
/*

  Euler problem 21 in SWI Prolog

  """
  Let d(n) be defined as the sum of proper divisors of n (numbers less 
  than n which divide evenly into n).
  If d(a) = b and d(b) = a, where a /= b, then a and b are an amicable 
  pair and each of a and b are called amicable numbers.
  
  For example, the proper divisors of 220 are 
  1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
  The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
  
  Evaluate the sum of all the amicable numbers under 10000.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).


go :-
        L = [
             euler21a %%,
             %% euler21b
             ],
        run_problems(L).

%%
%% 0.27s
%%
euler21a :-
        abolish_all_tables,
        N = 10_000,
        findall(A,
                (
                 between(1,N, A),
                 amicable(A)
                ),
                As),
        sum_list(As,Sum),
        writeln(Sum).

%%
%% 7.5s (and use cuts!)
%%
euler21b :-
        abolish_all_tables,
        N = 10_000,
        findall(A,
                (
                 between(2,N, A),
                 amicable2(A)
                ),
                As),
        sum_list(As,Sum),
        writeln(Sum).


amicable(A) :-
        A > 1,
        sum_proper_divisors(A,B),
        A \= B,        
        sum_proper_divisors(B,C),
        A =:= C.


amicable2(A) :-
        A > 1,
        sum_proper_divisors2(A,B),
        A \= B,        
        sum_proper_divisors2(B,C),
        A =:= C, !.

:- initialization(go).
%--------------------------------------------------------- 74 hakank_swi_euler22
/*

  Euler problem 22 in SWI Prolog

  """
  Using names.txt (right click and 'Save Link/Target As...'), a 46K 
  text file containing over five-thousand first names, begin by sorting 
  it into alphabetical order. Then working out the alphabetical value 
  for each name, multiply this value by its alphabetical position in the 
  list to obtain a name score.

  For example, when the list is sorted into alphabetical order, COLIN, 
  which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in 
  the list. So, COLIN would obtain a score of 938 53 = 49714.

  What is the total of all the name scores in the file?")
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             %% euler22a,
             euler22b
            ],
        run_problems(L).

%%
%% 0.3s
%%
euler22a :-
        File = "euler22_names.txt",
        read_file_to_string(File,Str,[]),
        split_string(Str,",", "",Lines1),
        sort(Lines1,Lines),
        length(Lines,Len),
        findall(Score,
                (between(1,Len,I),
                 nth1(I,Lines,S1),
                 calc_score(I,S1,Score)
                ),
                Scores),
        sum_list(Scores,Sum),
        writeln(Sum).

%%
%% 0.04s
%%
euler22b :-
        File = "euler22_names.txt",
        read_file_to_string(File,Str,[]),
        split_string(Str,",", "",Lines1),
        sort(Lines1,Lines),
        length(Lines,Len),
        numlist(1,Len,Is),
        maplist(calc_score,Is,Lines,Scores),
        sum_list(Scores,Sum),
        writeln(Sum).

%%
%% Calculate the score of a name * I
%%
calc_score(I,Name,Score) :-
        re_replace("\""/g, "", Name,S),
        convert22(S,Code),
        sum_list(Code,CodeSum),
        Score is CodeSum*I.
        
% convert a string to alpha codes (A -> 1, B -> 2, etc)
convert22(S,Codes) :-
        string_codes(S,ASCII),
        maplist(to_alpha_upper,ASCII,Codes).
        

to_alpha_upper(N,Alpha) :-
        Alpha is  N - 64.
:- initialization(go).
%--------------------------------------------------------- 75 hakank_swi_euler23
/*

  Euler problem 23 in SWI Prolog

  """
  A perfect number is a number for which the sum of its proper divisors 
  is exactly equal to the number. For example, the sum of the proper divisors 
  of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.

  A number n is called deficient if the sum of its proper divisors is less than 
  n and it is called abundant if this sum exceeds n.

  As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number 
  that can be written as the sum of two abundant numbers is 24. By mathematical 
  analysis, it can be shown that all integers greater than 28123 can be written 
  as the sum of two abundant numbers. However, this upper limit cannot be reduced 
  any further by analysis even though it is known that the greatest number that 
  cannot be expressed as the sum of two abundant numbers is less than this limit.

  Find the sum of all the positive integers which cannot be written as the sum of 
  two abundant numbers.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler23a,
             euler23b
            ],
        run_problems(L).

%%
%% 6.7s
%%
euler23a :-
        abolish_all_tables,
        %% N = 28123, 
        %% From http://mathworld.wolfram.com/AbundantNumber.html: 
        %%  "Every number greater than 20161 can be expressed as a
        %% sum of two abundant numbers."
        N = 20161,
        numlist(1,N,Is),

        %% Get the Abundant numbers
        include(abundant,Is,Abundant),

        %% Find all numbers that can be
        %% written as a sum of two Abundant numbers
        findall(AB,
                (member(A,Abundant),
                 member(B,Abundant),
                 A =< B,
                 AB is A+B,
                 AB < N
                ),
                ABs),
        %% And now delete these from 1..N
        %% ABs: 6257244 numbers (including duplicates)
        %% ABsSorted: 18705 numbers
        sort(ABs,ABsSorted),    % sort and remove duplicates
        delete_all(Is,ABsSorted,L),
        %% subtract(Is,ABsSorted,L),
        sum_list(L,Sum),
        writeln(Sum).

%%
%% All clpfd version: 12.1s
%%
euler23b :-
        abolish_all_tables,
        %% N = 28123, 
        %% From http://mathworld.wolfram.com/AbundantNumber.html: 
        %%  "Every number greater than 20161 can be expressed as a
        %% sum of two abundant numbers."
        N = 20161,
        numlist(1,N,Is),

        %% Get the Abundant numbers
        include(abundant2,Is,Abundant),

        %% Find all numbers that can be
        %% written as a sum of two Abundant numbers
        findall(AB,
                (member(A,Abundant),
                 member(B,Abundant),
                 A #=< B,
                 AB #= A+B,
                 AB #< N
                ),
                ABs),
        %% And now delete these from 1..N
        %% ABs: 6257244 numbers (including duplicates)
        %% ABsSorted: 18705 numbers
        sort(ABs,ABsSorted),    % sort and remove duplicates
        delete_all(Is,ABsSorted,L),
        %% subtract(Is,ABsSorted,L),
        sum_list(L,Sum),
        writeln(Sum).

%%
%% Different clpfd approach. Nope, _much_ slower.
%%
euler23c :-
        N = 20161,
        numlist(1,N,Is),
        %% Get the Abundant numbers
        include(abundant2,Is,Abundant),
        
        list_domain_disjunction(Abundant,Domain),
        writeln(before_findall),
        findall(AB,e23c(N,Domain,AB),ABs),
        writeln(after_findall),
        sort(ABs,ABsSorted),
        writeln(after_sort),
        delete_all(Is,ABsSorted,L),
        writeln(after_delete_all),
        sum_list(L,Sum),
        writeln(Sum).


e23c(N,Domain, AB) :-
        A in Domain,
        B in Domain,
        A #=< B,
        AB #= A+B,
        AB #< N,
        labeling([],[A,B]).

abundant(N) :-
        sum_proper_divisors(N,D),
        D > N.


abundant2(N) :-
        sum_proper_divisors_clp(N,D),
        D #> N.


%%
%% sum_divisors2(N,Sum)
%%
%% Sum is the sum of (proper) divisors of N (including 1 but not including N).
%%
% :- table sum_proper_divisors_clp/2.
sum_proper_divisors_clp(N,Sum) :-
        sum_proper_divisors_clp(2,N,1,Sum), !.

sum_proper_divisors_clp(I,N,Sum,Sum) :-
        I > floor(sqrt(N)).

% I is a divisor of N
sum_proper_divisors_clp(I,N,Sum0,Sum) :-
        N mod I #= 0,
        NdivI #= N div I,
        Sum1 #= Sum0 + I,
        (I #\= NdivI
        -> 
         Sum2 #= Sum1 + NdivI
        ; 
         Sum2 #= Sum1
        ),
        I1 #= I+1,
        sum_proper_divisors_clp(I1,N,Sum2,Sum).

% I is no divisor of N.
sum_proper_divisors_clp(I,N,Sum0,Sum) :-
        % N mod I \= 0,
        I1 #= I+1,
        sum_proper_divisors_clp(I1,N,Sum0,Sum).
:- initialization(go).
%--------------------------------------------------------- 76 hakank_swi_euler24
/*

  Euler problem 24 in SWI Prolog

  """
  A permutation is an ordered arrangement of objects. For example, 3124 is one 
  possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are 
  listed numerically or alphabetically, we call it lexicographic order. The 
  lexicographic permutations of 0, 1 and 2 are:
   
      012   021   102   120   201   210
  
  What is the millionth lexicographic permutation of the digits 
  0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
  """ 

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             %% euler24a,
             euler24b
             %% , euler24c
            ],
        run_problems(L).

%%
%% 3.4s
%%
euler24a :-
        set_prolog_stack(global, limit(2_000_000_000)),
        numlist(0,9,L),
        findall(P,permutation(L,P),Permutations),
        nth1(1_000_000,Permutations,SolList),
        digit_list_to_num(SolList,Sol),
        writeln(Sol).

%%
%% 2.8s
%%
euler24b :-
        set_prolog_stack(global, limit(10_000_000_000)),
        N = 1_000_000,
        numlist(0,9,L),
        find_permutation(1,N,L,P),
        digit_list_to_num(P,Sol),
        writeln(Sol).

%%
%% Too slow!
%% 
euler24c :-
        set_prolog_stack(global, limit(2_000_000_000)),
        findall(L,permutation_clpfd(L,10),Permutations),
        nth1(1_000_000,Permutations,SolList),
        digit_list_to_num(SolList,Sol),
        writeln(Sol).


find_permutation(N,N,P,P).
find_permutation(I,N,P0,P) :-
        next_higher_permutation(P0,P1),
        I1 is I+1,
        find_permutation(I1,N,P1,P).

%%
%% Too slow for this
%%
permutation_clpfd(L, N) :-
        length(L, N),
        N1 #= N - 1,
        L ins 0..N1,
        all_different(L),
        labeling([bisect],L).

%%
%% next_higher_permutation/2
%%
%% From T. Van Le, "Techniques of Prolog Programming", page 100f
%% 
next_higher_permutation(L,L1) :-
   reverse3(L,[],L2),
   append(A,[X,Y|B],L2), X > Y,
   append(A,[X],C),
   append(A1,[U|B1],C), U > Y,
   append(A1,[Y|B1], B2),
   reverse3([U|B], B2,L1).

%
% reverse3/3
%
% From T. Van Le, "Techniques of Prolog Programming", page 99
reverse3([],R,R).
reverse3([H|T],R,L1) :-
        reverse3(T,[H|R],L1).

:- initialization(go).
%--------------------------------------------------------- 77 hakank_swi_euler25
/*

  Euler problem 25 in SWI Prolog

  """
  The Fibonacci sequence is defined by the recurrence relation:

     Fn = Fn1 + Fn2, where F1 = 1 and F2 = 1.
  
  Hence the first 12 terms will be:

     F1 = 1
     F2 = 1
     F3 = 2
     F4 = 3
     F5 = 5
     F6 = 8
     F7 = 13
     F8 = 21
     F9 = 34
     F10 = 55
     F11 = 89
     F12 = 144

  The 12th term, F12, is the first term to contain three digits.

  What is the first term in the Fibonacci sequence to contain 1000 digits?")
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             %% euler25a,
             euler25b
             %% euler25c
             ],
        run_problems(L).

%%
%% 0.09s
%%
euler25a :-
        abolish_all_tables,
        fib_while(1,1000).

%%
%% 0.03s
%%
euler25b :-
        fib_while2(3,[1,1],1000,List),
        last(List,Result),
        writeln(Result).

%%
%% fib_length(N,F,Len)
%%
%% F is the N'th Fibonacci number.
%% Len is the length of the N'th Fibonacci number,
%%
fib_length(N,F,Len) :-
        fib(N,F),
        atom_codes(F,L),
        length(L,Len).

%%
%% number_length(N,Len)
%%
%% Len is the length of integer N.
%% This is much slower than fib_length.
%% Throws overflow on larger numbers (> length of 309)
%% and is thus useless for this problem.
%%
number_length(N,Len) :-
        %% Len is 1+integer(floor(log(N)/log(10))).
        Len is 1+floor(log10(N)).


%%
%% Fibonacci loop.
%% The predicate just print the answer, i.e. there's
%% no output value.
%%
fib_while(N,Limit) :-
        fib_length(N,_F,Len),
        (
         Len < Limit
        -> 
         N1 is N+1,
         fib_while(N1, Limit)
        ;
         Winner is N+1,
         writeln(Winner)
        ).

%%
%% Another Fibonacci loop.
%%
%% The answer is in the last element of Result.
%% 
fib_while2(N,List,Limit,[N|Result]) :-
        List = [Last1,Last2|_Rest],
        Next is Last1 + Last2,
        name(Next,NextStr),
        length(NextStr,NextLen),
        N1 is N+1,        
        ( NextLen < Limit
        ->
          fib_while2(N1,[Next|List],Limit,Result)
        ;
          true
        ).

:- initialization(go).
%--------------------------------------------------------- 78 hakank_swi_euler26
/*

  Euler problem 26 in SWI Prolog

  """
  A unit fraction contains 1 in the numerator. The decimal representation of the 
  unit fractions with denominators 2 to 10 are given:

      1/2	= 	0.5
      1/3	= 	0.(3)
      1/4	= 	0.25
      1/5	= 	0.2
      1/6	= 	0.1(6)
      1/7	= 	0.(142857)
      1/8	= 	0.125
      1/9	= 	0.(1)
      1/10	= 	0.1

  Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be 
  seen that 1/7 has a 6-digit recurring cycle.

  Find the value of d < 1000 for which 1/d contains the longest recurring cycle in 
  its decimal fraction part.
  """ 

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler26a
            ],
        run_problems(L).

%%
%% 0.56s
%%
euler26a :-
        e26a(2,999,MaxD,MaxLen),
        writeln([d=MaxD,len=MaxLen]).

e26a(From,To,MaxD,MaxLen) :-
        e26a(From,To,0,MaxD,0,MaxLen).

e26a(From,To,MaxD, MaxD,MaxLen,MaxLen) :- From > To.
e26a(From,To,MaxD0,MaxD,MaxLen0,MaxLen) :-
         From1 is From + 1,        
        (
         is_prime(From)
        ->
         (
          get_rep_len(From, Len),
         ( Len > MaxLen0 ->
           MaxLen1 is Len,
           MaxD1 is From
         ;
           MaxLen1 is MaxLen0,
           MaxD1 is MaxD0
         ),
          e26a(From1,To,MaxD1,MaxD,MaxLen1,MaxLen)
         )
        ;
        e26a(From1,To,MaxD0,MaxD,MaxLen0,MaxLen)
        ).


%%
%% Get the length of the repeating cycle for 1/n
%%
/*
%% Picat code
get_rep_len(I,Len) =>
    FoundRemainders = [0 : _K in 1..I+1].to_array(),
    Value = 1,
    Position = 1,
    while (FoundRemainders[Value+1] == 0, Value != 0) 
        FoundRemainders[Value+1] := Position,
        Value := (Value*10) mod I,
        Position := Position+1
    end,
    Len = Position-FoundRemainders[Value+1].
*/
get_rep_len(I,Len) :-
        I1 is I+1,
        %% Create a list of I+1 elements, all are initially
        %% vars (will be filled out later)
        length(FoundRemainders,I1),
        Value0 is 1,
        Position0 is 1,
        get_rep_len(I,_Found,Value0,Value,Position0,Position,FoundRemainders),
        Value1 is Value + 1,
        nth1(Value1,FoundRemainders,FRV),
        Len is Position-FRV.


get_rep_len(_I,Found,Value,Value,Position,Position,_FoundRemainders) :-
        Found == true.

get_rep_len(I,Found, Value0,Value,Position0,Position,FoundRemainders) :-
        var(Found),
        nonvar(Value0),
        Value1 is Value0+1,
        nth1(Value1,FoundRemainders,FRV),
        (nonvar(FRV)
        ->
         get_rep_len(I,true,Value0,Value,Position0,Position,FoundRemainders)        
        ;
         var(FRV),
         nth1(Value1,FoundRemainders,Position0),
         Value2 is (Value0*10) mod I,
         Position1 is Position0 + 1,
         get_rep_len(I,Found,Value2,Value,Position1,Position,FoundRemainders)
        ).
:- initialization(go).
%--------------------------------------------------------- 79 hakank_swi_euler27
/*

  Euler problem 27 in SWI Prolog

  """
  Euler published the remarkable quadratic formula:

  n^2 + n + 41

  It turns out that the formula will produce 40 primes for the consecutive values 
  n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible by 
  41, and certainly when n = 41, 41^2 + 41 + 41 is clearly divisible by 41.

  Using computers, the incredible formula  n^2 − 79n + 1601 was discovered, which 
  produces 80 primes for the consecutive values n = 0 to 79. The product of the 
  coefficients, −79 and 1601, is −126479.

  Considering quadratics of the form:

      n^2 + an + b, where |a| < 1000 and |b| < 1000

      where |n| is the modulus/absolute value of n
      e.g. |11| = 11 and |−4| = 4

  Find the product of the coefficients, a and b, for the quadratic 
  expression that produces the maximum number of primes for consecutive 
  values of n, starting with n = 0.
  """ 

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler27a
            ],
        run_problems(L).

%%
%% 3.2s
%%
euler27a :-
        abolish_all_tables,
        T is 999,
        TNeg is -T,
        findall([Len,AB,A,B],
                (between(TNeg,T,A),
                 between(TNeg,T,B),
                 p27(A,B,Len),
                 AB is A*B
                ),
                L),
        sort(1, @>, L,LSorted),
        matrix_nth1(LSorted,1,2,MaxValue),
        writeln(MaxValue).
                

p27(A,B,N) :-
        N0 is 0,
        PP is N0^2 + A*N0 + B,
        PP > 1,
        p27_(PP,A,B,N0,N).

p27_(_PP,_A,_B,N,N).
p27_(PP,A,B,N0,N) :-
        PP > 1,
        prime_cached(PP),
        N1 is N0+1,        
        PP1 is N1^2 + A*N1 + B,
        p27_(PP1,A,B,N1,N).

% caching is_prime/1
:- table prime_cached/1.
prime_cached(N) :-
        is_prime(N).
:- initialization(go).
%--------------------------------------------------------- 80 hakank_swi_euler28
/*

  Euler problem 28 in SWI Prolog

  """
  Starting with the number 1 and moving to the right in a clockwise 
  direction a 5 by 5 spiral is formed as follows:
  
     21 22 23 24 25
     20  7  8  9 10
     19  6  1  2 11
     18  5  4  3 12
     17 16 15 14 13

  It can be verified that the sum of the numbers on the diagonals is 101.
  
  What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler28a
             %% euler28b
            ],
        run_problems(L).

%%
%% 0.000s
%%
euler28a :-
        S0 is 1,
        N is 3,
        e28a(N,S0,S),
        writeln(S).

e28a(N,S,S) :- N > 1001.
e28a(N,S0,S) :-
        S1 is S0 + 4 * N^2 - 6 * N + 6,
        N1 is N + 2,
        e28a(N1,S1,S).

%%
%% 0.000s
%%
euler28b :-
        findall(S,
                (between(3,1001,N),
                 N mod 2 =:= 1,
                 S is 4 * N^2 - 6 * N + 6
                ),
                L),
        sum_list(L,Sum0),
        Sum is Sum0 + 1,
        writeln(Sum).

:- initialization(go).
%--------------------------------------------------------- 81 hakank_swi_euler29
/*

  Euler problem 29 in SWI Prolog

  """
  Consider all integer combinations of a^b for 2 <= a <= 5 and 2 <= b <= 5:

      2^2=4, 2^3=8, 2^4=16, 2^5=32
      3^2=9, 3^3=27, 3^4=81, 3^5=243
      4^2=16, 4^3=64, 4^4=256, 4^5=1024
      5^2=25, 5^3=125, 5^4=625, 5^5=3125

  If they are then placed in numerical order, with any repeats removed, we get the 
  following sequence of 15 distinct terms:

  4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125

  How many distinct terms are in the sequence generated by a^b for 
  2 <= a <= 100 and 2 <= b <= 100?
  """ 

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler29a
            ],
        run_problems(L).

%%
%% 0.008s
%%
euler29a :-
        Min is 2,
        Max is 100,
        findall(AB,
                (between(Min,Max,A),
                 between(Min,Max,B),
                 AB is A^B
                ),
                L),
        sort(L,S),
        length(S,Len),
        writeln(Len).

:- initialization(go).
%---------------------------------------------------------- 82 hakank_swi_euler3
/*

  Euler Problem 3 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=3
  """
  The prime factors of 13195 are 5, 7, 13 and 29.
  
  What is the largest prime factor of the number 600851475143 ?
  """
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/
  
*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             %% euler3a,
             euler3b % ,
             %% euler3c
            ],
        run_problems(L).

  
%% 0.001s
euler3a :-
        abolish_all_tables,
        prime_factors(600851475143, Divisors),
        max_list(Divisors,Max),
        writeln(Max).

%% 0.000s
euler3b :-
        abolish_all_tables,
        prime_decomp(600851475143,Factors), 
        max_list(Factors,Max),
        writeln(Max).

%% 0.001s
euler3c :-
        abolish_all_tables,
        prime_factors(600851475143,Factors), 
        max_list(Factors,Max),
        writeln(Max).
:- initialization(go).
%--------------------------------------------------------- 83 hakank_swi_euler30
/*

  Euler problem 30 in SWI Prolog

  """
  Surprisingly there are only three numbers that can be written 
  as the sum of fourth powers of their digits:

     1634 = 1^(4) + 6^(4) + 3^(4) + 4^(4)
     8208 = 8^(4) + 2^(4) + 0^(4) + 8^(4)
     9474 = 9^(4) + 4^(4) + 7^(4) + 4^(4)

  As 1 = 1^(4) is not a sum it is not included.

  The sum of these numbers is 1634 + 8208 + 9474 = 19316.

  Find the sum of all the numbers that can be written as the sum of 
  fifth powers of their digits.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler30a
             %% euler30b
            ],
        run_problems(L).

%%
%% 1.12s
%%
euler30a :-
        From is 10,
        To is 6*9^5,
        findall(N,
                (between(From,To,N),
                 num_to_digit_list(N,Is),
                 maplist(sum_pow5,Is,Ps),
                 sum_list(Ps,N)
                ),
                L),
        sum_list(L,Sum),
        writeln(Sum).

%%
%% 1.2s
%%
euler30b :-
        From is 10,
        To is 6*9^5,
        e30b(From,To,0,S),
        writeln(S).

e30b(N,N,S,S).
e30b(N,To,S0,S) :-
        num_to_digit_list(N,Is),
        maplist(sum_pow5,Is,Ps),
        (
         sum_list(Ps,N)
        ->
         S1 is S0 + N
        ;
         S1 is S0
        ),
        N1 is N+1,
        e30b(N1,To,S1,S).

sum_pow5(I,P) :- P is I^5.
:- initialization(go).
%--------------------------------------------------------- 84 hakank_swi_euler31
/*

  Euler problem 31 in SWI Prolog

  Problem 31
  """
  In England the currency is made up of pound, £, and pence, p, and 
  there are eight coins in general circulation:

     1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).

  It is possible to make £2 in the following way:

     1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p

  How many different ways can £2 be made using any number of coins?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             %% euler31a,
             euler31b
             %% euler31c
            ],
        run_problems(L).

%%
%% 0.59s
%%
euler31a :-
        Coins = [200,100,50,20,10,5,2,1],
        findall(X,coins_a(Coins,X),L),
        length(L,Len),
        writeln(Len).


%%
%% 0.58s
%%
euler31b :-
        Coins = [200,100,50,20,10,5,2,1],
        findall(X,coins_b(Coins,X),L),
        length(L,Len),
        writeln(Len).

%%
%% 0.58s
%%
euler31c :-
        findall(X,coins_c(X),L),
        length(L,Len),
        writeln(Len).



coins_a(Coins,X) :-
        length(Coins,Len),
        length(X,Len),
        X ins 0..200,
        scalar_product(Coins,X,#=,200),
        labeling([ff,enum],X).

%% stricter domain
coins_b(Coins,X) :-
        length(Coins,Len),
        length(X,Len),
        max_list(Coins,MaxC),
        maplist(set_domain(MaxC),X,Coins),
        scalar_product(Coins,X,#=,200),
        labeling([ff,enum],X).

%% Restrict the domain of this X
set_domain(MaxC,X,C) :-
        MaxD #= MaxC div C,
        X in 0..MaxD.


coins_c(X) :-
        X = [A,B,C,D,E,F,G,H],
        X ins 0 .. 200,
        1*A + 2*B + 5*C + 10*D + 20*E + 50*F + 100*G + 200*H #= 200,
        labeling([ffc,enum],X).
:- initialization(go).
%--------------------------------------------------------- 85 hakank_swi_euler32
/*

  Euler problem 32 in SWI Prolog

  """
  We shall say that an n-digit number is pandigital if it makes use of 
  all the digits 1 to n exactly once; for example, the 5-digit number, 
  15234, is 1 through 5 pandigital.

  The product 7254 is unusual, as the identity, 39 × 186 = 7254, 
  containing multiplicand, multiplier, and product is 1 through 9 
  pandigital.

  Find the sum of all products whose multiplicand/multiplier/product 
  identity can be written as a 1 through 9 pandigital.
  HINT: Some products can be obtained in more than one way so be sure 
  to only include it once in your sum.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler32a
            ],
        run_problems(L).

%%
%% 0.23s
%%
euler32a :-
        findall(P,pandigital(P),L),
        sort(L,Ls),
        sum_list(Ls,Sum),
        writeln(Sum).


%%
%% clpfd approach: Find a proper pandigial number
%%
pandigital(Res) :-

  % the different lengths
  Len1 in 1..2,
  Len2 in 3..4,
  Len3 #= 4,

  %% must be a 9 digit number
  Len1 + Len2 + Len3 #= 9,

  indomain(Len1), %% must be instantiated
  
  length(X1,Len1),
  X1 ins 1..9,

  length(X2,Len2),
  X2 ins 1..9,

  length(X3,Len3), % the result
  X3 ins 1..9,

  flatten([X1,X2,X3], Vars),
  all_different(Vars),

  %% convert to number
  to_num(X1, Num1),
  to_num(X2, Num2),
  to_num(X3, Res),

  % calculate result
  Num1 * Num2 #= Res,

  labeling([ff,enum],Vars).

:- initialization(go).
%--------------------------------------------------------- 86 hakank_swi_euler33
/*

  Euler problem 33 in SWI Prolog

  """
  The fraction 49/98 is a curious fraction, as an inexperienced mathematician in 
  attempting to simplify it may incorrectly believe that 49/98 = 4/8, which is correct, 
  is obtained by cancelling the 9s.

  We shall consider fractions like, 30/50 = 3/5, to be trivial examples.

  There are exactly four non-trivial examples of this type of fraction, less than 
  one in value, and containing two digits in the numerator and denominator.

  If the product of these four fractions is given in its lowest common terms, find 
  the value of the denominator.
  """ 

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler33a
            ],
        run_problems(L).

%%
%% 0.0s
%%
euler33a :-
        check(1,9,1,S),
        SInv is 1/S,
        writeln(SInv).
      
check(Y1,Y2,S,S) :- Y1 >= Y2.
check(Y1,Y2,S0,S) :-
        Y1 < Y2,
        check(Y1,Y2,1,9,S0,ZS),
        Y3 is Y1+1,
        check(Y3,Y2,ZS,S).
        
check(_Y1,_Y2,Z1,Z2,S,S) :- Z1 > Z2.
check(Y1,Y2,Z1,Z2,S0,S) :-
        Z1 =< Z2,
        Tmp is 10.0*Y1-Z1,
        Tmp \== 0.0,
        X is 9.0*Y1*Z1/(10.0*Y1-Z1),
        ( (1.0*floor(X)=:=X*1.0, Y1/Z1 < 1.0, X < 10.0 )
        ->
          S1 is (S0*Y1)/Z1
        ;
          S1 is S0
        ),
        Z3 is Z1 + 1,
        check(Y1,Y2,Z3,Z2,S1,S).
:- initialization(go).
%--------------------------------------------------------- 87 hakank_swi_euler34
/*

  Euler problem 34 in SWI Prolog

  Problem 34
  """
  145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.
  
  Find the sum of all numbers which are equal to the sum of the 
  factorial of their digits.

  Note: as 1! = 1 and 2! = 2 are not sums they are not included.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler34a
            ],
        run_problems(L).

%%
%% 0.3s
%%
euler34a :-
        abolish_all_tables,
        findall(N,
               (between(10,100_000,N),
                num_to_digit_list(N,Is),
                maplist(factorial_cached,Is,Fs),
                sum_list(Fs,N)
               ),
               L),
        sum_list(L,Sum),
        writeln(Sum).

:- table factorial_cached/2.
factorial_cached(N,F) :-
        factorial4(N,F).
        
:- initialization(go).
%--------------------------------------------------------- 88 hakank_swi_euler35
/*

  Euler problem 35  in SWI Prolog

  """
  The number, 197, is called a circular prime because all rotations 
  of the digits: 197, 971, and 719, are themselves prime.

  There are thirteen such primes below 100: 
  2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

  How many circular primes are there below one million?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler35a
            ],
        run_problems(L).

%%
%% 9.8s
%%
euler35a :-
        findall(N,
                (between(1,1_000_000,N),
                 prime_cached(N),
                 circular_prime(N)
                ),
                L),
        length(L,Len),
        writeln(Len).

circular_prime(N) :-
        num_to_digit_list(N,Is),
        length(Is,Len),
        circular_prime(1,Len, Is).
circular_prime(Len,Len,_Is).
circular_prime(Len1,Len,Is) :-
        Len1 =< Len,
        rotate(Is,Is2),
        to_num(Is2,Num2),
        prime_cached(Num2),
        Len2 is Len1 + 1,
        circular_prime(Len2,Len,Is2).

prime_cached(N) :-
        is_prime(N).
:- initialization(go).
%--------------------------------------------------------- 89 hakank_swi_euler36
/*

  Euler problem 36 in SWI Prolog

  """
  The decimal number, 585 = 1001001001_(2) (binary), is palindromic 
  in both bases.
  
  Find the sum of all numbers, less than one million, which are palindromic 
  in base 10 and base 2.

  (Please note that the palindromic number, in either base, may not 
   include leading zeros.)
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler36a
            ],
        run_problems(L).

%%
%% 0.55s
%%
euler36a :-
        findall(N,
                (between(1,999_999,N),
                 palindromic2(N),
                 dec_to_base_list(N,2,L2),
                 palindromic(L2)
                ),
                L),
        sum_list(L,Sum),
        writeln(Sum).
        
%%
%% dec_to_base_list(N,Base,L)
%%
%% Convert decimal integer N to a list L of digits in base Base.
%%
dec_to_base_list(N,Base,L) :-
        dec_to_base_list(N,Base,[],L).

dec_to_base_list(0,_Base,L,L).
dec_to_base_list(N,Base,L0,[R|L]) :-
        N > 0,
        R is N mod Base,
        N1 is N div Base,
        dec_to_base_list(N1,Base,L0,L).
:- initialization(go).
%--------------------------------------------------------- 90 hakank_swi_euler37
/*

  Euler problem 37 in SWI Prolog

  """
  The number 3797 has an interesting property. Being prime itself, it is possible to 
  continuously remove digits from left to right, and remain prime at each stage: 
  3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.

  Find the sum of the only eleven primes that are both truncatable from left to right 
  and right to left.

  NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler37a
            ],
        run_problems(L).

%%
%% 7.0s
%%
euler37a :-
        abolish_all_tables,
        %% 2, 3, 5, and 7 are not considered truncable primes
        %% so we start on 9
        N = 11, % the start number
        S0 = 0, % the sum
        C0 = 0, % the counter
        C1 = 11, % there are 11 truntable primes
        e37a(N,C0,C1,S0,S),
        writeln(S).

e37a(_N,C,C,S,S).
e37a(N,C0,C,S0,S) :-
        C0 =< C,
        (
         truncatable_prime(N)
        ->
         C1 #= C0 + 1,
         S1 #= S0 + N
        ;
         C1 #= C0,
         S1 #= S0
        )
        ,
        %% next_prime(N,N2), % slower
        N2 #= N+2, % faster
        e37a(N2,C1,C,S1,S).


truncatable_prime(N) :-
        prime_tabled(N),
        num_to_digit_list(N,L),

        findall(X,append(X,Y,L),Left1),
        delete(Left1,[],Left),
        check_prime_list(Left),

        findall(Y,append(X,Y,L),Right1),
        delete(Right1,[],Right),
        check_prime_list(Right).


check_prime_list([]).
check_prime_list([X|Xs]) :-
        digit_list_to_num(X,10,N),
        prime_tabled(N),
        check_prime_list(Xs).
:- initialization(go).
%--------------------------------------------------------- 91 hakank_swi_euler38
/*

  Euler problem 38 in SWI Prolog

  """
  Take the number 192 and multiply it by each of 1, 2, and 3:

      192 × 1 = 192
      192 × 2 = 384
      192 × 3 = 576

  By concatenating each product we get the 1 to 9 pandigital, 
  192384576. We will call 192384576 the concatenated product of 192 
  and (1,2,3)

  The same can be achieved by starting with 9 and multiplying by 
  1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the 
  concatenated product of 9 and (1,2,3,4,5).

  What is the largest 1 to 9 pandigital 9-digit number that can be 
  formed as the concatenated product of an integer with 
  (1,2, ... , n) where n > 1?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler38a
            ],
        run_problems(L).

%%
%% 0.09s
%%
euler38a :-
        findall(SS,
                (between(9,9876,N),
                 num_to_digit_list(N,S1),
                 findall(NN,
                         (between(2,3,I),
                          NI is N*I,
                          num_to_digit_list(NI,S2),
                          append(S1,S2,S),
                          length(S,9),
                          all_different(S),
                          \+ member(0,S),
                          digit_list_to_num(S,NN)
                         ),
                         SS)
                ),L),
        sort(L,Ls),
        flatten(Ls,Lf),        
        delete(Lf,[],Lf2),
        max_list(Lf2,Max),
        writeln(Max).
:- initialization(go).
%--------------------------------------------------------- 92 hakank_swi_euler39
/*

  Euler problem 39 in SWI Prolog

  """
  If p is the perimeter of a right angle triangle with integral length sides, 
  {a,b,c}, there are exactly three solutions for p = 120.
   
  {20,48,52}, {24,45,51}, {30,40,50}
   
  For which value of p <= 1000, is the number of solutions maximised?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler39a
            ],
        run_problems(L).

%%
%% 12.5s
%%
euler39a :-
        N = 1000,
        findall(I2,
                (between(1,N,I),
                 I2 is I*I
                ),
                Squares),
        findall(C,
                (member(A,Squares),
                 member(B,Squares),
                 A #=< B,
                 AB #= A+B,
                 memberchk(AB,Squares),
                 C is round(sqrt(A) + sqrt(B) + sqrt(AB)),
                 C =< 1000
                ),
                Valid),
        sort(Valid,Sorted),
        findall([Count-C],
                (member(C,Sorted),
                 count_occurrences(Valid,C,Count)
                ),
                L),
        sort(1,@>,L,Counts),
        Counts = [[MaxCount-Num]|_],
        writeln([num=Num,max_count=MaxCount]).

:- initialization(go).
%---------------------------------------------------------- 93 hakank_swi_euler4
/*

  Euler Problem 4 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=4
  """
  A palindromic number reads the same both ways. The largest palindrome
  made from the product of two 2-digit numbers is 9009 = 91*99.

  Find the largest palindrome made from the product of two 3-digit numbers.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler4a % ,
             %% euler4b             
            ],
        run_problems(L).



% 0.31s
euler4a :-
        From = 100,
        To = 999,        
        findall(IJ,
                (between(From,To,I),
                 between(I,To,J),
                 IJ #= I*J,
                 palindromic2(IJ)
                ),
                IJs),
        max_list(IJs,Max),
        writeln(Max).

%%
%% Skipping findall/3 and between/3, and rolling
%% a double loop manually.
%% Slightly slower: 0.43s
%%
euler4b :-
        From = 100,
        To = 999,
        e4b(From,From,From,To,0,Max),
        writeln(Max).

e4b(To,_FromBase,To,To,Max,Max).
e4b(From,FromBase,To0,To,Max0,Max) :-
        From #=< To0,
        T #= To0*From,
        (
         (T #> Max0, palindromic2(T))
        ->
         Max1 #= T
        ;
         Max1 #= Max0
        ),
        From1 #= From + 1,
        e4b(From1,FromBase,To0,To,Max1,Max).
% Reset From
e4b(From,FromBase,To0,To,Max0,Max) :-
        From #> To0,
        To1 #= To0 + 1,
        e4b(FromBase,FromBase,To1,To,Max0,Max).
:- initialization(go).
%--------------------------------------------------------- 94 hakank_swi_euler40
/*

  Euler problem 40 in SWI Prolog

  """
  An irrational decimal fraction is created by concatenating the positive integers:
   
  0.123456789101112131415161718192021...
   
  It can be seen that the 12th digit of the fractional part is 1.

  If dn represents the nth digit of the fractional part, find the 
  value of the following expression.
  
  d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler40a
            ],
        run_problems(L).

%%
%% 3.1s
%%
euler40a :-
        N = 1_000_000,
        %% Generate all digits for 1..10^6
        findall(S,
                (between(1,N,I),
                 num_to_digit_list(I,S)
                ),
                L),
        flatten(L,Ls),
        findall(T,
                (
                 between(1,6,I),
                 I2 is 10^I,
                 nth1(I2,Ls,T)
                ),
                Ts),
        prodlist(Ts,Prod),
        writeln(Prod).
:- initialization(go).
%--------------------------------------------------------- 95 hakank_swi_euler41
/*

  Euler problem 41 in SWI Prolog

  """
  We shall say that an n-digit number is pandigital if it makes use of all 
  the digits 1 to n exactly once. For example, 2143 is a 4-digit pandigital 
  and is also prime.

  What is the largest n-digit pandigital prime that exists?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             %% euler41a,
             euler41b
            ],
        run_problems(L).

%%
%% 5.06s
%%
euler41a :-
        findall(P,
                (
                 between(2,9,N),
                 numlist(1,N,L),
                 permutation(L,Perm),
                 digit_list_to_num(Perm,P),
                 is_prime(P)
                ),
                L),
        max_list(L,Max),
        writeln(Max).
        
%%
%% 5.05s
%%
euler41b :-
        
        findall(P,
                (
                 between(2,9,N),
                 numlist(1,N,L),
                 permutation(L,Perm),
                 digit_list_to_num(Perm,P),
                 is_prime(P),
                 nb_setval(p,P)
                ),
                L),
        nb_getval(p,Max),
        writeln(Max).
        



%%
%% Extremly slow (what a surprise! :-)
%%
euler41xxx :-
        findall(P,
                (between(3,2,987654321,P),
                 num_to_digit_list(P,Ps),
                 all_different(Ps),
                 is_prime(P)
                ),
                L),
        length(L,Len),
        writeln(Len),
        max_list(L,Max),
        writeln(Max).
:- initialization(go).
%--------------------------------------------------------- 96 hakank_swi_euler42
/*

  Euler problem 42 in SWI Prolog

  """
  The nth term of the sequence of triangle numbers is given by, 
      tn = 1/2*n*(n+1); 
  so the first ten triangle numbers are:

  1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

  By converting each letter in a word to a number corresponding to its 
  alphabetical position and adding these values we form a word value. For example, 
  the word value for SKY is 19 + 11 + 25 = 55 = t10. If the word value 
  is a triangle number then we shall call the word a triangle word.

  Using words.txt (right click and 'Save Link/Target As...'), a 16K text file 
  containing nearly two-thousand common English words, how many 
  are triangle words?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).
:- use_module(library(readutil)).

go :- 
        L = [
             euler42a
            ],
        run_problems(L).
             
%%
%% 0.01s
%%
euler42a :-
        read_file_to_string("euler42_names.txt",Str,[]),
        re_replace('"'/g,"",Str,Str2),        
        split_string(Str2,",","",Lines),
        numlist(1,100,Is),
        maplist(triangle_number,Is,Ts),
        findall(Ss,
                (member(S,Lines),
                 upper_string_to_digit_list(S,D),
                 sum_list(D,Ss),
                 memberchk(Ss,Ts)
                ),
                L
               ),
        length(L,Len),
        writeln(Len).

triangle_number(N,T) :-
        T is (N*(N+1)) div 2.

upper_string_to_digit_list(N,L) :-
        atom_codes(N,L2),
        maplist(to_upper_alpha,L2,L).

to_upper_alpha(N,Alpha) :-
        Alpha #= N - 64.
:- initialization(go).
%--------------------------------------------------------- 97 hakank_swi_euler43
/*

  Euler problem 43 in SWI Prolog

  """  
  The number, 1406357289, is a 0 to 9 pandigital number because it is made up of 
  each of the digits 0 to 9 in some order, but it also has a rather interesting 
  sub-string divisibility property.
  
  Let d1 be the 1st digit, d2 be the 2nd digit, and so on. In this way, we 
  note the following:
  
      * d2d3d4=406 is divisible by 2
      * d3d4d5=063 is divisible by 3
      * d4d5d6=635 is divisible by 5
      * d5d6d7=357 is divisible by 7
      * d6d7d8=572 is divisible by 11
      * d7d8d9=728 is divisible by 13
      * d8d9d10=289 is divisible by 17
  
  Find the sum of all 0 to 9 pandigital numbers with this property.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler43a
            ],
        run_problems(L).

%%
%% 0.3s
%%
euler43a :-
        findall(N, e43a(N),L),
        sum_list(L,Sum),
        writeln(Sum).

%%
%% Too slow.
%%
euler43b :-
        numlist(0,9,Is),
        Primes = [2,3,5,7,11,13,17],
        numlist(2,8,Ts),
        findall(L,
                (permutation(Is,L),
                 writeln(L),
                 maplist(e43a_test(L),Ts,Primes)
                ),
                Ls),
        sum_list(Ls,Sum),
        writeln(Sum).

e43a(N) :-
        Primes = [2,3,5,7,11,13,17],
        length(X,10),
        X ins 0..9,

        all_different(X),
        numlist(2,8,Is),
        maplist(e43a_test(X),Is,Primes),
        
        labeling([ffc,bisect],X),
        to_num(X,N).

e43a_test(X,I,P) :-
        element(I,X,XI),
        I1 #= I+1,
        element(I1,X,XI1),
        I2 #= I+2,
        element(I2,X,XI2),
        (100*XI + 10*XI1 + XI2) mod P #= 0.
:- initialization(go).
%--------------------------------------------------------- 98 hakank_swi_euler44
/*

  Euler problem 44 in SWI Prolog

  """  
  Pentagonal numbers are generated by the formula, P(n)=n(3n−1)/2. 
  The first ten pentagonal numbers are:

  1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...

  It can be seen that P(4) + P(7) = 22 + 70 = 92 = P(8). However, 
  their difference,  70 − 22 = 48, is not pentagonal.

  Find the pair of pentagonal numbers, P(j) and P(k), for which their sum 
  and difference is pentagonal and D = |P(k) − P(j)| is minimised; what 
  is the value of D?  
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler44a
             %% euler44b
            ],
        run_problems(L).


%%
%% 3.1s
%%
euler44a :-
        M = 2500,
        numlist(1,M,Is),
        maplist(pentagonal_number,Is,Ps),

        list_domain_disjunction(Ps,Domain),
        Vars = [J,K,A,D],
        Vars ins Domain,
        
        J #< K,
        A #= J+K,
        D #= abs(J-K),
        labeling([max,down,enum],Vars),
        writeln(D).

%%
%% 148.5s
%%
euler44b :-
        M = 2500,
        numlist(1,M,Is),
        maplist(pentagonal_number,Is,Ps),
        findall(B,
                (member(J,Ps),
                 member(K,Ps),
                 J < K,
                 A #= J+K,
                 memberchk(A,Ps),
                 B #= abs(J-K),
                 memberchk(B,Ps)
                ),
                L),
        writeln(L),
        nl.



pentagonal_number(N,P) :-
        P #= N*(3*N-1) div 2.

      
:- initialization(go).
%--------------------------------------------------------- 99 hakank_swi_euler45
/*

  Euler problem 45 in SWI Prolog

  """  
  Triangle, pentagonal, and hexagonal numbers are generated by the following formulae:

  Triangle 	  	Tn=n(n+1)/2 	  	1, 3, 6, 10, 15, ...
  Pentagonal 	  	Pn=n(3n−1)/2 	  	1, 5, 12, 22, 35, ...
  Hexagonal 	  	Hn=n(2n−1) 	  	1, 6, 15, 28, 45, ...

  It can be verified that T(285) = P(165) = H(143) = 40755.

  Find the next triangle number that is also pentagonal and hexagonal.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler45a
            ],
        run_problems(L).

%%
%% 0.1s
%%
euler45a :-
        T is 285+1,
        tri(T,TT),
        P is 165,
        pent(P,PP),
        H is 143,
        hex(H,HH), 
        e45a(T,TT,P,PP,H,HH,X),
        writeln(X).

e45a(_,X,_,X,_,X,X).

e45a(TN,T,PN,P,HN,H,X) :-
        T > P,
        PN1 is PN+1,
        pent(PN1,PP),
        e45a(TN,T,PN1,PP,HN,H,X).

e45a(TN,T,PN,P,HN,H,X) :-
        P > H,
        HN1 is HN+1,
        hex(HN1,HH),
        e45a(TN,T,PN,P,HN1,HH,X).

e45a(TN,T,PN,P,HN,H,X) :-
        T > H,
        HN1 is HN+1,
        hex(HN1,HH),
        e45a(TN,T,PN,P,HN1,HH,X).

e45a(TN,T,PN,P,HN,H,X) :-
        (T \= P ; P \= H ; T \= H),
        TN1 is TN+1,
        tri(TN,TT),
        e45a(TN1,TT,PN,P,HN,H,X).



pent(N,P) :- P is N*(3*N-1) div 2.
tri(N,T) :- T is N*(N+1) div 2.
hex(N,H) :- H is N*(2*N-1).
:- initialization(go).
%-------------------------------------------------------- 100 hakank_swi_euler46
/*

  Euler problem 46 in SWI Prolog

  """  
  It was proposed by Christian Goldbach that every odd composite number can be 
  written as the sum of a prime and twice a square.

  9 = 7 + 2×1^2
  15 = 7 + 2×2^2
  21 = 3 + 2×3^2
  25 = 7 + 2×3^2
  27 = 19 + 2×2^2
  33 = 31 + 2×1^2

  It turns out that the conjecture was false.

  What is the smallest odd composite that cannot be written as the 
  sum of a prime and twice a square?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler46a
            ],
        run_problems(L).


%%
%% 0.5s
%%
euler46a :-
        findall(I,
                (between(3,2,10000,I),
                 \+ is_prime(I),
                 S is round(sqrt(I/2)),
                 findall(J,
                         (between(1,S,J),
                          Ts is J*J*2,
                          T is abs(I-Ts),
                          is_prime(T)
                         ),
                         Js),
                 Js = []
                ),
                L),
        min_list(L,Min),
        writeln(Min).
               
                
:- initialization(go).
%-------------------------------------------------------- 101 hakank_swi_euler47
/*

  Euler problem 47 in SWI Prolog

  """  
  The first two consecutive numbers to have two distinct prime factors are:

  14 = 2 x 7
  15 = 3 x 5

  The first three consecutive numbers to have three distinct 
  prime factors are:

  644 = 2^2 x 7 x 23
  645 = 3 x 5 x 43
  646 = 2 x 17 x 19.

  Find the first four consecutive integers to have four distinct primes 
  factors. What is the first of these numbers?
  """ 

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler47a
             %% euler47b
            ],
        run_problems(L).


%%
%% 4.2s
%%
euler47a :-
        abolish_all_tables,
        find_four_consecutive_numbers_n(1,0,Res),
        writeln(Res).


%%
%% 12.9s
%%
euler47b :-
        abolish_all_tables,        
        findall(I,
                (between(1,300000,I),
                 prime_factors_cache(I,F1),
                 sort(F1,F),
                 length(F,4)
                ),
                L),
        find_four_consecutive_numbers(L,[],Res),
        writeln(Res).



find_four_consecutive_numbers([],Res,Res).
find_four_consecutive_numbers([X1,X2,X3,X4|Res],L0,L) :-
        ( (X2 is X1 + 1,
           X3 is X2 + 1,
           X4 is X3 + 1
          )
        ->
          L1 = X1,
          find_four_consecutive_numbers([],L1,L)
        ;
          L1 = L0,
          Res1 = [X2,X3,X4|Res],
          find_four_consecutive_numbers(Res1,L1,L)
        ).

find_four_consecutive_numbers_n(0,S,S).
find_four_consecutive_numbers_n(N,S0,S) :-
        (
         (
          prime_factors_cache(N,F),
          length(F,4),
        
          N1 is N + 1,
          prime_factors_cache(N1,F1),
          length(F1,4),
          
          N2 is N + 2,
          prime_factors_cache(N2,F2),
          length(F2,4),
          
          N3 is N + 3,
          prime_factors_cache(N3,F3),
          length(F3,4)
         )
        ->
          find_four_consecutive_numbers_n(0,N,S)
        ;
         N1 is N+1,
         find_four_consecutive_numbers_n(N1,S0,S)
        ).

:- table prime_factors_cache/2.
prime_factors_cache(N,F) :-
        prime_factors(N,F1),
        sort(F1,F).
:- initialization(go).
%-------------------------------------------------------- 102 hakank_swi_euler48
/*

  Euler problem 48 in SWI Prolog

  """
  The series, 1^(1) + 2^(2) + 3^(3) + ... + 10^(10) = 10405071317.
  
  Find the last ten digits of the series, 
  1^(1) + 2^(2) + 3^(3) + ... + 1000^(1000).
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler48a
            ],
        run_problems(L).

%%
%% 0.005s
%%
euler48a :-
        findall(J,
                (
                between(1,1000,I),
                 J is I^I
                ),
                L
               ),
        sum_list(L,Sum1),
        atom_chars(Sum1,Sum2),
        length(L10,10),
        append(_,L10,Sum2),
        atom_chars(Sol,L10),
        writeln(Sol).

        


:- initialization(go).
%-------------------------------------------------------- 103 hakank_swi_euler49
/*

  Euler problem 49 in SWI Prolog

  """  
  The arithmetic sequence, 1487, 4817, 8147, in which each of the terms 
  increases by 3330, is unusual in two ways: (i) each of the three terms are 
  prime, and, (ii) each of the 4-digit numbers are permutations of one another.

  There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, 
  exhibiting this property, but there is one other 4-digit increasing sequence.

  What 12-digit number do you form by concatenating the three terms 
  in this sequence?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             euler49a
            ],
        run_problems(L).

%%
%% Using clpfd: 0.10s
%%
euler49a :-
        N = 4,
        L = [A,B,C],
        L ins 1001..9999,

        A #\= 1487,
        A #< B,
        B #< C,

        B - A #= 3330,
        C - B #= 3330,  

        prime_cp(A),
        prime_cp(B),
        prime_cp(C),

        length(AL,4),
        AL ins 0..9,
        to_num(AL,A),
        
        length(BL,N),
        BL ins 0..9,
        to_num(BL,B),
        
        length(CL,N),
        CL ins 0..9,        
        to_num(CL,C),

        length(JAB,N),
        JAB ins 1..4,
        all_distinct(JAB),
        permutation_cp(AL,BL,JAB),
        
        length(JBC,N),
        JBC ins 1..4,
        all_distinct(JBC),  
        permutation_cp(BL,CL,JBC),

        flatten([L,AL,BL,CL,JAB,JBC], Vars),
        labeling([ff,bisect,down],Vars),
        maplist(num_to_digit_list,L,Ls),
        flatten(Ls,Sol1),
        digit_list_to_num(Sol1,Sol),
        writeln(Sol).
:- initialization(go).
%--------------------------------------------------------- 104 hakank_swi_euler5
/*

  Euler Problem 5 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=5
  """
  2520 is the smallest number that can be divided by each of the 
  numbers from 1 to 10 without any remainder.

  What is the smallest number that is evenly divisible by all of 
  the numbers from 1 to 20?
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler5a
            ],
        run_problems(L).

% 0.0s
euler5a :-
        numlist(2,20,Ls),
        foldl(lcm, Ls, 1, Res),
        writeln(Res).

:- initialization(go).
%-------------------------------------------------------- 105 hakank_swi_euler50
/*

  Euler problem 50 in SWI Prolog

  """
  The prime 41, can be written as the sum of six consecutive primes:
  41 = 2 + 3 + 5 + 7 + 11 + 13

  This is the longest sum of consecutive primes that adds to a prime 
  below one-hundred.

  The longest sum of consecutive primes below one-thousand that adds to a prime, 
  contains 21 terms, and is equal to 953.
  
  Which prime, below one-million, can be written as the sum of the most 
  consecutive primes?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :- 
        L = [
             %%euler50a
             euler50b
            ],
        run_problems(L).


%%
%% 21s
%%
euler50a :-
        N = 10_000,
        findall(I,
                (between(1,N,I),
                 is_prime(I)
                ),
                Primes),
        e50a(550,21,Primes,0,P),
        writeln(p=P),
        nl.


e50a(found,_LimitLen,_Primes,P,P).
e50a(Len,LimitLen,Primes,P0,P) :-
        nb_setval(found,false),
        (
         findall(PP,
                 (between(1,549,Offset),
                  nb_getval(found,false),
                  OffsetFrom is Offset+1,
                  OffsetTo is Offset+Len,
                  findall(P,
                          (between(OffsetFrom,OffsetTo,J),
                           nth1(J,Primes,P)
                          ),
                          Ps),
                  sum_list(Ps,PP),
                  PP < 1_000_000,
                  is_prime(PP),
                  writeln(pp=PP),                  
                  nb_setval(found,true)
                 ),
                 PPs
                ),
         PPs \= []
        ->
         PPs = [PP|_],
         e50a(found,LimitLen,Primes,PP,P)

        ;
         Len1 is Len-1,
         e50a(Len1,LimitLen,Primes,P0,P)
        ).

%%
%% 21s (using nb_setval/nb_getval)
%%
euler50b :-
        N = 10_000,
        findall(I,
                (between(1,N,I),
                 is_prime(I)
                ),
                Primes),
        nb_setval(found,false),
        findall(PPs,
                (between_down(550,21,Len),
                 nb_getval(found,false),
                 findall(PP,
                         (between(1,549,Offset),
                          nb_getval(found,false),                          
                          OffsetFrom is Offset+1,
                          OffsetTo is Offset+Len,
                          findall(P,
                                  (between(OffsetFrom,OffsetTo,J),
                                   nth1(J,Primes,P)
                                  ),
                                  Ps),
                          sum_list(Ps,PP),
                          PP < 1_000_000,
                          is_prime(PP),
                          nb_setval(found,PP)
                         ),
                         PPs
                        )
                ),
                L),
        flatten(L,LL),
        max_list(LL,Max),
        writeln(Max).
:- initialization(go).
%--------------------------------------------------------- 106 hakank_swi_euler6
/*

  Euler Problem 6 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=6
  """
  The sum of the squares of the first ten natural numbers is,
  12 + 22 + ... + 102 = 385

  The square of the sum of the first ten natural numbers is,
  (1 + 2 + ... + 10)2 = 552 = 3025

  Hence the difference between the sum of the squares of the first ten
  natural numbers and the square of the sum is 3025 385 = 2640.

  Find the difference between the sum of the squares of the first one
  hundred natural numbers and the square of the sum.
  """
  

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler6a
            ],
        run_problems(L).

% 0.000s
euler6a :-
        numlist(1,100,List),
        maplist(sum_sq,List,ListS),
        sum(ListS,#=,SumSquares),
        
        sum_list(List, Sum), 
        SquaresSum #= Sum^2, 
        Diff #= SquaresSum - SumSquares,
        writeln(Diff).

sum_sq(S,Sq) :- Sq #= S*S.
:- initialization(go).
%--------------------------------------------------------- 107 hakank_swi_euler7
/*

  Euler problem 7 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=7
  """
  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that
  the 6th prime is 13.

  What is the 10001st prime number?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).


go :-
        L = [
             euler7a %%,
             %% euler7b
            ],
        run_problems(L).

%% 0.34s
euler7a :-
        nth_prime(10001, P),
        writeln(P).

%% clpfd: 1.5s
euler7b :-
        nth_prime_clp(10001, P),
        writeln(P).

:- initialization(go).
%--------------------------------------------------------- 108 hakank_swi_euler8
/*

  Euler Problem 8 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=8
  """
  Find the greatest product of five consecutive digits in the 1000-digit number.

  73167176531330624919225119674426574742355349194934
  96983520312774506326239578318016984801869478851843
  85861560789112949495459501737958331952853208805511
  12540698747158523863050715693290963295227443043557
  66896648950445244523161731856403098711121722383113
  62229893423380308135336276614282806444486645238749
  30358907296290491560440772390713810515859307960866
  70172427121883998797908792274921901699720888093776
  65727333001053367881220235421809751254540594752243
  52584907711670556013604839586446706324415722155397
  53697817977846174064955149290862569321978468622482
  83972241375657056057490261407972968652414535100474
  82166370484403199890008895243450658541227588666881
  16427171479924442928230863465674813919123162824586
  17866458359124566529476545682848912883142607690042
  24219022671055626321111109370544217506941658960408
  07198403850962455444362981230987879927244284909188
  84580156166097919133875499200524063689912560717606
  05886116467109405077541002256983155200055935729725
  71636269561882670428252483600823257530420752963450
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).

go :-
        L = [
             euler8a %%,
             %% euler8b
            ],
        run_problems(L).

%% As an atom
p8('7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450').

%% As an integer list
p8b([7,3,1,6,7,1,7,6,5,3,1,3,3,0,6,2,4,9,1,9,2,2,5,1,1,9,6,7,4,4,2,6,5,7,4,7,4,2,3,5,5,3,4,9,1,9,4,9,3,4,9,6,9,8,3,5,2,0,3,1,2,7,7,4,5,0,6,3,2,6,2,3,9,5,7,8,3,1,8,0,1,6,9,8,4,8,0,1,8,6,9,4,7,8,8,5,1,8,4,3,8,5,8,6,1,5,6,0,7,8,9,1,1,2,9,4,9,4,9,5,4,5,9,5,0,1,7,3,7,9,5,8,3,3,1,9,5,2,8,5,3,2,0,8,8,0,5,5,1,1,1,2,5,4,0,6,9,8,7,4,7,1,5,8,5,2,3,8,6,3,0,5,0,7,1,5,6,9,3,2,9,0,9,6,3,2,9,5,2,2,7,4,4,3,0,4,3,5,5,7,6,6,8,9,6,6,4,8,9,5,0,4,4,5,2,4,4,5,2,3,1,6,1,7,3,1,8,5,6,4,0,3,0,9,8,7,1,1,1,2,1,7,2,2,3,8,3,1,1,3,6,2,2,2,9,8,9,3,4,2,3,3,8,0,3,0,8,1,3,5,3,3,6,2,7,6,6,1,4,2,8,2,8,0,6,4,4,4,4,8,6,6,4,5,2,3,8,7,4,9,3,0,3,5,8,9,0,7,2,9,6,2,9,0,4,9,1,5,6,0,4,4,0,7,7,2,3,9,0,7,1,3,8,1,0,5,1,5,8,5,9,3,0,7,9,6,0,8,6,6,7,0,1,7,2,4,2,7,1,2,1,8,8,3,9,9,8,7,9,7,9,0,8,7,9,2,2,7,4,9,2,1,9,0,1,6,9,9,7,2,0,8,8,8,0,9,3,7,7,6,6,5,7,2,7,3,3,3,0,0,1,0,5,3,3,6,7,8,8,1,2,2,0,2,3,5,4,2,1,8,0,9,7,5,1,2,5,4,5,4,0,5,9,4,7,5,2,2,4,3,5,2,5,8,4,9,0,7,7,1,1,6,7,0,5,5,6,0,1,3,6,0,4,8,3,9,5,8,6,4,4,6,7,0,6,3,2,4,4,1,5,7,2,2,1,5,5,3,9,7,5,3,6,9,7,8,1,7,9,7,7,8,4,6,1,7,4,0,6,4,9,5,5,1,4,9,2,9,0,8,6,2,5,6,9,3,2,1,9,7,8,4,6,8,6,2,2,4,8,2,8,3,9,7,2,2,4,1,3,7,5,6,5,7,0,5,6,0,5,7,4,9,0,2,6,1,4,0,7,9,7,2,9,6,8,6,5,2,4,1,4,5,3,5,1,0,0,4,7,4,8,2,1,6,6,3,7,0,4,8,4,4,0,3,1,9,9,8,9,0,0,0,8,8,9,5,2,4,3,4,5,0,6,5,8,5,4,1,2,2,7,5,8,8,6,6,6,8,8,1,1,6,4,2,7,1,7,1,4,7,9,9,2,4,4,4,2,9,2,8,2,3,0,8,6,3,4,6,5,6,7,4,8,1,3,9,1,9,1,2,3,1,6,2,8,2,4,5,8,6,1,7,8,6,6,4,5,8,3,5,9,1,2,4,5,6,6,5,2,9,4,7,6,5,4,5,6,8,2,8,4,8,9,1,2,8,8,3,1,4,2,6,0,7,6,9,0,0,4,2,2,4,2,1,9,0,2,2,6,7,1,0,5,5,6,2,6,3,2,1,1,1,1,1,0,9,3,7,0,5,4,4,2,1,7,5,0,6,9,4,1,6,5,8,9,6,0,4,0,8,0,7,1,9,8,4,0,3,8,5,0,9,6,2,4,5,5,4,4,4,3,6,2,9,8,1,2,3,0,9,8,7,8,7,9,9,2,7,2,4,4,2,8,4,9,0,9,1,8,8,8,4,5,8,0,1,5,6,1,6,6,0,9,7,9,1,9,1,3,3,8,7,5,4,9,9,2,0,0,5,2,4,0,6,3,6,8,9,9,1,2,5,6,0,7,1,7,6,0,6,0,5,8,8,6,1,1,6,4,6,7,1,0,9,4,0,5,0,7,7,5,4,1,0,0,2,2,5,6,9,8,3,1,5,5,2,0,0,0,5,5,9,3,5,7,2,9,7,2,5,7,1,6,3,6,2,6,9,5,6,1,8,8,2,6,7,0,4,2,8,2,5,2,4,8,3,6,0,0,8,2,3,2,5,7,5,3,0,4,2,0,7,5,2,9,6,3,4,5,0]).

% 0.003s
euler8a :-
        p8(P),
        N2 #= 1000-4,
        findall(Prod,
                (between(0,N2,I),
                 sub_atom(P, I, 5, _After, Sub),
                 num_to_digit_list(Sub, LL),
                 prodlist(LL, Prod)
                ),
                L
               ),
        max_list(L,Max),
        writeln(Max).


%% Slightly slower: 0.058s
euler8b :-
        p8b(P),
        list_slices(P, 5, List),
        maplist(prodlist,List,Prod),
        max_list(Prod,Max),
        writeln(Max).

:- initialization(go).
%--------------------------------------------------------- 109 hakank_swi_euler9
/*

  Euler Problem 9 in SWI Prolog

  http://projecteuler.net/index.php?section=problems&id=9
  """
  A Pythagorean triplet is a set of three natural numbers, a  b  c,
  for which, a^2 + b^2 = c^2.

  For example, 32 + 42 = 9 + 16 = 25 = 52.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product a*b*c.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).
:- use_module(euler_utils).


go :-
        L = [euler9a %%,
             %% euler9b
            ],
        run_problems(L).


%% 0.086s
euler9a :- 
        triplet(_L, Prod),
        writeln(Prod) .

%%
%% 0.203s
%%
euler9b :-
        N = 1000,
        N2 #= N//2,
        between(1,N2,C),
        N3 #= (N-C//2)-C,
        between(-1,N3,B),
        A is N - B - C,
        A > 0,
        A **2 + B**2 =:= C**2,
        (
        is_pyth(A,B,C)
        ->
         ABC is A*B*C,
         writeln(ABC)
        ).

%% using CLP(FD)
triplet([A, B, C], Prod) :-
     LD = [A,B,C],
     LD ins 1..500,
     A + B + C #= 1000,
     A #=< B, % symmetry breaking
     B #=< C, 
     Prod #= A * B * C,
     A^2 + B^2 - C^2 #= 0,
     labeling([ffc,bisect], LD).
        

is_pyth(A,B,C) :- A**2+B**2 =:= C**2.
:- initialization(go).
%-------------------------------------------------------- 110 hakank_swi_exactly
/*

  (Decomposition of) global constraint exactly in SWI Prolog

  From MiniZinc:
  """
  Requires exactly 'n' variables in 'x' to take the value 'v'.
  """

  Note:
  exactly/3 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
        %% N: number of V in X
        N in 2..3,
        %% V: the value
        V in 1..4,

        Len = 4,
        length(X,Len),
        X ins 1..Len,

        exactly(N,X,V),

        flatten([X,N,V], Vars),
        labeling([],Vars),

        writeln([n=N,v=V]),
        writeln(x=X),
        nl,
        fail.

go.

 

:- initialization(go).
%--------------------------------------------------------- 111 hakank_swi_exodus
/*

  Exodus puzzle (Dell Logic Puzzles) in SWI Prolog

  From http://brownbuffalo.sourceforge.net/ExodusClues.html
  """
  Title: Exodus
  Author: Sophy McHannot
  Publication: Dell Logic Puzzles
  Issue: April, 1998
  Page: 14
  Stars: 2

  In preparation for Passover, five children at Hebrew school 
  (Bernice,Carl,Debby,Sammy, and Ted) 
  have been chosen to present
  different parts of the story of the Exodus from Egypt 
   (burning bush, captivity,
    Moses's youth, Passover, or the Ten Commandments). 
  Each child is a different age 
    (three, five, seven, eight, or ten), 
  and the family of each child has recently made its own exodus 
  to America from a different country 
  (Ethiopia, Kazakhstan, Lithuania, Morocco, or Yemen). 
  Can you find the age of each child, his or her family's country of 
  origin, and the part of the Exodus story each related?

   1. Debby's family is from Lithuania.
   2. The child who told the story of the Passover is two years older
      than Bernice.
   3. The child whose family is from Yemen is younger than the child from
      the Ethiopian family.
   4. The child from the Moroccan family is three years older than Ted.
   5. Sammy is three years older than the child who told the story of
      Moses's youth in the house of the Pharaoh.
   6. Carl related the story of the captivity of the Israelites in Egypt.
   7. The five-year-old child told the story of the Ten Commandments.
   8. The child who told the story of the burning bush is either two or
      three years older than the one whose family came from
      Kazakhstan.

  Determine: Age -- Child -- Country -- Story
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   N = 5,

   Bernice = 1,
   Carl    = 2,
   Debby   = 3,
   Sammy   = 4, 
   Ted     = 5,
   Children = [Bernice, Carl, Debby, Sammy, Ted],
   ChildrenS = ["Bernice", "Carl", "Debby", "Sammy", "Ted"],

   Story = [BurningBush, Captivity, MosessYouth, Passover,TenCommandments],
   Story ins 1..N,
   StoryS = ["Burning Bush", "Captivity", "MosessYouth", "Passover","Ten Commandments"],

   length(Age,N),
   Age ins 3\/5\/7\/8\/10,

   Country = [Ethiopia, Kazakhstan, Lithuania, Morocco, Yemen],
   Country ins 1..N,
   CountryS = ["Ethiopia", "Kazakhstan", "Lithuania", "Morocco", "Yemen"],

   all_different(Story),
   all_different(Age),
   all_different(Country),

   %% constraints 
   Debby #= Lithuania,

   element(Ted,Age,AgeTed),
   element(Ethiopia,Age,AgeEthiopia),
   element(Passover,Age,AgePassover),
   element(Bernice,Age,AgeBernice),
   element(Yemen,Age,AgeYemen),
   element(Morocco,Age,AgeMorocco),
   element(Sammy,Age,AgeSammy),
   element(MosessYouth,Age,AgeMosessYouth),
   element(TenCommandments,Age,AgeTenCommandments),
   element(BurningBush,Age,AgeBurningBush),
   element(Kazakhstan,Age,AgeKazakhstan),

   AgePassover #= AgeBernice + 2,
   AgeYemen #< AgeEthiopia,
   AgeMorocco #= AgeTed + 3,
   AgeSammy #= AgeMosessYouth + 3,
   Carl #= Captivity,
   AgeTenCommandments #= 5,
   ( 
       (AgeBurningBush #= AgeKazakhstan + 2)
       #\/
       (AgeBurningBush #= AgeKazakhstan + 3)
   ),

   %% search
   flatten([Story,Age,Country],Vars),
   labeling([],Vars),

   %% print solution
   writeln(children=Children),
   writeln(story=Story),
   writeln(country=Country),
   writeln(age=Age),
   nl,
   
   pretty_print(Children,ChildrenS),
   pretty_print(Story,StoryS),
   pretty_print(Country,CountryS),
   pretty_print([1,2,3,4,5],Age),

   nl.

%%
%% Pretty print solution
%%
pretty_print(X,S) :-
        inverse(X,Inv),
        length(Inv,Len),
        findall(E,
                (
                 between(1,Len,I),
                 nth1(J,Inv,I),
                 nth1(J,S,E)
                ),
                Sol),
        format("~t~w~12|~t~w~23|~t~w~37|~t~w~47|~t~w~64|~n",Sol).

:- initialization(go).
%------------------------------------------- 112 hakank_swi_extract_from_indices
/*

  Test of extract_from_indices(2d)/3 in SWI Prolog

  - extract_from_indices/3 is  reversible (go/0)
  - extract_from_indices2d/3 is NOT reversible (go2/0).

  See hakank_utils.pl for implementation.

  Later note: Perhaps these instead should be called
    - matrix_elements/3   (matrix_elements(X,Is,Xs)
    - matrix_elements2d/3 (matrix_elements(X,IJs, Xs)
  instead?

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 10,
        length(X, N),
        X ins 1..N,
        
        length(Y, N),
        N1 #= N+1,
        Y ins 0..N1,
        
        all_different(X),
        decreasing(X),
        maplist(add1,X,Y),
        
        findall(I,(between(1,N,I), I mod 2 #= 1),Is),
        writeln(is=Is),
        extract_from_indices(Is, X, Xs),
        writeln(xs_before_solve=Xs),

        %%
        %% reversible: From Xs and X -> Is: Yes
        %%
        extract_from_indices(Is2, X, Xs),
        extract_from_indices(Is3, X, Y),

        %%
        %% reversible: From Is and Xs -> X?
        %% Yes: though in this case it only finds the odd values and
        %% fills out with "random" 1s
        %% x2=[10,1,8,1,6,1,4,1,2,4]
        %%
        length(X2,N),
        X2 ins 1..N,
        extract_from_indices(Is, X2, Xs),

        flatten([X,X2], Vars),
        label(Vars),
        writeln(x=X),
        writeln(xs=Xs),
        writeln(is2=Is2),        
        writeln(y=Y),
        writeln(is3=Is3),
        writeln(x2=X2),
        nl.


%%
%% Is extract_from_indices2d/3 reversible?
%% Answer: Nope!
%%
go2 :-
        writeln("extract_from_indices2d/3 is NOT reversible!"),
        N = 4,
        N2 #= N*N,
        new_matrix(N,N, 1..N2, X),
        flatten(X,Vars),

        all_different(Vars),
        % diagonal sums
        findall([I,I], between(1,N,I), IJs),
        writeln(ijs=IJs),
        extract_from_indices2d(IJs,X,[], Diagonal1),
        writeln(diagonal1=Diagonal1),
        length(IJs2,N),
        flatten(IJs2,IJs2Flatten),
        IJs2Flatten ins 1..N2,
        %% Nope, this don't work:
        %% ERROR: Type error: `integer' expected, found `[_56150,_56156]' (a list)
        %% extract_from_indices2d(IJs2,X,[], Diagonal1),
        
        append(Vars,Diagonal1, Vars2),
        append(Vars2,IJs2Flatten, Vars3),        
        % writeln(vars=Vars3),
        label(Vars3),
        
        print_matrix(X),
        writeln(diagonal1=Diagonal1),
        writeln(ijs2=IJs2),
        nl.

add1(X,Y) :- Y #= 1+(X + 1) mod 10.
:- initialization(go).
%---------------------------------------------------------- 113 hakank_swi_fancy
/*

  Mr Greenguest puzzle (Fancy dress) in SWI Prolog

  Problem (and LPL) code in
 
  http://diuflx71.unifr.ch/lpl/GetModel?name=/demo/demo2
 
  """
  (** Mr. Greenfan wants to give a dress party where the male guests
   * must wear green dresses. The following rules are given:
   * 1 If someone wears a green tie he has to wear a green shirt.
   * 2 A guest may only wear green socks and a green shirt 
   *   if he wears a green tie or a green hat.
   * 3 A guest wearing a green shirt or a green hat or who does
   *   not wear green socks must wear a green tie.
   * 4 A guest who is not dressed according to rules 1-3 must
   *   pay a $11 entrance fee.
   * Mr Greenguest wants to participate but owns only a green shirt 
   * (otherwise he would have to pay one for $9). He could buy 
   * a green tie for $10, a green hat (used) for $2 and green socks
   * for $12.
   * What is the cheapest solution for Mr Greenguest to participate?
   *)
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        %% T: Tie
        %% H: Hat
        %% R: Shirt
        %% S: Socks
        %% N: Entrance Fee
        LD = [T,H,R,S,N],
        LD ins 0..1,

        Cost in 0..10000,

        %% This is a straight translation from the LPL 
        ((T #=1)                     #==> (R #=1)) #\/ N#=1,
        ((S #=1 #\/ R#=1)            #==> (T#=1 #\/ H#=1)) #\/ N#=1,
        ((R#=1 #\/ H#=1 #\/ (S#\=1)) #==> T#=1) #\/ N#=1,
        Cost #= 10*T + 2*H + 12*S + 11*N,
        
        labeling([min(Cost)], LD),
        
        writeln(tie=T),
        writeln(hat=H),
        writeln(shirt=R),
        writeln(socks=S),
        writeln(entrance_fee=N),
        writeln(cost=Cost),nl.
:- initialization(go).
%--------------------------------------------------------- 114 hakank_swi_farmer
/*

  Farmer planning problem in SWI Prolog

  See https://en.wikipedia.org/wiki/River_crossing_puzzle
  
  This is a port of the B-Prolog/Picat model farmer.pl/farmer.pi.
 
  There are two possible shortest plans of length 7:

  farmer_goat
  farmer_alone
  farmer_wolf
  farmer_goat
  farmer_cabbage
  farmer_alone
  farmer_goat


  farmer_goat
  farmer_alone
  farmer_cabbage
  farmer_goat
  farmer_wolf
  farmer_alone
  farmer_goat
  
  The bplan module is here: http.//hakank.org/swi_prolog/bplan.pl
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(bplan).

go :-
        abolish_all_tables,
        bplan(Plan),
        maplist(writeln,Plan),
        length(Plan,Len),
        writeln(len=Len),
        nl.
        
initial_state([s,s,s,s]).

goal_state([n,n,n,n]).

legal_move([F,F,G,C],Action,S1) :-
        Action=farmer_wolf,
        opposite(F,F1),
        S1=[F1,F1,G,C],
        \+ unsafe(S1).
legal_move([F,W,F,C],Action,S1) :-
        Action=farmer_goat,
        opposite(F,F1),
        S1=[F1,W,F1,C],
        \+ unsafe(S1).
legal_move([F,W,G,F],Action,S1) :-
        Action=farmer_cabbage,
        opposite(F,F1),
        S1=[F1,W,G,F1],
        \+ unsafe(S1).
legal_move([F,W,G,C],Action,S1) :-
        Action=farmer_alone,
        opposite(F,F1),
        S1=[F1,W,G,C],
        \+ unsafe(S1).

opposite(n,Opp) :- Opp=s.
opposite(s,Opp) :- Opp=n.

unsafe([F,W,G,_C]) :- W == G,F \== W.
unsafe([F,_W,G,C]) :- G == C, F \== G.
:- initialization(go).
%-------------------------------------------------------- 115 hakank_swi_farmer2
/*

  Farmer problem in SWI Prolog

  This is a port of the B-Prolog program
  http://www.picat-lang.org/bprolog/examples/tabling/farmer.pl

  Solution:
  [farmer_goat,farmer_alone,farmer_cabbage,farmer_goat,farmer_wolf,farmer_alone,farmer_goat]
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
    S0=[s,s,s,s],
    plan(S0,Plan,_),
    writeln(Plan).

final([n,n,n,n]).

:-table plan(+,-,min).
plan([n,n,n,n],Plan,Len) :-
        Plan=[], Len=0.
plan(S,Plan,Len) :-
        Plan=[Action|Plan1],
        action(S,S1,Action),
        plan(S1,Plan1,Len1),
        Len is Len1+1.

action([F,F,G,C],S1,Action) :-
        Action=farmer_wolf,
        opposite(F,F1),
        S1=[F1,F1,G,C],
        \+ unsafe(S1).
action([F,W,F,C],S1,Action) :-
        Action=farmer_goat,
        opposite(F,F1),
        S1=[F1,W,F1,C],
        \+ unsafe(S1).
action([F,W,G,F],S1,Action) :-
        Action=farmer_cabbage,
        opposite(F,F1),
        S1=[F1,W,G,F1],
        \+ unsafe(S1).
action([F,W,G,C],S1,Action) :-
        Action=farmer_alone,
        opposite(F,F1),
        S1=[F1,W,G,C],
        \+ unsafe(S1).

opposite(n,Opp) :- Opp=s.
opposite(s,Opp) :- Opp=n.

unsafe([F,W,G,_C]) :-
        W==G,F\==W.
unsafe([F,_W,G,C]) :-
        G==C,F\==G.
:- initialization(go).
%------------------------------------------------------------ 116 hakank_swi_fib
/*

  Fibonacci in SWI Prolog

  This is a port of the B-Prolog program
  http://www.picat-lang.org/bprolog/examples/tabling/fib.pl
  (with some changes in go/0).

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:-table fib/2.

go :-
        findall(F,
                (between(0,100,N),
                 fib(N,F)
                ),
                Fs),
        writeln(Fs),
        nl.


fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N,F) :-
        N > 1,
        N1 is N-1,
        N2 is N-2,
        fib(N1,F1),
        fib(N2,F2),
        F is F1+F2.
:- initialization(go).
%----------------------------------------------------- 117 hakank_swi_fill_a_pix
/*

  Fill-a-pix problem in SWI Prolog

  From http://www.conceptispuzzles.com/index.aspx?uri=puzzle/fill-a-pix/basiclogic
  """
  Each puzzle consists of a grid containing clues in various places. The 
  object is to reveal a hidden picture by painting the squares around each 
  clue so that the number of painted squares, including the square with 
  the clue, matches the value of the clue. 
  """
 
  http://www.conceptispuzzles.com/index.aspx?uri=puzzle/fill-a-pix/rules
  """
  Fill-a-Pix is a Minesweeper-like puzzle based on a grid with a pixilated 
  picture hidden inside. Using logic alone, the solver determines which 
  squares are painted and which should remain empty until the hidden picture 
  is completely exposed.
  """
  
  Fill-a-pix History:
  http://www.conceptispuzzles.com/index.aspx?uri=puzzle/fill-a-pix/history


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
    problem(1,Problem),
    fill_a_pix(Problem).

go2 :-
    between(1,3,P),
    format("~nProblem ~w~n",P),
    problem(P,Problem),
    fill_a_pix(Problem),
    fail,
    nl.

go2.


fill_a_pix(Problem) :-

    length(Problem,N),
    new_matrix(N,N,0..1, X),

    %%
    %% Sum all the neighbours
    %%
    findall([ProblemIJ,IAJB],
            (
             between(1,N,I),between(1,N,J),
             matrix_element(Problem,I,J,ProblemIJ),
             ground(ProblemIJ),
             findall([IA,JB],
                     (
                     between(-1,1,A),between(-1,1,B),
                     IA #= I+A, JB #= J+B,
                     IA #> 0, JB #> 0,
                      IA #=< N, JB #=< N
                     ),
                     IAJB
                    )
            ),
            IJs),
    maplist(sum_neighbours(X),IJs),
    
    flatten(X,Vars),
    label(Vars),

    pretty_print(X),
    nl.

sum_neighbours(X,[P,IJs]) :-
        extract_from_indices2d(IJs,X,Xs),
        sum(Xs,#=,P).


%%
%% Convert to a nicer picture
%% replace 0 -> ' ', 1 -> '#'
%%
pretty_print(X) :-
        Convert = [[0,' '],[1,'#']],
        maplist(pretty_print_row(Convert),X).

pretty_print_row(Convert,X) :-
        convert_row(X,Convert,[],X2),
        atom_string(X2,S),
        writeln(S).

convert_row([],_Convert,S,S).
convert_row([C|Cs],Convert, S0,[C2|S]) :-
        memberchk([C,C2],Convert),
        convert_row(Cs,Convert,S0,S).
        


% Puzzle 1 from 
% http://www.conceptispuzzles.com/index.aspx?uri=puzzle/fill-a-pix/rules
% 
problem(1, P) :- 
        P = [[_,_,_,_,_,_,_,_,0,_],
             [_,8,8,_,2,_,0,_,_,_],
             [5,_,8,_,_,_,_,_,_,_],
             [_,_,_,_,_,2,_,_,_,2],
             [1,_,_,_,4,5,6,_,_,_],
             [_,0,_,_,_,7,9,_,_,6],
             [_,_,_,6,_,_,9,_,_,6],
             [_,_,6,6,8,7,8,7,_,5],
             [_,4,_,6,6,6,_,6,_,4],
             [_,_,_,_,_,_,3,_,_,_]].





% Puzzle 2 from 
% http://www.conceptispuzzles.com/index.aspx?uri=puzzle/fill-a-pix/rules
% 
problem(2, P) :- 
        P = [[0,_,_,_,_,_,3,4,_,3],
             [_,_,_,4,_,_,_,7,_,_],
             [_,_,5,_,2,2,_,4,_,3],
             [4,_,6,6,_,2,_,_,_,_],
             [_,_,_,_,3,3,_,_,3,_],
             [_,_,8,_,_,4,_,_,_,_],
             [_,9,_,7,_,_,_,_,5,_],
             [_,_,_,7,5,_,_,3,3,0],
             [_,_,_,_,_,_,_,_,_,_],
             [4,4,_,_,2,3,3,4,3,_]].


% Puzzle from 
% http://www.conceptispuzzles.com/index.aspx?uri=puzzle/fill-a-pix/basiclogic
%
% Code: 030.15x15
% ID: 03090000000
% 
problem(3, P) :- 
        P = [[_,5,_,6,_,_,_,_,_,_,6,_,_,_,_],
             [_,_,7,6,_,4,_,_,4,_,_,8,9,_,5],
             [5,_,_,5,_,5,_,3,_,6,_,7,_,_,6],
             [4,_,2,_,4,_,4,_,3,_,2,_,_,9,_],
             [_,_,_,5,_,4,_,3,_,4,_,4,5,_,6],
             [_,4,3,3,4,_,_,_,4,_,2,_,_,_,_],
             [_,_,_,_,_,_,_,_,_,5,_,_,_,4,_],
             [3,_,3,_,_,3,_,_,_,5,_,4,4,_,_],
             [_,_,_,4,3,_,3,3,_,_,5,7,6,_,_],
             [4,_,_,_,2,_,3,3,2,_,8,9,_,5,_],
             [_,_,3,_,_,_,_,5,_,_,7,_,8,_,_],
             [4,_,_,3,2,_,_,_,_,_,7,_,_,6,_],
             [_,_,4,_,5,4,4,_,_,9,6,_,_,_,_],
             [_,3,5,7,_,6,_,_,_,_,_,_,7,_,_],
             [_,_,4,6,6,_,_,_,6,5,_,_,_,4,_]].
:- initialization(go).
%-------------------------------------------- 118 hakank_swi_fill_in_the_squares
/*

  Fill-in the squares problem (Brainjammer) in SWI Prolog

  This problem is from the ZDC system, available from 
  http://www.bracil.net/CSP/cacp/cacpdemo.html , in the
  file 
     Brainjammer.txt 
  from 2003-01-26, which states:
  """
  Only Solution is:
        1	2	3	4	5
  ====================================================
  A  	 7	11	2	17	1
  B	13	19	23	22	3
  C	9	20	24	14	12
  D	16	21	25	18	10
  E	4	8	15	6	5

  22mins55secs of CPU time to find first solution
  50mins42secs of CPU time with duplicate induced variables removed?
  Maybe this has something to do with the variable ordering...as this might change
  as a result of removing duplicate induced variables.
  1hr:34 mins of CPU time to find a single solution and determine no other solutions
  exist.

  Statistics for finding the first solution:
  (with duplicate induced nodes removed)
  CPU seconds: 		4880.63	(On a Pentium Pro 200Mhz, VC++)
  Node count:			4036162
  Induced node count:	1849214
  Backtracks:			5885311
  """

  Notes:
  - On my 8 core 2.8 Mhz (Linux Ubuntu) it takes about 0.02 seconds 
    and 0 backtracks to solve this problem (include proving the 
    uniqueness of the solution), but the comparison is really 
    not fair considering the difference in machines then and now.

  - The only references to this problem I've found are the following pages:
    http://discuss.fogcreek.com/techInterview/default.asp?cmd=show&ixPost=2787
    http://notdarkandstormy.blogspot.com/2005/05/funky-logic-problem.html
    and especially 
    http://perplexus.info/show.php?pid=2683
    which has a lot of comments about manually solving the problem.

  I've yet to know the original source.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        time(problem(_)),
        fail,
        nl.
go.        

go1 :-
   time(findall(_,problem(_),_)).



problem(ALL) :-

   N = 5,

   N2 #= N^2,
   length(A,N), A ins 1..N2,
   A = [A1,_A2,A3,A4,A5], %% A2 is not used
   length(B,N), B ins 1..N2,
   B = [B1,B2,B3,B4,B5],
   length(C,N), C ins 1..N2,
   C = [C1,C2,C3,C4,C5],
   length(D,N), D ins 1..N2,
   D = [D1,D2,D3,D4,D5],
   length(E,N), E ins 1..N2,
   E = [E1,E2,E3,E4,E5],   

   sum(A,#=,ASum),
   sum(B,#=,BSum),
   sum(C,#=,CSum),
   sum(D,#=,DSum),
   sum(E,#=,ESum),

   % Each number from 1-25, used only once
   flatten([A,B,C,D,E],ALL),
   all_different(ALL),

   
   % 1. Sum of each column is odd
   maplist(odd_sum,A,B,C,D,E),
      
   % 2. Sum of each row, except C, is even
   ASum mod 2 #= 0,
   BSum mod 2 #= 0,
   CSum mod 2 #= 1,
   DSum mod 2 #= 0,
   ESum mod 2 #= 0,
   
   % 3. Sum of row A is not greater than the sum of any other row
   ASum #=< BSum,
   ASum #=< CSum,
   ASum #=< DSum,
   ASum #=< ESum,
  
   % 4. The sum of diagonal A1 to E5 is greater than the sum of
   %  diagonal E1 to A5
   A1 + B2 + C3 + D4 + E5  #> E1 + D2 + C3 + B4 + A5,
  
   % 5. (A4 + B4) is greater than (C4+D4+E4)
   A4 + B4 #> C4 + D4 + E4,
  
   % 6. A1 + B1 = D1 + E1
   A1 + B1 #= D1 + E1,
    
   % 7. A1 > E1
   A1 #> E1,
  
   % 8. A1, A3 and B1 are primes
   is_prime(A1),
   is_prime(A3),
   is_prime(B1),

   % 9. (A3 + E3) is a prime number
   A3E3 #= A3+E3,
   is_prime(A3E3),


   % 10. A5,D1,D3 and E1 are squares
   is_square(A5),
   is_square(D1),
   is_square(D3),
   is_square(E1),

   % 11. B2, C2, and D2 are ascending consecutive numbers
   B2 + 1 #= C2,
   C2 + 1 #= D2,
  
   % 12. B3, C3, and D3 are ascending consecutive numbers
   B3 + 1 #= C3,
   C3 + 1 #= D3,
   
   % 13. B5 + D5 = A5 + C5
   B5 + D5 #= A5 + C5,

   % 14. (c1)^2 + (c5)^2 = (e3)^2
   C1s #= C1*C1,
   C5s #= C5*C5,
   E3s #= E3*E3,
   C1s + C5s #= E3s,

   % 15. C5 is a two-digit number
   C5 #> 9,
   
   % 16. D5 is a multiple of E5
   D5 mod E5 #= 0,
         
   % 17. E1 + E3 = E2 + E4 + E5
   E1 + E3 #= E2 + E4 + E5,
   
   labeling([ffc,enum],ALL),

   writeln(a=A),
   writeln(b=B),
   writeln(c=C),
   writeln(d=D),
   writeln(e=E),
   nl.


is_prime(V) :-
   member(V, [2,3,5,7,11,13,17,19,23]).

is_square(V) :-
   member(V, [1,4,9,16,25]).

%%
%% sum of each column is odd
%%
odd_sum(A,B,C,D,E) :-
        (A+B+C+D+E) mod 2 #= 1.  
:- initialization(go).
%-------------------------------------------- 119 hakank_swi_finding_celebrities
/*

  Finding celebrities problem in SWI Prolog

  From Uwe Hoffmann
  "Finding celebrities at a party"
  http://www.codemanic.com/papers/celebs/celebs.pdf
  """
  Problem: Given a list of people at a party and for each person the list of
  people they know at the party, we want to find the celebrities at the party. 
  A celebrity is a person that everybody at the party knows but that 
  only knows other celebrities. At least one celebrity is present at the party.
  """
  (This paper also has an implementation in Scala.)
  
  Note: The original of this problem is 
    Richard Bird and Sharon Curtis: 
    "Functional pearls: Finding celebrities: A lesson in functional programming"
    J. Funct. Program., 16(1):13–20, 2006.
  but I (as well as Hoffmann) have not been able to access this paper.

  The problem from Hoffmann's paper is to find of who are the 
  celebrity/celebrities in this party graph:
    Adam  knows {Dan,Alice,Peter,Eva},
    Dan   knows {Adam,Alice,Peter},
    Eva   knows {Alice,Peter},
    Alice knows {Peter},
    Peter knows {Alice}
  
  Solution: the celebrities are Peter and Alice.

  Note: I blogged about this problem in "Finding celebrities at a party"
  http://www.hakank.org/constraint_programming_blog/2010/01/finding_celebrities_at_a_party.html

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        between(1,4,P),
        writeln(problem=P),
        (
         find_celebrities(P,Celebrities)
        -> 
         length(Celebrities,N),
         findall(I,
                 (between(1,N,I),
                  element(I,Celebrities,1)
                 ),
                 Cs),
         writeln(celebrities=Cs)
        ;
         writeln(celebrities=[])
        ),
        nl,
        fail,
        nl.

go.

go2 :-
        find_celebrities(1,Celebrities),
        writeln(Celebrities),
        nl.
        

% Find the celebrities of problem P
find_celebrities(P,Celebrities) :-

        problem(P,N,Party),

        length(Celebrities,N),
        Celebrities ins 0..1,   % is this a celebrity?
        
        sum(Celebrities,#=,NumCelebrities),

        %% Celebrity:
        %% - All persons know the celebrities,
        %% - Celebrities only know other celebrities.
        numlist(1,N,Is),
        numlist(1,N,Js),        
        maplist(celebrities(Party,N,Celebrities,NumCelebrities,Js),Is),
        label(Celebrities).


/*
  foreach(I in 1..N)
  Celebrities[I] #<=> sum([(Party[J,I]#=1) : J in 1..N]) #= N,
  Celebrities[I] #<=> sum([(Party[I,J]#=1) : J in 1..N]) #= NumCelebrities
  end,
*/
celebrities(Party,N,Celebrities,NumCelebrities,Js,I) :-
        element(I,Celebrities,CelebritiesI),
        sum_c(Js,I,Party,0,Sum1,0,Sum2),
        CelebritiesI #= 1 #<==> Sum1 #= N,
        CelebritiesI #= 1 #<==> Sum2 #= NumCelebrities.

sum_c([],_I,_Party,Sum1,Sum1,Sum2,Sum2).
sum_c([J|Js],I,Party,Sum1_0,Sum1,Sum2_0,Sum2) :-
        matrix_element(Party,I,J,PartyIJ),
        matrix_element(Party,J,I,PartyJI),
        Sum1_1 #= Sum1_0 + PartyJI,
        Sum2_1 #= Sum2_0 + PartyIJ,
        sum_c(Js,I,Party,Sum1_1,Sum1,Sum2_1,Sum2).


%
% The party graph of the example above:
%
%  Adam  knows [Dan,Alice,Peter,Eva],  [2,3,4,5]
%  Dan   knows [Adam,Alice,Peter],     [1,4,5]
%  Eva   knows [Alice,Peter],     [4,5]
%  Alice knows [Peter],      [5]
%  Peter knows [Alice]       [4]
%
% Solution: Peter and Alice (4,5) are the celebrities.
%
problem(1, N, Party) :- 
        N = 5,
        Party = [
                 %1 2 3 4 5
                 [1,1,1,1,1],   % 1
                 [1,1,0,1,1],   % 2
                 [0,0,1,1,1],   % 3
                 [0,0,0,1,1],   % 4
                 [0,0,0,1,1]    % 5
                ].



% In this example Alice (4) also knows Adam (1),
% which makes Alice a non celebrity, and since
% Peter (5) knows Alices, Peter is now also a
% non celebrity. Which means that there are no
% celebrities at this party.
% 
problem(2, N, Party) :- 
   N = 5,
   Party = [
            [1,1,1,1,1],
            [1,1,0,1,1],
            [0,0,1,1,1],
            [1,0,0,1,1],
            [0,0,0,1,1]
           ].

%
% Here is another example. It has the following
% cliques:
%  [1,2]
%  [4,5,6]
%  [6,7,8]
%  [3,9,10]
%
% The celebrities are [3,9,10]
%
problem(3,N, Party) :- 
   N = 10,
   Party = [
      %   1 2 3 4 5 6 7 8 9 10
          [0,1,1,0,0,0,0,1,1,1],
          [1,0,1,0,0,0,0,0,1,1],
          [0,0,1,0,0,0,0,0,1,1],
          [0,1,1,0,1,1,0,0,1,1],
          [0,0,1,1,0,1,0,0,1,1],
          [0,0,1,1,1,0,1,1,1,1],
          [0,0,1,0,0,1,0,1,1,1],
          [0,0,1,0,0,1,1,0,1,1],
          [0,0,1,0,0,0,0,0,1,1],
          [0,0,1,0,0,0,0,0,1,1]
   ].

%
% This is the same graph as the one above
% with the following changes:
%   - 9 don't know 3 or 10
% This party graph now consists of just 
% one celebrity: [9]
%
problem(4,N,Party) :- 
   N = 10,
   Party = [
            [0,1,1,0,0,0,0,1,1,1],
            [1,0,1,0,0,0,0,0,1,1],
            [0,0,1,0,0,0,0,0,1,1],
            [0,1,1,0,1,1,0,0,1,1],
            [0,0,1,1,0,1,0,0,1,1],
            [0,0,1,1,1,0,1,1,1,1],
            [0,0,1,0,0,1,0,1,1,1],
            [0,0,1,0,0,1,1,0,1,1],
            [0,0,0,0,0,0,0,0,1,0],
            [0,0,1,0,0,0,0,0,1,1]
          ].
:- initialization(go).
%-------------------------------------------------- 120 hakank_swi_five_brigands
/*

  Five brigands problem in SWI Prolog

  From http://www.comp.nus.edu.sg/~henz/projects/puzzles/arith/index.html
  """
  The Five Brigands    from "Amusements in Mathematics, Dudeney",
  number 133.

  The five Spanish brigands, Alfonso, Benito, Carlos, Diego, and Esteban,
  were counting their spoils after a raid, when it was found that they
  had captured altogether exacly 200 doubloons. One of the band pointed
  out that if Alfonso had twelve times as much, Benito three times as
  much, Carlos the same amount, Diego half as much, and Esteban one-
  third as much, they would still have altogether just 200 doubloons.
  How many doubloons had each?

  There are a good many equally correct answers to this problem. The
  puzzle is to discover exactly how many different answers there are, it
  being understood that every man had something and there is to be no
  fractional money. 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall(LD, brigands(LD), L),
        length(L, Len),
        maplist(writeln,L),
        writeln(number_of_solutions=Len),        
        nl.

brigands(LD) :-
        LD = [A,B,C,D2,E3],
        LD ins 8..160, % Everybody has at least 8d.; nobody has more than 160
        D2 in 8..100,
        E3 in 8..66,
        A + B + C + 2*D2 + 3*E3 #= 200,
        A * 12 + B * 3 + C + D2 + E3  #= 200,

        label(LD).

:- initialization(go).
%--------------------------------------------------- 121 hakank_swi_four_islands
/*

  Four Islands puzzle (Dell Logic Puzzles) in SWI Prolog

  http://brownbuffalo.sourceforge.net/FourIslandsClues.html
  """
  Title: Four Islands
  Author: Humphrey Dudley
  Publication: Dell Logic Puzzles
  Issue: April, 1998
  Page: 9
  Stars: 1
  
  A tiny nation in the South Pacific contains four islands connected by bridges
  as shown (see below). Each of the four islands (Pwana, Quero, Rayou, and Skern)
  boasts a different primary export (alabaster, bananas, coconuts, and durian
  fruit) and a different tourist attraction (hotel, ice skating rink, jai alai 
  stadium, and koala preserve). Can you find the name, export, and tourist 
  attraction of each island on the map?
  
    N
  W   E     *compass directions
    S
  
  A, B, C, D are the islands
  
  (A) -- (B)
   |      |
   |      |
  (C) -- (D)
  
  
  1. The island noted for its koala preserve is due south of Pwana.
  2. The island with the largest alabaster quarry is due west of Quero.
  3. The island with the resort hotel is due east of the one that exports 
     durian fruit.
  4. Skern and the island with the jai alai stadium are connected by a 
     north-south bridge. 
  5. Rayou and the island that exports bananas are connected by an east-west
     bridge.
  6. The islands noted for the South Pacific's largest ice skating rink and 
     for the jai alai stadium are not connected by a bridge.
  
  Determine: Island island -- Island name -- Export -- Tourist Attraction
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   N = 4,
   Range = 1..N,

   A = 1,
   B = 2,
   C = 3,
   D = 4,

   Island = [Pwana, Quero, Rayou, Skern],
   Island ins Range,

   Export = [Alabaster, Bananas, _Coconuts, DurianFruit],
   Export ins Range,
   
   Attraction = [ResortHotel, IceSkatingRink, JaiAlaiStadium, KoalaPreserve],
   Attraction ins Range,
   
   all_different(Island),
   all_different(Export),
   all_different(Attraction),


   % 1. The island noted for its koala preserve is due south of Pwana.
   (
       (Pwana #= A#/\KoalaPreserve #= C)
       #\/
       (Pwana #= B#/\KoalaPreserve #= D)
   ),
   
   % 2. The island with the largest alabaster quarry is due west of Quero.
   ( 
       (Alabaster #= A#/\Quero #= B) 
       #\/
       (Alabaster #= C#/\Quero #= D) 
   ),

   % 3. The island with the resort hotel is due east of the one 
   %    that exports durian fruit.
   ( 
       (DurianFruit #= A#/\ResortHotel #=  B )
       #\/
       ( DurianFruit #= C#/\ResortHotel #=  D)
   ),

   % 4. Skern#/\the island with the jai alai stadium are connected by a 
   %    north-south bridge. 
   (
       (Skern #= A#/\JaiAlaiStadium #= C) 
       #\/
       (Skern #= C#/\JaiAlaiStadium #= A) 
       #\/
       (Skern #= B#/\JaiAlaiStadium #= D) 
       #\/
       (Skern #= D#/\JaiAlaiStadium #= B) 
   ),

   % 5. Rayou#/\the island that exports bananas are connected by an 
   %    east-west bridge.
   (
       (Rayou #= A#/\Bananas #= B) 
       #\/
       (Rayou #= B#/\Bananas #= A) 
       #\/
       (Rayou #= C#/\Bananas #= D) 
       #\/
       (Rayou #= D#/\Bananas #= C) 
   ),

   % 6. The islands noted for the South Pacific's largest ice skating rink 
   %   #/\for the jai alai stadium are not connected by a bridge.
   ( 
       (IceSkatingRink #= A#/\JaiAlaiStadium #= D)
       #\/
       (IceSkatingRink #= D#/\JaiAlaiStadium #= A)
       #\/
       (IceSkatingRink #= B#/\JaiAlaiStadium #= C)
       #\/
       (IceSkatingRink #= C#/\JaiAlaiStadium #= B)
   ),


   % search
   flatten([Island,Export,Attraction],Vars),
   label(Vars),

   writeln(island=Island),
   writeln(export=Export),
   writeln(attraction=Attraction).
:- initialization(go).
%------------------------------------------------------ 122 hakank_swi_fractions
/*

  Fractions problem in SWI Prolog

  Prolog benchmark problem (BProlog)
  """
  Find distinct non-zero digits such that the following equation holds:
         A        D        G
      ------  + ----- + ------  = 1
        B*C      E*F      H*I
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   fractions(Digits),
   writeln(Digits),
   fail.

go.

fractions(Digits) :-

   Digits = [A,B,C,D,E,F,G,H,I],
   Digits ins 1..9,

   all_different(Digits),

   DD = [D1,D2,D3],
   DD ins 1..81,

   D1 #= 10*B+C,
   D2 #= 10*E+F,
   D3 #= 10*H+I,
   A*D2*D3 + D*D1*D3 + G*D1*D2 #= D1*D2*D3,

   %% symmetry breaking
   A*D2 #>= D*D1,
   D*D3 #>= G*D2,

   %% redundant constraints
   3*A #>= D1,
   3*G #=< D2,

   %% search
   labeling([min],Digits).

:- initialization(go).
%------------------------------------ 123 hakank_swi_friends_at_different_floors
/*

  Logic puzzle in SWI Prolog

  clpfd version of the puzzle from
  https://swi-prolog.discourse.group/t/similar-einstein-riddle/5142
  """
  Friends: Jarek, Frank, Stefanie, Albert, Simon, Robert, Marcin
  they live in one building, each on a different level (0, 1, 2, …).
  Each of them has a different animal:
  dog, a cat, a fish, hamster, parrot, snake, canary.
  In which floort each of them lives and what kind of animal does it have when bellow sentences are true?

  Franek lives lower than Albert. The owner of the parrot lives on floor 6. The canary owner lives on floor 0.
  Franek has no snake. The snake owner lives on floor 1. Albert doesn’t have a canary.
  Jarek doesn’t have a parrot. Simon has no snake. Robert has no hamsters. The hamster owner lives on floor 3.
  Robert lives lower than Stefan. Szymon lives lower than Marcin. Marcin has no fish.
  The owner of the fish lives on floor 4. Franek doesn’t have a hamster. Albert lives lower than Stefan.
  The cat owner lives on floor 5. The dog owner lives on floor 2. Szymon lives lower than Jarek.
  Robert lives higher than Albert. Albert doesn’t have a dog. Franek doesn’t have a dog.
  Stefan doesn’t have a canary. Franek doesn’t have a cat. Marcin lives higher than Jarek.
  Stefan doesn’t have a parrot. Franek lives lower than Marcin. Marcin doesn’t have a snake.
  Marcin lives higher than Albert. Franek has no fish. Szymon lives higher than Stefan. Robert has no fish.
  Stefan lives higher than Franek. Simon lives higher than Albert. Robert doesn’t have a cat.
  Marcin lives higher than Robert. Franek lives lower than Szymon. Franek lives lower than Robert.
  Stefan lives lower than Jarek. Stefan doesn’t have a cat. Jarek lives higher than Franek.
  Stefan doesn’t have a dog. Jarek lives higher than Robert. Franek doesn’t have a parrot. Stefan has no snake.
  Albert has no fish. Robert lives lower than Simon. Jarek lives higher than Albert. Albert doesn’t have a cat.
  Stefan lives lower than Marcin. Albert doesn’t have a parrot. Stefan has no fish. Simon doesn’t have a parrot.
  Simon doesn’t have a cat. Albert doesn’t have a hamster. Jarek doesn’t have a dog. Simon doesn’t have a hamster.
  Marcin doesn’t have a dog. Simon doesn’t have a canary. Simon doesn’t have a dog.
  """

  Solution:
  floor=[1,0,5,6,2,4,3]
  owns=[2,1,6,7,3,5,4]
  Floor 0 Frank canary
  Floor 1 Albert snake
  Floor 2 Robert dog
  Floor 3 Stefanie hamster
  Floor 4 Simon fish
  Floor 5 Jarek cat
  Floor 6 Marcin parrot

  This model was in part inspired by joeblog's solution.

  Cf my Picat model: http://hakank.org/picat/friends_at_different_floors.pi
 
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).

go :- 
        puzzle(Floor,Owns),
        writeln(floor=Floor),
        writeln(owns=Owns),        

        Animals = [canary,snake,dog,hamster,fish,cat,parrot],
        People = ['Albert','Frank','Jarek','Marcin','Robert','Simon','Stefanie'], % sorted
        numlist(0,6,FloorNums),
        maplist(print_solution(Animals,People,Floor),FloorNums),        
        nl,
        fail,

        nl.
go.


print_solution(Animals,People,Floor, FloorNum) :-
        % Who lives at this floor?
        nth1(P,Floor,FloorNum), % Identify this person's index
        nth1(P,People,Person),  % Get the name
        % What animal is on this floor?
        nth0(FloorNum,Animals,Animal),
        format("Floor ~d ~w ~w\n", [FloorNum,Person,Animal]).

puzzle(Floor,Owns) :-
        N = 7,
        numlist(1,N,Ns),

        % The animals at the different floors
        Animals = Ns,
        % Floor order
        [Canary,Snake,Dog,Hamster,Fish,Cat,Parrot] = Animals, 

        % The people
        People = Ns,  
        [Albert,Frank,Jarek,Marcin,Robert,Simon,Stefanie] = People, 

        % What animal does person P owns?
        length(Owns,N),
        Owns ins 1..N,

        % Which Floor does person P live at?
        N1 is N-1,
        length(Floor,N),
        Floor ins 0..N1,

        all_different(Owns),
        all_different(Floor),

        % [Person, NotOwns]
        NoOwns = [[Frank,    [Snake, Dog, Hamster, Fish, Cat, Parrot]],
                  [Albert,   [Canary, Dog, Hamster, Fish, Cat, Parrot]],
                  [Robert,   [Hamster, Fish, Cat]],
                  [Stefanie, [Canary, Snake, Dog, Fish, Cat, Parrot]],
                  [Simon,    [Canary, Snake, Dog, Hamster, Cat, Parrot]],
                  [Jarek,    [Dog, Parrot]],
                  [Marcin,   [Snake, Dog, Fish]]
                 ],
        maplist(no_owns(Owns),NoOwns),

        % All constraints are converted to lower than (inspired by joeblog's solution)
        % [Floor[Person] < [People]]
        LowerFloors =  [
                   [Frank,    [Albert,Robert,Stefanie,Simon,Jarek,Marcin]],
                   [Albert,   [Robert,Stefanie,Simon,Jarek,Marcin]],
                   [Robert,   [Stefanie,Simon,Jarek,Marcin]],
                   [Stefanie, [Simon,Jarek,Marcin]],
                   [Simon,    [Jarek,Marcin]],
                   [Jarek,    [Marcin]]
                  ],
        maplist(lower_floors(Floor),LowerFloors),
        
        append(Owns,Floor,Vars),
        label(Vars).

%
% Person P doesn't own any animal in the list As.
% 
no_owns(Owns,[P,As]) :-
        maplist(no_own(Owns,P),As).

% Person P does not own animal A
no_own(Owns,P,A) :-
        element(P,Owns,PO),
        PO #\= A.

%
% Person P lives in a floor less than all people in L.
% 
lower_floors(Floor,[P,Ps]) :-
        maplist(lower_floor(Floor,P),Ps).
% Person P live in a floor less than P2.
lower_floor(Floor,P,P2) :-
        element(P,Floor,FloorP),
        element(P2,Floor,FloorP2),
        FloorP #< FloorP2.
:- initialization(go).
%----------------------------------------------- 124 hakank_swi_furniture_moving
/*

  Furniture moving (scheduling) in SWI Prolog

  From Marriott & Stukey: "Programming with constraints", page  112f

  Different furniture takes different times and number of people:
   - piano:  3 persons 30 min
   - chair:  1 person  10 min
   - bed  :  3 persons 15 min
   - table:  2 persons 15 min
  
  Here is one solution using 4 people:
     Sp Sc Sb  St
    [0, 0, 30, 45]

  Where the values are the start time for each task:
   Starts with piano time 0  : 3 persons  (30 min)
               chair time 0  : 1 person   (10 min)
               bed   time 30 : 3 persons  (15 min)
               table time 45 : 2 persons  (15 min)

   0       10   15    30      45      60

   piano --------------|bed---|       
   piano --------------|       table----|
   piano --------------|bed---|
   chair --|            bed---|table----| 

  There are many other solutions...

  Note: The examples below use 3 persons.
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
        move([Sp, Sc, Sb, St]),
        writeln([Sp, Sc, Sb, St]),
        nl.

go2 :-
        findall([Sp, Sc, Sb, St], move([Sp, Sc, Sb, St]), L),
        length(L, NumSolutions),
        writeln(numSolutions=NumSolutions),
        nl.

%
% Minimize end time (makespan). 
% This is a slightly different problem.
% 
go3 :-
        % How does the number of people influence the
        % total time?
        NumPeople in 3..10,
        indomain(NumPeople),
        
        writeln(numPeople=NumPeople),
        move2(NumPeople,MaxEnd),
        writeln(maxEnd=MaxEnd),
        nl,

        fail,
        nl.

go3.

%
% Scheduling furniture moving.
% 
% 
move([Sp, Sc, Sb, St]) :-

        Sp in 0..30, % piano
        Sc in 0..50, % chair
        Sb in 0..45, % bed
        St in 0..45, % table

        Starts = [Sp,Sc,Sb,St],
        
        % to get the end time of the tasks
        Ends = [Ep,Ec,Eb,Et],
        Ends ins 0..100,
        
        % Duration = [30,10,15,15],
        % MenNeeded = [3,1,3,2],
        Tasks = [task(Sp, 30, Ep, 3, 1), % piano
                 task(Sc, 10, Ec, 1, 2), % chair
                 task(Sb, 15, Eb, 3, 3), % bed
                 task(St, 15, Et, 2, 4)  % table
                ],
        
        % Note: Limit must be an integer and cannot be decision variable.
        % limit(3): We have in total 3 persons.
        cumulative(Tasks, [limit(3)]),
        
        append([Starts,Ends], Vars),
        labeling([], Vars),

        writeln([piano:(Sp,Ep), chair:(Sc,Ec),  bed:(Sb,Eb), table:(St,Et)]).

%
% Minimize end time (makespan). 
% This is a slightly different problem: larger domains.
% 
move2(NumPeople, MaxEnd) :-

        % Larger domains
        Starts = [Sp,Sc,Sb,St], % [piano,chair,bed,table]
        Starts ins 0..100,
        
        % to get the end time of the tasks
        Ends = [Ep,Ec,Eb,Et],
        Ends ins 0..100,

        % Duration = [30,10,15,15],
        % MenNeeded = [3,1,3,2],
        % Note: Here we require 2 persons to move the chair (not 1 as in the first example)
        Tasks = [task(Sp, 30, Ep,3, 1), % piano
                 task(Sc, 10, Ec,2, 2), % chair (here we require 2 persons)
                 task(Sb, 15, Eb,3, 3), % bed
                 task(St, 15, Et,2, 4)  % table
                ],

        MaxEnd in 0..100,
        max_list_clp(Ends, MaxEnd),
        
        % Note: Limit must be an integer and cannot be decision variable.
        cumulative(Tasks, [limit(NumPeople)]),
        
        append([Starts,Ends], Vars),
        once(labeling([ff,bisect,min(MaxEnd)], Vars)),

        writeln(['piano':(Sp,Ep), 'chair':(Sc,Ec),  'bed':(Sb,Eb), 'table':(St,Et),'maxEnd':MaxEnd]).

:- initialization(go).
%------------------------------------------------------ 125 hakank_swi_futoshiki
/*

  Futoshiki puzzle in SWI Prolog

  http://en.wikipedia.org/wiki/Futoshiki
  """
  The puzzle is played on a square grid, such as 5 x 5. The objective
  is to place the numbers 1 to 5 (or whatever the dimensions are) such 
  that each row, and column contains each of the digits 1 to 5. Some 
  digits may be given at the start. In addition, inequality
  constraints are also initially specifed between some of the squares, 
  such that one must be higher or lower than its neighbour. These 
  constraints must be honoured as the grid is filled out.
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        between(1,3,P),
        findall(_,futoshiki(P),_L),
        nl,
        fail,
        nl.

go.

        

futoshiki(P) :-
   
   format("\nProblem ~d\n",P),
   problem(P,Problem,LessThans),

   length(Problem,N),
   new_matrix(N,N,1..N,X),

   % Fill the data
   findall([I,J,Value],
           (between(1,N,I),between(1,N,J),
            matrix_element(Problem,I,J,Value),
            Value #> 0
           ),
           IJValues),
   maplist(fill_data(X),IJValues),
                        
   
   % constraints
   latin_square(X),
   maplist(less_than(X),LessThans),
   

   flatten(X,Vars),
   labeling([ff,bisect],Vars),

   print_matrix(X),
   
   nl.

fill_data(X,[I,J,V]) :-
        matrix_element(X,I,J,V).

less_than(X,[I1,J1,I2,J2]) :-
        matrix_element(X,I1,J1,X1),
        matrix_element(X,I2,J2,X2),
        X1 #< X2.



% Example from Tailor model futoshiki.param/futoshiki.param
%
% Solution:
% 5 1 3 2 4
% 1 4 2 5 3
% 2 3 1 4 5
% 3 5 4 1 2
% 4 2 5 3 1
% 
% Futoshiki instance, by Andras Salamon
%
problem(1, Problem, LessThan) :-
        Problem =
        [[0,0,3,2,0],           % problem grid
         [0,0,0,0,0],
         [0,0,0,0,0],
         [0,0,0,0,0],
         [0,0,0,0,0]],
        
        LessThan = 
        [[1,2,1,1], % [i1,j1, i2,j2] requires that values[i1,j1] < values[i2,j2]
         [1,4,1,5],
         [2,3,1,3],
         [3,3,2,3],
         [3,4,2,4],
         [2,5,3,5],
         [3,2,4,2],
         [4,4,4,3],
         [5,2,5,1],
         [5,4,5,3],
         [5,5,4,5]].


% Example from http://en.wikipedia.org/wiki/Futoshiki
% Solution:
% 5 4 3 2 1
% 4 3 1 5 2
% 2 1 4 3 5
% 3 5 2 1 4
% 1 2 5 4 3
%
problem(2, Problem, LessThan) :-
        Problem =
        [[0,0,0,0,0],
         [4,0,0,0,2],
         [0,0,4,0,0],
         [0,0,0,0,4],
         [0,0,0,0,0]],
        LessThan =
        [[1,2, 1,1],
         [1,4, 1,3],
         [1,5, 1,4],
         [4,4, 4,5],
         [5,1, 5,2],
         [5,2, 5,3]].


% From http://www.sudoku-puzzles.net/futoshiki06x6.html
problem(3, Problem, LessThan) :-
        Problem = 
        [[5,0,2,0,1,0],
         [6,0,1,0,0,0],
         [0,0,3,0,0,0],
         [0,0,4,0,0,0],
         [0,0,0,4,2,5],
         [0,0,0,1,3,0]],
        LessThan = 
        [[1,6, 2,6],
         [4,1, 3,1]].
:- initialization(go).
%-------------------------------------------------- 126 hakank_swi_general_store
/*

  General store problem in SWI Prolog

  From http://www.comp.nus.edu.sg/~henz/projects/puzzles/digits/index.html

  """
  The General Store  from "Mathematical Puzzles of Sam Loyd", number 30

  The owner of a general store, who is something of a puzzlist, has put
  up this sign to see if any of his mathematical friends can translate
  it properly. Each different letter stands for a different digit. The
  words above the horizontal line represent numbers that add to the
  total of "ALL WOOL". The problem is to change all the letters to the
  correct digits.

         C H E S S
   +       C A S H
   +   B O W W O W
   +     C H O P S
   +   A L S O P S
   + P A L E A L E
   +       C O O L
   +       B A S S
   +       H O P S
   +       A L E S
   +       H O E S
   +   A P P L E S
   +       C O W S 
   +   C H E E S E
   +   C H S O A P
   +     S H E E P
   _______________
     A L L W O O L
   """

  Here are three different models, inspired by the Oz solutions from
  the page above.

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

/*
  Time to first solution (which happens to be unique). store1/1 is a bit faster.

  Model 1: 
  % 2,396,603 inferences, 0.152 CPU in 0.152 seconds (100% CPU, 15815015 Lips)
  [4,5,2,0,3,6,8,9,1,7]
  
  Model 2: 
  % 7,620,461 inferences, 0.496 CPU in 0.496 seconds (100% CPU, 15352908 Lips)
  [4,5,2,0,3,6,8,9,1,7]
  
  Model 3:
  % 4,830,569 inferences, 0.313 CPU in 0.313 seconds (100% CPU, 15441670 Lips)
  [3,6,4,2,5,7,8,1,0,9]

*/
go :-
        write("Model 1: "),
        time(once(store1(L1))),
        writeln(L1),

        write("Model 2: "),
        time(once(store2(L2))),
        writeln(L2),

        write("Model 3: "),
        time(once(store3(L3))),
        writeln(L3),
        nl.


/*
  
  findall is used to check for all possible solutions.
  Here store1/1 is much faster than the other two variants.

  Model 1: 
  % 11,293,175 inferences, 0.718 CPU in 0.718 seconds (100% CPU, 15737852 Lips)
  [[c=4,h=5,e=2,s=0,a=3,b=6,o=8,w=9,p=1,l=7]]
  
  Model 2: 
  % 124,168,845 inferences, 8.190 CPU in 8.190 seconds (100% CPU, 15160304 Lips)
  [[c=4,h=5,e=2,s=0,a=3,b=6,o=8,w=9,p=1,l=7]]
  
  Model 3: 
  % 93,825,390 inferences, 6.047 CPU in 6.047 seconds (100% CPU, 15516710 Lips)
  [[a=3,b=6,c=4,e=2,h=5,l=7,o=8,p=1,s=0,w=9]]

*/
go2 :-
        write("Model 1: "),
        time(findall([c=C, h=H, e=E, s=S, a=A, b=B, o=O, w=W, p=P, l=L], store1([C, H, E, S, A, B, O, W, P, L]),L1)),
        writeln(L1),

        write("Model 2: "),
        time(findall([c=C, h=H, e=E, s=S, a=A, b=B, o=O, w=W, p=P, l=L], store2([C, H, E, S, A, B, O, W, P, L]),L2)),
        writeln(L2),

        writef("Model 3: "),
        time(findall([a=A, b=B, c=C, e=E, h=H, l=L, o=O, p=P, s=S, w=W], store3([A, B, C, E, H, L, O, P, S, W]),L3)),
        writeln(L3),
        nl.


store1(LD) :-

   LD = [C, H, E, S, A, B, O, W, P, L],
   LD ins 0..9,
 
   all_different(LD),
   
   10000*C + 1000*H + 100*E + 10*S + S
   + 1000*C + 100*A + 10*S + H
   + 100000*B + 10000*O + 1000*W + 100*W + 10*O + W
   + 10000*C + 1000*H + 100*O + 10*P + S
   + 100000*A + 10000*L + 1000*S + 100*O + 10*P + S
   + 1000000*P + 100000*A + 10000*L + 1000*E + 100*A + 10*L + E
   + 1000*C + 100*O + 10*O + L
   + 1000*B + 100*A + 10*S + S
   + 1000*H + 100*O + 10*P + S
   + 1000*A + 100*L + 10*E + S
   + 1000*H + 100*O + 10*E + S
   + 100000*A + 10000*P + 1000*P + 100*L + 10*E + S
   + 1000*C + 100*O + 10*W + S
   + 100000*C + 10000*H + 1000*E + 100*E + 10*S + E
   + 100000*C + 10000*H + 1000*S + 100*O + 10*A + P
   + 10000*S + 1000*H + 100*E + 10*E + P
   
   #= 1000000*A + 100000*L + 10000*L + 1000*W + 100*O + 10*O + L,

   labeling([ff,enum],LD).
   


store2(LD) :-
   LD=[C, H, E, S, A, B, O, W, P, L],
   LD ins 0..9,

   all_different(LD),

   Carries= [C11, C12, C21, C22, C31, C32, C41, C42, C51, C52, C61, C62],
   Carries ins 0..9,

   S+H+W+S+S+E+L+S+S+S+S+S+S+E+P+P       #= L+ 10*C11+ 100*C12,
   S+S+O+P+P+L+O+S+P+E+E+E+W+S+A+E+ C11       #= O+ 10*C21+ 100*C22,
   E+A+W+O+O+A+O+A+O+L+O+L+O+E+O+E+ C21 + C12 #= O+ 10*C31+ 100*C32,
   H+C+W+H+S+E+C+B+H+A+H+P+C+E+S+H+ C31 + C22 #= W+ 10*C41+ 100*C42,
   C+  O+C+L+L+     P+  H+H+S+ C41 + C32 #= L+ 10*C51+ 100*C52,
   B+ A+A+     A+  C+C  + C51 + C42 #= L+ 10*C61+ 100*C62,
   P          + C61 + C52 #= A,

   flatten([Carries,LD],Vars),
   labeling([ffc],Vars).



store3(LD) :-

   LD = [A, B, C, E, H, L, O, P, S, W],
   LD ins 0..9,
        
   CarriesLow = [C11, C21, C31, C41, C51, C61],
   CarriesHigh =[C12, C22, C32, C42, C52],
   CarriesLow ins 0..9,
   CarriesHigh ins 0..1,

   all_different(LD),

   
   10000*C + 1000*H + 100*E + 10*S + S
   + 1000*C + 100*A + 10*S + H
   + 100000*B + 10000*O + 1000*W + 100*W + 10*O + W
   + 10000*C + 1000*H + 100*O + 10*P + S
   + 100000*A + 10000*L + 1000*S + 100*O + 10*P + S
   + 1000000*P + 100000*A + 10000*L + 1000*E + 100*A + 10*L + E
   + 1000*C + 100*O + 10*O + L
   + 1000*B + 100*A + 10*S + S
   + 1000*H + 100*O + 10*P + S
   + 1000*A + 100*L + 10*E + S
   + 1000*H + 100*O + 10*E + S
   + 100000*A + 10000*P + 1000*P + 100*L + 10*E + S
   + 1000*C + 100*O + 10*W + S
   + 100000*C + 10000*H + 1000*E + 100*E + 10*S + E
   + 100000*C + 10000*H + 1000*S + 100*O + 10*A + P
   + 10000*S + 1000*H + 100*E + 10*E + P   
   #= 1000000*A + 100000*L + 10000*L + 1000*W + 100*O + 10*O + L,
   
   S+H+W+S+S+E+L+S+S+S+S+S+S+E+P+P       #= L+ 10*C11+ 100*C12,
   S+S+O+P+P+L+O+S+P+E+E+E+W+S+A+E+ C11       #= O+ 10*C21+ 100*C22,
   E+A+W+O+O+A+O+A+O+L+O+L+O+E+O+E+ C21+ C12  #= O+ 10*C31+ 100*C32,
   H+C+W+H+S+E+C+B+H+A+H+P+C+E+S+H+ C31+ C22  #= W+ 10*C41+ 100*C42,
   C+  O+C+L+L+     P+  H+H+S+ C41+ C32  #= L+ 10*C51+ 100*C52,
   B+  A+A+     A+  C+C      + C51+ C42  #= L+ 10*C61,
   P               + C61+ C52  #= A,


   flatten([LD,CarriesLow,CarriesHigh], Vars),
   labeling([ff,enum],Vars).

:- initialization(go).
%---------------------------------------------- 127 hakank_swi_global_contiguity
/*

  Global constraint global contiguity in SWI Prolog

  From Global constraint catalog
  http://www.emn.fr/x-info/sdemasse/gccat/Cglobal_contiguity.html
  """
  Enforce all variables of the VARIABLES collection to be assigned to 
  0 or 1. In addition, all variables assigned to value 1 appear contiguously.
  """

  The implementation of global contiguity below was inspired by 
  Toby Walsh's presentation "Sliding Constraints"
     http://www.cse.unsw.edu.au/~tw/samos/slide.ppt
  where he defines it in terms of the global constraint slide.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   N = 15,
   length(X,N),
   X ins 0..1,

   global_contiguity(X),
   
   labeling([],X),
   writeln(X),
   fail.

go.


%%
%% contiguity: all variables assigned to value 1 appear contiguously.
%%
global_contiguity(X) :-

   length(X,Len),
   length(Y,Len),
   Y ins 0..2,
    
   increasing(Y),
   maplist(global_contiguity_,X,Y).

global_contiguity_(X,Y) :-
        BX in 0..1,
        BY in 0..1,
        X #= 1 #<==> BX #= 1,
        Y #= 1 #<==> BY #= 1,
        BX #= BY.
:- initialization(go).
%-------------------------------------- 128 hakank_swi_global_contiguity_regular
/*

  Decomposition of global contiguity using regular constraint in SWI Prolog

  Here's a variant of the global constraint global contiguity
  using (a decomposition of) the regular constraint.

  See http://www.emn.fr/x-info/sdemasse/gccat/Cglobal_contiguity.html
  for a description of the constraint.

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   N = 15,
   length(X,N),
   X ins 0..1,

   % Constraints
   global_contiguity(X),

   labeling([ff], X),

   writeln('x  '=X),
   fail,
   nl.

go.


global_contiguity(X) :-

   length(X,N),

   % Transition function (MiniZinc style)  
   % This use the regular expression "0*1*0*" to 
   % require that all 1's (if any) in an array appear contiguously.
   % 
   Transition = [
                 [1,2], % state 1 (start) input 0 -> state 1, input 1 -> state 2 i.e. 0*
                 [3,2], % state 2: 1*
                 [3,0]  % state 3: 0*
                ],
   NStates = 3,
   InputMax = 2,
   InitialState = 1,
   AcceptingStates = [1,2,3],

   length(RegInput,N),
   RegInput ins 1..InputMax,  % 1..2

   % Translate X's 0..1 to RegInput's 1..2
   % foreach(I in 1..N) 
   %    RegInput[I] #= X[I]+1  
   % end,
   maplist(add1,X,RegInput),
   
   regular(RegInput,NStates,InputMax,Transition,InitialState, AcceptingStates).

add1(X,Y) :- Y #= X + 1.
:- initialization(go).
%--------------------------------------------------- 129 hakank_swi_golomb_ruler
/*

  Golomb ruler in SWI Prolog

  A Golomb ruler is a set of integers (marks) a(1) < ...  < a(n) such
  that all the differences a(i)-a(j) (i > j) are distinct.  Clearly we
  may assume a(1)=0.  Then a(n) is the length of the Golomb ruler.
  For a given number of marks, n, we are interested in finding the
  shortest Golomb rulers.  Such rulers are called optimal. 

  See http://www.research.ibm.com/people/s/shearer/grule.html


  Benchmark for N=8. Clearly golomb2/2 is much faster. And much more elegant.

  golomb/2
  n=8
  % 175,472,752 inferences, 9.093 CPU in 9.094 seconds (100% CPU, 19297559 Lips)
  [0,1,4,9,15,22,32,34]


  golomb2/2
  % 33,134,620 inferences, 1.998 CPU in 1.998 seconds (100% CPU, 16580421 Lips)
  [0,1,4,9,15,22,32,34]


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        time(once(golomb(6, Xs))),
        writeln(Xs),
        nl.

go2 :-
        time(once(golomb2(8, Xs))),
        writeln(Xs),
        nl.

%% Benchmark
go3 :-
        writeln("golomb/2"),
        time(once(golomb(8, Xs1))),
        writeln(Xs1),
        nl,
        writeln("golomb2/2"),
        time(once(golomb2(8, Xs2))),
        writeln(Xs2),
        nl.


go4 :- 
        between(2,10,N),
        writeln(n=N),
        time(once(golomb2(N,Xs))),
        writeln(Xs),
        nl,
        fail,
        nl.

go4.

%%
%% Port of my Picat model.
%%
golomb(N, Xs) :-
        writeln(n=N),
        length(Xs,N),
        NN #= 2^(N-1)-1,
        Xs ins 0..NN,
        append([Xs1,Xs2|_],[XsN1,XsN], Xs),
        
        %% n #= Xs[N], %% to minimize
        Xs1 #= 0,

        all_different(Xs),
        %% all_distinct(Xs),        
        increasing_strict(Xs),

        %% Diffs
        findall([I,J],
                (between(1,N,I),
                 between(1,N,J),
                 I #\= J
                ),
                IJs),
        maplist(diffs1(Xs),IJs,Diffs),
        all_different(Diffs),

        %% Symmetry breaking
        Xs2 - Xs1 #< XsN - XsN1,
        append([Diffs1|_],[DiffsN],Diffs),
        Diffs1 #< DiffsN,

        flatten([Xs],Vars),
        labeling([min(XsN),ff,enum],Vars).

diffs1(Xs,[I,J],Diff) :-
        element(I,Xs,XsI),
        element(J,Xs,XsJ),
        Diff #= XsI - XsJ.

%%
%% From an ECLiPSe model.
%% Much faster (and more elegant).
%%
golomb2(N, Xs) :-
        length(Xs, N),
        NN #= 2^(N-1)-1,
        Xs ins 0..NN,
        append([0|_], [Xn], Xs),
        increasing(Xs),
        distances(Xs, Diffs),
        Diffs ins 1..NN,
        all_different(Diffs),
        append([D1|_], [Dn], Diffs),
        D1 #< Dn,

        labeling([min(Xn),enum],Xs).

distances([], []).
distances([X|Ys], D0) :-
        distances(X, Ys, D0, D1),
        distances(Ys, D1).

distances(_, [], D, D).
distances(X, [Y|Ys], [Diff|D1], D0) :-
        Diff #= Y-X,
        distances(X, Ys, D1, D0).
:- initialization(go).
%-------------------------------------------------------- 130 hakank_swi_grocery
/*

  Grocery problem in SWI Prolog

  Ported from the Gecode example
  """
  A kid goes into a grocery store and buys four items. The cashier
  charges $7.11, the kid pays and is about to leave when the cashier
  calls the kid back, and says "Hold on, I multiplied the four items
  instead of adding them; I'll try again; Hah, with adding them the
  price still comes to $7.11". What were the prices of the four items?

  The model is taken from: Christian Schulte, Gert Smolka, Finite Domain
  Constraint Programming in Oz. A Tutorial. 2001.
  Available from: http://www.mozart-oz.org/documentation/fdt/
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        length(Item,4),
        Item ins 0..711,

        sum(Item, #=,711),
        S #= 711 * 100*100*100,
        prod(Item,S),

        increasing(Item),       % symmetry breaking  
        
        labeling([ffc], Item),
        
        writeln(item=Item),
        nl.

%% variant
go2 :- 
        Vs = [A,B,C,D], 
        Vs ins 0..711,
        A + B + C + D #= 711,
        A * B * C * D #= 711*100*100*100,
        A #=< B,
        B #=< C,
        C #=< D,
        
        labeling([ffc], Vs),
        writeln(Vs).

% mult(X,Y,Z) :- Z #= X*Y.
% prod(L,Product) :-
%         foldl(mult,L,1,Product).
:- initialization(go).
%----------------------------------------------- 131 hakank_swi_hamming_distance
/*

  Hamming distance in SWI Prolog

  I.e. the number of bits differing in two (binary) arrays.
  See http://en.wikipedia.org/wiki/Hamming_distance

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

% 
% We can now either
% - Calculate the hamming distance from two arrays
% - Given the distance, generate all arrays which has the 
%   Hamming distance.
% 

%%
%% A is fixed, number of differences are free.
%%
go :-

   N = 6, % length of the arrays
   length(A,N),
   A ins 0..1,
   length(B,N), 
   B ins 0..1,

   Diffs in 0..N, % The number of differences 
   % indomain(Diffs),

   A = [1,1,1,1,1,1],

   hamming_distance(A,B,Diffs),

   flatten([A,B,Diffs], Vars),
   label(Vars),

   writeln(diffs=Diffs),
   writeln(a=A),
   writeln(b=B),nl,
   fail.

go.


%%
%% Both A and B are free, but the number of
%% differences is fixed (#= 2).
%%
go2 :-

   N = 6, % length of the arrays
   length(A,N),
   A ins 0..1,
   length(B,N), 
   B ins 0..1,

   Diffs in 0..N, % The number of differences 
   Diffs #= 2,

   hamming_distance(A,B,Diffs),

   flatten([A,B,Diffs], Vars),
   label(Vars),

   writeln(diffs=Diffs),
   writeln(a=A),
   writeln(b=B),nl,
   fail.

go2.


hamming_distance(As, Bs, Diffs) :-
        hamming_distance_(As,Bs,0,Diffs).

hamming_distance_([],[],S,S).
hamming_distance_([A|As],[B|Bs],S0,S) :-
        Bool in 0..1,
        A #= B #<==> Bool #= 1,
        S1 #= S0 + B,
        hamming_distance_(As,Bs,S1,S).
        



:- initialization(go).
%---------------------------------------------------- 132 hakank_swi_handshaking
/*

  Halmos' handshake problem in SWI Prolog

  Problem formulation from Alloy (examples/puzzles/handshake)
  """
  Alloy model of the Halmos handshake problem
  
  Hilary and Jocelyn are married. They invite four couples who are friends for dinner. When
  they arrive, they shake hands with each other. Nobody shakes hands with him or herself
  or with his or her spouse. After there has been some handshaking, Jocelyn jumps up on
  a chair and says "Stop shaking hands!", and then asks how many hands each person has
  shaken. All the answers are different. How many hands has Hilary shaken?
  
  The Alloy model represents the problem as a set of constraints. Properties of the spouse
  relationship and of handshaking in general are given as facts. The particular situation
  is cast as a function.
  
  There are 9 people answering, and all answers are different. Nobody can shake more than
  8 hands. So answers must be 0..8. The one (p8 say) who answered 8 has shaken everybody's
  hand except for his or her own, and his or her spouse's. Now consider the person who shook
  0 hands (p0 say). The persons p0 and p8 are distinct. If they are not married, then p8 cannot
  have shaken 8 hands, because he or she did not shake the hand of p0 or of his or her spouse.
  So p8's spouse to p0. Now imagine Jocelyn asking the question again, with p0 and p8 out of
  the room, and excluding hand shakes with them. Since p8 shook hands with everyone else
  except p0 and p8, everyone gives an answer one smaller than they did before, giving 0..6.
  The argument now applies recursively. So Hilary is left alone, having shaken 4 hands. 
  """
  Alloy is here: http://alloy.mit.edu/alloy
  
  Also, see the following that discuss Halmos' Handshake problem
  http://docs.law.gwu.edu/facweb/jsiegel/Personal/math/mathhome.htm#halmos
      http://docs.law.gwu.edu/facweb/jsiegel/Personal/math/shakeanswer.htm
  
  The origin of the problem seems to be
  P.R. Halmos: "To Count or to Think, That is the Question", page 1ff
  http://bernoulli.math.rug.nl/vorigelezingen/lezing03/lezing03.pdf


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

/*

  The solution for N=10 (with symmetry breaking)

  x:[4,4,0,8,1,7,2,6,3,5]

  Who shake hands with whom:
  [0,0,0,1,0,1,0,1,0,1]
  [0,0,0,1,0,1,0,1,0,1]
  [0,0,0,0,0,0,0,0,0,0]
  [1,1,0,0,1,1,1,1,1,1]
  [0,0,0,1,0,0,0,0,0,0]
  [1,1,0,1,0,0,1,1,1,1]
  [0,0,0,1,0,1,0,0,0,0]
  [1,1,0,1,0,1,0,0,1,1]
  [0,0,0,1,0,1,0,1,0,0]
  [1,1,0,1,0,1,0,1,0,0]

  Person 1 shake hands with [4,6,8,10] (4 shakes)
  Person 2 shake hands with [4,6,8,10] (4 shakes)
  Person 3 shake hands with [] (0 shakes)
  Person 4 shake hands with [1,2,5,6,7,8,9,10] (8 shakes)
  Person 5 shake hands with [4] (1 shakes)
  Person 6 shake hands with [1,2,4,7,8,9,10] (7 shakes)
  Person 7 shake hands with [4,6] (2 shakes)
  Person 8 shake hands with [1,2,4,6,9,10] (6 shakes)
  Person 9 shake hands with [4,6,8] (3 shakes)
  Person 10 shake hands with [1,2,4,6,8] (5 shakes)


*/

go :-
        N = 4, % 5 pairs
        time(handshake(N,symmetrybreaking,print)).

go1 :-
        N = 10,
        length(X,N),
        calculate_x(N,X),
        writeln(X),
        nl.

go2 :-
        N = 10,
        findall(_,handshake(N,nosymmetrybreaking,noprint),L),
        length(L,Len),
        writeln(len:Len),
        nl.

go3 :-
        N = 100,
        time(handshake(N,symmetrybreaking,print)).

go4 :-
        N = 300,
        time(handshake(N,symmetrybreaking,noprint)).

go5 :-
        N = 350,
        time(handshake(N,symmetrybreaking,print)).



handshake(N,Symmetry,Print) :-

        %% Nunber of handshakes for person X[I].
        %% A person can shake max n-2 hands
        %%   coded X = [Pair1a,Pair1b,  Pair2a,Pair2b, ...]
        %%
        length(X, N),
        N2 #= N-2,
        X ins 0..N2,

        % who shake with whom:
        %  (not him/herself and not his/her spouse)
        new_matrix(N,N,0..1,Y),
        
        %% We assume that Hilary is in position x[1]
        %% (and Hilary's spouse - Jocelyn - in x[2])
        %% All except Hilary's counts are different
        X = [_|X2],        
        % all_different(X2),
        all_distinct(X2),
        
        %% don't shake hand with spouse
        dont_shake_hand_with_spouse(Y,N),

        %% don't shake hand with oneself
        numlist(1,N,Is),
        maplist(no_self_shakes(Y),Is),

        %% how many hands has X[I] shaken
        maplist(sum_shaken_hands,X,Y),

        %% symmetry of handshaking:
        %%   a shake hands with b <-> b shake hands with a
        symmetry_of_handshaking(N,Y),
        
        %% Symmetry breaking which orders the other couples (besides the hosts)
        %% Without it: 384 solutions (all x = [4,4,.....])
        %% With it: 1 solution: x: [4, 4, 0, 8, 1, 7, 2, 6, 3, 5] 
        %%                         (since we order 0,1,2,3 shakes)
        %% 
        %% Note that all number of handshaking of the pairs sums to 8, 
        %% i.e. 4+4, 0+8, 1+7, 2+6, 3+5
        %% More general: The number of handshaking per pair sums to n-2.
        %%
        %% Note: We calculate this in calculate_x/2 and exploit it
        %% when using symmetry breaking.
        %%
        (Symmetry == symmetrybreaking
        ->
         ((N #> 4, N mod 2 #= 0)
         ->
          calculate_x(N,X)
          ;
          true
         ),
         symmetry_breaking(N,X)
        ;
         true
        ),
        
        %
        % search
        %
        writeln(solve),
        flatten([X,Y], Vars),
        labeling([down],Vars),
        (
         Print = print
        ->
         writeln(x:X),
         nl,
         writeln('Who shake hands with whom:'),
         maplist(writeln,Y),
         nl,
         findall([I,Row,RowLen],
                 (between(1,N,I),
                  findall(J,
                          (
                           between(1,N,J),
                           matrix_element5(Y,I,J,1)
                          ),
                          Row
                         ),
                  length(Row,RowLen)
                 ),
                 Sol),
         maplist(format("Person ~d shake hands with ~w (~d shakes)~n"),Sol),
         nl
        ;
         true
        ).


%% don't shake hand with spouse
dont_shake_hand_with_spouse(Y,N) :-
        N21 #= (N div 2)-1,
        numlist(0,N21,Is),
        maplist(dont_shake_hand_with_spouse_(Y),Is).
dont_shake_hand_with_spouse_(Y,I) :-
        I1 #= 2*I+1,
        I2 #= 2*I+2,
        matrix_element5(Y,I1,I2,0),
        matrix_element5(Y,I2,I1,0).


%% don't shake hand with oneself
no_self_shakes(Y,I) :-
        matrix_element2(Y,I,I,0).

%% how many hands has X[I] shaken?
sum_shaken_hands(X,YRow) :-
        sum(YRow,#=,X).

%% symmetry of handshaking:
%%    a shake hands with b <-> b shake hands with a
symmetry_of_handshaking(N,Y) :-
        findall([I,J],
                (between(1,N,I),
                 between(1,N,J),
                 I #< J
                ),
                IJs),
        maplist(symmetry_of_handshaking_(Y),IJs).
symmetry_of_handshaking_(Y,[I,J]) :-
        matrix_element5(Y,I,J,YIJ),
        matrix_element5(Y,J,I,YIJ).

symmetry_breaking(N,X) :-
        N2 #= (N div 2) - 2,
        findall(I2,
                (between(0,N2,I),
                 I2 #= 3+2*I
                ),
                Is),
        extract_from_indices(Is,X,Xs),
        increasing(Xs),
        maplist(symmetry_breaking2(X),Is).
symmetry_breaking2(X,I) :-
        I1 #= I+1,
        element(I,X,XI),
        element(I1,X,XI1),
        XI #< XI1.
        

%%
%% The formula for calulating the distinct solution of X
%% (the number of shaken hands) for a certain N and with symmetry breaking:
%%
%%   N2 #= N-2
%%   [N div 2, N div 2, 0, N2-2, 1, N2-3, 2, N2-4, 3, ...,  1+ (N div 2)]
%%
%% For N=10, X = [4, 4, 0, 8, 1, 7, 2, 6, 3, 5] 
%%
calculate_x(N,X) :-
        Ndiv2_1 #= (N div 2)-1,       
        N2 #= N - 2,
        element(1,X,Ndiv2_1),
        element(2,X,Ndiv2_1),
        element(3,X,0),
        element(4,X,N2),
        numlist(5,N,Is),
        maplist(calculate_x_(N,X),Is).
calculate_x_(N,X,I) :-
        (I mod 2 #= 1
        ->
         T #= (I div 2) -1
        ;
         T #= N-(I div 2)
        ),
        element(I,X,T).
:- initialization(go).
%------------------------------------------------ 133 hakank_swi_hanging_weights
/*

  Hanging weights problem in SWI Prolog

  From 
  "Using LINQ to solve puzzles"
  http://blogs.msdn.com/lukeh/archive/2007/03/19/using-linq-to-solve-puzzles.aspx
  """
  Here's a puzzle similar to the one in the puzzle hunt.  The diagram 
  below is a bunch of weights (A-M) hanging from a system of bars.  
  Each weight has an integer value between 1 and 13, and the goal is 
  to figure out what each weight must be for the the diagram below to 
  balance correctly as shown: 

                           |
                           |
               +--+--+--+--+--+--+--+
               |                    |
               |                    |
            +--+--+--+--+--+        |
            |     L        M        |
            |                       |
   +--+--+--+--+--+--+     +--+--+--+--+--+
   H              |  I     |  J        K  |
                  |        |              |
         +--+--+--+--+--+  |     +--+--+--+--+--+
         E              F  |     G              |
                           |                    |
               +--+--+--+--+--+  +--+--+--+--+--+--+
               A              B  C                 D

  The rules for this kind of puzzle are: 
  (1) The weights on either side of a given pivot point must be equal, 
      when weighted by the distance from the pivot, and 
  (2) a bar hanging beneath another contributes it's total weight as 
      through it were a single weight.  For instance, the bar on the bottom 
      right must have 5*C=D, and the one above it must have 3*G=2*(C+D).
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall([All, total=Total], hanging_weights(All,Total), Result),
        maplist(writeln,Result),
        nl.

hanging_weights(All, Total) :-

        All = [A,B,C,D,E,F,G,H,I,J,K,L,M],
        All ins 1..13,

        all_different(All),
        sum(All,#=,Total),
        
        4 * A #= B, 
        5 * C #= D, 
        3 * E #= 2 * F, 
        3 * G #= 2 * (C + D), 
        3 * (A + B) + 2 * J #= K + 2 * (G + C + D), 
        3 * H #= 2 * (E + F) + 3 * I, 
        (H + I + E + F) #= L + 4 * M, 
        4 * (L + M + H + I + E + F) #= 3 * (J + K + G + A + B + C + D),

        flatten([All,Total], Vars),
        labeling([],Vars).
        
:- initialization(go).
%--------------------------------------------------- 134 hakank_swi_heterosquare
/*

  Heterosquare problem in SWI Prolog

  From http://willow.engr.uconn.edu/cometPubWiki/index.php/Heterosquare
  """
  A heterosquare of order n is a n*n square whose elements are
  distinct integers from 1 to n^2 such that the sums of the rows,
  columns and diagonals are all different. Here is an example of
  heterosquare of order 3 
             19
  
  1  2  3    6
  8  9  4    21
  7  6  5    18
  
  16 17 12   15  (Sums)
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 3,
        heterosquare(N, Mat, RowSums, ColSums, Diag1, Diag2),
        maplist(writeln,Mat),
        writeln(rowsums=RowSums),
        writeln(colsums=ColSums),
        writeln(diag1=Diag1),
        writeln(diag2=Diag2),
        nl,nl,
        fail,
        nl.

go.


heterosquare(N, Mat, RowSums, ColSums, Diag1, Diag2) :-
        writeln(n=N),
        NN #= N*N,
        NNN #= N*N*N,
        new_matrix(N,N,1..NN, Mat),
        flatten(Mat,MatVars),
        
        length(RowSums,N),
        RowSums ins 1..NNN,

        length(ColSums,N),  
        ColSums ins 1..NNN,      

        %% diagonals
        Diag1 in 1..NNN,
        Diag2 in 1..NNN,

        %% all entries in the matrix should be different
        all_different(MatVars),

        %% and all sums should be different
        flatten([RowSums,ColSums,Diag1, Diag2],AllSums),
        all_different(AllSums),

        %% calculate rows/col sums
        maplist(sums,Mat,RowSums),
        transpose(Mat,MatT),  
        maplist(sums,MatT,ColSums),

        %% Diagonals
        diagonal1_slice(Mat,Diag1Slice),
        sum(Diag1Slice,#=,Diag1),

        diagonal2_slice(Mat,Diag2Slice),
        sum(Diag2Slice,#=,Diag2),

        flatten([MatVars, RowSums, ColSums], Vars),
        label(Vars).

sums(X,Sums) :-
        sum(X,#=,Sums).

:- initialization(go).
%--------------------------------------------------------- 135 hakank_swi_hidato
/*

  Hidato puzzle in SWI Prolog

  http://www.shockwave.com/gamelanding/hidato.jsp
  http://www.hidato.com/
 
  """
  Puzzles start semi-filled with numbered tiles.
  The first and last numbers are circled.
  Connect the numbers together to win. Consecutive
  number must touch horizontally, vertically, or
  diagonally.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        time(solveit(6)).

go1 :- 
        time(solveit(1)).

go2 :-
        member(P,[1,2,3,4,5,6,8]),
        time(solveit(P)),
        fail,
        nl.
go2.

%%
%% Problem 7 is hard!
%%
go3 :- 
        time(solveit(7)),
        nl.


%%
%% Benchmark all combinations of strategies for problem 6
%%
%% These are the only combinations that solves problem 6 under 3s.
%% It seems that it's leftmost+up (i.e. the default) that's the best.
%% 
%% [leftmost,up,step]
%% % 36,839,745 inferences, 2.302 CPU in 2.302 seconds (100% CPU, 16004092 Lips)
%%
%% [leftmost,up,enum]
%% % 36,808,741 inferences, 2.287 CPU in 2.287 seconds (100% CPU, 16095059 Lips)
%%
%% [leftmost,up,bisect]
%% % 36,857,577 inferences, 2.286 CPU in 2.286 seconds (100% CPU, 16125705 Lips)
%%
go4 :-

        variable_selection(Vars),
        value_selection(Vals),
        strategy_selection(Strategies),
        member(Var,Vars),
        member(Val,Vals),
        member(Strategy,Strategies),
        writeln([Var,Val,Strategy]),
        Timeout #= 3,          % timeout (seconds)
        problem(6,X),
        catch(call_with_time_limit(Timeout,
                                   time(once(hidato(X,[Var,Val,Strategy])))
                                   ),
              time_limit_exceeded,
              Result = timeout),
        writeln(result=Result),
        nl,
        fail,
        nl.

go4.
        

%%
%% Wrapper
%%
solveit(Problem) :-
        format("\nProblem ~d\n", [Problem]),
        problem(Problem,X),
        once(hidato(X)),
        pretty_print(X).

%%
%% Place all integers from 1..Rows*Cols
%%
hidato(X) :-
        hidato(X,[]).
hidato(X, Label) :-

   length(X,N),
   flatten(X,XList),
   NN #= N*N,
   XList ins 1..NN,

   % Valid connections, used by the table constraint below
   findall([I1,J1,I2,J2],
           (between(1,N,I1),between(1,N,J1),
            between(1,N,I2),between(1,N,J2),
            abs(I1-I2) #=< 1,
            abs(J1-J2) #=< 1,
            (I1 #\=I2 ; J1 #\= J2)
           ),
           Connections),

   all_different(XList),

   NN1 #= (NN)-1,
   numlist(1,NN1,Ks),
   maplist(hidato_loop(XList,N), Ks,Extra,Connect),

   tuples_in(Connect,Connections),
   
   %% search
   flatten([Connect,XList,Extra],Vars),
   labeling(Label,Vars).


%%
%% The hidato loop (foreach K in 1..(N*N)-1)
%%
%% Extra and Connect collects the temporary variables.
%% 
hidato_loop(XList,N, K,Extra,Connect) :-
        %% define temporary variables for finding
        %% the index of this and the next number (K)
        I in 1..N,              % index I
        J in 1..N,              % index J
        A in -1..1,             % offset from K's position
        B in -1..1,             % ibid
        
        %% needed for element
        IA in 1..N,
        JB in 1..N,
        IA #= I+A,
        JB #= J+B,
        
        %% some extra constraints
        abs(A)+abs(B) #>= 1, % both A and B cannot be 0, i.e. it must be a move

        %% 1. First: fix this k, i.e.
        %% K #= X[I,J]
        I1 #= I-1,
        IJ #= (I1)*N + J,
        element(IJ, XList, K),
       
        %% 2. Then, find the position of the next value, i.e.
        %% K+1 #= X[I+A,J+B], % this don't work
        IA_JB #= (I-1+A)*N + JB,
        K1 #= K+1,
        element(IA_JB, XList, K1),
        Extra = [IJ,IA_JB,A,B],
        Connect= [I,J,IA,JB].


pretty_print(X) :-
        maplist(writeln,X),
        nl.


%
% Problems
%


% Simple problem
%
% solution:
%   6 7 9
%   5 2 8
%   1 4 3
% 
problem(1, P) :- 
    P = [[6,_,9],
         [_,2,8],
         [1,_,_]].



problem(2, P) :- 
    P = [[ _,44,41, _, _, _, _],
         [ _,43, _,28,29, _, _],
         [ _, 1, _, _, _,33, _],
         [ _, 2,25, 4,34, _,36],
         [49,16, _,23, _, _, _],
         [ _,19, _, _,12, 7, _],
         [ _, _, _,14, _, _, _]]. 



% Problems from the book:
% Gyora Bededek: "Hidato: 2000 Pure Logic Puzzles"

% problem 1 (Practice]
problem(3, P) :- 
    P = [[_, _,20, _, _],
         [_, _, _,16,18],
         [22, _,15, _, _],
         [23, _, 1,14,11],
         [_,25, _, _,12]].
         


% problem 2 (Practice]
problem(4, P) :- 
    P = [[_, _, _, _,14],
         [_,18,12, _, _],
         [_, _,17, 4, 5],
         [_, _, 7, _, _],
         [9, 8,25, 1, _]].


% problem 3 (Beginner]
problem(5, P) :- 
    P = [[ _,26, _, _, _,18],
         [ _, _,27, _, _,19],
         [31,23, _, _,14, _],
         [ _,33, 8, _,15, 1],
         [ _, _, _, 5, _, _],
         [35,36, _,10, _, _]].



% Problem 15 (Intermediate]
problem(6,P) :- 
   P = [[64, _, _, _, _, _, _, _],
        [ 1,63, _,59,15,57,53, _],
        [ _, 4, _,14, _, _, _, _],
        [ 3, _,11, _,20,19, _,50],
        [ _, _, _, _,22, _,48,40],
        [ 9, _, _,32,23, _, _,41],
        [27, _, _, _,36, _,46, _],
        [28,30, _,35, _, _, _, _]].


% Problem 156 (Master]
% (This is harder to solve than the 12x12 prolem 188 below...]
problem(7, P) :- 
    P = [[88, _, _,100, _, _,37,_, _,34],
         [ _,86, _,96,41, _, _,36, _, _],
         [ _,93,95,83, _, _, _,31,47, _],
         [ _,91, _, _, _, _, _,29, _, _],
         [11, _, _, _, _, _, _,45,51, _],
         [ _, 9, 5, 3, 1, _, _, _, _, _],
         [ _,13, 4, _, _, _, _, _, _, _],
         [15, _, _,25, _, _,54,67, _, _],
         [ _,17, _,23, _,60,59, _,69, _],
         [19, _,21,62,63, _, _, _, _, _]].


% Problem 188 (Genius]
problem(8, P) :- 
    P = [[  _,  _,134,  2,  4,  _,  _,  _,  _,  _,  _,  _],
         [136,  _,  _,  1,  _,  5,  6, 10,115,106,  _,  _],
         [139,  _,  _,124,  _,122,117,  _,  _,107,  _,  _],
         [  _,131,126,  _,123,  _,  _, 12,  _,  _,  _,103],
         [  _,  _,144,  _,  _,  _,  _,  _, 14,  _, 99,101],
         [  _,  _,129,  _, 23, 21,  _, 16, 65, 97, 96,  _],
         [ 30, 29, 25,  _,  _, 19,  _,  _,  _, 66, 94,  _],
         [ 32,  _,  _, 27, 57, 59, 60,  _,  _,  _,  _, 92],
         [  _, 40, 42,  _, 56, 58,  _,  _, 72,  _,  _,  _],
         [  _, 39,  _,  _,  _,  _, 78, 73, 71, 85, 69,  _],
         [ 35,  _,  _, 46, 53,  _,  _,  _, 80, 84,  _,  _],
         [ 36,  _, 45,  _,  _, 52, 51,  _,  _,  _,  _, 88]].
:- initialization(go).
%----------------------------------------------- 136 hakank_swi_huey_dewey_louie
/*

  Huey, Dewey and Louie problem in SWI Prolog

  From Marriott & Stuckey, Programming with Constraints, page 42
  """
  Huey, Dewey and Louie are being questioned by their uncle. These are the 
  statements the make:
   Huey: Dewey and Louie has equal share in it; if one is quitly, so
         is the other.
   Dewey: If Huey is guilty, then so am I.
   Louie: Dewey and I are not both quilty.
  
  Their uncle, knowing that they are cub scouts, realises that they
  cannot tell a lie. Has he got sufficient information to decide who 
  (if any) are quilty?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        huey_dewey_louie(L),
        writeln(L),nl.

huey_dewey_louie(L) :-

        L = [Huey,Dewey,Louie],
        L ins 0..1,

        %% Huey: Dewey and Louie has equal share in it; if one is 
        %% quitly, so is the other.
        ((Dewey #=1) #<==> (Louie #=1)),
  
        %%  Dewey: If Huey is guilty, then so am I.
        (Huey #=1 #==> Dewey #=1),

        %%  Louie: Dewey and I are not both quilty.
        #\(Dewey #=1  #/\ Louie #=1),

        label(L).
:- initialization(go).
%-------------------------------------------------------- 137 hakank_swi_inverse
/*

  Global constraint inverse/1 and inverse/2 in SWI Prolog

  From Global Constraint Catalog
  http://www.emn.fr/z-info/sdemasse/gccat/Cinverse.html
  """
  inverse(NODES)

  Enforce each vertex of a digraph to have exactly one predecessor and 
  one successor. In addition the following two statements are equivalent:
    - The successor of the ith node is the jth node.
    - The predecessor of the jth node is the ith node.
  """

  There are two inverse constraints:
  
  * inverse/1: The constraint described above is inverse/1 ("self-assignment").
  
    This means that for each element X[I] either 
       - X[I] = I
       or
       - X[I] = J <=> X[J] = I

    Example N=4:

      [1,2,3,4]
      [1,2,4,3]    (X[3]=4, X[4]=3)
      [1,3,2,4]    (X[2]=3, X[3]=2)
      [1,4,3,2] 
      [2,1,3,4]
      [2,1,4,3]    (X[1]=2,X[2]=1, X[3]=4,X[4]=3)
      [3,2,1,4]
      [3,4,1,2]
      [4,2,3,1]
      [4,3,2,1]

  * The other version is inverse/2, a.k.a. "assignment/2".
    We have two lists, L1 and L1. For each element I and J in L1 and L2:
       X[I] = J <=> Y[J] = I

    For N=4, there are 24 solutions:
  
     [[1,2,3,4],[1,2,3,4]]
     [[1,2,4,3],[1,2,4,3]]
     [[1,3,2,4],[1,3,2,4]]
     [[1,3,4,2],[1,4,2,3]]
     [[1,4,2,3],[1,3,4,2]]
     [[1,4,3,2],[1,4,3,2]]
     [[2,1,3,4],[2,1,3,4]]
     [[2,1,4,3],[2,1,4,3]]
     [[2,3,1,4],[3,1,2,4]]
     [[2,3,4,1],[4,1,2,3]]
     [[2,4,1,3],[3,1,4,2]]
     [[2,4,3,1],[4,1,3,2]]
     [[3,1,2,4],[2,3,1,4]]
     [[3,1,4,2],[2,4,1,3]]
     [[3,2,1,4],[3,2,1,4]]
     [[3,2,4,1],[4,2,1,3]]
     [[3,4,1,2],[3,4,1,2]]
     [[3,4,2,1],[4,3,1,2]]
     [[4,1,2,3],[2,3,4,1]]
     [[4,1,3,2],[2,4,3,1]]
     [[4,2,1,3],[3,2,4,1]]
     [[4,2,3,1],[4,2,3,1]]
     [[4,3,1,2],[3,4,2,1]]
     [[4,3,2,1],[4,3,2,1]]

  

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


%%
%% inverse/1
%%
%% For each element X[I] either:
%%     - X[I] = I
%%     or
%%     - X[I] = J <=> X[J] = I
%%
go :-
        N = 4,
        length(X,N),
        X ins 1..N,
        findall(X,(inverse(X),label(X)),L),
        length(L,Len),
        maplist(writeln,L),
        writeln(len=Len),
        nl.

%%
%% inverse/2
%%
go2 :-
        N = 4,
        length(X,N),
        X ins 1..N,
        length(Y,N),
        Y ins 1..N,
        findall([X,Y],(inverse(X,Y),append(X,Y,Vars), label(Vars)),L),
        length(L,Len),
        maplist(writeln,L),
        writeln(len=Len),
        nl.


%%
%% Note: The implementation of inverse/1 and inverse/2 has moved to
%%       hakank_utils.pl
%%

% %%
% %% inverse/1
% %%
% inverse(L) :-
%         inverse(L,L).

% %%
% %% inverse(L1,L2)
% %%
% %% For each element in L1 and L2
% %%     - L1[I] = I
% %%     or
% %%     - X[I] = J <=> X[J] = I
% %% 
% inverse(L1,L2) :-
%         %% same length
%         length(L1,Len),
%         length(L2,Len),
%         findall([I,J],(between(1,Len,I),between(1,Len,J)),IJs),
%         inverse_(IJs,L1,L2).


% inverse_([],_L1,_L2).
% inverse_([[I,J]|IJs],L1,L2) :-
%         element(I,L1,L1I),
%         element(J,L2,L2J),
%         (J #= L1I) #<==> (I #= L2J),
%         inverse_(IJs,L1,L2).

:- initialization(go).
%----------------------------------------------------------- 138 hakank_swi_isbn
/*

  Some explorations of ISBN13 in SWI Prolog

  See http://en.wikipedia.org/wiki/ISBN

  Test ISBN:
  978-0262720304: The OPL Optimization Programming Language 
  [9,7,8,0,2,6,2,7,2,0,3,0]
 
  isbn = 978-0262220774: Constraint-based Local Search
  [9,7,8,0,2,6,2,2,2,0,7,7];

  Constraint Solving and Planning with Picat
  book: http://www.springer.com/gp/book/9783319258812
  [9,7,8,3,3,1,9,2,5,8,8,1,2]
  Ebook: [9,7,8,3,3,1,9,2,5,8,8,3,6]



  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 13,
        
        %% test ISBNs
        %% ISBN = [9,7,8,0,2,6,2,7,2,0,3,0,_], % get check digit
        %% ISBN = [9,7,8,0,2,_,2,7,2,0,3,0,4], % get some other digit
        %% ISBN = [9,7,8,0,2,_,_,7,2,0,3,0,4], % get some other digit
        %% ISBN = [9,7,8,0,2,6,2,_,_,_,_,_,_],
        
        %% Picat book: http://www.springer.com/gp/book/9783319258812
        ISBN = [9,7,8,3,3,1,9,2,5,8,8,_,_],

        %% fixed Mult0 and Mult1
        Mult0 = 3,
        Mult1 = 1,
        isbn(N, ISBN,Mult0,Mult1,Check),
        writeln(isbn=ISBN),
        writeln(check=Check),
        writeln([mult0=Mult0,mult1=Mult1]),
        nl,
        fail,
        nl.
   

go.


%%
%% Simpler version, fixed Mult0 and Mult1
%%
go2 :- 
        %% The Picat book: http://www.springer.com/gp/book/9783319258812
        ISBN = [9,7,8,3,3,1,9,2,5,8,8,_,_],
        isbn2(ISBN),
        writeln(ISBN),
        fail,
        nl.

go2.


%%
%% Just check digits, but now with unfixed Mult0 and Mult1
%%
go3 :-
   N = 13,
   ISBN = [9,7,8,0,2,6,2,7,2,0,3,0,_], % get check digit

   isbn(N, ISBN,Mult0,Mult1,Check),
   writeln(isbn=ISBN),
   writeln(check=Check),
   writeln([mult0=Mult0,mult1=Mult1]),
   nl,
   fail,
   nl.


isbn(N, ISBN,Mult0,Mult1,Check) :-
        writeln(isbn(N, ISBN,Mult0,Mult1,Check)),
        
        length(ISBN,N),
        ISBN ins 0..9,

        Mult0 in 1..9,
        Mult1 in 1..9,

        %% Mult0 #\= Mult1, % extra constraint

        %% The first N-1 digits, for the check sum
        N1 #= N-1,
        length(TT,N1),
        TT ins 0..100,

        %% ISBN starts with 978 or 979
        element(1,ISBN,ISBN1),
        element(2,ISBN,ISBN2),
        element(3,ISBN,ISBN3),
        ISBN1 #= 9,
        ISBN2 #= 7,
        ISBN3 #>=8,


        
        %% Prepare for the check sum
        numlist(1,N1,Cs),
        zip2(TT,Cs,TCs),
        maplist(prepare_check_sum(ISBN,Mult0,Mult1),TCs),
        
        sum(TT,#=,TSum),

        %% check digit
        element(N,ISBN,ISBNN),
        Check #= ISBNN,
        Check #= (10 - TSum mod 10) mod 10,

        flatten([ISBN,TT,[Mult0,Mult1,TSum]],Vars),
        labeling([ff],Vars).

%%
%% Simpler version: fixed Mult0 and Mult1
%%
isbn2(ISBN) :-

        N=13,   
        length(ISBN,N),
        ISBN ins 0..9,
        
        %% The first N-1 digits, for the check sum
        N1 #= N-1,
        length(TT,N1),
        TT ins 0..100,

        %% ISBN starts with 978 or 979
        element(1,ISBN,ISBN1),
        element(2,ISBN,ISBN2),
        element(3,ISBN,ISBN3),
        ISBN1 #= 9,
        ISBN2 #= 7,
        ISBN3 #>=8,

        %% Prepare for the check sum
        numlist(1,N1,Cs),
        zip2(TT,Cs,TCs),
        maplist(prepare_check_sum2(ISBN),TCs),

        sum(TT,#=,TSum),
        element(N,ISBN,ISBNN),
        Check #= ISBNN,
        Check #= (10 - TSum mod 10) mod 10,

        flatten([ISBN,TT,TSum],Vars),
        labeling([ff],Vars).

%%
%% Prepare for the check sum
%%
prepare_check_sum(ISBN,Mult0,Mult1,[T,C]) :-
        element(C,ISBN,I),
        (
         C mod 2 #= 0
        ->
         T #= I*Mult0
        ;
         T #= I*Mult1
        ).


%%
%% Prepare for the check sum
%%
prepare_check_sum2(ISBN,[T,C]) :-
        element(C,ISBN,I),
        (
         C mod 2 #= 0
        ->
         T #= I*3
        ;
         T #= I*1
        ).
:- initialization(go).
%---------------------------------------------------- 139 hakank_swi_jobs_puzzle
/*

  Jobs puzzle in SWI Prolog

  This is a standard problem in Automated Reasoning.
  
  From http://www-unix.mcs.anl.gov/~wos/mathproblems/jobs.html
  """
  Jobs Puzzle
  
  There are four people:  Roberta, Thelma, Steve, and Pete.
  Among them, they hold eight different jobs.
  Each holds exactly two jobs.
  The jobs are chef, guard, nurse, clerk, police officer (gender 
  not implied), teacher, actor, and boxer.
  The job of nurse is held by a male.
  The husband of the chef is the clerk.
  Roberta is not a boxer.
  Pete has no education past the ninth grade.
  Roberta, the chef, and the police officer went golfing together.
 
  Question:  Who holds which jobs?
  """
  
  The answer:
  Chef       Thelma
  Guard      Roberta
  Nurse      Steve
  Clerk      Pete
  Police     Steve
  Teacher    Roberta
  Actor      Pete
  Boxer      Thelma

 

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        Roberta = 1,
        Thelma = 2,
        Steve = 3,
        Pete = 4,
        
        _Persons = [Roberta, Thelma, Steve, Pete],
        
        Jobs = [Chef, _Guard, Nurse, Clerk, PoliceOfficer, Teacher, Actor, Boxer],
        Jobs ins 1..4,
        
   
        %% Each holds exactly two jobs.
        findall(I-2,between(1,4,I), GCC),
        global_cardinality(Jobs,GCC),
   
        %%  The job of nurse is held by a male.
        (Nurse #= Steve #\/ Nurse #= Pete),

        %%  The husband of the chef is the clerk.
        (Clerk #= Steve   #\/ Clerk #= Pete),
        (Chef  #= Roberta #\/ Chef #= Thelma),
        Chef #\= Clerk,

        %%  Roberta is not a boxer.
        Roberta #\= Boxer,

        %%  Pete has no education past the ninth grade.
        Pete #\= Teacher, 
        Pete #\= PoliceOfficer, 
        Pete #\= Nurse,

        %% Roberta, [and] the chef, and the police officer 
        %% went golfing together.
        all_different([Roberta,Chef,PoliceOfficer]),
        %% Roberta #\= Chef , 
        %% Chef    #\= PoliceOfficer ,
        %% Roberta #\= PoliceOfficer ,

        %% From the name of the job
        (Actor #= Steve #\/ Actor #= Pete),

        %% search
        label(Jobs),

        %% output
        writeln(Jobs),nl,
        PersonsStr = ["Roberta", "Thelma", "Steve", "Pete"],
        JobsStr    = ["Chef", "Guard", "Nurse", "Clerk", "Police", "Teacher", "Actor", "Boxer"],
        findall([Js,Ps],
                (
                 between(1,8,I),
                 element(I,Jobs,J),
                 nth1(I,JobsStr,Js),
                 nth1(J,PersonsStr,Ps)
                 ),
                Sol),
        maplist(format("~s~t~7|: ~s~n"),Sol),
        nl.
:- initialization(go).
%------------------------------------------------- 140 hakank_swi_just_forgotten
/*

  Just forgotten puzzle (Enigma 1517) in SWI Prolog

  From http://www.f1compiler.com/samples/Enigma 201517.f1.html
  """
  Enigma 1517 Bob Walker, New Scientist magazine, October 25, 2008.
 
  Joe was furious when he forgot one of his bank account numbers. 
  He remembered that it had all the digits 0 to 9 in some order, so he tried
  the following four sets without success:
 
      9 4 6 2 1 5 7 8 3 0
      8 6 0 4 3 9 1 2 5 7 
      1 6 4 0 2 9 7 8 5 3
      6 8 2 4 3 1 9 0 7 5
 
  When Joe finally remembered his account number, he realised that in each set
  just four of the digits were in their correct position and that, if one knew
  that, it was possible to work out his account number.
  What was it? 
  """
 
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   A = [[9,4,6,2,1,5,7,8,3,0],
        [8,6,0,4,3,9,1,2,5,7],
        [1,6,4,0,2,9,7,8,5,3],
        [6,8,2,4,3,1,9,0,7,5]],

   length(Xs,10),
   Xs ins 0..9,

   all_different(Xs),
   maplist(four_correct_digits(Xs),A),
   
   labeling([],Xs),
   
   writeln(Xs),
   nl.

%%
%% Each row contains exactly 4 correct digits.
%%
four_correct_digits(Xs,Row) :-
        sum_row(Xs,Row,0,4). 

sum_row([],[],Sum,Sum).
sum_row([X|Xs],[R|Rs],Sum0,Sum) :-
        R #= X,
        Sum1 #= Sum0 + 1,
        sum_row(Rs,Xs,Sum1,Sum).
sum_row([_X|Xs],[_R|Rs],Sum0,Sum) :-
        %% R #\= X, % slightly faster without this
        sum_row(Xs,Rs,Sum0,Sum).
        
:- initialization(go).
%--------------------------------------------------------- 141 hakank_swi_kakuro
/*

  Kakuru puzzle in SWI Prolog

  http://en.wikipedia.org/wiki/Kakuro
  """
  The object of the puzzle is to insert a digit from 1 to 9 inclusive 
  into each white cell such that the sum of the numbers in each entry 
  matches the clue associated with it and that no digit is duplicated in 
  any entry. It is that lack of duplication that makes creating Kakuro 
  puzzles with unique solutions possible, and which means solving a Kakuro 
  puzzle involves investigating combinations more, compared to Sudoku in 
  which the focus is on permutations. There is an unwritten rule for 
  making Kakuro puzzles that each clue must have at least two numbers 
  that add up to it. This is because including one number is mathematically 
  trivial when solving Kakuro puzzles; one can simply disregard the 
  number entirely and subtract it from the clue it indicates.
  """

  This model solves the problem at the Wikipedia page. 
  For a larger picture, see
  http://en.wikipedia.org/wiki/File:Kakuro_black_box.svg

  The solution:
    9 7 0 0 8 7 9
    8 9 0 8 9 5 7
    6 8 5 9 7 0 0
    0 6 1 0 2 6 0
    0 0 4 6 1 3 2
    8 9 3 1 0 1 4
    3 1 2 0 0 2 1

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

  problem(P, N, Hints, Blanks),
  format("Kakuro problem ~d\n",P),

  new_matrix(N,N,0..9, X),

  % Fill the blanks
  maplist(fill_blanks(X), Blanks),

  %% The hints
  maplist(lines(X),Hints),

  flatten(X,Vars),
  label(Vars),

  maplist(writeln,X),
  nl.


%%
%% Handle the blanks and hints
%%
fill_blanks(X,[I,J]) :-
        matrix_element(X,I,J, 0).

lines(X,Hints) :-
        [Sum|IJs] = Hints,
        maplist(larger_than_zero(X),IJs),
        extract_from_indices2d(IJs,X,XLine),
        sum(XLine, #=, Sum),
        all_different(XLine).

%%
%% X[I,J] #> 0
%%
larger_than_zero(X,[I,J]) :-
        matrix_element(X,I,J,XIJ),
        XIJ #> 0.


print_board(Board) :-
        maplist(writeln,Board),
        nl.


%%
%% This is the problem cited above.
%%
%% problem(Id, Size, Hints, Blanks).
%%
problem(Id,Size, Hints, Blanks) :-
        Id = 1,
        Size = 7,
        %% [Sum, [List of indices in X]]
        Hints =  [ 
                   [16, [1,1],[1,2]],
                   [24, [1,5],[1,6],[1,7]],
                   [17, [2,1],[2,2]],
                   [29, [2,4],[2,5],[2,6],[2,7]],
                   [35, [3,1],[3,2],[3,3],[3,4],[3,5]],
                   [ 7, [4,2],[4,3]],
                   [ 8, [4,5],[4,6]],
                   [16, [5,3],[5,4],[5,5],[5,6],[5,7]],
                   [21, [6,1],[6,2],[6,3],[6,4]],
                   [ 5, [6,6],[6,7]],
                   [ 6, [7,1],[7,2],[7,3]],
                   [ 3, [7,6],[7,7]],
                   
                   [23, [1,1],[2,1],[3,1]],
                   [30, [1,2],[2,2],[3,2],[4,2]],
                   [27, [1,5],[2,5],[3,5],[4,5],[5,5]],
                   [12, [1,6],[2,6]],
                   [16, [1,7],[2,7]],
                   [17, [2,4],[3,4]],   
                   [15, [3,3],[4,3],[5,3],[6,3],[7,3]],
                   [12, [4,6],[5,6],[6,6],[7,6]],
                   [ 7, [5,4],[6,4]],   
                   [ 7, [5,7],[6,7],[7,7]],
                   [11, [6,1],[7,1]],
                   [10, [6,2],[7,2]]
                 ],
        
        %% indices of blanks
        Blanks = 
        [
         [1,3], [1,4],
         [2,3],
         [3,6], [3,7],
         [4,1], [4,4],[4,7],
         [5,1], [5,2],
         [6,5],
         [7,4], [7,5]
        ].

:- initialization(go).
%-------------------------------------------------------- 142 hakank_swi_kenken2
/*

  KenKen puzzle in SWI Prolog

  http://en.wikipedia.org/wiki/KenKen
  """
  KenKen or KEN-KEN is a style of arithmetic and logical puzzle sharing 
  several characteristics with sudoku. The name comes from Japanese and 
  is translated as "square wisdom" or "cleverness squared".
  ...
  The objective is to fill the grid in with the digits 1 through 6 such that:

    * Each row contains exactly one of each digit
    * Each column contains exactly one of each digit
    * Each bold-outlined group of cells is a cage containing digits which 
      achieve the specified result using the specified mathematical operation: 
        addition (+), 
        subtraction (-), 
        multiplication (x), 
        and division (Ã·). 
        (Unlike in Killer sudoku, digits may repeat within a group.)

  ...
  More complex KenKen problems are formed using the principles described 
  above but omitting the symbols +, -, x and Ã·, thus leaving them as 
  yet another unknown to be determined.
  """



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
    problem(1,N, Problem),
    time(kenken2(N, Problem)),
    nl.




kenken2(N, Problem) :-
   
        %% decision variables
        new_matrix(N,N,1..N,X),

        %% all rows and columns must be unique
        latin_square(X),
        %% Check the hints
        maplist(check_hint(X),Problem),

        flatten(X,Vars),
        labeling([],Vars),

        print_matrix(X).

%% The hint constraints
check_hint(X,[Result,Coeffs]) :-
        calc(Result,Coeffs,X).

calc(Result, Coeffs,X) :-
        length(Coeffs,Len),        
        (Len == 2
        ->
         %% size 2
         [[AR,AC],[BR,BC]] = Coeffs,
         matrix_element(X,AR,AC,A), % A #= X[AR,AC],
         matrix_element(X,BR,BC,B), % B #= X[BR,BC],
         (
          A + B #= Result #\/
         A * B #= Result #\/
         A * Result #= B #\/    % B/A = Result
         B * Result #= A #\/    % A/B = Result
         A - B #= Result #\/
         B - A #= Result
         )
        ;
         %% or size > 2
         extract_from_indices2d(Coeffs,X,Coeffs2),
         check_many(Result, Coeffs2)
        ).


% either sum or product
check_many(Result, CoeffRes) :-
        prodlist(CoeffRes,Result).
check_many(Result, CoeffRes) :-
        sum(CoeffRes,#=,Result).

% product of a list
mult(X,Y,Z) :- Z #= X*Y. % helper predicate
prodlist(List,Product) :-
        foldl(mult,List,1,Product).

%
% State the problem, i.e. the hints. 
%
% For a better view of the problem, see 
%  http://en.wikipedia.org/wiki/File:KenKenProblem.svg  
%
%
%   The solution is:
%     5 6 3 4 1 2
%     6 1 4 5 2 3
%     4 5 2 3 6 1
%     3 4 1 2 5 6
%     2 3 6 1 4 5
%     1 2 5 6 3 4
%
problem(1, Size, M) :- 
        Size = 6,
        M = [
             [ 11, [[1,1], [2,1]]],
             [  2, [[1,2], [1,3]]],
             [ 20, [[1,4], [2,4]]],
             [  6, [[1,5], [1,6], [2,6], [3,6]]],
             [  3, [[2,2], [2,3]]],
             [  3, [[2,5], [3,5]]],
             [240, [[3,1], [3,2], [4,1], [4,2]]],
             [  6, [[3,3], [3,4]]],  
             [  6, [[4,3], [5,3]]],
             [  7, [[4,4], [5,4], [5,5]]],
             [ 30, [[4,5], [4,6]]],  
             [  6, [[5,1], [5,2]]],
             [  9, [[5,6], [6,6]]],
             [  8, [[6,1], [6,2], [6,3]]],
             [  2, [[6,4], [6,5]]]
            ].


:- initialization(go).
%-------------------------------------------------- 143 hakank_swi_killer_sudoku
/*

  Killer Sudoku in SWI Prolog

  http://en.wikipedia.org/wiki/Killer_Sudoku
  """
  Killer sudoku (also killer su doku, sumdoku, sum doku, addoku, or 
  samunamupure) is a puzzle that combines elements of sudoku and kakuro. 
  Despite the name, the simpler killer sudokus can be easier to solve 
  than regular sudokus, depending on the solver's skill at mental arithmetic; 
  the hardest ones, however, can take hours to crack.

  ...

  The objective is to fill the grid with numbers from 1 to 9 in a way that 
  the following conditions are met:

    * Each row, column, and nonet contains each number exactly once.
    * The sum of all numbers in a cage must match the small number printed 
      in its corner.
    * No number appears more than once in a cage. (This is the standard rule 
      for killer sudokus, and implies that no cage can include more 
      than 9 cells.)

  In 'Killer X', an additional rule is that each of the long diagonals 
  contains each number once.
  """

  Here we solve the problem from the Wikipedia page, also shown here
  http://en.wikipedia.org/wiki/File:Killersudoku_color.svg

  The output is:
    2 1 5 6 4 7 3 9 8
    3 6 8 9 5 2 1 7 4
    7 9 4 3 8 1 6 5 2
    5 8 6 2 7 4 9 3 1
    1 4 2 5 9 3 8 6 7
    9 7 3 8 1 6 4 2 5
    8 2 1 7 3 9 5 4 6
    6 5 9 4 2 8 7 1 3
    4 3 7 1 6 5 2 8 9


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   problem(1, Board),
   killer_sudoku(Board,X),
   print_board(X).


killer_sudoku(Hints,X) :-

   N = 3,
   N2 #= N*N,

   new_matrix(N2,N2,1..9,X),
   
   maplist(lines(X),Hints),
   sudoku(N, X),
   flatten(X,Vars),
   labeling([ff,down], Vars).

% Handle the hints
lines(X,Hints) :-
        [Sum|IJs] = Hints,
        extract_from_indices2d(IJs,X,XLine),
        sum(XLine, #=, Sum),
        all_different(XLine).

%%
%% sudoku(N, X)
%%
%% Solve a Sudoku for the board/matrix X with a cell size of N (3).
%%
sudoku(N, X) :-
        N2 #= N*N,
        
        flatten(X, Vars),
        Vars ins 1..N2,
        
        %% latin_square
        maplist(all_distinct, X),
        transpose(X,XT),
        maplist(all_distinct, XT),

        %% The cells
        findall([I,J], (between(1,N,N2,I),
                        between(1,N,N2,J)),
                IJs),
        cells(IJs,N, X).


cells([],_N, _X).
cells([[I,J]|IJs], N, X) :-
        N1 #= N-1,
        findall([IA,JB],
                (between(0,N1,A),between(0,N1,B),
                 IA #= I+A, JB #= J+B),
                Cells),
        cells_(Cells, X, [], Xs),
        all_distinct(Xs),
        cells(IJs, N, X).

cells_([], _X, Row, Row).
cells_([[I,J]|IJs], X, Row0, Row) :-
        matrix_element(X,I,J,XIJ),
        cells_(IJs, X, [XIJ|Row0], Row).
        

print_board(Board) :-
        maplist(writeln,Board),
        nl.

problem(P, Hints) :-
  P = 1,
  Hints = 
        [% The hints:
         %  [Sum, [list of indices in X]]
            [ 3, [1,1], [1,2]],
            [15, [1,3], [1,4], [1,5]],
            [22, [1,6], [2,5], [2,6], [3,5]],
            [ 4, [1,7], [2,7]],
            [16, [1,8], [2,8]],
            [15, [1,9], [2,9], [3,9], [4,9]],
            [25, [2,1], [2,2], [3,1], [3,2]],
            [17, [2,3], [2,4]],
            [ 9, [3,3], [3,4], [4,4]],
            [ 8, [3,6], [4,6],[5,6]],
            [20, [3,7], [3,8],[4,7]],
            [ 6, [4,1], [5,1]],
            [14, [4,2], [4,3]],
            [17, [4,5], [5,5],[6,5]],
            [17, [4,8], [5,7],[5,8]],
            [13, [5,2], [5,3],[6,2]],
            [20, [5,4], [6,4],[7,4]],
            [12, [5,9], [6,9]],
            [27, [6,1], [7,1],[8,1],[9,1]],
            [ 6, [6,3], [7,2],[7,3]],
            [20, [6,6], [7,6], [7,7]],
            [ 6, [6,7], [6,8]],
            [10, [7,5], [8,4],[8,5],[9,4]],
            [14, [7,8], [7,9],[8,8],[8,9]],
            [ 8, [8,2], [9,2]],
            [16, [8,3], [9,3]],
            [15, [8,6], [8,7]],
            [13, [9,5], [9,6],[9,7]],
            [17, [9,8], [9,9]]
        ].

:- initialization(go).
%------------------------------------------------------- 144 hakank_swi_knapsack
/*

  Simple knapsack problem in SWI Prolog

  Problem from http://sourceforge.net/forum/forum.php?thread_id=1432186&forum_id=335511
  """
  Knapsack maximization problem example
  @author Fernando Lopez Hernandez (f.lopezATuamDOTes)

  In this problem a thief have a knapsack with capacity of 10 units.
  He could charge the knapsack with golden ingots of size 4, silver ingots
  of size 3, and bronze ingots of size 2. Each ingot value is 15, 12 and 7
  respectively.

  The solver goal is to find a solution who maximize profit with the above
  restrictions. That is to say: If G represents the number of golden ingots,
  S the number of silver ingots, B the number of bronze ingots,
  and P the profit, we define the following constraints:
  4G + 3S + 2B <= 10
  15G + 12S + 7B = P

  Solution:
  [ 1, 2, 0 ]
  i.e. 1 Gold, 2 Silver and 0 Bronze
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        values(Values),
        weights(Weights),
        weight_max(WeightMax),
        
        length(Values,N),

        %% decision variables
        length(X,N),
        X ins 0..100,

        knapsack(Weights, Values, X, WeightMax,Profit),

        labeling([max(Profit)], X),

        writeln(x=X),
        writeln(profit=Profit),
  
        nl.

% data
weight_max(10).

% Gold, Silver, Bronze        
values([15, 12, 7]).
weights([4, 3, 2]).

%%
%% knapsack: 
%%  given Weights and Values
%%  - ensure that the total weights <= WeightMax
%%  - calculate the profit (which will be maximized)
%%
knapsack(Weights, Values,Take, WeightMax,Profit) :-
        scalar_product(Weights,Take,#=<,WeightMax),
        scalar_product(Values,Take,#=,Profit).
:- initialization(go).
%------------------------------------------- 145 hakank_swi_knapsack_investments
/*

  Knapsack (investment) problem in SWI Prolog

  From the Swedish book
  Lundgren, Ronnqvist, Varbrand: 
  "Optimeringslara" (Optimization theory),
  page 393ff.
  
  A company shall invest in some building projects with the following
  limits:
 
   - budget of 225 Mkr (million Swedish kronor)
   - 28 persons available
   - maximum 9 projects can be selected
   - some project may not be selected together with other projects, 
     and some projects must be selected together with other.
  
  (I'm keeping the Swedish object names.)
 
  No.  Object   Value(kkr) Budget(Mkr) Personell  Not with  Requires
  1  Ishall      600        35            5        10        -
  2  Sporthall   400        34            3        -         -
  3  Hotell      100        26            4        -         15
  4  Restaurang  150        12            2        -         15
  5  Kontor A     80        10            2        6         -
  6  Kontor B    120        18            2        5         -
  7  Skola       200        32            4        -         -
  8  Dagis       220        11            1        -         7
  9  Lager        90        10            1        -         -
  10 Simhall     380        22            5        1         -
  11 Hyreshus    290        27            3        15        -
  12 Bilverkstad 130        18            2        -         -
  13 Tennishall   80        16            2        -         2
  14 Idrottsanl. 270        29            4        -         2
  15 Båthamn     280        22            3        11        -
  
 
  Solution (page 395): 
  The following projects is selected
    1,2,4,6,7,8,12,14,15
  and optimal value is 2370kkr.
 

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   num_projects(NumProjects), % number of projects to select from
   max_budget(MaxBudget),   % budget limit 
   max_persons(MaxPersons),  % persons available
   max_projects(MaxProjects), % max number of projects to select

   % the values of each project
   values(Values),
   budgets(Budgets),
   personell(Personell),

   % project i cannot be selected with project j
   not_with(NotWith),

   % project i requires project j
   requires(Requires),

   % decision variable: what project to select
   length(X,NumProjects),
   X ins 0..1,

   scalar_product(Personell,X,#=, TotalPersons),
   scalar_product(Budgets,X,#=, TotalBudget),
   sum(X,#=,TotalProjects),
   %% the objective to maximize
   scalar_product(Values,X,#=,TotalValues),

   %% TotalValues #>= 2370, % for checking unicity of solutions
   
   % resource limits
   TotalBudget   #=< MaxBudget,
   TotalPersons  #=< MaxPersons,
   TotalProjects #=< MaxProjects,

   %% projects that require other projects
   maplist(check_requires(X),Requires),
   
   %% projects excluding other projects
   maplist(excluding_projects(X),NotWith),

   %% search
   labeling([max(TotalValues),ff,down], X),

   %% output
   nl,
   write(X),nl,
   writeln("selected projects:"),
   findall(P,
           (between(1,NumProjects,P),
            element(P,X,1)
           ),
           Sol),
   writeln(Sol),
   
   nl,
   writeln(total_persons=TotalPersons),
   writeln(total_budget=TotalBudget),
   writeln(total_projects=TotalProjects),
   writeln(total_values=TotalValues),
   nl.


%% projects that require other projects
check_requires(X,[P1,P2]) :-
        element(P1,X,XP1),
        element(P2,X,XP2),
        XP1 #==> XP2.

%% projects excluding other projects
excluding_projects(X,[P1,P2]) :-
        element(P1,X,XP1),
        element(P2,X,XP2),
        XP1 #= 1 #==> XP2 #= 0.

%
% data
%
num_projects(N) :- N = 15.
max_budget(M) :- M = 225.
max_projects(M) :- M = 9.
max_persons(Max) :- Max = 28.

values(Values) :-
        Values = [600,400,100,150, 80,120,200,220, 90,380,290,130, 80,270,280].

budgets(Budgets) :-
        Budgets = [35,34,26,12,10,18,32,11,10,22,27,18,16,29,22].

not_with(NotWith) :- 
        NotWith = 
        [[1, 10],
         [5, 6],
         [6, 5],
         [10, 1],
         [11, 15],
         [15, 11]].

requires(Requires) :- 
        Requires = 
        [[3, 15],
         [4, 15],
         [8, 7],
         [13, 2],
         [14, 2]].
personell(Personell) :-
        Personell = [5,3,4,2,2,2,4,1,1,5,3,2,2,4,3].

:- initialization(go).
%--------------------------------------- 146 hakank_swi_knapsack_rosetta_code_01
/*

  0/1 Knapsack in SWI Prolog

  From http://rosettacode.org/wiki/Knapsack_problem/0-1
  """
  A tourist wants to make a good trip at the weekend with his friends.
  They will go to the mountains to see the wonders of nature, so he 
  needs to pack well for the trip. He has a good knapsack for carrying 
  things, but knows that he can carry a maximum of only 4kg in it and 
  it will have to last the whole day. He creates a list of what he
  wants to bring for the trip but the total weight of all items is too 
  much. He then decides to add columns to his initial list detailing 
  their weights and a numerical value representing how important the item is for the trip.

  Here is the list:
  Table of potential knapsack items item 	weight (dag) 	value
  map 	9 	150
  compass 	13 	35
  water 	153 	200
  sandwich 	50 	160
  glucose 	15 	60
  tin 	68 	45
  banana 	27 	60
  apple 	39 	40
  cheese 	23 	30
  beer 	52 	10
  suntan cream 	11 	70
  camera 	32 	30
  T-shirt 	24 	15
  trousers 	48 	10
  umbrella 	73 	40
  waterproof trousers 	42 	70
  waterproof overclothes 	43 	75
  note-case 	22 	80
  sunglasses 	7 	20
  towel 	18 	12
  socks 	4 	50
  book 	30 	10
  knapsack 	<=400 dag 	 ?

  The tourist can choose to take any combination of items from the
  list, but only one of each item is available. He may not cut or
  diminish the items, so he can only take whole units of any item.

  Which items does the tourist carry in his knapsack so that their
  total weight does not exceed 400 dag [4 kg], and their total value 
  is maximised?
  """

  These are the items to pick:
    Item                    Weight Value
  * map                          9 150
  * compass                     13  35
  * water                      153 200
  * sandwich                    50 160
  * glucose                     15  60
  * banana                      27  60
  * suntancream                 11  70
  * waterproof trousers         42  70
  * waterproof overclothes      43  75
  * note-case                   22  80
  * sunglasses                   7  20
  * socks                        4  50

  Total weight: 396
  Total value: 1030


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        items(Items),
        length(Items,Rows),
        transpose(Items,ItemsT),
        [Names,Weights,Values] = ItemsT,

        %% 
        %% Variables
        %% 
        length(X,Rows),
        X ins 0..1,

        %
        % Constraints
        % 
        scalar_product(Weights,X,#=,TotalWeight),
        scalar_product(Values,X,#=,TotalValue),
        TotalWeight #=< 400, % 4kg

        %
        % Search
        %
        flatten([X,TotalWeight],Vars),
        labeling([ff,down,enum,max(TotalValue)],Vars),

        %
        % Solutions
        % 
        writeln(x=X),
        writeln('\nThese are the items to pick:'),
        findall([Pick,Name,Weight,Value],
                (between(1,Rows,I),
                 element(I,X,Pick),
                 Pick #> 0,
                 nth1(I,Names,Name),
                 nth1(I,Weights,Weight),
                 nth1(I,Values,Value)
                ),
                Sol),
        maplist(format("* ~d ~w~29|~d~32| ~d\n"),Sol),
        format('Total weight: ~d\n', [TotalWeight]),
        format('Total value: ~d\n', [TotalValue]).



       % Item                    Weight   Value
items([['map',                     9,       150],
       ['compass',                 13,      35],
       ['water',                   153,     200],
       ['sandwich',                50,      160],
       ['glucose',                 15,      60],
       ['tin',                     68,      45],
       ['banana',                  27,      60],
       ['apple',                   39,      40],
       ['cheese',                  23,      30],
       ['beer',                    52,      10],
       ['suntancream',             11,      70],
       ['camera',                  32,      30],
       ['T-shirt',                 24,      15],
       ['trousers',                48,      10],
       ['umbrella',                73,      40],
       ['waterproof trousers',     42,      70],
       ['waterproof overclothes',  43,      75],
       ['note-case',               22,      80],
       ['sunglasses',              7,       20],
       ['towel',                   18,      12],
       ['socks',                   4,       50],
       ['book',                    30,      10]]).
:- initialization(go).
%---------------------------------- 147 hakank_swi_knapsack_rosetta_code_bounded
/*

  Knapsack (Bounded) in SWI Prolog

  From 
  http://rosettacode.org/wiki/Knapsack_problem/Bounded
  """
   A tourist wants to make a good trip at the weekend with his 
   friends. They will go to the mountains to see the wonders of 
   nature. So he needs some items during the trip. Food, clothing, 
   etc. He has a good knapsack for carrying the things, but he knows 
   that he can carry only 4 kg weight in his knapsack, because they 
   will make the trip from morning to evening. He creates a list of 
   what he wants to bring for the trip, but the total weight of all 
   items is too much. He adds a value to each item. The value represents 
   how important the thing for the tourist. The list contains which 
   items are the wanted things for the trip, what is the weight and 
   value of an item, and how many units does he have from each items.
  
   This is the list:
   Table of potential knapsack items item 	weight (dag) (each) 	value (each) 	piece(s)
   map 	9 	150 	1
   compass 	13 	35 	1
   water 	153 	200 	2
   sandwich 	50 	60 	2
   glucose 	15 	60 	2
   tin 	68 	45 	3
   banana 	27 	60 	3
   apple 	39 	40 	3
   cheese 	23 	30 	1
   beer 	52 	10 	3
   suntan cream 	11 	70 	1
   camera 	32 	30 	1
   T-shirt 	24 	15 	2
   trousers 	48 	10 	2
   umbrella 	73 	40 	1
   waterproof trousers 	42 	70 	1
   waterproof overclothes 	43 	75 	1
   note-case 	22 	80 	1
   sunglasses 	7 	20 	1
   towel 	18 	12 	2
   socks 	4 	50 	1
   book 	30 	10 	2
   knapsack 	<=400 dag 	 ? 	 ? 
  
  
   The tourist can choose to take any combination of items from the 
   list, and some number of each item is available (see the column 
   "Piece(s)" of the list!). He may not cut the items, so he can only 
   take whole units of any item.
   
   Which items does the tourist carry in his knapsack so that their 
   total weight does not exceed 4 kg, and their total value is maximised?
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        items(Items),
        length(Items,Rows),
        transpose(Items,ItemsT),
        [Names,Weights,Values,Pieces] = ItemsT,
        
        WeightLimit = 400,

        %% 
        %% Variables
        %% 
        max_list(Pieces,MaxPieces),
        length(X,Rows),
        X ins 0..MaxPieces,

        %%
        %% Constraints
        %% 
        sum(Values,#=,SumValues),
        TotalValue in 0..SumValues,
        TotalWeight in 0..WeightLimit,

        scalar_product(Weights,X,#=,TotalWeight),
        scalar_product(Values,X,#=,TotalValue),

        %% check number of pieces
        maplist(check_capacity,X,Pieces),
        
        %%
        %% Search
        %%
        labeling([ff,down,enum,max(TotalValue)],X), 

        %%
        %% Solutions
        %% 
        writeln(x=X),
        writeln('\nThese are the items to pick:'),
        findall([Pick,Name,Weight,Value],
                (between(1,Rows,I),
                 element(I,X,Pick),
                 Pick #> 0,
                 nth1(I,Names,Name),
                 nth1(I,Weights,Weight),
                 nth1(I,Values,Value)
                ),
                Sol),
        maplist(format("* ~d ~w~29|~d~32| ~d\n"),Sol),
        format('Total weight: ~d\n', [TotalWeight]),
        format('Total value: ~d\n', [TotalValue]).

check_capacity(X,MaxPiece) :-
        X #=< MaxPiece.


       % Item                    Weight   Value  Pieces
items([['map',                     9,       150,   1],
       ['compass',                 13,      35,    1],
       ['water',                   153,     200,   2],
       ['sandwich',                50,      60,    2],
       ['glucose',                 15,      60,    2],
       ['tin',                     68,      45,    3],
       ['banana',                  27,      60,    3],
       ['apple',                   39,      40,    3],
       ['cheese',                  23,      30,    1],
       ['beer',                    52,      10,    3],
       ['suntancream',             11,      70,    1],
       ['camera',                  32,      30,    1],
       ['T-shirt',                 24,      15,    2],
       ['trousers',                48,      10,    2],
       ['umbrella',                73,      40,    1],
       ['waterproof trousers',     42,      70,    1],
       ['waterproof overclothes',  43,      75,    1],
       ['note-case',               22,      80,    1],
       ['sunglasses',              7,       20,    1],
       ['towel',                   18,      12,    2],
       ['socks',                   4,       50,    1],
       ['book',                    30,      10,    2]]).
:- initialization(go).
%-------------------------------- 148 hakank_swi_knapsack_rosetta_code_unbounded
/*

  Knapsack problem in SWI Prolog

  From 
  http://rosettacode.org/wiki/Knapsack_problem/Unbounded
  """
  A traveller gets diverted and has to make an unscheduled stop in
  what turns out to be Shangri La. Opting to leave, he is allowed 
  to take as much as he likes of the following items, so long as 
  it will fit in his knapsack, and he can carry it. He knows that 
  he can carry no more than 25 'weights' in total; and that the 
  capacity of his knapsack is 0.25 'cubic lengths'.

  Looking just above the bar codes on the items he finds their 
  weights and volumes. He digs out his recent copy of a financial 
  paper and gets the value of each item.

  Item               Explanation	    Value (each) weight	Volume (each)
  panacea (vials of) Incredible 	    3000         0.3     0.025
                     healing properties
  ichor (ampules of) Vampires blood	    1800	 0.2     0.015
  gold (bars)        Shiney shiney	    2500	 2.0     0.002
  Knapsack	     For the carrying of    -           <=25     <=0.25 

  He can only take whole units of any item, but there is much  
  more of any item than he could ever carry

  How many of each item does he take to maximise the value of items  
  he is carrying away with him?

  Note: There are four solutions that maximise the value taken. 
  Only one need be given. 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        Names   = [panacea,ichor,gold ],
        Values  = [ 3000, 1800, 2500 ],
        Weights = [    3,    2,    2 ], % multiply with 10
        Volumes = [   25,   15,    2 ], % multiply with 100

        length(Values, Len),

        % 
        % Variables
        % 
        length(X,Len),
        X ins 0..1000,

        %
        % Constraints
        %         
        scalar_product(Weights,X,#=,TotalWeight),
        scalar_product(Values,X,#=,TotalValue),
        scalar_product(Volumes,X,#=,TotalVolume),
        TotalWeight #=< 250, % multiply with 10
        TotalVolume #=< 250, % multiply with 1000


        %
        % Search
        %
        flatten([X,TotalWeight,TotalVolume],Vars),
        labeling([down,max(TotalValue)],Vars), 

        %
        % Solutions
        % 
        writeln(x:X),
        writeln("\nThese are the items to pick:"),
        findall([Name,Pick,Weight,Value,Volume],
                (between(1,Len,I),
                 nth1(I,X,Pick),
                 Pick #> 0,
                 nth1(I,Names,Name),
                 nth1(I,Weights,Weight),
                 nth1(I,Values,Value),
                 nth1(I,Volumes,Volume)
                ),
                Sol
               ),
        maplist(writeln,Sol),
        nl,
        writeln(total_value:TotalValue),
        writeln(total_weight:TotalWeight),
        writeln(total_volume:TotalVolume).
:- initialization(go).
%-------------------------------------------- 149 hakank_swi_knight_tour_circuit
/*

  Knight tour problem using circuit/1 in SWI Prolog

  This model implements a knight tour for NxN matrices (where N*N is even)
  using circuit/1.
  
  Note: N must be even to be able to use circuit/1 since every move must alternate 
  between a black and white square.
  When N is odd (and thus N*N is odd) then there is one more black (or white)
  square which makes this impossible.
  
  Adding support for non square matrices as well when Rows*Cols are left as an
  exercise. See my Picat model http://hakank.org/picat/knight_tour_circuit.pl for
  inspiration...

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
        N = 16,
        time(once(run_tour(N))),
        nl.

go2 :-
        between(2,2,40,N),
        writeln(n=N),
        time(once(run_tour(N))),
        fail,
        nl.

go2.

%%
%% wrapper for running and printing
%%
run_tour(N) :-
        knight(N,X),
        % writeln("X:"),
        % print_matrix2(X),        
        extract_tour(X,Tour),
        writeln("Tour:"),
        print_matrix2(Tour),
        nl.



%%
%% knight(N,X) 
%%
%% Find a "circuit matrix" basis for a knight tour of a NxN matrix
%% Note: This is NOT the tour. We must convert
%% it to a tour with extract_tour/2.
%% 
knight(N, X) :-
        (N mod 2 #= 1
        ->
         writeln("N must be even. Sorry about that.")
         ;
         true
         ),
        N2 #= N*N,
        new_matrix(N,N,1..N2,X),
        flatten(X,XVars),

        %% restrict the domains of each square
        findall([I,J],
                (between(1,N,I),
                 between(1,N,J)
                ),
                IJs),
        maplist(restrict_domains(X,N,N),IJs),

        circuit(XVars),

        labeling([ffc],XVars).



%%
%% extract the knight tour from the "circuit matrix" X
%%
extract_tour(X, Tour) :-
        length(X, N),
        N2 #= N*N,
        new_matrix(N,N,1..N2,Tour),
        matrix_element(Tour,1,1,1),
        Next #= 1,
        extract_tour_(1,N,Next,X,Tour),
        nl.

/*
  Next = X[1,1],
  I = 1+((Next-1) div Rows),
  J = 1+((Next-1) mod Cols)
  Tour[I,J] := K,
  Next := X[I,J]
*/
extract_tour_(K,N,_Next,_X,_Tour) :- K #> N*N .
extract_tour_(K,N,Next,X,Tour) :-
        % calculate the new I and J values given Next
        I2 #= 1+((Next-1) div N),
        J2 #= 1+((Next-1) mod N),
        %% Tour[I2,J2] = K
        matrix_element(Tour,I2,J2,K),
        % Calculate the next K to check
        matrix_element(X,I2,J2,NextK),
        K2 #= K+1,
        extract_tour_(K2,N,NextK,X,Tour).
        

print_matrix2(X) :-
        maplist(print_row,X),
        nl.

print_row(Row) :-
        maplist(format("~w "),Row),
        nl.


/*
  foreach(I in 1..Rows, J in 1..Cols)
     D = [-1,-2,1,2],
     Dom = [ (I+A-1)*Cols + J+B : A in D, B in D, 
              abs(A) + abs(B) == 3, member(I+A,1..Rows), member(J+B,1..Cols)],
     Dom.len > 0,
     X[I,J] :: Dom
  end,
*/
restrict_domains(X,Rows,Cols,[I,J]) :-
        D = [-1,-2,1,2],

        findall(T,
                (member(A,D),
                 member(B,D),
                 abs(A) + abs(B) #= 3,
                 IA #= I+A,
                 JB #= J+B,
                 IA #>= 1,
                 IA #=< Rows,
                 JB #>= 1,
                 JB #=< Cols,
                 T #= (I+A-1)*Cols + J+B
                ),
                Dom),
        matrix_element(X,I,J,XIJ),
        list_domain_disjunction(Dom,DomDisj),
        XIJ in DomDisj.

:- initialization(go).
%--------------------------------------------------- 150 hakank_swi_labeled_dice
/*

  Labeled dice and Building blocks problems in SWI Prolog

  Labeled dice
  --------------
  From Jim Orlin "Colored letters, labeled dice: a logic puzzle"
  http://jimorlin.wordpress.com/2009/02/17/colored-letters-labeled-dice-a-logic-puzzle/
  """
  My daughter Jenn bough a puzzle book, and showed me a cute puzzle.  There 
  are 13 words as follows:  BUOY, CAVE, CELT, FLUB, FORK, HEMP, JUDY, 
  JUNK, LIMN, QUIP, SWAG, VISA, WISH.

  There are 24 different letters that appear in the 13 words.  The question 
  is:  can one assign the 24 letters to 4 different cubes so that the 
  four letters of each word appears on different cubes.  (There is one 
  letter from each word on each cube.)  It might be fun for you to try 
  it.  I'll give a small hint at the end of this post. The puzzle was 
  created by Humphrey Dudley.
  """

  Building blocks
  ---------------
  From http://brownbuffalo.sourceforge.net/BuildingBlocksClues.html
  """
  Each of four alphabet blocks has a single letter of the alphabet on each 
  of its six sides. In all, the four blocks contain every letter but 
  Q and Z. By arranging the blocks in various ways, you can spell all of 
  the words listed below. Can you figure out how the letters are arranged 
  on the four blocks?

  BAKE ONYX ECHO OVAL
  GIRD SMUG JUMP TORN
  LUCK VINY LUSH WRAP
  """

  Note: This is a somewhat generalized model for solving both 
        Building blocks and Labeled Dice problems. 


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        go(labeling_dice),
        nl,
        go(building_blocks),
        nl.


go(Problem) :-
        findall(Res,solveit(Problem, Res),L),
        length(L,Len),
        format("It was ~d solutions for problem ~w.~n", [Len,Problem]).


solveit(Problem,Res) :-

   format("~nProblem ~w~n", Problem),
   problem(Problem, NumCubes, NumSides, Letters, Words),


   % Convert the letters to integers so we can use ic

   %% create the integer array
   %% LettersInt = [I : I in 1..Letters.length],
   length(Letters,LettersLength),
   numlist(1,LettersLength,LettersInt),
   
   length(Words,NumWords),
   length(WordsIC,NumWords),

   %%
   %% Convert each word to an integer representation (a=1, b=2, etc).
   %%
   convert_words(Words,WordsIC,Letters,LettersInt),

   CubeLen #= NumCubes * NumSides,
   length(Cube,CubeLen),
   Cube ins 1..NumCubes,

   % each letters in a word must be on a different die
   maplist(letters_on_different_dice(Cube),WordsIC),
   
   
   %% there must be exactly NumSides (6) letters of each die
   findall(I-NumSides,between(1,NumCubes,I),GCC),
   global_cardinality(Cube, GCC),
   
   % simple symmetry breaking: place first letter on cube 1
   element(1,Cube,1),

   % search
   labeling([ffc],Cube),

   writeln("\nSolution:"),
   writeln(cube=Cube),

   %%
   %% pretty print of the solution
   %%
   
   % Letters placed
   % Res = [[L,D]  : I in 1..CubeLen, double_index(Cube,Letters, I,D,L)],
   findall([L,C],(between(1,CubeLen,I),
                nth1(I,Cube,C),
                nth1(I,Letters,L)
               ),
           Res),
   format("Letters placed on which cube: ~w~n", [Res]),

   writeln("\nThe words placed on which cube ([letter:cube]):"),
   findall([Word,WC],(member(Word,Words),
                  findall([W,C],
                          (member(W,Word),
                           double_index(Cube,Letters,_Ix, C,W)
                           ),
                          WC)
                 ),
          CubeWords
          ),
   maplist(writeln,CubeWords),
   
   %% print the cubes
   writeln("\nThe Cubes:"),
   findall([C,Lss],
           (between(1,NumCubes,C),
            findall(L,
                    member([L,C],Res),
                    Lss
                   )
            ),
           TheCubes
          ),
   maplist(writeln,TheCubes),
   nl.

%%
%% each letters in a word must be on a different die
%%
letters_on_different_dice(Cube,WordICs) :-
        extract_from_indices(WordICs,Cube,CubeIx),
        all_different(CubeIx).

%%
%% Lookup a value given an index and/or some value Val1 or Val2
%%
double_index(List1,List2,Ix,Val1,Val2) :-
        nth1(Ix, List1, Val1),
        nth1(Ix, List2, Val2).
    
% convert the matrix of letters (Words) to a matrix of integers.
convert_words(Words,WordsIC,Letters,LettersInt) :-
        maplist(convert_word(Letters,LettersInt),Words,WordsIC).

convert_word(Letters,LettersInt,Word,WordIC) :-
        maplist(convert_char(Letters,LettersInt),Word,WordIC).

convert_char(Letters,LettersInt,Char,CharIC) :-
        double_index(Letters, LettersInt,_Ix,Char,CharIC).

       

%
% Labeling Dice
% 
problem(labeling_dice, N, S, Letters, Words) :- 
        % number of cubes
        N = 4,  
        % number of sides of of a cube
        S = 6,  
        % the letters to use
        Letters = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,y], 
        % the words to place
        Words = [[b,u,o,y],               
                 [c,a,v,e], 
                 [c,e,l,t], 
                 [f,l,u,b], 
                 [f,o,r,k], 
                 [h,e,m,p], 
                 [j,u,d,y], 
                 [j,u,n,k], 
                 [l,i,m,n], 
                 [q,u,i,p], 
                 [s,w,a,g], 
                 [v,i,s,a], 
                 [w,i,s,h]].


%
% Building Blocks
%   From http://brownbuffalo.sourceforge.net/BuildingBlocksClues.html
%   """
%   Each of four alphabet blocks has a single letter of the alphabet on each 
%   of its six sides. In all, the four blocks contain every letter but 
%   Q and Z. By arranging the blocks in various ways, you can spell all of 
%   the words listed below. Can you figure out how the letters are arranged 
%   on the four blocks?
%
%   BAKE ONYX ECHO OVAL
%   GIRD SMUG JUMP TORN 
%   LUCK VINY LUSH WRAP
%   """
problem(building_blocks, N, S, Letters, Words) :-
        N = 4,
        S = 6,
        Letters = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,r,s,t,u,v,w,x,y],
        Words = [[b,a,k,e],
                 [o,n,y,x],
                 [e,c,h,o],
                 [o,v,a,l],
                 [g,i,r,d],
                 [s,m,u,g],
                 [j,u,m,p],
                 [t,o,r,n],
                 [l,u,c,k],
                 [v,i,n,y],
                 [l,u,s,h],
                 [w,r,a,p]].
:- initialization(go).
%------------------------------------------------------- 151 hakank_swi_langford
/*

  Langford's number problem L(2,N) in SWI Prolog

  Langford's number problem (CSP lib problem 24)
  http://www.csplib.org/prob/prob024/
  """
  Arrange 2 sets of positive integers 1..k to a sequence,
  such that, following the first occurence of an integer i, 
  each subsequent occurrence of i, appears i+1 indices later
  than the last. 
  For example, for k=4, a solution would be 41312432
  """
  
  * John E. Miller: Langford's Problem
    http://www.lclark.edu/~miller/langford.html
  
  * Encyclopedia of Integer Sequences for the number of solutions for each k
    http://www.research.att.com/cgi-bin/access.cgi/as/njas/sequences/eisA.cgi?Anum=014552


  Note: For k=4 there are two different solutions:
     solution:[4,1,3,1,2,4,3,2]
     position:[2,5,3,1,4,8,7,6]
  and
     solution:[2,3,4,2,1,3,1,4]
     position:[5,1,2,3,7,4,6,8]

  With this symmetry breaking

     Solution[1] < Solution[K2],

  then just the second solution is shown.

  Note: There are only solutions when K mod 4 == 0 or K mod 4 == 3.
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Solution of K=4 (see above).
%%
go :-
    K = 4,
    format("K: ~d~n", K),
    time(langford(K, Solution, Position)),
    format("Solution: ~w~n", [Solution]),
    format("Position: ~w~n", [Position]),
    nl.

%%
%% Get the first (if any) solutions for K in 2..40
%%
go2 :- 
        between(2,60,K),
        format("K: ~d\n", [K]),
        ( time(langford(K, Solution, _Position))
        -> 
          (
           nonvar(Solution)
          -> 
           format("Solution: ~w ~n", [Solution])
          ;
            writeln("No solution")
         )
        ;
          writeln("")
        ),
        nl,
        fail,
        nl.

go2.


%%
%% Count the number of solutions
%%
go3 :- 
        between(2,11,K),
        format("k: ~d~n",[K]),        
        time(findall(1, langford(K, _Solution, _Position), L)),
        length(L,Len),
        format("K: ~d = ~d solutions~n~n", [K, Len]),
        fail,
        nl.

go3.

 
langford(K, Solution, Position) :-

        ( \+ ((K mod 4 #= 0; K mod 4 #= 3))
        -> 
          writeln("There is no solution for K unless K mod 4 == 0 or K mod 4 == 3"),
          fail
        ;
          true
        ),
        
        K2 #= 2*K,
        length(Position,K2),
        Position ins 1..K2,
        
        length(Solution,K2),
        Solution ins 1..K,
        
        all_distinct(Position),

        % symmetry breaking:
        element(1,Solution,Solution1),
        element(K2,Solution,SolutionK2),
        Solution1 #< SolutionK2,

        % main constraints
        numlist(1,K,Is),
        maplist(langford_constraints2(K,Position,Solution),Is),
        
        append(Solution,Position,Vars),
        labeling([ff,enum], Vars).

%% for maplist
langford_constraints2(K,Position,Solution,I) :-
        KI #= K+I,
        element(KI, Position,PositionKI),
        element(I, Position,PositionI),
        I1 #= I+1,
        PositionKI #= PositionI + I1,
        element(I,Position,PositionI),
        element(PositionI,Solution,I), 
        element(PositionKI,Solution,I).

:- initialization(go).
%---------------------------------------- 152 hakank_swi_latin_squares_diagonals
/*

  Latin squares with diagonals in SWI Prolog

  Inspired by Eric Taucher's post
  "Latin squares" in the SWI-Prolog forum
  https://swi-prolog.discourse.group/t/latin-squares/5056

  Here is explaination of plain Latin squares.
  http://en.wikipedia.org/wiki/Latin_square:
  """
  A Latin square is an n X n table filled with n different symbols in
  such a way that each symbol occurs exactly once in each row and
  exactly once in each column. 
  """

  This variant also includes constraints that the two diagonals must
  be distinct.

  
  Here is a general model that count the number of solutions for N <= 6
  fairly fast.
  
  
  N  #sols  time/1
  -------------------------------------------------------------------------------
  1      1           1,972 inferences,  0.000 CPU in  0.000 seconds (100% CPU, 7287805 Lips)
  2      0           8,094 inferences,  0.001 CPU in  0.001 seconds (100% CPU, 11839322 Lips
  3      0          22,259 inferences,  0.001 CPU in  0.001 seconds (100% CPU, 15460076 Lips)
  4     48         205,097 inferences,  0.010 CPU in  0.010 seconds (100% CPU, 21095143 Lips)
  5    960       4,728,770 inferences,  0.204 CPU in  0.204 seconds (100% CPU, 23172521 Lips)
  6  92160   1,339,542,123 inferences, 59.874 CPU in 59.874 seconds (100% CPU, 22372698 Lips)

  My Picat program (http://hakank.org/picat/latin_squares_diagonals.pi)
  solves N=7 in 1 hour (it solves N=6 in 0.5s):
  N  #sols
  ----------------------
  7  862848000


  Also see: https://oeis.org/A274806
  Here are the counts from 1..8:
  1, 0, 0, 48, 960, 92160, 862848000, 300286741708800

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

/*
   The following predicates are defined in http://hakank.org/swi_prolog/hakank_utils.py
   - new_matrix/4
   - diagonal1_slice/2
   - diagonal2_slice/2
   - print_matrix/1
  
*/

%
% Show all solutions for N=4.
% 
go :-
        N = 4,
        new_matrix(N,N,1..N,X),
        latin_square_diagonals(X),
        flatten(X,Vars),
        labeling([ffc,up,bisect],Vars),
        print_matrix(X),
        fail,
        nl.
go.

%
% Find and count the number of solutions for N=6.
%
go2 :-
        N = 6,
        new_matrix(N,N,1..N,X),
        time(findall(X,(latin_square_diagonals(X),
                        flatten(X,Vars),
                        labeling([ffc,up,step],Vars)),L)),
        length(L,Len),
        writeln(len=Len),

        nl.
go2.

%
% latin_square_diagonal(X)
% 
% Ensure that X is a Latin square as well as the
% constraints that the two diagonals should be distinct.
%
latin_square_diagonals(X) :-
        maplist(all_different,X),
        
        transpose(X,XT),
        maplist(all_different,XT),
        
        diagonal1_slice(X,Slice1),
        all_different(Slice1),
        
        diagonal2_slice(X,Slice2),
        all_different(Slice2).
:- initialization(go).
%----------------------------------------------------- 153 hakank_swi_least_diff
/*

  Least diff problem in SWI Prolog

  The model solves the following problem:
  
  What is the smallest difference between two numbers X - Y
  if you must use all the digits (0..9) exactly once, i.e.
  Minimize the difference 
    ABCDE - FGHIJ


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
        time(once(least_diff(L, Diff))),
        writeln(L),
        writeln(Diff),
        
        % Alternative approach
        time(once(least_diff2(L2, Diff2))),
        writeln(L2),
        writeln(Diff2),
        nl.

%
% "Standard" alphametic approach.
% 
least_diff(L,Diff) :-
        L = [A,B,C,D,E,  F,G,H,I,J],
        L ins 0..9,
        
        all_distinct(L),
        
        X #= 10000*A + 1000*B + 100*C + 10*D + E,
        Y #= 10000*F + 1000*G + 100*H + 10*I + J,
        
        Diff #= X - Y,
        Diff #> 0,
        labeling([enum, min(Diff)], L).


%
% Alternative version using scalar_product/4.
%
least_diff2(L,Diff) :-
        L = [A,B,C,D,E,  F,G,H,I,J],
        L ins 0..9,
        all_distinct(L),
        length(L, Len),
        M #= Len div 2,

        findall(T, (between(1,M,I), MI #= M-I, T #= 10^MI), Base),
        scalar_product(Base,[A,B,C,D,E], #=, X),
        scalar_product(Base,[F,G,H,I,J], #=, Y),
        
        Diff #= X - Y,
        Diff #> 0,
        labeling([min(Diff)], L).

:- initialization(go).
%------------------------------------------------- 154 hakank_swi_lecture_series
/*

  Lecture series puzzle (Dell Logic Puzzles) in SWI Prolog

  From http://brownbuffalo.sourceforge.net/LectureSeriesClues.html
  """
  Title: Lecture Series
  Author: Alex Knight
  Publication: Dell Logic Puzzles
  Issue: April, 1998
  Page: 10
  Stars: 2

  Last week at school was made varied by a series of lectures, one
  each day 
   (Monday through Friday), 
  in the auditorium. None of the lectures was particularly 
  interesting 
     (on choosing a college, physical hygiene, modern art, nutrition, 
     and study habits), 
   but the students figured that anything that got them out of fourth 
   period was okay. The lecturers were 
       two women named Alice and Bernadette, and three men 
       named Charles, Duane, and Eddie; 
   last names were 
       Felicidad, Garber, Haller, Itakura, and Jeffreys. 
   Can you find each day's lecturer and subject?

  1. Alice lectured on Monday.
  2. Charles's lecture on physical hygiene wasn't given on Friday.
  3. Dietician Jeffreys gave the lecture on nutrition.
  4. A man gave the lecture on modern art.
  5. Ms. Itakura and the lecturer on proper study habits spoke on 
     consecutive days, in one order or the other.
  6. Haller gave a lecture sometime after Eddie did.
  7. Duane Felicidad gave his lecture sometime before the modern art lecture. 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        N = 5,
        
        Monday = 1,
        Tuesday = 2,
        Wednesday = 3,
        Thursday = 4,
        Friday = 5,
        Days = [Monday,Tuesday,Wednesday,Thursday,Friday],
        DaysS = ["Monday","Tuesday","Wednesday","Thursday","Friday"],
        
        Lectures = [_ChoosingCollege, PhysicalHygiene, ModernArt, Nutrition, 
                    StudyHabits],
        LecturesS = ["Choosing College", "Physical Hygiene", "Modern Art", "Nutrition", 
                     "Study Habits"],
        Lectures ins 1..N,

        FirstName = [Alice, Bernadette, Charles, Duane, Eddie],
        FirstNameS = ["Alice", "Bernadette", "Charles", "Duane", "Eddie"],
        FirstName ins 1..N,

        LastName  = [Felicidad, _Garber, Haller, Itakura, Jeffreys],
        LastNameS = ["Felicidad", "Garber", "Haller", "Itakura", "Jeffreys"],
        LastName ins 1..N,

        all_different(Lectures),
        all_different(FirstName),
        all_different(LastName),


        %% 1. Alice lectured on Monday.
        Alice #= Monday,

        %% 2. Charles"s lecture on physical hygiene wasn"t given on
        %% Friday.
        Charles #= PhysicalHygiene,
        Charles #\= Friday,
        PhysicalHygiene #\= Friday,

        %% 3. Dietician Jeffreys gave the lecture on nutrition.
        Jeffreys #= Nutrition,

        %% 4. A man gave the lecture on modern art.
        (
         ModernArt #= Charles 
        #\/ 
        ModernArt #= Duane   
        #\/
        ModernArt #= Eddie
        ),

        %% 5. Ms. Itakura and the lecturer on proper study habits spoke on 
        %%    consecutive days, in one order or the other.
        (
         Itakura #= Alice 
        #\/ 
        Itakura #= Bernadette
        ),
        abs(Itakura - StudyHabits) #= 1,
        
        %% 6. Haller gave a lecture sometime after Eddie did.
        Haller #> Eddie,

        %% 7. Duane Felicidad gave his lecture sometime before the
        %%    modern art lecture. 
        Duane #= Felicidad,
        Duane #< ModernArt,
        Felicidad #< ModernArt,

        %% search
        flatten([Lectures, FirstName, LastName],Vars),
        labeling([], Vars),

        %% print solution
        pretty_print(Days,DaysS),
        pretty_print(FirstName,FirstNameS),
        pretty_print(LastName,LastNameS),
        pretty_print(Lectures,LecturesS),
        nl.

%%
%% Pretty print solution
%%
pretty_print(X,S) :-
        length(X,Len),
        findall(E,
                (
                 between(1,Len,I),
                 nth1(J,X,I),
                 nth1(J,S,E)
                ),
                Sol),
        format("~t~w~17|~t~w~30|~t~w~42|~t~w~58|~t~w~74|~n",Sol).

:- initialization(go).
%------------------------------------------------------- 155 hakank_swi_lectures
/*

  Lectures problem in SWI Prolog

  Biggs: Discrete Mathematics (2nd ed), page 187.
  """   
  Suppose we wish to schedule six one-hour lectures, v1, v2, v3, v4, v5, v6.
  Among the the potential audience there are people who wish to hear both
 
   - v1 and v2
   - v1 and v4
   - v3 and v5
   - v2 and v6
   - v4 and v5
   - v5 and v6
   - v1 and v6
 
  How many hours are necessary in order that the lectures can be given
  without clashes?
  """    


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   g(Graph),
   length(Graph,N),   % number of lectures (nodes)

   MaxC in 1..N,
   length(V,N),
   V ins 1..N,

   max_list_clp(V,MaxC),
   maplist(constraint(V),Graph),
   
   % symmetry breaking: 
   % v1 has the color 1, v2 has either color 1 or 2
   % (this should be enough for a general model)
   element(1,V,1),
   element(2,V,V2),
   V2 #=< 2,

   labeling([min(MaxC)], V),
   
   writeln(v=V),
   writeln(max_c=MaxC),
   nl.

constraint(V, [L1,L2]) :-
        element(L1,V,VL1),
        element(L2,V,VL2),        
        VL1 #\= VL2.


% The schedule requirements:
%   lecture a cannot be held at the same time as b
g(Graph) :-
        Graph = [[1, 2],
                 [1, 4],
                 [3, 5],
                 [2, 6],
                 [4, 5],
                 [5, 6],
                 [1, 6]].
:- initialization(go).
%----------------------------------------------------- 156 hakank_swi_light_meal
/*

  Light meal problem in SWI Prolog

  From A. Colmerauer: "An introduction to Prolog III", 1990]
  """
  [T]his is our first example of a Prolog III program. It is an 
  improvement on a program which is perhaps too well-known, but which 
  remains a useful pedagogical tool: the calculation of 
  well-balanced meals...

  LightMeal(h,m,d) ->
    HorsDoeuvre(h,i),
    MainCourse(m,j),
    Dessert(d,k),
    {i=0,j=0,k=0,i+j+k=10};

  MainCourse(m,i) -> Meat(m,i);
  MainCourse(m,i) -> Fish(m,i);

  HorsDoeuvre(radishes,1) ->;
  HorsDoeuvre(pâté,6) ->;

  Meat(beef,5) ->;
  Meat(pork,7) ->;

  Fish(sole,2) ->;
  Fish(tuna,4) ->;

  Dessert(fruit,2) ->;
  Dessert(icecream,6) ->; 
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
  lightmeal(A,AC,M,MC,D,DC,Cal),
  writeln(horsdoevre=[A,AC]),
  writeln(maincourse=[M,MC]),
  writeln(dessert=[D,DC]),
  writeln(cal=Cal),
  nl,
  fail,  

  nl.

go.

go2 :-
  balanced_meal(E,P,D,V),
  writeln([E,P,D,cal=V]),

  fail,
  
  nl.

go2.


lightmeal(A, AC, M, MC, D, DC,Cal) :-
        horsdoevre(A,AC),
        maincourse(M,MC),
        dessert(D, DC),
        AC #> 0, MC #> 0, DC #> 0,
        Cal #= AC+MC+DC,
        Cal #=< 10.

maincourse(M,I) :-
        meat(M,I).
maincourse(M,I) :-
        fish(M,I).

horsdoevre(radishes, 1).
horsdoevre('pâté', 6).

meat(beef, 5).
meat(pork, 7).

fish(sole, 2).
fish(tuna,4).

dessert(fruit, 2).
dessert(icecream, 6).


hors_d_oeuvre(artichauts_melanie).
hors_d_oeuvre(truffes_sous_le_sel).
hors_d_oeuvre(cresson_oeuf_poche).

meat(grillade_de_boeuf).
meat(poulet_au_tilleul).

fish(bar_aux_algues).
fish(chapon_farci).

dessert(sorbet_aux_poires).
dessert(fraises_chantilly).
dessert(melon_en_surprise).

% "main-course"
main_course(P) :-
        meat(P).
main_course(P) :-
        fish(P).

% "composition of a meal"
meal(E,P,D) :-
        hors_d_oeuvre(E),
        main_course(P),
        dessert(D).

% "calorific value of a portion"
calories(artichauts_Melanie,150).
calories(cresson_oeuf_poche,202).
calories(truffes_sous_le_sel,212).
calories(grillade_de_boeuf,532).
calories(poulet_au_tilleul,400).
calories(bar_aux_algues,292).
calories(chapon_farci,254).
calories(sorbet_aux_poires,223).
calories(fraises_chantilly,289).
calories(melon_en_surprise,122).

% "calorific value of a meal"
value(E,P,D,V) :-
        calories(E,X),
        calories(P,Y),
        calories(D,Z),
        V #= X + Y + Z.

% "balanced meal"
balanced_meal(E,P,D,V) :-
        meal(E,P,D),
        value(E,P,D,V),
        V #< 800.

:- initialization(go).
%-------------------------------------------------- 157 hakank_swi_magic_hexagon
/*

  Magic hexagon in SWI Prolog

  Prob023: Magic Hexagon
  http://www.comp.rgu.ac.uk/staff/ha/ZCSP/prob023/prob023.pdf
  http://www.cse.unsw.edu.au/~tw/csplib/prob/prob023/



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        LD = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S],
        LD ins 1..19,

        all_different(LD),

        A + B + C #=  38,
        D + E + F + G #=  38,
        H + I + J + K + L #=  38, 
        M + N + O + P #=  38, 
        Q + R + S #=  38, 
        A + D + H #=  38, 
        B + E + I + M #=  38, 
        C + F + J + N + Q #=  38, 
        G + K + O + R #=  38, 
        L + P + S #=  38, 
        C + G + L #=  38, 
        B + F + K + P #=  38, 
        A + E + J + O + S #=  38, 
        D + I + N + R #=  38, 
        H + M + Q #=  38, 
        
        A #< C,
        A #< H,
        A #< L,
        A #< Q,
        A #< S,
        C #< H,
        
        labeling([ff], LD),

        writeln(LD),
        nl.

:- initialization(go).
%------------------------------------------------- 158 hakank_swi_magic_sequence
/*

  Magic sequence problem in SWI Prolog

  http://www.dcs.st-and.ac.uk/~ianm/CSPLib/prob/prob019/spec.html
  """
  A magic sequence of length n is a sequence of integers x0 . . xn-1 between 
  0 and n-1, such that for all i in 0 to n-1, the number i occurs exactly xi 
  times in the sequence. For instance, 6,2,1,0,0,0,1,0,0,0 is a magic sequence 
  since 0 occurs 6 times in it, 1 occurs twice, ...
  """

  This program implements:
  - a CLP model
  - some non-CLP "algorithmic" variants

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Magic sequence for N=10.
%%
go :-
        magic_sequence(10,Sequence),
        writeln(Sequence),
        nl.

%%
%% Test N in 4..40
%%
go2 :-
        between(4,40,N),
        (
         magic_sequence(N,Sequence)
        ->
         writeln(Sequence)
        ;
         writeln("No solution")
        ),
        nl,
        fail,
        nl.

go2.


%%
%% "Algorithmic" approach benchmark.
%%
%% Variant 1 is slightly faster than variant2.
%% The slow variant (using nth1/3) is _much_ slower.
%% Note: The CLP approach is even slower...
%%
% n:1000
% variant1: 0.000649s
% variant2: 0.000662s
% slow: 0.011812s
%
% n:10000
% variant1: 0.003742s
% variant2: 0.003768s
% slow: 0.942678s
%
% n:50000
% variant1: 0.020764s
% variant2: 0.019675s
% slow: 23.734367s
%
% n:100000
% variant1: 0.036137s
% variant2: 0.041753s
% slow: not run [about 92s]
%
% n:1000000
% variant1: 0.412016s
% variant2: 0.403703s
% slow: not run
%
% n:10000000
% variant1: 3.705814s
% variant2: 4.001884s
% slow: not run
%
go3 :-
        member(N, [1000,10_000,50_000,100_000,1_000_000,10_000_000]),
        writeln(n:N),
        
        time2(magic_sequence_no_cp(N,_Sequence1), Time1),
        format("variant1: ~fs~n", [Time1]),
        
        time2(magic_sequence_no_cp2(N,_Sequence2), Time2),
        format("variant2: ~fs~n", [Time2]),
        ( N #=< 50_000
        ->
          time2(magic_sequence_slow(N,_Sequence3), Time3),
          format("slow: ~fs~n", [Time3])
        ;
          format("slow: not run~n")
        ),
        garbage_collect,
        nl,
        fail,
        nl.

go3.


%%
%% Magic sequence. CLP approach.
%%
magic_sequence(N, Sequence) :-

        format("~n~d:~n",[N]),
        N1 #= N-1,

        length(Sequence,N),
        Sequence ins 0..N1,

        %% constraints
        sum(Sequence,#=,N),
        numlist(0,N1,Integers),
        scalar_product(Integers, Sequence, #=, N),

        %% Don't work
        % findall(I-S,(
        %              between(0,N1,I),
        %              I1 #= I+1,
        %              element(I1,Sequence,S)
        %              ),
        %         GC),
        numlist(0,N1,Is),
        gcc_ix(Is, Sequence,[], GC),
        global_cardinality(Sequence,GC),

        labeling([min,down,enum], Sequence).

%%
%% Create the pairs-list for global_cardinality/2
%%
gcc_ix([],_Sequence,GC,GC).
gcc_ix([I|Is],Sequence, GC0,[I-SI|GC]) :-
        I1 #= I+1,
        element(I1,Sequence,SI),
        gcc_ix(Is,Sequence,GC0,GC).
        

%%
%% Magic sequence, "algorithmic" approach.
%%
%%  case
%%    S[1] = N-4
%%    S[2] = 1
%%    S[3] = 1
%%    S[N-3] = 1
%%   else 
%%    S[I] = 0
%%
%%
%% Variant, slightly faster than magic_sequence_no_cp/2.
%%
magic_sequence_no_cp(N, Sequence) :-
        length(Sequence,N),
        N4 #= N-4,
        N3 #= N-3,
        Special = [1-N4, 2-2, 3-1, N3-1],
        numlist(1,N,Is),
        assign_sequence(Is,Special,[],Sequence).        

%%
%% Slightly slower than magic_sequence_no_cp/2.
%%
magic_sequence_no_cp2(N, Sequence) :-
        length(Sequence,N),
        N4 #= N-4,
        N3 #= N-3,
        Special = [1-N4, 2-2, 3-1, N3-1],
        findall(SS,
                (
                 between(1,N,I),
                 (
                  memberchk(I-S,Special)
                 ->
                  SS = S
                 ;
                  SS = 0
                 )
                 ),
                Sequence).


%%
%% Variant, very slow.
%%
magic_sequence_slow(N, Sequence) :-
        length(Sequence,N),
        N4 #= N-4,
        N3 #= N-3,
        Special = [1-N4, 2-2, 3-1, N3-1],
        numlist(1,N,Is),
        assign_sequence_slow(Is,Special,Sequence). % Much slower


%%
%% Helper for magic_sequence_no_cp/2.
%%
assign_sequence([],_Special,Sequence,Sequence).
assign_sequence([I|Is],Special,Sequence0,[T|Sequence]) :-
        (
         memberchk(I-S, Special)
        ->
         T = S
        ;
         T = 0
        ),
        assign_sequence(Is,Special,Sequence0,Sequence).

%%
%% Using nth1/3 is very slow. See timing under go3/0.
%%
assign_sequence_slow([],_Special,_Sequence).
assign_sequence_slow([I|Is],Special,Sequence) :-
        (
         memberchk(I-S, Special)
        ->
         T = S
        ;
         T = 0
        ),
        nth1(I,Sequence,T),
        assign_sequence_slow(Is,Special,Sequence).
:- initialization(go).
%--------------------------------------------------- 159 hakank_swi_magic_square
/*

  Magic squares in SWI Prolog

  https://en.wikipedia.org/wiki/Magic_square
  """
  In recreational mathematics and combinatorial design, a magic square[1] is a n × n
  square grid (where n is the number of cells on each side) filled with distinct positive
  integers in the range 1, 2, ...,n^2 such that each cell contains a different integer and
  the sum of the integers in each row, column and diagonal is equal.
  The sum is called the magic constant or magic sum of the magic square. A square grid with
  n cells on each side is said to have order n.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% Simple run
%
go :-
        N = 5,
        time(once(magic(N,Square))),
        print_matrix(Square),
        nl.

%%
%% All solutions.
%%
go2 :-
        N = 4,
        findall(Square,magic(N,Square),L),
        length(L,Len),
        format("Len: ~d~n",Len),
        nl.

%%
%% Time for first solution
%%
go3 :-
        between(1,6,N),
        time2(once(magic(N,Square)),Time),
        format("~d: ~f~n", [N,Time]),
        print_matrix(Square),
        nl,
        fail,
        nl.

go3.

magic(N,Square) :-

  format("N: ~d\n", [N]),
  NN #= N*N,
  Sum #= N*(NN+1)//2,% magical sum
  format("Sum = ~d\n", [Sum]),

  new_matrix(N,N,1..NN,Square),
  flatten(Square,Vars),
 
  all_distinct(Vars),

  maplist(sums(Sum),Square),
  transpose(Square,SquareT),
  maplist(sums(Sum),SquareT),

  
  % diagonal sums
  findall([I,I], between(1,N,I), IJs),
  extract_from_indices2d(IJs,Square,[], Diagonal1),
  sum(Diagonal1,#=, Sum),

  % diagonal 2 sum
  findall([I,NI1], (between(1,N,I), NI1 #= N-I+1), IJs2),
  extract_from_indices2d(IJs2,Square,[], Diagonal2),
  sum(Diagonal2,#=, Sum),

  %% Symmetry breaking
  matrix_element(Square,1,1,S11),
  matrix_element(Square,N,N,SNN),
  matrix_element(Square,N,1,SN1),
  matrix_element(Square,1,N,S1N),
  
  matrix_element(Square,1,2,S12),
  matrix_element(Square,2,1,S21),  

  % Symmetry breaking
  % S11 #< S1N,
  % S11 #< SN1,  
  % S11 #< SNN,
  % S1N #< SN1,

  %% Symmetry breaking, Frenicle form
  min_list_clp([S11,S1N,SN1,SNN], S11),
  S12 #< S21,
  
  labeling([ffc,up,enum],Vars).

%%
%% sum a row/column (for maplist/2)
%%
sums(Sum,L) :-
        sum(L,#=,Sum).

:- initialization(go).
%----------------------------------------- 160 hakank_swi_magic_square_and_cards
/*

  Magic squares and cards in SWI Prolog

  Martin Gardner (July 1971)
  """
  Allowing duplicates values, what is the largest constant sum for an order-3
  magic square that can be formed with nine cards from the deck.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        N = 3,
        new_matrix(N,N,1..13,X),
        flatten(X,Vars),
        
        Ss #= 13*4,
        S in 0..Ss,            % the sum

        %% there are 4 cards of each value in a deck
        %% with max 4 occurrences
        findall(I,between(1,13,I),Is),
        maplist(atmost(4,Vars),Is),
   
        %% the standard magic square constraints (sans all_different)
        maplist(sums(S),X),
        transpose(X,XT),
        maplist(sums(S),XT),

        diagonal1_slice(X,Diagonal1),
        sum(Diagonal1,#=,S),

        diagonal2_slice(X,Diagonal2),
        sum(Diagonal2,#=,S),


        flatten([Vars,S],Vars2),
        labeling([ff,enum,max(S)], Vars2),
        
        writeln(s=S),
        maplist(writeln,X),

        nl.

%%
%% sum a row/column (for maplist/2)
%%
sums(Sum,L) :-
        sum(L,#=,Sum).

:- initialization(go).
%------------------------------------------------------ 161 hakank_swi_mamas_age
/*

  Mamas age problem in SWI Prolog

  Mamma's Age from "Amusements in Mathematics, Dudeney", number 40.
  """
  Tommy: "How old are you, mamma?"
  Mamma: "Our three ages add up to exactly seventy years."
  Tommy: "And how old are you, papa?"
  Papa: "Just six times as old as you, my son."
  Tommy: "Shall I ever be half as old as you, papa?"
  Papa: "Yes, Tommy; and when that happens our three ages will add up to
  exactly twice as much as today."
  
  Can you find the age of Mamma?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go:-
        mama([M,P,T]),
        % Convert months to years.
        MA is M // 12,
        PA is P // 12,
        TA is T // 12,
        writeln([mama:M=MA,papa:P=PA,tommy:T=TA]),
        fail,
        nl.

mama(LD) :-
        LD = [M,P,T],
        LD ins 0..500, % in months
        M + P + T #= 70 * 12,
        6 * T #= P,
        (T + I) * 2 #= P + I,
        M + I + P + I + T + I #= 2 * (M + P + T),
        
        label(LD).
        

:- initialization(go).
%-------------------------------------------------------- 162 hakank_swi_mankell
/*

  Generating all spellings of Henning Mankell (and Kjellerstrand) in SWI Prolog

  This is a recuring problem for me: Generating "all" possible
  spellings of Henning Mankell, and Kjellerstrand given a grammar (or
  regular expression).

  I have written about this before:
  - Regular expressions in Gecode
    http://www.hakank.org/constraint_programming_blog/2009/04/regular_expressions_in_gecode.html
    This blog post contains further links and references.

  - Icon program for the Henning Mankell problem:
    http://www.hakank.org/unicon/pattern_generation.icn



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

go :-
        writeln("Mankell"),
        mankell,
        nl,
        writeln("Kjellerstrand"),
        kjellerstrand,
        nl,
        writeln("Kjellerstrand2"),
        kjellerstrand2,
        nl.

%
% The Henning Mankell problem.
%
% Given this regular expression, generate all the
% possible spellings:
%  [hm][ea](nk|n|nn)(ing|ell|all)
% 
smankell --> hm, ea, nknnm, ingellall.
hm --> [h].
hm --> [m].
ea --> [e].
ea --> [a].
nknnm --> [nk].
nknnm --> [n].
nknnm --> [nn].
ingellall --> [ing].
ingellall --> [ell].
ingellall --> [all].


mankell :-
        showall(smankell).

%
% This regular expression is for (most of) the misspellings
% of my last name, which actually is Kjellerstrand.
%
%    k(je|ä)ll(er|ar)?(st|b)r?an?d 
%

% This is more like the original regular expression. And that may be
% good or bad...
skjellerstrand --> 
        [k], ([je]|["ä"]), [ll], ([] | [er] | [ar]), 
        ([st] | [b]),
        ([] | [r]), [a], ([] | [n]), [d].

kjellerstrand :-
        showall(skjellerstrand).


%
% Alternative version.
%
skjellerstrand2 --> [k], je, [ll], erar, stb, r_star, [a], n_star, [d].
je      --> [je] | ["ä"].
erar    --> [] | [er] | [ar].
stb     --> [st] | [b].
r_star  --> [] | [r].
n_star  --> [] | [n].
d       --> [d]. 


kjellerstrand2 :-
        showall(skjellerstrand2).


%
% show all the generated names for the grammar Grammar.
% 
showall(Grammar) :-
        findall(S, (phrase(Grammar, X),atomics_to_string(X,S)), L),
        length(L, Len),
        writeln(len=Len),
        maplist(writeln,L),
        nl.
:- initialization(go).
%--------------------------------------------------- 163 hakank_swi_map_coloring
/*

  Map coloring in SWI Prolog

  Simple map coloring problem of belgium, denmark, france, germany, netherlands, and
  luxembourg.
  go2/0 is an optimization problem.
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Plain coloring
%%
go :-
        connections(Connections), 
        NumColors = 4,
        map_color(Connections, Countries, NumColors),
        writeln(coloring=Countries),

        findall(Countries2, map_color(Connections, Countries2, NumColors),All),
        length(All,Len),
        format("It was ~d different solutions using ~d colors:\n", [Len,NumColors]),
        writeln(All).


%%
%% optimize the number of used colors
%%
go2 :-
        connections(Connections), 
        NumColors = 15,
        map_color2(Connections, Countries, NumColors, MinColors),
        writeln(Countries),
        format("We used ~d colors\n", [MinColors]).

%%
%% Simple coloring.
%%
map_color(Connections, Countries, NumColors) :-

        length(Connections,N),
        length(Countries,N),
        Countries ins 1..NumColors,
        
        findall([A,B], (between(1,N,A),
                        between(1,A,B),
                        nth1(A,Connections,Conn),
                        nth1(B,Conn,1)
                       ),
                ABs),
        maplist(not_same_color(Countries),ABs),
        
        %% symmetry breaking
        element(1,Countries,1),
        element(2,Countries,C2),
        C2 #=< 2,

        label(Countries).

not_same_color(Countries,[A,B]) :-
        element(A,Countries,CA),
        element(B,Countries,CB),
        CA #\= CB.

%%
%% Optimization: minimize the number of colors needed.
%%
map_color2(Connections, Countries, NumColors, MinColors) :-

        length(Connections,N),
        
        length(Countries,N),
        Countries ins 1..NumColors,
        MinColors in 1..NumColors, %% to optimize

        %% minimize the max number of color
        max_list_clp(Countries,MinColors),
        
        findall([A,B], (between(1,N,A),
                        between(1,A,B),
                        nth1(A,Connections,Conn),
                        nth1(B,Conn,1)
                       ),
                ABs),
        maplist(not_same_color(Countries),ABs),
        
        %% symmetry breaking
        element(1,Countries,1),
        element(2,Countries,C2),
        C2 #=< 2,

        labeling([min(MinColors)], Countries).


%%
%% Connections between these countries:
%% [belgium, denmark, france, germany, netherlands, luxembourg]
connections(A) :- 
        A = [[0, 0, 1, 1, 1, 1],
             [0, 0, 0, 1, 0, 0],
             [1, 0, 0, 1, 1, 0],
             [1, 1, 1, 0, 1, 1],
             [1, 0, 1, 1, 0, 0],
             [1, 0, 0, 1, 0, 0]].
     


:- initialization(go).
%------------------------------------------------------ 164 hakank_swi_marathon2
/*

  Marathon puzzle in SWI Prolog

  From Xpress example
  http://www.dashoptimization.com/home/cgi-bin/example.pl?id=mosel_puzzle_5_3
  """
  Dominique, Ignace, Naren, Olivier, Philippe, and Pascal
  have arrived as the first six at the Paris marathon.
  Reconstruct their arrival order from the following
  information:
  a) Olivier has not arrived last
  b) Dominique, Pascal and Ignace have arrived before Naren
     and Olivier
  c) Dominique who was third last year has improved this year.
  d) Philippe is among the first four.
  e) Ignace has arrived neither in second nor third position.
  f) Pascal has beaten Naren by three positions.
  g) Neither Ignace nor Dominique are on the fourth position.
  
     (c) 2002 Dash Associates
    author: S. Heipcke, Mar. 2002
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   N = 6,
   Names = ["Dominique", "Ignace", "Naren", "Olivier", "Philippe", "Pascal"],
   Runners = [Dominique, Ignace, Naren, Olivier, Philippe, Pascal],
   Runners ins 1..6,

   all_different(Runners),
  
   % a: Olivier not last
   Olivier #\= N,

   % b: Dominique, Pascal and Ignace before Naren and Olivier
   Dominique  #< Naren,
   Dominique  #< Olivier,
   Pascal     #< Naren,
   Pascal     #< Olivier,
   Ignace     #< Naren,
   Ignace     #< Olivier,
   
   % c: Dominique better than third
   Dominique  #< 3, 
   
   % d: Philippe is among the first four
   Philippe   #=< 4 ,
   
   % e: Ignace neither second nor third
   Ignace     #\= 2, 
   Ignace     #\= 3, 
   
   % f: Pascal three places earlier than Naren
   Pascal + 3 #= Naren, 
   
   % g: Neither Ignace nor Dominique on fourth position
   Ignace     #\= 4,
   Dominique  #\= 4,

   % For the presentation
   inverse(Runners, RunnersInv),

   label(Runners),

   format("runners   : ~w~n",[Runners]),
   format("assignment: ~w~n",[RunnersInv]),
   writeln("\nPlacings:\n"),
   findall([I-Name],
           (between(1,N,I),
            element(I,Runners,R),
            nth1(R,Names,Name)
           ),
           L),
   maplist(writeln,L),
   nl.
:- initialization(go).
%---------------------------------------------- 165 hakank_swi_max_flow_winston1
/*

  Maximum flow problem in SWI Prolog

  From Winston "Operations Research", page 420f, 423f
  Sunco Oil example.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        Cap =  [2,3,3,4,2,1,100],
        Arcs = [[1, 2],
                [1, 3],
                [2, 3],
                [2, 4],
                [3, 5],
                [4, 5],
                [5, 1]],
        max_flow(Arcs,Cap, Flow,Z),        
        writeln(z=Z),
        maplist(writeln,Flow),
        nl.

max_flow(Arcs,Cap, Flow,Z) :-
        flatten(Arcs,ArcsFlatten),
        max_list(ArcsFlatten,N),
        
        max_list(Cap,CapMax),
        new_matrix(N,N,0..CapMax,Flow),
        
        %% To minimize
        matrix_element(Flow,N,1,Z),
        
        %% Ensure that the flow in arcs are within the capacity
        %% foreach(I in 1..NumArcs) Flow[Arcs[I,1], Arcs[I,2]] #=< Cap[I] end,
        maplist(arcs_constraint(Flow),Arcs,Cap),

        %% Flow In #= Flow Out
        % foreach(I in Nodes)
        %   sum([Flow[Arcs[K,1], Arcs[K,2]] : K in 1..NumArcs,Arcs[K,1] == I])
        %   #=
        %   sum([Flow[Arcs[K,1], Arcs[K,2]] : K in 1..NumArcs,Arcs[K,2] == I])
        % end,
        numlist(1,N,Nodes),
        maplist(flow(Flow,Arcs),Nodes),

        flatten(Flow,Vars),
        labeling([max(Z)], Vars).
        

%%
%% Ensure that the flow in arcs are within the capacity
%%
arcs_constraint(Flow,[A1,A2],Cap) :-
        matrix_element(Flow,A1,A2,C),
        C #=< Cap.
        
%% Flow In #= Flow Out
% foreach(I in Nodes)
%   sum([Flow[Arcs[K,1], Arcs[K,2]] : K in 1..NumArcs,Arcs[K,1] == I])
%   #=
%   sum([Flow[Arcs[K,1], Arcs[K,2]] : K in 1..NumArcs,Arcs[K,2] == I])
% end,
flow(Flow,Arcs,I) :-
        sum_flow(Arcs,I,1,Flow,0,Flow1),
        sum_flow(Arcs,I,2,Flow,0,Flow2),
        Flow1 #= Flow2.

sum_flow([],_I,_Type,_Flow,Sum,Sum).
sum_flow([[Arc1,Arc2]|Arcs],I,Type,Flow,Sum0,Sum) :-
        B in 0..1,
        matrix_element(Flow,Arc1,Arc2,M),
        (
         % Arcs[K,1] == I
         Type == 1 -> 
         Arc1 #= I #<==> B #= 1
         ;
           % Arcs[K,2] == I
           Arc2 #= I #<==> B #= 1
         ),
        Sum1 #= Sum0 + B*M,
        sum_flow(Arcs,I,Type,Flow,Sum1,Sum).
:- initialization(go).
%---------------------------------------------------- 166 hakank_swi_minesweeper
/*

  Minesweeper solver in SWI Prolog

  From gecode/examples/minesweeper.cc:
  """
  A specification is a square matrix of characters. Alphanumeric
  characters represent the number of mines adjacent to that field. 
  Dots represent fields with an unknown number of mines adjacent to 
  it (or an actual mine).
  """
  
  E.g.
       "..2.3."
       "2....."
       "..24.3"
       "1.34.."
       ".....3"
       ".3.3.."
  """
  
  Also see:
  * http://www.janko.at/Raetsel/Minesweeper/index.htm

  * http://en.wikipedia.org/wiki/Minesweeper_(computer_game)
 
  * Ian Stewart on Minesweeper: 
    http://www.claymath.org/Popular_Lectures/Minesweeper/

  * Richard Kaye's Minesweeper Pages
    http://web.mat.bham.ac.uk/R.W.Kaye/minesw/minesw.htm

  * Some Minesweeper Configurations
    http://web.mat.bham.ac.uk/R.W.Kaye/minesw/minesw.pdf



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        minesweeper(1),
        nl.

%%
%% Problems 1..10, and 14: has unique solutions
%%          11: 4 solutions
%%          12: 2 solutions
%%          13: too many, many solutions
%%          15: 20 solutions
%%
go2 :-
        between(1,15,P),
        P \= 13,
        findall(_, time(minesweeper(P)),L),
        length(L,Len),
        writeln([problem=P,number_of_solutions=Len]),
        nl,
        fail,
        nl,
        nl.



% special for problem 13 (which has _many_ solutions)
go3 :-
  time(minesweeper(13)), fail.


% special for problem 15
% 20 solutions
go4 :-
        writeln(problem=15),
        time(findall(_, minesweeper(15),L)),
        length(L,Len),
        writeln([number_of_solutions=Len]),
        nl.



%
% Main Minesweeper solver
%
minesweeper(Problem) :-

   problem(Problem, Game),
   writeln(problem=Problem),
   
   % dimensions of the problem instance
   length(Game, NumRows),
   transpose(Game, GameT),
   length(GameT, NumCols),

   %% decision variable: where is the mines?
   %% Mines[I,J] = 1: this cell has a mine. 
   new_matrix(NumRows, NumCols, 0..1, Mines),

   %% Main loop
   findall([I,J], (between(1,NumRows,I), between(1,NumCols,J)),GridIndices),
   grid_loop(GridIndices, Game, Mines, NumRows, NumCols), 

   flatten(Mines, Vars),
   
   labeling([ff,bisect], Vars),

   print_matrix(Mines),
   nl.

%%
%% Main loop,
%%
%% Game[I,J] = _ means that it is unknown from start, may be a mine.
%% Games[I,J] >= 0 means that the value is known, (i.e. the number of
%%                 mines in the neighbourhood) and also that it is not a mine.
%%
%%
grid_loop([], _Game, _Mines, _NumRows, _NumCols).
grid_loop([[I,J]|Gs], Game, Mines, NumRows, NumCols) :-
        matrix_element(Game,I,J, NumMines), % Game[I,J], i.e. the number of Mines in this cell
        neighbours(Mines, NumRows, NumCols, I,J, NumMines),
        grid_loop(Gs, Game, Mines, NumRows, NumCols).

%%
%% Ensure that among the neighbours of M[I,J] there is exactly NumMines mines
%%
neighbours(Mines, NumRows, NumCols, I,J, NumMines) :-
        % unknown number of mines. Can be a mine.
        (var(NumMines) ->
            true
        ;
            % If Game[I,J] is 0 or > 0 then this cannot be a mine.
            matrix_element(Mines,I,J,0),
            % And now we ensure that there are NumMines mines in the neighbourhood
            neighbour_list(NumRows, NumCols, I,J, NeighbourList),
            sum_neighbours(NeighbourList, Mines, NumMines)
            
        ).

%%
%% The indices of the neighbours for [I,J] in a Rows x Cols matrix
%%
neighbour_list(NumRows, NumCols, I,J, NeighbourList) :-
        findall([IA,JB],
                (
                  between(-1,1,A),
                  between(-1,1,B),
                  IA#=I+A, JB#=J+B,
                  IA in 1..NumRows,
                  JB in 1..NumCols
                ),
                NeighbourList).

%%
%% The number of mines in the neighbours is NumMines
%%
sum_neighbours(NeighbourList, Mines, NumMines) :-
        sum_neighbours_(NeighbourList,Mines, 0, NumMines).
sum_neighbours_([], _Mines, Sum, NumMines) :-
        Sum #= NumMines.
sum_neighbours_([[I,J]|Ns],Mines, Sum, NumMines) :-
          matrix_element(Mines,I,J, Val),
          Sum1 #= Val + Sum,
          sum_neighbours_(Ns,Mines, Sum1, NumMines).


%
% data
%
%  _ is coded as unknown
%  0..8: known number of neighbours
%

% The first 10 examples (0..9) are from Gecode/examples/minesweeper.cc
% http://www.gecode.org/gecode-doc-latest/minesweeper_8cc-source.html
% """
% The instances are taken from
%   http://www.janko.at/Raetsel/Minesweeper/index.htm
% """


% Problem from Gecode/examples/minesweeper.cc  problem 0
% 
% Solution:
%  1 0 0 0 0 1
%  0 1 0 1 1 0
%  0 0 0 0 1 0
%  0 0 0 0 1 0
%  0 1 1 1 0 0
%  1 0 0 0 1 1
problem(0, P) :- 
        P = [[_,_,2,_,3,_],
             [2,_,_,_,_,_],
             [_,_,2,4,_,3],
             [1,_,3,4,_,_],
             [_,_,_,_,_,3],
             [_,3,_,3,_,_]].


% Problem from Gecode/examples/minesweeper.cc  problem 1
problem(1, P) :- 
        P = [[_,2,_,2,1,1,_,_],
             [_,_,4,_,2,_,_,2],
             [2,_,_,2,_,_,3,_],
             [2,_,2,2,_,3,_,3],
             [_,_,1,_,_,_,4,_],
             [1,_,_,_,2,_,_,3],
             [_,2,_,2,2,_,3,_],
             [1,_,1,_,_,1,_,1]].



% Problem from Gecode/examples/minesweeper.cc  problem 2
problem(2,P) :- 
        P = [[1,_,_,2,_,2,_,2,_,_],
             [_,3,2,_,_,_,4,_,_,1],
             [_,_,_,1,3,_,_,_,4,_],
             [3,_,1,_,_,_,3,_,_,_],
             [_,2,1,_,1,_,_,3,_,2],
             [_,3,_,2,_,_,2,_,1,_],
             [2,_,_,3,2,_,_,2,_,_],
             [_,3,_,_,_,3,2,_,_,3],
             [_,_,3,_,3,3,_,_,_,_],
             [_,2,_,2,_,_,_,2,2,_]].


% Problem from Gecode/examples/minesweeper.cc  problem 3
problem(3, P) :- 
        P = [[2,_,_,_,3,_,1,_],
             [_,5,_,4,_,_,_,1],
             [_,_,5,_,_,4,_,_],
             [2,_,_,_,4,_,5,_],
             [_,2,_,4,_,_,_,2],
             [_,_,5,_,_,4,_,_],
             [2,_,_,_,5,_,4,_],
             [_,3,_,3,_,_,_,2]].


% Problem from Gecode/examples/minesweeper.cc  problem 4
problem(4,P) :- 
        P = [[0,_,0,_,1,_,_,1,1,_],
             [1,_,2,_,2,_,2,2,_,_],
             [_,_,_,_,_,_,2,_,_,2],
             [_,2,3,_,1,1,_,_,_,_],
             [0,_,_,_,_,_,_,2,_,1],
             [_,_,_,2,2,_,1,_,_,_],
             [_,_,_,_,_,3,_,3,2,_],
             [_,5,_,2,_,_,_,3,_,1],
             [_,3,_,1,_,_,3,_,_,_],
             [_,2,_,_,_,1,2,_,_,0]].


% Problem from Gecode/examples/minesweeper.cc  problem 5
problem(5,P) :- 
        P = [[_,2,1,_,2,_,2,_,_,_],
             [_,4,_,_,3,_,_,_,5,3],
             [_,_,_,4,_,4,4,_,_,3],
             [4,_,4,_,_,5,_,6,_,_],
             [_,_,4,5,_,_,_,_,5,4],
             [3,4,_,_,_,_,5,5,_,_],
             [_,_,4,_,4,_,_,5,_,5],
             [2,_,_,3,3,_,6,_,_,_],
             [3,6,_,_,_,3,_,_,4,_],
             [_,_,_,4,_,2,_,2,1,_]].



% Problem from Gecode/examples/minesweeper.cc  problem 6
problem(6, P) :- 
        P = [[_,3,2,_,_,1,_,_],
             [_,_,_,_,1,_,_,3],
             [3,_,_,2,_,_,_,4],
             [_,5,_,_,_,5,_,_],
             [_,_,6,_,_,_,5,_],
             [3,_,_,_,5,_,_,4],
             [2,_,_,5,_,_,_,_],
             [_,_,2,_,_,3,4,_]].


% Problem from Gecode/examples/minesweeper.cc  problem 7
problem(7, P) :- 
        P = [[_,1,_,_,_,_,_,3,_],
             [_,_,_,3,4,3,_,_,_],
             [2,4,4,_,_,_,4,4,3],
             [_,_,_,4,_,4,_,_,_],
             [_,4,_,4,_,3,_,6,_],
             [_,_,_,4,_,3,_,_,_],
             [1,2,3,_,_,_,1,3,3],
             [_,_,_,3,2,2,_,_,_],
             [_,2,_,_,_,_,_,3,_]].



% Problem from Gecode/examples/minesweeper.cc  problem 8
problem(8, P) :- 
        P = [[_,_,_,_,_,_,_],
             [_,2,3,4,3,5,_],
             [_,1,_,_,_,3,_],
             [_,_,_,5,_,_,_],
             [_,1,_,_,_,3,_],
             [_,1,2,2,3,4,_],
             [_,_,_,_,_,_,_]].


% Problem from Gecode/examples/minesweeper.cc  problem 9
problem(9, P) :- 
        P = [[2,_,_,_,2,_,_,_,2],
             [_,4,_,4,_,3,_,4,_],
             [_,_,4,_,_,_,1,_,_],
             [_,4,_,3,_,3,_,4,_],
             [2,_,_,_,_,_,_,_,2],
             [_,5,_,4,_,5,_,4,_],
             [_,_,3,_,_,_,3,_,_],
             [_,4,_,3,_,5,_,6,_],
             [2,_,_,_,1,_,_,_,2]].



% From "Some Minesweeper Configurations",page 2
problem(10, P) :- 
         P = [[_,_,_,_,_,_],
              [_,2,2,2,2,_],
              [_,2,0,0,2,_],
              [_,2,0,0,2,_],
              [_,2,2,2,2,_],
              [_,_,_,_,_,_]].



% From "Some Minesweeper Configurations",page 3
% 4 solutions
problem(11, P) :- 
         P = [[2,3,_,2,2,_,2,1],
              [_,_,4,_,_,4,_,2],
              [_,_,_,_,_,_,4,_],
              [_,5,_,6,_,_,_,2],
              [2,_,_,_,5,5,_,2],
              [1,3,4,_,_,_,4,_],
              [0,1,_,4,_,_,_,3],
              [0,1,2,_,2,3,_,2]].


% Richard Kaye: How Complicated is Minesweeper?
% http://web.mat.bham.ac.uk/R.W.Kaye/minesw/ASE2003.pdf
% 
% A Wire,page 33
% 2 solutions
%
problem(12, P) :- 
         P = [[_,0,0,0,0,0,0,0,0,0,0,0,0,_],
              [_,1,1,1,1,1,1,1,1,1,1,1,1,_],
              [_,_,1,_,_,1,_,_,1,_,_,1,_,_],
              [_,1,1,1,1,1,1,1,1,1,1,1,1,_],
              [_,0,0,0,0,0,0,0,0,0,0,0,0,_]].


% Richard Kaye: How Complicated is Minesweeper?
% http://web.mat.bham.ac.uk/R.W.Kaye/minesw/ASE2003.pdf
% A splitter,page 35
% Many solutions...
%
problem(13, P) :- 
          P= [[_,_,_,0,_,_,_,0,_,_,_],
              [_,_,_,0,1,_,1,0,_,_,_],
              [_,_,_,0,1,_,1,0,_,_,_],
              [0,0,0,0,1,1,1,0,0,0,0],
              [_,1,1,1,1,_,1,1,1,1,_],
              [_,_,_,1,_,2,_,1,_,_,_],
              [_,1,1,1,1,_,1,1,1,1,_],
              [0,0,0,0,1,1,1,0,0,0,0],
              [_,_,_,0,1,_,1,0,_,_,_],
              [_,_,_,0,1,_,1,0,_,_,_],
              [_,_,_,0,_,_,_,0,_,_,_]].
        


% Oleg German,Evgeny Lakshtanov: "Minesweeper" without a computer
% http://arxiv.org/abs/0806.3480, page 4
problem(14, P) :- 
         P = [[_,1,_,1,_,1],
              [2,_,2,_,1,_],
              [_,3,_,2,_,1],
              [1,_,3,_,2,_],
              [_,1,_,2,_,1]].


%
% From http://stephenlombardi.com/minesweeper/minesweeper.lisp
%
problem(15,P) :-
  P = 
[[0,0,0,0,1,_,_,_,_],
 [0,0,0,0,1,_,_,3,_],
 [0,0,1,1,2,_,_,_,_],
 [0,0,1,_,_,_,_,1,_],
 [0,0,1,2,_,3,_,_,_],
 [0,0,0,1,_,_,_,_,_],
 [0,0,1,2,2,1,1,1,1],
 [0,0,1,_,1,0,0,0,0],
 [0,0,1,_,1,0,0,0,0]].
:- initialization(go).
%------------------------------------------------ 167 hakank_swi_monks_and_doors
/*

  Monks and doors problem in SWI Prolog

  From http://user.it.uu.se/~rolandb/LP/gammal/960615_facit.ps
  """
  There is a room with four doors and eight monks. One or more of
  the doors may be exit. Each monk is either telling a lie or the truth.
 
  The monks make the following statements:
  Monk 1: Door A is the exit.
  Monk 2: At least one of the doors B and C is the exit.
  Monk 3: Monk 1 and Monk 2 are telling the truth.
  Monk 4: Doors A and B are both exits.
  Monk 5: Doors A and B are both exits.
  Monk 6: Either Monk 4 or Monk 5 is telling the truth.
  Monk 7: If Monk 3 is telling the truth, so is Monk 6.
  Monk 8: If Monk 7 and Monk 8 are telling the truth, so is Monk 1.
 
  Which door is an exit no matter who is a liar and who is telling the
  truth.
  """
 
  Answer: Door A is an exit.
          And monks 1, 7, and 8 are telling the truth.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   Doors = [A,B,C,D],
   Doors ins 0..1,
   Monks = [M1,M2,M3,M4,M5,M6,M7,M8],
   Monks ins 0..1,

   % Monk 1: Door A is the exit.
   M1 #= A, 
   
   %  Monk 2: At least one of the doors B and C is the exit.
   M2 #= 1 #<==> (B + C #>= 1),
   
   %  Monk 3: Monk 1 and Monk 2 are telling the truth.
   M3 #= 1 #<==> (M1 #/\ M2),
   
   %  Monk 4: Doors A and B are both exits.
   M4 #= 1 #<==> (A #/\ B) ,
   
   %  Monk 5: Doors A and C are both exits.
   M5 #= 1 #<==> (A #/\ C),
   
   %  Monk 6: Either Monk 4 or Monk 5 is telling the truth.
   M6 #= 1 #<==> (M4 #\/ M5),
   
   %  Monk 7: If Monk 3 is telling the truth, so is Monk 6.
   M7 #= 1 #<==> (M3 #==> M6),
   
   %  Monk 8: If Monk 7 and Monk 8 are telling the truth, so is Monk 1.
   M8 #= 1 #<==> ((M7 #/\ M8) #==> (M1)),
   
   % Exactly one door is an exit.
   A + B + C + D #= 1,
   
   flatten([Doors,Monks],Vars),
   labeling([], Vars),

   writeln(exit_doors=Doors),
   DoorsS = ["A","B","C","D"],
   findall(ED,(
              between(1,4,I),
              element(I,Doors,1),
              nth1(I,DoorsS,ED)
             ),
           ExitDoors),
   writeln(exit_doors=ExitDoors),
   writeln(truth_telling_monks=Monks),
   findall(I,(
              between(1,8,I),
              element(I,Monks,1)
             ),
           TruthTellingMonks),
   writeln(truth_telling_monks=TruthTellingMonks),
   nl.
:- initialization(go).
%------------------------------------------------------- 168 hakank_swi_mortgage
/*

  Mortgage experiments (using clpr) in SWI Prolog

  Marriot & Stuckey "Programming with Constraints", page 175f
  And some other sources, see below.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpr)).

%% Marriott & Stuckey
go :-
        T = 3.0,
        I = 0.1, % 10.0/100.0,
        R = 150.0,
        B = 0.0,
        mortgage(P,T,I,R,B),
        writeln([p=P,t=T,i=I,r=R,b=B]),
        nl.

%% An older ECLiPSe example
go2 :- 
        T = 3.0,
        I = 0.1, % 10/100,
        B = 150.0,
        MP = 0.0,
        mg(P,T,I,B,MP),
        writeln([p=P,t=T,i=I,b=B,mp=MP]),
        nl.


%% From Thom Frühwirth
go3 :-
        mortgage3(100000,360,0.01,1025,S1),
        writeln(s1=S1),
                
        mortgage3(D2,360,0.01,1025,0),
        writeln(d2=D2),

        mortgage3(100000,T3,0.01,1025,S3), S3 =<0,
        writeln([t3=T3,s3=S3]),

        % don't work
        % mortgage3(D4,360,0.01,R4,0),
        % writeln([d4=D4,r4=R4]),
        nl.


%
% Marriott & Stuckey, page 178
% 
mortgage(P,T,I,R,B) :-
        {T  >= 1.0,
        NP = P + (P * I) - R,
        NT = T-1},
        mortgage(NP, NT, I, R, B).

mortgage(P,T,_,_,B):-
        {T = 0, B = P}.



%
% From an older ECLiPSe example, eclipse/lib_noncom/clpqr/examples/mg.pl
% 
mg(P,T,I,B,MP) :-
        {T = 1,  B + MP = P * (1 + I)}.


mg(P,T,I,B,MP) :-
        {
        T  > 1,
        P1 = P * (1 + I) - MP,
        T1 = T - 1},
	mg(P1, T1, I, B, MP).




%
% From Thom Frühwirth
%
% http://www.informatik.uni-ulm.de/pm/fileadmin/pm/home/fruehwirth/Papers/cp-intro.pdf 
% page 7
% D: Amount of Loan, Debt, Principal
% T: Duration of loan in months
% I: Interest rate per month
% R: Rate of payments per month
% S: Balance of debt after T months
%
mortgage3(D, T, I, R, S) :-
        {T = 0,D = S}
        ;
        {T > 0,
         T1 = T - 1,
         D1 = D + D*I - R
        },
        mortgage3(D1, T1, I, R, S).


mortgage3(D, T, I, R, S) :-
        {T = 0, D = S}
        ;
        {T > 0, T1 = T - 1, D1 = D + D*I - R},
        mortgage3(D1, T1, I, R, S).
:- initialization(go).
%------------------------------------------------------- 169 hakank_swi_mr_smith
/*

  Mr Smith problem in SWI Prolog

  From an IF Prolog example (http://www.ifcomputer.de/)
  """
  The Smith family and their three children want to pay a visit but they
  do not all have the time to do so. Following are few hints who will go
  and who will not:
      o If Mr Smith comes, his wife will come too.
      o At least one of their two sons Matt and John will come.
      o Either Mrs Smith or Tim will come, but not both.
      o Either Tim and John will come, or neither will come.
      o If Matt comes, then John and his father will
        also come.
  """

  The answer should be:
    Mr_Smith_comes      =  0
    Mrs_Smith_comes     =  0
    Matt_comes          =  0
    John_comes          =  1
    Tim_comes           =  1

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        People = [mr_smith,mrs_smith,matt,john,tim],
        length(People,Len),
        findall(P,
                (mr_smith(L),
                 writeln(L),
                 between(1,Len,I),
                 element(I,L,1),
                 nth1(I,People,P)
                ),
                Sol),
        format("These will go to the party: ~w~n",[Sol]),
        nl.

mr_smith(L) :-

   L = [Mr_Smith,Mrs_Smith,Matt, John,Tim],
   L ins 0..1,

   % If Mr Smith comes, his wife will come too.
   Mr_Smith #==> Mrs_Smith,

   % At least one of their two sons Matt and John will come.
   Matt #\/ John,

   % Either Mrs Smith or Tim will come, but not both.
   Mrs_Smith + Tim #= 1,

   % Either Tim and John will come, or neither will come.
   Tim #= John,

   % If Matt comes, then John and his father will also come.
   Matt #==> (John #/\ Mr_Smith),

   label(L).
:- initialization(go).
%------------------------------------------------------ 170 hakank_swi_music_men
/*

  Music men puzzle in SWI Prolog

  """
  Three friends like different kinds of music.  From the clues given
  below, can you identify them, say how old each is, and work out
  his musical preference?

  Clues: 
  1.      Rob is older than Queen, who likes classical music.
  2.      The pop-music fan, who is not Prince, is not 24.
  3.      Leon, who is not King, is 25.
  4.      Mark's musical preference is not jazz.
  """

  Knowledge: "this is what we know of the world."
  Names           : Leon, Mark, Rob.
  Surnames        : King, Prince, Queen.
  Ages            : 24, 25, 26.
  Music           : Classical, Jazz, Pop.


  Solution:
    Leon Prince, 25, jazz.
    Mark Queen, 24, classical.
    Rob King, 26, pop.



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   music_men([Age,Names,Surnames,Music]),
   NamesS = ["King","Prince","Queen"],
   SurnamesS = ["Leon","Mark","Rob"],
   MusicS = ["classical","jazz","pop"],
   get_sol(Names,NamesS,NamesSol),
   get_sol(Surnames,SurnamesS,SurnamesSol),
   get_sol(Music,MusicS,MusicSol),
   transpose([SurnamesSol,NamesSol,Age,MusicSol],SolT),
   maplist(format("~w\t~w\t~w\t~w~n"),SolT),
   
   nl.

%%
%% Preparation for pretty print.
%%
get_sol(List,Lookup,Sol) :-
        findall(Val,
                (member(L,List),
                 Ix #= L-23,
                 nth1(Ix,Lookup,Val)
                ),
                Sol).

music_men([Age,Names,Surnames,Music]) :-

        Age      = [Age24, Age25, Age26],
        Names    = [King, Prince, Queen],
        Surnames = [Leon, Mark, Rob],
        Music    = [Classical, Jazz, Pop],
        
        Age      = [24,25,26],
        Names    ins 24..26,
        Surnames ins 24..26,
        Music    ins 24..26,

        all_different(Age),
        all_different(Names),
        all_different(Surnames),
        all_different(Music),

        %% Age
        Age24 #= 24,
        Age25 #= 25,
        Age26 #= 26,
        
        %% Rob is older than Queen, who likes classical music.
        Rob #> Queen,
        Queen #= Classical,

        %% The pop-music fan, who is not Prince, is not 24.
        Pop #\= Prince,
        Pop #\= Age24,

        %% Leon, who is not King, is 25.
        Leon #\= King,
        Leon #= Age25,

        %%  Mark's musical preference is not jazz.
        Mark #\= Jazz,

        flatten([Names,Surnames,Music],Vars),

        labeling([], Vars).

:- initialization(go).
%---------------------------------------------------------- 171 hakank_swi_nadel
/*

  Nadel's construction problem in SWI Prolog

  From Rina Dechter "Constraint Processing", page 5.
  Attributes the problem to
  B.A. Nadel "Constraint satisfaction algorithms" (1989).
  """
  * The recreation area should be near the lake.
  
  * Steep slopes are to be avoided for all but the recreation area.
  * Poor soil should be avoided for those developments that 
    involve construction, namely the apartments and the family houses.
  
  * The highway, being noisy, should not be near the apartments, 
    the housing, or the recreation area.
  
  * The dumpsite should not be visible from the apartments, 
    the houses, or the lake.
  
  * Lots 3 and 4 have bad soil.
  * Lots 3, 4, 7, and 8 are on steep slopes .
  * Lots 2, 3, and 4 are near the lake.
  * Lots 1 and 2 are near the highway.
  """

  Comment: 
  I have not found any model that satisfies all the constraints.
  However this "soft" version counts the broken constraints
  and minimizes to 1 broken constraint.
  
  The model (which - of course - could be erroneous) generates 28 different 
  models. The broken constraints are either
    - steep_slopes constraints or
    - near_dump constraints.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   findall([Developments,Broken,TotalCount],
           nadel(Developments,Broken,TotalCount),L),
   findall([D,B,BCC,TC],
           (
            member([D,B,TC],L),
            length(B,BLen),
            findall(BC,
                    (between(1,BLen,BC),
                     nth1(BC,B,1)
                    ),
                    BCC
                   )
            ),
           Sol),
   maplist(format("Developement: ~w~nConstraints broken: ~w Broken: ~w~nTotal broken constraints: ~w~n~n"),Sol),

   writeln("Which constraints was broken in the above list?"),
   findall(BCC,
         member([_D,_B,[BCC],_TC],Sol)
        , BrokenConstraints), 
   findall([E,C],
           ( %% member(E,Unique),
             between(1,13,E),
            count_occurrences(BrokenConstraints,E,C)
           ),
          Occ),
   maplist(format("Constraint ~t~d~14| has ~d occurrences.~n"),Occ),
   nl.


nadel(Developments, Broken, TotalCount) :-

   %% Near lots
   %% * Lots 3 and 4 have bad soil.
   %% * Lots 3, 4, 7, and 8 are on steep slopes .
   %% * Lots 2, 3, and 4 are near the lake.
   %% * Lots 1 and 2 are near the highway.
   
                %% 1, 2, 3, 4, 5, 6, 7, 8
   BadSoil     =  [0, 0, 1, 1, 0, 0, 0, 0],
   SteepSlopes =  [0, 0, 1, 1, 0, 0, 1, 1],
   NearLake    =  [0, 1, 1, 1, 0, 0, 0, 0],
   NearHighway =  [1, 1, 0, 0, 0, 0, 0, 0],
   
   %% neighborhood matrix (for the dump placement)
   NearLots =  %% 1  2  3  4  5  6  7  8  
                [[0, 1, 0, 0, 1, 0, 0, 0],         %% 1
                 [1, 0, 1, 0, 0, 1, 0, 0],         %% 2 
                 [0, 1, 0, 1, 0, 0, 1, 0],         %% 3 
                 [0, 0, 1, 0, 0, 0, 0, 1],         %% 4
                 [1, 0, 0, 0, 0, 1, 0, 0],         %% 5
                 [0, 1, 0, 0, 1, 0, 1, 0],         %% 6
                 [0, 0, 1, 0, 0, 1, 0, 1],         %% 7
                 [0, 0, 0, 1, 0, 0, 1, 0]],        %% 8
                
   length(NearLots,N), %% number of lots   
   
   %% the development to place in one of the lots
   Developments = [Recreation, Apartments, Houses, Cemetery, Dump],
   Developments ins 1..N,

   C = 13, %% number of constraints
   length(Broken,C),
   Broken ins 0..1, %% indicator of broken constraint
   Broken = [Broken1,Broken2,Broken3,Broken4,Broken5,Broken6,
             Broken7,Broken8,Broken9,Broken10,Broken11,Broken12,
             Broken13],

   sum(Broken,#=,TotalCount),
   TotalCount #=< 1, %% for findall

   all_different(Developments),

   %% * The recreation area should be near the lake.
   element(Recreation,NearLake,NearLakeRecreation),
   (NearLakeRecreation #= 1 #<==> Broken1 #= 0),
   
   %% * Steep slopes are to be avoided for all but the recreation
   %%   area.
   element(Apartments,SteepSlopes,SteepSlopesApartments),
   element(Houses,SteepSlopes,SteepSlopesHouses),
   element(Cemetery,SteepSlopes,SteepSlopesCemetry),
   element(Dump,SteepSlopes,SteepSlopesDump),
   (SteepSlopesApartments #= 0 #<==> Broken2 #= 0),
   (SteepSlopesHouses     #= 0 #<==> Broken3 #= 0),
   (SteepSlopesCemetry    #= 0 #<==> Broken4 #= 0),
   (SteepSlopesDump       #= 0 #<==> Broken5 #= 0),

   %% * Poor soil should be avoided for those developments that 
   %%   involve construction, namely the apartments and the family
   %%   houses.
   element(Apartments,BadSoil,BadSoilApartments),
   element(Houses,BadSoil,BadSoilHouses),
   (BadSoilApartments #= 0 #<==> Broken6 #= 0 ),
   (BadSoilHouses     #= 0 #<==> Broken7 #= 0 ),
   
   %% * The highway, being noisy, should not be near the apartments, 
   %%   the housing, or the recreation area.
   element(Apartments,NearHighway,NearHighwayApartments),
   element(Houses,NearHighway,NearHighwayHouses),
   element(Recreation,NearHighway,NearHighwayRecreation),
   (NearHighwayApartments #= 0 #<==> Broken8 #= 0),
   (NearHighwayHouses     #= 0 #<==> Broken9 #= 0),
   (NearHighwayRecreation #= 0 #<==> Broken10 #= 0),
   
   %% * The dumpsite should not be visible from the apartments, 
   %%   the houses, or the lake.

   %% not near the lake
   element(Dump,NearLake, NearLakeDump),
   (NearLakeDump #= 0 #<==> Broken11 #= 0),

   %% not near the house 

   matrix_element(NearLots,Dump,Houses,NearLotsDumpHouses),
   matrix_element(NearLots,Houses,Dump,NearLotsHousesDump),
   (
       (NearLotsDumpHouses #= 0 #/\ NearLotsHousesDump #= 0)
        #<==> 
       Broken12 #= 0
   ), 

   %% not near the apartments  
   matrix_element(NearLots,Dump,Apartments,NearLotsDumpApartments),
   matrix_element(NearLots,Apartments,Dump,NearLotsApartmentsDump),
   (
       (NearLotsDumpApartments #= 0 #/\ NearLotsApartmentsDump #= 0)
        #<==> Broken13 #= 0
   ),

   flatten([Developments,Broken],Vars),
   labeling([], Vars).

:- initialization(go).
%--------------------------------------------------- 172 hakank_swi_number_lock2
/*

  Number lock problem in SWI Prolog

  From Presh Talwalkar (MindYourDecisions) 
  """
  Puzzles like this have been shared with the dubious claim that "only a
  genius can solve" them. But they are still fun problems so let's work one
  out.

  A number lock requires a 3 digit code. Based on these hints, can you crack
  the code?

    682 - one number is correct and in the correct position
    645 - one number is correct but in the wrong position
    206 - two numbers are correct but in the wrong positions
    738 - nothing is correct
    780 - one number is correct but in the wrong position

  Video:  https://youtu.be/-etLb-8sHBc
  """

  Today Moshe Vardi published a related problem (https://twitter.com/vardi/status/1164204994624741376 )
  where all hints, except for the second, where identical with Presh's problem:

    682 - one number is correct and in the correct position
    614 - one number is correct but in the wrong position    <-- This has different digits.
    206 - two numbers are correct but in the wrong positions
    738 - nothing is correct
    780 - one number is correct but in the wrong position


  In go/0 we solve the two puzzles,
  In go2/0 we generate new hints that can replace the second hint (with a unique solutions).

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


%
% Test the given puzzles.
% Note that we test for unicity of the solutions.
%
go :-
        between(1,5,P),
        writeln(problem=P),
        data(P,Data),
        maplist(writeln,Data),
        findall(X, number_lock(Data,X),L),
        writeln("Answer"=L),    
        nl,
        fail.

go.

%
% Generate new puzzles, i.e.
% generate a new variant of digits instead of the second hint:
%
%   [[6,4,5],0,1], % - one number is correct but in the wrong position
% or 
%   [[6,1,4],0,1], % - one number is correct but in the wrong position
%
% This might give a new solution (X) as well.
%
% A new puzzle is thus:
% Data = [
%   [[6,8,2],1,1], % - one number is correct and in the correct position
%   %% We will replace these digits:
%   %% [[6,4,5],0,1], % - one number is correct but in the wrong position    
%   [[2,0,6],0,2], % - two numbers are correct but in the wrong positions
%   [[7,3,8],0,0], % - nothing is correct
%   [[7,8,0],0,1]  % - one number is correct but in the wrong position
% ],
% PLUS
%  one of the new hints.
%
% According to model, there are 248 possible new hints.
% Some examples:
% [digits = [1,3,3],x = [0,1,2]]
% [digits = [1,3,6],x = [0,1,2]]
% 
% [digits = [1,1,4],x = [0,4,2]]
% [digits = [3,1,4],x = [0,4,2]]
%
% [digits = [1,1,5],x = [0,5,2]]
% [digits = [3,1,5],x = [0,5,2]]
%
% [digits = [1,1,9],x = [0,9,2]]
% [digits = [3,1,9],x = [0,9,2]]
% 
%
% Interestingly, there are only four possible values of X (solution to the puzzle):
%  - 012
%  - 042
%  - 052
%  - 092
%
%
go2 :-
        length(NewDigits,3),
        NewDigits ins 0..9,
        %% Suggest a new hint
        number_lock_generate(NewDigits, _X),
        
        %% Check if the new hint has a unique solution
        findall(NewDigits=X2,number_lock_generate(NewDigits,X2),L2),
        length(L2,L2Len),
        (
         L2Len == 1
        ->
         L2 = [Digits=X2],
         writeln([digits=Digits,x=X2])
        ;
         true
        ),
        fail,
        nl.

go2.


%%
%% number_lock(Data,X)
%%
%% The main problem.
%%
number_lock(Data, X) :-

        % number of digits
        nth1(1,Data,Ds),
        nth1(1,Ds,D),
        length(D,N),
        
        length(X,N),
        X ins 0..9,
        maplist(check_hints(X),Data),
        labeling([],X).


check_hints(X,[Digits,NumCorrectPosition,NumCorrectNumber]) :-
        check(Digits,X,NumCorrectPosition,NumCorrectNumber).

%%
%% How many 
%%   pos: correct values and positions
%%   val: correct values (regardless if there are correct position or not)
%%
check(A, B, Pos, Val) :-
        length(A,N),
                
        %% number of entries in correct position (and correct values)
        maplist(eq_fd,A,B,Zs),
        sum(Zs,#=,Pos),

        %% number of entries which has correct values
        %% (regardless if there are in correct position or not)
        sum_values(N,A,B,Val).
        
eq_fd(A,B,Z) :-
        Z in 0..1,
        A #= B #<==> Z #= 1.


%%
%% number of entries which has correct values
%% (regardless if there are in correct position or not)
%%
sum_values(N,A,B,Val) :-
        findall([I,J],(between(1,N,I),
                       between(1,N,J)
                      ),
                IJs),
        sum_values_(IJs,A,B,0,Val).
sum_values_([],_A,_B,Sum,Sum).
sum_values_([[I,J]|IJs],A,B,Sum0,Sum) :-
        element(I,A,AI),
        element(J,B,BJ),
        Bool in 0..1,
        AI #= BJ #<==> Bool #= 1,
        Sum1 #= Sum0 + Bool,
        sum_values_(IJs,A,B,Sum1,Sum).


%%
%% number_lock_generate(NewDigits, X)
%% 
%% Generate a new hint to replace the second hint in the two puzzles.
% See go2/0.
% %
number_lock_generate(NewDigits, X) :-

        N = 3,                  % number of digits
  
        length(X,N),
        X ins 0..9,

        Data = [
                [[6,8,2],1,1], % - one number is correct and in the correct position
                %% We will replace these three digits
                %% [[6,4,5],0,1], % - one number is correct but in the wrong position    
                [[2,0,6],0,2], % - two numbers are correct but in the wrong positions
                [[7,3,8],0,0], % - nothing is correct
                [[7,8,0],0,1] % - one number is correct but in the wrong position
               ],

        maplist(check_hints(X),Data),
        
        check(NewDigits,X,0,1),
  
        flatten([X,NewDigits],Vars),
        labeling([],Vars).



%
% Data
%

/*
  From Presh Talwalkar (MindYourDecisions) 
  """
  Puzzles like this have been shared with the dubious claim that "only a
  genius can solve" them. But they are still fun problems so let's work one
  out.

  A number lock requires a 3 digit code. Based on these hints, can you crack
  the code?

    682 - one number is correct and in the correct position
    645 - one number is correct but in the wrong position
    206 - two numbers are correct but in the wrong positions
    738 - nothing is correct
    780 - one number is correct but in the wrong position

  Video:  https://youtu.be/-etLb-8sHBc
  """
*/
data(1,Data) :-
  Data = [
    [[6,8,2],1,1], % - one number is correct and in the correct position
    [[6,4,5],0,1], % - one number is correct but in the wrong position    
    [[2,0,6],0,2], % - two numbers are correct but in the wrong positions
    [[7,3,8],0,0], % - nothing is correct
    [[7,8,0],0,1]  % - one number is correct but in the wrong position
  ].


/*
  Moshe Vardi: https://twitter.com/vardi/status/1164204994624741376

    682 - one number is correct and in the correct position
    614 - one number is correct but in the wrong position    <-- This has different digits
    206 - two numbers are correct but in the wrong positions
    738 - nothing is correct
    780 - one number is correct but in the wrong position
  
*/
data(2,Data) :-
  Data = [
    [[6,8,2],1,1], % - one number is correct and in the correct position
    [[6,1,4],0,1], % - one number is correct but in the wrong position    
    [[2,0,6],0,2], % - two numbers are correct but in the wrong positions
    [[7,3,8],0,0], % - nothing is correct
    [[7,8,0],0,1]  % - one number is correct but in the wrong position
  ].



/*
  https://puzzling.stackexchange.com/questions/97032/5-digit-puzzle-code-looking-for-solution
  """
  Can somebody help me solve this, or can you teach me how?

  4 7 2 9 1 - One number is correct but not in right position
  9 4 6 8 7 - One number is correct but not in right position
  3 1 8 7 2 - Two numbers are correct but only one is in right position
  1 5 7 3 9 - Two numbers are correct and both in right position
  """

  Also see: 
  https://g-ar.github.io/posts/solving-mastermind-like-problems-using-z3-theorem-prover/

  Note: It has two solutions:
    [1,5,8,0,0]
    [6,5,0,3,2]

  If we assume distinctness of the numbers then the answer is
    [6,5,0,3,2]

*/
% This is also modelled in number_lock_5_digits.pi
data(3,Data) :-
  Data = [
    [[4,7,2,9,1],0,1], % - One number is correct but not in right position
    [[9,4,6,8,7],0,1], % - One number is correct but not in right position
    [[3,1,8,7,2],1,2], % - Two numbers are correct but only one is in right position
    [[1,5,7,3,9],2,2]  % - Two numbers are correct and both in right position
  ].


/* 
  From https://twitter.com/sonukg4india/status/1591081634534936576
  """
  A padlock has a 4-digit key code.

  2657: Has two correct digits but neither are in the correct place
  0415: Has one correct digit but it's in the wrong place
  4268: Has no correct digitss.
  1749: Has two correct digits, both in the correct places.
  All the 4 digits in the key are different. 
  What is the code for the padlock?
  """   

*/
data(4,Data) :-
  Data = [
    [[2,6,5,7],0,2], % - Two numbers are correct but not in right position
    [[0,4,1,5],0,1], % - One number is correct but not in right position
    [[4,2,6,8],0,0], % - No correct digit
    [[1,7,4,9],2,2]  % - Two numbers are correct and both in right position
  ].


/* 
  From https://twitter.com/sonukg4india/status/1591343310505115648
  """
  Can you crack the code

  795  One number is correct and well placed
  741  One number is correct but wrong place
  463  Two numbers are correct but in wrong place
  127  Nothing is correct
  169  One number is correct but wrong place
  """

*/
data(5,Data) :-
  Data = [
    [[7,9,5],1,1],
    [[7,4,1],0,1],
    [[4,6,3],0,2],
    [[1,2,7],0,0],
    [[1,6,9],0,1] 
  ].

:- initialization(go).
%------------------------------------------------- 173 hakank_swi_number_of_days
/*

  Number of days problem (knapsack) in SWI Prolog

  From Nathan Brixius
  "Solving a Knapsack problem with Solver Foundation and LINQ"
  http://blogs.msdn.com/natbr/archive/2010/05/06/solving-a-knapsack-problem-with-solver-foundation-and-linq.aspx
 """
  Let's say I have this list of days and prices:

    List<ReservationPrice> prices = new List<ReservationPrice>(); 
    prices.Add(new ReservationPrice { NumberOfDays = 1, Price = 1000 }); 
    prices.Add(new ReservationPrice { NumberOfDays = 2, Price = 1200 }); 
    prices.Add(new ReservationPrice { NumberOfDays = 3, Price = 2500 }); 
    prices.Add(new ReservationPrice { NumberOfDays = 4, Price = 3100 }); 
    prices.Add(new ReservationPrice { NumberOfDays = 7, Price = 4000 }); 

  What I would like to able to do now is: give me the best price 
  from the list based on a number of days.

  So if ask for 3 days the best price from the list is from child one 
  (1000) and two (1200), but there are of course different combinations. 
  How would an algorithm that found the best price from this list 
  look like ?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        data(Days,Costs),
        writeln(days=Days),
        writeln(costs=Costs),
  
        sum(Days,#=,MaxDays),
        writeln(maxDays=MaxDays),

        %% Calculate the best deal for all days from 1..17
        findall([D,X,TotalCost],
                (between(1,MaxDays,D),
                 once(number_of_days(Days,Costs,D,X,TotalCost))
                ),
                L),
        maplist(writeln,L),
        nl.

number_of_days(Days,Costs,NumDays,X,TotalCost) :-
        sum(Days,#=,MaxDays),
        sum(Costs,#=,MaxCost),
        Days ins 1..MaxDays,
        TotalCost in 1..MaxCost,
        length(Days,Len),
        
        length(X,Len),
        X ins 0..1,
        scalar_product(Days,X,#=,NumDays),
        scalar_product(Costs,X,#=, TotalCost),
        
        labeling([min(TotalCost)], X).
         

data(Days,Cost) :- 
        Days = [1,2,3,4,7],
        Cost = [1000,1200,2500,3100,4000].
:- initialization(go).
%--------------------------------------------------------- 174 hakank_swi_nvalue
/*

  (Decomposition of) global constraint nvalue in SWI Prolog

  From MiniZinc:
  """
  Requires that the number of distinct values in 'x' is 'n'.
  """

  Note:
  
  nvalue/2 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   Len = 5,
   length(X, Len),
   X ins 1..Len,
   N in 1..Len,      

   nvalue(N,X),

   %% Some extra constraints
   % N #= 4,
   % increasing(X),

   flatten([X,N],Vars),
   labeling([],Vars),

   writeln([n=N, x=X]),
   fail,
   nl.

go.

:- initialization(go).
%-------------------------------------------------------- 175 hakank_swi_nvalues
/*

  (Decomposition of) global constraint nvalues in SWI Prolog

  Reference: 
  Clobal Constraint Catalog
  http://www.emn.fr/x-info/sdemasse/gccat/Cnvalues.html
  """
  Purpose
 
      Let N be the number of distinct values assigned to the variables of the 
      VARIABLES collection. Enforce condition N <RELOP> LIMIT to hold.
 
  Example
      (<4,5,5,4,1,5>,=,3)
 
      The nvalues constraint holds since the number of distinct values occurring within 
      the collection 4,5,5,4,1,5 is equal (i.e., RELOP is set to =) to its 
      third argument LIMIT=3.
  """

  Note:
  nvalues/3 is defined in http://hakank.org/swi_prolog/hakank_utils.pl
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   Len = 5,
   length(X,Len),
   X ins 1..Len,
   N in 1..Len,      

   %% It's better to fix N,
   %% otherwise the same X may yield many
   %% solutions when op is not #=.
   N #= 3,

   %% Ensure that there are atmost N distinct values in X
   nvalues(X,#=<,N),
   
   nvalue(N2,X), % Check: how many different values was it?

   flatten([X,N],Vars),
   labeling([],Vars),

   writeln([n=N, n2=N2, x=X]),
   fail,
   nl.

go.

:- initialization(go).
%-------------------------------------------------------- 176 hakank_swi_olympic
/*

  Olympic puzzle in SWI Prolog

  Benchmark for Prolog (BProlog)
  """
    File   : olympic.pl
    Author : Neng-Fa ZHOU
    Date   : 1993
 
    Purpose: solve a puzzle taken from Olympic Arithmetic Contest
 
     Given ten variables with the following configuration:
 
                 X7   X8   X9   X10
 
                    X4   X5   X6
 
                       X2   X3             
 
                          X1
 
    We already know that X1 is equal to 3 and want to assign each variable
    with a different integer from {1,2,...,10} such that for any three
    variables 
                        Xi   Xj
 
                           Xk
    the following constraint is satisfied:
 
                      |Xi-Xj| = Xk
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall(_, (olympic(Vars),print_olympic(Vars)),_),
        nl.


olympic(Vars) :-

   Vars=[X1,X2,X3,X4,X5,X6,X7,X8,X9,X10],
   Vars ins 1..10,

   all_different(Vars),

   X1 #= 3,
   minus(X2,X3,X1),
   minus(X4,X5,X2),
   minus(X5,X6,X3),
   minus(X7,X8,X4),
   minus(X8,X9,X5),
   minus(X9,X10,X6),

   labeling([ff], Vars).


print_olympic([X1,X2,X3,X4,X5,X6,X7,X8,X9,X10]) :-
   format("~d  ~d  ~d ~d\n",[X7,X8,X9,X10]),
   format("  ~d  ~d  ~d\n",[X4,X5,X6]),
   format("    ~d  ~d\n",[X2,X3]),
   format("      ~d\n",[X1]),
   nl.


minus(X, Y, Z) :-
   Z #= abs(X-Y).
:- initialization(go).
%--------------------------------------------------- 177 hakank_swi_organize_day
/*

  Organize a day in SWI Prolog

  From Andy King: "(Finite domain) constraint logic programming"
  https://eclipseclp.org/reports/eclipse.ppt
  (Slide 38: "How to organise your day")
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   TasksStr = ["Work","Mail","Shop","Bank"],
   length(TasksStr,N),
   
   length(Begins,N),
   Begins ins 9..17,
   length(Ends,N),
   Ends ins 9..17,

   durations(Durations),
   before_tasks(BeforeTasks), 

   findall([Begins,Ends], organize(Durations,BeforeTasks,Begins, Ends),L),
   forall(member([BB,EE],L),
          (
           forall(between(1,N,Task),
                   (
                    nth1(Task,TasksStr,S),
                    nth1(Task,BB,B),
                    nth1(Task,EE,E),
                    format("~w: ~d .. ~d~n",[S,B,E])
                    )
                 ),
           nl
          )
         ),
   nl.


organize(Durations,BeforeTasks,Begins,Ends) :-

   maplist(begin_plus_duration,Begins,Durations,Ends),
   
   %% no_overlaps
   serialized(Begins,Durations),

   % handle precendeces
   maplist(precedence(Begins,Ends),BeforeTasks),
   
   % Work >= 11 a clock
   element(1,Begins,Begins1),
   Begins1 #>= 11,
   
   flatten([Begins,Ends],Vars),

   label(Vars).


begin_plus_duration(Begin,Duration,End) :-
        End #= Begin + Duration.

precedence(Begins,Ends,[A,B]) :-
        element(A,Ends,EndsA),
        element(B,Begins,BeginsB),
        EndsA #=< BeginsB.

   
% duration of the four tasks
durations(Durations) :-
        Durations = [4,1,2,1].

% precedences
% [A,B] : task A must be completed before task B
before_tasks(Before) :-
        Before = [[4,3],[2,1]].
:- initialization(go).
%------------------------------------------------------- 178 hakank_swi_p_median
/*

  P-median problem in SWI Prolog

  Model and data from the OPL Manual, which describes the problem:
  """
  The P-Median problem is a well known problem in Operations Research. 
  The problem can be stated very simply, like this: given a set of customers 
  with known amounts of demand, a set of candidate locations for warehouses, 
  and the distance between each pair of customer-warehouse, choose P 
  warehouses to open that minimize the demand-weighted distance of serving 
  all customers from those P warehouses.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        data(1,Customers,Warehouses,Demand,Distance,P),
        print_p_median(Customers,Warehouses,Demand,Distance,P),
        nl.

%%
%% Test all P in 1..3
%%
go2 :-
        data(1,Customers,Warehouses,Demand,Distance,_P),
        between(1,3,P),
        once(print_p_median(Customers,Warehouses,Demand,Distance,P)),
        nl,
        fail,
        nl.
go2.


%%
%% Wrapper
%%
print_p_median(Customers,Warehouses,Demand,Distance,P) :-

        writeln(p=P),
        p_median(Customers,Warehouses,Demand,Distance,P, OpenWarehouse,ShipToCustomer,Z),

        length(Customers,NumCustomers),
        length(Warehouses,NumWarehouses),

        writeln(z=Z),

        %% Which warehouses are open?
        writeln(openWarehouse=OpenWarehouse),
        findall(OpenW,(between(1,NumWarehouses,W),
                       element(W,OpenWarehouse,1),
                       nth1(W,Warehouses,OpenW)
                       ),
                Open),
        maplist(format("Open: ~w~n"),Open),
        
        %% Which warehouse to which customer?
        findall([Cust,S,WW],
                (between(1,NumCustomers,C),
                 nth1(C,Customers,Cust),
                 nth1(C,ShipToCustomer,S),
                 findall(W,
                         (between(1,NumWarehouses,J),
                          element(J,S,1),
                          nth1(J,Warehouses,W)
                         ),
                         WW)
                ),
                CustSol),
        maplist(format("Customer ~w: ~w ~w~n"),CustSol),
        nl.
        

%%
%% Get the solution
%%
p_median(Customers,Warehouses,Demand,Distance,P, OpenWarehouse,ShipToCustomer,Z) :-

        length(Customers,NumCustomers),
        length(Warehouses,NumWarehouses),
               
        %% decision variables
        length(OpenWarehouse,NumWarehouses),
        OpenWarehouse ins 0..1,
        
        new_matrix(NumCustomers,NumWarehouses,0..1,ShipToCustomer),
        
        maplist(sumz,Demand,Distance,ShipToCustomer,Zs),
        sum(Zs,#=,Z),
        
        maplist(sum_ship_to_customer,ShipToCustomer),
        
        sum(OpenWarehouse,#=,P),

        transpose(ShipToCustomer,ShipToCustomerT),
        maplist(check_open,ShipToCustomerT,OpenWarehouse),
        
        flatten([OpenWarehouse,ShipToCustomer],Vars),
        labeling([min(Z)],Vars).


sumz(Demand,Distance,ShipToCustomer, Zs) :-
        scalar_product(Distance,ShipToCustomer,#=,T1),
        Zs #= Demand*T1.

sum_ship_to_customer(ShipToCustomer) :-
        sum(ShipToCustomer,#=,1).

check_open(ShipToCustomer,OpenWarehouse) :-
        maplist(check_open_(OpenWarehouse),ShipToCustomer).

check_open_(O,S) :-
        S #=< O.


data(1,Customers,Warehouses,Demand,Distance,P) :-
        Customers = ["Albert","Bob","Chris","Daniel"],
        Warehouses = ["Santa Clara", "San Jose", "Berkeley"],
        Demand = [100,80,80,70],
        Distance = [[2, 10, 50],
                    [2, 10, 52],
                    [50, 60,  3],
                    [40, 60,  1]],
        P = 2.
:- initialization(go).
%------------------------------------------- 179 hakank_swi_pair_divides_the_sum
/*

  Pair divides the sum puzzle in SWI Prolog

  From comp.lang.prolog
  """
  Date: Sat, Feb 28 2009 3:55 am
  From: Nick Wedd

  Here is a puzzle which I found surprisingly easy to program Prolog to
  generate solutions to.  If any of you teach Prolog to students, you
  might use it as an example (like the goat-wolf-cabbage thing).

  Find a set of four distinct positive integers such that, for every pair
  of them, their difference divides their sum.

  Find lots of such sets.

  As above, but sets of five distinct positive integers.
  
  As above, but sets of six ...
  """

  (This is a port of my B-Prolog model
   http://www.hakank.org/bprolog/pair_divides_the_sum.pl  
   which was a port of my MiniZinc model:
   http://www.hakank.org/minizinc/pair_divides_the_sum.mzn
  )

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        MaxVal = 100,
        findall([X,Z], (problem(4,MaxVal,X,Z),writeln(X=Z)), L),
        length(L,Len),
        writeln(len=Len),
                
        nl.

go2 :-
        MaxVal = 100,
        between(1,7,N),
        time(findall(_,(problem(N,MaxVal,_X,_Z)),L)),
        length(L,Len),
        writeln(N=Len),
        fail,
        nl.

go2.

%
% There are no solutions for 8 or 9 (for MaxVal=100)
%
problem(N, MaxVal, X, Z) :-
       
        length(X, N),
        X ins 1..MaxVal,

        % MaxValN #= MaxVal*N,
        % Z in N..MaxValN,

        all_different(X),
        increasing(X),

        sum(X,#=,Z),
        Z mod N #= 0,
        %%  foreach(I in 1..N, J in I+1..N, Z mod abs(X[I]-X[J]) #= 0),
        findall(I,
                between(1,N,I),
                Is),
        maplist(check(N,X,Z),Is),
        
        flatten([X,Z], Vars),
        labeling([ffc,enum], Vars).
                

%%  foreach(I in 1..N, J in I+1..N, Z mod abs(X[I]-X[J]) #= 0),
check(N,X,Z,I) :-
        element(I,X,XI),
        I1 #= I+1,
        (
         I1 #< N
        -> 
         numlist(I1,N,Js),
         maplist(check_mod(Z,X,XI),Js)
        ;
         true
        ).

check_mod(Z,X,XI,J) :-
        element(J,X,XJ),
        Z mod abs(XI-XJ) #= 0.
:- initialization(go).
%--------------------------------------------- 180 hakank_swi_pandigital_numbers
/*

  Pandigital numbers in SWI Prolog

  From
  Albert H. Beiler "Recreations in the Theory of Numbers", quoted from
  http://www.worldofnumbers.com/ninedig1.htm
  """
  [ Chapter VIII : Digits - and the magic of 9 ]
  [ I found the same exposé in Shakuntala Devi's book
    "Figuring : The Joy of Numbers" ]

  The following curious table shows how to arrange the 9 digits so that
  the product of 2 groups is equal to a number represented by the
  remaining digits."

    12 x 483 = 5796
    42 x 138 = 5796
    18 x 297 = 5346
    27 x 198 = 5346
    39 x 186 = 7254
    48 x 159 = 7632
    28 x 157 = 4396
    4 x 1738 = 6952
    4 x 1963 = 7852
  """

  See also

  * MathWorld http://mathworld.wolfram.com/PandigitalNumber.html
  """
  A number is said to be pandigital if it contains each of the digits
  from 0 to 9 (and whose leading digit must be nonzero). However,
  "zeroless" pandigital quantities contain the digits 1 through 9.
  Sometimes exclusivity is also required so that each digit is
  restricted to appear exactly once.
  """

  * Wikipedia http://en.wikipedia.org/wiki/Pandigital_number



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall([X1,X2,X3], pandigital([X1,X2,X3]),L),
        length(L,Len),
        writeln(len=Len).

%%
%% X1 * X2 #= X3
%%
pandigital([X1,X2,X3]) :-
        
        %
        % length of numbers
        %
        Len1 in 1..2,
        Len2 in 3..4,
        Len3 #= 4,

        Len1 #=< Len2, % symmetry breaking
        Len1 + Len2 + Len3 #= 9,
        
        indomain(Len1),

        % set length of lists
        length(X1,Len1),
        X1 ins 1..9,

        length(X2,Len2),
        X2 ins 1..9,

        length(X3,Len3), % the result
        X3 ins 1..9,

        % convert to number
        Base #= 10,
        to_num(X1, Base, Num1),
        to_num(X2, Base, Num2),
        to_num(X3, Base, Res),

        % calculate result
        Num1 * Num2 #= Res,

        flatten([X1,X2,X3],Vars),
        all_different(Vars),

        % search
        label(Vars),

        format("~t~d~5| * ~t~d~12| = ~t~d~19|\n",[Num1,Num2,Res]).
:- initialization(go).
%----------------------------------------------------------- 181 hakank_swi_pert
/*

  Simple PERT model in SWI Prolog

  From Pascal van Hentenryck 
  "Scheduling and Packing In the Constraint Language cc(FD)", page 7f
  http://citeseer.ist.psu.edu/300151.html

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        MaxTime = 30,
        times(Times),
        dependencies(Dependencies),
        pert(Dependencies,Times,MaxTime, Start,SEnd,SumTimes),

        writeln(sEnd=SEnd),
        writeln(start_times=Start),
        writeln(sum_times=SumTimes),
        nl.

pert(Dependencies,Times,MaxTime, Start,SEnd,SumTimes) :-
        
        length(Times,N),

        length(Start,N),
        Start ins 0..MaxTime,   
        maplist(check_dependencies(Start,Times),Dependencies),
        
        element(N,Start,SEnd),
        sum(Start,#=,SumTimes),

        labeling([min(SEnd)], Start).
        

check_dependencies(Start,Times,[D1,D2]) :-
        element(D1,Start,StartD1),
        element(D2,Start,StartD2),
        element(D2,Times,TimesD2),
        StartD1 #>= StartD2 + TimesD2.


% Times for each action
%                        a  b  c  d  e  f  g  h  j  k  Send 
times(Times) :- Times = [7, 3, 1, 8, 1, 1, 1, 3, 2, 1, 1].

% Dependencies
% Note: There is no Si
dependencies(Dependencies) :-
        Dependencies =
        [[2,1],  % Sb >= Sa + 7
         [4,1],  % Sd >= Sa + 7
         [3,2],  % Sc >= Sb + 3
         [5,3],  % Se >= Sc + 1
         [5,4],  % Se >= Sd + 8
         [7,3],  % Sg >= Sc + 1
         [7,4],  % Sg >= Sd + 8
         [6,4],  % Sf >= Sd + 8
         [6,3],  % Sf >= Sc + 1
         [8,6],  % Sh >= Sf + 1
         [9,8],  % Sj >= Sh + 3
         [10,7], % Sk >= Sg + 1
         [10,5], % Sk >= Se + 1
         [10,9], % Sk >= Sj + 2
         [11,10] % Send >= Sk + 1
        ].
        
:- initialization(go).
%-------------------------------------------------- 182 hakank_swi_photo_problem
/*

  Photo problem in SWI Prolog

  Problem statement from Mozart/Oz tutorial:
  http://www.mozart-oz.org/home/doc/fdt/node37.html#section.reified.photo
  """
  Betty, Chris, Donald, Fred, Gary, Mary, and Paul want to align in one row for 
  taking a photo. Some of them have preferences next to whom they want to stand:
 
     1. Betty wants to stand next to Gary and Mary.
     2. Chris wants to stand next to Betty and Gary.
     3. Fred wants to stand next to Mary and Donald.
     4. Paul wants to stand next to Fred and Donald.
 
  Obviously, it is impossible to satisfy all preferences. Can you find an alignment that maximizes the number of satisfied preferences?
  """

  Oz solution: 
    6 # alignment(betty:5  chris:6  donald:1  fred:3  gary:7   mary:4   paul:2)
  [5, 6, 1, 3, 7, 4, 2]
  
   
  There are 8 solutions:
 
  positions = [3, 1, 6, 5, 2, 4, 7]
  positions = [3, 1, 7, 5, 2, 4, 6]
  positions = [3, 2, 6, 5, 1, 4, 7]
  positions = [3, 2, 7, 5, 1, 4, 6]
  positions = [5, 6, 1, 3, 7, 4, 2]  (the Oz solution.)
  positions = [5, 6, 2, 3, 7, 4, 1]
  positions = [5, 7, 1, 3, 6, 4, 2]
  positions = [5, 7, 2, 3, 6, 4, 1]



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Show optimal solution,
%%
go :-
        between(1,3,P),
        time(once(photo(P,Positions,Z))),
        writeln(z=Z),
        writeln(positions=Positions),
        nl,
        fail,
        nl.
go.

%%
%% Show all optimal solutions for problem 1.
%% (Problem 2 seems to be too big.)
%%
go2 :-
        time(once(photo(1,Positions,Z))),
        writeln(z=Z),
        writeln(positions=Positions),
        findall(Positions2,photo(1,Positions2,Z),L),
        maplist(writeln,L),
        length(L,Len),
        writeln(len=Len),
        nl.
       

photo(Problem,Positions,Z) :-

   format("Problem ~d\n",[Problem]),

   preferences(Problem, N, Preferences), % get the problem

   %% positions, decision variables
   length(Positions,N),
   Positions ins 1..N,

   all_different(Positions),
   maplist(check_preferences(Positions),Preferences,Scores),
   
   %% number of fullfilled preferences
   Z in 0..N,
   sum(Scores,#=,Z), 

   %% Z #>= 6, % for Problem 1
   %% Z #>= 12, % for Problem 2

   flatten([Positions,Scores],Vars),
   (var(Z)
   ->
    labeling([max(Z)],Vars)
   ;
    labeling([],Vars)
   ).

%%
%% Preferences: If P1 and P2 are beside each other,
%% then we score 1 point (otherwise 0)
%%
check_preferences(Positions,[Pref1,Pref2],Score) :-
        element(Pref1,Positions,P1),
        element(Pref2,Positions,P2),
        Score in 0..1,
        Score #=1  #<==> abs(P1-P2) #= 1.

%
% Problem 1 (see above):
% 1. Betty wants to stand next to Gary and Mary.
%     1 : 5, 6
% 2. Chris wants to stand next to Betty and Gary.
%     2 : 1, 5
% 3. Fred wants to stand next to Mary and Donald.
%     4 : 6, 3
% 4. Paul wants to stand next to Fred and Donald.
%     7 : 4, 3
%
% preferences(ProblemNumber, NumberOfPersons, Preferences)
preferences(1, N, Preferences) :- 
        N = 7,
        Preferences = 
        [[1,5],
         [1,6],
         [2,1],
         [2,5],
         [4,6],
         [4,3],
         [7,4],
         [7,3]].


% From http://www.g12.cs.mu.oz.au/minizinc/photo.data2
preferences(2, N, Preferences) :- 
        N = 11, 
        Preferences = 
        [[1,3], 
         [1,5], 
         [1,8], 
         [2,5], 
         [2,9], 
         [3,4], 
         [3,5], 
         [4,1], 
         [4,5], 
         [4,10],
         [5,6], 
         [5,1], 
         [6,1], 
         [6,9], 
         [7,3],
         [7,8], 
         [8,9],
         [8,7], 
         [9,10], 
         [10,11]].


% From http://www.ampl.com/NEW/LOGIC/EXAMPLES/photo9.dat
% (This seems to be a simplified version of problem #2)
preferences(3, N, Preferences) :- 
        N = 9, 
        Preferences = 
        [[1,3], 
         [1,5], 
         [1,8], 
         [2,5], 
         [2,9], 
         [3,4], 
         [3,5], 
         [4,1], 
         [4,5], 
         [5,1], 
         [5,6], 
         [6,1], 
         [6,9], 
         [7,3],
         [7,8], 
         [8,7],
         [8,9]].
:- initialization(go).
%---------------------------------------------------- 183 hakank_swi_pigeon_hole
/*

  Pigeon hole problem in SWI Prolog

  From
  ftp://ftp.inria.fr/INRIA/Projects/contraintes/publications/CLP-FD/plilp94.html
  """
  pigeon: the pigeon-hole problem consists in putting n pigeons in m pigeon-holes 
  (at most 1 pigeon per hole). The boolean formulation uses n - m variables to 
  indicate, for each pigeon, its hole number. Obviously, there is a 
  solution iff n <= m.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :- 
        N = 3, %% N pigeons
        M = 10,%% 10 %% M pigeon holes     
        wrapper(N,M),
        nl.


%% This is an impossible problem (M < N)
go2 :-
        N = 5, %% N pigeons
        M = 4, %% M pigeon holes
        wrapper(N,M).


wrapper(N,M) :-
        writeln([n=N,m=M]),
        findall(P, pigeon_hole(N,M, P),L),
        length(L,Len),
        maplist(writeln,L),
        format("It was ~d solutions.~n", Len).

pigeon_hole(N,M, PigeonHoles) :-
        %% N pigeons at M pigeon holes
        new_matrix(N,M,0..1, PigeonHoles),
        
        %% all pigeon must be placed and only at one hole (rows)
        maplist(sums(#=,1),PigeonHoles),
        
        %% max 1 pigeon per pigeon hole (columns)
        transpose(PigeonHoles,PigeonHolesT),
        maplist(sums(#=<,1),PigeonHolesT),        

        
        flatten(PigeonHoles,Vars),
        labeling([],Vars).


pretty_print(X) :-
        writeln(pretty_print(X)),
        maplist(writeln,X),
        nl.

sums(Rel,Value,L) :-
        sum(L,Rel,Value).
:- initialization(go).
%-------------------------------------------- 184 hakank_swi_place_number_puzzle
/*

  Place number puzzle in SWI Prolog

  http://ai.uwaterloo.ca/~vanbeek/Courses/Slides/introduction.pdf
  """
  Place numbers 1 through 8 on nodes
  - each number appears exactly once
  - no connected nodes have consecutive numbers
       2 - 5 
     / | X | \
   1 - 3 - 6 - 8
     \ | X | /
       4 - 7
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
    findall(X,place_number_puzzle(X),L),
    writeln(L),
    nl.

place_number_puzzle(X) :-

        graph(Graph),
        N #= 8,
        length(X,N),
        X ins 1..N,
        
        all_distinct(X),

        %% Ensure that two neighbours are not consecutive.
        maplist(constraint(X),Graph),

        %% symmetry breaking
        element(1,X,X1),
        element(N,X,XN),
        X1 #< XN,
        
        labeling([ffc,enum],X).


graph(Graph) :-
        Graph = 
        [[1,2], [1,3], [1,4],
         [2,1], [2,3], [2,5], [2,6],
         [3,2], [3,4], [3,6], [3,7],
         [4,1], [4,3], [4,6], [4,7],
         [5,2], [5,3], [5,6], [5,8],
         [6,2], [6,3], [6,4], [6,5], [6,7], [6,8],
         [7,3], [7,4], [7,6], [7,8],
         [8,5], [8,6], [8,7]].
              
% abs(X[Graph[I,1]]-X[Graph[I,2]) #> 1
constraint(X,Node) :-
        element(1,Node,E1),
        element(E1,X,X1),
        
        element(2,Node,E2),
        element(E2,X,X2),
        
        abs(X1-X2) #> 1.
:- initialization(go).
%----------------------------------------------------- 185 hakank_swi_pythagoras
/*

  Pythagoras problem in SWI Prolog



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go:- 
        findall([A^2+B^2=C^2],pythagoras([A,B,C], 100),L), 
        maplist(writeln,L),
        nl.

pythagoras(LD, Max):-
        
     LD = [A,B,C],
     LD ins 1..Max,
     
     A^2 + B^2 #= C^2,
     
     A #=< B,
     B #=< C,
     
     labeling([ffc,bisect,down],LD).
:- initialization(go).
%------------------------------------------ 186 hakank_swi_quasigroup_completion
/*

  Quasigroup Completion problem in SWI Prolog

  See 
  Carla P. Gomes and David Shmoys:
  "Completing Quasigroups or Latin Squares: Structured Graph Coloring Problem"
  
  See also
  Ivars Peterson "Completing Latin Squares"
  http://www.maa.org/mathland/mathtrek_5_8_00.html
  """
  Using only the numbers 1, 2, 3, and 4, arrange four sets of these 
  numbers into a four-by-four array so that no column or row contains 
  the same two numbers. The result is known as a Latin square.
  ...
  The so-called quasigroup completion problem concerns a table that is 
  correctly but only partially filled in. The question is whether the 
  remaining blanks in the table can be filled in to obtain a complete 
  Latin square (or a proper quasigroup multiplication table).
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        quasigroup_completion(1),
        fail,
        nl.

go2 :-
        between(0,9,P),
        writeln(problem:P),
        time(once(quasigroup_completion(P))),
        fail,
        nl.

go2.

quasigroup_completion(Id) :- 
        problem(Id,Problem),
        length(Problem, N),

        domain_matrix(Problem, 1..N),

        % Latin square
        maplist(all_distinct,Problem),
        transpose(Problem, Transposed),
        maplist(all_distinct,Transposed),
        
        flatten(Problem, Vars),
        label(Vars),        
        print_matrix(Problem),
        nl.

%
% Ensure that all the unknowns are in 1..N.
%
domain_matrix([],_).
domain_matrix([L1|LRest],Domain) :-
        L1 ins Domain,
        domain_matrix(LRest, Domain).

% Nice print of a matrix.
print_matrix(Matrix) :-
        maplist(writeln,Matrix),
        nl.


% Just testing
problem(0, A) :-
        A = [[1,2,_],
             [2,3,1],
             [3,1,2]].

%
% Example from Ruben Martins and InÃ¨s Lynce
% Breaking Local Symmetries in Quasigroup Completion Problems, page 3
% The solution is unique:
% 1 3 2 5 4
% 2 5 4 1 3
% 4 1 3 2 5
% 5 4 1 3 2
% 3 2 5 4 1
%
problem(1, A) :- 
        A= [[1, _, _, _, 4],  
            [_, 5, _, _, _],
            [4, _, _, 2, _],
            [_, 4, _, _, _],
            [_, _, 5, _, 1]].


%
% Example from Gomes & Shmoys, page 3.
% Solution:
% 4 1 2 3
% 2 3 4 1
% 1 4 3 2
% 3 2 1 4
%
problem(2, A) :- 
        A = [[_, 1, 2, 3],
            [2, _, 4, 1], 
            [1, 4, _, 2],
            [3, _, 1, _]].

% Example from Gomes & Shmoys, page 7
% Two solutions.
%
problem(3, A) :- 
       A = [[_, 1, _, _],
            [_, _, 2, _],
            [_, 3, _, _],
            [_, _, _, 4]].


%
% Example from Global Constraint Catalogue
% http://www.emn.fr/x-info/sdemasse/gccat/sec2.7.108.html
%
% 12 solutions.
%
problem(4, A) :- 
        A= [[1, _, _, _],
            [_, _, _, 3],
            [3, _, _, _],
            [_, _, _, 1]].


%
% Problem from http://www.cs.cornell.edu/gomes/QUASIdemo.html
% (n = 10]
% Pattern #1. 
% There are _many_ solutions to this problem.
%
problem(5, A) :- 
      A = [[_,_,_,1,_,_,_,_,_,_],
            [_,_,1,_,_,_,_,_,_,_],
            [_,1,_,_,_,2,_,_,_,_],
            [1,_,_,_,2,_,_,_,_,_],
            [_,_,_,2,1,_,_,_,_,_],
            [_,_,2,_,_,1,_,_,_,_],
            [_,_,_,_,_,_,1,_,_,_],
            [_,_,_,_,_,_,_,1,_,2],
            [_,_,_,_,_,_,_,_,2,_],
            [_,_,_,_,_,_,_,2,_,_]].


%
% Problem from http://www.cs.cornell.edu/gomes/QUASIdemo.html
% (n = 10]
% Pattern #2. 
% There are _many_ solutions to this problem.
%
problem(6, A) :- 
       A = [[_,_,1,2,3,4,_,_,_,_],
            [_,1,2,3,_,_,4,_,_,_],
            [1,2,3,_,_,_,_,4,_,_],
            [2,3,_,_,_,_,_,_,4,_],
            [3,_,_,_,_,_,_,_,_,4],
            [5,6,_,_,_,_,_,_,_,_],
            [_,5,6,_,_,_,_,_,_,_],
            [_,_,5,6,_,_,_,_,_,_],
            [_,_,_,5,6,_,_,_,_,_],
            [_,_,_,_,5,6,_,_,_,_]].


%
% Problem from http://www.cs.cornell.edu/gomes/QUASIdemo.html
% (n = 10]
% Pattern #3. 
% Coding:
%    dark red   = 1
%    light blue = 2 
%    dark blue  = 3 
%    light red  = 4
%    brown      = 5
%    green      = 6
%    pink       = 7
%    grey       = 8
%    black      = 9
%    yellow     = 10    
% There are 40944 solutions for this pattern.
%
problem(7, A) :- 
       A = [[_, _, 1, 5, 2, 6, 7, 8, _, _],
            [_, 1, 5, 2, _, _, 6, 7, 8, _],
            [1, 5, 2, _, _, _, _, 6, 7, 8],
            [5, 2, _, _, _, _, _, _, 6, 7],
            [2, _, _, _, _, _, _, _, _, 6],
            [4,10, _, _, _, _, _, _, 3, 9],
            [_, 4,10, _, _, _, _, 3, 9, _],
            [_, _, 4,10, _, _, 3, 9, _, _],
            [_, _, _, 4,10, 3, 9, _, _, _], 
            [ _, _, _, _, 4,9, _, _, _, _]].


%
% Problem from http://www.cs.cornell.edu/gomes/QUASIdemo.html
% (n = 10]
% Pattern #4. 
%  dark red   = 1
%  light blue = 2
%  dark blue  = 3
%  light red  = 4
% Note: There are no solutions to this problem.
%
problem(8, A) :- 
       A = [[1,_,_,_,_,_,_,_,_,_],
            [2,1,_,_,_,_,_,_,_,4],
            [3,2,1,_,_,_,_,_,4,_],
            [_,3,2,1,_,_,_,4,_,_],
            [_,_,3,2,1,_,4,_,_,_],
            [_,_,_,3,2,1,_,_,_,_],
            [_,_,_,_,3,2,1,_,_,_],
            [_,_,_,4,_,3,2,1,_,_],
            [_,_,4,_,_,_,3,2,1,_],
            [_,4,_,_,_,_,_,3,2,1]].


%
% Problem from http://www.cs.cornell.edu/gomes/QUASIdemo.html
% (n = 10]
% Pattern #5
% Note: There are no solutions to this problem.
%
problem(9, A) :- 
       A = [[_,_,_,_,_,_,_,_,_,1],
            [_,_,_,_,_,_,_,_,1,_],
            [_,_,_,_,_,_,_,1,_,_],
            [_,_,_,_,_,_,2,_,_,_],
            [_,_,_,_,_,1,_,_,_,_],
            [_,_,_,_,1,_,_,_,_,_],
            [_,_,_,1,_,_,_,_,_,_],
            [_,_,1,_,_,_,_,_,_,_],
            [_,1,_,_,_,_,_,_,_,_],
            [1,_,_,_,_,_,_,_,_,_]].
:- initialization(go).
%--------------------------------------------------------- 187 hakank_swi_queens
/*

  N-Queens problem in SWI Prolog

  See https://en.wikipedia.org/wiki/Eight_queens_puzzle

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 8,
        time(findall(Q, queens1(N,Q),L)),
        length(L, Len),
        writeln(L),
        writeln(len=Len),
        nl.

%
% [n=8,queens1]
% [1,5,8,6,3,7,2,4]
% N=8 Time 0.04s
%
% [n=12,queens1]
% [1,3,5,11,8,10,12,4,2,7,9,6]
% N=12 Time 0.13s
%
% [n=20,queens1]
% [1,3,5,14,17,4,16,7,12,18,15,19,6,10,20,11,8,2,13,9]
% N=20 Time 0.58s
%
% [n=50,queens1]
% [1,3,5,22,41,4,34,7,33,42,49,46,6,31,36,28,8,29,35,30,27,14,9,37,32,13,47,50,24,10,45,40,48,39,44,2,19,11,43,15,25,38,20,23,26,16,12,17,21,18]
% N=50 Time 21.74s
%
% [n=100,queens1]
% [1,3,5,57,59,4,64,7,58,71,81,60,6,91,82,90,8,83,77,65,73,26,9,45,37,63,66,62,44,10,48,54,43,69,42,47,18,11,72,68,50,56,61,36,33,17,12,51,100,93,97,88,35,84,78,19,13,99,67,76,92,75,87,96,94,85,20,14,95,32,98,55,40,80,49,52,46,53,21,15,41,2,27,34,22,70,74,29,25,30,38,86,16,79,24,39,28,23,31,89]
% N=100 Time 136.06s
%
% [skipping the rest of Ns]
go2 :-
        test_queens([8,12,20,50,100,200,500,1000],queens1),
        nl.

go3 :-
        N = 8,
        % time(once(queens3(N,Q))),
        % writeln(Q),
        time(findall(Q, queens1(N,Q),L)),
        length(L, Len),
        writeln(L),
        writeln(len=Len),
        nl.


go4 :-
        test_queens([8,12,20,50,100,200,500,1000],queens3),
        nl.

%%
%% compare queens3 and queens1 (queens3 is much faster)
%%
go5 :-
        member(P,[queens3,queens1]),
        test_queens([8,12,20,50,100], P),
        fail,
        nl.


queens1(N, Q) :- 
        length(Q, N),
        Q ins 1..N,
        findall([I,J], (between(1,N,I), between(1,N, J), I < J), Ixs),
        queens1_(Ixs, Q),
        labeling([ffc,enum], Q).

queens1_([],_Q).
queens1_([[I,J]|IJs],Q) :-
        element(I,Q,QI),
        element(J,Q,QJ),
        QI #\= QJ,
        QI + I #\= QJ + J,
        QI - I #\= QJ - J,
        queens1_(IJs, Q).



%%
%% Using all_distinct/1. Much faster than queens1/2.
%% 
queens3(N, Q) :-
        length(Q, N), 
        Q ins 1..N,
        all_distinct(Q),
        queens3_(Q,1,[],Q1,[],Q2),
        all_distinct(Q1),
        all_distinct(Q2),
        labeling([ffc,enum],Q).

queens3_([],_I,Q1,Q1,Q2,Q2).
queens3_([Q|Qs],I, Q10,[Qminus|Q1],Q20,[Qplus|Q2]) :-
        Qplus #= Q+I,
        Qminus #= Q-I,
        I2 #= I+1,
        queens3_(Qs,I2, Q10,Q1,Q20,Q2).


%%
%% Using findall/3 don't work. 
%%
queens3_findall(N, Q) :-
        length(Q, N), 
        Q ins 1..N,
        NegN #= - N,
        Domain = NegN..N,
        writeln(domain=Domain),
        all_distinct(Q),
        % all_different([$Q[I]-I : I in 1..N]),
        findall(QI1, (between(1,N,I), element(I,Q,QI), QI1#=QI-I), L1),
        
        % L1 ins NegN..N,        
        writeln(l1=L1),        
        print_attrs_list(L1),
        list_domains(L1,L1Domains),
        writeln(l1Domains=L1Domains),
        all_distinct(L1),
        
        % all_different([$Q[I]+I : I in 1..N]),
        findall(QI2, (between(1,N,I), element(I,Q,QI), QI2#=QI+I), L2),
        % L2 ins NegN..N,
        print_attrs_list(L2),
        list_domains(L2,L2Domains),
        writeln(l2Domains=L2Domains),
        all_distinct(L2),
        writeln(L2),

        % Q = [2,4,1,3],
        % append([L1,L2,Q], Vars), % This yields a hugs number of (identical) solutions
        % labeling([],Vars).
        labeling([],Q).

%%
%% Test: Using all_distinct/1 and maplist. Nope, don't work either...
%%
queens2(N, Q) :-
        length(Q, N), 
        Q ins 1..N,
        all_distinct(Q),
        
        numlist(1,N,Is),
        findall(1,between(1,N,_),Ones),
        maplist(q_plus(Q),Is,Ones, Plus),
        all_distinct(Plus),
        
        findall(-1,between(1,N,_),NegativeOnes),
        maplist(q_plus(Q),Is,NegativeOnes, Minus),
        all_distinct(Minus),
        append([Q,Plus,Minus],Vars),
        % append([Q],Vars),
        labeling([ff],Vars).

q_plus(Q,I,Add,Y) :-
        writeln(q_plus(Q,I,Add,Y)),
        element(I,Q,QI),
        Y #= QI + Add.


%%
%% queens(List, QueensPredicate).
%%
%% Test a queens predicate on a list of sizes.
%%
test_queens([], _P).
test_queens([N|Ns], P) :-
        nl,nl,
        writeln([n=N,P]),
        time2(once(call(P, N,Q)),Time),
        writeln(Q),
        format("N=~d Time ~2fs", [N,Time]),
        test_queens(Ns,P).
:- initialization(go).
%-------------------------------------------------------- 188 hakank_swi_rabbits
/*

  Rabbits problem in SWI Prolog

  From Pascal Van Hentenryck "The OPL Optimization Programming Language",
  page 9.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   N = 20,
   NbRabbits in 0..N,
   NbPheasants in 0..N,
   
   20 #= NbRabbits + NbPheasants,
   56 #= 4*NbRabbits + 2*NbPheasants,

   labeling([],[NbRabbits,NbPheasants]),

   writeln(nbRabbits=NbRabbits),
   writeln(nbPheasants=NbPheasants),
   nl.

:- initialization(go).
%-------------------------------------------------------- 189 hakank_swi_regular
/*

  Decomposition of global constraint regular in SWI Prolog

  Here's a description of the transition tables.
  Note that input can never be 0 since it is used for no state.

  Example: regexp 123*21

     Transition = [
       % inputs: 1  2  3 
                [2, 0, 0], % transitions from state 1: -2-> state 2  [start]
                [0, 3, 0], % transitions from state 2: -3-> state 3 % 
                [0, 4, 3], % transitions from state 3: -3-> state 3, -2-> state 4
                [5, 0, 0], % transitions from state 4: -1-> state 5  [final]
                [0, 0, 0]  % transitions from state 5: (none)
                ],
     InitialState = 1,
     AcceptingStates = [5]


  The states are numbered from 1..Transition.length.
  The initial state is in InitialState, i.e. the state Transition[InitialState].
  The columns are the inputs (the column index), e.g. the first state ([2, 0, 0]) 
  means that it only accept a "1" (first column), and then go to state 2 ([0, 3, 0],
  which only accept a "2" (second column) and go to state 3 ([0, 4, 3]) with the
  following meaning:

      - if "1": not accepted
      - if "2": goto state 4
      - if "3": goto state 3 (loop)

  And the DFA now goto through the states. The accepting state in this
  example is only state 5 (AcceptingStates must be a list).

  
  Note: This implementation of regular/6 is a port of my Picat
  implementation (http://hakank.org/picat/regular.pi)
  which is a port of the MiniZinc standard implementation
  - via my or-tools/python version hakank.org/google_or_tools/regular.py
  - via my Comet implementation http://hakank.org/comet/regular.co
  I might have forgot some transition step here :-).


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Testing regexp 123*21
%%
go :-

   dfa(1,Transition,NStates,InputMax,InitialState,AcceptingStates),

   % decision variables
   between(4,10,N),
   writeln(n=N),

   length(X,N),
   X ins 1..3,
   regular(X,NStates,InputMax,Transition,InitialState, AcceptingStates),

   labeling([ff,bisect], X),

   writeln('x  '=X),
   fail,
   nl.

go.




%
% same as go/0 but we also get the state list (A)
% using regular2/7.
%
go1b :-

   dfa(1,Transition,NStates,InputMax,InitialState,AcceptingStates),

   % decision variables
   N in 2..10,
   indomain(N),
   writeln(n=N),

   length(X,N),
   X ins 1..3,

   regular2(X,NStates,InputMax,Transition,InitialState, AcceptingStates,A),

   labeling([ff], X),

   writeln('x  '=X),
   writeln('A  '=A),
   fail,
   nl.

go1b.

%%
%% aa*bb* + cc*
%%
go2 :- 

   dfa(2,Transition,NStates,InputMax,InitialState,AcceptingStates),

   N = 11,

   length(X,N),
   X ins 1..3,

   regular(X,NStates,InputMax,Transition,InitialState, AcceptingStates),

   labeling([ff], X),

   writeln('x  '=X),
   fail,
   nl.


go2.

%%
%% From Choco (see below), dfa(3,...)
%%
go3 :- 

   dfa(3,Transition,NStates,InputMax,InitialState,AcceptingStates),
   N = 10,
   length(X,N),
   X ins 1..3,
   regular(X,NStates,InputMax,Transition,InitialState, AcceptingStates),
   labeling([ff], X),
   writeln('x  '=X),
   fail,
   nl.

go3.

%%
%% All equal constraint
%%
go4 :- 

   dfa(4,Transition,NStates,InputMax,InitialState,AcceptingStates),
   N = 10,
   length(X,N),
   X ins 1..3,

   regular(X,NStates,InputMax,Transition,InitialState, AcceptingStates),

   labeling([ff], X),

   writeln('x  '=X),
   fail,
   nl.

go4.

%%
%% This should be interpreted as:
%%  0{2}1{2,3}2{2}
%% for all permutations of 0,1,and 2.
%% Or rather:
%%  1{2}2{2,3}3{2}
%%
go5 :- 

   dfa(5,Transition,NStates,InputMax,InitialState,AcceptingStates),

   N = 8,
   length(X,N),
   X ins 1..3,

   regular(X,NStates,InputMax,Transition,InitialState, AcceptingStates),

   labeling([ff], X),

   writeln('x  '= X),
   fail,
   nl.

go5.

%%
%% All different.
%% This works in principle (here is n=3), but the automaton will 
%% be forbiddingly large for larger arrays.
%% 
go6 :- 

   dfa(6,Transition,NStates,InputMax,InitialState,AcceptingStates),

   N = 3,
   length(X,N),
   X ins 1..3,

   regular(X,NStates,InputMax,Transition,InitialState, AcceptingStates),

   Vars = X,
   labeling([ff], Vars),

   writeln('x  '=X),
   fail,
   nl.

go6.


%
% same as go6/0 but also exposing A, the state array.
%
go6b :- 

   dfa(6,Transition,NStates,InputMax,InitialState,AcceptingStates),

   N = 3,
   length(X,N),
   X ins 1..3,

   regular2(X,NStates,InputMax,Transition,InitialState, AcceptingStates,A),

   labeling([ff], X),

   writeln('x  '=X),
   writeln('A  '=A),
   nl,
   fail,
   nl.

go6b.



%
% even number of 1s and 2s
%
go7 :- 

   dfa(7,Transition,NStates,InputMax,InitialState,AcceptingStates),

   N = 10,
   length(X,N),
   X ins 1..2,

   regular(X,NStates,InputMax,Transition,InitialState, AcceptingStates),

   labeling([ff], X),

   writeln('x  '=X),
   %%writeln(['1s'=sum([1 : E in X, E =1]),'2s'=sum([1 : E in X, E = 2])]),
   count_occurrences(X,1,Count1s),
   writeln('1s'=Count1s),
   count_occurrences(X,2,Count2s),
   writeln('2s'=Count2s),
   nl,
   fail,
   nl.

go7.


%%
%% Note: The implementation of regular/6 and regular2/7
%% has been placed in hakank_utils.pl
%%

% /*

%   regular(X, Q, S, D, Q0, F)
  
%   This is a translation of MiniZinc's regular constraint (defined in
%   lib/zinc/globals.mzn), via the Comet code refered above.
%   All comments in '"""' are from the MiniZinc code.
  
%   Note: This is a translation of my Picat implementation
%         (http://hakank.org/picat/regular.pi)
%   """
%   The sequence of values in array 'x' (which must all be in the range 1..S)
%   is accepted by the DFA of 'Q' states with input 1..S and transition
%   function 'd' (which maps (1..Q, 1..S) -> 0..Q)) and initial state 'q0'
%   (which must be in 1..Q) and accepting states 'F' (which all must be in
%   1..Q).  We reserve state 0 to be an always failing state.
%   """
  
%   x : IntVar array
%   Q : number of states
%   S : input_max
%   d : transition matrix
%   q0: initial state
%   F : accepting states
  
% */
% regular(X, Q, S, D, Q0, F) :-

%         %% """
%         %% If x has index set m..n-1, then a[m] holds the initial state
%         %% (q0), and a[i+1] holds the state we're in after  processing
%         %% x[i].  If a[n] is in F, then we succeed (ie. accept the string).
%         %% """
%         M = 1,
%         length(X,N),
%         N2 #= N+1,
%         length(A,N2),
%         A ins 1..Q,

%         X ins 1..S, %% """Do this in case it's a var."""

%         element(M,A,AM),
%         AM #= Q0,       %% Set a[0], initial state
        
%         %% MiniZinc's infamous matrix element
%         %%   a[i+1] = d[a[i], x[i]]
%         numlist(1,N,Is),
%         maplist(regular_loop(A,X,D),Is),
        
%         %% member(A[N2], F). %% """Check the final state is in F."""
%         %% A[N2] :: F.       %% """Check the final state is in F."""
%         element(N2,A,AN2),
%         element(_,F,AN2).


% /*

%   regular2/7 is the same as regular/6 but it also returns A, 
%   the state list. This might be handy for debugging or
%   explorations.


% */

% regular2(X, Q, S, D, Q0, F, A) :-

%         %% """
%         %% If x has index set m..n-1, then a[m] holds the initial state
%         %% (q0), and a[i+1] holds the state we're in after  processing
%         %% x[i].  If a[n] is in F, then we succeed (ie. accept the string).
%         %% """
%         M = 1,
%         length(X,N),
%         N2 #= N+1,
%         length(A,N2),
%         A ins 1..Q,

%         X ins 1..S, %% """Do this in case it's a var."""

%         element(M,A,AM),
%         AM #= Q0,       %% Set a[0], initial state
        
%         %% MiniZinc's infamous matrix element
%         %%   a[i+1] = d[a[i], x[i]]
%         numlist(1,N,Is),
%         maplist(regular_loop(A,X,D),Is),
        
%         %% member(A[N2], F). %% """Check the final state is in F."""
%         %% A[N2] :: F.       %% """Check the final state is in F."""
%         element(N2,A,AN2),
%         element(_,F,AN2).


% %%
% %% The matrix element loop
% %%   a[i+1] = d[a[i], x[i]]
% %%
% regular_loop(A,X,D,I) :-
%         element(I,A,AI),
%         element(I,X,XI),
%         I1 #= I+1,
%         element(I1,A,AI1),
%         matrix_element(D,AI,XI,AI1).


%
% DFA examples
%

% regexp 123*21
dfa(1,Transition,NStates,InputMax,InitialState,AcceptingStates) :-
        Transition = [
                      [2, 0, 0], % transitions from state 1: -2-> state 2
                      [0, 3, 0], % transitions from state 2: -3-> state 3 % 
                      [0, 4, 3], % transitions from state 3: -3-> state 3, -2-> state 4
                      [5, 0, 0], % transitions from state 4: -1-> state 5
                      [0, 0, 0]  % transitions from state 5: (none)
                     ],
        NStates = 5,
        InputMax = 3,
        InitialState = 1,
        AcceptingStates = [5].

%
%% This example is from
%% "Handbook of Constraint programming", page 180
%%
%%
%%    ^(c+|a+b+a+){n}$
%%    ^(3+|1+2+1+){n}$
%%
%% Or:  aa*bb* + cc*
%% 
%% "It accepts the strings 'aaabaa' and 'cc', but not 'aacbba'."
%% 
dfa(2,Transition,NStates,InputMax,InitialState,AcceptingStates) :-
        Transition = [ 
                     %% inputs
                     %% 1 2 3 
                       [2,0,5], % 1 start
                       [2,3,0], % 2 loop + next
                       [4,3,0], % 3 next + loop
                       [4,0,0], % 4 loop + end state
                       [0,0,5]  % 5 loop and end state
                     ],
        NStates = 5,
        InputMax = 3,
        AcceptingStates = [4,5],
        InitialState = 1.


%%
%% Example1 from Choco http://www.emn.fr/x-info/choco-solver/doku.php?id=regular
%% 
%% First example
%%        t.add(new Transition(0, 1, 1));
%%        t.add(new Transition(1, 1, 2));
%%        t.add(new Transition(2, 1, 3));
%% 
%%        t.add(new Transition(3, 3, 0));
%%        t.add(new Transition(0, 3, 0));
%% 
dfa(3,Transition,NStates,InputMax,InitialState,AcceptingStates) :-
        Transition = [ 
                       [2, 0, 1], %% 1 
                       [3, 0, 0], %% 2
                       [0, 4, 0], %% 3 
                       [0, 0, 1]  %% 4 
                     ],
        length(Transition,NStates),
        InputMax = 3,
        InitialState = 1,
        AcceptingStates = [4].


%%
%% Example2 from Choco http://www.emn.fr/x-info/choco-solver/doku.php?id=regular
%% 
%% This is an all_equal constraint. The initial_state decides which 
%% values it will be

dfa(4,Transition,NStates,InputMax,InitialState,AcceptingStates) :-
        Transition = [ 
                       [1, 0, 0, 0], %% 1 (start)
                       [0, 2, 0, 0], %% 2
                       [0, 0, 3, 0], %% 3 
                       [0, 0, 0, 4]  %% 4 
                     ],
        length(Transition,NStates),
        InputMax = 4,
        InitialState = 3,
        AcceptingStates = [1,2,3,4].

%%
%% Example3 from Choco http://www.emn.fr/x-info/choco-solver/doku.php?id=regular
%% 
%% This is stretchPath, not regular
%%  lgt.add(new int[]{2, 2, 2}); // stretches of value 2 are exactly of size 2
%%  lgt.add(new int[]{0, 2, 2}); // stretches of value 0 are exactly of size 2
%%  lgt.add(new int[]{1, 2, 3}); // stretches of value 1 are at least of size 2 and at most 3
%%
%% This should be interpreted as:
%%  0{2}1{2,3}2{2}
%% for all permutations of 0,1,and 2.
%% Or rather:
%%  1{2}2{2,3}3{2}
%% for all permutations of 1,2, and 3 since 0 is not allowed as an input value...
%%
dfa(5,Transition,NStates,InputMax,InitialState,AcceptingStates) :-
        Transition = [ 
                       [2, 4, 7], %% 1 (start)
                       [3, 0, 0], %% 2
                       [0, 4, 7], %% 3 (end)
                       [0, 5, 0], %% 4
                       [2, 6, 7], %% 5 (end)
                       [2, 0, 7], %% 6 (end)
                       [0, 0, 8], %% 7
                       [2, 4, 0]  %% 8 (end)
                     ],
        length(Transition,NStates),
        InputMax = 3,
        InitialState = 1,
        AcceptingStates = [3,5,6,8].


%%
%% All different.
%% This works in principle (here is n=3), but the automaton will 
%% be forbiddingly large for larger arrays.
%% 
dfa(6,Transition,NStates,InputMax,InitialState,AcceptingStates) :-
        Transition = [ 
                     %%%%  1   2   3
                       [ 2,  7, 12], %% 1 (start)
                       [ 0,  3,  5], %% 2
                       [ 0,  0,  4], %% 3
                       [ 0,  0,  0], %% 4
                       [ 0,  6,  0], %% 5
                       [ 0,  0,  0], %% 6
                       [ 8,  0, 10], %% 7
                       [ 0,  0,  9], %% 8
                       [ 0,  0,  0], %% 9
                       [11,  0,  0], %% 10
                       [ 0,  0,  0], %% 11
                       [13, 15,  0], %% 12
                       [ 0, 14,  0], %% 13
                       [ 0,  0,  0], %% 14
                       [ 16, 0,  0], %% 15
                       [ 0,  0,  0]  %% 16
                     ],
        length(Transition,NStates),
        InputMax = 3,
        InitialState = 1,
        AcceptingStates = [4,6,9,11,14,16].



%%
%% "Need Regular Expression for Finite Automata: Even number of 1s and Even number of 0s"
%% http://stackoverflow.com/questions/17420332/need-regular-expression-for-finite-automata-even-number-of-1s-and-even-number-o
%%  
%%     Q1 <- 1 -> Q2
%%     ^          ^
%%     |          |
%%     2          2
%%     |          |
%%     v          v
%%     Q4 <- 1 -> Q3
%% 
dfa(7,Transition,NStates,InputMax,InitialState,AcceptingStates) :-
        Transition = [ 
                                %%  1   2
                       [ 2,  4], %% state 1 Q1 start, final
                       [ 1,  3], %% state 2 Q2 
                       [ 4,  2], %% state 3 Q3
                       [ 3,  1]  %% state 4 Q4
                     ],
        length(Transition,NStates),
        InputMax = 2,
        InitialState = 1,
        AcceptingStates = [1].
:- initialization(go).
%----------------------------------------------------- 190 hakank_swi_remainders
/*

  Remainder problem in SWI Prolog

  """
  11.  Is there a number which when divided by 3 gives a remainder of 1;
  when divided by 4, gives a remainder of 2; when divided by 5, gives a
  remainder of 3; and when divided by 6, gives a remainder of 4?
  (Kordemsky)
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :- findall(X,solve(X,10000),L),writeln(L).

solve(X,Max) :-
        [X,A,B,C,D] ins 1..Max,
        X #> 0,
        X #= A*3 + 1,
        X #= B*4 + 2,
        X #= C*5 + 3,
        X #= D*6 + 4,
        labeling([],[X,A,B,C,D]).

:- initialization(go).
%-------------------------------------------- 191 hakank_swi_remarkable_sequence
/*

  Remarkable sequence in SWI Prolog

  Problem statement in the Alma-0 example program remarkable.a0
  """
  This problem is taken from
  @book{CC88,
        author = "H. Coelho and J. C. Cotta",
        title = "Prolog by Example",
        publisher = "Springer-Verlag",
        address = "Berlin",
        year = 1988}
  (page 193)
 
  Call a sequence of 27 elements remarkable if it consists of three 1's,
  three 2's, ...  three 9's arranged in such a way that for all i in
  [1..9] there are exactly i numbers between successive occurrences of
  i.  For example, the sequence
 
  (1,9,1,2,1,8,2,4,6,2,7,9,4,5,8,6,3,4,7,5,3,9,6,8,3,5,7)
 
  is remarkable.  Write a program that generates all
  remarkable sequences.
  """

  There are three solution (with the symmetry breaking that 
  the first element must be less than the last element):

    [1,9,1,6,1,8,2,5,7,2,6,9,2,5,8,4,7,6,3,5,4,9,3,8,7,4,3]
    [1,9,1,2,1,8,2,4,6,2,7,9,4,5,8,6,3,4,7,5,3,9,6,8,3,5,7]
    [1,8,1,9,1,5,2,6,7,2,8,5,2,9,6,4,7,5,3,8,4,6,3,9,7,4,3]

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Find all remarkable sequences.
%%
go :-
        time(findall(A, remarkable_sequence(A),L)),
        maplist(writeln,L),
        nl.

%%
%% remarkable_sequence(A)
%%
remarkable_sequence(A) :-

   N = 9, % the digits
   M = 3, % number of occurrences of each number
   NM #= N*M,
   length(A,NM),
   A ins 1..N, 

   %% exact 3 occurrences of each digit
   findall(K-3,
           between(1,N,K),
           Cards),
   global_cardinality(A,Cards),
   
   numlist(1,N,Is),
   maplist(seq_loop(A),Is,Js),

   % Symmetry breaking: First element is less than the last
   element(1,A,A1),
   element(NM,A,ANM),
   A1 #=< ANM,   

   flatten([Js,A],Vars),
   labeling([ff,enum],Vars).

%%
%% Loop for each I in 1..N to ensure
%% that the differences between the 3 I's
%% in A is exactly I.
%%
seq_loop(A,I,J) :-
        MaxVal #= 25-(2*I),
        J in 1..MaxVal,
        element(J,A,I),
        JI1 #= J+I+1,
        element(JI1,A,I),
        J2I2 #= J+2*I+2,
        element(J2I2,A,I).
:- initialization(go).
%-------------------------------------------------- 192 hakank_swi_safe_cracking
/*

  Safe cracking problem in SWI Prolog

  From the Oz Primer:
  http://www.comp.nus.edu.sg/~henz/projects/puzzles/digits/index.html
  """
  The code of Professor Smart's safe is a sequence of 9 distinct 
  nonzero digits C1 .. C9 such that the following equations and
  inequations are satisfied:

        C4 - C6   =   C7
   C1 * C2 * C3   =   C8 + C9
   C2 + C3 + C6   <   C8
             C9   <   C8

   and

 
   C1 <> 1, C2 <> 2, ..., C9 <> 9

  can you find the correct combination?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        safe(LD),
        writeln(LD),
        nl.

%% Check all solutions
go2 :-
        findall(LD, safe(LD),L),
        writeln(L).

safe(LD) :-
   N = 9,
   LD=[C1, C2, C3, C4, _C5, C6, C7, C8, C9],
   LD ins 1..9,

   all_different(LD),
    
   % C1 <> 1, C2 <> 2, ..., C9 <> 9
   numlist(1,N,Is),
   maplist(not_ix(LD), Is),
   
   C4 - C6 #= C7,
   C1 * C2 * C3 #= C8 + C9,
   C2 + C3 + C6 #< C8,
   C9 #< C8,

   labeling([], LD).

% C1 <> 1, C2 <> 2, ..., C9 <> 9
not_ix(LD, I) :-
        element(I,LD,E),
        E #\= I.
:- initialization(go).
%------------------------------------------------------ 193 hakank_swi_schedule1
/*

  Scheduling in SWI Prolog

  Example from SICStus Prolog:
  http://www.sics.se/sicstus/docs/latest/html/sicstus/Cumulative-Scheduling.html#Cumulative%20Scheduling

  """
  Cumulative Scheduling

  This example is a very small scheduling problem. We consider seven
  tasks where each task has a fixed duration and a fixed amount of used
  resource:

  Task Duration Resource
   t1    16       2
   t2     6       9
   t3    13       3
   t4     7       7
   t5     5      10
   t6    18       1
   t7     4      11

  The goal is to find a schedule that minimizes the completion time for
  the schedule while not exceeding the capacity 13 of the resource. The
  resource constraint is succinctly captured by a cumulative/4
  constraint. Branch-and-bound search is used to find the minimal
  completion time. 

  This example was adapted from [Beldiceanu & Contejean 94]. 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :-
        problem(1,Duration,Resource,Capacity,StartTimeMax),
        schedule1(Duration,Resource, Capacity, StartTimeMax, StartTimes, MaxEndTime),
        writeln([StartTimes, MaxEndTime]).

schedule1(Duration,Resource, Capacity, StartTimeMax, StartTimes, MaxEndTime) :-
        
        length(Duration,Len),
        length(StartTimes,Len),     
        StartTimes ins 1..StartTimeMax,
       
        maplist(create_task,StartTimes,Duration,Resource,Tasks,EndTimes),
        cumulative(Tasks,[limit(Capacity)]),
        max_list_clp(EndTimes,MaxEndTime),
        
        labeling([min(MaxEndTime)],StartTimes).

problem(1,Duration,Resource,Capacity,StartTimeMax) :-
        Duration = [16, 6,13, 7, 5,18, 4],
        Resource = [ 2, 9, 3, 7,10, 1,11],
        Capacity = 13,
        StartTimeMax = 30.
        
:- initialization(go).
%------------------------------------------------------ 194 hakank_swi_schedule2
/*

  Scheduling example in SWI Prolog

  Example from
  http://www.sciences.univ-nantes.fr/info/perso/permanents/monfroy/Teaching/Cours/ConstraintLecture-PS-PDF/P1-CP_Lecture/Part13_global_reified_constraints/global_reified_constraints.pdf
  page 32,

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go:-
        schedule(Starts, End),
        writeln(Starts),
        writeln(End),
        nl.

schedule(Starts,End):-

        %% duration of tasks
        Durations = [16,6,13,7,5,18,4],
        
        %% resources needed by each task
        Resources = [2,9,3,7,10,1,11],

        Limit = 13,
        
        length(Durations, Len),
        
        %% starting time
        length(Starts, Len),
        Starts ins 1..30,

        %% ending times
        length(Ends, Len),
        Ends ins 1..30,

        % time allowed
        End in 1..30,
        
        %% ending time is starting time + duration
        maplist(make_end,Starts,Durations,Ends),
        
        % constraint End to be the maximum element in the li
        max_list_clp(Ends, End),
        
        % start, duration, resource units, resource limits
        my_cumulative(Starts,Durations,Resources,Limit),
        
        %% find the values that minize Ends
        labeling([min(End)],Starts).

make_end(Start,Duration,End) :-
        End #= Start + Duration.

:- initialization(go).
%-------------------------------------------- 195 hakank_swi_scheduling_speakers
/*

  Scheduling speakers in SWI Prolog

  From Rina Dechter, Constraint Processing, page 72
  Scheduling of 6 speakers in 6 slots.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   N = 6, % number of speakers

   % the available slots 
   Available = 
       [
                       %% Reasoning:        
         [3,4,5,6],    %% 2) the only one with 6 after speaker F -> 1
         [3,4],        %% 5) 3 or 4
         [2,3,4,5],    %% 3) only with 5 after F -> 1 and A -> 6
         [2,3,4],      %% 4) only with 2 after C -> 5 and F -> 1 
         [3,4],        %% 5) 3 or 4
         [1,2,3,4,5,6] %% 1) the only with 1
       ],

   findall(Xs,schedule_speakers(N,Available,Xs),L),
   maplist(writeln,L),
   nl.


schedule_speakers(N,Available,Xs) :-

   % the alotted speaker slot
   length(Xs,N),
   Xs ins 1..N,

   all_different(Xs),
   maplist(check_slots,Xs,Available),

   label(Xs).

check_slots(X,Available) :-
        member(X,Available).
:- initialization(go).
%---------------------------------------------------- 196 hakank_swi_schoolgirls
/*

   Schoolgirl logic puzzle in SWI Prolog

   From  ECLiPSs mailing list:
   http://groups.google.se/group/comp.lang.prolog/browse_thread/thread/119c52c1c22023b0/48b0ff5eb514e5d1?lnk=st&q=eclipse++%22lib(ic%22)&rnum=6&hl=sv#48b0ff5eb514e5d1

  """
  Five schoolgirls sat for an examination. Their parents -- so they
  thought -- showed an undue degree of interest in the result. They
  therefore agreed that, in writing home about the examination, each girl
  should make one true statement and one untrue one. The following are
  the relevant passages from their letters:
  
  * Betty: ``Kitty was second in the examination. I was only third.''
  * Ethel: ``You'll be glad to hear that I was on top. Joan was second.''
  * Joan: ``I was third, and poor old Ethel was bottom.''
  * Kitty: ``I came out second. Mary was only fourth.''
  * Mary: ``I was fourth. Top place was taken by Betty.''
  
  What in fact was the order in which the five girls were placed? 
  """

  solution/1 is a port of a ECLiPSe model, with tiny changes from the original.
  solution2/1 is - however - my own.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

:- op(710, xfy, xor).
:- op(720, xfy, and).

%%
%%- solution(Ss).
%% Ss = [1-kitty, 2-joan, 3-betty, 4-mary, 5-ethel]
%%
go :-
        solution(S),
        writeln(S).

%%
%% Using clpfd. Same result.
%%
go2 :-
        solution2(S),
        writeln(S).


true(A is A).
true(A and B) :-
         true(A),
         true(B).
true(A xor B) :-
         true(A),
         false(B).
true(A xor B) :-
         false(A),
         true(B).

false(A is B) :-
         A #\= B.

%%
%% Using xor/2 and and/2.
%% 
solution(Sol) :-
         Girls = [Betty,Ethel,Joan,Kitty,Mary],
         Girls ins 1..5,
         all_different(Girls),
         true(Kitty is 2 xor Betty is 3 and
              Ethel is 1 xor Joan is 2 and
              Joan is 3 xor Ethel is 5 and
              Kitty is 2 xor Mary is 4 and
              Mary is 4 xor Betty is 1),
         keysort([Betty-betty,Mary-mary,Joan-joan,
                  Kitty-kitty,Ethel-ethel], Sol).

%%
%% Using clpfd.
%%
solution2(Sol) :-
         Girls = [Betty,Ethel,Joan,Kitty,Mary],
         Girls ins 1..5,
         all_different(Girls),
         Kitty #= 2 #\ Betty #= 3,
         Ethel #= 1 #\ Joan #= 2,
         Joan #= 3 #\ Ethel #= 5,
         Kitty #= 2 #\ Mary #= 4,
         Mary #= 4 #\ Betty #= 1,
         label(Girls),
         keysort([Betty-betty,Mary-mary,Joan-joan,
                  Kitty-kitty,Ethel-ethel], Sol).
:- initialization(go).
%----------------------------------------------- 197 hakank_swi_scrabble_contest
/* 

  Scrabble Contest puzzle in SWI-Prolog.

  From https://www.braingle.com/brainteasers/24501/scrabble-contest.html
  """
  At the local games evening, four lads were competing in the Scrabble and 
  chess competitions. Liam beat Mark in chess, James came third and the 16 year old 
  won. Liam came second in Scrabble, the 15 year old won; James beat the 18 year old 
  and the 19 year old came third. Kevin is 3 years younger than Mark. The person who 
  came last in chess, came third in Scrabble and only one lad got the same position in 
  both games. Can you determine the ages of the lads and the positions in the two games?
  """

  (Via https://stackoverflow.com/questions/68301400/simplifying-constraints-in-clp-puzzle )

   
  This model was created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI-Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).

go :-
        % At the local games evening, four lads were competing in the Scrabble and 
        % chess competitions.
        N = 4,
        length(Lads,N),
        Lads = [James,Kevin,Liam,Mark],
        Lads = [1,2,3,4],
        Lads ins 1..N,
        LadsS = ['James','Kevin','Liam','Mark'],
        
        length(Chess,N),
        Chess ins 1..N,
        
        length(Scrabble,N),
        Scrabble ins 1..N,

        length(Ages,N),
        Ages ins 15..16 \/ 18..19,

        all_different(Chess),
        all_different(Scrabble),
        all_different(Ages),

        element(Ages15,Ages,15),
        element(Ages16,Ages,16),
        element(Ages18,Ages,18),
        element(Ages19,Ages,19),
        
        % Liam beat Mark in chess, James came third and the 16 year old won.
        element(Liam,Chess,ChessLiam),
        element(Mark,Chess,ChessMark),
        ChessLiam #< ChessMark,
        element(James,Chess,3),
        element(Ages16,Chess,1),

        % Liam came second in Scrabble, the 15 year old won; James beat the 18 year old 
        % and the 19 year old came third.
        element(Liam,Scrabble,2),
        element(Ages15,Scrabble,1),

        element(Ages18,Scrabble,ScrabbleAges18),
        element(James,Scrabble,ScrabbleJames),
        ScrabbleJames #< ScrabbleAges18,
        element(Ages19,Scrabble,3),

        % Kevin is 3 years younger than Mark.
        element(Kevin,Ages,AgesKevin),
        element(Mark,Ages,AgesMark),  
        AgesKevin + 3 #= AgesMark,
        
        % The person who came last in chess, came third in Scrabble and only one lad
        % got the same position in both games.
        element(ChessPlace4,Chess,4),
        element(ChessPlace4,Scrabble,3),

        sums(Chess,Scrabble,0,Sums),
        Sums #= 1,
        
        % Can you determine the ages of the lads and the positions in the two games?

        flatten([Chess,Scrabble,Ages,Sums],Vars),
        label(Vars),
        
        writeln(chess=Chess),
        writeln(scrabble=Scrabble),
        writeln(ages=Ages),
        sol(LadsS,Ages,Scrabble,Chess),
        nl,
        
        fail,
        nl.
go.


sums([],[],Total,Total).
sums([C|Chess],[S|Scrabble],Total0,Total) :-
        B in 0..1,
        C #= S #<==> B #= 1,
        Total1 #= Total0 + B,         
        sums(Chess,Scrabble,Total1,Total).

sol([L|Lads],[A|Ages],[S|Scrabble],[C|Chess]) :-
        format("~w (~d) Scrabble: ~d Chess: ~d~n",[L,A,S,C]),
        sol(Lads,Ages,Scrabble,Chess).
:- initialization(go).
%--------------------------------------------------- 198 hakank_swi_secret_santa
/*

  Secret Santa problem in SWI Prolog

  From Ruby Quiz Secret Santa
  http://www.rubyquiz.com/quiz2.html
  """
  Honoring a long standing tradition started by my wife's dad, my friends 
  all play a Secret Santa game around Christmas time. We draw names and 
  spend a week sneaking that person gifts and clues to our identity. On the 
  last night of the game, we get together, have dinner, share stories, and, 
  most importantly, try to guess who our Secret Santa was. It's a crazily 
  fun way to enjoy each other's company during the holidays.
  
  To choose Santas, we use to draw names out of a hat. This system was 
  tedious, prone to many "Wait, I got myself..." problems. This year, we 
  made a change to the rules that further complicated picking and we knew 
  the hat draw would not stand up to the challenge. Naturally, to solve 
  this problem, I scripted the process. Since that turned out to be more 
  interesting than I had expected, I decided to share.
  
  This weeks Ruby Quiz is to implement a Secret Santa selection script.
  
  Your script will be fed a list of names on STDIN. 
  ...
  Your script should then choose a Secret Santa for every name in the list. 
  Obviously, a person cannot be their own Secret Santa. In addition, my friends 
  no longer allow people in the same family to be Santas for each other and your 
  script should take this into account.
  """

  Comment: Well, this model skips the file input and mail parts. We 
           assume that the friends are identified with a number from 1..n,
           and the families is identified with a number 1..num_families. 


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   %% Ruby Quiz example
   % Family = [1,1,2,2, 3, 4,4],
   Family = [1,1,1,1, 2, 3,3,3,3,3, 4,4], % extended version
   length(Family, N),

   length(X,N),
   X ins 1..N,

   %% Everyone gives and receives a Secret Santa
   all_different(X),

   %% Can't be one own's Secret Santa
   numlist(1,N,Is),
   maplist(no_self_santa(X),Is),
   
   %% No Secret Santa to a person in the same family
   maplist(no_santa_in_family(X,Family), Is),
   label(X),

   %% Solution
   writeln(X),
   findall([I,FamilyI,XI,FamilyXI],
           (between(1,N,I),
            element(I,Family,FamilyI),
            element(I,X,XI),
            element(XI,Family,FamilyXI)
           ),
           Res
          ),
   maplist(format("Person ~d (family ~d) is a Secret Santa of ~d (family ~d)~n"),Res),
            
   nl.

no_self_santa(X,I) :-
        element(I,X,XI),
        XI #\= I.

no_santa_in_family(X, Family, I) :-
        element(I,X,XI),
        element(XI,Family,FXI),
        element(I,Family,FamilyI),
        FamilyI #\= FXI.
:- initialization(go).
%-------------------------------------------------- 199 hakank_swi_secret_santa2
/*

  Secret Santa problem II in SWI Prolog

  From Maple Primes: "Secret Santa Graph Theory"
  http://www.mapleprimes.com/blog/jpmay/secretsantagraphtheory
  """
  Every year my extended family does a "secret santa" gift exchange. 
  Each person draws another person at random and then gets a gift for 
  them. At first, none of my siblings were married, and so the draw was 
  completely random. Then, as people got married, we added the restriction 
  that spouses should not draw each others names. This restriction meant 
  that we moved from using slips of paper on a hat to using a simple 
  computer program to choose names. Then people began to complain when 
  they would get the same person two years in a row, so the program was 
  modified to keep some history and avoid giving anyone a name in their 
  recent history. This year, not everyone was participating, and so after 
  removing names, and limiting the number of exclusions to four per person, 
  I had data something like this:
  
  Name: Spouse, Recent Picks
  
  Noah: Ava. Ella, Evan, Ryan, John
  Ava: Noah, Evan, Mia, John, Ryan
  Ryan: Mia, Ella, Ava, Lily, Evan
  Mia: Ryan, Ava, Ella, Lily, Evan
  Ella: John, Lily, Evan, Mia, Ava
  John: Ella, Noah, Lily, Ryan, Ava
  Lily: Evan, John, Mia, Ava, Ella
  Evan: Lily, Mia, John, Ryan, Noah
  """
  
  Note: I interpret this as the following three constraints:
    1) One cannot be a Secret Santa of one's spouse
    2) One cannot be a Secret Santa for somebody two years in a row
    3) Optimization: maximize the time since the last time 

  This model also handle single persons, something the original
  problem don't mention.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        %% N = 8, %% Without Single person
        N = 9, %% With a Single person
        Noah = 1,
        Ava  = 2,
        Ryan = 3,
        Mia  = 4,
        Ella = 5,
        John = 6,
        Lily = 7,
        Evan = 8,
        _Single = 9,

        Spouses = 
        [
         Ava,  %% Noa
         Noah, %% Ava
         Mia,  %% Rya
         Ryan, %% Mia
         John, %% Ella
         Ella, %% John
         Evan, %% Lily
         Lily  %% Evan
        , 0    %% Single has no spouse
        ], 

        N1 #= N+1,
        M #= N1, %% "large M" to indicate no earlier history

        %%
        %% The matrix version of earlier rounds.
        %% M means that no earlier Santa.
        %% Note: Ryan and Mia has the same recipient for years 3 and 4,
        %%       and Ella and John has for year 4. 
        %%       This seems to be caused by modification of 
        %%       original data.
        %%
        %%
        %% rounds with a single person (fake data)
        %%
        Rounds =       [
                       %%N  A  R  M  El J  L  Ev S
                        [0, M, 3, M, 1, 4, M, 2, 2], %% Noah
                        [M, 0, 4, 2, M, 3, M, 1, 1], %% Ava 
                        [M, 2, 0, M, 1, M, 3, 4, 4], %% Ryan
                        [M, 1, M, 0, 2, M, 3, 4, 3], %% Mia 
                        [M, 4, M, 3, 0, M, 1, 2, M], %% Ella
                        [1, 4, 3, M, M, 0, 2, M, M], %% John
                        [M, 3, M, 2, 4, 1, 0, M, M], %% Lily
                        [4, M, 3, 1, M, 2, M, 0, M], %% Evan
                        [1, 2, 3, 4, M, 2, M, M, 0]  %% Single
                       ],


        %% decision variables
        length(Santas,N),
        Santas ins 1..N,
        length(Santas2,N),
        Santas2 ins 1..N,
        length(SantaDistance,N),
        SantaDistance ins 1..N1,
        Z in 0..1000, %% total distance (to minimize)

        %% constraints

        %% Everyone gives and receives a Secret Santa
        all_different(Santas),

        %% no Santa for a spouses
        numlist(1,N,Is),
        maplist(no_self_santa(Santas),Is),
        maplist(no_santa_for_spouses,Santas,Spouses),
        
        
        %% Cannot be a Secret Santa for the same person two years in a row.
        maplist(no_santa_two_years_in_a_row_to_same_person(Rounds,Santas,Santas2),Is),

        %% optimize "distance" to earlier rounds:
        maplist(distance_to_earlier_rounds(Santas,SantaDistance,Rounds),Is),

        sum(SantaDistance,#=,Z),

        flatten([Santas,Santas2], Vars),
        
        labeling([max(Z)], Vars),

        writeln(z=Z),
        writeln(santas=Santas),
        writeln(santas2=Santas2),
        writeln(santaDistance=SantaDistance),
        nl.

%%
%% No Self-Santa.
%%
no_self_santa(Santas,I) :-
        element(I,Santas,SaI),
        SaI #\= I.

%%
%% No Santa for spouses.
%%
no_santa_for_spouses(Sa,Sp) :-
        Sp #> 0 #==> Sp #\= Sa.


%%
%% optimize "distance" to earlier rounds:
%%
distance_to_earlier_rounds(Santas,SantaDistance,Rounds,I):-
        element(I,Santas,SantasI),
        element(I,SantaDistance,SantaDistanceI),        
        matrix_element(Rounds,I,SantasI,SantaDistanceI).

%%
%% Cannot be a Secret Santa for the same person two years in a row.
%%
no_santa_two_years_in_a_row_to_same_person(Rounds,Santas,Santas2,I) :-
        element(I,Santas,SantasI),
        element(I,Santas2,Santas2I),
        SantasI #\= Santas2I,
        matrix_element(Rounds,I,Santas2I,1).
:- initialization(go).
%------------------------------------------------ 200 hakank_swi_send_more_money
/*

  SEND+MORE=MONEY puzzle in SWI Prolog

  Solve the alphametic problem 
    SEND+MORE=MONEY
  using distinct digits for the letters.

  Some CLP and non-CLP approaches.
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

% 
% Plain CLP. 0.003s
% 
go :- 
        send_more_money(Digits),
        writeln(digits_before=Digits),
        list_domains(Digits,Domains),
        writeln(domains=Domains),
        labeling([ff],Digits),
        writeln(Digits),       
        nl.

%
% using scalar_product/4: 0.007s
% 
go2 :- 
        send_more_money_scalar_product(Digits),
        writeln(Digits),
        list_domains(Digits,Domains),
        writeln(domains=Domains),        
        labeling([ff],Digits),
        writeln(Digits),       
        nl.

%
% With carry: 0.005s
% 
go3 :- 
        send_more_money_with_carry(Digits, Carry),
        writeln(digits=Digits),
        writeln(carry=Carry),
        append(Digits,Carry, Vars),
        labeling([ff],Vars),
        writeln(digits=Digits),
        writeln(carry=Carry),
        
        nl.

%
% No CLPFD, using select. TOO SLOW!
% 
go4 :- 
        time(send_more_money_no_cp1(Digits)),
        writeln(Digits),
        
        nl.

%
% No CLPFD, using assign/select. 1.7s.
% 
go5 :- 
        time(send_more_money_no_cp2(Digits)),
        writeln(Digits),
        
        nl.

%
% No CLPFD, using permutation/2.
% 
go6 :- 
        time(send_more_money_permutation(Digits)),
        writeln(Digits),
        
        nl.


%
% Plain CLP.
%
send_more_money(Digits) :-
        Digits = [S,E,N,D,M,O,R,Y],
        Digits ins 0..9,

        all_distinct(Digits),
        S #> 0,
        M #> 0,
               1000*S + 100*E + 10*N + D
        +      1000*M + 100*O + 10*R + E
        #= 10000*M + 1000*O + 100*N + 10*E + Y.


%
% Using scalar_product.
%
send_more_money_scalar_product(Digits) :-

  Digits = [S,E,N,D,M,O,R,Y],
  Digits ins 0..9,

  all_distinct(Digits),

  S #> 0,
  M #> 0,

  Base4 = [1000,100,10,1],
  Base5 = [10000,1000,100,10,1],
  scalar_product(Base4, [S,E,N,D], #=, SEND),
  scalar_product(Base4, [M,O,R,E], #=, MORE),
  scalar_product(Base5, [M,O,N,E,Y], #= , MONEY),
  SEND + MORE #= MONEY.


%
% With carry
%
%   C4 C3 C2 C1
%       S  E  N  D
%  +    M  O  R  E
%  ---------------
%  = M  O  N  E  Y
% 
send_more_money_with_carry(Digits, Carry) :-
  Digits = [S,E,N,D,M,O,R,Y],
  Digits ins 0..9,

  Carry = [C1,C2,C3,C4],
  Carry ins 0..1,

  all_distinct(Digits),

  S #> 0,
  M #> 0,
  
  C4 #= M,
  C3 + S + M #= O + 10 * C4,
  C2 + E + O #= N + 10 * C3,
  C1 + N + R #= E + 10 * C2,
  D + E #= Y + 10 * C1.


%
% Without CLP, using select. TOO SLOW
%
send_more_money_no_cp1(Digits) :-
  Digits = [S,E,N,D,M,O,R,Y],
  between(0,9,S),
  select(S,Digits,Rest1),
  S #\= 0,
  between(0,9,E),
  select(E,Rest1,Rest2),
  between(0,9,N) , 
  select(N,Rest2,Rest3),
  between(0,9,D),
  select(D,Rest3,Rest4),
  between(0,9,M),
  select(M,Rest4,Rest5),
  M #\= 0,
  between(0,9,O),
  select(O,Rest5,Rest6),
  between(0,9,R),
  select(R,Rest6,Rest7),
  between(0,9,Y),   
  select(Y,Rest7,_Rest8),

  (S * 1000 + E * 100 + N * 10 + D) +
  (M * 1000 + O * 100 + R * 10 + E) #= 
  (M * 10000 + O * 1000 + N * 100 + E * 10 + Y ).


%
% Variant where the selects are moved to assign/2
% Much faster than send_more_money_no_cp2: 1.7s
% 
send_more_money_no_cp2(Digits) :-
  Digits = [S,E,N,D,M,O,R,Y],
  assign([0,1,2,3,4,5,6,7,8,9],Digits),
  S \= 0,
  M \= 0,
  (S * 1000 + E * 100 + N * 10 + D) +
  (M * 1000 + O * 100 + R * 10 + E) =:= 
  (M * 10000 + O * 1000 + N * 100 + E * 10 + Y ).

%
% assign( Digits, Vars)
% Assign chosen distinct digits from list Digits to variables in list Vars
%
assign(_,[]).
assign(Digs,[D|Vars])  :-
  select(D, Digs,Digs1),
  assign(Digs1,Vars).

%
% Without CLP, using permutation/2: ~3.0s
% 
send_more_money_permutation(Digits2) :-
  Digits = [S,E,N,D,M,O,R,Y, A,B],
  permutation([0,1,2,3,4,5,6,7,8,9],Digits),
  A < B, % symmetry breaking of the two unused digits
  S > 0, M #> 0,
  (S * 1000 + E * 100 + N * 10 + D) +
  (M * 1000 + O * 100 + R * 10 + E) =:= 
  (M * 10000 + O * 1000 + N * 100 + E * 10 + Y),
  Digits2 = [S,E,N,D,M,O,R,Y].
:- initialization(go).
%--------------------------------------- 201 hakank_swi_send_more_money_any_base
/*

  SEND+MORE=MONEY in any base puzzle in SWI Prolog

  Solve the alphametic problem 
    SEND+MORE=MONEY
  using distinct digits for the letters and in any base.

  Cf send_more_money.pl for some other approaches (for base 10).
 
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
    Base = 10,
    send_more_money_any_base(Base,Digits),
    labeling([ff],Digits),
    writeln(Digits),       
    nl.

% All 231 solutions for Base=30
go2 :-
    Base = 30,
    send_more_money_any_base(Base,Digits),
    labeling([ff],Digits),
    writeln(Digits),
    fail,
    nl.


/*
  Number of solutions for Base=10..100.

  Here's the solutions for Base=10..30:
   Base #solutions
   --------------
   10:1
   11:3
   12:6
   13:10
   14:15
   15:21
   16:28
   17:36
   18:45
   19:55
   20:66
   21:78
   22:91
   23:105
   24:120
   25:136
   26:153
   27:171
   28:190
   29:210
   30:231


  It's the triangular number sequence:
  https://oeis.org/A000217
  https://en.wikipedia.org/wiki/Triangular_number

  I blogged about this relation in
  "Some other Gecode/R models, mostly recreational mathematics"
  http://www.hakank.org/constraint_programming_blog/2009/01/some_other_gecoder_models_most_1.html

*/
go3 :-
    % check the bases 10 to 30 and print the number
    % of solutions
    numlist(10,100,Bases),
    member(Base,Bases),
    findall(Digits,(send_more_money_any_base(Base,Digits),labeling([ffc,enum],Digits)),L),
    % writeln(L),
    length(L,Len),
    writeln(Base:Len),
    fail.
        

send_more_money_any_base(Base,Digits) :-
    Digits = [S,E,N,D,M,O,R,Y],
    Base1 is Base-1,
    Digits ins 0..Base1,
    
    all_different(Digits),
    S #> 0,
    M #> 0,
    Base^3*S + Base^2*E + Base*N + D
    +      Base^3*M + Base^2*O + Base*R + E
    #= Base^4*M + Base^3*O + Base^2*N + Base*E + Y.

:- initialization(go).
%------------------------------------------------ 202 hakank_swi_send_most_money
/*

  SEND+MOST=MONEY problem in SWI Prolog

  Alphametic problem were we want to maximize MONEY.

  This version do two things:
    - find the maximum of MONEY
    - and then find all solutions for the maximum value of MONEY.

  Problem from the lecture notes:
  http://www.ict.kth.se/courses/ID2204/notes/L01.pdf


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        %
        % first part: find the maximum value of MONEY
        %
        writeln("First part: find the maximum value of MONEY"),
        length(LD,8),
        LD ins 0..9,
        send_most_money(LD, MONEY),
        once(labeling([max(MONEY)], LD)),
        writeln(max=MONEY),

        %
        % second part: find all solutions for the maximum value of MONEY
        %
        writeln("Second part: find all solutions with max value of MONEY"),
        length(LD2, 8),
        LD2 ins 0..9,
        findall(LD2, (send_most_money(LD2, MONEY),label(LD2)), AllSolutions),
 
        length(AllSolutions, Len),
        writeln(AllSolutions),
        writeln(len=Len),
        nl.

send_most_money([S,E,N,D,M,O,T,Y], MONEY) :-

        all_different([S,E,N,D,M,O,T,Y]),
        S #> 0,
        M #> 0,
        MONEY #= 10000 * M + 1000 * O + 100 * N + 10 * E + Y,
        1000*S + 100*E + 10*N + D +
        1000*M + 100*O + 10*S + T #= MONEY.
:- initialization(go).
%----------------------------------------------- 203 hakank_swi_sequence_problem
/*

  Sequence problem in SWI Prolog

  From Marriott, Stuckey: "Programming with Constraints", pages 31ff, 294f

  Combine the three contigs
    [a,t,c,g,g,g,c],[a,a,a,a,t,c,g],[g,c,c,a,t,t]
  to an overlapping sequence:

     AAAATCG
       ATCGGGC
            GCCATT

  i.e. the sequence AAAATCGGGCCATT


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

%% :- use_module(library(clpfd)).
%% :- use_module(hakank_utils).

go :-
        gp295(T),
        writeln(T),
        fail.

go.

%%
%% Sequence constraints: not_empty and concatentation using lists p294.
%%
not_empty([_|_]).

concat([S1],S1).
concat([S1,S2|Ss],S) :- append(S1,T,S), concat([S2|Ss],T).

%% sequence problem goal p295.
gp295(T) :- sequence_problem(T).

%%
%% The sequence problem as a constraint program p295.
%%
sequence_problem(T) :- 
    	contigs(Contigs), 
    	perm(Contigs, [C1, C2, C3]),
    	not_empty(O12), not_empty(O23),
    	concat([UC1,O12], C1),
    	concat([O12,UC2,O23], C2),
    	concat([O23,UC3], C3),
    	concat([UC1,O12,UC2,O23,UC3], T).
 
contigs([[a,t,c,g,g,g,c], [a,a,a,a,t,c,g], [g,c,c,a,t,t]]). 
 
delete2([X | Xs], X, Xs). 
delete2([X | Xs], Y, [X | R]) :- delete2(Xs, Y, R). 
 
perm([], []). 
perm(L, [X|R]) :- delete2(L, X, L1), perm(L1, R). 
 


        
:- initialization(go).
%-------------------------------------------------------- 204 hakank_swi_seseman
/*

  Seseman problem in SWI Prolog

  Description of the problem:
  
  n is the length of a border
  There are (n-2)^2 "holes", i.e.
  there are n^2 - (n-2)^2 variables to find out.
 
  The simplest problem, n = 3 (n x n matrix)
  which is represented by the following matrix:
 
   a b c 
   d   e 
   f g h 
  
  Where the following constraints must hold:
 
    a + b + c = border_sum
    a + d + f = border_sum
    c + e + h = border_sum
    f + g + h = border_sum
    a + b + c + d + e + f = total_sum


  For a (Swedish) discussion of this problem, see
  "Sesemans matematiska klosterproblem samt lite Constraint Logic Programming"
  http://www.hakank.org/webblogg/archives/001084.html
  and
  Seseman's Convent Problem: http://www.hakank.org/seseman/seseman.cgi
  (using ECLiPSe CLP code)

  It was also is commented in the (Swedish) blog post
  "Constraint Programming: Minizinc, Gecode/flatzinc och ECLiPSe/minizinc"
  http://www.hakank.org/webblogg/archives/001209.html
  

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :- 
        [Rowsum,Total,FirstNum] = [9,24,1],
        writeln([rowsum=Rowsum,total=total]),
        findall(S, seseman(Rowsum, Total, FirstNum, S),L),
        maplist(write_convent,L),
        length(L,Len),
        writeln(solutions=Len),
        nl.


%
% Using symmetry breaking (seseman2).
%
go2 :-
        Rowsum = 9,
        Total = 24,
        FirstNum = 1,
        writeln([rowsum=Rowsum,total=Total]),
        findall(S, seseman2(Rowsum, Total, FirstNum, S),L),
        maplist(write_convent,L),
        length(L,Len),
        writeln(solutions=Len).


write_convent([A,B,C,D,E,F,G,H]) :-
        format("~d ~d ~d~n",[A,B,C]),
        format("~d _ ~d~n",[D,E]),
        format("~d ~d ~d~n",[F,G,H]),
        nl.


% General constraints
constraints([A,B,C,D,E,F,G,H], Rowsum, Total) :-

        A+B+C #= Rowsum,
        A+D+F #= Rowsum,
        C+E+H #= Rowsum,
        F+G+H #= Rowsum,
        A+B+C+D+E+F+G+H #= Total.


%
% Plain problem (no symmetry breaking)
%
seseman(Rowsum, Total, FirstNum, LD) :-
        length(LD, 8),

        % FirstNum = 0: empty rooms allowed
        % FirstNum = 1: empty rooms not allowed
        LD ins FirstNum..9,
        constraints(LD, Rowsum, Total),
        label(LD).



%
% With symmetry breaking
%
seseman2(Rowsum, Total, FirstNum, LD) :-
        LD = [A,B,_C,D,E,_F,G,H],

        % FirstNum = 0: empty rooms allowed
        % FirstNum = 1: empty rooms not allowed
        LD ins FirstNum..9,

        % Row sums/Column sums
        constraints(LD, Rowsum, Total),

        % additional constraints for uniqueness (rotation, mirror)
        A #=< H,
        B #=< D,
        D #=< E,
        E #=< G,

        label(LD).


:- initialization(go).
%--------------------------------------------------- 205 hakank_swi_set_covering
/*

  Set covering in SWI Prolog

  Placing of firestations, from Winston "Operations Research", page 486

  Solution:
  
    z=2
    x=[0,1,0,1,0,0]

  I.e. place the fire stations in cities 2 and 4.

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        problem(1, MinDistance, Distance),
        
        writeln(min_distance=MinDistance),
        
        % distance between the cities
        length(Distance,NumCities),
        writeln(num_cities=NumCities),

        % where to place the fire stations: 1 if placed in this city.
        length(X,NumCities),
        X ins 0..1,

        %% For each city, find the indices of the nearby cities.
        findall(Is,
                (member(City,Distance),
                 findall(I,(
                            between(1,NumCities,I),
                            element(I,City,D),D #=< MinDistance),
                         Is)
                ),
                CitiesCovered
               ),
        % Ensure that all cities has at least one fire station.
        maplist(sum_nearby_cities(X),CitiesCovered),
        
        sum(X,#=,Z),

        labeling([ff,min(Z)], X),
        writeln(z=Z),
        writeln(x=X).

% Ensure that the nearby cities has at least one fire station
sum_nearby_cities(X,Is) :-
        extract_from_indices(Is,X,Xs),
        sum(Xs,#>=,1).

%
% data
%
%
% Placing of firestations, from Winston "Operations Research", page 486
%
problem(1, MinDistance, Distance) :-
        MinDistance = 15, % minimum distance 
        Distance    = [[0,10,20,30,30,20],  % distances between the cities
                       [10,0,25,35,20,10],
                       [20,25,0,15,30,20],
                       [30,35,15,0,15,25],
                       [30,20,30,15,0,14],
                       [20,10,20,25,14,0]].
:- initialization(go).
%-------------------------------------------------- 206 hakank_swi_set_covering2
/*

  Set covering problem in SWI Prolog

  Example 9.1-2, page 354ff, from Taha "Operations Research - An Introduction"
  Minimize the number of security telephones in street corners on a campus.

  AMPL model: http://taha.ineg.uark.edu/setcover.txt

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% First find the optimal value (MinVal) i.e. the number of telephones
% placed. Then find all the solutions with that value.
%
go :-
        writef("Find the optimal solution:\n"),
        corners(N, Corners),

        set_covering2(N, Corners, MinVal, _X),
        
        format("\nFinding all optimal solutions with MinVal ~d:\n", [MinVal]),
        findall(X, set_covering2(N, Corners, MinVal, X),L),
        writeln(L),        
        length(L,Len),
        format("It was ~d solutions\n", Len).


set_covering2(N, Corners, MinVal, X) :-

        %% where to place the telephones
        length(X,N),
        X ins 0..1,
        
        % All streets must be covered
        maplist(cover_corners(X),Corners),

        % objective: minimize the number of telephones
        sum(X,#=,MinVal),

        % Either search for all solutions (with the minimum value) or
        % search for the optimal value.
        (ground(MinVal) ->
         label(X)
        ; 
         labeling([min(MinVal)], X)
        ),

        writeln(minVal=MinVal),
        writeln(x=X).

cover_corners(X,[I,J]) :-
        element(I,X,XI),
        element(J,X,XJ),
        XI + XJ #>= 1.


%
% corners of each street
%
% corners(NumberOfStreets, Corners)
%
corners(N, Corners) :- 
        N = 8,
        Corners =
        [[1,2],
         [2,3],
         [4,5],
         [7,8],
         [6,7],
         [2,6],
         [1,6],
         [4,7],
         [2,4],
         [5,8],
         [3,5]].

:- initialization(go).
%-------------------------------------------------- 207 hakank_swi_set_covering3
/*

  Set covering problem in SWI Prolog

  Problem from 
  Katta G. Murty: "Optimization Models for Decision Making", page 302f
  http://ioe.engin.umich.edu/people/fac/books/murty/opti_model/junior-7.pdf
 
  10 senators making a committee, where there must at least be one 
  representative from each group:
  group:        senators:
  southern      1 2 3 4 5
  northern      6 7 8 9 10
  liberals      2 3 8 9 10
  conservative  1 5 6 7
  democrats     3 4 5 6 7 9
  republicans   1 2 8 10

  The objective is to minimize the number of senators.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% First find the optimal value (MinVal), then find all the solutions with that value.
%
go :-

        writeln('Find the optimal solution'),
        belongs(Belongs),
        set_covering3(Belongs, MinVal,_),
        
        format("\nFinding all optimal solutions with MinVal ~d:\n", [MinVal]),
        findall(X, set_covering3(Belongs,  MinVal,X),L),
        length(L,Len),
        format("It was ~d solutions~n", [Len]).


set_covering3(Belongs, MinVal, X) :-

        transpose(Belongs,BelongsT),
        length(BelongsT,NumSenators),

        % which senator to choose
        length(X,NumSenators),
        X ins 0..1,

        % cover all groups with the senators
        maplist(cover_groups(X),Belongs),

        % objective: minimize the number of senators
        sum(X,#=,MinVal),

        % Either search for all solutions (for the minimum value) or
        % the optimal value.
        ( ground(MinVal)
        -> 
          label(X)
        ;
          labeling([min(MinVal)], X)
        ),

        writeln(x=X),
        senators(SenatorNames),
        findall(S,(between(1,NumSenators,I),element(I,X,1),
                   nth1(I,SenatorNames,S)
                  ),
               SelectedSenators),
        format("These selectors are selected: ~w~n",[SelectedSenators]),
        writeln(minVal=MinVal).

% Ensure that each group (row in Belong) is covered by at least one senator.
cover_groups(X,Belong) :-
        scalar_product(Belong,X,#>=,1).


%
% The Belong matrix:
%
% 1 if a senator belongs to the group, 
% 0 if senator don't belong to the group
%
belongs(Matrix) :- 
        Matrix = [[1, 1, 1, 1, 1, 0, 0, 0, 0, 0],  % 1 southern
                  [0, 0, 0, 0, 0, 1, 1, 1, 1, 1],  % 2 northern
                  [0, 1, 1, 0, 0, 0, 0, 1, 1, 1],  % 3 liberals
                  [1, 0, 0, 0, 1, 1, 1, 0, 0, 0],  % 4 conservative
                  [0, 0, 1, 1, 1, 1, 1, 0, 1, 0],  % 5 democrats
                  [1, 1, 0, 0, 0, 0, 0, 1, 0, 1]]. % 6 republicans

senators(Senators) :- 
        Senators = [a,b,c,d,e,f,g,h,i,j].

:- initialization(go).
%-------------------------------------------------- 208 hakank_swi_set_covering4
/*

  Set covering and set partition in SWI Prolog

  Example from Lundgren, Ronnqvist, Varbrand "Optimeringslora", page 408.
  [This is a Swedish book about Operational Research.]
  
  We want to minimize the cost of the alternatives which covers all the 
  objects, i.e. all objects must be choosen. The requirement is than an object 
  may be selected _exactly_ once.
 
  Alternative        Cost        Object
  1                  19           1,6
  2                  16           2,6,8
  3                  18           1,4,7
  4                  13           2,3,5
  5                  15           2,5
  6                  19           2,3
  7                  15           2,3,4
  8                  17           4,5,8
  9                  16           3,6,8
  10                 15           1,6,7
 
  The problem has a unique solution of z = 49 where alternatives 
  3, 5, and 9 is selected. 
 
  If we, however, allow that an object is selected more than one time, 
  then the solution is z = 45 (i.e. less cost than the first problem),
  and the alternatives 4, 8, and 10 is selected, where object 5 is 
  selected twice (alt. 4 and 8). It's an unique solution as well.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


%
% First find the optimal value (MinVal), then find all the solutions with that value.
% Note: This handles both set partition and set covering.
%
go :-

        %
        % set partition
        %
        writeln("\nSET PARTITION"),
        writeln("Find the optimal solution"),
        problem(Costs,Alternatives),

        set_covering4(Costs, Alternatives, set_partition, MinVal, _),

        format("\nFinding all optimal solutions with MinVal ~d:\n", [MinVal]),
        findall(Assignments, 
                set_covering4(Costs, Alternatives, set_partition,MinVal,Assignments),L),
        length(L,Len),
        writeln(all_solutions=L),
        format("It was ~d solution(s) (Set partition)\n\n", [Len]),


        %
        % Set covering
        %
        writeln("\nSET COVERING"),
        writeln("Find the optimal solution\n"),

        set_covering4(Costs, Alternatives, set_covering, MinVal2, _),

        format("\nFinding all optimal solutions with MinVal ~d:\n", [MinVal2]),
        findall(Assignments2, 
                set_covering4(Costs, Alternatives, set_covering,MinVal2,Assignments2),
                L2),
        length(L2, Len2),
        writeln(all_solutions=L2),
        format("It was ~d solution(s) (Set covering)\n\n", [Len2]).



set_covering4(Costs, Alternatives, Type, MinVal, Assignments) :-

        % get the dimensions
        transpose(Alternatives,AlternativesT),
        length(Alternatives,NumAlternatives),

        % which alternatives to choose
        length(X,NumAlternatives),
        X ins 0..1,

        % set partition or set covering?
        (
         Type == set_partition
        ->
         % set_partition: all objects covered exactly once
         Rel = #=
        ;
         % set_covering: all objects covered exactly once
         Rel = #>=

        ),
        maplist(cover_groups(X,Rel,1),AlternativesT),
        
        %
        % objective: minimize the number of senators
        %
        scalar_product(Costs,X,#=,MinVal),

        %
        % either search for all solutions (for the minimum value) or
        % the optimal value
        %
        (
         ground(MinVal)
        ->
          label(X)
        ;
         labeling([min(MinVal)], X)
        ),
        findall(I,
                (between(1,NumAlternatives,I),element(I,X,1)),
                Assignments).


cover_groups(X,Rel,Num,Group) :-
        scalar_product(Group,X,Rel,Num).


%
% cost and alternatives
%
problem(Costs, Alternatives) :- 
        Costs = [19, 16, 18, 13, 15, 19, 15, 17, 16, 15], % costs
        Alternatives = 
        [[1,0,0,0,0,1,0,0],     % alternative 1    % alternatives 
         [0,1,0,0,0,1,0,1],     % alternative 2
         [1,0,0,1,0,0,1,0],     % alternative 3
         [0,1,1,0,1,0,0,0],     % alternative 4
         [0,1,0,0,1,0,0,0],     % alternative 5
         [0,1,1,0,0,0,0,0],     % alternative 6
         [0,1,1,1,0,0,0,0],     % alternative 7
         [0,0,0,1,1,0,0,1],     % alternative 8
         [0,0,1,0,0,1,0,1],     % alternative 9
         [1,0,0,0,0,1,1,0]].    % alternative 10
:- initialization(go).
%---------------------------------------- 209 hakank_swi_set_covering_deployment
/*

  Set covering deployment in SWI Prolog

  From http://mathworld.wolfram.com/SetCoveringDeployment.html
  """
  Set covering deployment (sometimes written "set-covering deployment"
  and abbreviated SCDP for "set covering deployment problem") seeks 
  an optimal stationing of troops in a set of regions so that a 
  relatively small number of troop units can control a large 
  geographic region. ReVelle and Rosing (2000) first described 
  this in a study of Emperor Constantine the Great's mobile field 
  army placements to secure the Roman Empire.
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


% First find the optimal value (MinVal), 
% then find all the solutions with that value.
go :-
   
   writeln("\nFind the optimal solution\n"),
   problem(Matrix),
   armies(Armies),
   writeln(armies=Armies),
   once(set_covering_deployment(Matrix, Armies, MinVal,_Assignments)),

   format("\nNow find all optimal solutions with MinVal ~d:\n", MinVal),
   findall(Assignments, set_covering_deployment(Matrix, Armies, MinVal, Assignments),L), 
   length(L,Len),
   nl,
   writeln("All solutions:\n"),
   maplist(writeln, L),
   format("\nIt was ~d solution(s)\n", [Len]),
   nl.


set_covering_deployment(Matrix, Armies, MinVal, Assignments) :-

   % adjacency matrix of the cities, order N
   length(Matrix,N),

   % first army
   length(Xs,N),
   Xs ins 0..1,

   % second army
   length(Ys,N),
   Ys ins 0..1,

   %%
   %% Constraint 1: There is always an army in a city (+ maybe a backup)
   %%          Or rather: Is there a backup, there must be an
   %%          an army
   %% 
   maplist(constraint1,Xs,Ys),


   %%
   %% Constraint 2: There should always be an backup army near
   %% every city
   %%
   maplist(constraint2(Ys),Matrix,Xs),

           
   %% objective: minimize the total number of armies
   zip_sum(Xs,Ys,0,MinVal),

   % flatten([Xs,Ys],XYs), % variant
   % sum(XYs,#=,MinVal),

   %% either search for all solutions (for the minimum value) or
   %% the optimal value
   flatten([Xs,Ys,MinVal], Vars),
   (
    ground(MinVal)
   -> 
    labeling([],Vars)
   ;
    labeling([min(MinVal)], Vars)
   ),
  
   % convert X and Y to nicer representation
   assignments(Xs,Ys,Armies,Assignments),

   writeln(minVal=MinVal),
   writeln(x=Xs),
   writeln(y=Ys),
   writeln(assigments=Assignments),
   nl,nl.

%%
%% Constraint 1: There is always an army in a city (+ maybe a backup)
%%          Or rather: Is there a backup, there must be an
%%          an army
%% 
constraint1(X,Y) :- X #>= Y. 


%%
%% Constraint 2: There should always be an backup army near
%% every city
%%
constraint2(Ys,MatRow,X) :-
        scalar_product(MatRow,Ys,#=,YMSum),
        X + YMSum #>= 1.
          
%%      
%% zip sum
%%
zip_sum([],[],Sum,Sum).
zip_sum([X|Xs],[Y|Ys],Sum0,Sum) :-
        Sum1 #= Sum0 + X+Y,
        zip_sum(Xs,Ys,Sum1,Sum).

%%
%% Convert the assignments of Xs and Ys
%% to a nicer representation.
%%
assignments(Xs,Ys,Armies,Assignments) :-
        length(Ys, Len),
        findall((A=Num),(between(1,Len,I),
                   element(I,Xs,X),
                   element(I,Ys,Y),
                   Num #= X + Y, Num #> 0,
                   nth1(I,Armies,A)
                   ),
                Assignments).



problem(Problem) :- 
        Problem = 
        [[0, 1, 0, 1, 0, 0, 1, 1],
         [1, 0, 0, 1, 0, 0, 0, 0],
         [0, 0, 0, 0, 1, 1, 0, 0],
         [1, 1, 0, 0, 0, 0, 1, 0],
         [0, 0, 1, 0, 0, 1, 1, 0],
         [0, 0, 1, 0, 1, 0, 1, 1],
         [1, 0, 0, 1, 1, 1, 0, 1],
         [1, 0, 0, 0, 0, 1, 1, 0]].

armies(Armies) :- 
        Armies = ["Alexandria", "Asia Minor", "Britain", "Byzantium", "Gaul", "Iberia", "Rome", "Tunis"].
:- initialization(go).
%-------------------------------------------- 210 hakank_swi_set_covering_skiena
/*

  Set covering problem in SWI Prolog

  Example from Steven Skiena, The Stony Brook Algorithm Repository
  http://www.cs.sunysb.edu/~algorith/files/set-cover.shtml
  """
  Input Description: A set of subsets S_1, ..., S_m of the 
  universal set U = {1,...,n}.
  
  Problem: What is the smallest subset of subsets T subset S such 
  that \cup_{t_i in T} t_i = U?
  """
  Data is from the pictures INPUT/OUTPUT.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% First find the optimal value (MinVal), then find all the solutions with that value.
%
go :-

   writeln("Find the optimal solution"),
   belongs(Belongs),
   set_covering_skiena(Belongs, MinVal,_),

   format("\nFinding all optimal solutions with MinVal ~d:\n", [MinVal]),
   findall(X, set_covering_skiena(Belongs,  MinVal,X),L),
   length(L,Len),
   maplist(writeln,L),
   format("It was ~d solutions\n", [Len]),
   nl.


set_covering_skiena(Belongs, MinVal, X) :-

   length(Belongs,NumSets),

   length(X,NumSets),
   X ins 0..1,

   transpose(Belongs,BelongsTransposed),
   maplist(check_sum(X),BelongsTransposed),
   sum(X,#=,MinVal),

   
   % either search for all solutions (for the minimum value) or
   % the optimal value
   ( ground(MinVal)
   ->
       labeling([],X)
   ;
     labeling([min(MinVal)], X)
   ).

check_sum(X,B) :-
        maplist(x_times_b,X,B,Z),
        sum(Z,#>=,1).

%% Z = X if B = 1, else 0
x_times_b(X,B,Z) :-
        B #= 1 #==> Z #= X,
        B #= 0 #==> Z #= 0.



%
% The belong matrix:
%
belongs(Belongs) :- 
        Belongs = 
        [[1,1,0,0,0,0,0,0,0,0,0,0],
         [0,1,0,0,0,0,0,1,0,0,0,0],
         [0,0,0,0,1,1,0,0,0,0,0,0],
         [0,0,0,0,0,1,1,0,0,1,1,0],
         [0,0,0,0,0,0,0,0,1,1,0,0],
         [1,1,1,0,1,0,0,0,1,1,1,0],
         [0,0,1,1,0,0,1,1,0,0,1,1]].
:- initialization(go).
%----------------------------------------------- 211 hakank_swi_shifted_division
/*

  Shifted divsion in SWI Prolog

  https://twitter.com/queued_q/status/1315505135246663682
  """
   7903225806451612       7
   -----------------  =   -
    9032258064516128      8
  """

  This is represented as

    x/y = a/b

  Note that a (here 7) is the first digit of x and b (here 8) is the
  last digit of y. These constraints are what make it interesting problem.

  An "interesting division" is when the number x is without any repetition.


  Compare with my Z3 model http://hakank.org/z3/shifted_division.py which has some 
  more discussions about interestingness etc.
  

  *  N=2..100: 41.3s Tested in go/0.
     labeling([ff,enum],[X,Y,A,B,C]) : 402,562,232 inferences, 41.346 CPU in 41.347 seconds (100% CPU, 9736365 Lips)

     Cf my Z3's shifted_division that took 49.9s.

     Example: 

     n=17
     16666666666666666/66666666666666664 = 1/4
     repeating:66666666:8

     19999999999999999/99999999999999995 = 1/5
     repeating:99999999:8

     23529411764705882/35294117647058823 = 2/3
     Interesting division

     26666666666666666/66666666666666665 = 2/5
     repeating:66666666:8

     47058823529411764/70588235294117646 = 4/6
     Interesting division

     48484848484848484/84848484848484847 = 4/7
     repeating:48484848:8

     49999999999999999/99999999999999998 = 4/8
     repeating:99999999:8

     65454545454545454/54545454545454545 = 6/5
     repeating:54545454:8

     74242424242424242/42424242424242424 = 7/4
     repeating:42424242:8

     87671232876712328/76712328767123287 = 8/7
     repeating:87671232:8

     95294117647058823/52941176470588235 = 9/5
     Interesting division

     See go_interesting/0 below for only the interesting divisions.


  * N=1231: 2min 32.699s Tested in go2/0.
    101,215,441 inferences, 152.699 CPU in 152.732 seconds (100% CPU, 662843 Lips)

    Cf Z3's shifted_division that took 2min43.20s

  * N=12345 Tested in go3/0.

    Got 2 solutions in 1000.548 seconds, then stack limit.
    
    Note that my Z3 shifted_division model does not give an answer at all on this.


  Also see my Picat model http://hakank.org/picat/shifted_division.pi

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/
:- use_module(library(clpfd)).

go :-
    % An interesting division is when there's no repeating digits
    % (defined by the following regexp).
    re_compile("(\\d{2,})\\1",Re,[]),
    between(2,100,N),
    writeln(n=N),
    nl,
    shifted_division(N, [X,Y,A,B]),
    % writeln([x=X,y=Y,a=A,b=B]),
    format('~d/~d = ~d/~d~n',[X,Y,A,B]),
    number_string(X,S),
    (re_matchsub(Re,S,Sub,[]) ->
        SS = Sub.1,
        string_length(SS,SSLen),
        writeln(repeating:SS:SSLen)
    ;
        % It can only be interesting if the number is
        % longer than 4 digit.
        N > 5 ->
            writeln("Interesting division")
        ;
            true
    ),
    nl,
    fail,
    
    nl.

/*
  Only showing the solutions for N=2..100 (i.e. no fancy stuff): 43.6s


  % 402,552,303 inferences, 43.626 CPU in 43.651 seconds (100% CPU, 9227319 Lips)

*/
go_loop_only :-
    between(2,100,N),
    writeln(n=N),
    nl,
    shifted_division(N, [X,Y,A,B]),
    format('~d/~d = ~d/~d~n',[X,Y,A,B]),
    fail,
    
    nl.


/*
  Only show the interesting divisions
    x/y = a/b
 i.e. those that does not contain any repetitions in x.

  6: 987804/878048 = 9/8
  7: 1428571/4285713 = 1/3
  7: 2857142/8571426 = 2/6
  7: 3461538/4615384 = 3/4
  7: 4102564/1025641 = 4/1
  7: 4571428/5714285 = 4/5
  7: 5952380/9523808 = 5/8
  7: 6428571/4285714 = 6/4
  7: 6923076/9230768 = 6/8
  7: 7538461/5384615 = 7/5
  7: 8205128/2051282 = 8/2
  7: 8311688/3116883 = 8/3
  9: 876712328/767123287 = 8/7
 14: 67924528301886/79245283018867 = 6/7
 14: 81012658227848/10126582278481 = 8/1
 16: 7903225806451612/9032258064516128 = 7/8
 17: 23529411764705882/35294117647058823 = 2/3
 17: 47058823529411764/70588235294117646 = 4/6
 17: 95294117647058823/52941176470588235 = 9/5
 19: 2105263157894736842/1052631578947368421 = 2/1
 19: 4210526315789473684/2105263157894736842 = 4/2
 19: 6315789473684210526/3157894736842105263 = 6/3
 19: 8421052631578947368/4210526315789473684 = 8/4
 22: 5813953488372093023255/8139534883720930232557 = 5/7
 22: 9418604651162790697674/4186046511627906976744 = 9/4
 23: 39130434782608695652173/91304347826086956521737 = 3/7
 23: 54347826086956521739130/43478260869565217391304 = 5/4
 23: 71014492753623188405797/10144927536231884057971 = 7/1
 29: 31034482758620689655172413793/10344827586206896551724137931 = 3/1
 29: 62068965517241379310344827586/20689655172413793103448275862 = 6/2
 29: 93103448275862068965517241379/31034482758620689655172413793 = 9/3
 34: 7313432835820895522388059701492537/3134328358208955223880597014925373 = 7/3
 42: 975903614457831325301204819277108433734939/759036144578313253012048192771084337349397 = 9/7
 43: 5102040816326530612244897959183673469387755/1020408163265306122448979591836734693877551 = 5/1
 45: 910112359550561797752808988764044943820224719/101123595505617977528089887640449438202247191 = 9/1
 47: 53191489361702127659574468085106382978723404255/31914893617021276595744680851063829787234042553 = 5/3
 59: 61016949152542372881355932203389830508474576271186440677966/10169491525423728813559322033898305084745762711864406779661 = 6/1

*/ 
go_interesting :-
    % An interesting division is when there's no repeating digits
    % (defined by the following regexp).
    re_compile("(\\d{2,})\\1",Re,[]),
    between(5,100,N),
    shifted_division(N, [X,Y,A,B]),
    % writeln([x=X,y=Y,a=A,b=B]),
    number_string(X,S),
    (re_match(Re,S) ->
        true
    ;
        format('~d: ~d/~d = ~d/~d~n',[N, X,Y,A,B])
    ),
    fail,
    nl.

/*
  Printing all 23 solutions for 1231 digit numbers.

  101,215,441 inferences, 152.699 CPU in 152.732 seconds (100% CPU, 662843 Lips)

*/
go2 :-
        N = 1231,
        shifted_division(N, [X,Y,A,B]),
        writeln([X,Y,A,B]),
        fail,
        
        nl.

/*
   After 1000s it has solved two instances
   199...99,99..5
   and
   166..6,66..4
   and then it stopped with
   144,307,765 inferences, 1000.537 CPU in 1000.548 seconds (100% CPU, 144230 Lips)
   ERROR: Stack limit (1.0Gb) exceeded

   Time to find the first solution: 
   % 79,598,205 inferences, 399.911 CPU in 399.917 seconds (100% CPU, 199040 Lips)


   Note that Z3 couldn't handle this size at all.

*/
go3 :-
        N = 12345,
        shifted_division(N, [X,Y,A,B]),
        writeln([X,Y,A,B]),
        % fail,        
        nl.


shifted_division(N, [X,Y,A,B]) :-
        N1 is N-1,
        N2 is N-2,
        CMin is 10^(N2),
        CMax is 10^(N1)-1,
        C in CMin..CMax,        % The common number
        XYMin is 10^(N1),
        XYMax is 10^N-1,
        [X,Y] ins XYMin..XYMax,
        [A,B] ins 0..9,

        X #= C + A*10^(N1),
        Y #= 10*C + B,
        
        X*B #= A*Y,
        X #\= Y,
        % Timing for N=2..100
        % labeling([ffc,up,bisect],[X,Y,A,B,C]). % 660,277,452 inferences, 88.431 CPU in 88.598 seconds (100% CPU, 7466572 Lips)
        labeling([ff,enum],[X,Y,A,B,C]). % 402,552,273 inferences, 44.291 CPU in 44.497 seconds (100% CPU, 9088888 Lips)
        % labeling([ffc,enum],[X,Y,A,B,C]). % 402,576,193 inferences, 44.328 CPU in 44.420 seconds (100% CPU, 9081817 Lips)
:- initialization(go).
%------------------------------------------------- 212 hakank_swi_sicherman_dice
/*

  Sicherman Dice problem in SWI Prolog

  From http://en.wikipedia.org/wiki/Sicherman_dice
  """ 
  Sicherman dice are the only pair of 6-sided dice which are not normal dice, 
  bear only positive integers, and have the same probability distribution for 
  the sum as normal dice.
  
  The faces on the dice are numbered 1, 2, 2, 3, 3, 4 and 1, 3, 4, 5, 6, 8.
  """

  I read about this problem in a book/column by Martin Gardner long
  time ago, and got inspired to model it now by the WolframBlog post
  "Sicherman Dice": http://blog.wolfram.com/2010/07/13/sicherman-dice/

  This model gets the two different ways, first the standard way and
  then the Sicherman dice:
  
  x1 = array1d(1..6, [1, 2, 3, 4, 5, 6]);
  x2 = array1d(1..6, [1, 2, 3, 4, 5, 6]);
  ----------
  x1 = array1d(1..6, [1, 2, 2, 3, 3, 4]);
  x2 = array1d(1..6, [1, 3, 4, 5, 6, 8]);


  Extra: If we also allow 0 (zero) as a valid value then the 
  following two solutions are also valid:
  
  x1 = array1d(1..6, [0, 1, 1, 2, 2, 3]);
  x2 = array1d(1..6, [2, 4, 5, 6, 7, 9]);
  ----------
  x1 = array1d(1..6, [0, 1, 2, 3, 4, 5]);
  x2 = array1d(1..6, [2, 3, 4, 5, 6, 7]);
  
  These two extra cases are mentioned here:
  http://mathworld.wolfram.com/SichermanDice.html



  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        % sicherman_dice(X1,X2,1),
        % writeln(x1=X1),
        % writeln(x2=X2),
        findall(_, sicherman_dice(_X1a,_X2a,1),_L1),
        nl,
        findall(_, sicherman_dice(_X1b,_X2b,0),_L2),
        nl.
      

%%
%% Sicherman dice.
%%
%% Ensure that the two dice (X1, X2) are distributed according to
%% standard two dice distribution.
%%
%% Min: The minimum number of spots on each die (0 or 1).
%%
sicherman_dice(X1,X2, Min) :-
        
        format("\nMin: ~d\n", Min),
        
        N = 6,                  % number of dice
        M = 10,                 % max value of each side

        %% standard distribution of 2 pair of dice
        StandardDist = [1,2,3,4,5,6,5,4,3,2,1],


        length(X1,N),
        length(X2,N),
        X1 ins Min..M,
        X2 ins Min..M,

        %% ensure standard distributions of the sums
        numlist(1,10,Ks),
        maplist(standard_dist(X1,X2,StandardDist),Ks),
        
        %% Symmetry breaking
        increasing(X1),
        increasing(X2),

        %% x1 is less <= to x2
        maplist(lex_lte,X1,X2),

        flatten([X1,X2],Vars),
        labeling([min], Vars),

        writeln(X1),
        writeln(X2),
        nl.

%%
%% Ensure that all the numbers (Ks) are according to
%% the standard distribution.
%%
standard_dist(X1,X2,StandardDist,K) :-
        length(X1,N),
        numlist_cross2(N,N,IJs),
        element(K,StandardDist,SDK),
        dist_k(IJs,K,X1,X2,0,SDK).

%%
%% The distribution for this K (or rather K+1)
%%
dist_k([],_K,_X1,_X2,Sum,Sum).
dist_k([[I,J]|IJs],K,X1,X2,Sum0,Sum) :-
        element(I,X1,X1I),
        element(J,X2,X2J),
        B in 0..1, 
        (X1I + X2J #= K+1) #<==> B #= 1,
        Sum1 #= Sum0 + B,
        dist_k(IJs,K,X1,X2,Sum1,Sum).

:- initialization(go).
%------------------------------------------------- 213 hakank_swi_ski_assignment
/*

  Ski assignment in SWI Prolog

  From Jeffrey Lee Hellrung, Jr.: PIC 60, Fall 2008, Final Review, December 12, 2008
  http://www.math.ucla.edu/~jhellrun/course_files/Fall%25202008/PIC%252060%2520-%2520Data%2520Structures%2520and%2520Algorithms/final_review.pdf
  """
  5. Ski Optimization! Your job at Snapple is pleasant but in the winter you've 
  decided to become a ski bum. You've hooked up with the Mount Baldy Ski Resort. 
  They'll let you ski all winter for free in exchange for helping their ski rental 
  shop with an algorithm to assign skis to skiers. Ideally, each skier should 
  obtain a pair of skis whose height matches his or her own height exactly. 
  Unfortunately, this is generally not possible. We define the disparity between 
  a skier and his or her skis to be the absolute value of the difference between 
  the height of the skier and the pair of skis. Our objective is to find an 
  assignment of skis to skiers that minimizes the sum of the disparities. 
  ...
  Illustrate your algorithm by explicitly filling out the A[i, j] table for the 
  following sample data:
    * Ski heights: 1, 2, 5, 7, 13, 21.
    * Skier heights: 3, 4, 7, 11, 18.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   SkiHeights   = [1, 2, 5, 7, 13, 21],
   SkierHeights = [3, 4, 7, 11, 18],
   
   length(SkiHeights, NumSkis),
   length(SkierHeights,NumSkiers),

   length(X,NumSkiers), 
   X ins 1..NumSkis,
   
   all_different(X),

   % minimize the differences of ski height and skier's height (Z)
   numlist(1,NumSkiers,Is),
   check_heights(Is,X,SkierHeights,SkiHeights,0,Z),
   
   labeling([min(Z)],X),

   writeln(x=X),
   writeln(z=Z).


check_heights([],_X,_SkierHeights,_SkiHeights,Sum,Sum).
check_heights([I|Is],X,SkierHeights,SkiHeights,Sum0,Sum) :-
        element(I,X,XI),
        element(XI,SkiHeights,SXI),
        element(I,SkierHeights,SXI2),
        Sum1 #= Sum0 + abs(SXI - SXI2),
        check_heights(Is,X,SkierHeights,SkiHeights,Sum1,Sum).
        
:- initialization(go).
%---------------------------------------------------- 214 hakank_swi_sliding_sum
/*

  Global constraint sliding sum in SWI Prolog

  From Global Constraint Catalog
  http://www.emn.fr/x-info/sdemasse/gccat/Csliding_sum.html
  """
  sliding_sum(LOW, UP, SEQ, VARIABLES)
  
  Purpose
 
  Constrains all sequences of SEQ consecutive variables of the collection 
  VARIABLES so that the sum of the variables belongs to interval [LOW, UP].
 
  Example
      (
      3, 7, 4,<1, 4, 2, 0, 0, 3, 4>
      )
 
  The example considers all sliding sequences of SEQ=4 consecutive values of 
  <1, 4, 2, 0,0,3, 4> collection and constraints the sum to be in 
  [LOW,UP] = [3, 7]. The sliding_sum constraint holds since the sum associated 
  with the corresponding subsequences 1 4 2 0, 4 2 0 0, 2 0 0 3, and 
  0 0 3 4 are respectively 7, 6, 5 and 7.
  """

  Note:
  sliding_sum/[3,4] are defined in http://hakank.org/swi_prolog/hakank_utils.pl
  

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Testing sliding_sum/4.
%%
go :-

        N = 7,
        length(Variables,N),
        Variables ins 0..4,

        Low in 0..10,
        Up in 0..10,

        Seq in 1..N,
        Seq #= 4,

        Low #= 4,
        Up #= 7,

        sliding_sum(Low, Up, Seq, Variables),

        flatten([Variables,Low,Up,Seq],Vars),
        labeling([],Vars),

        writeln([seq=Seq,low=Low,up=Up,variables=Variables]),
        fail.

go.


%%
%% Testing of sliding_sum/3.
%%
go2 :-

        N = 13,
        length(Variables,N),
        Variables ins 0..4,

        Seq in 1..N,
        Seq #= 3,

        Sum in 0..9,
        Sum #= 4,
        
        sliding_sum(Sum, Seq, Variables),

        flatten([Variables,Sum],Vars),
        labeling([],Vars),

        writeln([seq=Seq,sum=Sum,variables=Variables]),
        fail.

go2.

:- initialization(go).
%--------------------------------------------- 215 hakank_swi_smugglers_knapsack
/*

  Smuggler's knapsack problem  in SWI Prolog

  
  Marriott & Stuker: 'Programming with constraints', page  101f, 115f

  Smuggler's knapsack.
  
  A smuggler has a knapsack with a capacity of 9 units.
              Unit       Profit
  Whisky:     4 units    15 dollars
  Perfume:    3 units    10 dollars
  Cigarettes: 2 units     7 dollars

  What is the optimal choice?

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go:-
        Capacity = 9,
        once(smuggler([W,P,C,Profit,Capacity],Capacity)),
        writeln([whisky=W,perfume=P,cigarettes=C,profit=Profit,capacity=Capacity]).

%%
%% Different capacities of the knapsack
%%
go2:-
        %% member(Capacity,[2,3,5,7,11,13,17,23,29,31]),
        between(1,31,Capacity),
        once(smuggler([W,P,C,Profit,Capacity],Capacity)),
        write([whiskey=W,perfume=P,cigarettes=C,profit=Profit,capacity=Capacity]),nl,
        fail.
go2.


smuggler([W,P,C,Profit,Capacity],Capacity) :-

        [W,P,C] ins 0..9,

        %                 Unit       Profit
        % Whisky:     4 units    15 dollars
        % Perfume:    3 units    10 dollars
        % Cigarettes: 2 units     7 dollars

        % Units
        4*W  + 3*P  + 2*C #=< Capacity,

        % Profit.
        15*W + 10*P + 7*C #= Profit,
        
        labeling([max(Profit)],[W,P,C,Profit,Capacity]).
:- initialization(go).
%---------------------------------------------------------- 216 hakank_swi_sonet
/*

  SONET problem in SWI Prolog

  From the ESSENCE' model in the Minion Translator examples:
  http://www.cs.st-andrews.ac.uk/~andrea/examples/sonet/sonet_problem.eprime
  """
  The SONET problem is a network design problem: set up a network between
  n nodes, where only certain nodes require a connection.
  Nodes are connected by putting them on a ring, where all nodes
  on a ring can communicate. Putting a node on a ring requires a so-called
  ADM, and each ring has a capacity of nodes, i.e. ADMs. There is a certain 
  amount of rings, r, that is available. The objective is to set up a network
  by using a minimal amount of ADMs.

  About the problem model

  The problem model has the amount of rings ('r'), amount of nodes('n'),
  the 'demand' (which nodes require communication) and node-capacity of each 
  ring ('capacity_nodes') as parameters.
  The assignement of nodes to rings is modelled by a 2-dimensional matrix 'rings',
  indexed by the amnount of rings and nodes. The matrix-domain is boolean:
  If the node in column j is assigned to the ring in row i, then rings[i,j] = 1 
  and 0 otherwise. So all the '1's in the matrix 'rings' stand for an ADM.
  Hence the objective is to minimise the sum over all columns and rows of matrix
  'rings'.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        R = 4,
        N = 5,
        Demand = [[0,1,0,1,0],
                  [1,0,1,0,0],
                  [0,1,0,0,1],
                  [1,0,0,0,0],
                  [0,0,1,0,0]],

        CapacityNodes = [3,2,2,1],

        %% decision variables
        new_matrix(R,N, 0..1, Rings),
        flatten(Rings,Vars),

        %% to optimize
        sum(Vars,#=,Z),
        
        %% if there is a demand between 2 nodes, then there has to exist 
        %% a ring, on which they are both installed
        common_rings(N,Demand,Rings),
        
        %% capacity of each ring must not be exceeded     
        maplist(capacity_ring,Rings,CapacityNodes),
        
        labeling([min(Z)],Vars),

        writeln(z=Z),
        maplist(writeln,Rings),
        nl.

%% if there is a demand between 2 nodes, then there has to exist 
%% a ring, on which they are both installed
common_rings(N,Demand,Rings) :-
        findall([Client1,Client2],
                (between(1,N,Client1),
                 Client1_1 #= Client1+1,
                 between(Client1_1, N,Client2)
                ),
                Cs),
        maplist(common_rings_(Rings,Demand),Cs).
common_rings_(Rings,Demand,[Client1,Client2]) :-
        matrix_element5(Demand,Client1,Client2,D),
        (
         D #= 1
        ->
         matrix_element5(Rings,Ring,Client1,R1),
         matrix_element5(Rings,Ring,Client2,R2),
         R1 + R2 #>= 2
        ;
         true
        ).

%%
%% capacity of each ring must not be exceeded
%%
capacity_ring(RingsRow,CapacityNode) :-
        sum(RingsRow,#=,S),
        S #=< CapacityNode.
        
:- initialization(go).
%---------------------------------------------------- 217 hakank_swi_spreadsheet
/*

  Simple spreadsheet (using clpr) in SWI Prolog

  From Krzysztof Apt "Principles of Constraint Programming" page 16ff. Spreadsheet.
  Cf Winston "Artificial Intelligence", 3rd edition, page 235 
  (not the same values though)


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpr)).

go :-
        { 
          B1 = 0.17,
          B4 = 3.5,
          B5 = 1.7,
          C4 = 1.5,
          C5 = 4.5,
          D4 = B4 * C4,
          D5 = B5 * C5,
          E7 = D4 + D5,
          E8 = E7 * (1.0 + B1)
        },
        writeln([b1=B1,
                 b4=B4,
                 b5=B5,
                 c4=C4,
                 c5=C5,
                 d4=D4,
                 d5=D5,
                 e7=E7,
                 e8=E8]),

      nl.
:- initialization(go).
%--------------------------------------- 218 hakank_swi_square_root_of_wonderful
/*

  Square root of WONDERFUL in SWI Prolog

  Martin Gardner (June 1961)
  """
  'The Square Root of Wonderful' was the name of a play on Broadway. If
  each letter in WONDERFUL stands for a different digit (zero excluded)
  and if OODDF, using the same code, represent the square root, the what
  _is_ the square root of wonderful?
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        FD = [W,O,N,D,E,R,F,U,L],
        FD ins 1..9,

        all_different(FD), 

        WONDERFUL #> 0,
        OODDF #> 0,

        WONDERFUL #= 100000000*W + 10000000*O + 1000000*N + 100000*D + 10000*E + 1000*R +  100*F + 10*U + L,

        OODDF #= 10000*O + 1000*O + 100*D + 10*D + F,

        OODDF*OODDF #= WONDERFUL,

        labeling([],FD),

        writeln(wonderful:WONDERFUL),
        writeln(ooddf:OODDF).
:- initialization(go).
%------------------------------------------------ 219 hakank_swi_stable_marriage
/*

  Stable marriage in SWI Prolog

  Problem and OPL model from Pascal Van Hentenryck
  "The OPL Optimization Programming Language", page 43ff.

  Also, see 
  http://www.comp.rgu.ac.uk/staff/ha/ZCSP/additional_problems/stable_marriage/stable_marriage.pdf


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        all_solutions(1), % 3 solutions, 0.13s
        all_solutions(2), % 6 solutions, 0.86s
        all_solutions(3), % 2 solutions, 0.06s
        all_solutions(4),    % 3 solutions, 0.2s
        all_solutions(5), % 1 solution, 0.09s
        %% one_solution(6), % 1 solution, 11.7s
        all_solutions(6), % 8 solutions, 11,7s
        %% one_solution(7), % Stack limit (1.0Gb) exceeded after 38s
        %% all_solutions(7), % too hard
        %% one_solution(8), % too hard
        nl.


all_solutions(Problem) :-
        format("\nProblem ~d:\n", [Problem]),
        time(findall([Husband,Wife], 
                    stable_marriage(Problem,Husband,Wife),L)),
        writeln(L),
        maplist(print_solution,L),
        length(L,Len),
        format("Num solutions: ~d~n", [Len]),
        nl.

print_solution([H,W]) :-
        format("Husband: ~w~n", [H]),
        format("Wife: ~w~n", [W]),
        nl.

one_solution(Problem) :-
        format("\nProblem ~d:\n", [Problem]),
        time(once(stable_marriage(Problem,Husband,Wife))),
        print_solution([Husband,Wife]).

%%
%% Stable marriage problem.
%%
stable_marriage(Problem,Husband,Wife) :-

   problem(Problem, RankWomen,RankMen),

   length(RankWomen,NumMen),
   length(RankMen,NumWomen),
   N #= NumMen, 

   length(Wife, NumMen),
   Wife ins 1..NumWomen,

   length(Husband, NumWomen),
   Husband ins 1..NumMen,

   %% If a wife is married to some husband then
   %% this husband must - of course - be married to that wife as well.
   inverse(Wife,Husband),
   
   %% all_distinct(Wife),
   %% all_distinct(Husband),
   all_different(Wife), %% this is faster
   all_different(Husband),

   %% The indices
   findall([I,J],(between(1,N,I),between(1,N,J)),IJs),
   
   %% The two big loops: husband -> wife and wife -> husband
   check1(IJs,RankMen,RankWomen,Wife,Husband),
   check2(IJs,RankWomen,RankMen,Husband,Wife),

   %% search
   flatten(Wife,WifeFlatten),
   flatten(Husband,HusbandFlatten),
   append([WifeFlatten,HusbandFlatten],Vars),

   labeling([ffc,bisect],Vars).


check1([],_RankMen,_RankWomen,_Wife,_Husband).
check1([[M,O]|IJs],RankMen,RankWomen,Wife,Husband) :-
        %% This is (approximately) how the constraint is stated
        %% in Van Hentenryck's OPL model.
        %   (RankMen[M,O] #< RankMen[M, Wife[M]]) #=>
        %      (RankWomen[O,Husband[O]] #< RankWomen[O,M])
        matrix_element2(RankMen,M,O,RankMenMO),
        element(M,Wife,WifeM),
        matrix_element2(RankMen,M,WifeM,RankMenMWifeM),
        element(O,Husband,HusbandO),
        matrix_element2(RankWomen,O,HusbandO,RankWomenOHusbandO),
        matrix_element2(RankWomen,O,M,RankWomenOM),
        (RankMenMO #< RankMenMWifeM) #==> (RankWomenOHusbandO #< RankWomenOM),
        check1(IJs,RankMen,RankWomen,Wife,Husband).

check2([],_RankWomen,_RankMen,_Husband,_Wife).
check2([[W,O]|IJs],RankWomen,RankMen,Husband,Wife) :-
        %% This is (approximately) how the constraint is stated
        %% in Van Hentenryck's OPL model.
        %   (RankWomen[W,O] #< RankWomen[W,Husband[W]]) #=>
        %      (RankMen[O,Wife[O]] #< RankMen[O,W])
        matrix_element2(RankWomen,W,O,RankWomenWO),
        element(W,Husband,HusbandW),
        matrix_element2(RankWomen,W,HusbandW,RankWomenWHusbandW),
        element(O,Wife,WifeO),
        matrix_element2(RankMen,O,WifeO,RankMenOWifeO),
        matrix_element2(RankMen,O,W,RankMenOW),
        (RankWomenWO #< RankWomenWHusbandW) #==> (RankMenOWifeO #< RankMenOW),
        check2(IJs,RankWomen,RankMen,Husband,Wife).

%
% Original problem from Van Hentenryck
%
problem(1, W, M) :-
W = 
   [[1, 2, 4, 3, 5],  % rankWomen
    [3, 5, 1, 2, 4],
    [5, 4, 2, 1, 3],
    [1, 3, 5, 4, 2],
    [4, 2, 3, 5, 1]],
M =
   [[5, 1, 2, 4, 3],  % rankMen
    [4, 1, 3, 2, 5],
    [5, 3, 2, 4, 1],
    [1, 5, 4, 3, 2],
    [4, 3, 2, 1, 5]].




% Data from
% http://mathworld.wolfram.com/StableMarriageProblem.html
% """
% In the rankings illustrated above, the male-optimal stable 
% marriage is 
%     4, 2, 6, 5, 3, 1, 7, 9, 8, 
% and the female-optimal stable marriage is 
%     1, 2, 8, 9, 3, 4, 7, 6, 5. 
% A stable marriage can be found using StableMarriage[m, w] in the 
% Mathematica package Combinatorica` (which can be loaded with the 
% command <<Combinatorica`)
%
% 
% Note that the matrices given at the MathWorld page are transposed.
% 
% There are 6 solutions, though none is the solution given above:
%
% wife   : [6, 1, 4, 8, 5, 7, 3, 2, 9]
% husband: [2, 8, 7, 3, 5, 1, 6, 4, 9]
%
% wife   : [6, 1, 4, 8, 5, 9, 3, 2, 7]
% husband: [2, 8, 7, 3, 5, 1, 9, 4, 6]
%
% wife   : [6, 4, 1, 8, 5, 7, 3, 2, 9]
% husband: [3, 8, 7, 2, 5, 1, 6, 4, 9]
%
% wife   : [6, 4, 9, 8, 3, 7, 1, 5, 2]
% husband: [7, 9, 5, 2, 8, 1, 6, 4, 3]
%
% wife   : [6, 5, 9, 8, 3, 7, 1, 4, 2]
% husband: [7, 9, 5, 8, 2, 1, 6, 4, 3]
%
% wife   : [7, 5, 9, 8, 3, 6, 1, 4, 2]
% husband: [7, 9, 5, 8, 2, 6, 1, 4, 3]
%
%
% This is the transposed version from the MathWorld page
% 
problem(2, M, W) :-
M =
   % rankMen = 
   [[7, 3, 8, 9, 6, 4, 2, 1, 5],
    [5, 4, 8, 3, 1, 2, 6, 7, 9],
    [4, 8, 3, 9, 7, 5, 6, 1, 2],
    [9, 7, 4, 2, 5, 8, 3, 1, 6],
    [2, 6, 4, 9, 8, 7, 5, 1, 3],
    [2, 7, 8, 6, 5, 3, 4, 1, 9],
    [1, 6, 2, 3, 8, 5, 4, 9, 7],
    [5, 6, 9, 1, 2, 8, 4, 3, 7],
    [6, 1, 4, 7, 5, 8, 3, 9, 2]],
W =
   % rankWomen =
   [[3, 1, 5, 2, 8, 7, 6, 9, 4],
    [9, 4, 8, 1, 7, 6, 3, 2, 5],
    [3, 1, 8, 9, 5, 4, 2, 6, 7],
    [8, 7, 5, 3, 2, 6, 4, 9, 1],
    [6, 9, 2, 5, 1, 4, 7, 3, 8],
    [2, 4, 5, 1, 6, 8, 3, 9, 7],
    [9, 3, 8, 2, 7, 5, 4, 6, 1],
    [6, 3, 2, 1, 8, 4, 5, 9, 7],
    [8, 2, 6, 4, 9, 1, 3, 7, 5]].

%
% From 
% http://www.csee.wvu.edu/~ksmani/courses/fa01/random/lecnotes/lecture5.pdf
%
problem(3, M, W) :-
M =
   % rankMen = 
   [[1,2,3,4],
    [2,1,3,4],
    [1,4,3,2],
    [4,3,1,2]],
W=
   % rankWomen =
   [[1,2,3,4],
    [4,3,2,1],
    [1,2,3,4],
    [3,4,1,2]].


%
% From http://www.comp.rgu.ac.uk/staff/ha/ZCSP/additional_problems/stable_marriage/stable_marriage.pdf
% page 4
%
problem(4, M, W) :-
M =
   [[1,5,4,6,2,3],
    [4,1,5,2,6,3],
    [6,4,2,1,5,3],
    [1,5,2,4,3,6],
    [4,2,1,5,6,3],
    [2,6,3,5,1,4]],
W =
   [[1,4,2,5,6,3],
    [3,4,6,1,5,2],
    [1,6,4,2,3,5],
    [6,5,3,4,2,1],
    [3,1,2,4,5,6],
    [2,3,1,6,5,4]].


% Random instance (for my MiniZinc model) 10x10
% http://hakank.org/minizinc/stable_marriage_random10.dzn
problem(5, M, W) :-
M =
   [[10,2,5,9,8,1,4,7,3,6],
   [8,9,1,3,7,4,10,2,5,6],
   [8,3,10,2,9,7,4,1,5,6],
   [5,2,10,7,4,6,3,1,9,8],
   [3,9,4,1,7,5,2,6,8,10],
   [9,8,7,4,10,2,6,1,3,5],
   [8,3,9,4,6,7,10,1,5,2],
   [8,1,7,4,2,3,10,9,5,6],
   [8,3,6,4,2,7,9,1,10,5],
   [6,8,5,2,3,1,10,4,7,9]],
W =
   [[10,4,9,7,6,1,3,8,2,5],
   [5,9,4,7,8,10,6,1,3,2],
   [2,7,5,4,1,10,8,3,6,9],
   [3,2,10,7,4,8,6,5,9,1],
   [9,1,8,3,5,2,4,7,6,10],
   [6,7,5,8,1,3,4,9,10,2],
   [9,2,8,3,4,10,1,7,6,5],
   [8,4,10,2,9,6,5,3,1,7],
   [6,7,1,8,4,2,9,10,3,5],
   [7,9,5,8,6,10,3,2,4,1]].


% http://hakank.org/minizinc/stable_marriage_random20.dzn
% 20x20
problem(6, M, W) :-
M =
   [[10,4,3,20,19,11,2,18,6,13,17,5,7,12,14,16,8,15,9,1],
   [4,18,13,11,8,19,2,17,15,10,12,9,16,5,6,20,14,7,3,1],
   [14,11,13,4,17,10,6,12,16,2,7,1,19,9,20,5,3,15,8,18],
   [1,12,19,2,10,11,6,20,17,18,14,15,9,7,16,3,5,8,13,4],
   [8,2,12,20,5,10,9,15,7,16,6,13,18,1,11,14,4,19,3,17],
   [1,11,16,18,15,2,8,20,17,13,14,6,19,9,12,4,5,10,7,3],
   [6,5,20,13,10,1,4,9,17,15,12,14,3,16,18,19,8,2,11,7],
   [9,20,8,16,18,19,15,10,5,7,14,6,17,12,4,1,3,2,13,11],
   [2,20,10,8,14,5,18,15,1,17,16,9,4,6,11,3,19,12,13,7],
   [11,5,15,14,16,8,17,1,3,10,4,20,7,18,2,19,6,12,13,9],
   [11,10,8,13,5,3,15,2,9,1,7,12,14,17,6,19,16,20,4,18],
   [5,18,4,14,16,6,15,12,8,17,19,10,2,20,9,3,13,7,1,11],
   [3,17,14,9,10,16,11,13,8,1,2,6,5,18,4,20,15,19,7,12],
   [19,17,9,14,5,6,1,13,4,7,12,15,18,11,8,3,10,20,2,16],
   [12,5,6,14,16,4,18,3,11,19,15,17,2,13,1,8,9,20,7,10],
   [10,19,12,13,3,20,17,11,4,18,8,2,7,6,5,1,9,14,16,15],
   [2,19,1,12,16,20,6,13,14,11,18,17,4,10,9,5,3,15,7,8],
   [4,2,11,9,1,19,13,17,6,15,18,8,10,16,12,3,14,5,7,20],
   [18,17,8,4,10,13,19,1,12,20,3,11,5,7,6,14,15,9,2,16],
   [11,1,12,16,7,15,3,18,5,8,13,19,6,4,9,20,2,14,10,17]],
W =
   [[14,13,1,18,12,10,16,19,20,11,2,8,15,3,6,17,5,4,9,7],
    [1,7,13,3,18,16,17,20,9,6,2,11,14,10,4,8,12,19,15,5],
    [9,20,5,10,2,3,14,16,11,4,15,6,13,18,17,8,1,12,7,19],
    [3,7,1,11,8,13,18,20,12,16,2,4,15,9,10,17,6,19,14,5],
    [2,4,13,9,7,14,1,20,15,19,18,5,17,11,6,8,16,3,12,10],
    [12,16,4,15,9,14,17,6,2,1,7,11,8,10,19,20,13,18,3,5],
    [16,12,20,19,14,17,10,2,13,5,1,6,18,11,15,7,4,9,8,3],
    [2,15,1,20,10,19,7,14,6,8,16,9,18,4,5,12,17,11,3,13],
    [15,18,12,9,2,19,17,4,13,5,6,8,16,1,7,14,20,3,11,10],
    [12,1,7,18,17,4,14,15,5,8,10,20,19,16,2,9,13,6,3,11],
    [12,2,18,11,16,19,8,4,15,10,9,20,1,7,5,6,13,14,17,3],
    [14,15,11,7,16,12,2,1,17,4,20,3,5,9,8,18,13,19,6,10],
    [19,10,15,7,16,9,4,18,17,12,2,8,1,13,20,6,5,3,11,14],
    [13,2,12,3,19,6,16,5,7,9,11,4,1,18,20,14,8,10,17,15],
    [3,12,17,14,4,10,20,15,5,9,19,16,8,7,13,6,1,2,11,18],
    [16,20,2,10,17,11,9,8,15,12,13,5,14,4,7,3,18,19,1,6],
    [12,11,10,6,19,1,4,2,8,20,15,3,13,9,18,14,17,16,5,7],
    [16,7,1,13,11,3,8,2,9,14,10,6,15,17,20,12,18,4,5,19],
    [11,9,2,7,13,5,16,14,1,12,19,15,8,4,20,6,17,10,3,18],
    [6,15,3,19,8,9,5,1,11,7,12,18,13,4,10,16,17,14,20,2]].


%
% http://hakank.org/minizinc/stable_marriage_random50.dzn
% 50x50
problem(7, M, W) :- 
M = 
[[35,39,42,37,1,22,7,3,8,15,23,47,31,6,43,40,10,50,48,14,44,28,16,45,26,34,24,20,32,49,11,5,36,19,17,29,41,4,38,25,18,13,9,21,33,12,46,2,30,27],
[33,8,1,22,39,12,49,41,48,23,10,6,35,40,26,38,43,2,50,37,4,44,34,32,31,18,7,42,19,5,45,29,46,16,11,28,36,14,21,15,17,9,47,13,27,24,30,25,20,3],
[18,14,32,33,23,35,16,43,26,17,48,21,12,46,3,50,49,25,34,42,27,6,11,29,4,41,8,37,22,47,9,28,39,13,7,36,30,31,24,20,2,10,1,15,45,40,19,5,38,44],
[3,25,21,28,41,36,48,46,10,2,19,35,14,13,11,37,33,20,5,50,4,27,22,7,12,39,26,43,34,1,24,38,32,29,49,15,17,18,16,9,31,8,30,42,23,44,6,45,40,47],
[8,23,18,34,25,21,20,16,11,2,47,6,32,43,3,22,50,36,26,42,10,5,39,30,15,45,44,19,48,1,12,37,29,49,24,41,13,9,33,7,27,40,38,28,35,17,46,14,4,31],
[35,26,42,17,27,12,5,1,4,24,15,38,14,31,9,32,6,50,28,39,49,13,16,43,45,36,41,3,23,10,29,33,22,8,30,11,21,19,25,20,18,2,40,46,48,34,44,7,37,47],
[14,26,18,29,48,8,15,20,41,1,11,12,7,45,22,10,46,16,31,38,3,13,5,40,36,23,2,30,50,43,17,24,4,37,42,32,25,6,19,49,28,21,33,39,34,47,35,27,9,44],
[32,33,39,20,4,37,8,47,1,10,36,12,43,49,22,29,46,14,11,48,50,6,31,25,2,13,23,19,40,28,3,18,9,41,44,16,21,7,35,45,38,24,17,42,15,34,26,30,27,5],
[25,39,40,7,11,36,29,31,27,17,49,32,12,37,19,43,34,8,18,2,10,48,16,3,46,9,30,15,20,44,22,28,47,4,38,42,13,26,5,1,6,23,24,21,35,50,41,14,45,33],
[42,25,9,40,10,36,48,1,28,13,16,24,6,49,45,50,33,23,19,4,2,17,47,7,11,35,34,26,44,43,18,12,29,8,32,15,3,5,21,14,41,30,39,31,38,27,46,37,20,22],
[29,44,9,33,49,46,38,18,12,41,1,32,30,19,39,50,27,11,21,31,37,17,22,16,14,15,13,47,20,26,42,43,3,40,23,24,25,45,28,10,5,8,4,2,6,48,7,35,34,36],
[19,48,50,36,8,38,4,24,31,30,29,17,2,1,7,3,47,41,23,37,43,5,33,10,44,49,34,22,14,9,6,27,26,16,18,20,13,40,21,15,39,28,25,11,45,42,46,32,12,35],
[49,23,20,46,8,9,31,41,26,3,24,30,13,11,47,28,17,36,40,44,2,12,10,35,27,7,19,5,37,22,39,1,15,25,33,38,48,50,21,43,4,42,14,6,45,32,34,29,16,18],
[47,48,49,45,18,38,17,36,37,1,6,27,34,25,12,15,4,33,39,13,7,2,41,10,31,30,11,14,26,9,21,5,35,8,24,3,44,29,23,20,16,46,32,43,42,50,40,19,22,28],
[50,33,5,31,44,46,4,40,42,29,10,26,30,7,1,17,6,8,45,21,34,39,13,35,12,11,48,32,3,47,19,27,41,49,25,36,23,22,18,14,9,37,43,20,16,24,28,15,2,38],
[2,47,22,31,17,3,10,14,25,12,11,7,35,30,4,49,23,44,50,48,41,34,38,6,19,33,27,26,32,20,16,37,21,45,5,29,43,28,13,46,42,39,36,8,40,18,24,9,1,15],
[27,2,35,15,25,46,50,31,34,48,4,21,33,22,38,12,5,20,16,39,9,6,32,18,26,24,40,1,41,36,8,29,49,44,37,17,30,45,7,13,47,3,10,11,28,14,23,42,43,19],
[13,44,38,14,22,26,20,33,19,17,23,24,8,6,12,34,31,16,45,15,39,40,50,27,36,4,42,2,28,43,9,29,1,11,49,37,48,35,3,5,10,41,46,7,30,21,25,32,18,47],
[15,38,23,49,16,37,17,33,47,44,20,31,45,1,6,29,14,46,48,13,41,9,8,5,19,42,7,26,12,50,43,39,22,18,27,32,34,10,21,11,24,3,4,2,35,28,30,25,40,36],
[16,21,20,12,45,27,47,17,29,24,9,49,48,36,42,39,4,38,46,23,7,30,44,8,19,10,5,15,43,40,33,11,34,28,32,35,25,37,41,22,1,14,6,3,50,2,13,26,18,31],
[47,41,35,17,10,9,5,28,48,4,24,50,29,14,42,32,20,44,16,27,33,11,3,46,13,49,23,12,39,31,36,19,26,15,7,37,45,2,21,38,8,22,6,18,30,34,43,1,25,40],
[1,9,30,40,50,46,15,13,48,25,31,19,24,12,36,41,22,43,45,42,6,18,28,33,2,5,39,38,8,32,34,4,11,37,3,16,29,47,14,17,7,10,20,44,21,23,27,26,49,35],
[7,11,36,19,37,47,5,2,49,50,35,39,12,13,4,15,8,10,18,25,29,20,30,3,21,33,40,14,23,17,28,16,43,48,44,9,1,41,32,45,27,38,42,6,46,34,26,22,24,31],
[22,12,18,17,50,33,2,16,34,10,1,44,23,19,32,47,38,20,8,45,29,27,26,30,42,13,7,21,15,43,37,24,25,48,9,49,36,35,41,39,14,6,11,28,31,46,5,40,3,4],
[29,48,47,3,28,4,8,1,30,35,43,49,36,24,46,21,10,2,14,16,41,20,45,7,26,12,32,27,39,17,23,31,25,42,18,34,13,44,11,15,6,50,37,40,19,9,22,33,38,5],
[44,31,30,3,47,10,15,24,19,39,9,2,45,28,43,33,49,48,41,42,23,17,38,1,29,13,11,37,22,40,18,20,34,35,4,21,27,12,36,8,14,5,46,26,16,32,50,6,25,7],
[26,40,42,28,3,37,36,6,20,46,11,48,8,27,24,45,7,14,32,16,35,43,17,15,13,23,31,47,10,39,21,12,1,49,44,9,5,4,29,38,2,22,18,34,50,41,25,19,33,30],
[24,10,17,38,43,6,8,18,28,11,7,31,14,39,32,19,26,22,16,27,3,29,9,20,4,35,30,2,40,42,15,36,45,46,48,23,49,12,1,21,5,50,33,41,47,37,25,34,44,13],
[12,31,17,45,26,4,27,41,16,7,44,35,32,25,11,38,18,24,42,46,29,33,20,10,13,40,48,30,36,43,15,2,6,8,3,5,9,34,19,14,21,50,23,39,49,47,22,37,1,28],
[34,43,40,13,46,6,37,10,16,47,11,9,36,41,29,28,45,26,21,33,3,31,8,38,1,48,49,12,2,4,50,39,20,7,25,44,27,35,19,30,15,18,5,42,24,17,22,14,23,32],
[28,20,37,29,7,8,17,18,10,48,49,21,12,33,26,36,5,1,30,45,40,47,14,25,31,15,39,16,4,3,44,11,46,35,24,41,42,32,27,50,9,43,22,34,6,19,13,23,2,38],
[41,6,17,3,30,34,47,7,29,8,37,25,39,28,48,40,15,50,49,13,32,42,38,1,21,16,5,26,36,45,23,12,19,22,24,44,4,2,33,10,43,9,14,46,27,18,11,31,20,35],
[23,36,44,9,32,49,12,40,21,33,20,8,28,17,2,3,14,39,26,25,35,19,16,5,30,13,18,37,31,24,6,45,10,1,27,48,7,15,50,46,22,42,11,47,29,4,43,41,38,34],
[39,50,11,22,43,6,20,46,17,3,49,48,10,16,13,1,25,9,23,14,21,28,19,30,27,38,2,26,34,40,45,35,8,5,37,32,24,42,31,47,44,36,12,7,29,4,33,41,15,18],
[40,28,47,7,24,35,36,19,22,30,34,8,11,10,26,23,13,46,49,14,3,6,33,4,44,9,12,1,21,27,31,18,29,38,16,17,37,39,43,32,45,15,25,50,20,5,42,41,48,2],
[33,28,46,17,37,2,8,27,11,20,15,24,29,36,25,7,31,38,34,23,32,4,45,3,6,12,44,19,10,9,43,48,26,50,30,13,49,47,14,42,5,40,39,1,22,21,41,35,18,16],
[46,37,15,29,2,36,9,26,12,38,34,44,25,28,5,39,19,16,33,17,8,50,45,1,42,23,7,21,10,14,27,43,31,24,4,49,22,30,48,35,11,32,13,18,3,6,20,41,40,47],
[47,6,39,45,3,33,43,19,48,21,22,37,20,25,17,35,36,14,24,5,44,30,50,26,46,16,9,2,32,10,31,23,11,7,12,28,29,40,4,18,1,42,38,34,13,8,41,49,15,27],
[30,36,26,50,7,15,6,35,9,11,34,48,39,3,21,12,13,22,25,43,29,2,31,24,40,16,49,4,18,32,28,42,17,37,1,10,46,44,41,45,14,8,20,27,47,33,19,38,23,5],
[28,36,43,17,35,8,1,49,2,38,26,19,12,5,31,44,21,13,7,18,46,30,37,22,41,11,42,27,48,33,25,23,45,32,40,4,10,47,39,6,16,34,3,15,24,9,14,20,50,29],
[18,13,30,46,27,12,5,43,40,16,38,37,24,22,34,9,29,7,28,4,10,25,32,1,3,20,26,47,44,6,2,17,48,14,33,42,49,45,21,36,39,35,50,15,19,8,41,31,11,23],
[25,33,2,9,23,11,48,50,35,44,17,18,10,24,38,20,28,19,22,49,47,46,34,27,36,16,4,8,42,37,21,6,41,45,14,39,29,5,15,31,43,12,26,40,3,13,1,32,7,30],
[45,11,36,25,29,43,16,42,4,26,30,7,17,35,12,49,14,9,8,39,24,19,13,3,18,32,27,31,33,21,20,40,10,15,47,34,2,5,1,37,41,23,6,46,50,28,22,38,48,44],
[31,19,32,28,27,39,9,14,2,15,36,40,20,23,8,11,12,46,43,13,47,16,48,33,18,29,25,3,24,21,50,45,37,44,22,10,17,34,6,7,5,26,42,30,4,49,1,35,41,38],
[21,26,43,2,6,18,47,39,48,36,14,17,16,49,12,33,15,38,25,7,40,4,42,45,20,10,28,50,1,5,8,9,32,30,27,22,23,35,19,44,37,3,34,24,41,31,13,29,46,11],
[5,8,48,33,31,28,34,43,26,39,3,49,21,35,46,36,41,1,38,6,2,25,4,12,18,14,20,15,37,7,45,44,23,17,10,24,11,47,9,30,27,22,13,29,40,42,16,19,32,50],
[12,9,41,19,38,32,39,49,46,23,48,21,13,45,22,31,4,26,34,29,14,25,2,15,43,50,42,11,33,40,5,27,35,37,28,20,30,18,24,47,6,8,36,7,3,16,1,17,10,44],
[43,22,41,39,45,49,50,7,21,25,23,14,32,18,5,46,2,48,29,38,26,31,8,34,19,13,3,9,42,4,37,28,27,24,36,1,15,12,10,16,40,47,20,33,30,6,35,44,11,17],
[46,34,48,14,49,7,43,45,10,23,21,42,3,44,18,8,50,39,25,38,30,13,26,32,33,2,29,37,40,15,41,22,35,20,47,6,1,36,28,24,9,4,12,27,31,19,16,17,5,11],
[47,11,43,44,37,25,19,29,40,23,3,50,20,22,39,28,15,36,5,9,49,34,38,27,24,48,32,41,13,14,30,26,1,8,6,2,18,21,4,42,17,35,7,10,12,31,33,16,45,46]],
W = 
[[11,12,45,2,43,5,4,42,29,19,32,7,47,18,31,50,14,46,16,39,22,8,37,35,38,41,20,40,9,24,23,1,21,26,25,13,15,48,27,10,33,30,3,34,36,44,28,49,17,6],
[36,35,33,1,32,13,40,9,12,44,38,45,42,23,46,50,21,8,28,26,11,3,6,18,19,43,25,29,47,34,37,14,16,7,15,39,31,22,27,17,2,10,41,48,5,30,49,24,20,4],
[37,22,45,10,33,38,35,4,50,43,20,24,25,21,31,40,12,48,5,1,15,7,26,28,47,46,6,30,44,39,42,17,36,49,11,3,13,16,34,27,41,8,19,29,23,9,14,2,18,32],
[31,7,21,8,13,49,3,32,25,30,6,9,22,43,11,1,35,20,24,47,12,38,42,18,44,28,27,36,29,14,39,5,48,17,50,19,45,2,41,34,10,4,15,40,26,37,46,16,23,33],
[20,36,22,50,8,33,18,16,3,21,35,11,13,42,27,38,15,37,25,45,30,1,26,9,31,23,39,7,41,28,46,40,48,5,24,32,49,44,4,34,43,12,29,6,14,10,19,47,17,2],
[45,3,10,29,35,42,2,7,36,16,23,33,13,4,38,15,50,43,30,27,9,31,37,14,21,28,49,22,1,19,11,34,5,26,41,40,32,24,47,12,46,18,17,39,20,44,25,6,8,48],
[44,2,17,38,22,27,35,48,24,5,50,8,1,15,49,37,46,19,10,26,33,43,11,42,30,32,39,34,25,40,20,41,28,18,3,13,9,23,36,45,6,4,16,29,31,12,14,47,21,7],
[8,10,34,45,47,16,22,50,28,2,49,4,37,7,24,29,3,44,35,5,11,26,27,30,33,38,17,13,43,48,21,25,15,31,41,32,9,46,12,39,6,18,42,36,1,40,19,20,14,23],
[37,5,10,46,14,4,42,19,32,40,12,13,43,25,50,2,23,26,28,41,49,35,45,48,36,21,31,30,44,8,39,24,9,27,33,3,11,47,15,7,22,16,17,6,1,20,29,18,34,38],
[41,43,31,27,35,15,5,48,29,13,40,28,42,22,20,17,14,30,44,7,3,37,9,25,45,21,8,39,19,24,34,38,49,50,46,47,33,32,4,23,11,18,1,6,26,10,12,2,16,36],
[38,44,50,25,29,36,39,42,33,22,9,16,26,28,23,8,45,10,41,3,14,18,13,48,34,37,7,32,15,46,47,21,4,1,27,30,43,24,6,17,5,12,40,35,31,19,20,11,2,49],
[43,33,12,31,35,34,3,19,44,14,50,24,1,30,8,32,28,13,15,11,10,38,18,26,29,39,46,40,25,37,17,36,42,6,48,5,49,4,16,7,27,2,22,45,41,20,21,47,9,23],
[31,43,27,40,41,44,5,17,36,39,34,30,32,3,47,42,50,7,8,38,20,23,25,28,29,49,26,11,45,13,9,19,35,6,2,1,46,16,48,37,10,24,33,15,12,21,4,22,14,18],
[8,12,14,38,29,37,19,16,7,47,33,31,9,17,1,30,40,23,50,2,49,4,13,43,41,10,11,24,5,42,27,25,35,36,18,22,45,44,46,32,15,26,28,39,34,48,20,6,21,3],
[30,46,24,9,4,13,2,31,35,48,12,11,25,36,1,33,40,22,7,28,47,21,27,50,45,34,10,19,3,29,6,38,39,44,20,41,5,8,14,26,23,37,32,42,18,49,17,15,43,16],
[25,24,3,27,5,17,36,29,23,39,34,42,12,45,31,16,19,20,8,21,26,2,22,37,46,49,18,1,9,44,33,11,14,48,13,4,32,15,41,35,30,6,7,28,43,10,47,38,50,40],
[27,6,18,25,9,2,20,22,45,21,32,29,26,15,34,44,4,14,37,11,16,31,8,41,5,7,10,19,33,28,46,24,30,43,50,38,17,48,35,39,42,13,36,40,3,47,1,12,23,49],
[28,6,32,29,23,47,27,40,44,43,2,19,48,49,31,37,21,4,38,15,50,30,17,14,46,3,24,1,10,11,41,25,12,7,42,33,34,8,20,22,39,36,26,35,13,18,45,9,16,5],
[31,2,37,3,14,30,49,42,25,38,17,35,43,24,8,41,7,23,16,40,11,48,4,44,22,12,27,26,32,10,21,47,13,33,45,19,46,50,18,28,9,39,20,6,29,36,15,5,1,34],
[18,14,17,27,1,8,49,6,10,42,43,30,11,50,37,46,35,12,31,25,28,20,32,21,3,45,33,7,26,19,38,47,40,4,44,39,29,13,41,16,24,15,9,48,22,34,36,2,23,5],
[22,20,4,43,39,16,37,44,2,50,7,3,15,34,35,23,27,38,48,25,32,13,19,30,46,1,21,42,31,12,10,41,6,28,11,47,29,17,5,14,26,45,40,49,18,33,24,36,8,9],
[29,46,37,5,26,42,45,10,30,23,13,4,39,50,14,15,49,31,22,34,20,48,43,33,28,41,17,25,8,47,12,24,38,44,7,36,3,16,40,9,19,2,11,21,6,18,1,35,27,32],
[22,20,41,18,25,17,38,24,1,40,16,39,49,3,13,14,19,6,35,23,26,29,43,27,7,9,44,28,11,46,12,48,21,37,30,8,33,34,36,47,10,31,15,42,32,45,2,4,50,5],
[29,36,47,10,12,34,49,39,22,4,14,37,19,41,21,33,26,16,20,3,30,23,6,32,17,11,9,15,46,43,40,38,18,35,24,44,2,8,50,28,48,1,42,45,25,7,27,5,31,13],
[31,29,18,15,26,32,42,48,14,34,10,27,50,30,1,44,46,3,23,6,20,24,8,13,2,45,5,37,4,40,9,17,28,11,25,16,39,36,12,47,7,22,33,35,38,21,41,19,43,49],
[14,45,42,38,44,30,41,29,26,39,34,32,21,6,46,49,11,22,15,23,10,33,2,20,8,7,5,16,43,3,4,36,50,13,12,18,31,28,48,25,47,24,35,40,27,37,9,1,17,19],
[19,17,2,30,44,12,46,20,24,40,28,7,9,29,8,5,33,26,18,39,1,27,3,6,48,31,35,49,32,11,42,10,45,41,22,14,15,47,43,34,25,13,36,4,21,23,37,50,38,16],
[49,44,10,37,6,3,16,32,45,26,31,14,11,5,20,1,8,18,15,27,21,25,50,7,38,2,42,46,24,23,34,48,35,29,22,30,36,19,39,47,41,33,28,4,43,17,13,9,40,12],
[13,14,26,19,11,4,29,28,18,10,32,47,45,33,8,40,41,37,39,9,17,24,2,38,42,16,25,5,48,22,50,35,6,1,12,44,43,23,31,7,36,34,27,49,30,21,46,15,20,3],
[49,33,11,47,38,7,41,28,27,2,32,1,24,21,5,4,43,22,37,36,23,8,13,34,30,9,3,18,39,29,44,35,31,14,46,10,26,16,25,15,6,40,48,19,17,42,20,45,50,12],
[2,36,44,6,23,31,1,16,25,42,45,15,47,5,49,34,38,19,11,10,48,12,43,30,40,27,17,32,20,24,26,50,29,28,41,18,7,39,3,21,37,8,35,46,9,22,13,14,4,33],
[42,29,32,28,38,21,30,13,17,11,20,44,50,27,41,1,19,35,36,16,15,7,22,47,33,37,39,25,48,9,23,45,12,18,14,43,46,24,8,49,10,4,26,3,40,2,6,31,5,34],
[15,48,50,43,20,16,33,36,42,26,39,6,19,18,1,13,5,22,31,34,25,2,8,21,38,3,12,41,35,30,28,17,29,23,46,44,11,27,47,7,9,14,49,24,40,45,32,37,4,10],
[32,11,16,4,37,28,5,19,13,40,15,49,23,39,35,41,26,7,2,44,48,1,50,43,17,14,25,36,29,21,47,31,27,20,46,6,10,12,8,9,33,3,24,42,22,30,34,18,45,38],
[11,19,10,15,35,48,6,44,20,16,21,27,8,1,13,22,30,25,4,32,39,36,42,41,12,49,28,24,34,14,17,38,47,5,37,7,46,43,23,29,26,33,9,50,18,2,45,31,40,3],
[1,21,43,14,27,49,15,18,2,4,42,41,6,19,38,26,31,30,47,20,16,24,37,22,28,8,48,13,40,29,17,23,25,45,39,46,44,5,9,11,10,33,50,36,3,34,32,35,7,12],
[41,18,15,7,50,44,33,45,20,6,40,34,29,19,14,4,35,31,38,2,3,1,27,13,23,48,11,9,30,21,5,10,16,43,17,24,49,25,39,12,28,47,26,8,22,37,32,42,36,46],
[39,14,43,2,33,21,17,27,26,47,13,30,4,35,32,18,1,24,11,25,28,46,34,48,23,19,5,31,40,15,44,16,37,36,45,3,7,20,42,50,22,12,9,41,10,38,29,49,8,6],
[14,18,16,44,31,23,38,5,24,7,25,49,47,30,36,20,45,28,15,26,8,4,34,17,39,48,46,11,22,37,32,3,50,43,21,13,33,10,41,1,19,12,6,42,2,9,29,27,35,40],
[37,42,44,30,8,26,43,31,40,5,18,45,36,28,14,22,41,33,27,38,29,34,6,16,10,39,35,15,19,9,4,23,2,3,24,11,47,17,46,25,1,12,32,48,50,7,20,13,21,49],
[14,47,48,23,2,39,43,34,3,22,45,27,17,41,35,9,20,26,10,7,46,44,29,5,19,40,49,30,37,6,12,11,42,1,24,18,16,50,8,33,36,25,31,32,38,28,15,13,4,21],
[39,42,23,15,9,17,47,5,29,14,36,33,11,43,45,30,10,6,50,28,16,25,26,35,34,7,3,20,12,8,18,13,44,22,27,49,21,37,38,31,2,24,46,4,32,48,19,41,40,1],
[22,41,23,40,6,48,37,45,30,7,49,1,35,47,21,34,9,13,29,17,18,16,14,24,15,42,12,31,33,36,46,2,44,50,28,11,39,38,43,19,27,4,5,32,8,3,25,20,10,26],
[31,8,23,34,5,11,50,46,47,27,49,29,42,24,20,15,40,36,43,7,38,22,9,45,13,33,19,41,16,10,28,32,12,48,4,30,2,18,1,44,21,17,35,39,37,14,6,25,3,26],
[23,11,25,42,20,34,9,7,48,37,5,4,32,47,2,19,41,29,17,21,30,24,44,10,36,46,6,39,14,28,3,33,27,38,1,35,31,40,18,43,45,8,50,49,12,22,15,26,13,16],
[9,26,43,35,17,33,16,13,37,44,21,31,32,38,11,15,46,36,49,14,8,3,27,23,28,12,45,4,34,20,39,7,2,42,50,5,40,24,29,48,19,1,30,41,10,47,6,18,25,22],
[32,19,24,1,30,14,33,49,36,23,25,6,8,31,13,45,34,20,29,26,4,38,21,41,47,37,15,9,22,11,27,10,46,44,35,2,5,18,48,3,40,16,42,50,39,12,7,17,43,28],
[34,16,13,9,11,47,25,35,4,30,32,15,10,2,1,7,38,48,29,21,49,14,40,44,28,18,33,6,12,36,23,46,45,19,50,17,22,3,24,27,42,43,26,31,5,20,8,37,39,41],
[24,45,18,46,19,8,41,31,29,42,11,7,48,13,39,26,28,3,22,47,44,35,32,20,4,34,33,2,37,50,5,12,30,15,43,36,27,17,6,25,23,14,9,1,38,21,10,16,40,49],
[50,43,33,36,28,37,21,13,1,16,15,32,23,24,19,2,17,26,30,18,6,40,10,46,34,38,42,29,39,22,45,20,25,5,27,9,31,14,44,11,12,47,8,3,7,4,48,35,49,41]].


%
% http://hakank.org/minizinc/stable_marriage_random100.dzn
% 100x100
problem(8, M, W) :-
M = 
[[49,63,43,21,87,61,1,34,66,24,14,26,41,8,35,44,58,33,90,25,3,84,92,97,27,55,83,45,28,5,89,6,74,56,9,81,52,94,23,36,22,54,86,62,19,96,20,46,15,79,32,39,12,17,4,100,18,68,82,85,38,13,59,47,93,77,91,99,57,2,70,64,53,76,29,80,40,42,71,72,78,69,37,51,65,11,88,7,73,67,10,50,75,31,60,48,16,95,98,30],
[25,45,80,62,14,50,81,18,63,42,47,33,71,26,30,55,48,5,94,13,74,41,20,32,22,95,49,37,6,3,88,38,16,78,52,92,89,46,85,70,86,66,24,2,83,53,75,56,100,82,10,4,54,29,31,69,51,43,99,7,27,65,72,64,93,57,84,61,87,97,96,1,44,59,36,79,58,17,91,21,98,76,8,90,23,15,34,9,35,11,40,77,19,68,39,60,12,67,73,28],
[18,20,6,63,71,82,65,51,85,87,57,16,92,21,91,2,76,93,1,80,49,37,52,24,29,10,25,79,75,27,4,36,47,83,98,88,34,15,81,8,54,26,100,11,73,72,56,22,84,86,45,77,99,67,89,59,41,61,3,5,66,74,94,40,64,97,38,70,30,44,62,35,28,60,19,12,7,33,43,46,50,55,68,17,42,69,90,96,95,48,14,23,78,31,58,9,53,39,13,32],
[33,32,49,79,10,52,1,65,46,69,44,78,37,85,84,59,68,8,60,64,77,15,86,3,83,17,67,96,55,26,92,76,87,80,88,82,5,20,42,73,25,61,27,30,47,13,14,4,63,89,58,99,81,29,62,71,39,75,7,28,12,19,98,35,72,57,24,91,66,36,93,23,94,97,41,50,51,40,21,6,31,53,38,54,74,95,9,11,22,90,34,100,2,43,16,45,70,48,56,18],
[28,29,45,30,63,27,47,60,16,26,49,14,34,59,9,85,79,3,10,81,93,65,35,82,44,50,31,67,24,54,75,13,80,6,42,76,86,48,4,61,32,62,1,5,98,90,100,78,51,96,69,57,18,37,25,41,33,36,94,70,58,83,95,68,23,40,99,52,38,46,43,71,87,72,53,7,88,8,12,73,22,55,20,92,21,17,15,2,89,56,64,11,39,74,77,66,97,91,19,84],
[6,74,54,35,25,8,88,22,14,31,39,65,87,64,57,52,43,23,73,95,55,66,12,1,91,27,49,82,9,70,78,80,41,7,60,79,85,24,61,4,19,59,86,42,99,92,53,62,97,93,40,15,50,2,45,72,36,30,63,48,96,44,26,84,20,18,83,32,28,33,3,21,90,51,75,29,46,58,13,11,17,68,5,37,100,34,16,47,56,76,67,81,98,10,69,71,77,94,89,38],
[69,97,70,47,30,65,27,39,38,35,6,81,86,8,71,87,84,73,78,46,89,75,49,52,22,31,88,100,18,72,94,82,20,33,96,25,58,63,32,91,79,98,44,45,15,59,51,56,41,10,66,26,85,9,19,95,60,3,28,17,99,16,90,74,54,43,36,93,80,92,53,48,2,4,12,42,34,5,62,76,57,23,50,67,11,37,55,21,40,1,83,61,7,24,77,13,29,14,64,68],
[43,36,40,11,92,39,35,89,80,91,99,65,60,47,100,75,54,26,10,90,13,62,4,69,2,76,12,61,50,84,28,21,68,14,25,86,30,56,24,45,97,34,72,19,57,16,48,51,79,93,58,67,83,59,95,1,31,42,5,7,78,3,77,44,15,29,73,85,6,82,46,8,88,64,96,17,94,49,53,98,22,63,37,41,71,9,70,32,87,18,74,27,52,23,38,66,81,33,20,55],
[6,27,35,75,84,71,41,45,62,47,5,82,67,19,61,3,91,29,87,59,52,65,28,48,60,4,90,20,99,96,78,38,13,72,89,73,18,88,98,54,12,30,94,76,86,26,79,44,97,16,43,58,34,15,17,39,2,33,7,14,46,24,51,8,56,95,9,93,53,77,50,80,36,92,70,10,22,68,42,23,1,32,74,66,21,81,83,69,11,49,37,55,57,63,40,25,31,85,64,100],
[44,11,43,39,13,59,79,85,37,76,30,35,72,9,40,20,36,41,88,54,70,19,83,49,64,77,87,95,78,71,65,62,94,57,69,97,33,10,68,89,91,3,67,56,58,17,52,31,55,45,29,22,16,96,18,82,24,25,1,28,93,46,86,21,92,27,81,12,26,98,48,75,4,2,32,51,100,60,14,47,8,74,99,84,15,53,50,63,73,34,7,23,80,90,38,66,5,61,42,6],
[10,94,60,33,26,53,52,72,42,1,63,87,65,83,97,13,96,21,24,8,20,15,69,91,67,100,14,36,86,45,29,51,2,46,25,50,28,71,38,89,17,34,22,4,35,74,58,61,78,39,3,88,59,99,66,37,19,41,77,76,98,31,95,5,30,40,68,70,93,82,75,32,9,43,47,44,16,7,80,56,64,90,27,81,73,12,55,11,79,23,57,62,85,49,84,48,18,54,6,92],
[58,27,63,86,13,76,50,8,23,26,93,17,18,15,91,38,36,62,9,68,82,53,97,99,28,43,87,3,94,70,12,44,10,34,16,60,79,20,19,67,59,88,61,74,33,73,83,41,54,39,89,25,71,4,24,66,81,2,57,56,48,65,85,75,98,22,69,7,72,52,55,95,100,40,32,96,37,21,80,49,51,90,47,45,92,84,78,6,35,29,5,42,46,64,11,14,30,77,31,1],
[28,69,46,94,9,92,21,81,73,38,14,49,66,79,97,59,15,32,52,82,30,71,45,8,3,78,93,87,65,39,47,29,24,50,48,34,16,89,6,67,61,17,27,43,54,10,7,62,2,22,4,58,86,76,37,90,23,95,56,64,75,88,41,42,98,35,100,31,12,5,74,19,18,20,83,40,36,25,11,63,1,72,84,96,85,99,26,68,44,57,77,53,33,51,80,60,70,13,55,91],
[75,85,58,19,66,98,24,20,62,90,33,27,18,7,47,57,32,38,6,51,79,76,71,12,56,82,92,54,77,53,52,68,60,35,10,96,42,49,86,50,1,84,94,64,39,55,15,5,89,17,95,45,29,13,72,2,26,61,40,31,88,91,8,36,11,48,100,65,63,23,67,14,9,21,3,30,83,22,97,81,59,69,43,16,46,87,4,80,78,41,70,99,25,93,73,37,28,44,74,34],
[86,70,38,2,8,92,10,67,18,27,89,79,66,49,82,55,94,75,11,69,44,88,54,72,32,24,68,26,76,53,80,43,5,37,96,45,58,31,4,99,42,95,98,14,51,35,23,81,71,12,61,74,16,40,93,30,6,62,56,90,97,13,41,65,63,22,91,50,84,78,9,20,64,46,77,34,100,21,85,1,87,29,15,17,33,73,48,59,7,60,19,83,28,36,3,39,57,25,52,47],
[75,88,10,89,99,24,57,41,2,33,34,25,39,52,76,73,35,29,4,9,87,91,48,28,50,77,22,94,16,68,92,44,23,56,43,96,11,80,59,82,51,46,32,71,15,84,6,3,90,49,70,47,67,14,65,36,66,31,93,20,95,63,37,72,30,74,17,86,79,61,1,100,38,26,7,40,60,54,62,55,83,42,5,12,53,27,19,98,45,13,81,69,18,85,97,78,58,64,8,21],
[71,61,89,48,30,97,11,76,21,20,80,12,4,52,67,18,42,40,16,19,34,49,65,64,60,100,32,73,22,94,98,81,10,36,91,59,62,88,37,8,87,83,56,72,77,39,28,43,50,51,47,84,55,5,68,35,45,2,82,6,41,9,86,17,14,70,26,7,24,74,27,95,69,29,13,44,57,1,53,63,96,15,31,99,66,3,38,58,25,33,78,46,90,79,85,75,54,23,92,93],
[81,87,49,72,39,29,70,5,2,86,65,69,15,76,25,1,84,59,8,38,90,93,10,55,53,85,58,77,32,37,43,62,27,48,46,71,41,56,50,75,31,35,28,57,40,17,12,30,94,21,64,47,88,96,91,33,95,44,52,23,98,20,74,82,78,24,9,89,16,54,42,18,3,79,97,19,83,66,22,26,61,34,80,63,68,60,13,51,100,45,4,99,7,14,73,67,11,36,92,6],
[85,27,16,9,46,84,66,56,49,88,95,50,71,67,12,68,48,47,33,70,44,90,25,10,26,5,96,28,38,35,80,3,37,54,87,53,86,73,11,65,20,76,6,31,91,100,77,42,99,52,98,17,8,74,60,34,2,79,69,40,51,82,4,93,75,55,13,97,92,89,30,45,59,61,21,7,29,94,63,81,15,78,36,72,41,18,1,57,24,62,64,32,43,39,14,58,22,19,23,83],
[13,27,100,21,75,46,60,17,25,31,22,97,95,55,61,72,3,66,68,67,10,51,65,63,36,93,11,8,20,74,92,80,57,91,2,7,89,69,47,14,4,32,35,42,62,37,49,34,64,29,53,94,98,30,85,24,41,84,16,19,9,18,90,48,15,88,52,77,45,76,6,82,50,1,26,44,58,71,39,43,40,86,78,59,56,99,23,73,83,81,38,87,12,79,33,70,5,28,54,96],
[33,25,19,44,88,92,32,79,30,5,95,71,8,64,55,98,86,21,99,53,11,38,52,56,69,23,41,15,58,90,82,6,76,59,54,75,84,87,27,97,43,62,46,16,85,28,47,89,83,2,94,36,4,100,93,45,22,74,39,29,34,50,13,14,7,67,65,57,9,81,20,49,26,51,35,96,80,10,91,77,63,42,72,12,48,31,3,1,37,73,61,66,68,24,17,18,78,60,40,70],
[95,96,42,73,34,85,27,59,57,76,79,56,7,92,55,32,23,62,15,72,26,10,61,43,91,12,90,30,47,48,21,37,99,54,82,1,29,98,16,13,44,14,25,66,2,58,8,70,45,3,49,71,80,81,86,38,41,65,52,40,18,60,33,53,69,5,36,87,78,63,24,74,89,83,22,50,75,93,9,84,35,88,20,11,28,77,97,100,4,68,94,46,31,17,39,6,67,64,51,19],
[12,7,83,92,65,85,46,47,24,22,27,63,62,66,58,79,84,57,11,5,31,16,59,56,38,68,32,95,55,100,13,78,30,87,1,91,39,72,98,96,43,26,18,76,4,81,50,97,82,3,61,75,54,80,48,17,86,45,15,10,49,99,60,2,64,67,70,21,20,52,44,51,42,6,37,40,93,69,9,77,8,28,33,73,29,23,35,89,25,19,41,74,14,36,94,90,53,88,71,34],
[6,70,15,45,100,7,43,46,87,11,85,9,97,34,37,49,24,17,69,13,33,18,22,54,39,91,30,71,99,2,29,63,19,53,55,41,61,36,81,4,1,35,27,38,47,65,5,44,74,62,52,31,73,16,51,50,78,42,66,59,95,57,21,77,28,48,83,68,90,82,10,64,8,94,84,25,56,75,96,14,67,60,76,12,23,86,92,79,88,26,32,40,93,89,3,20,58,98,72,80],
[10,45,93,59,47,65,89,42,16,90,6,58,18,75,29,85,94,55,40,91,92,44,35,17,12,62,79,7,9,5,14,39,96,99,57,48,11,15,71,88,41,61,84,97,81,63,24,38,74,23,64,22,80,32,25,13,98,51,49,8,87,78,52,77,26,73,20,37,95,72,50,31,56,76,30,3,70,43,21,68,46,66,34,19,27,69,82,2,67,60,4,33,100,28,54,86,1,36,53,83],
[11,77,55,96,3,42,67,64,53,68,44,30,97,17,33,71,2,32,27,58,98,24,57,83,19,45,56,100,36,72,13,4,23,52,18,82,38,15,29,25,65,51,81,75,21,9,86,28,63,95,41,84,39,99,20,66,5,6,1,37,88,78,40,73,93,12,87,26,89,80,54,62,22,35,79,92,34,31,59,16,14,61,85,48,91,70,8,90,94,49,46,76,7,50,69,47,10,60,43,74],
[29,9,20,66,95,22,46,75,1,99,49,11,14,92,24,67,54,16,69,93,12,77,83,32,74,18,34,81,57,17,2,62,4,21,72,76,64,43,85,50,52,8,6,35,94,84,56,33,60,7,78,51,45,25,91,41,31,96,15,68,40,55,98,53,44,97,65,36,71,39,80,61,90,58,37,27,13,73,47,87,26,23,63,79,59,86,89,38,88,30,19,70,3,42,82,5,10,48,28,100],
[99,29,6,30,100,21,33,48,18,83,55,78,60,89,45,66,51,75,71,15,39,36,43,44,80,37,61,97,54,27,13,41,98,72,64,46,10,82,26,76,31,35,12,3,74,87,5,25,57,28,42,93,58,70,20,11,49,14,52,92,32,4,62,50,40,69,1,68,34,73,22,90,7,19,63,94,67,88,9,38,65,79,17,81,56,24,85,84,77,47,91,59,16,8,95,86,2,53,96,23],
[98,36,7,72,60,74,56,70,10,94,100,21,24,55,22,33,59,52,48,58,26,18,96,65,95,20,31,67,78,27,49,34,91,84,90,25,13,75,14,1,71,66,57,73,40,80,62,93,41,4,79,38,53,39,50,11,82,44,46,43,32,89,88,45,42,3,12,51,81,76,5,19,15,54,9,63,87,92,23,35,6,29,69,64,77,2,99,37,83,8,28,61,86,85,16,30,17,68,97,47],
[64,43,5,26,56,90,49,3,28,32,53,2,25,89,88,58,4,7,8,68,22,34,97,60,37,17,20,45,23,59,10,27,91,11,13,99,98,78,18,9,44,82,36,65,29,96,52,93,72,55,33,19,71,73,74,67,84,16,100,94,83,69,50,39,79,38,24,48,30,75,1,31,6,85,77,51,81,86,14,92,35,66,21,47,40,63,46,54,80,41,95,57,76,70,15,12,62,87,61,42],
[44,64,63,57,81,52,89,12,1,34,3,86,8,85,92,59,66,17,82,11,84,94,61,65,97,39,47,93,38,16,45,42,80,68,18,33,5,78,56,14,4,13,23,19,10,36,75,7,95,26,73,51,69,99,91,70,50,83,79,87,37,76,27,24,9,100,54,41,60,2,90,20,32,15,58,21,48,67,96,40,72,29,46,22,62,71,53,31,74,30,6,77,35,55,49,25,28,43,88,98],
[97,82,89,11,17,20,71,37,84,13,92,16,95,80,60,91,38,2,59,9,99,79,74,77,83,1,70,57,8,48,5,69,14,62,23,49,21,22,7,36,33,27,78,65,86,39,64,47,87,98,54,73,53,51,67,68,93,41,6,15,50,35,46,40,29,76,42,61,63,88,75,85,3,32,25,18,94,28,34,44,43,66,55,30,12,100,72,58,26,90,31,96,81,19,10,24,52,45,56,4],
[65,76,54,48,88,69,87,2,75,41,29,67,74,10,26,47,79,85,66,25,18,52,39,99,40,11,83,7,28,32,97,37,73,38,92,80,36,91,90,19,61,5,9,43,56,21,71,86,95,89,6,94,22,15,44,8,24,13,1,4,49,3,16,82,46,72,68,14,84,34,60,58,12,51,42,63,30,64,23,81,55,31,96,20,62,27,45,70,33,93,35,100,17,98,77,53,57,78,59,50],
[60,27,97,16,20,37,70,65,35,67,40,86,74,48,76,10,100,12,6,49,64,72,98,79,5,33,43,80,50,57,92,18,8,47,31,94,29,44,53,9,91,41,52,87,93,89,3,21,55,78,38,83,26,77,75,42,71,66,7,95,68,39,90,99,96,45,15,59,32,23,11,54,62,14,24,46,2,28,84,61,51,22,25,4,36,13,85,63,69,73,19,1,56,30,82,17,81,34,58,88],
[21,41,61,2,66,87,4,65,98,40,8,13,16,54,78,82,7,30,83,53,96,14,22,58,25,46,36,39,18,79,28,93,95,73,91,52,84,81,19,85,100,71,62,80,38,64,1,72,20,90,59,26,24,10,60,34,77,12,44,70,99,75,50,42,92,76,68,31,33,3,63,57,88,45,89,43,55,48,47,6,35,17,37,97,86,23,49,51,67,27,11,94,56,5,69,15,32,74,9,29],
[46,75,16,41,84,77,86,21,60,4,80,8,70,55,5,97,69,58,54,31,14,51,44,95,23,9,48,65,39,74,34,87,67,98,52,22,11,57,37,18,82,100,71,27,40,64,13,76,20,73,7,1,33,2,93,25,47,81,79,96,24,50,35,85,90,91,30,19,17,10,68,6,88,89,26,49,56,15,61,63,3,66,59,53,92,29,94,45,28,38,62,83,99,72,12,32,36,43,78,42],
[48,51,28,89,23,93,22,87,44,63,88,70,43,17,25,95,35,37,27,76,67,42,50,68,21,47,30,29,59,84,5,41,71,80,16,85,31,96,6,91,78,73,53,3,18,77,58,92,55,39,12,56,34,38,4,10,14,100,20,2,45,62,36,11,9,49,86,19,65,60,97,54,74,94,69,15,82,32,83,81,33,99,98,26,40,79,75,1,72,90,7,46,64,13,66,57,24,52,61,8],
[27,28,87,18,15,76,53,91,7,89,95,98,58,96,52,30,4,37,2,41,19,29,79,74,64,8,82,35,42,6,73,36,66,9,83,63,11,75,23,21,68,26,99,1,93,49,16,84,69,62,56,32,24,43,71,3,59,50,57,47,90,54,78,85,13,14,38,33,12,46,55,70,44,92,81,86,40,97,65,48,5,22,67,80,60,10,39,88,100,25,51,20,77,17,94,31,61,72,45,34],
[86,37,16,32,72,79,28,22,27,9,80,75,33,61,81,25,11,97,38,96,58,69,20,6,36,84,7,1,59,66,92,56,41,19,87,91,64,48,51,53,71,63,13,68,39,54,14,30,40,99,65,4,15,31,5,24,76,18,49,29,82,78,100,55,73,12,10,47,2,3,67,60,57,89,17,50,52,85,83,98,34,23,46,74,94,62,8,88,93,77,95,21,90,45,26,43,42,44,70,35],
[18,91,100,54,16,14,23,81,52,65,33,15,66,86,43,32,19,96,11,7,29,75,1,35,3,67,57,64,36,62,2,61,28,72,4,89,79,26,8,20,97,95,37,42,59,27,56,47,99,74,63,90,88,58,13,84,70,85,5,12,40,71,82,92,44,9,77,55,76,25,38,48,49,22,10,46,21,53,34,60,73,24,50,78,98,17,83,68,51,41,31,87,93,30,45,80,6,39,94,69],
[50,78,53,94,57,13,9,76,74,59,11,97,63,75,73,54,26,21,34,37,79,88,29,80,84,25,82,4,5,64,91,92,22,70,100,60,72,32,18,90,71,24,48,98,58,47,96,85,39,17,3,7,45,8,69,61,89,42,23,99,86,46,87,40,67,1,10,62,83,33,77,2,95,68,30,81,35,66,19,55,52,14,16,15,20,43,41,38,31,56,12,93,28,44,65,36,51,49,6,27],
[64,51,39,35,88,71,4,1,38,91,24,97,3,79,96,28,7,25,62,55,14,30,84,43,83,45,89,13,90,93,42,69,16,76,87,20,73,8,34,19,92,48,59,98,86,21,63,60,6,36,95,32,41,50,80,29,67,61,11,94,56,53,85,31,2,44,65,33,5,46,68,57,37,99,10,72,12,15,49,100,78,54,58,75,26,27,52,17,82,66,77,81,47,18,74,23,70,22,9,40],
[44,42,90,8,89,36,17,88,34,30,13,37,49,91,87,100,41,9,26,3,56,4,80,64,99,92,45,27,97,79,74,66,85,53,78,32,70,7,33,48,57,5,21,52,50,12,10,83,69,95,93,18,77,1,47,84,6,54,61,86,28,55,98,81,24,68,19,82,23,29,76,58,67,39,11,2,51,65,25,75,59,71,60,40,96,31,72,20,94,38,14,73,63,16,43,35,46,22,62,15],
[37,45,73,47,29,44,62,42,13,34,51,57,67,61,87,23,31,60,19,86,55,35,14,85,56,7,65,89,46,6,81,50,95,68,20,33,71,36,88,92,80,93,69,59,72,9,75,28,2,96,16,64,3,39,63,76,83,11,43,40,49,12,38,77,100,32,52,30,53,97,70,41,98,58,5,84,21,10,78,27,94,48,91,74,66,22,26,17,79,4,82,90,18,25,24,99,15,54,8,1],
[30,91,88,93,75,52,2,3,34,23,27,78,33,95,59,12,16,77,40,48,81,29,14,18,10,67,17,65,24,43,94,55,42,54,97,8,99,51,56,83,25,7,82,64,11,45,1,100,53,68,70,38,72,87,50,69,90,44,37,85,32,79,28,46,26,63,36,96,9,62,92,98,35,89,4,84,39,22,20,57,6,60,58,31,49,66,19,13,71,76,80,74,5,86,21,47,61,73,41,15],
[17,92,30,80,89,41,18,12,38,31,61,79,32,72,43,87,39,28,63,69,29,76,71,7,46,49,47,9,11,50,52,14,26,20,74,13,10,85,58,66,59,62,99,70,88,48,34,82,23,65,45,22,51,75,54,90,94,6,78,1,98,97,56,15,55,3,91,57,4,81,8,36,95,5,73,83,68,19,33,64,24,21,25,100,2,53,27,37,60,93,96,77,84,42,16,35,40,44,86,67],
[29,36,41,62,58,15,16,24,70,91,83,66,22,32,25,9,52,56,54,57,18,11,3,79,92,76,33,88,59,21,71,96,35,38,72,50,8,10,45,75,65,47,14,40,26,39,99,85,87,94,48,60,81,12,34,63,53,100,74,93,80,73,77,46,17,89,98,78,19,90,37,2,1,61,7,55,49,20,31,51,5,68,30,95,97,44,43,28,84,82,64,27,69,86,6,13,23,4,67,42],
[34,84,35,24,32,99,63,98,12,45,48,1,87,68,2,93,40,58,73,51,43,89,37,70,67,39,17,49,57,10,60,86,36,19,14,64,53,75,22,81,92,42,76,21,79,71,3,9,13,50,16,77,8,100,38,11,59,65,29,94,46,28,20,56,30,47,5,62,23,74,31,80,55,91,97,54,72,4,90,25,78,69,85,66,44,7,41,61,95,52,88,6,83,96,15,27,33,18,82,26],
[5,11,60,89,62,75,50,1,88,100,17,18,77,90,59,61,27,12,63,3,69,98,29,24,33,76,32,68,14,83,47,31,42,35,16,4,73,71,92,6,28,37,87,84,82,99,57,34,67,25,95,56,45,78,36,65,20,22,81,26,93,58,7,64,86,38,91,48,97,40,23,15,74,85,39,46,8,94,21,41,79,2,10,9,72,70,53,44,30,52,96,66,51,55,13,43,19,54,49,80],
[85,39,16,34,23,13,15,7,26,58,62,25,82,27,40,53,74,9,83,63,61,19,12,95,8,38,35,51,20,88,22,97,31,29,87,68,28,75,94,93,17,43,55,59,100,69,6,41,3,1,78,10,52,44,32,72,4,64,57,65,66,80,49,89,18,33,96,60,36,56,79,67,76,91,86,42,73,99,2,92,50,14,70,45,77,5,84,71,47,98,48,90,30,11,81,54,46,21,37,24],
[73,19,58,76,38,84,36,74,65,63,20,70,88,30,60,2,3,40,34,54,24,32,69,90,79,93,21,7,62,55,72,77,48,28,35,45,51,9,67,44,89,15,92,5,66,49,12,39,96,75,14,6,27,33,80,97,18,68,10,53,42,25,16,52,47,87,100,59,56,50,61,95,85,98,4,22,46,8,23,13,82,11,57,37,99,83,43,86,81,26,1,41,94,29,71,64,78,91,31,17],
[49,38,21,98,17,2,50,45,61,40,66,48,39,19,46,18,11,71,90,68,15,55,51,63,82,79,16,29,57,85,84,60,94,81,24,53,23,9,93,31,67,87,75,69,70,86,52,13,6,28,58,88,97,47,30,36,35,1,20,41,37,44,43,77,5,96,32,62,27,4,12,42,26,80,59,10,78,76,54,73,72,95,91,25,8,100,7,33,3,56,74,64,65,99,34,83,89,22,92,14],
[1,84,46,10,33,83,62,65,47,92,18,39,70,27,17,25,63,48,29,42,30,37,5,2,16,20,36,35,31,4,57,60,7,72,86,26,14,44,82,38,85,99,32,80,64,6,55,56,19,74,96,52,3,9,53,43,59,28,75,12,13,23,77,87,91,68,21,15,54,79,40,61,66,22,98,88,8,93,81,78,95,58,71,67,76,49,94,69,97,73,11,100,90,50,45,34,24,41,51,89],
[3,60,16,51,92,63,31,88,2,23,79,58,72,55,33,52,4,76,22,65,75,35,53,21,15,81,37,48,19,85,66,62,90,7,96,10,91,46,97,56,42,43,24,18,80,59,39,68,50,54,45,5,38,57,67,30,64,87,44,47,34,26,98,28,27,83,94,36,29,14,40,32,8,20,49,11,70,95,41,86,73,6,93,74,17,82,71,89,77,25,99,61,12,13,100,1,9,69,78,84],
[97,1,91,5,29,61,67,40,100,35,45,64,86,94,4,62,20,89,65,36,46,8,31,55,85,18,44,6,26,37,57,69,68,53,34,95,10,42,19,99,74,7,13,50,84,88,27,11,24,60,33,72,48,79,87,30,78,59,66,17,58,75,3,80,15,25,47,52,28,73,16,41,93,63,2,23,56,54,9,98,77,90,81,22,92,70,38,82,71,32,39,51,49,12,76,14,43,83,21,96],
[22,7,31,12,95,18,16,21,52,54,75,82,41,8,26,92,28,72,66,83,20,91,1,67,73,57,80,17,51,39,76,50,55,81,42,94,100,62,4,34,37,35,11,98,24,47,74,97,59,93,79,10,63,36,96,6,71,61,9,2,30,27,49,23,58,99,33,15,14,5,53,29,56,25,60,69,77,88,78,3,86,84,68,87,70,44,46,89,65,38,40,19,43,48,90,32,45,64,13,85],
[68,95,26,71,3,52,85,42,30,89,11,94,86,32,25,38,54,97,70,45,39,66,50,64,53,12,84,29,28,76,87,8,44,27,7,77,63,100,59,48,24,67,15,5,57,51,80,16,14,81,82,69,13,1,60,17,75,31,61,41,40,34,37,65,62,23,72,88,92,98,33,83,99,43,35,49,93,58,10,96,46,79,55,22,74,9,47,73,2,36,19,18,56,4,21,90,20,6,91,78],
[71,24,29,76,42,70,28,93,69,6,36,47,18,97,65,80,91,10,85,52,64,82,68,94,19,74,35,58,59,12,21,16,9,3,57,22,92,43,75,100,66,81,32,67,84,73,40,78,39,61,8,1,55,53,11,33,60,90,62,48,45,98,96,83,2,49,30,14,38,56,95,46,5,72,7,44,25,41,13,37,26,77,15,31,50,88,87,34,99,89,79,54,4,27,23,20,51,63,86,17],
[25,48,89,49,60,19,69,84,56,91,75,58,41,59,37,46,35,87,22,95,100,52,42,45,21,16,97,57,17,5,65,13,54,27,73,8,34,82,40,18,63,3,32,7,38,94,74,30,55,80,26,68,50,81,33,85,15,39,2,92,29,24,20,66,51,70,76,36,86,96,11,99,14,31,6,72,10,61,64,53,62,28,1,77,93,79,43,23,83,90,44,12,98,4,78,88,67,71,47,9],
[5,48,66,9,100,80,56,92,86,23,68,47,12,32,76,88,57,51,25,27,10,44,93,18,3,31,13,49,83,29,53,17,62,95,26,87,24,34,22,30,71,94,28,85,15,20,82,19,37,84,16,67,45,90,77,89,81,38,78,98,70,54,74,4,21,1,96,63,72,59,14,65,42,11,75,91,40,8,7,64,52,97,6,41,55,69,43,35,2,39,61,60,46,79,33,99,36,73,58,50],
[26,4,38,27,35,7,12,32,14,39,73,45,66,78,24,98,6,31,19,28,69,49,43,91,89,68,8,92,99,41,82,71,11,17,33,85,60,97,93,70,88,15,52,86,3,61,81,57,40,58,18,65,25,46,10,84,67,95,5,74,20,54,72,76,50,90,1,30,79,94,2,9,48,42,80,100,29,64,36,75,34,83,96,23,62,44,59,13,53,22,56,47,51,16,77,87,37,55,21,63],
[68,25,45,19,34,79,84,92,74,88,15,61,99,40,32,16,7,31,2,91,27,50,64,54,5,24,23,53,33,63,85,58,42,20,96,43,46,67,47,28,87,60,95,49,11,10,86,52,48,14,22,26,51,56,82,72,69,93,78,94,66,37,36,100,98,41,1,76,6,9,13,71,44,83,57,80,4,30,38,97,70,55,29,89,35,62,65,18,59,77,17,12,8,81,75,21,73,3,90,39],
[33,51,83,89,74,37,32,17,86,29,54,75,99,93,7,45,11,43,61,66,12,1,82,87,84,58,98,20,100,88,52,15,36,67,47,23,48,97,16,31,13,70,80,30,39,44,60,85,2,69,35,42,76,34,55,90,79,41,38,8,56,72,19,9,22,65,10,92,96,25,49,26,94,46,81,4,73,62,77,91,95,14,68,40,78,28,27,59,18,24,5,64,50,3,63,71,6,57,53,21],
[42,81,82,99,86,35,20,33,53,79,19,70,38,8,75,84,74,73,49,60,96,92,6,95,76,55,97,32,15,94,28,13,67,91,26,83,78,59,21,27,43,68,56,88,47,22,14,25,93,87,1,98,62,4,34,90,18,31,23,58,57,48,29,61,71,65,41,63,10,44,37,9,11,12,89,69,100,24,66,30,85,40,36,80,17,54,50,46,7,51,16,39,5,77,45,3,2,72,64,52],
[72,46,53,10,77,29,47,67,85,26,13,99,30,33,98,64,42,27,17,45,61,58,63,18,50,54,48,36,2,76,32,56,21,22,8,51,92,71,25,16,9,70,38,37,7,80,81,68,39,40,3,49,12,44,6,59,55,97,31,100,94,24,73,62,74,88,93,41,83,15,19,60,89,78,57,23,20,4,82,28,75,52,84,91,11,34,65,35,86,96,14,66,79,90,1,95,5,43,87,69],
[2,86,74,33,51,47,91,52,16,22,60,17,25,6,94,65,3,49,7,98,95,83,96,69,61,57,36,26,76,19,20,90,34,89,82,54,40,43,27,97,5,50,59,63,15,100,46,53,77,81,70,62,9,58,8,72,67,23,38,85,11,55,92,14,37,24,84,78,4,56,93,42,39,1,32,21,71,10,44,99,45,28,41,68,31,18,87,12,80,88,79,48,73,75,64,13,30,35,66,29],
[44,52,79,81,60,93,68,23,16,20,7,74,9,27,37,84,55,57,53,66,76,36,41,25,21,88,91,92,22,72,98,54,18,48,40,56,67,15,63,39,77,43,5,49,8,10,50,64,89,80,6,11,3,14,75,32,29,69,30,94,59,78,100,83,1,61,13,35,90,33,2,34,26,28,86,46,62,42,47,4,85,45,12,38,96,51,82,87,19,31,24,97,65,95,17,71,99,73,58,70],
[50,18,40,68,83,52,78,61,71,46,91,30,67,37,3,62,93,47,17,84,28,87,43,74,72,19,75,36,66,54,65,79,59,2,58,97,27,96,32,98,100,41,92,38,1,80,22,81,14,90,33,70,35,44,53,10,6,23,31,63,85,49,57,5,21,9,16,86,60,56,26,64,11,8,76,24,48,89,29,45,88,25,42,99,94,34,82,69,15,13,77,73,4,20,12,39,51,55,7,95],
[91,14,94,64,65,58,82,74,86,56,24,57,16,27,100,99,61,84,69,22,31,53,45,81,18,73,44,54,28,70,15,29,83,89,43,7,77,79,30,47,46,85,5,8,97,1,19,67,20,60,59,40,51,17,76,90,12,98,66,75,50,80,26,78,3,6,2,52,10,48,87,38,34,32,23,95,49,62,11,39,36,4,41,55,96,63,37,9,42,68,88,93,21,92,35,33,13,71,72,25],
[85,77,93,98,18,58,35,50,8,34,73,33,74,38,82,12,57,87,65,40,3,95,14,61,42,29,37,68,54,6,62,22,48,52,2,21,23,13,86,81,53,91,30,7,20,11,75,9,41,80,45,88,69,89,78,46,25,51,32,94,28,83,67,47,17,55,19,60,56,24,39,76,72,44,84,90,63,49,27,97,4,36,99,96,5,92,43,31,79,10,71,26,15,66,16,59,1,64,100,70],
[38,13,31,45,40,86,100,30,15,87,32,19,3,5,11,64,12,53,9,2,79,72,93,68,8,17,67,75,61,74,63,16,59,42,56,1,26,69,46,10,48,49,96,57,39,90,20,89,82,99,78,7,6,85,35,97,44,22,94,62,24,43,33,83,50,65,58,51,14,25,95,41,60,18,23,21,55,88,37,66,47,28,36,77,76,73,70,71,92,54,91,98,81,52,34,27,80,84,29,4],
[51,56,58,84,67,92,68,8,65,75,36,80,66,72,73,85,50,40,26,98,81,59,86,79,77,30,34,33,25,95,32,71,37,53,93,64,23,100,89,88,60,3,22,54,12,90,70,74,39,31,52,11,27,76,13,83,2,99,47,57,1,4,21,46,9,6,97,10,17,7,49,15,96,16,63,94,44,14,41,24,38,5,87,43,29,48,18,78,42,55,91,61,35,82,62,45,20,19,28,69],
[26,85,41,2,30,3,83,66,61,78,10,21,12,56,16,84,36,73,13,45,15,40,11,64,38,23,33,20,8,86,55,79,100,77,34,75,74,46,97,43,49,44,9,42,89,95,24,54,5,22,65,87,19,32,81,68,93,4,91,31,52,59,6,69,17,96,53,27,29,80,47,63,14,51,35,88,60,58,98,82,71,99,48,90,7,18,1,92,28,37,25,50,72,76,57,62,94,67,39,70],
[45,6,1,19,98,56,14,38,72,20,8,83,93,33,2,61,71,5,37,82,100,41,3,76,52,30,13,86,26,15,85,34,51,78,42,48,49,24,59,67,68,60,63,50,54,89,16,18,9,97,81,57,25,11,21,95,40,69,62,90,10,32,46,73,36,35,44,53,22,88,87,96,80,17,75,39,7,47,31,84,23,74,55,28,99,65,92,79,91,66,43,77,12,94,70,27,64,58,4,29],
[16,54,98,21,7,30,37,26,65,90,97,94,45,40,42,6,13,64,68,53,87,20,50,96,39,17,9,89,35,22,99,41,23,56,46,95,73,27,25,60,93,74,72,24,83,62,63,19,48,4,66,51,3,18,57,59,86,11,91,43,55,28,47,71,88,49,85,82,8,100,34,92,80,32,1,31,15,2,36,33,79,67,29,84,61,76,10,52,44,69,5,77,14,75,58,70,78,12,38,81],
[3,26,5,37,1,67,17,55,18,39,2,23,72,16,70,46,99,98,9,66,96,90,93,78,6,20,30,49,45,100,95,59,34,71,56,38,61,87,68,76,92,33,31,74,86,64,12,81,97,91,41,22,19,60,84,65,50,53,21,62,8,89,88,25,69,29,40,79,94,73,4,24,14,15,58,52,44,63,47,36,83,82,43,13,7,27,10,51,80,11,48,32,35,28,77,42,54,57,85,75],
[67,15,78,91,37,95,16,23,62,98,31,33,4,79,77,87,5,29,57,18,92,53,89,88,84,49,39,17,63,97,96,73,55,2,60,26,9,94,66,11,35,21,58,8,19,51,34,70,50,3,45,36,43,14,54,61,30,74,38,24,85,68,99,13,100,65,47,64,75,10,44,83,46,81,32,42,69,12,82,41,56,71,52,72,76,48,7,28,22,6,59,20,86,90,40,80,93,1,25,27],
[25,5,96,60,41,84,31,55,100,6,21,89,50,63,99,13,83,51,49,67,62,20,79,18,82,22,66,77,36,52,90,2,75,61,70,88,76,92,40,44,37,9,71,39,35,47,24,86,87,57,65,85,97,33,45,94,80,15,59,95,29,11,72,14,48,17,43,98,34,27,42,10,23,73,81,30,68,16,26,7,64,46,93,12,3,69,54,78,74,4,58,8,56,38,19,91,53,1,28,32],
[62,28,56,50,81,51,54,71,29,31,61,63,39,53,97,5,85,64,89,87,84,98,96,45,44,34,48,55,92,59,68,77,74,37,22,38,67,65,19,100,15,24,36,1,47,88,2,25,58,21,93,16,95,32,69,70,99,35,57,43,11,3,20,12,42,90,13,8,14,46,94,80,52,75,79,83,73,9,91,17,7,41,82,60,27,78,6,49,26,76,66,10,23,86,72,18,4,30,33,40],
[3,59,72,18,54,94,53,70,51,65,27,49,58,38,25,9,100,56,86,6,88,36,33,73,22,4,82,96,69,61,77,89,19,52,11,45,68,14,78,64,85,48,34,12,32,37,71,26,74,47,93,67,7,5,24,20,1,39,91,62,40,92,66,83,97,55,41,29,75,10,17,43,95,90,63,42,28,2,50,30,31,80,44,87,98,84,60,46,35,76,57,81,13,16,99,23,79,21,8,15],
[49,86,90,74,76,1,24,79,32,57,98,18,93,29,39,8,100,61,47,87,88,27,63,52,31,12,11,72,75,80,81,14,73,34,4,17,15,23,7,53,22,83,51,77,35,9,3,85,95,68,19,30,94,20,48,40,92,45,5,26,36,41,50,96,84,56,70,2,44,71,69,99,64,60,58,67,65,62,42,33,54,59,43,46,82,21,89,13,97,25,38,78,6,10,16,37,66,28,91,55],
[41,42,35,75,63,43,85,46,70,69,95,45,56,54,4,65,83,19,71,28,74,26,99,49,53,88,52,82,32,51,40,84,76,57,17,9,14,81,13,21,66,96,64,5,97,59,31,24,18,62,67,86,98,27,47,93,58,20,79,55,6,1,11,12,91,48,100,87,36,2,23,10,16,7,8,33,30,73,29,22,15,89,90,60,94,78,38,92,77,37,3,68,72,34,61,39,80,44,50,25],
[92,43,83,55,10,54,67,25,60,26,35,96,59,76,40,42,50,100,21,13,97,12,47,85,94,89,58,30,18,23,32,73,20,48,3,17,38,37,52,49,71,82,51,19,16,41,91,90,68,79,39,27,28,74,57,70,98,5,15,46,72,8,56,80,22,14,29,99,75,81,33,53,11,63,34,78,44,84,4,88,69,45,6,95,86,77,93,61,2,65,66,87,1,7,36,9,64,24,31,62],
[72,28,79,37,95,5,50,2,10,64,90,96,17,88,100,65,18,45,9,56,44,46,73,77,91,13,20,71,83,6,31,4,16,39,26,8,74,86,35,69,54,51,80,48,82,1,93,66,68,15,30,25,19,87,97,58,47,21,70,61,84,89,57,36,81,23,34,42,11,99,52,75,24,67,92,27,78,12,76,55,59,49,85,3,14,63,60,98,41,62,22,7,32,33,94,29,38,43,40,53],
[40,75,76,88,13,25,12,68,21,41,39,86,80,85,15,82,46,24,77,60,2,3,22,29,71,99,96,94,91,70,53,61,30,64,27,74,47,28,34,89,73,57,59,37,1,26,11,67,54,78,10,81,16,72,90,51,44,18,43,9,14,23,55,66,52,92,98,45,38,69,35,100,65,48,84,33,17,62,58,97,5,36,19,95,8,6,56,50,49,32,79,20,42,31,63,83,7,87,93,4],
[60,86,36,65,45,30,29,66,83,27,79,97,49,80,100,62,13,77,51,68,40,59,61,95,11,70,76,87,88,12,58,71,10,53,23,7,31,19,6,55,34,4,90,33,72,16,78,48,98,81,74,64,38,94,22,92,43,18,69,32,44,35,5,15,21,91,99,82,50,96,67,17,24,1,39,9,28,63,93,75,2,20,85,46,84,26,52,54,56,73,57,41,3,42,89,25,8,47,37,14],
[47,82,16,97,71,20,13,2,93,18,78,68,9,74,43,19,7,64,38,86,100,17,54,42,26,61,50,14,15,60,76,56,48,69,73,96,4,44,6,88,65,59,40,91,41,63,3,8,36,39,52,12,51,37,62,30,21,89,49,28,11,25,1,99,45,46,83,81,85,35,34,79,58,95,55,33,10,66,80,5,77,27,90,24,92,29,87,32,57,94,98,70,72,23,75,67,22,31,84,53],
[86,34,66,43,81,95,99,67,60,23,16,53,30,76,78,29,13,75,8,14,64,4,65,46,22,6,36,69,73,7,21,82,10,96,32,80,68,47,24,59,55,33,1,41,83,25,72,2,84,100,28,89,56,15,18,20,48,58,90,61,92,19,54,51,3,42,97,12,77,9,57,50,52,38,98,39,40,94,45,93,27,71,44,11,17,26,31,85,79,70,63,74,49,91,87,35,5,62,37,88],
[45,3,9,100,21,54,63,59,38,83,81,78,6,10,93,41,65,51,43,26,99,24,49,58,19,17,66,74,44,32,28,97,7,68,72,25,60,57,69,56,89,76,4,91,71,23,62,80,37,18,36,31,94,92,88,55,48,79,85,2,90,12,42,39,34,11,5,33,52,75,98,1,53,16,84,70,77,86,13,95,87,30,27,50,47,82,64,46,15,14,29,96,22,73,67,8,20,40,35,61],
[4,41,97,60,53,89,1,23,2,75,39,28,59,93,74,55,8,48,58,61,31,64,14,33,30,27,11,6,69,85,73,100,72,7,25,47,81,99,24,51,86,91,29,50,44,18,26,37,35,78,38,52,42,79,9,94,46,49,83,17,87,56,45,77,40,95,13,84,19,92,96,54,16,80,76,71,57,67,34,21,68,98,88,43,10,70,12,15,62,32,5,90,20,66,3,36,63,22,65,82],
[75,51,18,7,49,37,56,21,61,94,80,52,41,47,17,43,82,58,6,35,28,23,29,5,12,16,55,98,87,8,84,24,76,42,68,86,53,71,88,33,31,2,30,1,77,65,22,92,59,57,90,48,85,89,13,96,73,36,15,20,81,3,40,79,45,72,10,69,63,62,14,54,26,60,99,4,74,32,39,64,66,70,9,67,44,38,34,46,93,95,19,25,91,27,100,97,11,78,50,83],
[73,85,3,82,11,15,75,93,86,97,60,41,35,50,29,56,22,92,91,77,9,69,44,53,23,8,40,12,7,26,37,78,79,99,71,84,64,5,4,96,76,31,1,95,34,30,90,65,74,45,55,81,67,62,36,10,6,49,100,27,14,19,87,98,2,54,52,63,42,51,70,32,21,68,17,39,38,46,89,72,43,25,33,83,80,88,48,20,57,28,66,61,13,58,18,16,94,59,47,24],
[36,3,93,17,15,30,68,49,72,9,26,80,79,98,97,89,39,65,100,8,85,61,52,83,2,24,90,95,67,64,35,87,37,33,21,19,84,32,74,43,1,60,47,77,71,69,27,10,73,29,59,6,42,25,40,66,50,28,55,45,13,96,91,18,62,14,94,63,34,16,56,23,38,5,12,81,58,57,51,48,53,88,41,99,7,70,46,78,4,31,44,20,76,86,75,92,11,22,82,54],
[43,40,70,35,15,84,23,79,49,48,2,44,89,45,95,20,80,52,22,29,32,67,30,42,69,3,88,7,41,11,91,60,86,36,68,77,8,39,53,26,14,21,74,34,75,90,19,96,99,59,38,76,92,33,54,87,5,61,47,1,50,46,17,66,25,27,13,4,16,73,51,65,97,57,71,81,55,64,24,6,93,98,31,85,78,63,18,72,10,9,56,28,83,37,58,94,100,82,62,12],
[96,57,71,30,53,27,43,47,24,63,52,100,35,28,23,85,45,20,80,54,95,94,58,73,90,15,97,74,40,36,42,2,72,44,82,19,62,67,26,33,32,84,65,86,12,68,51,22,8,91,70,75,25,11,93,49,6,64,18,92,77,29,39,13,10,79,66,16,56,7,38,78,1,31,98,14,87,69,37,50,3,17,34,76,21,46,89,88,60,83,59,81,99,48,4,9,5,41,55,61],
[2,41,82,54,95,45,50,63,51,35,91,78,80,38,57,18,44,76,14,52,29,10,96,42,28,22,11,69,60,87,64,37,77,3,89,19,20,15,86,92,12,48,32,53,46,26,100,25,70,8,75,16,99,94,55,7,43,85,49,59,47,88,9,68,72,39,98,4,65,83,71,17,23,34,93,24,74,90,27,31,58,84,36,33,73,5,62,13,97,66,67,6,40,56,79,81,21,30,1,61],
[70,45,78,97,20,19,84,58,92,14,73,95,67,100,62,13,1,33,61,79,60,27,35,38,5,77,28,15,72,2,31,81,22,74,65,10,34,75,9,3,57,17,21,98,12,11,43,87,36,88,44,18,55,96,50,56,42,80,66,16,59,24,52,63,76,89,93,7,69,71,26,51,30,49,48,6,53,32,29,86,82,37,40,90,99,47,41,46,94,91,64,8,4,25,83,23,68,54,39,85],
[15,18,14,86,31,9,5,20,19,59,23,54,73,27,75,29,96,34,4,66,93,56,72,32,69,84,95,71,85,74,25,42,51,41,36,67,48,6,65,63,62,12,45,30,82,40,46,61,70,98,87,22,53,13,57,91,33,8,39,50,88,80,52,79,58,38,89,60,11,10,100,43,90,21,35,49,16,28,17,77,94,7,24,64,92,81,76,37,68,26,3,99,55,1,78,44,83,97,47,2],
[30,99,71,37,18,45,6,42,14,23,38,1,50,68,78,86,100,72,2,36,22,58,39,27,28,20,80,70,32,66,61,16,26,88,21,67,75,12,93,49,43,51,69,48,55,5,82,46,34,98,81,97,24,77,25,11,53,59,56,7,63,92,87,4,40,64,94,47,19,79,41,17,74,31,8,33,89,44,29,60,83,91,35,13,85,65,84,76,62,90,15,10,57,54,96,95,52,3,73,9],
[50,51,40,84,18,42,16,7,23,91,62,2,25,39,5,19,64,20,43,11,36,3,61,1,12,93,82,78,95,26,49,38,41,100,65,86,22,70,55,44,14,13,90,47,81,27,59,35,15,53,66,54,32,34,52,10,6,75,48,60,31,73,9,76,94,69,17,89,88,4,79,74,85,98,63,99,56,96,28,68,21,58,37,92,87,45,77,72,46,24,71,80,97,30,33,67,83,57,8,29]],
W =
[[64,48,45,92,63,80,21,32,65,38,93,86,67,47,26,33,70,30,85,82,52,100,7,56,27,71,11,50,13,61,77,15,12,20,79,31,84,23,36,34,51,53,9,16,75,76,98,60,29,62,57,22,41,25,54,69,72,78,74,19,42,55,37,89,5,88,2,46,24,99,49,4,94,14,91,58,87,59,81,10,17,6,97,1,35,39,8,90,44,3,83,43,73,95,28,66,40,68,96,18],
[1,36,91,96,27,46,92,6,81,38,89,58,97,37,78,100,18,48,22,77,90,68,30,73,14,71,74,47,95,29,33,79,63,2,86,11,76,93,52,32,49,15,69,64,66,41,70,26,57,98,84,24,87,12,80,43,10,17,55,94,44,62,67,7,65,56,72,85,75,31,35,50,4,20,88,34,83,16,25,3,39,53,99,28,13,82,45,59,54,19,8,9,23,40,51,42,60,5,61,21],
[4,1,14,75,97,3,12,21,29,34,10,84,27,83,40,23,33,47,58,90,22,5,85,79,76,86,72,98,37,31,65,45,67,11,62,6,74,68,95,7,69,26,77,49,8,46,28,54,59,51,20,44,41,36,93,94,82,81,63,78,25,43,60,57,50,18,32,100,53,38,13,19,56,88,92,15,35,16,42,30,55,70,52,24,73,66,89,61,91,96,99,17,48,80,2,71,39,87,64,9],
[54,27,60,39,53,47,22,15,31,80,17,55,59,50,5,97,66,32,65,23,1,94,64,13,18,92,77,49,51,61,2,85,58,95,29,52,12,38,89,83,9,68,69,41,48,87,4,21,3,36,99,96,79,63,37,10,82,7,6,81,24,86,90,56,34,44,57,84,14,46,8,74,72,30,71,70,45,78,35,16,26,28,93,67,76,98,42,73,91,19,20,25,11,62,33,88,75,100,40,43],
[6,91,65,33,57,75,76,12,82,78,89,40,11,46,56,52,30,42,44,63,1,22,41,39,49,37,7,47,68,83,70,35,29,90,86,5,13,53,59,79,64,31,77,10,32,25,48,80,14,26,4,60,27,93,8,85,28,66,84,71,23,21,87,73,88,67,38,81,19,36,100,50,16,98,20,54,2,99,18,61,9,15,58,97,55,95,24,51,74,96,69,43,45,92,3,94,17,72,34,62],
[12,33,5,98,64,6,56,38,68,97,75,14,95,46,1,26,78,8,20,86,3,28,35,10,62,21,34,92,15,67,29,44,49,76,94,90,63,40,77,51,23,30,85,25,17,91,57,55,31,60,69,24,37,7,79,65,89,2,22,58,41,84,54,70,99,47,82,59,88,61,32,13,50,16,4,74,71,73,45,72,96,19,39,53,11,81,42,48,83,52,36,66,9,87,43,100,18,93,80,27],
[16,36,65,52,62,87,69,57,12,46,97,9,10,5,8,23,2,28,100,42,40,72,64,55,53,80,56,26,14,47,27,21,99,92,50,75,41,68,6,3,38,67,20,49,24,89,18,17,63,59,60,77,78,22,79,15,73,71,61,76,34,58,93,85,98,94,39,54,1,4,33,83,81,43,7,31,48,86,51,19,70,25,37,13,84,32,88,45,30,95,44,90,91,96,29,66,35,74,11,82],
[70,25,32,13,31,57,91,7,36,14,55,61,21,48,28,77,3,72,47,15,78,46,60,86,10,18,53,84,88,98,9,16,96,83,27,66,80,2,62,69,54,74,6,29,92,33,97,73,93,4,8,26,51,95,41,71,23,59,38,11,58,87,90,34,5,42,52,22,17,56,40,94,1,75,35,49,79,85,19,100,68,89,67,50,82,24,37,20,12,81,30,43,63,76,45,39,65,99,44,64],
[94,59,7,55,56,38,60,21,69,53,37,47,66,76,57,1,20,52,27,89,23,43,13,49,25,10,74,65,26,84,14,19,33,79,30,67,41,86,68,75,42,17,72,31,28,78,22,5,96,87,46,51,34,40,45,70,71,2,80,95,9,4,11,61,18,91,6,12,39,88,98,8,32,54,93,97,62,29,35,100,15,64,36,90,3,48,73,50,63,44,82,16,99,81,77,92,24,83,58,85],
[61,15,2,27,29,71,58,51,96,16,31,89,74,64,80,76,79,72,10,14,100,41,37,36,13,25,86,94,56,52,28,33,82,30,70,19,20,97,78,55,49,53,90,34,26,75,38,3,68,40,83,67,84,18,12,24,23,93,22,87,47,81,92,35,65,98,32,54,8,69,63,50,43,59,62,7,73,11,57,48,39,6,5,60,9,4,45,91,44,17,46,85,95,66,42,1,21,77,99,88],
[63,47,59,33,80,97,70,76,20,12,13,29,78,34,24,54,43,44,66,18,83,8,91,81,73,19,85,84,77,79,46,27,17,41,30,75,15,45,60,50,4,5,3,90,64,39,56,32,89,23,94,31,55,9,52,49,92,67,28,1,38,22,26,42,51,2,87,71,68,53,96,7,35,69,98,74,58,82,61,6,95,25,72,11,14,37,100,36,40,48,93,65,62,16,21,99,88,57,86,10],
[60,41,58,30,27,19,42,52,56,69,65,17,13,70,62,4,95,78,34,49,64,61,74,82,68,5,36,40,89,99,76,85,88,53,93,66,9,86,20,81,12,24,47,15,31,72,26,67,6,32,54,14,7,73,97,45,10,87,77,71,94,98,37,22,29,57,18,44,84,3,79,1,21,50,43,51,39,63,2,55,96,35,28,8,16,91,48,46,92,38,59,11,25,100,90,83,33,75,80,23],
[64,5,70,53,58,90,59,30,51,62,42,82,55,88,57,68,29,97,100,73,19,32,89,60,99,76,18,43,2,71,91,25,66,49,37,24,47,86,28,61,21,14,23,94,98,17,92,8,87,74,16,78,11,45,84,36,6,12,26,52,81,31,35,4,75,3,41,95,40,50,33,9,13,56,1,72,48,85,39,10,93,20,63,83,69,38,65,7,77,27,46,67,44,34,22,79,54,15,96,80],
[99,56,53,43,70,48,20,78,82,34,83,90,40,95,13,76,25,15,5,22,74,32,39,35,86,68,60,50,91,67,44,55,31,8,71,89,64,85,58,46,27,1,36,23,52,30,63,75,98,6,24,47,96,33,77,80,94,84,2,19,69,51,7,73,10,41,11,26,88,87,18,97,59,28,66,29,72,49,57,3,37,9,17,38,4,61,21,14,100,92,81,16,79,93,45,54,42,65,62,12],
[1,56,20,53,74,98,34,77,29,26,66,100,16,72,24,17,3,50,63,32,46,43,99,97,27,49,45,95,41,80,64,47,89,81,79,54,57,25,15,33,86,62,11,36,67,70,48,75,19,38,7,28,78,31,61,2,68,93,13,65,51,21,59,55,94,87,73,42,60,8,82,14,22,37,18,35,6,92,4,88,5,96,39,69,85,84,30,52,71,90,10,76,58,12,91,83,44,23,40,9],
[45,99,51,88,47,95,56,85,65,33,42,58,100,43,1,93,26,57,20,30,18,70,11,92,76,82,87,25,10,37,13,12,32,75,90,79,27,48,97,89,3,52,22,64,28,73,40,98,60,61,9,91,4,55,63,29,77,23,21,2,86,36,5,84,16,7,94,83,41,78,96,72,35,68,80,24,66,15,69,74,71,54,6,17,39,81,62,31,14,67,38,50,8,49,46,19,34,44,53,59],
[62,39,78,27,6,98,33,100,44,69,45,82,22,24,84,31,63,46,90,85,35,56,43,77,49,47,97,34,8,32,87,99,89,40,37,51,86,17,13,41,72,4,92,52,23,15,30,50,18,10,65,80,25,48,12,59,5,73,29,54,14,38,42,91,7,76,57,53,16,19,58,79,95,68,26,20,3,21,9,1,93,70,96,81,75,64,2,71,83,61,94,88,66,28,60,74,55,67,11,36],
[88,58,78,36,49,44,87,72,10,13,26,21,30,39,29,57,84,97,94,81,12,73,80,100,56,16,98,41,6,95,7,19,53,1,82,66,92,9,59,37,15,25,99,43,47,79,4,52,40,48,46,62,8,32,64,70,50,76,31,51,23,90,33,61,96,60,38,28,3,69,55,17,35,68,18,77,5,11,24,20,45,67,2,65,75,85,93,91,14,74,63,27,83,34,86,42,89,54,22,71],
[50,40,29,79,59,44,67,3,42,93,10,63,58,25,36,95,32,24,66,26,100,23,8,20,22,68,15,38,19,86,47,70,61,31,91,64,46,14,49,81,94,28,74,37,76,56,18,9,89,11,85,13,21,34,5,99,12,65,96,71,90,92,17,51,78,97,35,72,1,53,83,87,45,98,41,75,33,55,77,6,84,2,80,54,48,57,7,30,52,27,4,16,82,62,60,43,69,88,39,73],
[8,62,68,11,79,77,53,67,10,27,47,3,72,6,99,95,88,97,30,22,71,92,33,45,28,55,36,13,34,40,81,46,23,73,86,49,14,51,54,70,5,64,66,20,7,91,59,42,87,83,58,31,63,16,26,12,50,37,15,100,21,38,78,35,17,52,1,80,43,39,76,96,69,24,57,56,85,94,98,4,65,29,60,89,41,82,18,19,84,32,48,9,2,25,93,90,44,61,75,74],
[4,61,59,33,17,90,53,98,29,86,12,5,81,42,55,60,73,94,43,91,23,24,35,89,20,57,75,52,10,69,77,7,78,82,11,30,58,26,9,54,2,1,45,83,21,46,15,64,50,100,96,22,19,99,56,27,49,74,44,88,62,79,13,25,39,16,14,87,38,63,67,32,31,84,51,66,36,28,18,8,40,76,3,47,85,92,70,68,93,71,48,34,97,72,65,37,41,80,95,6],
[24,29,22,99,23,37,81,44,38,71,17,65,50,77,18,87,55,90,39,92,62,43,72,6,83,78,67,69,64,76,95,16,68,49,86,59,10,54,30,63,61,19,97,4,1,70,93,41,46,48,80,13,5,52,82,91,85,35,51,94,73,2,36,45,8,32,60,7,75,21,66,9,96,14,88,53,84,33,40,58,47,98,100,3,12,15,74,26,79,56,57,27,89,28,42,31,34,20,11,25],
[18,49,19,45,85,38,28,17,64,46,36,40,55,24,47,67,15,43,10,48,77,4,16,100,50,81,71,86,1,14,54,3,66,61,33,51,25,74,41,11,52,60,34,63,94,53,20,91,37,30,2,21,13,32,97,56,75,6,95,8,35,73,98,12,87,80,76,26,99,7,65,62,89,23,9,68,5,59,82,79,84,44,70,27,92,72,96,29,93,78,31,69,22,39,57,83,88,90,42,58],
[64,8,7,2,71,59,53,87,68,83,73,51,9,1,69,19,40,37,97,61,66,57,55,10,36,21,98,30,47,62,94,88,28,16,24,63,81,15,4,23,74,25,41,93,44,26,84,6,42,22,43,38,17,29,91,13,89,60,56,14,5,11,48,31,45,80,79,67,85,32,52,77,92,34,72,76,58,18,90,65,54,39,27,12,95,100,49,3,82,96,78,70,46,35,20,50,33,75,86,99],
[65,39,1,22,27,13,56,66,81,85,28,75,96,19,15,54,9,63,68,93,23,61,82,77,100,64,8,98,45,52,4,57,67,2,74,78,86,62,16,7,46,59,43,69,71,33,10,48,99,90,79,24,26,5,29,47,41,60,94,11,37,34,58,6,87,53,51,83,21,97,88,55,36,18,17,70,3,92,20,30,25,76,31,40,72,84,35,32,91,49,50,38,44,89,14,95,80,73,42,12],
[21,27,20,80,45,86,48,34,11,49,57,51,91,38,28,81,5,92,32,73,25,15,68,56,64,97,95,39,87,89,78,67,14,61,3,24,63,71,30,29,59,65,37,36,70,17,6,42,7,66,22,13,72,2,19,43,44,75,41,84,46,54,26,31,96,83,85,52,77,9,35,18,16,40,8,76,1,50,90,60,79,74,99,58,33,82,10,88,23,47,94,98,4,55,100,93,69,12,53,62],
[57,80,89,50,12,20,52,45,33,73,32,78,61,44,58,71,54,98,25,34,86,38,10,72,2,4,67,23,11,6,94,53,68,18,41,56,100,76,24,19,26,88,69,15,47,16,60,63,96,62,90,75,99,64,95,65,17,46,21,79,48,74,8,3,35,81,22,29,30,97,77,27,9,28,51,36,55,39,82,93,85,66,13,31,87,83,59,43,70,91,1,7,40,84,42,5,14,49,92,37],
[100,29,11,14,23,70,76,67,6,95,89,73,45,55,40,44,50,43,93,16,17,85,57,49,81,82,64,79,26,98,97,58,77,60,71,74,46,15,86,39,94,5,4,8,90,99,75,80,91,65,19,27,52,21,87,22,25,7,12,2,53,20,83,66,9,96,78,24,42,63,84,10,13,47,72,48,88,35,68,61,41,28,3,18,56,59,37,38,30,33,62,69,31,1,34,54,32,51,36,92],
[41,56,84,18,10,89,91,100,23,90,65,49,61,47,59,69,32,25,35,97,71,53,93,13,82,80,72,17,78,43,40,77,68,45,16,98,48,22,7,54,63,76,42,21,94,52,92,88,27,9,12,11,14,55,64,66,74,38,83,1,70,37,29,24,67,20,8,6,5,28,33,62,15,85,57,51,46,96,73,79,75,39,44,87,36,4,34,86,81,60,2,58,31,99,19,95,30,26,50,3],
[26,99,14,68,29,28,6,54,1,45,50,13,78,86,46,33,97,40,100,12,35,92,38,53,15,63,36,39,48,42,21,25,51,90,31,77,60,80,74,8,5,73,67,7,18,62,87,96,47,85,59,57,75,93,95,22,71,76,4,44,81,27,79,3,55,66,98,64,89,58,72,52,24,88,30,17,23,9,82,70,11,65,41,19,34,10,37,20,43,56,61,32,16,83,94,91,49,69,2,84],
[59,3,5,14,9,62,50,88,17,83,19,56,37,64,82,31,61,98,94,7,43,78,45,8,66,40,97,52,42,49,4,81,87,27,25,65,12,26,34,51,10,76,15,95,75,38,84,68,71,36,54,100,58,63,6,23,74,77,99,20,90,32,33,60,86,96,30,72,92,39,22,24,57,73,91,2,53,13,69,41,47,21,46,35,89,67,55,29,93,11,85,1,16,48,28,70,18,79,44,80],
[65,13,71,37,66,51,24,67,84,99,74,35,28,23,86,53,36,43,80,25,78,96,50,97,48,69,63,40,14,85,73,26,10,18,98,33,42,94,90,91,75,61,3,5,17,30,29,68,92,79,1,82,89,93,81,70,21,64,76,34,59,12,62,15,11,6,4,47,55,39,60,57,38,52,54,20,45,7,32,46,19,56,22,9,72,27,87,77,83,41,58,49,100,8,31,2,88,16,95,44],
[87,88,44,74,43,78,3,77,59,58,13,71,82,27,16,28,49,100,66,86,32,6,93,47,79,52,65,7,26,23,5,24,84,36,42,73,97,56,20,22,45,50,80,57,17,85,53,34,83,14,60,67,96,29,99,37,31,39,70,54,95,9,11,38,4,69,64,33,92,8,12,94,10,68,25,41,35,76,15,63,75,55,91,40,72,98,48,90,18,46,62,61,19,51,81,30,89,21,1,2],
[2,17,33,65,4,49,8,9,44,10,64,73,68,51,27,19,100,70,57,67,97,34,48,18,86,99,3,88,53,81,90,42,6,66,41,46,25,96,7,52,82,43,29,50,5,1,35,85,95,89,15,76,60,56,79,94,55,14,11,58,54,71,37,26,13,59,92,93,36,69,83,80,74,31,28,21,45,91,22,47,63,78,87,84,72,23,24,77,12,40,32,20,61,62,16,30,98,75,38,39],
[38,65,68,17,79,82,83,47,3,92,12,41,10,29,77,66,28,34,74,15,87,58,97,67,45,62,59,78,64,98,80,70,4,7,49,76,63,36,71,90,53,31,85,18,14,25,86,51,21,55,69,6,84,8,13,42,52,37,44,39,26,11,56,48,93,16,54,75,9,32,61,35,50,100,72,22,73,1,20,46,33,24,2,88,94,40,30,19,27,99,57,60,81,43,91,5,95,89,96,23],
[76,65,56,80,87,22,10,78,42,14,95,32,5,92,40,81,4,34,49,68,6,74,44,58,7,63,60,89,57,91,8,93,24,88,37,2,35,94,26,71,99,100,85,18,31,96,55,84,25,98,61,48,70,39,19,38,15,66,67,47,59,20,29,75,50,28,97,27,79,69,53,3,86,16,23,21,82,51,46,62,77,33,43,41,12,52,90,13,54,45,30,17,83,1,73,9,36,11,72,64],
[32,35,14,87,78,13,61,31,48,4,7,85,10,6,53,33,63,20,39,2,75,41,16,26,19,5,89,34,24,17,18,99,27,58,71,92,57,8,97,44,21,38,50,64,29,70,62,91,23,66,69,1,12,30,42,80,94,45,77,72,96,55,93,47,36,49,73,54,28,46,43,79,84,59,90,86,100,11,60,88,76,25,9,56,37,74,40,65,98,82,51,67,68,81,15,83,95,52,3,22],
[98,59,5,7,10,63,68,27,47,15,75,3,21,2,49,18,38,84,77,90,92,39,85,26,79,55,71,60,32,48,23,4,56,70,20,86,100,44,19,34,61,46,8,95,31,76,37,54,33,80,67,96,83,73,69,36,81,57,12,43,52,65,45,74,82,78,40,14,6,11,93,64,53,58,9,13,25,16,62,87,22,24,66,30,41,1,42,91,72,89,50,88,35,99,29,97,94,17,51,28],
[11,54,52,39,2,76,81,70,16,5,69,29,44,86,78,33,91,12,83,21,6,56,99,47,82,51,41,4,8,96,58,50,59,93,35,95,64,17,100,1,85,23,98,80,73,25,72,13,62,84,45,19,46,36,20,15,31,60,22,67,37,42,65,57,27,89,38,32,55,75,53,9,77,40,87,90,94,3,92,71,48,28,18,68,43,79,24,88,34,30,26,74,61,7,14,66,97,49,10,63],
[36,61,68,32,74,33,62,17,81,3,40,23,18,77,24,73,13,48,46,41,51,28,84,26,39,45,79,88,70,54,27,35,44,7,37,95,30,92,85,71,55,47,25,56,58,87,78,64,10,29,75,50,22,89,91,1,57,53,63,99,34,59,86,52,98,67,20,16,38,49,21,82,93,4,6,2,72,76,90,11,94,80,5,42,66,96,9,97,31,43,65,69,15,83,19,12,14,100,8,60],
[92,97,70,8,20,14,86,89,2,40,35,78,75,68,72,37,52,50,36,22,24,67,91,34,45,60,56,98,18,17,66,90,87,30,21,9,85,59,93,16,76,61,71,42,44,28,5,58,25,82,57,15,96,23,13,65,79,83,81,31,49,55,53,95,12,69,7,32,3,54,47,10,80,64,74,39,62,99,46,88,6,26,4,84,100,1,94,19,77,33,73,27,11,63,43,41,51,38,29,48],
[44,65,4,36,69,31,8,17,59,82,78,18,67,41,74,68,37,53,99,92,83,80,63,21,56,14,85,32,51,27,1,93,50,39,84,66,7,52,28,60,5,23,24,94,95,29,13,62,55,11,12,40,89,77,47,30,10,96,15,48,100,49,75,45,34,57,54,2,79,35,98,19,97,90,38,22,43,86,73,16,72,42,88,6,87,81,33,61,20,58,91,9,3,70,71,76,46,64,26,25],
[18,43,3,52,41,92,57,38,47,49,81,58,30,90,69,20,64,98,93,40,79,85,83,99,62,60,82,59,31,15,94,14,9,50,36,87,76,73,34,63,61,17,91,26,32,24,45,11,27,54,29,22,86,33,44,71,10,12,95,1,6,8,80,100,13,16,84,7,74,96,78,25,65,72,89,97,67,37,55,70,46,68,28,39,4,75,51,23,48,42,88,56,35,66,53,19,2,21,5,77],
[54,73,3,100,67,66,34,2,63,88,48,82,9,64,17,44,52,47,14,39,29,79,35,85,32,7,68,28,10,49,25,15,45,40,21,61,56,4,11,74,6,46,76,53,31,5,92,87,60,83,96,37,12,90,81,55,36,70,91,98,27,84,65,95,57,77,30,26,69,89,86,41,50,75,13,20,1,18,24,42,51,8,16,22,43,80,78,33,59,58,99,23,19,62,71,93,38,97,94,72],
[42,9,27,54,74,24,72,80,44,55,66,90,95,14,6,71,50,5,52,28,25,94,2,61,53,37,75,15,46,83,20,51,91,68,13,59,98,38,92,40,100,86,63,70,10,69,87,19,36,32,33,78,35,89,17,4,88,26,48,64,18,79,45,76,81,97,23,99,65,57,11,29,43,47,96,77,16,3,8,12,62,22,93,39,60,84,82,34,67,21,73,30,49,1,31,85,41,56,7,58],
[45,11,3,54,38,93,83,91,57,15,33,89,1,36,72,98,37,99,75,77,94,48,28,5,96,59,88,24,40,34,60,41,76,87,22,29,71,17,46,56,39,78,20,26,10,79,13,66,51,80,42,43,62,68,58,85,7,32,44,49,100,95,14,8,35,65,16,21,55,30,69,23,61,73,86,19,4,67,9,84,25,53,70,92,47,18,6,31,82,63,2,27,50,81,97,74,90,52,64,12],
[72,28,24,26,88,66,4,53,8,2,21,76,90,99,97,81,70,79,9,12,38,3,41,86,59,77,49,25,37,98,100,47,75,60,32,95,61,69,29,16,64,36,54,45,55,80,85,50,57,67,10,51,83,52,78,48,34,39,94,44,65,27,84,14,71,73,17,6,89,20,87,7,5,35,92,46,11,23,30,63,13,58,33,43,93,15,74,82,62,68,42,56,40,19,22,96,18,31,1,91],
[4,34,99,81,90,51,97,84,11,17,93,82,60,98,36,38,2,58,23,5,96,100,18,21,79,64,83,42,14,68,39,65,41,35,20,47,95,25,24,77,75,53,66,13,61,71,1,46,29,72,3,12,91,55,45,69,33,44,86,62,88,32,16,78,27,59,94,6,40,37,89,73,28,92,87,85,19,52,9,63,80,70,57,30,54,43,56,67,48,7,74,50,15,22,8,26,76,10,49,31],
[84,81,33,46,56,11,64,77,12,23,22,73,51,65,18,67,58,42,21,24,49,63,97,36,59,68,9,62,25,13,41,61,76,87,88,37,20,7,54,78,95,83,90,16,10,75,45,17,80,93,79,28,70,14,35,53,29,1,5,34,31,57,2,32,30,74,55,3,38,44,86,91,98,94,26,52,72,15,96,100,89,99,48,40,6,66,60,50,8,47,82,92,27,43,19,39,71,85,4,69],
[49,33,82,34,25,32,56,36,18,76,40,14,84,64,79,28,96,57,77,17,27,2,35,92,37,21,83,43,91,71,10,48,90,85,5,38,78,12,22,94,15,29,87,58,54,47,1,98,31,52,80,46,11,69,6,67,63,19,24,66,88,59,8,41,50,42,60,13,30,89,68,23,74,9,75,93,81,61,73,45,100,95,97,72,44,4,53,62,26,99,16,39,70,86,3,51,55,7,65,20],
[72,85,52,25,6,64,29,28,35,70,31,79,78,10,43,17,50,34,15,45,26,33,80,8,19,30,77,42,36,67,4,22,76,51,92,99,81,46,95,14,12,53,5,20,65,89,18,74,57,32,93,71,83,37,86,41,87,13,61,9,48,58,88,75,54,11,69,62,56,60,47,24,16,82,100,3,97,44,94,38,66,2,49,21,23,84,96,68,91,40,39,27,90,55,1,73,98,7,63,59],
[89,27,45,46,73,92,20,76,33,37,5,63,8,13,38,12,36,9,24,26,90,86,88,2,65,68,87,61,29,51,54,11,60,56,28,95,98,77,4,67,35,17,18,66,34,96,43,74,97,22,7,62,32,57,100,80,99,44,31,50,55,94,21,1,49,75,10,79,72,84,58,70,59,19,25,71,30,93,23,53,39,6,16,42,15,82,69,64,85,81,83,48,47,14,91,78,3,52,41,40],
[35,16,11,10,91,37,28,2,99,58,78,52,38,3,33,62,61,82,98,51,66,83,19,100,87,89,93,86,59,1,97,49,46,73,21,8,39,72,20,29,60,85,9,32,50,27,22,54,68,45,31,7,84,40,25,55,80,74,48,6,18,14,12,63,56,79,15,47,5,94,43,95,81,96,77,24,57,53,36,17,71,41,4,65,90,76,26,88,92,34,75,67,70,44,69,64,23,42,30,13],
[40,80,66,39,59,38,71,95,7,44,55,62,100,2,50,21,26,63,9,67,60,6,91,56,93,54,23,41,79,99,30,89,35,70,20,98,11,87,42,18,96,58,85,83,10,36,32,37,73,52,86,49,88,8,65,33,4,34,82,43,92,46,14,84,45,68,5,13,17,81,1,22,64,15,48,75,72,74,16,78,29,69,53,25,27,90,76,97,57,94,24,12,61,51,28,47,3,19,77,31],
[12,43,74,20,6,67,39,32,36,58,10,71,14,77,41,92,72,31,95,51,80,68,17,96,23,2,3,60,50,82,37,81,27,84,55,16,21,97,11,59,9,66,47,26,5,4,87,19,70,100,69,78,44,7,57,40,79,94,91,8,54,62,73,63,88,93,30,86,13,34,48,64,25,18,33,24,42,52,35,38,85,1,83,89,90,29,49,22,45,53,76,98,46,61,28,65,99,56,15,75],
[71,40,50,87,28,19,55,94,89,36,4,77,74,88,81,84,23,60,92,75,42,56,10,46,47,48,85,29,80,67,38,83,79,26,57,91,59,96,98,5,45,8,90,35,25,16,31,6,52,14,99,82,97,66,58,34,69,61,32,9,54,27,78,12,1,2,53,100,86,62,93,70,49,13,73,21,43,11,65,72,7,64,15,18,51,76,39,95,30,41,63,22,37,33,24,20,3,17,68,44],
[93,53,76,88,92,35,47,37,83,51,91,22,54,11,57,73,87,6,81,15,36,56,100,12,95,9,8,34,98,72,44,82,19,38,48,1,3,24,59,60,79,4,25,67,40,16,26,42,96,61,20,63,45,52,62,17,75,58,71,14,43,28,30,27,18,85,2,50,31,74,39,84,49,69,66,89,70,65,10,99,77,94,78,68,5,7,29,13,80,21,46,41,32,55,90,64,23,97,33,86],
[35,70,30,56,18,31,91,52,1,77,39,49,63,92,40,75,83,80,88,16,36,38,47,86,12,89,53,90,32,3,82,29,28,72,37,87,99,21,98,45,15,6,79,14,13,60,20,58,26,74,61,7,5,64,67,43,78,46,44,95,41,68,84,51,76,19,96,59,71,17,9,42,11,93,94,73,100,2,55,27,69,34,57,65,66,62,8,4,23,81,10,50,25,48,85,97,24,54,22,33],
[53,2,15,11,24,28,88,84,43,32,33,6,46,57,52,27,19,50,14,10,90,73,67,35,17,69,25,74,8,92,86,45,18,83,3,71,82,21,38,66,65,93,23,95,94,7,78,40,16,13,89,5,59,64,68,99,79,22,98,70,44,49,61,42,100,96,63,58,97,39,72,77,48,26,1,62,37,29,20,56,47,12,54,55,91,85,76,31,34,41,51,87,9,75,81,36,4,60,30,80],
[27,37,80,36,48,92,21,53,91,1,60,95,84,8,86,28,87,33,6,93,16,23,18,4,43,2,20,15,69,58,85,82,47,97,99,61,79,17,50,68,39,35,100,76,44,94,38,65,96,70,62,90,46,51,72,25,45,74,83,88,73,10,3,40,75,31,29,57,5,78,30,71,64,81,14,19,41,54,7,98,9,55,22,42,26,11,89,24,49,63,66,12,32,67,34,13,77,52,59,56],
[14,93,85,91,62,53,39,12,9,94,79,8,26,15,61,88,20,28,18,77,19,1,21,68,54,67,59,81,65,2,10,56,16,64,36,69,87,43,49,75,66,78,86,92,5,38,29,41,22,23,80,31,6,82,58,30,32,37,97,40,99,51,89,47,11,17,72,73,60,50,90,44,52,3,42,33,76,84,34,71,25,98,83,48,63,45,96,46,13,100,57,24,27,70,4,7,55,74,35,95],
[21,66,64,63,57,28,12,16,38,68,2,69,48,19,49,77,72,91,6,97,95,90,96,22,62,45,23,59,53,87,29,85,20,83,73,81,71,92,88,5,32,74,65,10,36,37,11,70,43,35,31,8,78,75,7,30,50,89,52,46,40,79,86,24,34,94,82,54,42,4,3,56,93,58,39,76,13,17,55,1,67,60,14,99,98,44,26,27,41,84,33,9,47,80,25,51,18,15,100,61],
[25,43,61,27,97,83,41,18,51,24,62,16,28,99,93,64,85,42,55,63,46,78,4,14,40,20,6,44,57,36,13,89,70,87,30,98,80,10,23,38,26,9,29,54,79,1,100,50,60,74,59,12,92,71,53,35,19,67,8,21,34,69,52,5,39,45,7,95,84,91,66,65,15,37,94,47,73,17,48,72,49,2,31,22,56,32,11,58,76,33,88,68,86,3,77,96,81,75,82,90],
[50,62,1,85,97,42,16,47,59,93,8,90,79,74,86,17,95,70,31,81,67,30,23,53,40,71,91,36,88,4,48,54,43,7,15,82,66,100,64,94,46,14,34,68,37,56,35,2,99,41,96,18,24,22,32,98,20,21,19,77,78,57,61,92,89,12,6,29,11,49,60,55,80,27,72,69,83,58,75,28,38,25,63,73,87,44,84,3,65,13,51,9,39,52,26,45,10,5,33,76],
[11,58,26,43,15,46,95,90,57,4,37,41,22,12,19,1,52,96,23,81,99,64,76,51,34,47,98,50,83,38,71,75,94,7,3,32,45,53,62,85,59,49,63,9,97,93,70,86,39,74,6,91,66,44,30,24,35,78,17,54,33,8,67,84,73,100,69,21,40,48,14,16,88,56,27,92,55,65,25,31,2,82,79,87,42,68,60,10,72,61,28,13,80,89,5,36,29,18,77,20],
[11,94,92,68,27,48,36,51,8,2,12,45,86,52,55,47,99,57,21,10,46,78,4,6,71,64,76,26,91,16,73,79,35,70,98,72,5,80,32,63,65,15,19,7,30,60,54,44,1,66,85,20,100,3,58,69,43,82,31,75,53,56,87,24,67,95,14,74,34,9,84,77,25,62,42,29,49,81,40,59,33,17,93,18,88,83,23,28,90,22,41,37,13,50,97,61,96,38,39,89],
[12,29,84,95,62,14,16,44,36,42,9,99,97,1,98,19,76,52,78,26,65,79,32,73,82,17,59,38,18,51,87,60,45,2,13,31,56,28,10,90,7,92,80,40,81,89,63,20,6,61,11,25,91,5,22,68,58,66,54,100,8,27,70,86,75,64,41,57,96,39,43,37,15,93,55,30,3,74,33,23,67,4,94,53,71,49,69,21,88,46,50,35,83,47,72,34,24,48,85,77],
[84,3,34,70,25,67,43,31,14,52,22,72,69,13,50,2,49,64,42,32,16,74,58,39,97,71,68,5,57,76,59,55,41,61,38,66,98,54,94,4,12,73,29,27,90,56,26,100,15,44,33,21,18,95,37,20,60,35,30,19,48,23,51,65,87,46,77,82,6,93,85,80,89,79,40,45,24,47,11,1,92,53,96,8,75,17,88,10,83,62,28,78,81,63,91,86,7,36,9,99],
[89,74,40,38,85,52,77,67,68,94,45,63,99,47,61,48,53,15,55,100,80,19,58,95,23,14,78,70,87,86,11,56,51,71,34,88,12,7,84,10,30,49,32,25,3,24,16,31,35,96,37,81,66,50,44,69,98,1,65,62,64,13,27,43,73,92,91,20,82,22,54,2,39,29,18,57,9,5,72,79,4,93,33,21,17,8,60,26,6,46,42,97,28,36,59,90,75,83,76,41],
[61,13,40,3,11,99,63,100,82,16,29,79,50,76,77,30,94,68,93,86,71,51,96,42,33,58,37,45,69,25,54,85,35,74,5,70,47,89,28,43,10,38,98,8,31,56,34,39,67,19,65,15,84,80,23,95,75,1,12,73,91,27,97,57,59,53,18,14,21,7,48,44,62,52,36,81,41,32,55,46,20,2,88,22,60,17,87,66,4,9,78,72,6,90,83,92,49,26,24,64],
[53,54,11,16,64,75,52,34,66,85,36,92,89,4,10,15,42,1,39,5,24,72,99,43,81,86,25,63,80,41,57,19,91,6,88,17,51,37,58,97,68,3,28,95,55,94,50,56,18,65,14,76,26,23,83,20,93,21,59,8,30,27,38,82,29,62,77,67,96,87,46,32,47,69,9,44,40,98,61,12,49,45,71,79,74,33,48,60,90,78,22,70,100,35,84,2,7,73,13,31],
[80,16,28,63,92,11,52,59,26,20,4,69,51,79,99,55,97,58,61,1,75,90,78,27,71,33,70,66,17,14,41,46,68,98,9,65,60,72,37,42,54,3,43,40,38,50,2,87,73,8,94,56,85,31,30,95,36,5,48,10,84,64,88,57,24,45,22,39,25,12,100,67,34,76,19,89,23,74,13,21,53,82,49,62,32,86,83,15,81,44,93,47,18,6,35,96,7,91,29,77],
[28,4,34,74,82,20,84,10,92,77,51,33,89,53,45,80,38,11,67,83,14,18,95,1,65,99,79,36,94,6,41,3,50,54,24,44,43,69,29,61,9,25,15,52,96,39,72,85,90,19,2,97,48,73,12,30,86,49,8,56,64,93,40,76,26,66,71,78,62,98,21,91,63,23,47,46,32,13,75,35,58,22,88,100,37,55,27,59,17,87,57,42,7,70,5,68,16,31,81,60],
[6,97,77,52,69,79,26,1,95,10,76,13,48,33,96,72,62,44,85,84,53,49,91,88,90,22,60,98,30,80,65,64,24,9,54,42,45,74,83,59,19,21,86,3,50,100,2,82,81,93,31,4,18,20,17,70,89,23,73,55,29,28,39,66,51,16,8,27,92,57,63,7,11,47,25,40,14,94,38,35,46,71,99,61,32,15,56,12,36,75,5,78,67,87,34,37,41,68,43,58],
[57,91,94,100,75,37,93,17,18,72,59,82,10,51,73,11,98,31,87,40,62,88,41,7,68,47,33,77,58,28,15,23,78,5,25,63,38,29,19,79,60,16,50,92,74,71,42,13,76,46,80,86,70,34,52,67,85,24,66,84,55,9,64,97,49,89,4,35,1,44,45,69,53,26,20,48,39,99,65,36,12,54,3,43,30,14,27,96,56,90,83,2,8,6,61,81,22,95,21,32],
[47,5,37,66,20,11,98,54,34,17,84,31,6,27,78,35,19,72,77,3,64,26,93,75,41,52,86,18,14,63,50,90,49,36,88,51,58,43,33,70,32,80,13,40,62,24,9,95,30,60,15,100,45,67,55,2,7,28,29,42,48,82,87,76,38,25,83,89,39,92,91,59,65,74,22,94,10,1,97,57,69,81,61,12,68,46,44,99,73,71,21,4,56,16,8,85,79,23,96,53],
[53,22,70,92,13,3,35,76,40,26,48,62,65,96,32,56,14,66,73,45,38,67,74,43,44,7,69,61,97,4,28,25,41,8,63,36,24,17,1,18,58,2,29,81,78,34,9,10,94,57,99,51,39,80,20,72,27,95,59,12,6,23,49,93,87,84,75,55,85,68,42,77,30,100,64,54,33,37,52,50,21,31,11,47,89,46,86,19,98,5,15,90,60,83,16,71,82,91,88,79],
[77,10,49,89,93,58,41,66,50,47,18,67,88,90,94,53,15,78,79,20,43,48,64,57,35,21,80,74,70,76,11,9,56,33,8,6,19,26,32,87,46,1,96,99,16,73,83,54,14,69,22,52,91,62,60,39,84,3,68,7,85,38,31,24,45,17,51,98,5,72,12,34,71,13,81,23,29,97,86,55,27,28,4,82,100,59,36,40,44,65,92,61,25,30,63,42,75,37,2,95],
[1,89,59,32,16,18,99,78,66,71,55,97,94,37,2,45,19,96,76,62,79,28,73,26,43,84,21,15,44,29,30,25,51,65,38,57,68,56,95,50,52,36,22,24,17,33,88,42,7,14,83,48,9,3,93,85,20,72,41,49,87,10,81,60,8,91,98,63,5,67,39,77,75,40,90,46,34,80,31,35,23,27,86,61,70,53,12,6,47,58,11,54,69,74,4,13,100,92,82,64],
[80,46,73,91,77,79,43,82,76,44,39,89,29,10,20,83,42,30,59,5,22,67,96,50,18,19,37,57,25,68,40,48,85,84,71,28,56,27,14,33,93,38,41,58,2,98,24,11,16,6,54,92,31,69,3,26,100,65,52,34,7,12,72,55,51,9,95,97,63,60,45,74,87,4,23,99,15,47,13,81,1,8,36,70,75,32,53,64,61,66,17,86,49,90,78,35,62,21,94,88],
[28,16,55,19,83,58,48,37,15,6,74,43,56,86,89,46,88,24,2,73,7,79,45,72,71,40,77,64,93,60,25,44,30,17,41,4,38,70,54,32,36,42,69,81,34,90,13,50,31,49,92,78,10,99,14,59,85,95,100,11,65,20,62,87,57,66,82,22,97,9,67,8,47,76,26,61,68,27,52,21,53,1,75,5,39,84,29,33,98,96,23,94,91,3,35,51,63,80,18,12],
[43,69,41,91,82,73,38,8,15,100,23,24,68,84,12,48,71,72,34,25,97,67,96,39,26,20,6,99,22,77,56,98,44,76,65,94,80,78,5,60,14,7,29,9,79,58,89,11,10,28,62,87,19,93,75,92,37,64,88,86,42,30,4,35,45,63,36,70,16,33,27,21,51,17,3,54,55,32,57,74,83,1,50,18,66,49,31,95,90,81,52,61,47,85,2,53,46,40,59,13],
[85,67,84,71,91,97,98,15,35,64,24,48,40,58,29,75,13,23,51,52,36,37,47,96,53,76,89,90,83,11,45,10,44,59,54,78,99,50,100,68,27,92,26,66,60,69,1,63,12,86,49,39,93,21,80,32,82,79,57,34,43,17,25,30,77,6,2,3,70,46,41,88,62,73,87,4,72,28,95,22,5,38,33,55,8,20,94,74,65,42,14,31,19,18,56,81,16,7,9,61],
[2,58,100,63,1,38,76,70,82,21,12,85,42,7,66,81,19,51,92,88,40,54,33,45,30,69,27,28,73,16,8,22,83,52,20,35,86,11,72,36,75,61,80,55,64,68,71,47,93,97,77,48,44,59,31,10,34,57,56,53,87,46,9,60,14,26,23,41,4,32,94,74,17,39,99,90,84,49,62,50,91,5,15,95,96,24,78,67,13,18,37,65,6,43,3,25,79,98,89,29],
[66,64,27,21,56,58,99,24,12,8,30,89,62,72,69,5,94,9,29,82,70,60,78,81,52,28,96,57,42,68,48,61,37,74,34,22,85,38,93,83,2,11,87,90,98,3,14,73,100,97,95,43,18,26,67,51,16,47,63,76,45,79,13,17,53,6,46,35,50,92,40,10,20,15,23,31,33,55,88,65,32,84,1,19,91,44,49,7,25,41,39,71,4,80,54,36,59,75,77,86],
[43,92,38,61,12,94,65,17,64,13,58,45,54,99,15,75,73,88,8,5,42,28,67,30,11,59,9,84,46,49,98,56,34,87,41,44,31,66,69,78,97,95,1,63,90,79,22,68,52,16,3,26,74,27,32,57,77,40,35,89,2,33,48,29,55,25,82,20,7,36,96,37,10,91,93,21,60,100,19,81,23,51,14,18,85,72,50,39,71,47,62,4,6,86,70,53,76,80,83,24],
[45,40,99,76,12,88,4,23,65,86,8,58,7,32,36,43,18,53,62,2,83,24,51,46,64,14,10,59,97,27,66,47,6,61,17,78,19,63,50,44,92,33,39,85,37,70,3,80,98,9,60,11,57,56,91,90,71,34,16,94,5,84,20,30,15,87,31,48,21,95,13,22,68,75,100,72,25,26,35,69,96,74,79,93,49,1,55,54,38,42,73,89,52,81,82,41,67,28,77,29],
[2,43,52,65,96,33,5,53,62,88,31,77,4,45,83,18,12,13,97,91,81,49,55,70,39,48,16,89,94,99,6,27,25,82,80,72,66,34,41,37,44,86,54,59,47,75,79,71,19,26,11,92,60,14,57,85,69,24,78,30,90,67,15,46,17,74,95,68,50,23,1,9,73,32,56,87,8,10,35,42,36,20,7,64,100,40,58,38,28,93,76,21,98,3,51,84,29,63,61,22],
[73,42,15,24,91,69,74,10,6,67,8,81,98,45,80,12,19,48,17,11,93,59,52,53,72,49,82,14,31,27,43,79,54,4,84,38,34,30,99,46,7,63,71,5,28,90,21,1,51,39,36,62,77,78,9,56,50,76,68,32,94,20,85,26,44,41,3,65,64,83,88,35,92,22,57,89,75,25,100,37,29,33,97,23,60,61,66,47,18,58,87,40,16,96,2,95,55,70,86,13],
[80,8,41,11,26,92,57,63,31,46,67,76,39,5,84,20,58,47,14,98,36,21,74,49,51,68,72,65,64,56,45,54,2,3,69,13,78,43,53,18,6,48,29,85,83,97,52,1,81,35,66,37,88,89,19,12,55,33,25,38,71,61,96,62,75,4,77,32,86,15,44,42,60,99,59,70,7,100,93,94,87,9,73,50,27,91,34,79,95,22,40,24,82,28,90,10,30,17,23,16],
[84,33,72,71,61,69,60,75,59,82,90,22,30,41,88,21,43,68,70,81,8,10,25,76,4,6,79,78,64,62,28,55,65,50,15,91,98,2,48,93,52,92,47,37,19,40,99,86,87,97,57,80,32,36,54,14,51,66,38,49,95,100,94,23,11,42,7,53,96,3,58,5,18,73,45,1,20,34,67,39,31,46,13,12,56,17,24,63,29,44,35,85,89,26,74,16,27,83,9,77],
[49,16,2,7,71,98,24,65,54,12,68,77,79,96,5,14,13,91,31,95,8,25,1,69,81,52,57,15,59,93,89,60,47,23,45,99,9,100,75,34,55,63,76,11,73,17,44,27,33,20,87,70,56,88,80,86,66,41,97,64,51,72,10,90,62,39,30,37,46,78,85,32,35,21,43,36,53,83,4,42,94,29,61,74,6,92,28,58,22,18,26,19,82,84,38,67,50,48,3,40],
[59,56,68,43,32,22,66,63,28,57,41,45,55,44,82,99,48,61,40,50,13,53,24,52,14,74,78,100,71,31,12,21,75,42,92,37,20,76,49,34,46,83,33,86,65,8,95,69,77,72,73,18,98,91,62,39,29,35,10,17,89,23,5,70,3,81,2,58,4,6,9,51,36,93,96,94,47,64,30,7,19,11,25,80,1,60,87,67,54,84,15,16,88,85,79,90,97,27,26,38],
[7,8,36,69,73,53,14,39,74,32,25,60,33,99,57,80,47,68,91,9,55,24,5,77,87,62,59,84,15,67,34,21,10,2,11,56,54,88,26,58,41,79,83,76,31,27,42,66,28,38,18,96,61,37,23,4,6,52,49,92,1,63,40,48,65,86,13,12,89,98,94,3,43,90,20,70,100,85,51,45,19,46,95,93,22,81,82,50,35,75,97,17,44,29,72,71,30,64,78,16],
[38,14,29,52,66,26,32,79,59,86,76,22,53,75,100,73,31,74,20,13,28,10,9,21,12,64,82,94,6,42,48,43,47,34,77,11,40,25,89,56,18,63,35,2,58,65,72,95,57,4,84,46,62,23,44,49,17,5,71,80,88,1,87,55,99,78,92,33,39,36,51,16,81,68,85,61,3,91,83,27,30,69,8,93,15,98,7,97,70,50,54,37,67,45,24,60,96,41,19,90],
[19,63,77,70,33,73,30,86,42,9,72,66,34,71,11,7,16,39,43,60,53,21,78,80,92,87,82,100,29,3,5,95,47,57,32,12,13,85,83,38,51,18,10,69,40,68,1,49,41,90,25,44,27,28,61,56,75,46,89,81,64,62,31,48,99,23,45,4,17,15,2,35,79,37,91,26,96,50,76,55,97,74,58,84,67,6,94,36,22,14,65,98,8,59,24,52,20,54,93,88],
[63,69,41,37,90,81,18,100,7,91,1,31,53,19,27,28,87,13,21,32,16,59,77,23,68,93,85,55,99,64,47,52,46,45,92,97,44,58,5,40,15,14,35,62,9,12,79,78,2,42,30,73,39,65,29,94,57,4,96,70,20,75,66,95,34,24,76,72,82,71,11,17,38,51,48,80,56,3,8,36,10,26,84,67,33,86,89,60,22,25,49,43,88,98,83,6,50,74,54,61],
[87,67,74,16,63,19,25,49,78,38,93,5,12,6,42,86,17,40,59,66,26,62,1,50,91,82,73,70,37,31,75,15,43,72,84,97,23,34,39,22,54,35,10,32,95,65,3,8,58,28,85,52,47,53,7,18,41,27,46,56,48,79,57,88,99,30,90,9,64,80,45,24,83,55,20,13,92,77,81,96,33,61,4,11,36,51,69,68,98,44,100,89,2,94,14,29,76,71,60,21],
[57,1,92,78,46,77,58,33,83,98,97,31,3,35,5,40,2,86,51,72,41,17,95,96,94,26,32,45,9,82,70,55,38,39,100,44,71,36,65,73,18,81,20,14,29,23,15,52,88,43,6,59,69,13,75,42,90,84,24,37,67,79,85,8,87,50,56,76,4,53,27,62,19,47,34,68,89,16,30,60,7,11,66,80,21,25,28,22,74,64,61,48,10,12,91,49,93,99,63,54],
[78,85,6,99,59,74,46,98,29,61,18,15,69,35,30,53,17,65,72,7,64,42,10,34,91,51,40,67,56,96,37,45,68,97,47,57,76,31,77,28,66,13,33,73,38,49,43,58,92,21,88,24,55,32,82,26,27,84,2,12,93,3,11,60,87,94,16,41,52,80,22,75,50,89,25,86,1,19,14,62,23,20,100,44,36,39,79,48,5,63,70,4,83,8,71,9,81,90,54,95]].
:- initialization(go).
%-------------------------------------------------------- 220 hakank_swi_steiner
/*

  Steiner triplets in SWI Prolog

  http://www.probp.com/examples/clpset/steiner.pl
  """
  The ternary Steiner problem of order n is to find n(n-1)/6 sets of elements 
  in {1,2,...,n} such that each set contains three elements and any two 
  sets have at most one element in common.

  For example, the following shows a solution for size n=7:

      {1,2,3}, {1,4,5}, {1,6,7}, {2,4,6}, {2,5,7}, {3,4,7}, {3,5,6}

  Problem taken from:
  C. Gervet: Interval Propagation to Reason about Sets: Definition and 
             Implementation of a PracticalLanguage,  
             Constraints, An International Journal, vol.1, pp.191-246, 1997.
  """


  Note: This model uses arrays of booleans as an representation of sets.

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


%%
%% Steiner(7)
%% - with symmetry breaking (ordering of the sets): 30 solutions.
%% - w/o symmetry breaking (ordering): 64800 solutions
%% 
go :-
        %% The possible number of Steiner triplets
        findall(I,
                (between(1,40,I),
                 I mod 6 #= 1 #\/ I mod 6 #= 3
                ),
                AllowedN),
        writeln(allowedN=AllowedN),
        
        %% Here we test steiner(7)
        N = 7,
        writeln(n=N),
        steiner(N,Steiner),
        writeln(Steiner),nl,
        nl,
        % fail,
        nl.

go.


%%
%% Check first solution for N in 3..25
%%
%%
go2 :-
        between(3,25,N),
        Mod #= N mod 6,
        (Mod #= 1; Mod #= 3),
        writeln(n=N),
        (
         time(once(steiner(N,Steiner))),
         nonvar(Steiner)
        ->
         writeln(steiner=Steiner)
        ;
         true
        ),
        nl,
        fail,
        nl.

go2.


%%
%% Number of solutions for N=7: 64800 solutions
%%
%% % 5,402,538,263 inferences, 310.726 CPU in 310.726 seconds (100% CPU, 17386822 Lips)
%%
go3 :-
        N = 7,
        time(findall(_, steiner(N,_Steiner),L)),
        length(L,Len),
        format("For N=7: ~w solutions~n",[Len]),
        nl.


%%
%% steiner(N,Steiner)
%%
steiner(N,Steiner) :-
         Mod #= N mod 6,
         (
          \+ (Mod == 1; Mod == 3)
         ->
          writeln("N must be (1|3) modulo 6"),     
          fail
         ;
          true
         ),
         
         %% number of sets
         Nb #= (N * (N-1)) // 6,
         
         new_matrix(Nb,N,0..1, Sets),
         flatten(Sets,SetsList),

         %% symmetry breaking
         matrix_element(Sets,1,1,1),

         %% any two sets can have atmost 1 element in common
         numlist(1,Nb,Is),
         maplist(atmost_1_in_common(Sets),Sets,Is),
         
         writeln(search),
         labeling([max,down,bisect],SetsList),

         findall(Ks,
                 (member(S,Sets),
                  findall(K,
                          (between(1,N,K),
                           nth1(K,S,1)
                          ),
                          Ks
                         )
                 ),
                 Steiner
                ).



%%
%% atmost 1 element in common
%%
atmost_1_in_common(Sets,SetI,I) :-
        sum(SetI,#=,3),
        (I #> 1
        ->
         I1 #= I-1,
         numlist(1,I1,Js),
         maplist(atmost_1_in_common_(SetI,Sets),Js)
        ;
         true
        ).
atmost_1_in_common_(SetI,Sets,J) :-
        nth1(J,Sets,SetJ),
        Common in 0..1,
        sum_union(SetI,SetJ,0,Common).

sum_union([],[],CardCommon,CardCommon).
sum_union([S1|S1s],[S2|S2s],CardCommon0,CardCommon) :-
        B in 0..1,        
        S1 + S2 #= 2 #<==> B #= 1,
        CardCommon1 #= CardCommon0 + B,
        sum_union(S1s,S2s,CardCommon1,CardCommon).        
:- initialization(go).
%------------------------------------------------------- 221 hakank_swi_strimko2
/*

  Strimko puzzle in SWI Prolog

  From 
  360: A New Twist on Latin Squares
  http://threesixty360.wordpress.com/2009/08/04/a-new-twist-on-latin-squares/
  """
  The idea is simple: each row and column of an nxn grid must contain 
  the number 1, 2, ... n exactly once (that is, the grid must form a 
  Latin square), and each "stream" (connected path in the grid) must 
  also contain the numbers 1, 2, ..., n exactly once.
  """
 
  For more information, see:
  * http://www.strimko.com/
  * http://www.strimko.com/rules.htm
  * http://www.strimko.com/about.htm
  * http://www.puzzlersparadise.com/Strimko.htm

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        strimko(2).

go2 :-
        Problems = [2,67,68,69,70],
        member(P,Problems),
        strimko(P),
        fail,
        nl.

go2.


strimko(P) :-
        format("\nProblem ~w\n",P),
        problem(P,Streams,Placed),

        length(Streams,N),
        writeln(n=N),
        new_matrix(N,N,1..N,X),
        flatten(X,Vars),
        
        % is a latin square
        latin_square(X),

        % streams
        % To simplify it, both X and Streams are flattened.
        flatten(Streams,StreamsFlatten),
        numlist(1,N,Ss),
        maplist(streams(Vars,StreamsFlatten), Ss),

        % placed numbers
        maplist(placed(X),Placed),
        
        labeling([ff,bisect],Vars),
        pretty_print(X),
        nl.

streams(X,Streams,S) :-
        length(X,Len),
        findall(I,(between(1,Len,I),
                   element(I,Streams,S)
                  ),Is),
        extract_from_indices(Is,X,XI),
        all_different(XI).
        
placed(X, [P1,P2,P3]) :-
        matrix_element(X,P1,P2,P3).
               

pretty_print(X) :-
        maplist(writeln,X).



%
% Strimko Monthly #02
% Via http://www.hakank.org/minizinc/strimko2_002.dzn
problem(2,Streams, Placed) :-
        Streams = [[1,1,2,2,2,2,2],
                   [1,1,2,3,3,3,2],
                   [1,4,1,3,3,5,5],
                   [4,4,3,1,3,5,5],
                   [4,6,6,6,7,7,5],
                   [6,4,6,4,5,5,7],
                   [6,6,4,7,7,7,7]],
        Placed =  [[2,1,1],
                   [2,3,7],
                   [2,5,6],
                   [2,7,4],
                   [3,2,7],
                   [3,6,1],
                   [4,1,4],
                   [4,7,5],
                   [5,2,2],
                   [5,6,6]].

% 
% Strimko Weekly Set 067
% Via http://www.hakank.org/minizinc/strimko2_067.dzn
problem(67,Streams, Placed) :-
        Streams =  [[1,1,1,2,3],
                    [1,2,2,2,3],
                    [1,2,4,5,3],
                    [5,4,5,4,3],
                    [4,5,5,4,3
                    ]],
        Placed =  [[1,3,4],
                   [1,4,1],
                   [3,3,2],
                   [3,5,3],
                   [5,4,5]].

%
% Strimko Weekly Set 068
% Via http://www.hakank.org/minizinc/strimko2_068.dzn
problem(68,Streams,Placed) :-
        Streams = [[1,2,2,4],
                   [2,1,4,2],
                   [3,4,1,3],
                   [4,3,3,1]],
        Placed =  [[2,2,3],
                   [2,3,2],
                   [3,3,1]].


% Strimko Weekly Set 069
% Via http://www.hakank.org/minizinc/strimko2_069.dzn
problem(69,Streams,Placed) :-
        Streams = [[1,2,3,3,3,4],
                   [2,1,3,5,4,3],
                   [2,1,3,5,5,4],
                   [2,6,1,6,5,4],
                   [2,6,1,6,4,5],
                   [6,2,6,1,5,4]],
        Placed =  [[2,2,4],
                   [2,3,1],
                   [2,4,3],
                   [2,5,2],
                   [3,2,1],
                   [3,5,6],
                   [4,3,5],
                   [4,4,2]].

% Strimko Weekly Set 070
% Via http://www.hakank.org/minizinc/strimko2_070.dzn
problem(70,Streams,Placed) :-
        Streams =  [[1,2,3,3,3],
                    [2,1,1,3,1],
                    [2,2,3,1,4],
                    [5,2,5,4,4],
                    [5,5,5,4,4]],
        Placed =   [[1,1,1],
                    [2,5,4],
                    [4,1,2],
                    [5,4,5]].
:- initialization(go).
%------------------------------------------------- 222 hakank_swi_stuckey_seesaw
/*

  Seesaw problem in SWI Prolog

  Marriott & Stuckey "Programming with Constraints", page 257.
 
  Balancing on a seesaw.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

% direct modeling
go :-

        LS = [Liz,Fi,Sara],
        LS ins -5..5,

        9 * Liz + 8 * Fi + 4 * Sara #= 0,
        apart(Liz, Fi, 3),
        apart(Liz, Sara, 3),
        apart(Sara, Fi, 3),

        %% symmetry breaking
        Sara #>= 0,
        labeling([], LS),

        writeln([liz=Liz,fi=Fi,sara=Sara]),
        nl.

%%
%% Page 258 suggests cumulative instead of apart.
%%
go2 :-
        LS = [Liz,Fi,Sara],
        LS  ins -5..5,

        9 * Liz + 8 * Fi + 4 * Sara #= 0,
        %% symmetry breaking
        Sara #>= 0,

        
        %% LD = [3,3,3],
        %%LR = [1,1,1],
        %%Limit = 1,
        Tasks = [task(Liz, 3, _, 1, 1),
                 task(Fi, 3, _, 1, 2),
                 task(Sara, 3, _, 1, 3)
                ],

        cumulative(Tasks, [limit(1)]),

        label(LS),

        write([liz=Liz,fi=Fi,sara=Sara]),
        nl,nl.


apart(X, Y, N) :-
   (X #>= Y + N) #\/ (Y #>= X + N).

:- initialization(go).
%----------------------------------------------------- 223 hakank_swi_subset_sum
/*

  Subset sum problem in SWI Prolog

  From Katta G. Murty: "Optimization Models for Decision Making", page 340
  http://ioe.engin.umich.edu/people/fac/books/murty/opti_model/junior-7.pdf
  
  """
  Example 7.8.1
  
  A bank van had several bags of coins, each containing either
  16, 17, 23, 24, 39, or 40 coins. While the van was parked on the
  street, thieves stole some bags. A total of 100 coins were lost.
  It is required to find how many bags were stolen.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :- 

    N = 6,
    Total = 100,
    Coins = [16, 17, 23, 24, 39, 40],
    length(Coins,Len),

    %% How many of each coin where stolen?
    length(X,Len), 
    X ins 0..N,

    scalar_product(Coins, X, #=, Total),
    sum(X,#=,NumStolen), %% total number of bags stolen

    label(X),

    writeln(coins=Coins),
    writeln(total=Total),
    writeln(x=X),
    writeln(num_stolen=NumStolen),
    findall(C,
            (between(1,N,I),element(I,X,XI), XI #> 0,element(I,Coins,C)),
            Stolen),
    format("Stolen coin bags: ~w~n", [Stolen]),
    nl.

:- initialization(go).
%---------------------------------------------------- 224 hakank_swi_subset_sum2
/*

  Subset sum problem in SWI Prolog

  From https://stackoverflow.com/questions/18432759/subset-sum-for-large-sums
  Subset sum for large sums
  """
  I am trying to solve a subset sum problem with a modest number of elements but a very
  large target sum. The number of elements is too large for the exponential time algorithm
  (and shortcut method) and the target sum is too large for the usual dynamic programming method.
  """

  SWI-Prolog clpfd module can handle arbitrary large integers, so here we test a
  simple clpfd subset sum mpdel.
  

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


%%
%% The smaller problem: 0.75s
%%
%% x=[1,1,1,0,1,0,0,0,0,1,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1]
%% sum([2316931787588303659213440000,1303274130518420808307560000,834095443531789317316838400,425558899761116998631040000,144808236724268978700840000,92677271503532146368537600,52130965220736832332302400,26597431235069812414440000,17022355990444679945241600]) = 5213096522073683233230240000
%%
%% % 7,966,953 inferences, 0.752 CPU in 0.752 seconds (100% CPU, 10593532 Lips)

go :- 

        Target = 5213096522073683233230240000,
        A1 = [2316931787588303659213440000,
              1303274130518420808307560000,
              834095443531789317316838400,
              579232946897075914803360000,
              425558899761116998631040000,
              325818532629605202076890000,
              257436865287589295468160000,
              208523860882947329329209600,
              172333769324749858949760000,
              144808236724268978700840000,
              123386899930738064691840000,
              106389724940279249657760000,
              92677271503532146368537600,
              81454633157401300519222500,
              72153585080604612224640000,
              64359216321897323867040000,
              57762842349846905631360000,
              52130965220736832332302400,
              47284322195679666514560000,
              43083442331187464737440000,
              39418499221729173786240000,
              36202059181067244675210000,
              33363817741271572692673536,
              30846724982684516172960000,
              28604096143065477274240000,
              26597431235069812414440000,
              24794751591313594450560000,
              23169317875883036592134400,
              21698632766175580575360000,
              20363658289350325129805625,
              19148196591638873216640000,
              18038396270151153056160000,
              17022355990444679945241600],

        %% Sorting (reverse) might help a bit.
        sort(0,@>=,A1,A),
        
        length(A,Len),
        length(X,Len),
        X ins 0..1,

        scalar_product(A,X,#=,Target),

        labeling([down],X),
        writeln(x=X),
        findall(M,
                (between(1,Len,I),
                 element(I,X,1),
                 nth1(I,A,M)
                ),
                Sol
               ),
        format("sum(~w) = ~w~n",[Sol,Target]),
        nl.

%%
%% The larger problem: Long time...
%%
go2 :- 
        Target = 262988806539946324131984661067039976436265064677212251086885351040000,
        A1 = [116883914017753921836437627140906656193895584300983222705282378240000,
             65747201634986581032996165266759994109066266169303062771721337760000,
             42078209046391411861117545770726396229802410348353960173901656166400,
             29220978504438480459109406785226664048473896075245805676320594560000,
             21468474003260924418937523352411426647858372626711204170357987840000,
             16436800408746645258249041316689998527266566542325765692930334440000,
             12987101557528213537381958571211850688210620477887024745031375360000,
             10519552261597852965279386442681599057450602587088490043475414041600,
             8693844844295746252297013588993057072273225278585528961549928960000,
             7305244626109620114777351696306666012118474018811451419080148640000,
             6224587137040149683597270084426981690799173128454727836375984640000,
             5367118500815231104734380838102856661964593156677801042589496960000,
             4675356560710156873457505085636266247755823372039328908211295129600,
             4109200102186661314562260329172499631816641635581441423232583610000,
             3639983481521748430892521260443459881470796742937193786669693440000,
             3246775389382053384345489642802962672052655119471756186257843840000,
             2914003396564502206448583502127866774917064428556368433095682560000,
             2629888065399463241319846610670399764362650646772122510868853510400,
             2385386000362324935437502594712380738650930291856800463373109760000,
             2173461211073936563074253397248264268068306319646382240387482240000,
             1988573206351200938616141104476672789688204647842814753019927040000,
             1826311156527405028694337924076666503029618504702862854770037160000,
             1683128361855656474444701830829055849192096413934158406956066246656,
             1556146784260037420899317521106745422699793282113681959093996160000,
             1443011284169801504153550952356872298690068941987447193892375040000,
             1341779625203807776183595209525714165491148289169450260647374240000,
             1250838556670374906691960338012080744048823137584838292922165760000,
             1168839140177539218364376271409066561938955843009832227052823782400,
             1094646437211014876720019400903392201607763016346356924399106560000,
             1027300025546665328640565082293124907954160408895360355808145902500,
             965982760477305139144112620999228563585913919842836551283325440000,
             909995870380437107723130315110864970367699185734298446667423360000,
             858738960130436976757500934096457065914334905068448166814319513600,
             811693847345513346086372410700740668013163779867939046564460960000,
             768411414287644482489363509326632509674989232073666182868912640000,
             728500849141125551612145875531966693729266107139092108273920640000,
             691620793004461075955252231602997965644352569828303092930664960000,
             657472016349865810329961652667599941090662661693030627717213377600,
             625791330255672395317036671188673352614551016483550865168079360000,
             596346500090581233859375648678095184662732572964200115843277440000,
             568931977371436071675467087219123799753953628290345594563299840000,
             543365302768484140768563349312066067017076579911595560096870560000,
             519484062301128541495278342848474027528424819115480989801255014400,
             497143301587800234654035276119168197422051161960703688254981760000,
             476213321032044045508347054897310957784092466595223632570186240000,
             456577789131851257173584481019166625757404626175715713692509290000,
             438132122515529069774235170457376054037925971973698044293020160000,
             420782090463914118611175457707263962298024103483539601739016561664,
             404442609057972047876946806715939986830088526993021531852188160000,
             389036696065009355224829380276686355674948320528420489773499040000,
             374494562534633427030238036407319297168052779889230688624970240000,
             360752821042450376038387738089218074672517235496861798473093760000,
             347753793771829850091880543559722282890929011143421158461997158400,
             335444906300951944045898802381428541372787072292362565161843560000,
             323778155173833578494287055791985197213007158728485381455075840000,
             312709639167593726672990084503020186012205784396209573230541440000,
             302199145693704480473409550206308504954053507241841138853071360000,
             292209785044384804591094067852266640484738960752458056763205945600,
             282707666261699891568916593460940582033071824431295083135592960000,
             273661609302753719180004850225848050401940754086589231099776640000,
             265042888929147215048611399412486748738992254650755607041456640000,
             256825006386666332160141270573281226988540102223840088952036475625,
             248983485481605987343890803377079267631966925138189113455039385600,
             241495690119326284786028155249807140896478479960709137820831360000,
             234340660761814501342824380545368657996226388663143017230461440000,
             227498967595109276930782578777716242591924796433574611666855840000,
             220952578483466770957349011608519198854244960871423861446658560000,
             214684740032609244189375233524114266478583726267112041703579878400,
             208679870295533683104133831435857945991878646837700655494453760000,
             202923461836378336521593102675185167003290944966984761641115240000,
             197401994025105141026072179446079922264038329650750423033879040000,
             192102853571911120622340877331658127418747308018416545717228160000,
             187014262428406274938300203425450649910232934881573156328451805184,
             182125212285281387903036468882991673432316526784773027068480160000,
             177425404985627474536673746714144021883127046501745489011223040000,
             172905198251115268988813057900749491411088142457075773232666240000,
             168555556186474170249629649778586749838977769381324948621621760000,
             164368004087466452582490413166899985272665665423257656929303344400],
        sort(0,@>=,A1,A),
        length(A,Len),
        length(X,Len),
        X ins 0..1,

        scalar_product(A,X,#=,Target),

        labeling([down],X),
        writeln(X),
        

        nl.

                 
:- initialization(go).
%--------------------------------------------------------- 225 hakank_swi_sudoku
/*

  Sudoku in SWI Prolog

  Some of the problem instances (and some ideas) are from:
  
  ECLiPSe's Sudoku model: 
       http://eclipseclp.org/examples/sudoku.ecl.txt
  
  Other examples from:
  - Gecode Sudoku model
  - SICStus Sudoku model
  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(library(readutil)).
:- use_module(hakank_utils).


%%
%% Solve the first problem.
%% Ensure unicity with findall/3.
%%
go :- 
        time(findall(_, sudoku(p1),_)),
        nl.


%%
%% Solve the hardest problem (#13)
%%
go2 :-
        between(1,15,P),
        atom_concat(p,P,Problem),
        writeln(problem=Problem),
        time(sudoku(Problem)),
        nl,
        fail,
        nl.

go2.

%%
%% Problem 13 is the hardest problem.
%% We benchmark this problem to get the fastest labelings.
%%
%% It seems that (ff|ffc + up + step|enum) are the best choices.
%%
% [leftmost,up,step], Time: 1.466181s
% [leftmost,up,enum], Time: 1.434018s
% [leftmost,up,bisect], Time: 1.491451s
% [leftmost,down,step], Time: 0.172750s
% [leftmost,down,enum], Time: 0.165210s
% [leftmost,down,bisect], Time: 0.171285s
% [ff,up,step], Time: 0.082918s <--
% [ff,up,enum], Time: 0.083588s <--
% [ff,up,bisect], Time: 0.083105s
% [ff,down,step], Time: 0.215247s
% [ff,down,enum], Time: 0.214360s
% [ff,down,bisect], Time: 0.216822s
% [ffc,up,step], Time: 0.083776s  <--
% [ffc,up,enum], Time: 0.083808s  <--
% [ffc,up,bisect], Time: 0.083925s
% [ffc,down,step], Time: 0.221777s
% [ffc,down,enum], Time: 0.219717s
% [ffc,down,bisect], Time: 0.222002s
% [min,up,step], Time: 0.903215s
% [min,up,enum], Time: 0.918933s
% [min,up,bisect], Time: 1.050274s
% [min,down,step], Time: 2.439207s
% [min,down,enum], Time: 2.180898s
% [min,down,bisect], Time: 1.944945s
% [max,up,step], Time: 0.428134s
% [max,up,enum], Time: 0.400883s
% [max,up,bisect], Time: 1.239747s
% [max,down,step], Time: 0.547487s
% [max,down,enum], Time: 1.416076s
% [max,down,bisect], Time: 0.909731s
%
go3 :-
        VarSelect = [leftmost,ff,ffc,min,max],
        ValSelect = [up,down],
        BranchSelect = [step,enum,bisect],
        member(Var,VarSelect),
        member(Val,ValSelect),
        member(Branch, BranchSelect),
        Label = [Var,Val,Branch],
        problem(p13,X),
        time2(sudoku_with_label(3,X,Label),Time),
        format("~w, Time: ~fs~n", [Label, Time]),
        fail,
        nl.

go3.



%%
%% Solving Norvig's 95 Sudoku's
%% http://norvig.com/top95.txt
%%
%% It takes about 9.7s to solve all 95 Sudokus.
%%
go4 :-
        File = 'top95.txt',        
        read_file_to_string(File,Str,[]),
        split_string(Str,"\n", "",Lines),
        %% First line
        %% X = "4.....8.5.3..........7......2.....6.....8.4......1.......6.3.7.5..2.....1.4......",
        length(Lines, NumProblems),
        writeln(numProblems=NumProblems),
        member(Line,Lines),
        string_chars(Line,Chars),
        %% Slice and convert the string line into a Sudoku instance (9 x 9 matrix).
        findall(T,
                (
                 between(0,8,I),
                 Start #= 1+I*9-1,
                 End #= 9+I*9-1,
                 slice(Chars, Start,End, S),
                 convert_chars(S,[],T)
                 ),
                Board
               ),
        print_board(Board),
        time2(sudoku(3,Board),Time),
        print_board(Board),
        format("Time ~f~n", [Time]),
        nl,
        fail,
        nl.

go4. 

%%
%% 6 problems from SICStus Prolog.
%%
go5 :-
        writeln("6 SICStus Problems"),
        between(1,6,P),
        atom_concat(sicstus,P,Problem),
        writeln(problem=Problem),
        problem(Problem,X,Size),
        print_board(X),        
        sudoku(Size,X),
        print_board(X),
        fail,
        nl.

go5.
        

%%
%% The following are from Gecode.
%% Here we solve only size 9x9 and and 16x16.
%% All 73 instances are solved in 22.8s.
%% They are solved well within a second:
%%    9x9 instance: about 0.1s
%%  16x16 instances: about 0.3s-0.5s
%% 
%% (In go7 we test the harder 25x25 instances.)
%%
go6 :-
        writeln("Gecode's 9x9 and 16x16 Problems"),
        between(0,90,P),
        problem(P,X,Size),
        ( Size < 5
        ->
          writeln(problem=P),
          print_board(X),        
          time(sudoku(Size,X)),
          print_board(X)
        ;
          true
        ),
          
        fail,
        nl.

go6.

%%
%% Testing 25x25 problems.
%% These are quite hard so we add a timeout.
%%
%% Two instances are solved with a timeout of 10 minutes:
%%
%% problem=89
%%
%% % 6,350,119,034 inferences, 383.049 CPU in 383.047 seconds (100% CPU, 16577843 Lips)
%% 11 23 13 10 19 16 6 2 24 7 5 9 1 20 17 15 8 18 25 3 4 12 21 22 14 
%% 15 16 4 22 18 11 8 21 20 10 25 2 14 13 24 7 12 19 23 9 17 5 6 1 3 
%% 21 1 5 20 25 3 18 15 9 22 11 16 8 4 12 17 14 13 6 24 7 23 19 10 2 
%% 3 8 12 9 24 19 17 14 23 4 7 21 6 22 10 16 11 1 2 5 15 18 20 13 25 
%% 17 14 7 6 2 1 5 13 12 25 3 18 19 23 15 4 20 22 10 21 11 16 9 24 8 
%% 22 19 23 21 13 6 2 3 17 24 4 7 12 1 9 11 15 25 16 8 18 14 5 20 10 
%% 25 18 2 24 8 22 4 19 16 21 14 11 5 10 13 23 17 6 20 1 9 3 12 15 7 
%% 6 10 17 3 16 5 12 7 8 9 15 20 2 25 18 22 19 14 24 13 1 11 23 21 4 
%% 1 11 14 12 9 20 15 10 25 13 6 8 23 16 21 18 4 5 3 7 19 17 22 2 24 
%% 5 20 15 4 7 14 1 11 18 23 17 19 3 24 22 9 2 21 12 10 6 8 13 25 16 
%% 20 24 10 13 15 23 11 17 19 3 21 1 16 7 2 12 5 9 4 25 8 22 14 18 6 
%% 4 5 16 14 12 25 10 18 6 2 23 13 15 8 19 1 24 3 17 22 20 21 7 9 11 
%% 18 22 21 11 3 8 16 24 4 12 9 17 25 14 5 20 10 15 7 6 2 13 1 19 23 
%% 19 7 6 2 1 9 13 5 22 15 20 24 4 18 11 8 21 16 14 23 25 10 3 12 17 
%% 9 17 25 8 23 7 14 20 21 1 12 10 22 6 3 2 13 11 19 18 24 15 16 4 5 
%% 10 13 19 16 11 18 24 6 3 17 1 5 20 12 7 25 9 2 21 15 23 4 8 14 22 
%% 12 25 8 15 21 10 19 23 14 11 2 4 13 17 16 3 1 7 22 20 5 9 24 6 18 
%% 14 4 18 5 22 15 20 9 2 16 19 23 21 3 8 10 6 24 13 17 12 7 25 11 1 
%% 7 2 24 1 20 12 21 25 13 8 18 22 11 9 6 14 23 4 5 16 10 19 17 3 15 
%% 23 3 9 17 6 4 7 22 1 5 10 14 24 15 25 19 18 12 8 11 21 20 2 16 13 
%% 13 12 20 19 10 17 3 16 11 6 22 15 7 5 1 21 25 23 18 2 14 24 4 8 9 
%% 24 9 11 18 14 13 22 8 10 19 16 25 17 21 23 6 7 20 1 4 3 2 15 5 12 
%% 16 6 22 25 5 2 23 4 15 18 8 12 9 19 20 24 3 17 11 14 13 1 10 7 21 
%% 2 21 3 23 4 24 9 1 7 20 13 6 10 11 14 5 16 8 15 12 22 25 18 17 19 
%% 8 15 1 7 17 21 25 12 5 14 24 3 18 2 4 13 22 10 9 19 16 6 11 23 20 
%%
%%
%% Problem 90
%% % 6,351,179,056 inferences, 377.258 CPU in 377.256 seconds (100% CPU, 16835127 Lips)
%%
%% 11 23 13 10 19 16 6 2 24 7 5 9 1 20 17 15 8 18 25 3 4 12 21 22 14 
%% 15 16 4 22 18 11 8 21 20 10 25 2 14 13 24 7 12 19 23 9 17 5 6 1 3 
%% 21 1 5 20 25 3 18 15 9 22 11 16 8 4 12 17 14 13 6 24 7 23 19 10 2 
%% 3 8 12 9 24 19 17 14 23 4 7 21 6 22 10 16 11 1 2 5 15 18 20 13 25 
%% 17 14 7 6 2 1 5 13 12 25 3 18 19 23 15 4 20 22 10 21 11 16 9 24 8 
%% 22 19 23 21 13 6 2 3 17 24 4 7 12 1 9 11 15 25 16 8 18 14 5 20 10 
%% 25 18 2 24 8 22 4 19 16 21 14 11 5 10 13 23 17 6 20 1 9 3 12 15 7 
%% 6 10 17 3 16 5 12 7 8 9 15 20 2 25 18 22 19 14 24 13 1 11 23 21 4 
%% 1 11 14 12 9 20 15 10 25 13 6 8 23 16 21 18 4 5 3 7 19 17 22 2 24 
%% 5 20 15 4 7 14 1 11 18 23 17 19 3 24 22 9 2 21 12 10 6 8 13 25 16 
%% 20 24 10 13 15 23 11 17 19 3 21 1 16 7 2 12 5 9 4 25 8 22 14 18 6 
%% 4 5 16 14 12 25 10 18 6 2 23 13 15 8 19 1 24 3 17 22 20 21 7 9 11 
%% 18 22 21 11 3 8 16 24 4 12 9 17 25 14 5 20 10 15 7 6 2 13 1 19 23 
%% 19 7 6 2 1 9 13 5 22 15 20 24 4 18 11 8 21 16 14 23 25 10 3 12 17 
%% 9 17 25 8 23 7 14 20 21 1 12 10 22 6 3 2 13 11 19 18 24 15 16 4 5 
%% 10 13 19 16 11 18 24 6 3 17 1 5 20 12 7 25 9 2 21 15 23 4 8 14 22 
%% 12 25 8 15 21 10 19 23 14 11 2 4 13 17 16 3 1 7 22 20 5 9 24 6 18 
%% 14 4 18 5 22 15 20 9 2 16 19 23 21 3 8 10 6 24 13 17 12 7 25 11 1 
%% 7 2 24 1 20 12 21 25 13 8 18 22 11 9 6 14 23 4 5 16 10 19 17 3 15 
%% 23 3 9 17 6 4 7 22 1 5 10 14 24 15 25 19 18 12 8 11 21 20 2 16 13 
%% 13 12 20 19 10 17 3 16 11 6 22 15 7 5 1 21 25 23 18 2 14 24 4 8 9 
%% 24 9 11 18 14 13 22 8 10 19 16 25 17 21 23 6 7 20 1 4 3 2 15 5 12 
%% 16 6 22 25 5 2 23 4 15 18 8 12 9 19 20 24 3 17 11 14 13 1 10 7 21 
%% 2 21 3 23 4 24 9 1 7 20 13 6 10 11 14 5 16 8 15 12 22 25 18 17 19 
%% 8 15 1 7 17 21 25 12 5 14 24 3 18 2 4 13 22 10 9 19 16 6 11 23 20 
%% 
%%
go7 :-
        Timeout = 600, % seconds
        format("Gecode's 25x25 Problems (with timeout ~d)~n",[Timeout]),
        between(0,90,P),
        problem(P,X,Size),
        ( Size >= 5
        ->
          nl,
          writeln(problem=P),
          print_board(X),
          catch(call_with_time_limit(Timeout,
                                   time(sudoku(Size,X))
                                   ),
                time_limit_exceeded,
                Result = timeout),
          (Result == timeout
          ->
           writeln(timeout)
          ;
           print_board(X)
          )
        ;
          true
        ),
        fail,
        nl.

go7.

%%
%% Some misc problems
%%
go8 :-       
        problem(hardest_ever,X,Size),
        writeln(hardest_ever),
        print_board(X),        
        time(sudoku(Size,X)),
        print_board(X),
        fail,
        nl.

go8.


%%
%% Solve Sudoku problem P
%%
sudoku(P) :-
	problem(P, X),
	print_board(X),
	sudoku(3, X),
	print_board(X).

%%
%% sudoku(N, X)
%%
%% Solve a Sudoku for the board/matrix X with a cell size of N (3).
%%
sudoku(N, X) :-
        N2 #= N*N,
        
        flatten(X, Vars),
        Vars ins 1..N2,
        
        %% latin_square
        maplist(all_distinct, X),
        transpose(X,XT),
        maplist(all_distinct, XT),

        %% The cells
        findall([I,J], (between(1,N,N2,I),
                        between(1,N,N2,J)),
                IJs),
        cells(IJs,N, X),
        labeling([ffc,up,step], Vars).
        %% labeling([ffc,enum,down], Vars).


%%
%% With labeling (for go3/0).
%%
sudoku_with_label(N, X,Label) :-
        N2 #= N*N,
        
        flatten(X, Vars),
        Vars ins 1..N2,

        %% latin square
        maplist(all_distinct, X),
        transpose(X,XT),
        maplist(all_distinct, XT),

        %% The cells
        findall([I,J], (between(1,N,N2,I),
                        between(1,N,N2,J)),
                IJs),
        cells(IJs,N, X),
        
        labeling(Label, Vars).


cells([],_N, _X).
cells([[I,J]|IJs], N, X) :-
        N1 #= N-1,
        % Don't work.
        % findall(XIAJB, (
        %                 between(0,N1,A),
        %                 between(0,N1,B),
        %                 IA #= I+A, JB #= J+B,
        %                 matrix_element(X, IA, JB, XIAJB)),
        %         Cells),
        findall([IA,JB],
                (
                 between(0,N1,A),
                 between(0,N1,B),
                 IA #= I+A, JB #= J+B
                 ),
                Cells),
        cells_(Cells, X, [], Xs),
        all_distinct(Xs),
        cells(IJs, N, X).

cells_([], _X, Row, Row).
cells_([[I,J]|IJs], X, Row0, Row) :-
        matrix_element(X,I,J,XIJ),
        cells_(IJs, X, [XIJ|Row0], Row).
        


%%
%% Pretty print the matrix.
%%
print_board(X) :-
        maplist(print_board_element,X),
        nl.

print_board_element([]) :- nl.
print_board_element([E|Row]) :-
        (
         nonvar(E)
        ->
         write(E)
        ;
         write("_")
        ),
        write(" "),
        print_board_element(Row).


%%
%% Convert a line of "...4...81" to a board line [_,_,_,4._,_,8,1]
%%
%% For go4/0 (Norvig's Sudokus)
%%
convert_chars([],Chars,Chars).
convert_chars([C|Cs], Chars0,[T|Chars]) :-
         (C = '.'
         ->
          T = _
         ;
          atom_number(C,T)
         ),
         convert_chars(Cs,Chars0,Chars).




%----------------------------------------------------------------------
% Sample data
%----------------------------------------------------------------------

%% From http://eclipseclp.org/examples/sudoku.ecl.txt
problem(p1, Data) :- 
Data = [
    [_, _, 2, _, _, 5, _, 7, 9],
    [1, _, 5, _, _, 3, _, _, _],
    [_, _, _, _, _, _, 6, _, _],
    [_, 1, _, 4, _, _, 9, _, _],
    [_, 9, _, _, _, _, _, 8, _],
    [_, _, 4, _, _, 9, _, 1, _],
    [_, _, 9, _, _, _, _, _, _],
    [_, _, _, 1, _, _, 3, _, 6],
    [6, 8, _, 3, _, _, 4, _, _]].

problem(p2, Data) :- 
 Data = [
    [_, _, 3, _, _, 8, _, _, 6],
    [_, _, _, 4, 6, _, _, _, _],
    [_, _, _, 1, _, _, 5, 9, _],
    [_, 9, 8, _, _, _, 6, 4, _],
    [_, _, _, _, 7, _, _, _, _],
    [_, 1, 7, _, _, _, 9, 5, _],
    [_, 2, 4, _, _, 1, _, _, _],
    [_, _, _, _, 4, 6, _, _, _],
    [6, _, _, 5, _, _, 8, _, _]].

problem(p3, Data) :- 
Data = [
    [_, _, _, 9, _, _, _, _, _],
    [_, _, 7, _, 6, _, 5, _, _],
    [_, _, 3, 5, _, _, _, 7, 9],
    [4, _, 5, _, _, 9, _, _, 1],
    [8, _, _, _, _, _, _, _, 7],
    [1, _, _, 6, _, _, 9, _, 8],
    [6, 4, _, _, _, 8, 7, _, _],
    [_, _, 9, _, 1, _, 2, _, _],
    [_, _, _, _, _, 7, _, _, _]].

problem(p4, Data) :- 
Data = [
    [_, 5, _, _, _, 1, 4, _, _], 
    [2, _, 3, _, _, _, 7, _, _], 
    [_, 7, _, 3, _, _, 1, 8, 2], 
    [_, _, 4, _, 5, _, _, _, 7], 
    [_, _, _, 1, _, 3, _, _, _], 
    [8, _, _, _, 2, _, 6, _, _], 
    [1, 8, 5, _, _, 6, _, 9, _], 
    [_, _, 2, _, _, _, 8, _, 3], 
    [_, _, 6, 4, _, _, _, 7, _]].

% Problems 5-8 are harder, taken from
% http://www2.ic-net.or.jp/~takaken/auto/guest/bbs46.html
problem(p5, Data) :- Data = [
    [_, 9, 8, _, _, _, _, _, _],
    [_, _, _, _, 7, _, _, _, _],
    [_, _, _, _, 1, 5, _, _, _],
    [1, _, _, _, _, _, _, _, _],
    [_, _, _, 2, _, _, _, _, 9],
    [_, _, _, 9, _, 6, _, 8, 2],
    [_, _, _, _, _, _, _, 3, _],
    [5, _, 1, _, _, _, _, _, _],
    [_, _, _, 4, _, _, _, 2, _]].

problem(p6, Data) :- 
Data = [
    [_, _, 1, _, 2, _, 7, _, _],
    [_, 5, _, _, _, _, _, 9, _],
    [_, _, _, 4, _, _, _, _, _],
    [_, 8, _, _, _, 5, _, _, _],
    [_, 9, _, _, _, _, _, _, _],
    [_, _, _, _, 6, _, _, _, 2],
    [_, _, 2, _, _, _, _, _, _],
    [_, _, 6, _, _, _, _, _, 5],
    [_, _, _, _, _, 9, _, 8, 3]].

problem(p7, Data) :- 
Data = [
    [1, _, _, _, _, _, _, _, _],
    [_, _, 2, 7, 4, _, _, _, _],
    [_, _, _, 5, _, _, _, _, 4],
    [_, 3, _, _, _, _, _, _, _],
    [7, 5, _, _, _, _, _, _, _],
    [_, _, _, _, _, 9, 6, _, _],
    [_, 4, _, _, _, 6, _, _, _],
    [_, _, _, _, _, _, _, 7, 1],
    [_, _, _, _, _, 1, _, 3, _]].

problem(p8, Data) :- 
Data = [
    [1, _, 4, _, _, _, _, _, _],
    [_, _, 2, 7, 4, _, _, _, _],
    [_, _, _, 5, _, _, _, _, _],
    [_, 3, _, _, _, _, _, _, _],
    [7, 5, _, _, _, _, _, _, _],
    [_, _, _, _, _, 9, 6, _, _],
    [_, 4, _, _, _, 6, _, _, _],
    [_, _, _, _, _, _, _, 7, 1],
    [_, _, _, _, _, 1, _, 3, _]].


% BBC Focus magazine October 2005
problem(p9, Data) :- 
Data = [
    [_, 6, _, 3, 2, _, _, 7, _],
    [4, 7, _, _, _, _, _, 3, 2],
    [_, _, _, 9, _, _, 1, 4, 6],
    [2, 4, _, 8, _, _, _, _, _],
    [_, _, 8, _, _, _, 2, _, 1],
    [1, _, _, _, _, 2, _, _, _],
    [_, _, 2, 4, 7, 6, 8, _, _],
    [6, 8, 9, _, _, _, _, 5, 4],
    [_, _, _, _, 8, _, _, _, _]].

problem(p10, Data) :- 
Data = [
    [1, 8, 2, 7, 5, _, 3, _, 9],
    [9, 5, 6, _, 3, _, _, 8, _],
    [3, 4, 7, _, _, 9, _, 5, _],
    [2, _, 3, _, 4, _, _, 9, 8],
    [4, _, 8, 9, _, 2, 5, _, 3],
    [5, 7, 9, 3, 6, 8, 1, 2, 4],
    [_, 2, _, 4, 9, _, 8, 3, _],
    [_, 3, _, _, 2, _, 9, _, 5],
    [_, 9, _, _, _, 3, _, 1, _]].

/*
  These are from J:s sudoku.ijs
*/ 
% Roger Huis example
problem(p11,Data) :- 
Data = [
       [2,_,_,6,7,_,_,_,_],
       [_,_,6,_,_,_,2,_,1],
       [4,_,_,_,_,_,8,_,_],
       [5,_,_,_,_,9,3,_,_],
       [_,3,_,_,_,_,_,5,_],
       [_,_,2,8,_,_,_,_,7],
       [_,_,1,_,_,_,_,_,4],
       [7,_,8,_,_,_,6,_,_],
       [_,_,_,_,5,3,_,_,8]].


% This puzzle is the evil puzzle from
% Perl's Games::Sudoku examples
problem(p12, Data) :- 
Data = [
       [_,7,6,4,_,_,5,_,_],
       [_,_,_,_,_,5,_,_,4],
       [_,_,_,_,7,_,_,6,9],
       [5,_,_,_,_,2,_,9,_],
       [_,3,1,_,_,_,2,5,_],
       [_,6,_,5,_,_,_,_,1],
       [6,2,_,_,4,_,_,_,_],
       [8,_,_,3,_,_,_,_,_],
       [_,_,5,_,_,7,4,3,_]].



% From https://groups.google.com/d/topic/comp.lang.prolog/sTSzJMflBDw/discussion
problem(p13, Data) :- 
Data = [
       [_,_,_,_,_,_,_,1,2],
       [_,_,_,_,_,_,_,_,3],   
       [_,_,2,3,_,_,4,_,_],
       [_,_,1,8,_,_,_,_,5],
       [_,6,_,_,7,_,8,_,_],
       [_,_,_,_,_,9,_,_,_],
       [_,_,8,5,_,_,_,_,_],
       [9,_,_,_,4,_,5,_,_],
       [4,7,_,_,_,6,_,_,_]].

% First problem from Project Euler #96:
% http://projecteuler.net/problem=96
problem(p14,Data) :- 
Data = 
[
[_,_,3,_,2,_,6,_,_],
[9,_,_,3,_,5,_,_,1],
[_,_,1,8,_,6,4,_,_],
[_,_,8,1,_,2,9,_,_],
[7,_,_,_,_,_,_,_,8],
[_,_,6,7,_,8,2,_,_],
[_,_,2,6,_,9,5,_,_],
[8,_,_,2,_,3,_,_,9],
[_,_,5,_,1,_,3,_,_]
].


% http://blag.nullteilerfrei.de/2014/07/03/why-someone-thought-that-sudoku-might-not-be-boring-while-actually-you-should-learn-how-to-properly-implement-backtracking/
problem(p15, Data) :-
  Data =
 [
  [_, _, _, _, 6, _, _, 8, _],
  [_, 2, _, _, _, _, _, _, _],
  [_, _, 1, _, _, _, _, _, _],
  [_, 7, _, _, _, _, 1, _, 2],
  [5, _, _, _, 3, _, _, _, _],
  [_, _, _, _, _, _, 4, _, _],
  [_, _, 4, 2, _, 1, _, _, _],
  [3, _, _, 7, _, _, 6, _, _],
  [_, _, _, _, _, _, _, 5, _] 
].



%
% Note: These problems are from
% SICStus distribution ./library/clpfd/examples/suudoku.pl
%
% Note: Size is the cell size.
%
problem(sicstus1,P,3) :- % shokyuu
    P=[[1,_,_,8,_,4,_,_,_],
       [_,2,_,_,_,_,4,5,6],
       [_,_,3,2,_,5,_,_,_],
       [_,_,_,4,_,_,8,_,5],
       [7,8,9,_,5,_,_,_,_],
       [_,_,_,_,_,6,2,_,3],
       [8,_,1,_,_,_,7,_,_],
       [_,_,_,1,2,3,_,8,_],
       [2,_,5,_,_,_,_,_,9]].

problem(sicstus2,P,3) :-  % shokyuu
    P=[[_,_,2,_,3,_,1,_,_],
       [_,4,_,_,_,_,_,3,_],
       [1,_,5,_,_,_,_,8,2],
       [_,_,_,2,_,_,6,5,_],
       [9,_,_,_,8,7,_,_,3],
       [_,_,_,_,4,_,_,_,_],
       [8,_,_,_,7,_,_,_,4],
       [_,9,3,1,_,_,_,6,_],
       [_,_,7,_,6,_,5,_,_]].

problem(sicstus3,P,3) :-  % chuukyuu
    P=[[_,_,_,_,_,_,3,_,_],
       [_,_,_,8,5,_,_,1,_],
       [_,_,2,_,_,4,_,_,9],
       [_,3,_,_,_,2,_,_,4],
       [8,_,_,_,6,_,_,_,1],
       [7,_,_,9,_,_,_,5,_],
       [1,_,_,6,_,_,7,_,_],
       [_,9,_,_,2,3,_,_,_],
       [_,_,4,_,_,_,_,_,_]].

problem(sicstus4,P,3) :-  % joukyuu
    P=[[_,7,9,_,_,_,_,_,1],
       [6,_,_,_,_,_,3,8,_],
       [_,_,_,_,4,2,_,_,_],
       [_,_,3,9,_,_,_,_,_],
       [7,8,_,_,_,_,_,2,5],
       [_,_,_,_,_,4,8,_,_],
       [_,_,_,3,1,_,_,_,_],
       [_,5,6,_,_,_,_,_,7],
       [2,_,_,_,_,_,4,3,_]].

problem(sicstus5,P,3) :-  % shokyuu; from Mr. Horai
    P=[[_,5,_,7,_,1,_,4,_],
       [7,_,3,_,_,_,1,_,2],
       [_,8,_,4,_,6,_,9,_],
       [9,_,4,_,6,_,8,_,3],
       [_,_,_,8,_,7,_,_,_],
       [1,_,8,_,5,_,6,_,9],
       [_,1,_,6,_,3,_,8,_],
       [5,_,6,_,_,_,7,_,1],
       [_,3,_,5,_,9,_,2,_]].

problem(sicstus6,P,3) :- % Hard: suudoku2 99 (1989)
    P=[[8,_,_,_,_,5,_,_,_],
       [_,1,2,3,_,_,6,_,_],
       [_,4,5,6,_,_,_,2,_],
       [_,7,8,_,_,_,_,_,1],
       [_,_,_,_,9,_,_,_,_],
       [9,_,_,_,_,_,8,7,_],
       [_,2,_,_,_,6,5,4,_],
       [_,_,4,_,_,3,2,1,_],
       [_,_,_,1,_,_,_,_,9]].


% The following problems are from 
% Gecode's Sudoku model:
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Solving 9 x 9 and 16 x 16 puzzle is very fast, with mostly 
% 0 or 1 backtracks. 
% However the 25 x 25 problems are much slower.
% 

% 
% This problem is problem 0 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(0, P, 3) :-
 P = 
[
[ _, _, _, 2, _, 5, _, _, _],
[ _, 9, _, _, _, _, 7, 3, _],
[ _, _, 2, _, _, 9, _, 6, _],
[ 2, _, _, _, _, _, 4, _, 9],
[ _, _, _, _, 7, _, _, _, _],
[ 6, _, 9, _, _, _, _, _, 1],
[ _, 8, _, 4, _, _, 1, _, _],
[ _, 6, 3, _, _, _, _, 8, _],
[ _, _, _, 6, _, 8, _, _, _]].


% 
% This problem is problem 1 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(1,P,3) :-
 P = 
[
[ 3, _, _, 9, _, 4, _, _, 1],
[ _, _, 2, _, _, _, 4, _, _],
[ _, 6, 1, _, _, _, 7, 9, _],
[ 6, _, _, 2, 4, 7, _, _, 5],
[ _, _, _, _, _, _, _, _, _],
[ 2, _, _, 8, 3, 6, _, _, 4],
[ _, 4, 6, _, _, _, 2, 3, _],
[ _, _, 9, _, _, _, 6, _, _],
[ 5, _, _, 3, _, 9, _, _, 8]].


% 
% This problem is problem 2 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(2,P,3) :-
 P = 
[
[ _, _, _, _, 1, _, _, _, _],
[ 3, _, 1, 4, _, _, 8, 6, _],
[ 9, _, _, 5, _, _, 2, _, _],
[ 7, _, _, 1, 6, _, _, _, _],
[ _, 2, _, 8, _, 5, _, 1, _],
[ _, _, _, _, 9, 7, _, _, 4],
[ _, _, 3, _, _, 4, _, _, 6],
[ _, 4, 8, _, _, 6, 9, _, 7],
[ _, _, _, _, 8, _, _, _, _]].


% 
% This problem is problem 3 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(3,P,3) :-
 P = 
[
[ _, _, 4, _, _, 3, _, 7, _],
[ _, 8, _, _, 7, _, _, _, _],
[ _, 7, _, _, _, 8, 2, _, 5],
[ 4, _, _, _, _, _, 3, 1, _],
[ 9, _, _, _, _, _, _, _, 8],
[ _, 1, 5, _, _, _, _, _, 4],
[ 1, _, 6, 9, _, _, _, 3, _],
[ _, _, _, _, 2, _, _, 6, _],
[ _, 2, _, 4, _, _, 5, _, _]].


% 
% This problem is problem 4 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(4,P,3) :-
 P = 
[
[ _, 4, 3, _, 8, _, 2, 5, _],
[ 6, _, _, _, _, _, _, _, _],
[ _, _, _, _, _, 1, _, 9, 4],
[ 9, _, _, _, _, 4, _, 7, _],
[ _, _, _, 6, _, 8, _, _, _],
[ _, 1, _, 2, _, _, _, _, 3],
[ 8, 2, _, 5, _, _, _, _, _],
[ _, _, _, _, _, _, _, _, 5],
[ _, 3, 4, _, 9, _, 7, 1, _]].


% 
% This problem is problem 5 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(5,P,3) :-
 P = 
[
[ _, _, _, _, _, 3, _, 6, _],
[ _, _, _, _, _, _, _, 1, _],
[ _, 9, 7, 5, _, _, _, 8, _],
[ _, _, _, _, 9, _, 2, _, _],
[ _, _, 8, _, 7, _, 4, _, _],
[ _, _, 3, _, 6, _, _, _, _], 
[ _, 1, _, _, _, 2, 8, 9, _],
[ _, 4, _, _, _, _, _, _, _],
[ _, 5, _, 1, _, _, _, _, _]].


% 
% This problem is problem 6 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(6,P,3) :-
 P = 
[
[ 1, _, _, 9, _, 7, _, _, 3],
[ _, 8, _, _, _, _, _, 7, _],
[ _, _, 9, _, _, _, 6, _, _],
[ _, _, 7, 2, _, 9, 4, _, _],
[ 4, 1, _, _, _, _, _, 9, 5],
[ _, _, 8, 5, _, 4, 3, _, _],
[ _, _, 3, _, _, _, 7, _, _],
[ _, 5, _, _, _, _, _, 4, _],
[ 2, _, _, 8, _, 6, _, _, 9]].


% 
% This problem is problem 7 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(7,P,3) :-
 P = 
[
[ _, _, _, 3, _, 2, _, _, _],
[ _, 5, _, 7, 9, 8, _, 3, _],
[ _, _, 7, _, _, _, 8, _, _],
[ _, _, 8, 6, _, 7, 3, _, _],
[ _, 7, _, _, _, _, _, 6, _],
[ _, _, 3, 5, _, 4, 1, _, _],
[ _, _, 5, _, _, _, 6, _, _],
[ _, 2, _, 4, 1, 9, _, 5, _],
[ _, _, _, 8, _, 6, _, _, _]].


% 
% This problem is problem 8 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(8,P,3) :-
 P = 
[
[ _, _, _, 8, _, _, _, _, 6],
[ _, _, 1, 6, 2, _, 4, 3, _],
[ 4, _, _, _, 7, 1, _, _, 2],
[ _, _, 7, 2, _, _, _, 8, _],
[ _, _, _, _, 1, _, _, _, _],
[ _, 1, _, _, _, 6, 2, _, _],
[ 1, _, _, 7, 3, _, _, _, 4],
[ _, 2, 6, _, 4, 8, 1, _, _],
[ 3, _, _, _, _, 5, _, _, _]].


% 
% This problem is problem 9 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(9,P,3) :-
 P = 
[
[ 3, _, 5, _, _, 4, _, 7, _],
[ _, 7, _, _, _, _, _, _, 1],
[ _, 4, _, 9, _, _, _, 3, _],
[ 4, _, _, _, 5, 1, _, _, 6],
[ _, 9, _, _, _, _, _, 4, _],
[ 2, _, _, 8, 4, _, _, _, 7],
[ _, 2, _, _, _, 7, _, 6, _],
[ 8, _, _, _, _, _, _, 9, _],
[ _, 6, _, 4, _, _, 2, _, 8]].


% 
% This problem is problem 10 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(10,P,3) :-
 P = 
[
[ _, _, _, 7, _, _, 3, _, _],
[ _, 6, _, _, _, _, 5, 7, _],
[ _, 7, 3, 8, _, _, 4, 1, _],
[ _, _, 9, 2, 8, _, _, _, _],
[ 5, _, _, _, _, _, _, _, 9],
[ _, _, _, _, 9, 3, 6, _, _],
[ _, 9, 8, _, _, 7, 1, 5, _],
[ _, 5, 4, _, _, _, _, 6, _],
[ _, _, 1, _, _, 9, _, _, _]].


% 
% This problem is problem 11 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(11,P,3) :-
 P = 
[
[ _, _, _, 6, _, _, _, _, 4],
[ _, 3, _, _, 9, _, _, 2, _],
[ _, 6, _, 8, _, _, 7, _, _],
[ _, _, 5, _, 6, _, _, _, 1],
[ 6, 7, _, 3, _, 1, _, 5, 8],
[ 9, _, _, _, 5, _, 4, _, _],
[ _, _, 6, _, _, 3, _, 9, _],
[ _, 1, _, _, 8, _, _, 6, _],
[ 2, _, _, _, _, 6, _, _, _]].


% 
% This problem is problem 12 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(12,P,3) :-
 P = 
[
[ 8, _, _, _, _, 1, _, 4, _],
[ 2, _, 6, _, 9, _, _, 1, _],
[ _, _, 9, _, _, 6, _, 8, _],
[ 1, 2, 4, _, _, _, _, _, 9],
[ _, _, _, _, _, _, _, _, _],
[ 9, _, _, _, _, _, 8, 2, 4],
[ _, 5, _, 4, _, _, 1, _, _],
[ _, 8, _, _, 7, _, 2, _, 5],
[ _, 9, _, 5, _, _, _, _, 7]].


% 
% This problem is problem 13 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(13,P,3) :-
 P = 
[
[ 6, 5, 2, _, 4, 8, _, _, 7],
[ _, 7, _, 2, _, 5, 4, _, _],
[ _, _, _, _, _, _, _, _, _],
[ _, 6, 4, 1, _, _, _, 7, _],
[ _, _, _, _, 8, _, _, _, _],
[ _, 8, _, _, _, 4, 5, 6, _],
[ _, _, _, _, _, _, _, _, _],
[ _, _, 8, 6, _, 7, _, 2, _],
[ 2, _, _, 8, 9, _, 7, 5, 1]].


% 
% This problem is problem 14 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(14,P,3) :-
 P = 
[
[ _, _, 6, _, _, 2, _, _, 9],
[ 1, _, _, 5, _, _, _, 2, _],
[ _, 4, 7, 3, _, 6, _, _, 1],
[ _, _, _, _, _, 8, _, 4, _],
[ _, 3, _, _, _, _, _, 7, _],
[ _, 1, _, 6, _, _, _, _, _],
[ 4, _, _, 8, _, 3, 2, 1, _],
[ _, 6, _, _, _, 1, _, _, 4],
[ 3, _, _, 4, _, _, 9, _, _]].


% 
% This problem is problem 15 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(15,P,3) :-
 P = 
[
[ _, _, 4, _, 5, _, 9, _, _],
[ _, _, _, _, 7, _, _, _, 6],
[ 3, 7, _, _, _, _, _, _, 2],
[ _, _, 9, 5, _, _, _, 8, _],
[ _, _, 1, 2, _, 4, 3, _, _],
[ _, 6, _, _, _, 9, 2, _, _],
[ 2, _, _, _, _, _, _, 9, 3],
[ 1, _, _, _, 4, _, _, _, _],
[ _, _, 6, _, 2, _, 7, _, _]].


% 
% This problem is problem 16 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(16,P,3) :-
 P = 
[
[ _, _, _, _, 3, _, 7, 9, _],
[ 3, _, _, _, _, _, _, _, 5],
[ _, _, _, 4, _, 7, 3, _, 6],
[ _, 5, 3, _, 9, 4, _, 7, _],
[ _, _, _, _, 7, _, _, _, _],
[ _, 1, _, 8, 2, _, 6, 4, _],
[ 7, _, 1, 9, _, 8, _, _, _],
[ 8, _, _, _, _, _, _, _, 1],
[ _, 9, 4, _, 1, _, _, _, _]].


% 
% This problem is problem 17 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 9 x 9
%
problem(17,P,3) :-
 P = 
[
[ 2, 5, 8, 1, _, 4, _, 3, 7],
[ 9, 3, 6, 8, 2, 7, 5, 1, 4],
[ 4, 7, 1, 5, 3, _, 2, 8, _],
[ 7, 1, 5, 2, _, 3, _, 4, _],
[ 8, 4, 9, 6, 7, 5, 3, 2, 1],
[ 3, 6, 2, 4, 1, _, _, 7, 5],
[ 1, 2, 4, 9, _, _, 7, 5, 3],
[ 5, 9, 3, 7, 4, 2, 1, 6, 8],
[ 6, 8, 7, 3, 5, 1, 4, 9, 2]].


% 
% This problem is problem 18 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(18,P,5) :-
 P = 
[
[ _, _, _,16, _, _, _, 9, _, _, 4, _, _, _, _, _, 6,15, _, _,21, 8, _, _, _],
[12,14,18,23, _,17,13,22, _,24,15, _, 1,21, _, _,10, _, _, 9,25,19, _, 4, _],
[ _, _, _, _, _,10, _, _, _,21, _, _,19,11,23, _, 2, _,13, _, 1, _, _, _,17],
[25, 4, 9, _, _, _,19,11, 2, 3, _,10,13, _, _, 7,14, _, _,12, 5,15, _, _, _],
[10, 1,17, _, _, _, _,15, _,23, 5, _, _, _, _,18, _,11,21, _, _, _, 2, 6, _],
[ _, _, _, _, 7, _, _,12, _, 6, _, _, _,17, 4,11, _, _, 1, _, _, _, _,18, 5],
[ _,15, _,25, _, _, _,18, _, _,11, _, _, 7, _, 5, _,21, _, _, _, 9, _, _, _],
[ _,21, 6,10, _, _, _, 5,24,15, _, 8,25, _, _, _,20, _,23,14, _, _, 7, 3, 4],
[11, 2, _,14, _, _,21, _, _, _, 1,19, _, 5, _, _, _, _,24, 7, _,20, _,10,25],
[24, _, 5, _,12,11, 1, _,25, _, _, _, _, 3,14,22, _, _, _, _, 2,21, _,17, _],
[ 2, _, _,22,19, _,10, _, _, _, 9, _, 3, _, 7, _, _, _, _, _, _,25, _, 8,12],
[ _, _, _, _, _,12,15, _,13,25,16, 6, 2,23, _,14, _, _, _,24,17, _,22, _,19],
[ _,13,21, _, _,24,22, _, _,18,14, _,11, 8, _, _,23,17, _, _, _, 3, _, _,20],
[ _,12,24, 1,15, _,11, _,23, _,10,17, _, _,25, _, 7, 8, _,19,14, _, _, _,13],
[14, _, _, 6, _, _, _, _, _,17, _, _, _, _, _, _, 4,22, _,20,18,11, 9, _, _],
[23, _,19, _, _, 6, _, _, _, _, _, _,12, _, _, 1, _, 5, _,16, _, _,17, _, _],
[ _, _, _, 7, 5,21,16, _, _, _, 6, _, _, 1, _, _,12,18, _, _, 4, _,14, _, _],
[ 9,20, _, _, 6, _, _, _, _, _,17,16,23, _,24, 2,25, _, 4, _, _, _, _, _, _],
[ _,24,10, _, _,18,25, 8, 4, 9, _, _, _, 2, _,20, 3, _, _, _, 7,16,23, _, _],
[ _, _,16, _, _, _, _,23, _, _, _,25, _,13, 9, _, _, _, _,10, _, _, _,12, 1],
[19, _, _, _,22, _,23,10,15,14, _, 4, _, _, 2, 3, _, 7, _, _, _, _, 8,21, _],
[ _, _, _, _, _,19, _,17, 9,12,13, 1,21,25, _, _,16,24, _, _, _, _, 4,22,14],
[ 4, 8,23,20, _, _, 5, _,22, _, _, _, _, _, _,19,21, _, _, _, _, _, _, _, 9],
[ _,18, _,24,16, _, _, _, _, 8, 3, 5, _,10, _,13,17, _, _,25, _, _, _, _, _],
[ 3, 5, _, _, _, _, _, _,21, _,19, _, _,14, _, _, _, _, 8,18,16, _, 6, 7,11]].


% 
% This problem is problem 19 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(19,P,5) :-
 P = 
[
[ _,23, _, _,19,16, _, _,24, 7, 5, 9, 1, _, _, _, 8,18, _, _, _, _,21, _, _],
[15,16, _,22, _,11, 8, _, _, _,25, _,14, _, _, _,12,19, _, _,17, _, _, _, _],
[ _, _, _, _, _, _, _, _, _, _, _,16, _, 4, _,17, _,13, _,24, _,23,19,10, 2],
[ _, _, _, _, _,19, _,14,23, 4, _,21, 6,22,10, _,11, _, 2, _, _, _, _, _, _],
[17,14, _, _, 2, _, _,13,12, _, _, _, _, _,15, 4,20,22,10, _,11, _, 9,24, 8],
[22, _, _, _, _, 6, 2, _, _, _, 4, 7,12, 1, 9, _, _, _, _, _, _,14, 5, _, _],
[ _,18, 2, _, 8,22, _,19,16,21, _, _, _,10,13,23, _, _,20, _, _, 3, _,15, 7],
[ _, _,17, 3, _, 5, _, _, 8, 9, _, _, _, _,18, _,19, _, _, _, _, _,23,21, _],
[ 1,11, _, _, 9, _,15,10,25, _, 6, _,23, _, _, _, _, 5, 3, 7, _,17, _, _,24],
[ _, _, _, _, _, _, 1, _, _,23, _, _, _,24, _, _, _,21,12, _, 6, 8, _,25,16],
[20,24,10, _,15,23,11,17, _, _, _, _, _, 7, _,12, _, _, _, _, _,22, _, _, 6],
[ 4, 5, _,14,12,25, _,18, _, _,23, _,15, _,19, 1, _, _, _,22,20, _, 7, 9, _],
[18, _,21, _, _, 8, _,24, _, _, 9, _,25, _, _, _,10, _, _, _, 2, _, 1,19, _],
[ _, _, 6, 2, 1, _,13, _,22, _, _, _, _, _,11, 8,21,16, _, _,25, _, _,12,17],
[ _,17,25, _,23, 7,14, _,21, 1, _, _, _, _, 3, _, _,11, _, _,24, _,16, 4, 5],
[ _, _, _, _,11,18,24, _, _, _, _, 5, _,12, _,25, _, _, _,15,23, 4, 8,14, _],
[ _, _, _,15,21, _, _, _, _, _, 2, _,13,17, _, _, 1, 7, _, _, 5, 9,24, _, _],
[ _, _,18, _,22,15, _, _, 2,16, _,23, _, _, _,10, 6,24, _,17,12, _,25,11, _],
[ 7, 2, _, 1, _, _,21, _, _, _,18,22, _, 9, 6,14, _, 4, 5,16, _, _, _, _, _],
[ _, _, 9, _, _, _, 7,22, _, _,10, _,24, _, _, _,18, _, _, _,21, _, _, _, _],
[ _,12, _,19,10, _, _, _, _, _, _, _, _, _, 1, _, _, _, _, _,14, _, 4, 8, _],
[24, _,11,18, _, _, _, _, _, _, _,25,17,21, _, 6, _, _, 1, _, _, _, _, 5,12],
[16, 6,22, _, _, _,23, 4,15,18, 8, _, _, _,20, _, _,17, _,14, _, _, _, _, _],
[ _,21, _, _, 4, _, 9, 1, 7, _, _, _, _,11,14, _,16, 8,15, _,22, _,18, _, _],
[ 8,15, _, _, _, _, _, _, 5, _,24, 3, _, _, 4, _, _, _, 9, _, _, _, _, _,20]].


% 
% This problem is problem 20 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(20,P,5) :-
 P = 
[
[ 5, _,25,12, _, _, 7, _, _,19, _, _,18, _, _, _, 3, _, _,17, _,22, _, 2,21],
[17, _, _, _, _, _, _, _,15, _, _,13,10, _, _,23, _,16, _, _, _, 9, _, _,25],
[ _, _, _, 3,21,12,25, 2, _, 5, 4, _, 7, 1, _,11, _, _, _, _,19, _, 8, _, _],
[ 7, 6,22, 8, _, _, _, 3,10, _, _, _,17, _, _,12, _,13, _,15,24, _, _, _, _],
[ _, _, _,13,20, _, _,16,18, _, _,11, _,21, _, 6, _, 8, _, 1, 4, _, _, _, _],
[10, _, _, _, _, _, _,22, _, _, _, _,13, _, 6, _,23, _,25, _, _, _, _,24, 2],
[ _, _, _,14, 5,11,21,15, _, _, 9, 2, _, _, 3,10,19,12, _, _, 6,18, _, _, _],
[ _,25,23,19, _, 6, _, _,14, 7,10, _, 8, _, _,18,22, _,24,21, 1, _,16, _,12],
[ _,21, 3, _, _, _,24, _,23, _, 5, _,20,18, _, 4, 6, _, _, _, _, _, 9,14, _],
[ _,18, _,16, _,10, _, _, 2, 8, _,22,11,25, _, _, _,14, _, _,17,19, 3, _, 7],
[19, _, 7, 4, _,21, _, _,13, 1,24, 9, 6, _,10, 3, _,22, _, _, _,16,18, _, _],
[14, _, _, _, 1, _, _, _,20, _, _, _, _,19, _, _, _,25, 6, _, 7, _,12, _, 9],
[ 8,22, _, _,10, 9,19,24, _,15, _,25, _, _, 1, _, _, _, 4, _,14, 3,23, 6, _],
[ _, _, _,18, _, 3, _, 7, _, _, _, _, _, _, _,14,21, _,12,13, _, _,17, _, _],
[ _, _, _, _,13,14, 2, _, _,25, _, _, _,23, _, _, _, _, _, _, _, _, _,20, _],
[ _,24, _, 7, _,15,20,18, 1, _, _,16,19, _,23, _, _, _, _, _, 9, _,25, 8, _],
[ _, 8, 9, _, _,17, _, _,11,23,22, 7, 3,13, _,20,15,19, _, _,18, _, 6, _,10],
[25,13,11,23, _, _, _, 9,22, _, _,12, _, _, _, _, _,24, _, 6, _, _, 7, _, _],
[ _,15, _,20, _, _, _, 4, _, _,21,10, 9,11, _, _,12, _,14, 7, 5, _, _,16,23],
[16, _,10, _, _, _, _, _, 7, _, 8, _, _, _, _, _,17, _, _, _, _,24, _, 3, _],
[11, _, _, _,12, _, _, _, 4, _, _, _, _, _, _, 8,20, _, 3, _,25, _, _, _, _],
[13,17,14, 5, _, _,15,10, _, _, _,19, _, 3, _, _,11, _, 2, _,20,12, _, 9, 8],
[ _, _, _,15, _, _, _, 5, _, _, _, _,23, _, _,19, 9, _, _, _, _, _, _,18, _],
[ _,19, _, _, _,25, _, _,24, _,11,20, _, _, _, _,18, _,22, _, 3, _, _, 5, _],
[ 9, _, _, _, 8, _,11, _, 6, _,13, _,22, _,18, _, _,17, _, 5,16, _,19, 4, _]].


% 
% This problem is problem 21 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(21,P,5) :-
 P = 
[
[ _, _, 6,15, _, _, _, _, _, 5, _, _, 3, _, _, _, _, _,17, _, _,10, _,22, 2],
[ _, _, _, _, _, 3, _, _, _, _,18, 8, _,10, _,22,12, _,20,19, _,21,23,16, _],
[ _,18, _, 7,23, _, _,20, _, 2, _, _, 6, _, _, _, 3,13, _, _,11, _,24, 8, 5],
[ _, 3,10, _,25,15, _,13, 8,24,11,20, 7, _, 2, _, _, _, _,21, 6, _, 9,17, 4],
[ _,20, _, _,12,11,22,21, _, _, _, _, _,24, _,10, 8, _,16, 4, _,13, _, _, _],
[ 1, _, 4, _,10,16,21, _, _,22, 5, _, _,15, _,24, _, 9, _, _, _, _,25, 2, _],
[ _, _,18, _, _, _, _, _, _, _, _, _, 8, _, _, _, _, _, _,23, 4,14, _, _, _],
[19, _,12, 8, _, 1, _, 6, _, 3, _,21,24, _,20, 7,10,16, 2,25, 9, _,17, _, _],
[ _, 2, _, 3,11,17, _, _, 9, _,10, _, _, _,16, _, _, _, _, _, _,24, _, _,21],
[ _,17, _, _,22, 8, _,19, _, _, _, _, _,23,18, 1, _,21,14,15, _, _, _, _,11],
[18, 5, _, _, 4, _, _, _, _, _,16, _, 2, 7, _, _,20, _, _, 3, _,22, _, _,17],
[25, _, _,14, _, _,18, _,10, _, _, 3,11, _, 8, _, _, _, _,16, _, 2, _, _, _],
[10,19, _, _, _, _, _, _,23,15,20, _,18, _,24, 9, 4, 7, 6, _, _,16, _, 1, _],
[ _, 9, 7, 6, _, _, _,14, 3,17, _, _, _, _,22, 5, _,15, _, _, _, _, _, _,24],
[ _,15, _,22, 3, _, 5, _,16,20,12, 4, _,17,19, _,23, _, _, _, _, _,18,13, 7],
[ _, _,21, 1,20, _, _, 9, _,19, 3, 7, _,18,13, _, _,11, _, _,14, 6, _, _, _],
[ _, 8, 2,24,17, _, 1, _, _,25,23,22,21, _, _, _,14, _, _,12, _, _, _,19, _],
[ _, _, _, _,19,21,15,23, _,11, _, _,16, _, _, 6,22, _, _,17, _, _,13, _, 9],
[ _, _, _,12, _,10, _, _, _,18, _, 6, _, _, _, _, _, _, _,20, _, 5, _, _, _],
[14, _,16, _,18, _, _, _, _, _,24, _, _, _, _,19, _, 8,15, _, _, _, _, _, _],
[ _, _,22, 4, _, _, 9, _,13, _, 7, _,20, _,15,14, _, 3,24, _, _, _, _, _, _],
[17, _,23, _, _, _, _, _, 1, 4,14, _, _,11, 3,21, _, _, 8,18, _, _, _,10,16],
[20, _,24, _, 6, 2, _,25,22, _, _, _,23, _, _,17, _, _, _, 1, 8,12, _, 9, _],
[21,12, _, _, 8, _, 3, _, _, _, 2, _, _, _,17, _,16, _, _, _,19, _, _, 4,14],
[ _,11, _, _, 9,23,20, _,14, _, _, _, _,12, 6, _,25, _, 4,13, _, 7, 1,24,18]].


% 
% This problem is problem 22 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(22,P,5) :-
 P = 
[
[10, _, _,15, _,23, _, _, _, _, _, _,22, 2, 8,13,12, _,21,18, 7, _, _,24,19],
[ _, _,11, _, _, _,13, _,22, _, 6, _, _, _, _, 9, _, _, _, _, _, 2,10, _, _],
[ _, 2, _, _,18, _, 5, 6, _,11, _, _, _,19, _,22,14,17, _, _, _, _, _, _, _],
[24, 7, _, _, _,17,14, _, _, _,11,10, _, _,16, 2, _, _, _, _, _, _, _, _,21],
[ _,17, 6,19, _, 2, _, _, _,16, _, 7,23,13,25, _,10, _, _, _, 8, _, _,12, _],
[ _,25,23, 3, 5, _, _,11, _, _, 8, 6, 9, _, 2, _,16,10, _, _,20, _,12, _, _],
[ _, _, _, _,14,22, 1, 3,24,13, _,23, _, _, _, 4, 9,20, _, _, _, 7, _, _, _],
[ 9,16, _, _,12, _, _, _, _,18,19,15, 5, _,11, _, _, 7, _, 3, _, _, _, _, _],
[17,13, _, _, _, _, _,19,23, _, _, _, _, 7, _, _, _,14,15, _, _, _, _, 9, _],
[ 1, _,24,10, _, _,16, _,20,21, _, _, _, _,17, _, _,11, _,12,25, _, _, _, _],
[ _, _,12,14, _, _, _, _, _, _, _, 2, _, _, 9,18, _, _, _, _, 3, _, _, _, _],
[15,19, _, _, 8, 3,25, _,14, _, _,20, 7, _,23,21, 1, 5,17, _, _,18, 2, _, _],
[ _, 4, _, _,16,19, _, _, _, 6,13,18,11, _, _, _,25, _, _, _,10,17,21, _,12],
[ _, 1,18, _, 2, _,22, _, _, _, _, 8, 3, _,15, _, _, 4, _,23,11,14, _, _, _],
[21, 3,22, _,24,13, _,17, _,10,16, _, _, 4, _, _, _, _, _, 6, 9, _, _, _,15],
[ _, 8, _, _, _, 5,17, _, 3, _, _, _, _, _,22, _, _, _,13, _, _,20, _, _, 4],
[ 3, _, _, 4, _, _,10,14,13,24, 7,19, _, _, _, 5, _, _, 9, _, _,16, 1, _, _],
[ _, _, 2,23, 9, _, 8,15, _,25, _,24,18,16,12, _,21, 6, _, _,14, _,17, _, _],
[12, _, _, _, 1, _, 7, _, _,20, _,21, 6, _, 4,14,24, _, 8, _, 5, _, _, _,23],
[ _,18,16, _,17, _, _,22, _, _,14, _, _, _, 1,10, 2,23, 4, _, _, 8, _,15, _],
[ 6, _, _, 5,19, _, _,23, 1, _, _, _, 2, _, _,17, _,18,16,10, _, _, _,25, 8],
[ _,21, _, _, _,24, _, _, _,17, _, _, _,12, _, _, _, _,22, 5,16, _, _,10, _],
[ _, _,15, _, _, _, 3,12, _, 7, _,25, _, _, 5,23, _, _,11, _, _,13,22,17, 9],
[ 2, 9, 1,13, _, _, 6, _, _,22, _, _,17, _, 7, _, 3, _,19, _,23, _, _,11, _],
[ _, _, _, _,22,20, _, _, 2, 9,15, _,16, _,13,24, 4, _, _, _, 6, _,14, 3, 5]].


% 
% This problem is problem 23 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(23,P,5) :-
 P = 
[
[ _, _, _, _,11, 1, 2,24, 3, _, _,13, _, _,15, _, _,20,25,21, _,14, 4, _, 7],
[ 1,22, _, _,16,21, _, _,17, _, _,20, _,10, _, _, _, _, _, 3, 9, _,25, _, _],
[ _, 8, _, 3, _, 4, _, _, _, _, _, 7, _, _, 6, _,15, _, _, _, _, _,12,20, _],
[25, _,24, _, _, _, 7, 5, 8, _, 2, _, _,22,12, _, _, _, _, _, 1,21, _,10, _],
[ _, _, _,17,15,20, 6, _,10, _, _, 8, _, _, _, 9,11, _, _, _, 2, _, _, _,19],
[ 9, 1, _,20,19,14, _, _,21, _, 5,24, _, _,16,13, _, _, _, _, _, 4, _, _, _],
[ _,18, _, _, 3, _, _,13, _, 2, _, _, _, _, _,12, 4,22,21,10,20, _, _,23, _],
[ _, 4, _, _, 6,18,10, _,25, 7, _, _, _, _, _,11, 9, _, _, _, _, _, _, 3, _],
[22, _,15, _, _, _, 4, _,19, _, _, _, 8, _, _, _, _,23, _,17, _, 1,16, 7, _],
[ _, _, 5,25, _,23, _, _, _, _, _,12, _, 7, 3, 1, _,18, _,14, _, 9,10, _, _],
[ _, _, _, _, _,16,24, _,20,13,21, _, _, _, _, _, _,11,10, _, _, _, _, _, _],
[ _, 3,10, _, _,15, _, _, _, 9, _, _,20, _,14,18, 5, _, 7, _, _, 6, _,13,23],
[ _,16, _, 5, 4, _,21, _, _, _, _, _,25,17, _, _, 3,15, 6, _, _, _, _, 2, _],
[ _, _, _, _,25, _, _, _, _, _,16, _, _, 2,13, _,24,17, _, 1,11, _, _, _,12],
[ 6, _,14,22, _, 7,23, _, _, _, _, 3, _,11, 4, _, _,13,12, _, _,20, 1,25, _],
[11, _, 9, _, _, _, _, _,18, _, _, 5,23, _, _, _, 7,24,16,20, _, _, _, 4, 6],
[24,15, _,16,13, 6,17,25, _, _,19,22, _, _,11,10, 8, _,18, _,12, _, _, _, _],
[ 8, _,21, 7, _, _, _, _, _, _, _, _, _, _, _,25, _, 3,22, 5, _, _, _, 9, 2],
[ _,14,22, _, _, _, _, _, 4, 5,18,15, 7, _, _, _, _, 2, _,12,19, 8,13,21, _],
[ _, 6, _, 4, _, 8, _, _,23,10, _, 2, _, _, _, _, _, _, 9, _, _, _, _,16,18],
[ 2, _, _,10, 1,13,12,23, _, _, 3,16, _,15, 5, _,21, _, _,18, _, _,24, 6,17],
[ _, _,11,18,24, _, _, 1, _,17, _,21, _, _, _,16, _, _, _, _, _, _, _, _, _],
[12, _,25, _, _, _, _, _,22, 8, _, 9,24, _, _, 5,10, _, _,23, _,19,20, _,13],
[17, _, _, _,23, _, _, _,15,24,10, 4, _, _, 7, 3, _, _, _, _, 5, _, _,12,22],
[ _,13, 4, _, _, 3, _, _, _, 6,11,14, _, _,23, _, 2,19,17, 8, _, _,21, _, _]].


% 
% This problem is problem 24 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(24,P,5) :-
 P = 
[
[21,19, _,15,17, 2, _, _, _,20, _, _, _, _, 3, 5, 9, _,14, _,11, 6, _,23, _],
[ _, _, _,14,22,21, 1,15,12, _,25,19, _,10, _, 8,18, _, _, _, _, 2, _,20, 4],
[ 9, _, _, _, _, _, _, _, _,16, 1, _, _, 6, _, _,20, _, _, _,25,10,21, 3,12],
[25, _, _, _,12, 3, 4, _, _, 8, _,23, 7, _, _, _, _, _, _, _, _, _,13,14, _],
[ _, _, _, 7, _, _, _, _,14, _, _,18,24, _, _, _, 1, 2, 4, _,19, 5, _,15, _],
[ _, 8, _,21, _,25,10, _, 2, _, _, 3, 1,15,16, _, _, _, _,23, _, _,12, _,18],
[15, _,16, _, _, _, _, _, _,22, _, _, _, _, _, _, _, _, 2, _,20, _, _, 1, _],
[ _, _, _, _, 2,20,17, 6, _,19,24,13, _, _, 9, _,21, _, _,16, _, _, _,11, _],
[ _, 6,24, 3, _, _,16, _, _, _, 4, _,23,19, _,17, _,25,11, _, _, _, 5, _, 9],
[18, _, _, _,20, _, _,21,11,23, _, _, _,14, _, 7, 6, _,10, _, _, _, _, 8, _],
[13, _,11, _,21, _, _, _, _, _, _, 8, _, 3, _,12, _,20,22, _, 6, _, _, _, _],
[ _,12, 5, 9, 3, _,18, _,23, 4, _, 2, 6,22,11, _, _, 1, _, _,21, _,20, _, _],
[22, _,15, 6, _, _, _, _, _, _,13,10, 4, 5, _, 9, _, _,23, _,18, 3, _, _,11],
[ _,16, _, _, 7, 9, _,17, _, _, _,20,19, _, _, _, 4, _, _, _,10,23, _, 2, _],
[ _,20,17, _, _, _,11,12, _, _, _, _,21,24,23, _, _, 7, _, _,13, _, 8, _,15],
[ 2, _, _,11, _, _, _,22,25, _, _, _, _, 7,24,14,19, 4, _, _, _, _, 6, _, 1],
[ _, 4, _, _, _, _, 2,24, _, 9, _, _, _, _, _, _,23, _, _, 1, _, _, _, _,16],
[ _, _, _, _, _,16, _,19,15, _, 2, _, _,21, _, 6, _, 5, _, _, _, _, _, _, _],
[12, 9,10, _,16, _, _, _,17, 1, _, _, _,25,19, _, _,21, _, 3, _, 8, _,22,23],
[ _, _, _, 1, _, _, _, _, _, _,22, _, _, _, _, _,24, _,25, 8, _,20, 3,19, _],
[ _, _, _,23, _,17,25, _,20, 2, 5,16, 3, _, _,19,12, 8, _, _, 1,22, _, _, _],
[ _, _, 2,20, _,15,12, 3, 4, _,10, _, _, _, _,23, 7, _, _, 9, _,21,11, _, _],
[ _, _, 6, 5,13,19, _, _,21, _, _,12, _, 4, _, 1, _, _, _,11,16,15, _, _, _],
[24,15, _, _,14, _, _, 7, _,11, _, _, _, _, _, _, _, 6, 3, 4, _, _, _,13, _],
[16, _, 3, _, _,23, _,18, 9,13, 7,25,22, 8,20,15, 2, _, _, _, _, 4, _, _, _]].


% 
% This problem is problem 25 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(25,P,5) :-
 P = 
[
[ _, 1, _, _,18, 8, _,25, _, _, 6, _,23, _, _, _,11,13, _, _, _, 3,24, _, _],
[ _, 9, _, 6, _, _, _,14, _,22, 4, 3, _, 8, _, _,10,20, _, 2,19, _, 1, _, _],
[ _, _, _,19,20,21, _, _, _,15,10, _, _, _,25, _,18, 4, _, _, _,13,11, _, _],
[14, _, _, _,25, _,18, _,11, _, 7, _, 1, _, _,19, _,17,12, _, _, _, 9, 8, _],
[ _, _, 5,22, 8,16,19, _,20,13, _,24, _, _, _,23, 3, _, _, 1,10,18, _, _, _],
[20, _, 2,12, 4, _,22, _,23, _, _,19, _, _,18, _, _, _, _, _, _, _,17, _, 5],
[23, _, _,11, 9,24, _,13, _, _, _,20,17, 6, _,14, _, _, _,12, _, _, _, 7,18],
[13,14, _, _,19,20, 4, _, _, _, _, _,21, _, 1,11, 7, _, _, 6, 8,25,23, 2, _],
[ _, _, _, _, _,25, _, _, _,12, _, _,15, _, 7, _, _, _,21, _,24, 9, _, _, _],
[ _, _, _, 3, 5, _,17, _, _, _, _, _, _, 9, 2, _, _,22, _, 4, _,14,12, _, 1],
[25, _, _,18,21, _, _,17, _, _, _, _, _, _, _, _, _, 1, _, _, 3, _,13, _, _],
[ _, _, _, _,11, 9, _, _, 8, _, 3,18, 5, _,12, _, _, _,20, _, _, _,15, 1, _],
[15,17, _, _, _, _, 2,24, _, _,13, _, 4,22, _,25, _, _, _,10, _, _, _,16,12],
[19,10, _, _, _, _, _, _, _,20,15, _, _, _, _, _, _, _, 4, _,14,24,22,18,25],
[ 3, _, 7,16,23,15, _, _, _,10, _, 2,24,11, 9,12, _,14, 5, _,17,19, _, _, _],
[ 2, _,18, _, 1, _, _, _, _, _, _, _,10,24, 5, _,25, _, _, _,20, _, 3, _, _],
[ _, _,17, _, _, _, _,21, _, _,22, _,12,18,19, _, _, 7, _, _, _, 4, _, _, _],
[16,24, _, 9, _, _,20,15, _,18, _,25, 3, _, _, _,14, _,17,19, _, _, _,23, 7],
[ 5, _, 3, 7, _, _, _,11, _,14, _, _, _, 4,23, _, _,24, _, 8, _, _, _, _, _],
[ 4,11, _, _, _, 7, _, 9,24, _,17,21, _, _,14, 2,12, 3, _,20, 5, 1, _,22, _],
[21, _,24, 4, 2, _, _, _,13, _, _,10,19, _, 8, _, _, _,16,17, _,23, _, _,14],
[ 9,22, _, 8, _,17, _, _,21,16, 1, _, _,23, _, _, 5, _,14, _, _,15, 7,11, _],
[ _, _, _, _, _, _,15,10,12, _, _, 5,22, _, _,18, 6,19, _,11, 4, _, _, _,16],
[ _, _, _,15, _, _, 8, 2, _, _,25, _,14, _, _, _, _, _, _, 3, 6,17,20, _,21],
[11, _,19, _,16, 5, _, _, _,24, _,17, 2, _, _, 9, 8, _, 7, _, _, _, _, _, _]].


% 
% This problem is problem 26 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(26,P,5) :-
 P = 
[
[ _,12,23,25,17,20, _, 5, 3, _,24, 9,15, _, _,13, _, 7, 8, _, _,19, _, _, _],
[19, _, _, _, _, _,15, _,13,11, _, _, _, 7, _,16, _, _,25,10,14, _, _, _,21],
[ _, 6, _, _, _, _, _, _, _, _, _, 5, _, 4,10, _, _, _, _, _, _,18, _, _, _],
[10, _, _,21, _, 6, _,14, _, 1,19,16, _, _, _, _, 5, _,17, _, 2, _, _, _, 9],
[ _, _,16, 4, _, _,25, _, _, _,14, 2,23, _,22, _, _, _,12, _, _,15,11, _, 1],
[ _, _,25,20,19, _, _, _,16, 4, 1,24, _, _,12, _,23, _, _,17, _, _, _, _, _],
[ _,22, _, _,18, 5,21, 9, 7,19, _, 3,17, _, _, _,14, 2, _, 8, _, _, _,13, _],
[ 1, _, 4, _, _,24,23, _, 8, 3,16, _,25, _,13, 5, 9, _, _,12, _,11,17, _, _],
[ _, _, 2, _, 9, _, _, _, _, _, _, _, 4, _,15, _, 3, _, 6, _, _,24, _, 7, _],
[ 3,15, _, 7, _,22,14,12, _, _, 5, _, _, _, 2, _, _, 4,20, _,21,23, 8, _, _],
[ _, _, _,18, _, _, _, _, _, _, _, _,22,15, 7, _, 6,10,24,16, _, _,21,14, _],
[12, 1, _, 3, _, _,19,16, _, _,13, _, 9, _, _, _, 4, _, _,23, _, _, _, 6, 8],
[ _, _, _,22, 7,21, 9, _, _,23,17,10, _, _, _,15,19, _,18, _, _, 3, _,12, _],
[ _,10, _, _, _,25, _, _, _, 5, _, _, _,14, 3, _, 8,22, _, _,20, 4,24,15,16],
[ _, _, _, _, _,12, _, 6,20,18,25, _, _, _, 8, _, _, 3, _,13,19, _, _, _, _],
[ _, 2, _,19, _, _, _, 3,12, _, _, 7, _,13, _, 9,10, _,14,15, 6,21, _, _, _],
[ 4, _, _, _, 3, _, 6,23, _, _, _, _, _,21, 9, _,17, _, _,25, 8, _, _, _, 2],
[ _, 9, _,12, _, 4,17, _, _, _, _, _, _, _,25, _, _, _, _, 1, _, _,15,19, 3],
[ _,21,13, _,20, 8, 7, _, 1, _,11,22, 5,10,19,23, _, _, _, _, 4,17, _,16, _],
[ _,11, _, _,22,10,18, _, _, _, _, _, _, _, _, 4, 7,24, _,21,13, _, _, _, _],
[ _,16, _, _, _, _, 3, _, _, _, _,15, _, _, 1, _, _, 9, _, _,22, _, _,20, 6],
[25, 7, _,10, _, _,11, 8, _, _, _, _, _, _, _, 2, _, _, _, _,18, _, 3, _, _],
[22, _, _,24, _, _, _, _, 9,20, 2, _, _, 6, _, _, 1, _,23, _,15,14, _,21, _],
[ _, _, _, _,14, _, _, _,10, _, _,23, _,19, _,18,16, 8, _, _, _,12, _, 9, _],
[ 6,20,21, _, 4, _, _, _,15,12,18, _,10, _, _, _, _, _, 5,19, _, 2,13, _,23]].


% 
% This problem is problem 27 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(27,P,5) :-
 P = 
[
[14, _, _,18, _, _, _,22, _, _, _, _, _, _,21, _, _, _, _,13, _, _, _,11,20],
[15, _, _,11,17, 9, _,20, _,10, 2, _, 7, _, _,14, 4, _,25, _, 6, _, _,22, _],
[ _, 6, _,19, _, _,25,13, 8,15,14, _,18,22, _, _, _,20, _, _, _, 5, 4, _, _],
[21, _, _, _, 8,14, _, _, _,18,10, _, _,17,12, _, _, _, _, _, _, _, _, 7,19],
[ _, _, _, _, _, 7,17, _, 4, _,19,20, _, _,13,24,15,12, _, _, _, _, 9,18, _],
[ 9, _, _, _, 7,10, _, 5, _,11, _,22, 3, 4,14, _,20,13,19, 8, _, _, _, _, _],
[ 8, _, _, _,11,13, _, _, _, _,24, _, _, 7, _, _, _, _,12,25, _,14, _, 6, _],
[ _, 1, _, 3, _, _, 8, _, _, _, _,13, _, _, _, 2, _,22,21, _,11, _, _, 5,10],
[ _,14, 2, _,10, _,24, _, 7, _, _, 1, _, _,18, _, 6, 5, 9, _, _, 8,21,13, _],
[20,15, _, _,22, 2, _, _, _,25,21, _, _, _, _, _, _,10, _,16, _, _,23, 3, _],
[ _, _, _, 7, 6,23, _, 1, _, _,12,11,16, _, _, _,13,25,20, _, _,24, _,19, 2],
[ _,19,20, _, _, _, 6,11, _, 9, _, _,25, _, 7, _,23, _,14,22,15,13,16, _, 5],
[23, _, _, _, _,16, _,15, _, 8, _, _, _, _,24,17, 9, _, 2, _, _, _,14, _, 7],
[ _, _, _, _, 4, _, 3, _, _, _, _,15, 9, _, _, _, _, _, 5, _,23,12, _,10, _],
[22, _,10, _,16,21, _,19, _, _, _, _, _, _, 5, _, _, 4, _, 7, _, 9, 1, _, _],
[12, _, 8,23,14, _, 5, _, _, 6, _, _,22, _, _, _, _, _,11,19, 1, 7, _, _,17],
[ 7, _, 6, _, _, _,23,21, _, 4, 1, _,10,12, _,18, 8, _, _, _,16,19, 3, _, _],
[ _, _, _, 5, 3,25, _,16,22, 2, _,21, _, _,15, _, _, _, _, _,20, _, 6, 8, _],
[19, _, 4, _,13, _, _,17, _, _,18,16, _, _, 8,20, _, _, 3, 5, _,23, _,15,21],
[25, _,15, _, _, _, 9, 3, _,13, _, _, _, _, _,10, _, 1, _, _, _, _, _, _,22],
[ _, _, 7, _,18, _, _, _, 1, _, _, _,13,15, _, _,25,19, _, 4, _,22,10, _, _],
[ _,20,23, _, _, _, _, _, 5,17, _, _,24, _, 6, 3, _,14, _, 2, _, _, _, _, 4],
[ _, _, _, _, 1, _, _, _,24, _, _,10, 2, _, _,13,12,17, 8,11, _, _,20,14, _],
[ 3, _,17,10, _, 6,11,25, _, _, _, _, _,19, 1, 9, 5, 7,24, _, _, 2, 8, _, _],
[ 4, 2,19,24, _,18, _, _, _,20, 5,12, _, _, _, _, _, _, 6, _,25, _,11, _, _]].


% 
% This problem is problem 28 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(28,P,5) :-
 P = 
[
[ _, _, _,16, 8, 7, _, _,24, _, _,15, _,23, _, _,12,17, 6, _, _,13, _, _, 2],
[12, 1, 6, _, _,23, _, _, _, _,13,21, _, 3, _,14, _, _, _, _, _, _, _, _, _],
[ _,21,23, _,14,20, _, _,13, _, _,24, _,16, 6, _, 4, 1, 2, _, _, _, _, 5,17],
[20, _, _, _, 2, _, _, _, _, _, _, _, _, 5, 9,22, _, _, _,25, _, _, 3, _, _],
[ _, _,10, 9, _,22, _, 6, _, _, _, _, 8, _,14, 7,24, 3, _, _,20, _, _,21,11],
[ 7, _, _, 8,11, _, 1, _,14,25, _, _, _, _, _, 4, _,21, _, 6, _,12, _, 9, _],
[ _, 3, _, 6, _, _, _, 9, _, 8, 5, _,10, 2,15, _, _, _, _, _,11, _,14,25, _],
[ _,13, 4,20, _,21, _, _,23,10, _, _, _, _,12, _,22, _,14, _, _, 7, _, _, _],
[21, _, _,25, _, 3,17, _,12,16, _, 7, _, _, _, _,13,20,15, _, _,18, 6, _, _],
[ 5,14,17, _,16, _, 7, _, 6, _, 1, _, _, _, _,19, _, _, _, _,13, 3,20, _,24],
[ _, 6, _, _, _, _, _,16, _,20, _,14, _, _,18, 2, _, 4,19, _, _, _, _, _, _],
[ _, _,18,12,15,25, _, 8,17, 7, _, 2, _,24, _,11, _,23,22, 5, _, _,16, _, _],
[ _,22, _, _,13, 9, _, _,11,14, _, _,19, _, _,15, _, _,18, 7, _, _,21,10,20],
[ _,11,14, _,21, _, _, _, 3, 1, _,22, 7,15,20, _, _,12, 9, _, _, 8, _,13,23],
[ _, 2,24, _, _, _, _, _, _,13, 3, 8,12, _, _, _,14, _, _, _,15, _,25, _, _],
[ _,10, _, _, _, _, _,22, _, _,23,11, _, _, 3, _,19, _, 7,14, 8, _, _, 2, _],
[ _, _, _,24, _, _, _,11, _, _, 6, _, _,12, _, 8,20,16, 4, _, _, 5,13, 7,22],
[ _, _, _, _,22, 8, _, _,18, _, _, 9, _, _,10,21, 1, _,24, _, 3,17,11,23,16],
[ _,12, _, _, 4, _, _, _, _,21, _, _, _, _, _,13, _,15, _, _, _, _, _, _, _],
[19, _, _, 5,23,15, _, _,16, _, _, _,17, _, _, 6, _, _,12, _, _, 1, _, _, _],
[13, _, _,23, _, _,24, _, _, _, _,16, 9, _,19, _,10, _, _,18, _, _, _, 8, _],
[ _,15, _,17, 1,11,23, _,20, _,24, _, 4, _, 8, _, 6, _, 3, _, 9, _,22, _, _],
[11, _, _, _,18, _, _, _, _, 9,20, _, _, 6, _, _, 2, _, _, _,16, _,17, 1, _],
[24, _, _, _, 7, _,12,19,22,18, 2, 5,23, _, _, _,17,13,20,11,25,15,10,14, _],
[ _, _, _, _, _, 2, 8, _,15, _, _,12, _, _, _, _, _, _, _, _,24, _,19,20, _]].


% 
% This problem is problem 29 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(29,P,5) :-
 P = 
[
[ 9, _,20, _, _, 6,13, _,18, 5, _, _, _, _, _, _, _, _, _, _, _,17, _, _, _],
[ _,18, _,14, _, _,11,20, _, _, _,16,23, _, _, _, 6, _,21, _, _, _, 3, _, _],
[ 7, _, _, _, _, 2, _, _,21, 8,14, _,20, _,13, 1, _,25, 5,18, _, 6, _, _,10],
[ _, _,23, _,21,14,17, _,10, 3, 2, _, _,12,22, 9, _, _, _, _, _, _, _, _, _],
[ _, _, 2, _, _, _, _, 9,23, _, _, _, 3, _,18,12, _, _, _,19, _,20,15, 8, _],
[ _, _, _, _, _, _,16,10, _, _,12, _, 7,19,25,23,18, 3, _, _, _, _, 6,21, _],
[ _, _, _, _,14, _,19, _, 8,20, _, _,18, _, _, _, _, _, 9, 7,23,16, 2, _,11],
[24, 7, _, _, 3,17,18, _, _, _,22, _, _, _, _, _,13,12,15, 5, _, _, 9, 1, 4],
[21, _,22, _, 4, _, 3, _, 1, 9, _,13, _, _, 2, _, _, _, _, _, _,15, _,20, _],
[11, _, _, _, _,15, _, _, _,24, 9, _, 6,10,23,16, _, 2, _,25,17, _,14, _, 5],
[ 8,20,13,22, _, _, _, 5, _, 1, _, _, _, _,16, _, _, _, _, _, _,25, _, _, 6],
[ _, 4, _,17, _,21, _,12, _, _,19, 2, _, _, _, _,16, _, _, 3,18,24,23, _, _],
[12, _,10, _, _,19, _, _,14, _, _, _, 1,20, _, _, _, _, _, _, 9, 2, _, 5, _],
[ _, 9,24, _,23,25, _, 2, _, _, _,18,10, _, _, _, _,17, _, _,16, _, _, 7, _],
[ _, _, _,18, 5, _, _,24, _,23, 4, _,17, _, _, _, 2,13,12,20,19, _, _, _,14],
[ 5, 6, _, _, _, _, 1, _,13, _, _,10,19, _, _, _, _, _, 7, _,21, _,24, _, _],
[20, _, 8, _,17, _, 7, _, 9, _, 5, _, _, _, _,10,12, _, _,24, _, _,16, 6,15],
[ 3, _, _, _, _, _, _, _, _, _, _,24, _, _,12, _,15, _,25, 6,20, _, 5, _, _],
[ _, _, _,24,12, _, 4,19, 2, _, 3,14, _, 9, _, _, _,23, _,17, 7, _, _,25, 1],
[ _,11, _, 7, _,20, _, _, _, _, _, 6, _,22,17, _,21,19, _, _,10, _, _, _, _],
[18, _, _, 4, _, _, _, _, _, _, _, _, _,25, _, _,14, 7,13, 9,24, _,11, _,17],
[14, _, 3,16, _,24,25, _, _, _,18, 1,12,11,21, _, _,15,23, 4, _, _, 8, 2, _],
[ _,10, _, _, 9,23, _, 8, _,14, _, _, _, 7, 3,24, _, _,17, _, _, _, _, 4, _],
[ _,22, _,12, _, 3, _, _, _, _,13,20, _, _,14,18, _, _, _, _, _, _,19,16, _],
[ _,17,25, _, _,13, _, _,15,11, _, _, _,23,24, _, 1,20,19, 8, _,10,21, _, _]].


% 
% This problem is problem 30 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(30,P,5) :-
 P = 
[
[ _, _, _, _,21, _, 1, _, 8,17, _,12,24, _, _,25, _, _, _, _,15,10, _, _, _],
[25, 1, _, 2, _, 4,12,24, _, _, _,20, _, _,10, _, _, 3,17, 8, _, _, _, 7, _],
[18, _, _,17, _,16, _, 5, _,11, _, 6, _,22, _, _,10, 2, 4, _,20, _, _, 9, _],
[ _, _, _, _, 6,18, _,20,15, 9, _, _, 5, _,25, _,19, 1, _,11,13,12,14, _,22],
[ _,10, _, _, _, _, 2, _, _, _,15, _, _,21, _, _,14, _,22, _, 6, _, 5,24, 3],
[ 7, _, _, 1, _,12, _, _, _, 8, _,21, 9, _, _, 4,25, _, 5, _,16, _,20, _, _],
[19,24, _, 5,17, _,22, 2, _,18, _, 7, _,15, _, 6,13, _, _,10, 4, _, _,23,14],
[14, _, 3, _,23,24, _, _, _, _,20, 2, _, _, _,21,16, _, _, 7,19,22, _, _, _],
[ _, 9,15, _,12,19, _,17, _, _, _, _,10, _,23,20,11, _, 1, _, _, 2, _, 5, _],
[ 2,21,11, _, _, _, 5, _, _, 7, _,25, 3, 6,17, _,22, _, _,23, _, _, _, 1,13],
[ _, _, _, _, _,25, _, _,11, _, _, _, _, 4, 6, _,17,19, _, _, _, _, _, _, _],
[11, 4, _, _, 7,21,18, _,12, _,16,13, 2, _, _, _,20,10, _, 3,17, _, _, _, _],
[20, 5, _, _, _, _, _, _, 6,19, 1, _, _, _, _, _, _, _, _, _, 2, 7,24, 8,25],
[21,25, _, _, _, 5,20, _,16, _, _,19,11, 3, _, _, _, _, _, _, _, 1, _,22, _],
[ _, _,14,16, _, _, _, 4, _,15, _,23,20,12, _, _, _,24, _, _, 9, _,11, _, _],
[ _, _,22,18, _, _, _,13, 3, 2,10,16,25, _, _, 5,24, _, _, _, 7, 4, _,11,23],
[15,12, 7, 4, _, _, _, _, _, 1, _, _,21,24, _, _, 8, _, _, _, 5, _,13, _,19],
[ _, _,19,23, _, _, _, _,17, _, _, _,14, _,18, _, _, _,13,25,10, 3, _, 6, _],
[10,14, _, _, _, _, _, _, _,24, 3,15, _, _, 5, _, _, _, _, _, _, _, _, _,17],
[ _, _, _, 8, _, _, 6, _, _, _, _, _, _, 2, 4, _, 9,16, _, _, _, _,18, _, 1],
[ _,22, _, _, _, _, 8, _, 9, _, _,24, 1, _,15, _,12, _,14,21, 3, _, _, _,10],
[ _,23, _, _, _,14, _, 3, _, _, _, _, _,18, 7,22, 1, _, _, _,24,13,16, _,20],
[ 1, _, _, _, _, _, _,25, _,23, 9, _, _,13, _, _, 5, _, _, _, _, _, _, _, _],
[ _,18, _,25, _, _,15,16,24,12,22,10, _, _, _, _, _, _, _,19, _, 5, _, _, 2],
[ _,16,20, _, _, _, _, 7, _, _, _, 3, _, _, _, _, _, 9, 2, _, _,11, _,21, 4]].


% 
% This problem is problem 31 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(31,P,5) :-
 P = 
[
[ _, _, _,17, _, _, _, _,16,20,22, _, 4, 3, _, _,11, _,13, _, _, _, _, _, _],
[ 1, 5,18, _,12, _, _, _, _, 8,11, _, 6,13, _, 7,16, _, _, _, _,10, _,17, 4],
[ _, 7, _, _, _,15, _, _,11, _, _, _,19, _,14, 1, 6, _,23, _, _, _, _, 3, _],
[ _, _, _,13, _, 1, _, _, _, 6,21, 7, _,17, _, 5,20, _, _, _, _,25, 9, 8,15],
[20,19, _,10,15, _, 5,12,17,24, _, _, _,23,25, 2,22, _, _, _, _, _,11, _, _],
[ 4, _, _,20, _, _,18, 9, _,22, _,13,23,25, _, _,10, _, 3, _, _,14, 5,24, 6],
[25,16,12, _, _, _,17,14, _, _, _, _, _,18, 5, _, _,22, _, _, _, 7, _, _,19],
[ _,11, _,14,19, _, _,16, _, 5, _, _,21, _, _, _, _,13, _, 4, 8, _, 2, _, _],
[ _,13, _, _, _, _,23, _, 4, _,19, _, 2,10, _, _,17, _, _, 5, _, _,15, 1, _],
[ 8, _, _, _, _,10,19,21,13, _, 7, _, _,24,22, _, _, _, 1,11, _, _, _, _,25],
[12,17, _, _, _,23, _, _, 7, _, _, _, _, _, _, _, _, _,11, 3, _, _, _, _, _],
[18, _, _,24, _,19,21, _, _,25, 5, _, _, _, 3, _, _, _, _, _, _,20,17, _, 8],
[13, _, 2, 5, 9, _,14, _, _, _, _, _, _, 6, _, _, _, _, _, _, _,21, 3, _, _],
[ _, _, _, 3,20, 6, _,11, _,10,14, _, _, 7, 4,23, 2, 5,17, _, _,16, 1, _, _],
[ _,21, _,11, _, _, 4, 1, _,17,12, _, _, _,16, _,24,18,25, 8, _, _,22,23, 7],
[ _, _, _, _, _, _, _, _, _, 2, _,12, _, 4, _,21, _, _, _, _, 6, 9, _,18, 5],
[23, _, _, _, 7, _,12, _, _, _, 6, 9, _, 5, _,10, _, _, _, _, _, _,25,20,21],
[ _, _, _, _,21, _,16, _, _, _, 1, 3, _,11,24,22,25, _, 8, 2, _, _,13, 7,17],
[ _, _, _,12, _,17, _, _, 5, _,25, _,14, _,20, _, _, _,18, 7, _, _, _, _, _],
[19,24, _, _,25, _, 9, 6,10,11,18, 8, _, _, _, _, _,12, _, _,23, _, _, 4,16],
[ _,23,10, 8,17, _, 3, 2, _, _,24, 4, _, _,18,11, _, _,21, 9,16, _, _,19, _],
[ _, _, 4, _,16,13, _, _,22, _, 3, _, _, 2, 7,18,23,19, _,24, _, _, _, _, _],
[ _,12, 9,21, _, _,10, _, _,19, _, _, _, _, _, 6, _, 2, _, _,18, _, _,15, _],
[11,20, _, _, _, 4, _, _,15, _,10, _,12,21, _, _, 8, 7, _, 1, _,24, _,22, _],
[ 6, _, _,25, _,18, _, 5, _, _, _,22, _, _,23, _, _, _, _,15, _, _, _, _,13]].


% 
% This problem is problem 32 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(32,P,5) :-
 P = 
[
[ _, 6,24,21, _, 3,16,11, _,18, _, 1,15, _,14,25, _, _, 9, _, _, 2, 4, _, _],
[ _, _, 1, _,25, _, _, _, _, _,20, _, _, _, _,23, _, 2, _, _, _, _, _,18,13],
[ 2, _, 8, _,20, 7, _, _,19, _, _, _, 6, _, _, 1,15, _, _, _, _, _, _, _,10],
[ _, _, _,13, _, 8, _, 4, _, _, 2, 9, _, _,21,19, 7, _,17,22,20,25,15, _, _],
[ _, _,18, _, 9,23, _, _, _,10, _, _,25, _,22, _,13,20, _, _, _,14, 5, _, _],
[ 9, 4, _,23, _, _, _, 5, _, _,15, _, _,14, _,12, 1, 8, 2, _, _,11,16, 3, _],
[ 8,13, _, _, 3,17,12, _, _, _, _, 6,16, _, _, _, _, _,25, _,15, _, 7, 2,18],
[12, _, _,18, _,14, _, 7,13, _, _, _, _, 8,11,16, _,15, _, _, _, 6, _, _, _],
[ _, _, _, _, _, _,21, _, _, _, _,23, _, 2, 4, _, _,18, _, _, 1,20, _,13,19],
[ _, 2, 7,17,16, _,23,15, _, _, _, _, _, _,18, _, _,21, _, _,14, _,10, _, _],
[21, _, _, _,23, _,18, 8,15, 6, _,17, _, 9,20, _, 3,24, _, _,11, _, _, 5,25],
[ _, 9, _, _, _,21, _, _, 2, 5, _,11, 1, 4,15, _,23, _,19,14, _, _, _, 7,20],
[ _, 1, _, _, _, 9,11, _, _, _, _,16,19, _, 8, _,10, _, 5,12, _, _, _, _, _],
[ _, _, _, _,12,25,20, _, _,19, _, _, _, _, 5, _,22, _, 7, _, 6, _,17, _, 3],
[ _, _,15, 7, _, _, 3, _, _,24, _, _,23, _, _,11, 8, _, _, _, _, 4, 2, 1, _],
[10,22, _, 8, _, _, _, _,25, _, _, _, 7, 1, _, _, 2, 6,23, _, _, _, 3,16, _],
[25, _, _, _, _,13, _, 2, _, 7, 8, _,24, _, _, 5,12,19, _,16,10, _,11,17, _],
[ 6, _, _, 4, _,15, _, _, _, 3, _, _, _,20, 9,10, _, _, 1, _, _, _,19, _,22],
[ _,18, 2, _,14, _, _, _, _, _, _,19,22, _,23, _, _, _,11, 9, 8, _, _,25, _],
[15,12, _, _, 7, _, _, 6, _,14,18, _,13, _,16, _, _, _, 3,17, 5, _, _,20,23],
[18, 8,23,24, _, 4,15, _, 9, _, _,13,11, _, _, _, _, 5, _, _, _, _, _, _, _],
[ 5, _, _, 1, _, _, _,16, 3, _,22,18,17, _,10, _, 9, _, _,23, _, _, _, _, _],
[20,16, _, 6, 2, _, _, 1, _, _, _, _, _,21, 3, _, _, _, _, _,18,19,14, _,15],
[ _, _, _, _,13, _, 6, _,10,12, 4, _, 9, _, _, _, _, _,24,21, _,17,25, _, _],
[ _, _,14,10, _, 5,24, _,21, _, 6, _, _, _, _, _, _, _,13, _, _, _, 9,23, _]].


% 
% This problem is problem 33 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(33,P,5) :-
 P = 
[
[ _,12,17, 3, _,21, _, _,13, 4,15, _, _,18, _, _, _, _, _, _, _, _, _, 1, _],
[16, _, _,20, _, _, _, _, _, 7, _,24, _, _, _, _, _, _, _,21, _, 4, 2,23, _],
[10, _,13, _, _, _, 5,24, 8,11, _, _, _, 3, 9,16, _, 4, _, _,18, _, _, _,21],
[ 1,14, 2,24,11, _, _, _, _,10, 8,23, _, _, 6,15,12,13, 9, _,17, _, _, _,16],
[18,23, _, _, 4, _, _, 3, _, _, _, _, _,19, _, _, 5,24,22, _, _, _, _, 9, _],
[ _, _, _,19,14,22,25, _, _, 9,16, 8, _, _,13, 7, _, _, _, _, _, _,11,10, _],
[11, _,22, 9, _, _,21, _, _, _, _, 6, _, _, _, 2, _,15,18, _,20,19, _, _, _],
[ _,21,23, _, 3, 8, 6,10, _, _,11,17, _, _, _, _,24, _,19, _, 2, _, _, 7, _],
[ 7,10, 6, _, _, 2, _, _, 3,23, _, _, _, _, _, 4,20,25, _, _,16, 8,17,18,12],
[ _, 1, _, _, _, _, _,19, _,12,20, 3, _, _, _, _,17,11, _, _, 5,21, 4, _, _],
[ _,17, _, _, _, _, _, _,25, _,18, _, 5, 7, _, _, _, _,16, _, _, 2, 1,11, 4],
[ _, _, _, _, 7, _, _, _, _, _,14,25, 1, _, _, _, _, 3, _, 2, _, _,10, _, _],
[ _, 5, 9, _, 1,15,18, _,21, 8, _,22,19,16, _,11, _, _,10,17, _, _, _, _,14],
[23,18, _, _,13, _, _, _, _,24, 3,20, _, _,10, _,25, 9, _, _, 8,15, _, _, _],
[ _,24, _, _, _, _,10, _, _,14, 2, _, 8, _,17,23, _,19, 7, _,25, _, _, _, _],
[ _,22,12, _, _,25, _, _, _, _,17, 2, _, _, _,10, 7, _, _,18,13, _, _, _, 1],
[ _, 6, _, _, _, _, _,22, _,19, _, 1, 4, _,11,13,16, _, 3, _,24, 9,15, 2, _],
[ _, _, _, _, _, _, _,12,16, _, _, _, _, _, _, _, _, _, 4, _, _, _,22, _, _],
[17,13,21, _, _, _, 8,23, 7, _, _, _, _, _, _, _,15,20, 2,12, _,14, _, _,11],
[ _, _,20,25, 2,18, _,15, _, 3, _, _, _,23, 7,19, _,14, _, 6, _, _,21, 8, 5],
[13, _,14, _, _, _,12, _, 4, _, 7,11, _, _,18, _, _, _, _,10, _, 1, _, _,22],
[19, _, _,22, _, _, 7, _, _,13, _,10, _, _, 4, _, _, _,24,23,11,16, _, _, 2],
[ 9, _, 7, _, 6, _, _,20, _, _,25, _, _,24, _, _, _, _,13, _, _, _, 8, _, _],
[ _, 2,18,23, _, _,16,14, 1, _,13, _, _, 8, _, _, _,22,20, _,12,25,19,17, _],
[15,16, _, _, 8,11, _, 2, _,21, _, _,20,17, _, _, _, _, _, 1, _, 5,14, _, _]].


% 
% This problem is problem 34 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(34,P,4) :-
 P = 
[
[13, 9, 2, _, _, _, _, _,16, _, _, _, 4, 3, _, _],
[ 4,12,15, _, _, _, _, _, 9,13, _, 2, _, 6,14,11],
[ _,14, _, 1, _, _, _, _,15, _, 8,11,12, _, _,10],
[16, 5, 6, _, _, _, _, _,10, 3,12, _, _, _, _, 1],
[ _, 7,16, 5,10, 8, _, _, _, _, 6, 1, _, _, _, _],
[ 2, _, _, _,12, _, _, _, _,11, 7, _, _, _, _, _],
[ _, _,10,14, _, 9, 6, 4, _, _,16, _, _, _, _, _],
[ _,15, 9, _, 5, _, 7, _, 4, _, _, _, _, _, _, _],
[ _, _, _, _, _, 2, 9, _, _, _, _,10, _,12, _, _],
[ _, _, _, _, _, _, _, _, 6, 4, 5,13, _, 1, _, _],
[ _, _, _, _,13, _, _, _, _, 1, _,12, _,11, 7,15],
[ _, _, _, _, _,14, _,12, 2,16, _, _, _, 8,10, 9],
[11, _, _, 9, _,16, 5, 2, _, _, _, _, _,14,15, 6],
[ _, 2, 5, 6, _, _,15, _, _, _, _, _,13, _,11, _],
[14, 1, 3, _, 6, _,13, _, _, _, _, _, _, _, _, 7],
[10, _, _, _, 8,11,12, 3, _, _, _, _, 9, 5, 4, _]].


% 
% This problem is problem 35 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(35,P,4) :-
 P = 
[
[ _,13,16, 1, _,12, _,11,14, _, _, 3, _, 4, _,10],
[ _, _, 7,11, _, 6, 2, _, _, 4, 1, _, _, _, 5, 9],
[ _, _, _, _, _, _, _,13, _, _, _, _, _,16, _, _],
[ _, _, 4, 9, _, 7, _, 3, _,11, 6, _, _,15,13, _],
[ _, 9, _, _,16, _, _, _,12, _, _, _, _, _, _, 4],
[16, _, _, 4, 6, _, _, _, _, 9,15, _, 3, _,11, _],
[ _,12, 5, _, 1, _, _, _,11,14, _, 8, 6, _, _,16],
[ _,11, _, _, _, _, _,14, 2,16, _, _, _,13, _, _],
[ _, _, 3, _, _, _, 5, 9, 6, _, _, _, _, _, 1, _],
[15, _, _,12, 2, _, 7, 6, _, _, _,11, _,14, 3, _],
[ _, 1, _, 8, _, 4,13, _, _, _, _, 7,15, _, _, 5],
[14, _, _, _, _, _, _,15, _, _, _,13, _, _, 9, _],
[ _,10,11, _, _,15,16, _, 1, _, 3, _,12, 8, _, _],
[ _, _, 2, _, _, _, _, _,15, _, _, _, _, _, _, _],
[ 8,15, _, _, _,11,12, _, _, 6, 2, _, 9, 7, _, _],
[ 1, _, 6, _,10, _, _, 5, 9, _,12, _,16,11, 2, _]].


% 
% This problem is problem 36 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(36,P,4) :-
 P = 
[
[ _, _, _, _, _,13, _, 3, _, _, 7,15, _,10, _, _],
[ _, _, _,11, 1, _,15, 8, _, _, _, _, 2, 6, _, _],
[ _,15, _, 3, _, _, _, 6,13, _, _,10,12, _, _, _],
[10,16,12, _, 9, _, 5, _, _, 8, _, _, _, _,11,13],
[14, _,15,16, 5, _, _, _, 7, _, _, _,10, _, 9, _],
[ 2, _, 7, _, _, _, _, _, 8, 9,10, 3, 6, _,15, 5],
[ _, _, _, 1, _, 9, _, _, _,12,11,14, _, _, _, _],
[ _, 3, _, _, _, _,10, _, _, _, _, _,11,16, 2, _],
[ _, 1,11, 2, _, _, _, _, _, 7, _, _, _, _, 6, _],
[ _, _, _, _,11, 1, 6, _, _, _, 3, _, 9, _, _, _],
[ 5,13, _, 4,15, 3,14,10, _, _, _, _, _, 2, _,11],
[ _,14, _,10, _, _, _, 9, _, _, _,13, 8, 3, _,12],
[ 4,10, _, _, _, _,11, _, _,14, _, 8, _,15,12, 9],
[ _, _, _,14,10, _, _,16, 1, _, _, _,13, _, 4, _],
[ _, _,16,12, _, _, _, _,15,13, _,11, 1, _, _, _],
[ _, _,13, _, 4, 7, _, _, 6, _,12, _, _, _, _, _]].


% 
% This problem is problem 37 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(37,P,4) :-
 P = 
[
[ _, _, _, _, 9, _, _, _, 5, _, _, _, 3,11, _, _],
[ _, _, _,13, 1, 3, _, 7, _, 4, _, _, _, _, _,15],
[ 6, 3, 7, _, _, _, 2, _, _, 8, 1,10,12, 9, _, _],
[ _, 2,16, _, _, 5, _, _, _, _, _, _, _, 1, 8,13],
[ _, _, _,15, 4, _, _, _, 3, _, _, _, 8,12, _, _],
[14, _,13, _, 7, _, _, 6, _, _,16, _, _, _,10, 5],
[12, 5, _, 6, _, _, 3, _, _, _, _,15, _, 2, _, _],
[ 4, _,10, _, _, _, 1,13, 7, 2, _, 9, _, _,11, _],
[ _,14, _, _,13, _, 9,12,10, 6, _, _, _,15, _, 1],
[ _, _, 9, _, 5, _, _, _, _,14, _, _,13, _, 2, 6],
[11, 6, _, _, _, 4, _, _,13, _, _, 5, _, 7, _,10],
[ _, _,15, 4, _, _, _,10, _, _, _,12, 9, _, _, _],
[10,11, 4, _, _, _, _, _, _, _, 2, _, _,16, 6, _],
[ _, _, 6, 8,15,11,13, _, _, 5, _, _, _,10, 4, 7],
[ 1, _, _, _, _, _, 6, _, 9, _,14, 4,11, _, _, _],
[ _, _, 3, 2, _, _, _, 5, _, _, _,11, _, _, _, _]].


% 
% This problem is problem 38 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(38,P,4) :-
 P = 
[
[ _, _, 1, 6, _,14, _, 8, _,11,15, _, 4, _, _, _],
[ _, 5, _, _, _, 9,13, _, _, _, _, _, _,10, 7, 3],
[ _, _, 3, _, _, _,11, _, 7, 8, _,13, _, 6, _, _],
[ _, _, _, _, _, _, 1, _, _, _, 9, _, _, _,11,14],
[12, _, _, 1,13, _, _, 6,11, 5, _, _, 7, _,10, 4],
[ _, _, _, 5, _,15, _, 9, 8, _, _, 3, 2, _,13,16],
[ 3, _, _, _, _, _,12, _, _,13, _,10, 5, _,14, _],
[ _, _, _, _, 3,11, 5, _,15, 7, _, _, _, 9, _, _],
[ _, _, 5, _, _, _, 6,12, _, 2,10,14, _, _, _, _],
[ _, 3, _,11,14, _, 2, _, _, 4, _, _, _, _, _, 9],
[15, 9, _, 2,10, _, _,11, 5, _, 7, _,16, _, _, _],
[14,10, _,16, _, _, 7, 5, 6, _, _,11,13, _, _, 1],
[ 6,12, _, _, _, 8, _, _, _, 9, _, _, _, _, _, _],
[ _, _, 9, _, 6, _, 4, 7, _,14, _, _, _,13, _, _],
[ 2,16,14, _, _, _, _, _, _,12, 6, _, _, _,15, _],
[ _, _, _, 3, _,12,16, _, 2, _,13, _, 6, 5, _, _]].


% 
% This problem is problem 39 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(39,P,4) :-
 P = 
[
[ _, _, _, _, _,13, 5, _, _, 7, _, 1, 6, 9, _, _],
[ _, _, 4, _, _, 2,11,14, 8, _,16, _, _,10, _, _],
[ 8,13,10, _, _, _, _, 7, 5, 2, _, _,11,16,15, _],
[16, _, 9,14,10, _, 8, 6, _, _, 3,15, 2, _, _, _],
[12, _, _, 4,16, 1, _, _, _, _, _, 7,15, _, _, _],
[ _,16, _,10, _, _, _, 3, 1, 5, _, 6, _, _,12, 8],
[14, _, 5, _, _,15, 7, _, 4,16, _, _, 1, _,10, 2],
[ _, 9, 1, _, _,11,14, _, _, _,13, _, 5, 4,16, _],
[ _, 6, 8,13, _, 3, _, _, _,12, 5, _, _,11, 9, _],
[ 4,14, _, 5, _, _, 9,11, _, 3, 1, _, _,15, _,16],
[ 3,11, _, _,14, _,16, 1,10, _, _, _,12, _, 4, _],
[ _, _, _, 9, 5, _, _, _, _, _,15, 8, 3, _, _, 7],
[ _, _, _,12, 9,16, _, _,15, 1, _, 5,13, 8, _,11],
[ _, 4, 6, 8, _, _,13,15,12, _, _, _, _, 3,14, 5],
[ _, _, 2, _, _,14, _,10, 7,13,11, _, _,12, _, _],
[ _, _,14,15,11, _, 3, _, _, 8, 6, _, _, _, _, _]].


% 
% This problem is problem 40 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(40,P,4) :-
 P = 
[
[ _,11,12, _, _, 3, 2, _, _, _, 9, _, _,13, _, _],
[ _, 3, _, _,12,11, _, _, _, 5, 2,10, _, 9,14, 4],
[ 7,14, _,10, _, _, _,13, 8, _, 6,11, 2, _, _, 5],
[ _, _, 9,15, _, _,10, _,13,12, 7, _,11, 6, _, _],
[ _, 1, 5, _, _, 2, _,14, _, _, 3, _, _, _, 4, _],
[ 4,16,13, 8, 1, _, 3,12, _, _, _, 7, _, _, 6,15],
[ _,12, _, 9, _, _, _, _,14, _, 4, _,16, _, _, 1],
[ _, _,14, 3, _, _, 5, 9,16, _,15,13, _,11, _, _],
[ _, _,10, _, 2,14, _,15,12, 9, _, _, 8, 4, _, _],
[11, _, _,14, _, 9, _, 4, _, _, _, _,15, _,10, _],
[ 1, 6, _, _,10, _, _, _, 5, 7, _,15, 3,14, 9,11],
[ _, 9, _, _, _, 6, _, _, 4, _,14, _, _, 7,16, _],
[ _, _, 6, 4, _,12, 8, 5, _, 2, _, _,13,10, _, _],
[14, _, _,13,11, 1, _, 2, 3, _, _, _, 6, _, 5, 9],
[12, 5,16, _, 9,13, 4, _, _, _, 1,14, _, _, 2, _],
[ _, _, 2, _, _,15, _, _, _,13,10, _, _,12,11, _]].


% 
% This problem is problem 41 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(41,P,4) :-
 P = 
[
[16, _,14, 3, 7, _, _, 1, _, _, _, _, _, 6, _, _],
[ 9, 6, _, _,14, _, _, 3, _, _,16, 5,13, _,15, _],
[ _, 7, _, _, 6, 4, _,12,15, 3, 1, _, _, 2, 9,14],
[ _, _, _, _,15, _, _, _, 8, _, 9,14, 4, 3, 7, _],
[ 6,10,15, _, _, _,13, _, 3, _, _, 1, _, _, _, _],
[ _, _, 1, _, _, _,11, 5, _, 8,15, 4, 7, _, _, 3],
[ _, 8, 3,11, 2, _, 4, 7, _,16, _, _, _, _, 6, 1],
[ _, _, 7, 9, _, 6, _, _, _,14,12, _, _, 8, _,16],
[14, _,12, _, _, 2,10, _, _, _, 8, _,15,16, _, _],
[ 2, 5, _, _, _, _,12, _,16,10, _, 7, 8,11, 4, _],
[ 7, _, _,10,13, 3,15, _, 2, 4, _, _, _,14, _, _],
[ _, _, _, _,16, _, _,11, _, 1, _, _, _,12, 5, 2],
[ _, 4,10, 2,11, 5, _,13, _, _, _, 8, _, _, _, _],
[15,14, 8, _, _,16, 2,10, 1, _, 7, 3, _, _,12, _],
[ _,12, _, 7, 8,15, _, _, 4, _, _, 2, _, _,14, 5],
[ _, _, 9, _, _, _, _, _,14, _, _,16, 3, 4, _, 8]].


% 
% This problem is problem 42 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(42,P,4) :-
 P = 
[
[ _,16, _, 4, _, _, 1,14, 6, _, 9, _, _, _, 2, _],
[ _,13, _, _, 4,16, _,12, _, _, _, _, _, 9,15, 7],
[ _, _, 7, 9, _,13, _, _, _, 5,12, _,11, _,16, _],
[ _,14,15,12, 7, _, _, _,16, _, _,13, _, 5, _, 3],
[ 5, _, _, _,12, _, _, _,14, 6,11,15,13, _, _, _],
[ _, _, _, 1, _, _, _, 5, _, _,13, _,12,11, _, 2],
[ 7, _,12,16, 2, 9, _,13, 3, _, _, _,14, 8, _,15],
[ 9, 4, _, _, _,14,16,11, _, 2, _,12, _, _, _, _],
[ _, _, _, _,14, _, 2, _, 5, 8, 3, _, _, _,12,13],
[ 3, _,13, 5, _, _, _, 8, 9, _,15,11, 7,16, _,14],
[ 4, _, 1,14, _,15, _, _,10, _, _, _, 3, _, _, _],
[ _, _, _,15, 1,11, 3,16, _, _, _,14, _, _, _, 9],
[15, _, 9, _, 8, _, _, 1, _, _, _,16, 2, 3,13, _],
[ _,10, _,11, _, 4,13, _, _, _, 7, _, 5,15, _, _],
[ 8,12,14, _, _, _, _, _, 1, _, 2, 5, _, _, 7, _],
[ _, 7, _, _, _, 5, _, 3,15, 9, _, _,16, _, 8, _]].


% 
% This problem is problem 43 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(43,P,4) :-
 P = 
[
[ _, _, _, 4, _, 1, _, 9, _, _, 7, _, _, _,11, 5],
[ 6,14, _, _, 2, _, 8, _, _, _, _,12,16,10, _, _],
[ _, 5, 1, _, _, _, _,11, _,13, _, _, _, _, 6, _],
[11, _, 9, _, _,14, _, _,16, _, _,10, _, _, _, 7],
[ _, _, 7, _, 5,15, 9,16, _, _, 4, 8, _, _, _, _],
[ _, _, 2, 9, _, _, 3, _, _,15, _, _, 5, _, 7, _],
[16, _,11,13, _, _, _, 8, 3, 7, _,14, _, _, 9, 4],
[ _, _, _, _, _, _, 7,14, _, 1, _, 6,10, 2,16, 3],
[ 9, 4,16,10, 7, _, 2, _, 6, 3, _, _, _, _, _, _],
[ 5,11, _, _,10, _,14, 1, 8, _, _, _, 7, 9, _, 2],
[ _, 1, _, 8, _, _, 6, _, _, 4, _, _,11,13, _, _],
[ _, _, _, _,16, 8, _, _,14,11, 9, 2, _, 4, _, _],
[13, _, _, _, 9, _, _,10, _, _, 1, _, _,16, _, 6],
[ _, 3, _, _, _, _, 4, _,12, _, _, _, _, 1,14, _],
[ _, _, 4,11, 6, _, _, _, _,14, _, 7, _, _, 2,10],
[15, 9, _, _, _, 5, _, _,10, _, 3, _, 4, _, _, _]].


% 
% This problem is problem 44 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(44,P,4) :-
 P = 
[
[ _,16, _, _, 5, _, 2, _,14, _,15,10, _, 4,12, _],
[10,11, _, _,16, _, _, _, _, 3, 5, _, 1, 7,13, 9],
[ 5, 3, _, _, 4,10,12, _, _,13,11, _, _, _, _, _],
[ _, 6, _,12, 3,11, _, _, 2, _, 8, _, 5, _, _, _],
[ 1, _, _, _,10, _, _, _, _,14, _,13, 9,12,16, 3],
[16,13,10, 9, _, 4, _, _,11, _, 1, _, 6,14, _, _],
[ _,15,11, _, 1, _, _,14, 9, _, _, _, _,13, _, 8],
[12, _, _, 3, _, 5, 9,16, 4, 8, _, _, _, _, _, _],
[ _, _, _, _, _, _,15, 3, 8,16, 2, _, 7, _, _, 4],
[ 6, _, 3, _, _, _, _,10, 7, _, _, 9, _, 8,14, _],
[ _, _,12,14, _, 9, _, 1, _, _, 4, _,13,16, 3, 5],
[ 8, 9,16,13, 2, _, 4, _, _, _, _, 6, _, _, _,12],
[ _, _, _,16, _,12, _, 4, _, _, 9, 5, 8, _, 7, _],
[ _, _, _, _, _, 1,10, _, _,15, 7, 8, _, _, 4, 2],
[ 4, 8, 7, 1, _, 3,16, _, _, _, _, 2, _, _, 9,10],
[ _,12, 9, _, 7, 2, _, 8, _, 6, _, 4, _, _, 1, _]].


% 
% This problem is problem 45 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(45,P,4) :-
 P = 
[
[10, _, _, _, 1, 8, _, _, 7, 9, _, _,12, _, _, 6],
[ _, 3, 7, _,10, 2, _, _, _,15,13, _, _, _,14, 9],
[16, 1, 4,13, _, _, 5, _, _, _, 8,12, _,10, _, _],
[ _, 2, 6, 8, _,14, 7, _, 3,10, _, _, _, _,13, 5],
[ 3, _, _, _,13, 1, _, _, _, 7,10, 2, _, 8, _, 4],
[ 7,12,15, _, 9, _, _, 4, _, _, _, _,13, _, 2, _],
[ 5, _, _, 6, 3, _,10, 2, 8, _, _, _, 1,12,15, _],
[ _, _, _, 1, _, 6, _, _, _, 3,15,13, _, _, 5, _],
[ _,10, _, _,15,12, 6, _, _, _, 9, _, 3, _, _, _],
[ _,13, 2,15, _, _, _, 3,10, 5, _, 1,14, _, _, 8],
[ _, 9, _,16, _, _, _, _,13, _, _, 7, _,15, 1,12],
[14, _,12, _,16, 9,13, _, _, _, 3,15, _, _, _, 7],
[ 1, 7, _, _, _, _, 9,11, _, 2,14, _, 4, 3,12, _],
[ _, _, 9, _,14, 3, _, _, _,12, _, _, 5,13, 7,15],
[15,14, _, _, _,10,12, _, _, _,16, 5, _, 2, 9, _],
[13, _, _,12, _, _, 2,15, _, _, 7, 3, _, _, _,14]].


% 
% This problem is problem 46 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(46,P,4) :-
 P = 
[
[ 3, _, 8, _,11,13, _, _, 5,15, 7, 2,14, _, _, 6],
[ _, _,16, _, _, 4, _, 7,14, _, _, 6,15, 5, _, _],
[ _,10,15, _, 2, _, _,12, _, _, _, _, 9,16, 7, 3],
[ 5, 9,12, _, _, _,15,14, _,10,16, _, _, _, _, _],
[12, 5, _, _, 1, _, _,15, _, 4, _,16, _,14, _, 7],
[15, _, _, 2, _,12, _, _,11, 1, 3, _, _, _,16,13],
[ 4, _, _,11, 7, 3, _,13, _, _, _, _,12, _, _, _],
[16,13, _, _, _,10, _, _, _,12, _, 7,11, 4, 8, _],
[ _,16, 5,15,13, _, 3, _, _, _, 9, _, _, _,11,14],
[ _, _, _,12, _, _, _, _, 6, _,14, 1,16, _, _, 9],
[ 2, 8, _, _, _, 7,14, 1, _, _,11, _, 6, _, _, 4],
[ 1, _,11, _, 5, _,12, _, 3, _, _, 8, _, _,10,15],
[ _, _, _, _, _,14,13, _, 1, 6, _, _, _, 3, 4, 5],
[ 9,12, 2, 1, _, _, _, _, 7, _, _,10, _, 8,14, _],
[ _, _,14,10, 9, _, _, 3,15, _, 8, _, _, 7, _, _],
[ 6, _, _, 5, 8, 2, 7,10, _, _, 4,13, _,15, _,12]].


% 
% This problem is problem 47 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(47,P,4) :-
 P = 
[
[ 1, _, _, _, _, _, 6,12, _, 4,16, _, 9,11,10, _],
[ _,16, 6, _, _,15, _, 9,10, _,13, 1, _, _, _, 2],
[ _, _, _,13, 7,16, _, 3,15, _, _, _, 4, 1, _, _],
[ _, 3,10, _, 2, _, _, 1, _, 7, 5, 9, _,14, _,16],
[11, 8, _, _,13, _,15, _,12, _, 2, _,10, _, _, _],
[12, _, _, _, _, 1, _, _,13,11,15,10, 2, _, _, 5],
[ _, _,15,16, _,14, _, _, _, _, _, 5, 8,12, 9, _],
[ _, 2, 5,10, 3, _,12, _,16, _, _,14, _, _, _, 1],
[ 3, _, _, _, 4, _, _,11, _,16, _,13,14, 7, 8, _],
[ _,12, 7, 8,10, _, _, _, _, _, 3, _, 1, 2, _, _],
[ 5, _, _, 1,15,12, 3, 7, _, _,14, _, _, _, _, 9],
[ _, _, _, 4, _, 2, _, 8, _,15, _,11, _, _,12,10],
[10, _, 4, _, 6,11, 7, _, 5, _, _,15, _, 9,13, _],
[ _, _, 8,12, _, _, _,13,11, _, 9, 7, 5, _, _, _],
[ 9, _, _, _, 8, 5, _,14, 3, _,10, _, _, 4, 6, _],
[ _, 5,13, 7, _,10, 9, _,14, 2, _, _, _, _, _, 8]].


% 
% This problem is problem 48 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(48,P,4) :-
 P = 
[
[ _, _,13, _, 2, _, _, _, 5,10, 1, _, _, _, _,15],
[14, 2, 1,15, _, _, 9, _, _, 6, _,13, _, _, _,16],
[ 7,10, _, 9,16, 1, _, _, 2,14, _, 4,13, _, _, 8],
[ _,11, 6, 4, _, 3,15,10, _, _, _, 8, _,14, _, 2],
[ _, _, _, 3, _, _, _,15, _, _, _,16, 2,10, _, _],
[ _,15, 7, _, _, _, 5, _, 8,13, 4, _,11, _, 3, _],
[ 4, _, _, _, _,12, _, _, _, _, _,15, 8, _,13, 1],
[ _,16, _, _, _, _,11, 3,10, 2, _, _, _, _, _, 6],
[ 3, _, _, _, _, _, 4,12,15, 8, _, _, _, _, 6, _],
[ 9, 4, _,11, 1, _, _, _, _, _,13, _, _, _, _,14],
[ _,12, _,10, _,14, 8,13, _,11, _, _, _, 1, 5, _],
[ _, _,16, 8,11, _, _, _, 1, _, _, _,12, _, _, _],
[11, _,10, _, 8, _, _, _, 6,15, 2, _, 3,13,14, _],
[ 2, _, _, 1, 6, _,14, 5, _, _,10, 3, 9, _, 8, 4],
[ 6, _, _, _, 9, _, 3, _, _, 5, _, _, 1,12, 2,11],
[ 8, _, _, _, _,13, 1, 2, _, _, _, 9, _, 6, _, _]].


% 
% This problem is problem 49 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(49,P,4) :-
 P = 
[
[ 3, _, _, _, _, 2,10, _, 4,15, _, 6, _, _,16, 1],
[10,13,15, 4, _, _, 3, _, _, 5, _, _, _, _,14, _],
[ _, _, 5,16, _, _, 1,14, _, _, _, _,15,10,11, _],
[ _, _,14, _,16,15, 7, 5, _, _,11, _, _, 9, 3, _],
[11, _, _, _, 1, 7, _, _, _,10, 6, 2, 9, _, _, _],
[ _, _, _,14,15,16, _, _, 7, _, 5, 1, 6, _, _,12],
[ 6, 3, _, _,13, _, _, _,16, _, _, _,14, 4, 2,15],
[ 2, _, _, _, _, 8, 6, 3, 9, _, _, _, 1,16, _, _],
[ _, _,11, 8, _, _, _, 7, 6,16, 2, _, _, _, _,14],
[ 5,12, 3, 2, _, _, _, 4, _, _, _,14, _, _, 1,16],
[16, _, _, 6, 2,14, _, 9, _, _,13, 4,11, _, _, _],
[ _, _, _,13, 5,12,16, _, _, _,10, 3, _, _, _, 7],
[ _,16, 7, _, _, 5, _, _, 8, 4,15, 9, _,11, _, _],
[ _,15, 6,11, _, _, _, _, 5,14, _, _, 2, 1, _, _],
[ _, 5, _, _, _, _,11, _, _, 6, _, _, 7,14,15, 9],
[14, 4, _, _,10, _, 9,15, _,11,12, _, _, _, _, 5]].


% 
% This problem is problem 50 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(50,P,4) :-
 P = 
[
[11, _, _, _, _, _, _, _, _, 4, 5,13,12, _, 6,10],
[ 4, _,15, _, _, _, 6, 3, 9, _,12,10, _,14, _, _],
[ _, 9,10, _, _, _,12,13, 2, 6, _, 8,15, 1,11, _],
[ 6, _,12, 3, _, 7, _, 8, _,15, _, _, 9, _, _, _],
[13, 6, 8, _,14, _, _,11, _, _, _, 5, _, _, _, _],
[ 7, 3, _, _, _, 8,10, 5, _, _, 9, _, 2, _, _, _],
[10, _,16, 1, _, _, 9, _, _, 2, 6, _, _,13, 8, _],
[ _,12, 9, _, _, _, _, _, _, _, 8, 1,10, 6,14, _],
[ _, 5, 7, 4,15,10, _, _, _, _, _, _, _,16, 1, _],
[ _,10,13, _, _, 3, 7, _, _,16, _, _, 4,15, _,14],
[ _, _, _, 9, _,16, _, _, 4, 5, 2, _, _, _,12,13],
[ _, _, _, _,11, _, _, _,15, _, _, 9, _, 7, 2, 5],
[ _, _, _,11, _, _,16, _,12, _,15, _, 1, 2, _, 9],
[ _, 1, 6,10,12, _, 5,15,16, 3, _, _, _, 8,13, _],
[ _, _, 2, _, 3, 6, _, 7, 5, 9, _, _, _,12, _,15],
[15, 8, _,12, 1, 9, 4, _, _, _, _, _, _, _, _, 6]].


% 
% This problem is problem 51 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(51,P,4) :-
 P = 
[
[12, _, _,11, 6, 1, _, _,16, _, _, _,15, _,10,14],
[ 4,14, 8,15, _, _, _,10, _, _, _, _, _,13,16, _],
[ _,13, _, _,15, 3, _,14, 1, _, 5,10, _, _, 6, _],
[ 5, _, _, _, _, _,16,11,14, 9,15,12, _, _, 8, 2],
[ _, _, 5,14,11, _,13, 8, _, _, _, 1, _,15, _, 6],
[ _, _,10,13, _, 7, 2, _, _, _, 6, _, _, 3, _, 8],
[ _, _, _, 3, _, _,14, _, 9,15,11, 8, 5, _, _, _],
[ 6, _,11, 4, _, _, 1, _, _, _, _, 2,12,10,14, _],
[ _, 3,14, 9,12, _, _, _, _,16, _, _,13, 1, _, 7],
[ _, _, _,12,14,16, 3,13, _, 7, _, _,10, _, _, _],
[10, _,15, _, _,11, _, _, _,12,13, _,14,16, _, _],
[13, _, 7, _, 1, _, _, _,11, 2, _, 3, 4, 8, _, _],
[15,16, _, _, 8,14,11, 1, 7,10, _, _, _, _, _, 3],
[ _, 4, _, _,13, 6, _,16, 3, _,12,14, _, _, 5, _],
[ _, 6, 2, _, _, _, _, _,13, _, _, _, 7, 4,12,10],
[ 3,11, _,10, _, _, _, 4, _, _, 9,15, 8, _, _,16]].


% 
% This problem is problem 52 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(52,P,4) :-
 P = 
[
[ _, _, _,14, _, 6,13,11, _, _, _, 2, _, 8, _, _],
[ _, _, _, _, 5,16, _, 3, _, 9,15, 8,12, 1, _, _],
[ 9, 8, 1, _, _, _, _,15,16, _, _, _, _, 7, _, _],
[ _, 3, _,15, 8, _, _, _, _, 6, 5, _, 2, _, _, 9],
[ 3,16, _, _, _, _, 4,10, 5,13, _, _, 7, _,15, _],
[ _,10, _,13, _, _, _, 2, _, _, _, _, _, _, 6, 4],
[ _, 2, _, 4,12, _,15, _, _,10, _,16, _, _, _, 3],
[ _, _,15, _,13, _, _, _, _, _, 6,12, _, 2, 1,14],
[ 1,15, 9, _,11, 2, _, _, _, _, _,14, _,13, _, _],
[ 4, _, _, _,14, _, 3, _, _,11, _,13,15, _, 2, _],
[ 5,14, _, _, _, _, _, _, 9, _, _, _, 3, _,12, _],
[ _,13, _, 3, _, _, 8, 1, 4, 2, _, _, _, _, 5,10],
[ 2, _, _, 5, _,13, 6, _, _, _, _,15, 1, _,10, _],
[ _, _, 4, _, _, _, _, 8, 6, _, _, _, _,14,13,16],
[ _, _, 3,12,16,15,11, _,14, _,13,10, _, _, _, _],
[ _, _,16, _, 3, _, _, _, 2, 7, 9, _, 6, _, _, _]].


% 
% This problem is problem 53 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(53,P,4) :-
 P = 
[
[ 3, _, _, _, _, 1,16, _, _, 5, _, 7, _,10, 4, _],
[15,14, 7,12, _, 3, _, 9, _, _, _, _, _, _, _,16],
[ _, 8, _, _, _, _, _, 5,13, 9,16, _,12, _, _, 3],
[ 5,16, _,10, 6, _, _, _, _, 3, 8, _,15,13, 7, _],
[ _, _, _, 5,16, _, 9, 4, _, 8, _, 2, 7,12, _, _],
[ _, 9, 8, _,14, _, 5,12, _,16, _, _, _, _, _, _],
[ 4, _, _, _, _, 7, _, 2, 5, _,12,11, _, 6, _,10],
[ 2,10, _,15, _, _, _, _, _, _, _, 6, _, 5,16, _],
[ _,15, 3, _, 5, _, _, _, _, _, _, _, 4, _,13,11],
[12, _,11, _, 9, 8, _,10,15, _, 7, _, _, _, _, 6],
[ _, _, _, _, _, _, 6, _, 2,13, _,12, _, 9,14, _],
[ _, _, 6,16, 4, _,11, _, 8, 1, _, 9,10, _, _, _],
[ _,13, 5, 3, _,12, 8, _, _, _, _,14, 6, _, 9, 7],
[10, _, _, 2, _,13, 4, 6, 7, _, _, _, _, _, 5, _],
[ 8, _, _, _, _, _, _, _, 4, _, 9, _, 3, 2,11, 1],
[ _, 4,15, _, 2, _, 3, _, _, 6, 1, _, _, _, _,12]].


% 
% This problem is problem 54 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(54,P,4) :-
 P = 
[
[ _, _,14, 3, _, 7, _, 1, _, 5, _, 6, _,11, _, _],
[ _, _, _, _,16, 8, 5,11, 9, 2, _,15,14, _, _, _],
[12, _, _, _, 4, _, 3, 6,10, _, _, _, _, _, _, 2],
[ _, 4, _,11,10, _, _, _, _, _, _,16, 7, _, _,12],
[ 4, 8, _, 2,14, _, _, _, 5,16, _, 9,10,13,11, _],
[ _, _, _, _, _,11, _, _, _,12, 4, _, _, _, 9,14],
[ 9,10, _, _,15, 4, 2, _,14, 1, _, _, _, 5,12, _],
[ _, 5,12, _, 7, _, 9,16, 8, _, _, _, _, 4, 1, 3],
[11,14, 8, _, _, _, _, 2, 6,10, _,12, _,16, 3, _],
[ _,15,13, _, _, _, 7,14, _, 9, 3, 1, _, _, 5, 6],
[10,12, _, _, _,16, 6, _, _, _, 2, _, _, _, _, _],
[ _, 1, 3, 6, 9, _, 8, 5, _, _, _,11,13, _,10, 7],
[14, _, _,10, 6, _, _, _, _, _, _, 5,12, _, 7, _],
[ 3, _, _, _, _, _, _,10, 7,15, _,14, _, _, _, 5],
[ _, _, _, 5, 1, _,16, 7,12,13,10, 2, _, _, _, _],
[ _, _,16, _,12, _,11, _, 3, _, 1, _, 9,10, _, _]].


% 
% This problem is problem 55 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(55,P,4) :-
 P = 
[
[16, _, _,11, _, _, 1, 2, _, _, _, _, 7, 3, _,12],
[ _, _, 8,13,11, _, 7,12,16, 9,10, _, _, _, _, _],
[ 6, _, 3, _, _, _,13, _, _, _, 4,14, _, 8,11, _],
[ 4, _, _, _, 3, 8,16, _, 2, 1, _, _, _, _,10,13],
[ _, _,15, _, _, _, _, _, _, _, _, _,14, _, 6, _],
[ _,14, 6, _, _, 7, 5,13,15,16, 3, _,11, _, _, _],
[ _, 7, _,16, _,15, 9, 1, 6,14,11, _, 4, 5, 8, 3],
[ _,11, _, 3, _,14, 2, _, _, 8, 9, _, _, _,15, 1],
[ 7, 4, _, _, _, 3,14, _, _, 6, 2, _, 5, _, 1, _],
[ 9, 8, 5, 2, _,12,11, 7,13,15,14, _, 3, _,16, _],
[ _, _, _,10, _, 5, 6,15, 4, 3, 1, _, _,12, 9, _],
[ _,15, _, 6, _, _, _, _, _, _, _, _, _,14, _, _],
[12, 1, _, _, _, _,15, 4, _,11, 5,16, _, _, _,14],
[ _,13, 4, _,14,16, _, _, _, 2, _, _, _, 9, _, 8],
[ _, _, _, _, _,13, 8, 9, 7, 4, _, 1,12,10, _, _],
[11, _,10, 7, _, _, _, _,14,13, _, _,15, _, _, 4]].


% 
% This problem is problem 56 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(56,P,4) :-
 P = 
[
[ 7,11, _, _, 9,12, _, 3, _, _, 6, _,10, _, 2,14],
[ 4, _, 2, _, _, _, 6, 7,10, _, _, 5, 3, _, _,13],
[ _, _, _, _, _,10,13,14, _,12,11, _, 4, _, 5, _],
[10,13, 8, _, _, _, _,11, 7, _,15, _, _, _, _, _],
[ _,12, _, _, _, 1, _,10, _, 9, _, _, _, _, _, 8],
[15, _,14, 8, _, _, _,12, _, 4, _,13, _, 6, _, 2],
[ _, _,13, _, 5, 9, _, _, _, _, _, _, _, 1,10, _],
[ _, 1, _, 2, _, _, _, _, _, _, 7,15,11,13,12, 3],
[11,15, 6,14,12, 4, _, _, _, _, _, _, 2, _, 7, _],
[ _, 5, 3, _, _, _, _, _, _, _,12, 2, _,14, _, _],
[13, _,16, _, 2, _,10, _, 5, _, _, _,15, 3, _,12],
[ 2, _, _, _, _, _, 1, _,11, _, 3, _, _, _, 8, _],
[ _, _, _, _, _,15, _, 4, 3, _, _, _, _,12,13, 7],
[ _, 8, _,16, _,14, 7, _,12, 2, 5, _, _, _, _, _],
[12, _, _,13,16, _, _, 1,15, 7, _, _, _, 2, _,10],
[14, 7, _,10, _, 6, _, _, 9, _, 1, 8, _, _,11, 5]].


% 
% This problem is problem 57 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(57,P,4) :-
 P = 
[
[ _, 2, 1, _, _,11,13, _, _, _,14,15, 6,16, _, _],
[ _, _, 6, _, 5, _,15, _, _, _, _,13, _, 8, _,14],
[16, 4, _, _, _, _, _,14,11, _, 7, _, 1, _,13, 3],
[12, _,13, _, _, 3, 7,16, _, _, 6, 1, _, _, _, _],
[10,11, _,13, 8, _, _, 9, _, 1, _,14, _, _,15, _],
[ 6, _,15, 4, _, _,16, _, _,13, _, _, 8, _, _,11],
[ _, _, _, _,11,13, _, 1,15, _, 8, _, 7, _,12, 9],
[ _, _, 3, _, _, _, 6, _, _,16, _,11,14,13, _, _],
[ _, _,11, 9, 1, _,12, _, _,14, _, _, _,10, _, _],
[ 4, 7, _, 2, _, 6, _,10, 3, _, 1,16, _, _, _, _],
[ 8, _, _, 3, _, _,14, _, _,11, _, _,15, 1, _,16],
[ _, 1, _, _, 7, _, 3, _,13, _, _,12, 9, _, 2, 5],
[ _, _, _, _,16,15, _, _, 2, 8,11, _, _, 4, _,10],
[ 5,10, _, 8, _, 4, _,11, 1, _, _, _, _, _,16,15],
[13, _, 2, _,12, _, _, _, _,15, _, 6, _, 7, _, _],
[ _, _, 4, 1,13,10, _, _, _, 7,16, _, _,12, 9, _]].


% 
% This problem is problem 58 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(58,P,4) :-
 P = 
[
[ _,11, _, _, _, 7, _, _, 4,13, _, _,14, 1, 3, _],
[13, _, _, _, _, _, _, 6,16, _,14, 7, _, _, _,15],
[ 8, _, 6,15, _, _, _, _,11, _, _, _, _, 7, _, _],
[ 7, _, _, _, 9, 1,13, _, _,15, 8,12, _,11, _, _],
[ _,15, _,16, 8, _, 1, _, 3, _, _, 2, 7, _, _, _],
[ _, 1, _, 6, _, 4, 3, 2, 9, _, 7, _,15, _, _,13],
[ 3, _, _, 7, _, _, 5, _, _,16,11,13, 8, _, _, _],
[ 4, 8,13, _,12,14, _, _, _, _,10, _, _, _, 9, _],
[ _, 3, _, _, _,16, _, _, _, _,12, 4, _, 9,14,11],
[ _, _, _, 1, 4, 8,12, _, _, 3, _, _,10, _, _, 2],
[ 9, _, _, 4, _, 6, _, 7,15,10, 5, _,12, _,16, _],
[ _, _, _,14,15, _, _, 5, _, 1, _,11, 6, _,13, _],
[ _, _, 5, _,10,11,16, _, _, 7,15, 9, _, _, _, 6],
[ _, _, 3, _, _, _, _,15, _, _, _, _, 1, 8, _,14],
[16, _, _, _,14, 5, _, 3, 2, _, _, _, _, _, _, 9],
[ _, 6,15,11, _, _, 8, 9, _, _, 3, _, _, _,12, _]].


% 
% This problem is problem 59 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(59,P,4) :-
 P = 
[
[ _, _, _,15,13,10,14, _, _, 6, _, 1, _, 3,11, _],
[ 1, _, _,12, _, _, _, 9, _,13, 3, 4, _, 6, _, _],
[ 8,10, 3, _, 4, _, _, _, _, _, 2,14, 7,12, _, _],
[ _, _,13,16, _, 3, _, _, _, _, _, _, 8, _, 5,14],
[ 3,15, 2, _,12, _, _, _, _, _, 8,11, _, 5, _, 9],
[ _,13,14, _, 8, _, _,11, 2,12, _, _,10, _, _, 4],
[12, 8, _, _, _, 1, _, _, _, _, _, _, _, _, _, 6],
[ _, _, _, _, _,13, _, 3, 1, _, 5, _, _, _,14, _],
[ _,16, _, _, _,14, _, 8, 4, _,13, _, _, _, _, _],
[10, _, _, _, _, _, _, _, _, _, 1, _, _, _, 4, 3],
[13, _, _,14, _, _, 1, 7,12, _, _, 2, _,15,16, _],
[ 2, _, 5, _,10,15, _, _, _, _, _, 9, _,13, 7,11],
[ 7, 3, _, 2, _, _, _, _, _, _, 6, _,11, 4, _, _],
[ _, _, 4, 8, 3,11, _, _, _, _, _,13, _,10, 6, 1],
[ _, _,10, _, 1, 4,15, _,11, _, _, _, 5, _, _,12],
[ _, 1,12, _, 6, _,13, _, _, 2, 4,10, 9, _, _, _]].


% 
% This problem is problem 60 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(60,P,4) :-
 P = 
[
[ 4, _, 8,12,11, 9,16, _, _, _,13, _, _,15,10, 2],
[16, _, _, 1, 8, _, _,10, 9, 6, _, _, _,14, _, _],
[15, 9, _, _, _, _,14,13, _, _, 8, _, _, _, _,11],
[ _, _, _,13, 7, 3, _, _, _, 2,15, _,16, _, 8, 1],
[ _, _, _, _, _, _, _, 2, _, _, _, _,12, _,15, 9],
[ 3, _,13, 7, _,14, 6, _, _, _, 9, _, 4, _, _,10],
[ _,12, _, 4, _, _,13, 9, _,16,10, _, _, 3, _, 7],
[ _, 2, _, _, _, _, _, _, _, 7, _, 3, _, 6, 5, _],
[ _, 3,11, _, 5, _, 2, _, _, _, _, _, _, _,13, _],
[ 6, _, 4, _, _,16, 8, _,15,12, _, _,11, _, 2, _],
[14, _, _,16, _,11, _, _, _,13, 2, _, 1, 8, _,15],
[12,13, _, 2, _, _, _, _, 3, _, _, _, _, _, _, _],
[13, 1, _,11, _, 8,15, _, _, _,12, 9,14, _, _, _],
[ 2, _, _, _, _,13, _, _, 1,11, _, _, _, _,16, 5],
[ _, _, 5, _, _, _, 1, 7,13, _, _,16, 9, _, _,12],
[ 7,14, 9, _, _,12, _, _, _, 4, 6, 8,15,13, _, 3]].


% 
% This problem is problem 61 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(61,P,4) :-
 P = 
[
[13, _,11, _, 8, _, 4, _, _, 5,16, _, _, 2, _, 9],
[ _,12, _, _, 6, _, 3, _, _, _,13, 1, _, 7,11, _],
[16,14, 4, _,11, _, _, 5, 2,10, _, _,15,13, _,12],
[ _, _, 7, _, 2, _, _,14, _,15, 9, _, _, _, _, _],
[ _, 2, _, _, 4, _, _, _, _, 3, _,13, 9,16,14,15],
[ 4, 3, _, 7, _, _,10, _, _, 8, _, _, _, _, _, _],
[ 5, _,10,11,16,13, _,15, _, _, 1, _, _, _, 3, 7],
[ _, _,14, _, _, _, _, _, _, 7, _, _, 6,11, _, _],
[ _, _, 2,14, _, _,16, _, _, _, _, _, _, 3, _, _],
[12, 5, _, _, _,11, _, _,13, _,15, 9, 7, 1, _, 8],
[ _, _, _, _, _, _, 5, _, _, 2, _, _,12, _,16,14],
[ 3, 4, 8,16,13, _,12, _, _, _, _, 7, _, _, 5, _],
[ _, _, _, _, _, 9, 1, _, 8, _, _,15, _, 6, _, _],
[ 1, _,16, 2, _, _,15, 6, 5, _, _,14, _, 8, 9,11],
[ _, 8,12, _, 5, 4, _, _, _, 1, _,16, _, _,15, _],
[15, _, 5, _, _, 8, 7, _, _, 9, _,10, _,12, _, 1]].


% 
% This problem is problem 62 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(62,P,4) :-
 P = 
[
[ _, _,14,15, 9, 6, _, _, _, 8, _, 5,11, _,12, _],
[13, _, _, _,15,14, _, _, _, _, 1, _, 2,10, _, _],
[ _, 8, 6, _, _, 2, _, _,12, _, _, _, 5, 7, _, 1],
[12, 2, 1, _, _, _,11,13, 9, _, _,14, _, _, _, 3],
[ 5, _, _, 1, _,12, _, _, _, 6, _, _, _, _,13,10],
[ _,16, _, _, _, _, _, 7, _,14, _, 1, _, 5,11,12],
[11, _, _, _,13, 1, _, _, 8, _, _, _, 7, _, _, _],
[ _, _, 9,13, _, _,10, 2, 7, _, 3, _,14, _, _, _],
[ _, _, _, 3, _,10, _,14, 5,11, _, _, 6,15, _, _],
[ _, _, _, 5, _, _, _,12, _, _, 8, 3, _, _, _,11],
[15,13,11, _, 2, _, 9, _, 6, _, _, _, _, _, 5, _],
[ 6, 1, _, _, _, _, 5, _, _, _,14, _,16, _, _, 9],
[ 4, _, _, _, 8, _, _, 3,11, 7, _, _, _,14,10, 2],
[14, _, 2, 6, _, _, _,10, _, _,16, _, _,12,15, _],
[ _, _, 5, 8, _,13, _, _, _, _, 4,15, _, _, _,16],
[ _,11, _, 7,12, _, 2, _, _, _, 5,10,13, 9, _, _]].


% 
% This problem is problem 63 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(63,P,4) :-
 P = 
[
[ _, _, 2, _, _,13,10, 6, _, 3, 8, _, 1, 4, _, _],
[ _, _, _, 5, _,15, _, _, 2, _, _, _, _, _, _, _],
[ 6, _, 8, _, 2, _,16, _, _, _, _, _, 7,10, _,11],
[10, _,15, _, _, _, _, _, 6, 5, _,16, _, _,13, _],
[ _, _, _, 6, _, 8,14, _, 5, 2, _, _, _,11, _, _],
[ 7, _, _, _, _, 2, _,15, _,16, 3, 9, _, _, 8,14],
[ 8, _, _, 3, 6, 7, 9, _, _, 4, _,12, _, 1, _,16],
[ _,11, _,14,16, _, _, 1, 8, _,10, _, _, _, _, 7],
[ 1, _, _, _, _,10, _, 8,12, _, _,15,16, _, 3, _],
[14, _,10, _, 1, _, 3, _, _,13, 4, 2,11, _, _, 5],
[ 9, 7, _, _,12,16, 6, _, 1, _,11, _, _, _, _, 4],
[ _, _, 3, _, _, _, 2,13, _,14, 6, _,10, _, _, _],
[ _,12, _, _,11, _, 7, 4, _, _, _, _, _, 5, _,10],
[11, _, 6, 8, _, _, _, _, _,12, _, 7, _,13, _,15],
[ _, _, _, _, _, _, _,10, _, _, 1, _, 2, _, _, _],
[ _, _, 4,10, _,12, 8, _,14, 6,16, _, _, 7, _, _]].


% 
% This problem is problem 64 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(64,P,4) :-
 P = 
[
[10, _, _, 9, 5, _,11, _,16, _, _, _, 8, _,15,13],
[16, _,13, _, _, _, 6,15,11, _, _, _,10, 5, _, _],
[ _,11, _, _, _, 1,13, 8, 3, _,10, 9,16, _, 7, _],
[15, 6, 8, _, _, _, _,16, 5, _, _, 1, _, _, _,12],
[ _, _, 2, 8,13,10, 9, _, _, 5,15,12, _, _, _,16],
[ _, _,16, _, 8, 7, _, 2, _,10, 4,13, _, 6, _, _],
[ _, _, _, _, 3,15, _, _, _, _, _,14, _,12,13, 9],
[ 9,12, 5,13, _, _, _, _, _, _,16, _,15,10, 8, _],
[ _, 7, 1,11, _, 6, _, _, _, _, _, _, 5, 8, 4, 2],
[13, 5,15, _,11, _, _, _, _, _, 2, 6, _, _, _, _],
[ _, _, 9, _, 1, 2, 7, _,15, _, 8, 5, _,13, _, _],
[ 2, _, _, _,14, 3, 5, _, _,12,11, 7, 1, 9, _, _],
[ 6, _, _, _,15, _, _,11,14, _, _, _, _, 7, 3, 4],
[ _,15, _,14,12,13, _, 3, 4, 7, 9, _, _, _, 2, _],
[ _, _,10,16, _, _, _, 9,12, 1, _, _, _,15, _, 8],
[ 3, 9, _, 5, _, _, _, 1, _,13, _,15,11, _, _,10]].


% 
% This problem is problem 65 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(65,P,4) :-
 P = 
[
[ _, _, _, _,16, 5,13, _,12, 1, _, _, _,11, 2, _],
[ 6, _, _, _,14, _,11,12, _,16, _, _,13, 8, _, _],
[13, 1, 3,12, _, _, 7, _, _, 4, _, _, 5,16, _, _],
[ _, 7, 2,11, 4, 8, _, _, 5, _, 6, _,12, 9, _, _],
[ _, _, _, _,11, 9,14, _, _, _, _,15, 4, _, 1, 2],
[ _, _, _,10, _, _,15,13, 7,11, _,12, 8, _, _, 3],
[14, 6,15, _, _, 1, _, _, _, _,16, 3, _,13,11, 9],
[11, _, _, 4, _, 2, _, 8, 9, _, 1, _, _, _,16, _],
[ _, 5, _, _, _, 7, _,14,13, _,12, _,16, _, _, 8],
[12, 9,13, _, 1, 4, _, _, _, _,14, _, _,10, 3, 5],
[ 8, _, _, 2,13, _, 5, 9, 1,10, _, _, 6, _, _, _],
[ 7,16, _, 3, 6, _, _, _, _, 2, 5, 9, _, _, _, _],
[ _, _, 6,13, _,14, _, 5, _, _,11, 4,10, 2, 7, _],
[ _, _, 9, 5, _, _, 2, _, _, 8, _, _,11, 3,13, 4],
[ _, _, 7,16, _, _, 4, _, 6,14, _, 5, _, _, _,15],
[ _,11, 8, _, _, _, 9, 7, _,12, 3, 2, _, _, _, _]].


% 
% This problem is problem 66 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(66,P,4) :-
 P = 
[
[13, _, _, _, 9,10, _, _, 6, _,15, 4, _, 3, _,12],
[ _, _, _, _,11, 6, _, _, 5,10, _,14, 9,13, _, _],
[ 6,14, 5, _, _, _, _, _, _,13, _, _, 7,15, _, _],
[ _, 3,16, 9, _, _,15,13,12, _, _, _, 4, _, _, _],
[ 1, 6, _, _,10,15, 4, _, _,12, _, 7, _, _, 5, 8],
[16, _, _, _, _, 1, _, _,10, _,11, 8, _, _,15, 9],
[ _, 7,12, _, 3, _, _, 8, _, _, _,15, 6, _, _, _],
[10, 8, _,15, _,16, _,12, 4, 3, _, _, 2, _, _, _],
[ _, _, _, 7, _, _, 9,14, 3, _,13, _, 8, _, 4,15],
[ _, _, _, 8,16, _, _, _, 9, _, _, 5, _, 6,12, _],
[ 5, 9, _, _,15, 3, _, 4, _, _,12, _, _, _, _,16],
[ 4,15, _, _, 6, _,13, _, _,11, 7,10, _, _, 2,14],
[ _, _, _,13, _, _, _,11,14, 9, _, _,16, 8, 6, _],
[ _, _, 2,16, _, _, 3, _, _, _, _, _, _,11,14, 5],
[ _, _,14, 4, 8, _, 6,10, _, _, 2,12, _, _, _, _],
[ 3, _, 8, _,14, 5, _,15, _, _,10,13, _, _, _, 4]].


% 
% This problem is problem 67 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(67,P,4) :-
 P = 
[
[ _, _, _,11, 5, 6, 2,14, _, 1,16, _, _, _, _, _],
[ _,13, 2, 7,10, _, _, _, 4, _, _, _, 5, 6,11, _],
[ _,16, 6, _, _,11, _,12, _, _, 2, _, _,14, 7, _],
[ _, 1, _,12, _, _, 7, _,13,11, _, _, 3, _, 4, 2],
[ _, _, _, _, 3, 7, _, 2,14, _, _,16, _, _, 6, 4],
[13, _, 3, _, _, 5, _, _,12, _,10, 8, _,16, _, 1],
[12, _, _,10, _, _, _,15, 9, _, _, _,13, _, _, 3],
[ _, 2, _,15,13,16, 8, _, _, 3, _, 4, _, 5, _,14],
[ 2, _, 8, _,15, _, 4, _, _,12,14,11,16, _, 5, _],
[14, _, _,13, _, _, _,16, 5, _, _, _,12, _, _,11],
[ 1, _, 5, _, 2,12, _,13, _, _, 9, _, _,15, _, 8],
[15,12, _, _,14, _, _, 5,16, _, 8, 1, _, _, _, _],
[10, 3, _, 5, _, _,16, 8, _, 9, _, _, 6, _,14, _],
[ _,15, 4, _, _,10, _, _, 2, _, 1, _, _, 3, 9, _],
[ _,14, 1, 6, _, _, _, 3, _, _, _,12, 4, 2,16, _],
[ _, _, _, _, _,14, 1, _, 7, 6, 3,10,15, _, _, _]].


% 
% This problem is problem 68 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(68,P,4) :-
 P = 
[
[10, _, 5, _,15,11, _,12, _, _, _, 7, _, _, 3, _],
[16, 3, 8, _, _, _, _,13, _,12, _,14,11, 5, _, _],
[ _, _,15, _, _, _, 3, _, 9,16, 8, _, _,13, 7, _],
[ _, _, _,14, _, 2, _, 4, _,10, _, 5, 9, _,15,16],
[ 8, _, _,10, _, _, 6, _, 3,15, 7,13, 5, _, _, _],
[11, _, _, 4, _, _, _, _, 5, _, _, _,13,14,10, _],
[ 6, 1, _, _,11,13, 7, 5, _, _,14, _, _, _, _, _],
[ _, 5,12, _, 1,14, _,10, _, 8, _, _, _, _, 6, 2],
[12, 8, _, _, _, _,14, _, 7, _, 6, 2, _,16,13, _],
[ _, _, _, _, _,10, _, _,13, 9, 5,15, _, _, 8, 4],
[ _,13, 4, 1, _, _, _, 6, _, _, _, _, 2, _, _, 7],
[ _, _, _, 9, 2, 8,13, 1, _,14, _, _, 3, _, _,12],
[ 5, 7, _, 3,14, _,10, _, 8, _, 9, _,12, _, _, _],
[ _, 2, 1, _, _,12, 5, 8, _, 4, _, _, _,15, _, _],
[ _, _, 6,12, 9, _, 1, _, 2, _, _, _, _,10,14,11],
[ _,10, _, _,13, _, _, _,16, _, 1,12, _, 4, _, 5]].


% 
% This problem is problem 69 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(69,P,4) :-
 P = 
[
[ _, _, _,14, 9, _, 5, _, _, 6, _,16, _, _, _,15],
[ _, 6, _, 4, _, 3, _,16, _, _, _, 7, _, 1, _,11],
[ _, 3, 7,10, _,14, _, _, 4, 9, _, 5,12, _, _, _],
[ 9, _, _, _, _,12, 7, 6, _, 3, 2,14, _, 5, 4, 8],
[ _,14, _, _, _, 4, _, _,13,16, 9, _, 2, _, _, _],
[ _, 4, _, _, _, 5, 6, 2,12, _, _, _,16, 8, _, _],
[ _,16, 9, 3, _, _, 1,11, 5,15, _, 2, _,12, _, 7],
[12, 1, _, 6, 3, 9, _,10, _, _, _, _, _, _, _, 5],
[13, _, _, _, _, _, _, _, 2, _, 4, 9, 6, _, 8,16],
[ 6, _, 3, _,15, _, 9,14,16, 5, _, _,11, 2,12, _],
[ _, _,10,11, _, _, _, 8, 6,14,12, _, _, _, 3, _],
[ _, _, _, 9, _, 2,12, 1, _, _,11, _, _, _,13, _],
[ 7,10, 1, _, 4, 6, 2, _, 3,11, 5, _, _, _, _,13],
[ _, _, _,13, 5, _, 8, 9, _, _,16, _, 1,11,10, _],
[14, _, 5, _,16, _, _, _, 9, _, 6, _,15, _, 2, _],
[ 4, _, _, _,11, _,14, _, _,13, _, 8, 7, _, _, _]].


% 
% This problem is problem 70 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(70,P,4) :-
 P = 
[
[ _,15,14, 6, _,10, _, 8, _, _, _, _, _, _, 1, _],
[ 1, 4, 5, _, _, 7, _,14, _, _,15, _, _, _, 6, 8],
[ _, _, _,12, _, 4, _, _,14,16, 8, 2, _, _, 5,15],
[ _, _, _, _, 5,15,13, _, 7,11, 1, _, _,12, _, 4],
[ _, _, 4, _, 8, 2,10, _,12, _, _, 1,11, _, _, _],
[ _, 8,12, 7, _, _, 5, _, _, _, _,10,13, 2, 4,16],
[ _, _, 1,15, _, _, 9, _,16, 8, 3,11,10, _, _, _],
[ _, _,10, 9,15, _,14, 6,13, _, _, _, _, _, 7, 1],
[15, 9, _, _, _, _, _, 5, 3,12, _, 7, 1, 8, _, _],
[ _, _, _, 3, 2, 1,12,13, _, 6, _, _, 7, 4, _, _],
[10, 1, 7, 2, 6, _, _, _, _, 4, _, _,16,15,12, _],
[ _, _, _, 4, 9, _, _,15, _, 1,10, 8, _,14, _, _],
[13, _,15, _, _, 6, 2,11, _, 5, 9, 3, _, _, _, _],
[ 4,11, _, _,13, 8, 3,10, _, _, 2, _, 5, _, _, _],
[ 8, 7, _, _, _, 5, _, _,11, _, 4, _, _, 9, 3, 6],
[ _, 6, _, _, _, _, _, _, 8, _, 7, _,12,11,13, _]].


% 
% This problem is problem 71 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(71,P,4) :-
 P = 
[
[ _, _, _, 8, 4, _, _, _, _, _, _,13, _, 1,15, 7],
[ _, 6, _,12, _, _,10, _, 4,16, _, _, _, _, _, 9],
[ _, _, 9, 4, 5, _,16, _, 8, _,15, _, _, 3,10, _],
[ _, _, _, 7,12,15,13, 2, _, 3, _, _, _,14, _,16],
[ _, _, 6,11, _, _, 5, 8, _, _,16, _, _, _, _, _],
[ 8, _, 7, _, _,16, _,12, 9, _, 4,10, 1, _, _,14],
[12, _, _,14,10, 3, _, 9, _, _, _, 5, _,16,13, _],
[ _,15, _, _, _, 2, _, _, _, _, _,11, 3, _, 8,10],
[10,11, _, 6,15, _, _, _, _, _,12, _, _, _, 9, _],
[ _, 7,14, _,11, _, _, _, 5, _, 1, 6,16, _, _, 3],
[ 1, _, _,16, 7, 9, _, 3,10, _,13, _, _,12, _, 5],
[ _, _, _, _, _, 1, _, _, 7,14, _, _,10,11, _, _],
[ 3, _, 4, _, _, _, 8, _,14, 7, 9, 2,11, _, _, _],
[ _,14, 8, _, _,13, _,11, _,10, _, 3, 5, 9, _, _],
[ 5, _, _, _, _, _, 1,10, _,13, _, _,14, _, 3, _],
[ 6, 9,13, _, 2, _, _, _, _, _, _,12, 7, _, _, _]].


% 
% This problem is problem 72 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(72,P,4) :-
 P = 
[
[12,13, _,14, 9, _, 8, _, _, _, _, _, _, 6, _, _],
[ _, 6, 2, _, _, 3, _, _, _,14, _, _, 8, 5, _, 7],
[ _,16, _, _, _, 6, _, _, _,10,15, 5, _, _, _,13],
[ _, _, _, _,13, 5, 4, _, 3, 9, _, 8, _, _, _,14],
[ 6,15,11, _, _,14,13, 4, _, _, _,16, _, 1, _, _],
[ 4, _,10, _, 5, _, _, 2,13, _, _, _, _, _, _,16],
[ _,12, _, 1, _, _, _,16,15, 5, 3,10, 2, _, _, 6],
[ _, 2, _, 3, _,10, _, 1, _, _, _, _,15, _, _, _],
[ _, _, _, 2, _, _, _, _, 4, _,11, _, 9, _, 6, _],
[ 3, _, _, 6,16, 8,14, 9, 5, _, _, _, 4, _, 2, _],
[16, _, _, _, _, _, _,13, 9, _, _, 3, _,15, _, 8],
[ _, _, 4, _, 2, _, _, _, 6, 8,10, _, _,16,12, 3],
[10, _, _, _, 1, _, 3,14, _,13, 9,12, _, _, _, _],
[14, _, _, _, 4, 9,12, _, _, _, 5, _, _, _, 1, _],
[ 2, _, 9,13, _, _,10, _, _, _, 8, _, _, 3,15, _],
[ _, _, 8, _, _, _, _, _, _, 2, _, 7,10, _,14, 5]].


% 
% This problem is problem 73 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(73,P,4) :-
 P = 
[
[13, _, _, 6, _, _, 1, _, 2,12, 3, _, _, _, _, 8],
[ _, _, 1, _, _, 3, 8, 6, _, _, 5, _, _, 9, _, _],
[ _, 8,12, 2, _, _, _, _, _, _,13,16,11,15, 1, _],
[ _, _, 5, _,16, _, _, _, _, _, _, 1, _,10, _,13],
[ _, _,10, 8, 7, 6, _, _, 4, _, _,12, 5, _, _, _],
[ 6, 4,15, _, _, _,10,13, _, 2, _, 5, _, _,12, _],
[14, _, _, _, _, 1,11, 9, _, 6,10, _, _, _, 2, 4],
[11, _, _, _, 4, _, _, _, _, 8,16, _, _, _, 7, _],
[ _, 7, _, _, _,11,13, _, _, _, _, 6, _, _, _, 9],
[15,16, _, _, _,12, 9, _, 1,13, 4, _, _, _, _,10],
[ _, 5, _, _,14, _, 6, _,16, 7, _, _, _, 1,13,12],
[ _, _, _,11,15, _, _,16, _, _, 2,10, 3, 7, _, _],
[ 5, _, 8, _, 6, _, _, _, _, _, _,13, _, 3, _, _],
[ _,14, 2,13, 5,10, _, _, _, _, _, _, 7,12,15, _],
[ _, _, 7, _, _, 9, _, _,10, 5, 1, _, _, 4, _, _],
[ 9, _, _, _, _,13,12, 1, _, 4, _, _,14, _, _, 5]].


% 
% This problem is problem 74 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(74,P,4) :-
 P = 
[
[ 8,13, _, _, _, 6,14, _, _, _,10, 2, _, _, _, _],
[14, 9, _, 6, _, _, _, _, 4, _, _,13, _, 5, 3, 7],
[ _, _, 5, 3, 9,12, _, 2, _, _, 7, _,10, 4, _, _],
[ _, _,11, 2,16, _, _, 5, _, _, _, _, _, _, 6,13],
[ _,15, _, _, _, _,16, 9,12,11, 8, 4, _, _, _, _],
[ 2, 1, _,13, _,15, 5, _, _, 7, _,14,11, _,16, 6],
[ 9, 8, 3, _, _, 4, 7, _, 6, 5, _, _, _,10, _, 2],
[ _, 7, _,12, 6, _, _, _, _,10, _, _, 3, 9, 5, 4],
[12, 6, 9, 8, _, _, 1, _, _, _, _, 5, 4, _, 7, _],
[15, _,10, _, _, _, 4, 6, _, 8, 2, _, _,13, 9,16],
[ 4, 2, _, 5,11, _,12, _, _, 3,16, _, 6, _, 8,15],
[ _, _, _, _, 5,14, 2, 8,15, 9, _, _, _, _,10, _],
[ 7,11, _, _, _, _, _, _,16, _, _, 1,12, 3, _, _],
[ _, _,15, 4, _, 5, _, _,11, _, 3,10,16, 6, _, _],
[ 3, 5,14, _,12, _, _,10, _, _, _, _, 7, _, 4, 9],
[ _, _, _, _,13, 1, _, _, _,15,12, _, _, _, 2, 5]].


% 
% This problem is problem 75 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(75,P,4) :-
 P = 
[
[ 6,13, _, 5,15, _,11, 8, 3, _, _, 7, _, _, _, _],
[ _,15, _, 7, 6, 1, _, _, _, 8, 5, 4, _,10, _, _],
[ 3, 9, _, 8, _,13, _, _,11, _, _,14,15, _, 6, _],
[ _, _,14, _, 3, _, 9, 5, 6,15, _, _, _,12,11, 1],
[15, 6, 5, _, _, _, _, _, _,16,11,10, _, _, _, 2],
[ _, _, _, 3, _, 6,12, 7,13, 9, _, _, _, 8, _,11],
[ _, _,13,14, _, _, 8, 2,15, _, 7, _, _, _, 5, _],
[11, _, 7, _,13,15, _, _, _, _, 3, _, 6, 1, 9, _],
[ _,10, 9,11, _, 5, _, _, _, _, 8, 1, _,15, _, 6],
[ _, 3, _, _, _,14, _,11,16, 5, _, _, 1, 2, _, _],
[12, _,16, _, _, _,13,15, 7,11, 9, _,10, _, _, _],
[ 5, _, _, _, 1,12, 6, _, _, _, _, _, _,11, 8, 4],
[ 7,14, 6, _, _, _,15, 9, 1,10, _,11, _, 3, _, _],
[ _, 5, _, 9,10, _, _,13, _, _, 6, _,11, _, 2,14],
[ _, _,10, _,11,16, 5, _, _, _,15, 9, 7, _, 1, _],
[ _, _, _, _, 2, _, _, 6, 5,14, _, 8,12, _,10,15]].


% 
% This problem is problem 76 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(76,P,4) :-
 P = 
[
[15, _, _, _, _, _, 8, _, 4, 3, _, _,11,16,13, 6],
[ 6,14, _, _,16, 2, 9, _, _, _, _,12, 3, _, 7, _],
[ 2, _, 1, _, _,13, 7, _, 5, _,14, _, _,12, _, _],
[ 8, 9, _, 4, _, _, _,12, 7, _, 6, 1, 2, _, _, _],
[ _, 1, _,15, _, _,13,10,14,11, 5, _, _, _, 8, _],
[ _, _, 6,10,15, 3, 4, _, _, _,13, _, _,14, 1, _],
[14, _, _, _,11, _, _, 5, _, _, 8,16, _, 4, 9, 3],
[ 7, _, 8, 9, 2, _, _, _, _, 4, _, 3,13, _, _, _],
[ _, _, _, 1,14, _,10, _, _, _, _,15, 6, 3, _,12],
[13, 6,14, _, 8, 9, _, _,16, _, _, 5, _, _, _, 1],
[ _,16, 3, _, _,15, _, _, _, 9, 1,14, 7, 8, _, _],
[ _,15, _, _, _, 1,16,11, 3, 6, _, _,14, _,10, _],
[ _, _, _, 8, 7,16, _, 6,12, _, _, _, 4, _,15,10],
[ _, _, 7, _, _, 8, _, 1, _,15,11, _, _, 6, _, 2],
[ _,13, _,16,10, _, _, _, _, 1, 3, 4, _, _,12,14],
[12, 2,10, 6, _, _,15, 3, _, 5, _, _, _, _, _,13]].


% 
% This problem is problem 77 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(77,P,4) :-
 P = 
[
[ _, _, _, 4, 3, 9, _, 2, 7, _, _, 5, _, _,16, _],
[ 5,12, 6, 7, _, _, _,10, 9, 3, _, _, _, 2,13, _],
[ _, 3,11, _, _, _, 1,13, _, _, _, 2, _, 7, 8, _],
[ _, _, _, 2, _,16, 7, _, 8,14,10, _, 3, _, 5,15],
[14, _,12, _,10, 2, 3, _, _, _, _,13, _, _, _, 7],
[ _, _, _,13, _,11, _, _,16, 7,15, 8, 1, _, _, 6],
[ _,16, _, 1, _, 6, 8, _, 2,10, _,14,12,13, _, _],
[15, 8, _, 6, _, 4,16, _, _, _, _, _, _,10,14, 5],
[ 6, 4, 3, _, _, _, _, _, _,13,11, _,15, _, 2,14],
[ _, _, 5, 8, 6, _, 4,12, _,15, 2, _,13, _,11, _],
[11, _, _,15, 8,10, 2,16, _, _, 3, _, 7, _, _, _],
[ 7, _, _, _,14, _, _, _, _, 8, 9, 4, _,12, _,10],
[13, 7, _, 3, _, 1,11, 4, _,12,14, _, 9, _, _, _],
[ _,15, 4, _, 9, _, _, _,11, 2, _, _, _, 6,12, _],
[ _,11,16, _, _, _, 6, 7,13, _, _, _, 4,14, 1, 3],
[ _, 6, _, _,15, _, _, 3, 1, _, 4,10,11, _, _, _]].


% 
% This problem is problem 78 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(78,P,4) :-
 P = 
[
[ _, 1,11, _, _, _, _, _, 2, _, 5, 9,15, _, 6,16],
[16, _, 2, 3, 4, 1,10, _, _, _,11,15, _, _, _, _],
[12, _,14, 8, _, _, _, _, 3, _, _,13, _, 2, 4, _],
[15, _, _, _, _, 9,14, _, _, 1, _, _, _,11, 3, 8],
[ _, _, 1, _,15, 4, 5, _, 6, _, 3, _, 2, _, _, 9],
[ 3, _, _,14, _, 8,12, _, 5,13, _, _, 1, _, _, _],
[ _, _, _, _,13,11, _, _,10, 8, _, _, _,15,14, 3],
[ _, 4, _, 9, 3, _, 1, _,14, _, _,16, _, 8,13, _],
[ _,16,15, _,12, _, _, 7, _, 5, _, 6, 9, _, 8, _],
[11,13,12, _, _, _,15, 1, _, _,10, 8, _, _, _, _],
[ _, _, _, 5, _, _, 9, 4, _, 2, 1, _,16, _, _,12],
[14, _, _, 1, _, 5, _, 8, _,15,12, 3, _,13, _, _],
[ 1,11, 4, _, _, _, 8, _, _, 9, 2, _, _, _, _, 6],
[ _,10, 8, _, 9, _, _,12, _, _, _, _, 4, 5, _,11],
[ _, _, _, _, 1, 2, _, _, _, 6, 8, 5, 3,10, _,15],
[ 5,12, _, 2, 7,10, _,11, _, _, _, _, _, 9, 1, _]].


% 
% This problem is problem 79 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(79,P,4) :-
 P = 
[
[10, 5, 7, _, _, _, 8,14, 4, _, _, _, _, _, _, 9],
[ _, 4,12, 8, 5, _, 6, _, _, _, _, 9, _,14, 3,11],
[ _,14, 1, _, _, _, 3,16, 6, 5, 7, _, _,10,12, 8],
[ _, _, _,15, _, 1, _, 9, _, 8,14,10, 5, _, 7, _],
[ _, 8, _, 5, _, 7, _, _, _, 4,15, _, _, _, 2, _],
[ _, _, 9, 3, 1, 6, _, _, _, _,11,16, 8, _, _, _],
[ _, _,14, 2,10, _, _, 4, _, _, _, _, _,13, 9, 7],
[15, _, 4, _, _, _, _, 8, 5, 6, _, _,16, 1, _, 3],
[ 6, _, 8, 4, _, _,14,12,11, _, _, _, _,15, _, 5],
[ 5,15,10, _, _, _, _, _,12, _, _, 6, 3, 7, _, _],
[ _, _, _, 7,15, 4, _, _, _, _, 1, 5, 2, 8, _, _],
[ _, 2, _, _, _, 3, 5, _, _, _, 8, _,12, _, 1, _],
[ _, 9, _, 1, 3,14, 2, _, 8, _, 4, _,10, _, _, _],
[11,13, 2, _, _,16, 4,15,10,12, _, _, _, 9, 8, _],
[ 8,16, 5, _,12, _, _, _, _,13, _,14,15, 3,11, _],
[ 4, _, _, _, _, _, _, 5, 7,11, _, _, _, 2,16, 6]].


% 
% This problem is problem 80 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(80,P,4) :-
 P = 
[
[ _, _, 8, _,10, _,15, _,11, 9, 7, _, 1, _, 6, _],
[ 1,11, 7, 9, _, _, _, 6, _, _, _, _, _, 8,14, _],
[ _, _,14, 3, _, _, 9, 2, 8, _, _, _,13, _, 5, _],
[ 2, 6, _, _, 8, _,11, _, _, _, _, 1, 7, _, _, _],
[ 9, 1, _, _, 6,10, 2, _, _,11, 3, _, _,13, _, _],
[ _,15, _, _, 3, 7, _, 5, 2, _,16,13, _, 4, _, _],
[ 3, _, 6, 7, 9, _, _, _, 5, _,14,15, _, _, _,10],
[ 4, _,11, _, _,15,12, _, _, 1, 6, _, _, _,16, 5],
[ 7, 3, _, _, _, 8,10, _, _, 5,13, _, _,15, _, 1],
[ 5, _, _, _,15,12, _, 3, _, _, _, 9, 8,16, _,14],
[ _, _,15, _,13, 5, _, 1, 3, _,10, 8, _, _,11, _],
[ _, _,10, _, _,11, 6, _, _, 2,15,16, _, _, 7,13],
[ _, _, _, 6,11, _, _, _, _,14, _, 2, _, _, 1,12],
[ _, 4, _,15, _, _, _,10, 1,13, _, _,16,14, _, _],
[ _,10, 2, _, _, _, _, _,16, _, _, _, 4, 6, 3, 8],
[ _, 7, _,16, _, 2, 8,15, _, 6, _, 3, _,10, _, _]].


% 
% This problem is problem 81 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(81,P,4) :-
 P = 
[
[ _, 2,14,13, _, 4, _, _, _,12, _, _, _,15, _, _],
[ _, 8, _,15,14, _, 6, _, 1, _, _, _, _, _,10, 4],
[10, _, _, 7, _, 8,15, _, 2, 9, _,11, _, _, _,12],
[ _, _, _, _, 3,16,12,11, _, _, _, 5, _, 8, 7,13],
[ _, _, 4, 5,13,10, _, _,11, 7,15, 3,12, _, 6, _],
[ _, _, _, _,16, _, _, _, 4, _, _,12,10, 2, _, 5],
[ 2, _, 7, _,15, _, _,12,16, _, _, _, 3, 4,11, _],
[ _,14,13, _,11, 5, 4, 3, 8, 1, _, _,16, _, _, _],
[ _, _, _, 4, _, _, 8, 2, 5,16,11,14, _, 3,15, _],
[ _,11, 5,16, _, _, _, 6, 3, _, _,15, _,12, _, 1],
[ 1, _,15, 2, 7, _, _,14, _, _, _, 4, _, _, _, _],
[ _,13, _, 8, 4,15,16, 5, _, _, 1, 6, 7,11, _, _],
[ 3,12, 1, _, 2, _, _, _,13,11, 8,16, _, _, _, _],
[13, _, _, _, 6, _, 5, 9, _,15, 3, _, 8, _, _, 2],
[ 4,16, _, _, _, _, _,15, _,10, _, 7, 1, _,12, _],
[ _, _, 8, _, _, _,11, _, _, _, 9, _,14,13, 3, _]].


% 
% This problem is problem 82 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(82,P,4) :-
 P = 
[
[ 5, _, _, _, _,14, _, _, _, 7,11, _, _,12,15, 2],
[10,15, _, 4, 6, 7, _, _, _, _, 3, _, _, _,13, _],
[13, _,14, _,12, _, 3, _, _, _, _, 8, _, 7, _, _],
[ _, _, _, _, 8, _, _,13,10, 6, _,14, _, _, 5, _],
[ _, _, 3,11, _, _, _, _, 4, _,10, _,14,15, 1, _],
[ 6, 9, _, _,11, _,13, _, 3, _, _, _, _, _,12, 7],
[ 1, _, _,16, _, _, _, 4, 9, _,12, _, _, 6, _, _],
[ _, _, _,13, 1, 2,16, 5,15,14, _, _,11, _, _, _],
[ _, _, _, 7, _, _, 9, 3, 2, 8, 5,10,15, _, _, _],
[ _, _, 8, _, _, 4, _, 7, 6, _, _, _, 2, _, _,16],
[ 9, 6, _, _, _, _, _,15, _, 3, _,11, _, _, 8, 4],
[ _,10,11, 3, _,16, _, 6, _, _, _, _, 9, 5, _, _],
[ _, 1, _, _,15, _, 6, 9,14, _, _, 2, _, _, _, _],
[ _, _, 9, _,16, _, _, _, _,15, _, 3, _, 2, _,14],
[ _,14, _, _, _,13, _, _, _, _, 9, 5,16, _,11,15],
[ 2,16, 7, _, _,12, 5, _, _, _, 4, _, _, _, _, 3]].


% 
% This problem is problem 83 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(83,P,4) :-
 P = 
[
[ _, 3, _,11, 8, _, _,12, 6, 1, _, _, _, 2, _, _],
[ _,14, _, 2, _, _, _,15, _, _, 4, _, 1,10, 6, 7],
[ 7, 1,13, _, _, _,10, _, _, _,12, _, _,11, _, _],
[ _, 6, _, _, _, 9, 2,13, _,11, _, 3, _, _, 4, 5],
[ _, _, _, 8,10, _, _, _,12, _,15, 4, _, _, _, 3],
[ _,15, 9, _, 7, 5,14, 4, _, _,11, _, 6, _, _, _],
[ 5, _, _, 1, _, _, _, 8, _, _, 6, _, 4,15, _, _],
[ 4, _, _, _,12, _, _, _, _,14,10, _,11, _, 2,16],
[ 2,13, _, 7, _,14, 5, _, _, _, _, 6, _, _, _, 1],
[ _, _,11,10, _,13, _, _, 9, _, _, _,16, _, _, 8],
[ _, _, _,14, _, 1, _, _,16, 2,13,15, _, 5, 9, _],
[ 6, _, _, _, 4,12, _,11, _, _, _, 7, 3, _, _, _],
[10, 2, _, _,11, _,12, _, 4, 6,14, _, _, _, 7, _],
[ _, _, 1, _, _, 2, _, _, _, 9, _, _, _, 8,10,13],
[13,12, 7, 5, _,10, _, _, 3, _, _, _,14, _,11, _],
[ _, _, 8, _, _, _,16,14,10, _, _,12, 2, _, 5, _]].


% 
% This problem is problem 84 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(84,P,4) :-
 P = 
[
[11, 6, 2, _, _, _, 9, _, _, _, 1, _, _, _,16, 7],
[12, _, _, _, _, _, 7, _, 6, _, _,10, _, 1, _, 9],
[ _, 1, _, _, _, _,10, 8, _, _, 7, _, 2, _, _, 3],
[ _, _,10, 8, 3, 1, _,12,16, 2, _, _,14, _, _, _],
[ _, 8, _, _, 9, 2, _,10, _, _,16,13, 4, _, _, _],
[16, _,12, _,13, 8, _, _,15, _, 5, 2, 9, _, _, _],
[ _, _, _, 4, _, _, _, _, _, _, _, _, _,13, 6,10],
[ _, 5, _,11, _,12, _, 1, 7, _, _, 3,16, 8, _, _],
[ _, _,14, 1, 2, _, _, 9,13, _,11, _, 6, _, 8, _],
[ 9,12, 7, _, _, _, _, _, _, _, _, _, 5, _, _, _],
[ _, _, _,10, 5, 4, _, 7, _, _, 2,12, _,15, _,16],
[ _, _, _,15,12,13, _, _, 4, _,10, 5, _, _, 9, _],
[ _, _, _, 9, _, _, 1,14, 2, _,15, 8, 3,12, _, _],
[ 1, _, _, 7, _, 9, _, _,10, 3, _, _, _, _,13, _],
[ 2, _, 3, _, 8, _, _,11, _, 5, _, _, _, _, _, 6],
[14,11, _, _, _, 3, _, _, _, 7, _, _, _,16, 1, 2]].


% 
% This problem is problem 85 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(85,P,4) :-
 P = 
[
[ _, _, 6, _, _, 1, _, _, 4, _, _,15, 3, _,10, _],
[ 7,14, _, _, 6,16, _, 3, _, _, _, _,15,12, _, _],
[11,12, 3, _, _,15,13, _, 6, _, 9, _,16, _, _, 2],
[ _, _, _, _, _, 4,14, _,12,16, 3, _,11, _, _, _],
[ 1, _,14, _, _,12, _, _, _, _, _, 2, _,10, _, _],
[ _, _, _,10,14, 6, _, _, _, 4,15, _, _, 9, _, 3],
[ _, 8, _, 2, _, _, 3,15, _,12, _, 1, _, _, _, _],
[ 3, 4, _, _, 8, _, _, _,11, 5, 7, _, _,14,12, _],
[ _,11, 9, _, _, 3,12,13, _, _, _, 8, _, _,14, 5],
[ _, _, _, _, 9, _,15, _,16,10, _, _, 4, _, 1, _],
[10, _, 4, _, _,14, 2, _, _, _, 6,11,12, _, _, _],
[ _, _, 8, _,10, _, _, _, _, _,14, _, _, 7, _,11],
[ _, _, _,12, _, 2,10, 6, _,14,11, _, _, _, _, _],
[14, _, _, 8, _, 9, _, 5, _, 3,12, _, _, 6, 2,16],
[ _, _,11, 9, _, _, _, _, 2, _,16,13, _, _, 5,12],
[ _, 3, _, 5,12, _, _,14, _, _, 1, _, _, 4, _, _]].


% 
% This problem is problem 86 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(86,P,4) :-
 P = 
[
[ _,15,10, _, _, 5, _, _, _,11, 7, _, _,14, _, 6],
[ 1, 8, _, _, _, _, 4,11, _, _, _,12, _, _,16, _],
[ _, _,16, _, 7, _, _,12,15, _, _, _, _, 8, _, 5],
[ _,11, 9,12,16, 8, _, _, _, _, _, _, _, _, _, _],
[ _,13, _, _,10, _,16, _, _, 8, 5, _, _, _, _,14],
[ 6, 9, _, _, 3, _, _, _, 1, _, _, _,12, 5, _, _],
[ 7, _, 4,11, _, _, _, _,16, _,10, _, 2, _, _,15],
[ _, _, 8, _, 5,11, 6,13, _, _, 2, 7, _, _, _, _],
[ _, _, _, _, 8,16, _, _,14,12, 6, 1, _,13, _, _],
[ 3, _, _, 6, _,12, _, 7, _, _, _, _, 9, 1, _, 8],
[ _, _,13,15, _, _, _, 5, _, _, _, 9, _, _, 7, 3],
[ 8, _, _, _, _, 6,11, _, _, 2, _, 5, _, _,14, _],
[ _, _, _, _, _, _, _, _, _, _, 1, 4,14,15,13, _],
[ 9, _, 6, _, _, _, _,10,13, _, _,15, _, 7, _, _],
[ _,14, _, _, 6, _, _, _, 2, 9, _, _, _, _, 1,12],
[16, _, 2, _, _,14,15, _, _, _,12, _, _, 4,11, _]].


% 
% This problem is problem 87 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(87,P,4) :-
 P = 
[
[ _, 3, _, _, 6,16,15, _, _,12, 8, _, _, _, _, _],
[16, _, _, 9, _,11, _, 8, _, _, _, 5, _,10, 7, 4],
[ 7, _, _, 8, _, 2, _, _,11, _, _,13, _, _, _, _],
[ _,14,10, _, _, _, _, _, 3, _, 6, _, _, 9,11, _],
[ _, _,15, _, 2, _, _, _, _, 3,10,16, _, _, _, _],
[14, 7, _, _, _, _, _, _, _, _, _, _, _, 3, 9,16],
[ _, 9, _,10, _, _, 3, 1,14, 6, _, _,15,12, _, _],
[ 4, _, 3, _, _,13, _, 9,12, _,11, _, _, _, _,14],
[ 6, _, _, _, _, 8, _, 4,10, _, 2, _, _,16, _,12],
[ _, _,16, 3, _, _,12,15,13, 9, _, _, 4, _,10, _],
[10, 8, 5, _, _, _, _, _, _, _, _, _, _, _,15,11],
[ _, _, _, _, 5,10, 7, _, _, _, _, 6, _, 2, _, _],
[ _, 2, 4, _, _, 7, _,13, _, _, _, _, _, 1, 6, _],
[ _, _, _, _, 1, _, _, 3, _, _,12, _, 2, _, _, 8],
[ 1,10, 7, _,12, _, _, _, 6, _, 3, _,14, _, _, 9],
[ _, _, _, _, _, 6,14, _, _, 1,15, 2, _, _, 3, _]].


% 
% This problem is problem 88 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 16 x 16
%
problem(88,P,4) :-
 P = 
[
[ _, _, _, _, 4, 7, _, _, _, _, _, 9,11, _, 1, _],
[ _, _, 5, _, _, 9,15, 2, _, 6, _, _, _, _, 4, 3],
[11, _, _, 3, _, _, _, _, _,14, 2, 4, _, _, 9, _],
[ _, _, 9, _, _, _, _, _,10, 5, 7, _, _, 2, _, _],
[ _,13,10, 4,14, _, _, 7, _, _, _,12, _,15, _, _],
[ _, 1, _, 6, _, _, 4, _,14, _, _, _, _, 8, _,11],
[ _, _, _, _, 8, 1,11,15, _, _, 4, _, 5, _, _, 7],
[ _, _, _,15, 9,10, _, _, _, _,13, _, _,14, _, 4],
[ 5, _, 2, _, _, 3, _, _, _, _,10, 7, 1, _, _, _],
[ 6, _, _,12, _,11, _, _,16, 9,15,14, _, _, _, _],
[ 7, _, 8, _, _, _, _, 9, _,13, _, _,12, _, 3, _],
[ _, _,16, _, 6, _, _, _, 1, _, _, 3,14, 4, 5, _],
[ _, _,15, _, _,14, 8,13, _, _, _, _, _,10, _, _],
[ _, 2, _, _, 7, 4, 1, _, _, _, _, _, 3, _, _, 8],
[13, 6, _, _, _, _, 5, _, 9, 2,11, _, _, 1, _, _],
[ _,10, _,14,11, _, _, _, _, _,12, 6, _, _, _, _]].


% 
% This problem is problem 89 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(89,P,5) :-
 P = 
[
[11,23,13,10,19,16, 6, 2,24, 7, 5, 9, 1,20,17,15, 8,18,25, 3, 4,12,21,22,14],
[15,16, _,22, _,11, 8, _, _, _,25, _,14, _, _, _,12,19, _, _,17, _, _, _, _],
[ _, _, _, _, _, _, _, _, _, _, _,16, _, 4, _,17, _,13, _,24, _,23,19,10, 2],
[ _, _, _, _, _,19, _,14,23, 4, _,21, 6,22,10, _,11, _, 2, _, _, _, _, _, _],
[17,14, _, _, 2, _, _,13,12, _, _, _, _, _,15, 4,20,22,10, _,11, _, 9,24, 8],
[22, _, _, _, _, 6, 2, _, _, _, 4, 7,12, 1, 9, _, _, _, _, _, _,14, 5, _, _],
[ _,18, 2, _, 8,22, _,19,16,21, _, _, _,10,13,23, _, _,20, _, _, 3, _,15, 7],
[ _, _,17, 3, _, 5, _, _, 8, 9, _, _, _, _,18, _,19, _, _, _, _, _,23,21, _],
[ 1,11, _, _, 9, _,15,10,25, _, 6, _,23, _, _, _, _, 5, 3, 7, _,17, _, _,24],
[ _, _, _, _, _, _, 1, _, _,23, _, _, _,24, _, _, _,21,12, _, 6, 8, _,25,16],
[20,24,10, _,15,23,11,17, _, _, _, _, _, 7, _,12, _, _, _, _, _,22, _, _, 6],
[ 4, 5, _,14,12,25, _,18, _, _,23, _,15, _,19, 1, _, _, _,22,20, _, 7, 9, _],
[18, _,21, _, _, 8, _,24, _, _, 9, _,25, _, _, _,10, _, _, _, 2, _, 1,19, _],
[ _, _, 6, 2, 1, _,13, _,22, _, _, _, _, _,11, 8,21,16, _, _,25, _, _,12,17],
[ _,17,25, _,23, 7,14, _,21, 1, _, _, _, _, 3, _, _,11, _, _,24, _,16, 4, 5],
[ _, _, _, _,11,18,24, _, _, _, _, 5, _,12, _,25, _, _, _,15,23, 4, 8,14, _],
[ _, _, _,15,21, _, _, _, _, _, 2, _,13,17, _, _, 1, 7, _, _, 5, 9,24, _, _],
[ _, _,18, _,22,15, _, _, 2,16, _,23, _, _, _,10, 6,24, _,17,12, _,25,11, _],
[ 7, 2, _, 1, _, _,21, _, _, _,18,22, _, 9, 6,14, _, 4, 5,16, _, _, _, _, _],
[ _, _, 9, _, _, _, 7,22, _, _,10, _,24, _, _, _,18, _, _, _,21, _, _, _, _],
[ _,12, _,19,10, _, _, _, _, _, _, _, _, _, 1, _, _, _, _, _,14, _, 4, 8, _],
[24, _,11,18, _, _, _, _, _, _, _,25,17,21, _, 6, _, _, 1, _, _, _, _, 5,12],
[16, 6,22, _, _, _,23, 4,15,18, 8, _, _, _,20, _, _,17, _,14, _, _, _, _, _],
[ _,21, _, _, 4, _, 9, 1, 7, _, _, _, _,11,14, _,16, 8,15, _,22, _,18, _, _],
[ 8,15, _, _, _, _, _, _, 5, _,24, 3, _, _, 4, _, _, _, 9, _, _, _, _, _,20]].


% 
% This problem is problem 90 from
% Gecode's sudoku.cpp
% http://www.gecode.org/gecode-doc-latest/sudoku_8cpp-source.html
%
% Size : 25 x 25
%
problem(90,P,5) :-
 P = 
[
[ _,23,13, _,19,16, 6, _,24, 7, 5, 9, 1, _, _,15, 8,18,25, _, 4, _,21,22, _],
[15,16, _,22, _,11, 8, _, _, _,25, _,14, _, _, _,12,19, _, _,17, _, _, _, _],
[ _, _, _, _, _, _, _, _, _, _, _,16, _, 4, _,17, _,13, _,24, _,23,19,10, 2],
[ _, _, _, _, _,19, _,14,23, 4, _,21, 6,22,10, _,11, _, 2, _, _, _, _, _, _],
[17,14, _, _, 2, _, _,13,12, _, _, _, _, _,15, 4,20,22,10, _,11, _, 9,24, 8],
[22, _, _, _, _, 6, 2, _, _, _, 4, 7,12, 1, 9, _, _, _, _, _, _,14, 5, _, _],
[ _,18, 2, _, 8,22, _,19,16,21, _, _, _,10,13,23, _, _,20, _, _, 3, _,15, 7],
[ _, _,17, 3, _, 5, _, _, 8, 9, _, _, _, _,18, _,19, _, _, _, _, _,23,21, _],
[ 1,11, _, _, 9, _,15,10,25, _, 6, _,23, _, _, _, _, 5, 3, 7, _,17, _, _,24],
[ _, _, _, _, _, _, 1, _, _,23, _, _, _,24, _, _, _,21,12, _, 6, 8, _,25,16],
[20,24,10, _,15,23,11,17, _, _, _, _, _, 7, _,12, _, _, _, _, _,22, _, _, 6],
[ 4, 5, _,14,12,25, _,18, _, _,23, _,15, _,19, 1, _, _, _,22,20, _, 7, 9, _],
[18, _,21, _, _, 8, _,24, _, _, 9, _,25, _, _, _,10, _, _, _, 2, _, 1,19, _],
[ _, _, 6, 2, 1, _,13, _,22, _, _, _, _, _,11, 8,21,16, _, _,25, _, _,12,17],
[ _,17,25, _,23, 7,14, _,21, 1, _, _, _, _, 3, _, _,11, _, _,24, _,16, 4, 5],
[ _, _, _, _,11,18,24, _, _, _, _, 5, _,12, _,25, _, _, _,15,23, 4, 8,14, _],
[ _, _, _,15,21, _, _, _, _, _, 2, _,13,17, _, _, 1, 7, _, _, 5, 9,24, _, _],
[ _, _,18, _,22,15, _, _, 2,16, _,23, _, _, _,10, 6,24, _,17,12, _,25,11, _],
[ 7, 2, _, 1, _, _,21, _, _, _,18,22, _, 9, 6,14, _, 4, 5,16, _, _, _, _, _],
[ _, _, 9, _, _, _, 7,22, _, _,10, _,24, _, _, _,18, _, _, _,21, _, _, _, _],
[ _,12, _,19,10, _, _, _, _, _, _, _, _, _, 1, _, _, _, _, _,14, _, 4, 8, _],
[24, _,11,18, _, _, _, _, _, _, _,25,17,21, _, 6, _, _, 1, _, _, _, _, 5,12],
[16, 6,22, _, _, _,23, 4,15,18, 8, _, _, _,20, _, _,17, _,14, _, _, _, _, _],
[ _,21, _, _, 4, _, 9, 1, 7, _, _, _, _,11,14, _,16, 8,15, _,22, _,18, _, _],
[ 8,15, _, _, _, _, _, _, 5, _,24, 3, _, _, 4, _, _, _, 9, _, _, _, _, _,20]].


% From
% http://www.kristanix.com/sudokuepic/worlds-hardest-sudoku.php
% """
% For those of us that never tire of a well made sudoku challenge, 
% Finnish mathematician, Arto Inkala has made what he claims is the 
% hardest sudoku puzzle ever. According to the Finnish puzzle maker 
% "I called the puzzle AI Escargot, because it looks like a snail. 
% Solving it is like an intellectual culinary pleasure. AI are my 
% initials".
% 
% If you're open for the challenge, AI Escargot presumably requires 
% you to wrap your brain around eight casual relationships 
% simultaneously, whereas your everyday "very hard" sudoku piece, 
% only require you to think about a meager one or two of these 
% relationships at once.
% """
% Problem hardest_ever Cell size: 3
% [1,6,2,8,5,7,4,9,3]
% [5,3,4,1,2,9,6,7,8]
% [7,8,9,6,4,3,5,2,1]
% [4,7,5,3,1,2,9,8,6]
% [9,1,3,5,8,6,7,4,2]
% [6,2,8,7,9,4,1,3,5]
% [3,5,6,4,7,8,2,1,9]
% [2,4,1,9,3,5,8,6,7]
% [8,9,7,2,6,1,3,5,4]
% Resumptions: 4461
% Entailments: 606
% Prunings: 4020
% Backtracks: 54
% Constraints created: 135
% 
problem(hardest_ever,P,3) :-
  P = [
[1,_,_, _,_,7, _,9,_],
[_,3,_, _,2,_, _,_,8],
[_,_,9, 6,_,_, 5,_,_],

[_,_,5, 3,_,_, 9,_,_],
[_,1,_, _,8,_, _,_,2],
[6,_,_, _,_,4, _,_,_],

[3,_,_, _,_,_, _,1,_],
[_,4,_, _,_,_, _,_,7],
[_,_,7, _,_,_, 3,_,_]].

:- initialization(go).
%--------------------------------------------------- 226 hakank_swi_survo_puzzle
/*

  Survo puzzle in SWI Prolog

  http://en.wikipedia.org/wiki/Survo_Puzzle
  """
  Survo puzzle is a kind of logic puzzle presented (in April 2006) and studied 
  by Seppo Mustonen. The name of the puzzle is associated to Mustonen's 
  Survo system which is a general environment for statistical computing and 
  related areas.
  
  In a Survo puzzle the task is to fill an m * n table by integers 1,2,...,m*n so 
  that each of these numbers appears only once and their row and column sums are 
  equal to integers given on the bottom and the right side of the table. 
  Often some of the integers are given readily in the table in order to 
  guarantee uniqueness of the solution and/or for making the task easier.
  """
  
  See also
  http://www.survo.fi/english/index.html
  http://www.survo.fi/puzzles/index.html
 
  References:
  Mustonen, S. (2006b). "On certain cross sum puzzles"
  http://www.survo.fi/papers/puzzles.pdf 
  Mustonen, S. (2007b). "Enumeration of uniquely solvable open Survo puzzles." 
  http://www.survo.fi/papers/enum_survo_puzzles.pdf 
  Kimmo Vehkalahti: "Some comments on magic squares and Survo puzzles" 
  http://www.helsinki.fi/~kvehkala/Kimmo_Vehkalahti_Windsor.pdf
  R code: http://koti.mbnet.fi/tuimala/tiedostot/survo.R

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        survo_puzzle(1),
        nl.

go2 :-
        between(1,6,P),
        time(survo_puzzle(P)),
        fail,
        nl.

go2.

survo_puzzle(P) :-
        writeln(problem=P),
        problem(P, RowSums, ColSums, Problem),
        matrix_dimensions(Problem, Rows, Cols),
        
        flatten(Problem, Vars),
        RC is Rows*Cols,
        Vars ins 1..RC,

        all_different(Vars),
        % all_distinct(Vars),        
        sums(Problem, RowSums),
        transpose(Problem, Transposed),
        sums(Transposed, ColSums),        
        
        labeling([ff,bisect], Vars),
        
        print_matrix(Problem),
        nl, nl.


sums([],_).
sums([R|Rs],[S|Ss]) :-
        sum(R,#=, S),
        sums(Rs,Ss).

%
% Data
%

% http://en.wikipedia.org/wiki/Survo_Puzzle, first example
%
% Solution:
%  12 6 2 10
%  8 1 5 4
%  7 9 3 11
%
problem(1, RowSums, ColSums, Problem) :-
        RowSums = [30,18,30],
        ColSums = [27,16,10,25],
        Problem = [[_, 6, _, _],
                   [8, _, _, _],
                   [_, _, 3, _]].



% http://en.wikipedia.org/wiki/Survo_Puzzle, second example
% difficulty 0
problem(2, RowSums, ColSums, Problem) :-
        RowSums = [9, 12],       % rowsums
        ColSums = [9, 7, 5],     % colsums
        Problem = [[_, _, 3],  % problem
                   [_, 6, _]].
        


% http://en.wikipedia.org/wiki/Survo_Puzzle, third example
% difficulty 150 ("open puzzle", i.e. no hints]
% It's an unique solution.
% (817 propagations with Gecode/fz, and 33 failures, 88 commits]
% r = 3;
% c = 4;
% rowsums = [24,15,39];
% colsums = [21,10,18,29];
% matrix = array2d(1..r, 1..c, 
%   [
%     0, 0, 0, 0,
%     0, 0, 0, 0,
%     0, 0, 0, 0
%   ]];
% Note: this version has no hints
problem(3, RowSums, ColSums, Problem) :-
        RowSums = [24,15,39],      % rowsums
        ColSums = [21,10,18,29],   % colsums
        Problem = [[_, _, _, _], % problem
                   [_, _, _, _],
                   [_, _, _, _]].




% same as above but with hints: difficulty 0
% (15 propagations with Gecode/fz, no failures, no commits]
% matrix = array2d(1..r, 1..c, 
%    [
%      7, 0, 5, 0,
%      0, 1, 0, 8,
%      0, 0, 11, 0
%    ]];
problem(4, RowSums, ColSums, Problem) :- 
       RowSums = [24,15,39],      % rowsums
       ColSums = [21,10,18,29],   % colsums
       Problem = [[7, _, 5, _], % problem
                  [_, 1, _, 8],
                  [_, _, 11, _]].



% http://www.survo.fi/puzzles/280708.txt, third puzzle
% Survo puzzle 128/2008 (1700] #364-35846
%
%    A  B  C  D  E  F
% 1  *  *  *  *  *  * 30
% 2  *  * 18  *  *  * 86
% 3  *  *  *  *  *  * 55
%   22 11 42 32 27 37
problem(5, RowSums, ColSums, Problem) :-
       RowSums = [30, 86, 55],
       ColSums = [22, 11, 42, 32, 27, 37],
       Problem = [[_, _,  _, _, _, _],
                  [_, _, 18, _, _, _],
                  [_, _,  _, _, _, _]].

%
% http://en.wikipedia.org/wiki/Survo_Puzzle, under "Swapping method"
% (open puzzle]
%
problem(6, RowSums, ColSums, Problem) :-
       RowSums = [51,36,32,17],
       ColSums = [51,42,26,17],
       Problem = [[_, _, _, _],
                  [_, _, _, _],
                  [_, _, _, _],
                  [_, _, _, _]].
:- initialization(go).
%----------------------------------------------- 227 hakank_swi_telephone_number
/*

  Telephone number in SWI Prolog

  http://en.wikipedia.org/wiki/Telephone_number_%28mathematics%29

  Via Spiked Math: http://spikedmath.com/545.html
  """
  ...
  Also called the involution numbers, they can be determined by the recurrence:

      a_0 = a_1 = 1;
      a_n = a_{n−1} + (n − 1) a_{n−2}, for n > 1.

  More interesting, they also count the number of involutions on a set
  with n elements -- note that an involutary function, is a function f 
  that is its own inverse, that is,

     f(f(x)) = x for all x in the domain of f. 
  """
  
  The sequence is
  1, 1, 2, 4, 10, 26, 76, 232, 764, 2620, 9496, 35696, 140152, ...
  "Number of self-inverse permutations on n letters, also known as 
   involutions; number of Young tableaux with n cells.":
  http://oeis.org/A000085


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

:- table a/2.

go :-
        between(0,23,I),
        a(I,R),
        writeln([I,R]),
        fail,
        nl.

go.

go2 :-
        abolish_all_tables,
        numlist(0,73,Is),
        make_seq(Is,[],Res),
        writeln(Res),
        nl.

make_seq([],L,L).
make_seq([I|Is],L0,[R|L]) :-
        a(I,R),
        make_seq(Is,L0,L).

a(0,1).
a(1,1).
a(N,Res) :-
        N #>= 0,
        N1 #= N-1,
        N2 #= N-2,
        a(N1,N1Res),
        a(N2,N2Res),
        Res #= N1Res + N1* N2Res.

:- initialization(go).
%---------------------------------------------- 228 hakank_swi_the_family_puzzle
/*

  The Family Puzzle in SWI Prolog

  From Drools Puzzle Round 2: The Familiy Puzzle
  http://blog.athico.com/2007/08/drools-puzzle-round-2-familiy-puzzle.html
  """
  
  * Three men, Abel, Locker and Snyder are married to Edith, Doris and Luisa, 
    but not necessarily in this order.
  * Each couple has one son.
  * The sons are called Albert, Henry and Victor.
  * Snyder is nor married to Luisa, neither is he Henry's father.
  * Edit is not married to Locker and not Albert's mother.
  * If Alberts father is either Locker or Snyder, then Luisa is Victor's mother.
  * If Luisa is married to Locker, then Doris is not Albert's mother. 
  
  Who is married to whom and what are their sons called?

  Taken from the German book "Denken als Spiel" by Willy Hochkeppel, 1973 
  (Thinking as a Game).  
  """
  
  Solutions and discussions
  http://ningning.org/blog2/2008/05/25/drools-puzzles-result-round-2-the-familiy-puzzle
  http://rbs.gernotstarke.de/samples/page21/page21.html


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        N = 3,

        Abel = 1,
        Locker = 2,
        Snyder = 3,
        Men = [Abel,Locker,Snyder],
        MenS = ['Abel','Locker','Snyder'],

        WomenS = ['Edith', 'Doris', 'Luisa'],
        Women = [Edith, Doris, Luisa],
        Women ins 1..N,

        SonsS = ['Albert','Henry', 'Victor'],
        Sons = [Albert,Henry, Victor],
        Sons ins 1..N,


        all_different(Women),
        all_different(Sons),

        % Snyder is nor married to Luisa, neither is he Henry's father.
        Snyder #\= Luisa,
        Snyder #\= Henry,
        
        % Edith is not married to Locker and not Albert's mother.
        Edith #\= Locker,
        Edith #\= Albert,
        
        % If Alberts father is either Locker or Snyder, 
        % then Luisa is Victor's mother.
        (
            (Albert #= Locker #\/ Albert #= Snyder) #==> 
                Luisa #= Victor
        ),

        % If Luisa is married to Locker, 
        % then Doris is not Albert's mother. 
        (
            Luisa #= Locker #==> 
                Doris #\= Albert
        ),

        flatten([Women,Sons], Vars),
        labeling([],Vars),

        writeln(men=Men),
        writeln(women=Women),
        writeln(sons=Sons),
        nl,
        findall([Man,Woman,Son],
                (between(1,N,I),
                 lookup_list(I,Men,MenS,Man),
                 lookup_list(I,Women,WomenS,Woman),
                 lookup_list(I,Sons,SonsS,Son)
                ),
                Sol),
        maplist(writeln,Sol),
        nl.
        

%%
%% lookup_list(I,Ls,S,V)
%%
%% Lookup the corresponding element V in S of the I'th element in Ls.
%% I.e.:
%%   S[Ls[V]] = V
%%
lookup_list(I,Ls,S,V) :-
   nth1(I, Ls, E),
   nth1(E, S, V).
:- initialization(go).
%-------------------------------------------------------- 229 hakank_swi_timpkin
/*

  Mrs Timpkin's Age in SWI Prolog

  From 
  http://www.comp.nus.edu.sg/~henz/projects/puzzles/arith/index.html
  """
  Mrs Timpkin's Age    from "Amusements in Mathematics, Dudeney", number 43.
 
  When the Timpkinses married eighteen years ago, Timpkins was three
  times as old as his wife, and today he is just twice as old as she.
  How old is Mrs. Timpkin? 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall(LD, timpkin(LD),L),
        writeln(L),
        nl.


timpkin([mr_timpkin=T,mrs_timpkin=W]) :-
   
   LD = [T, W],
   LD ins 1..100,
   T - 18 #= 3 * (W - 18),
   T #= 2 * W,

   label(LD).
:- initialization(go).
%--------------------------------------------------------- 230 hakank_swi_to_num
/*

  to_num in SWI Prolog.

  to_num(List, Base, Num) converts a list of integers to a number for 
  a base Base. It is bidirectional but it is really recommended that
  the length of List is fixed.

  See examples below.


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% Tests
% 
go :-

        writeln("from number -> digit list"),
        length(A,4),
        A ins 0..9,
        to_num(A, 10, 1234),
        writeln(a=A),

        writeln("from digit list -> number"),
        B = [3,1,4,1,5,9,2,6],
        to_num(B, 10, Num),
        label([Num]),
        writeln(num=Num),

        writeln("show all 2 digit numbers in base 11"),
        length(C,2), 
        C ins 0..10,  % For base 11
        findall([Num2, C], (to_num(C, 11, Num2), labeling([ff],C)),L),
        length(L,LLen),
        writeln([LLen, L]).


go2 :-
        length(L,4),
        L = [_A,B,C,D],
        L ins 0..9,       
        Num in 0..9999,
        
        to_num(L, 10, Num),

        Num #> 5000,
        Num mod 3 #= 1,
        
        B + C #= D,
        all_different(L),
        sum(L, #=, 22),
        
        append(L,[Num], Vars),
        label(Vars),
        writeln([l=L,num=Num]).


%%
%% to_num(List, Base, Num)
%%
%% sum(List) #= Num
%%
/*
to_num(List, Base, Num) :-
        length(List,Len),
        to_num_(List,1,Len,Base,0, Num).

% Num #= sum([List[I]*Base**(Len-I) : I in 1..Len]).
to_num_([],_I,_Len,_Base,Num,Num).
to_num_([H|T],I,Len,Base,Num0,Num) :-
        Len1 #= Len-I,
        Num1 #= Num0 + H*(Base^Len1),
        I1 #= I+1,
        to_num_(T,I1,Len,Base,Num1,Num).
*/
:- initialization(go).
%--------------------------------------------------- 231 hakank_swi_torn_numbers
/*

  Torn numbers  in SWI Prolog

  From
  http://www.comp.nus.edu.sg/~henz/projects/puzzles/digits/torn.html?19

  """
  The Torn Number from "Amusements in Mathematics, Dudeney", number 113

  I had the other day in my possession a label bearing the number 3025
  in large figures. This got accidentally torn in half, so that 30 was
  on one piece and 25 on the other. On looking at these pieces I began
  to make a calculation, scarcely concious of what I was doing, when I
  discovered this little peculiarity. If we add the 30 and the 25
  together and square the sum we get as the result the complete original
  number on the label! Now, the puzzle is to find another number,
  composed of four figures, all different, which may be divided in the
  middle and produce the same result. 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall([LD, Sum], torn(LD, Sum), L),
        writeln(L).

torn(LD, Sum) :-
        LD = [D3, D2, D1, D0],
        LD ins 0..9,

        all_different(LD),
        D3 #\= 0,
        Sum #= D3 * 10 + D2 + D1 * 10 + D0,
        Sum * Sum #= D3 * 1000 + D2 * 100 + D1 * 10 + D0,
        labeling([], LD).
:- initialization(go).
%--------------------------------------- 232 hakank_swi_tourist_site_competition
/*

  Tourist Site Competition in SWI Prolog

  From Pierre Flener's presentation 
  "Constraint Technology - A Programming Paradigm on the Rise"
  http://www.it.uu.se/edu/course/homepage/ai/vt08/AI-CT.pdf
     pages 5f: problem statement 
     pages 12f: model
     pages 21ff: walktrough of a solution

  With 7 tourist sites and 7 judges:
  """
  Every tourist site is visited by r = 3 judges.
  Every judge visits c = 3 tourist sites.
  Every pair of sites is visited by lambda = 1 common judge.
  """

  There are 151200 solutions to this problem.
  With the additional constraint that Ali should visit Birka, Falun and Lund
  there are 4320 solutions.


  This problem was also presented as "The Airline-of-the-Year Problem"
  in his (Flener's) presentation
  "Constraint Programming - Programming Paradigm on the Rise"
  http://www.it.uu.se/research/group/astra/ATM-CT/Flener.pdf
  page 4f
  The problem is stated as follows for 7 airlines and 7 judges:
  """
  Constant jury: Every airline is tested by 3 judges.
  Constant load: Every judge tests 3 airlines.
  Equity: Every airline pair is tested by 1 common judge.
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        R = 3,
        C = 3,
        Lambda = 1,

        %% Sites (Swedish sites)
        Birka = 1,
        Falun = 2,
        Lund = 3,
        Mora = 4,
        Sigtuna = 5,
        Uppsala = 6,
        Ystad = 7,
        Sites = [Birka, Falun, Lund, Mora, Sigtuna, Uppsala, Ystad],
        SitesStr = ["Birka", "Falun", "Lund", "Mora", "Sigtuna", "Uppsala", "Ystad"],
        
        %% Judges
        Ali = 1,
        Dan = 2,
        Eva = 3,
        Jim = 4,
        Leo = 5,
        Mia = 6,
        Ulla = 7,
        Judges = [Ali, Dan, Eva, Jim, Leo, Mia, Ulla],
        JudgesStr = ["Ali", "Dan", "Eva", "Jim", "Leo", "Mia", "Ulla"],
        
        SymmetryBreaking = true,
        tourist_site_competition(Sites,Judges,R,C, Lambda,SymmetryBreaking,X),
        
        %% foreach(Row in X) writeln(Row) end,
        maplist(writeln,X),
        nl,
        print_assignments(X,SitesStr,JudgesStr),
        nl.

%%
%% Checking the number of solutions
%%
%% 
go2 :-
        NumJudges = 7,
        numlist(1,NumJudges,Judges),
        NumSites = 7,
        numlist(1,NumSites,Sites),        
        R = 3,
        C = 3,
        Lambda = 1,
        findall(X, tourist_site_competition(Sites,Judges,R,C, Lambda,true,X),L1),
        length(L1,Len1),
        format("With symmetry breaking: ~d solutions.\n", [Len1]),
        
        findall(X, tourist_site_competition(Sites,Judges,R,C, Lambda,false,X),L2),
        length(L2,Len2),
        format("Without symmetry breaking: ~d solutions.\n", [Len2]),
        nl.


% num_solutions(Sites,Judges,R,C,Lambda) = NumSolutions :-
%   L = findall(X, tourist_site_competition(Sites,Judges,R,C, Lambda,_,X)),
%   NumSolutions = L.length.

tourist_site_competition(Sites,Judges,R,C,Lambda,SymmetryBreaking,X) :-

        length(Sites,NumSites),
        length(Judges,NumJudges),
        writeln([numSites=NumSites, numJudges=NumJudges,lambda=Lambda]),

        %% decision variable
        new_matrix(NumSites,NumJudges, 0..1, X),
        flatten(X,Vars),

        %% Every tourist site is visited by R judges.
        maplist(site_visited_by_r_judges(R),X),
        
        %% Every judge visits C tourist sites.
        transpose(X,XT),
        maplist(judge_visits_c_sites(C),XT),
        
        %% Every pair of sites is visited by Lambda common judges.
        findall([S1,S2],
                (member(S1,Sites),
                 member(S2,Sites),
                 S1 < S2
                ),
                SSs),
        maplist(visited_by_lambda_common_judges(X, Judges, Lambda),SSs),        
                
        %% Symmetry breaking: Assigns the first three sites to judge 1
        (
         SymmetryBreaking == true
        ->
         numlist(1,R,Rs),
         maplist(symmetry_breaking(X),Rs)
        ;
         true
        ),
        
        labeling([ff], Vars).

%% Every tourist site is visited by R judges.
site_visited_by_r_judges(R,Row) :-
        sum(Row,#=,R).

%% Every judge visits C tourist sites.
judge_visits_c_sites(C,Column) :-
        sum(Column,#=,C).

%% Every pair of sites is visited by Lambda common judges.
visited_by_lambda_common_judges(X,Judges,Lambda,[S1,S2]) :-
        sum_common_judges_on_site(Judges,X,S1,S2,0,Lambda).
sum_common_judges_on_site([],_X,_S1,_S2,Sum,Sum).
sum_common_judges_on_site([J|Js],X,S1,S2,Sum0,Sum) :-
        matrix_element(X,S1,J,XS1J),
        matrix_element(X,S2,J,XS2J),
        B in 0..1,
        (XS1J #= 1 #/\ XS2J #= 1) #<==> B #= 1,
        Sum1 #= Sum0 + B,
        sum_common_judges_on_site(Js,X,S1,S2,Sum1,Sum).

symmetry_breaking(X,R) :-
        matrix_element(X,R,1,1).
        

print_assignments(X,SitesStr,JudgesStr) :-
        length(X,XLen),
        length(JudgesStr,JLen),
        findall([Site,JudgeList],
                (between(1,XLen,S),
                 nth1(S,SitesStr,Site),
                 findall(Judge,
                         (
                          between(1,JLen,J),
                          matrix_element(X,S,J,1),                         
                          nth1(J,JudgesStr,Judge)
                         ),
                         JudgeList
                        )
                ),
                Sol),
        maplist(format("~w~t~10|: ~w~n"),Sol),
        nl.


:- initialization(go).
%------------------------------------------------- 233 hakank_swi_traffic_lights
/*

  Traffic lights problem in SWI Prolog.

  CSPLib problem 16
  http://www.cs.st-andrews.ac.uk/~ianm/CSPLib/prob/prob016/index.html
  """
  Specification:
  Consider a four way traffic junction with eight traffic lights. Four of the traffic 
  lights are for the vehicles and can be represented by the variables V1 to V4 with domains 
  {r,ry,g,y} (for red, red-yellow, green and yellow). The other four traffic lights are 
  for the pedestrians and can be represented by the variables P1 to P4 with domains {r,g}.
  
  The constraints on these variables can be modelled by quaternary constraints on 
  (Vi, Pi, Vj, Pj ) for 1<=i<=4, j=(1+i)mod 4 which allow just the tuples 
  {(r,r,g,g), (ry,r,y,r), (g,g,r,r), (y,r,ry,r)}.
 
  It would be interesting to consider other types of junction (e.g. five roads 
  intersecting) as well as modelling the evolution over time of the traffic light sequence. 
  ...
 
  Results
  Only 2^2 out of the 2^12 possible assignments are solutions.
  
  (V1,P1,V2,P2,V3,P3,V4,P4) = 
     {(r,r,g,g,r,r,g,g), (ry,r,y,r,ry,r,y,r), (g,g,r,r,g,g,r,r), (y,r,ry,r,y,r,ry,r)}
     [(1,1,3,3,1,1,3,3), ( 2,1,4,1, 2,1,4,1), (3,3,1,1,3,3,1,1), (4,1, 2,1,4,1, 2,1)}
 
 
  The problem has relative few constraints, but each is very tight. Local propagation 
  appears to be rather ineffective on this problem.   
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


go :- 
        % symbol version of the allowed light combinations
        Allowed1 = [[r,r,g,g],
                    [ry,r,y,r],
                    [g,g,r,r],
                    [y,r,ry,r]],
        traffic_lights_table(V,P,Allowed1),
        print_result(V,P),
        nl.


%
% Using table Allowed
%
traffic_lights_table(V, P, Allowed1) :-
        N = 4,

        % Convert to integers according to tr/2.
        % Note: table_in requires structure as a term of the format: (...)
        findall(DD, (member(A,Allowed1),
                     findall(D, (member(S,A), tr(S,D)),DD)
                   ),
                Allowed),
        length(V, N),
        V ins 1..N,
        length(P,N),
        P ins 1..N,

        %% Indices
        findall([I,J],
               (between(1,N,I),between(1,N,J), J #= (1+I) mod N),
               IJs
              ),
        tuples_loop(IJs,V,P,Allowed),
        append(V,P,Vars),
        labeling([],Vars).

tuples_loop([],_V,_P,_Allowed).
tuples_loop([[I,J]|IJs],V,P,Allowed) :-
        nth1(I,V,VI),nth1(I,P,PI),
        nth1(J,V,VJ),nth1(J,P,PJ),
        %% Note: The Tuples list should be a list of a list
        %% (i.e. not just a list).
        tuples_in([[VI, PI, VJ, PJ]],Allowed),
        tuples_loop(IJs,V,P,Allowed).

%%
%%% translation table of symbols <-> integer
%%
tr(r, 1).
tr(ry,2).
tr(g, 3).
tr(y, 4).

%%
%% Translate a number -> symbolic representation
%%
print_result(V,P) :-
        zip2(V,P,Zipped),
        flatten(Zipped,Flatten),
        findall(T,(member(F,Flatten),tr(T,F)),Result),
        writeln(Flatten),
        writeln(Result).
:- initialization(go).
%------------------------------------------------------------ 234 hakank_swi_tsp
/*

  Traveling salesperson problem in SWI Prolog


  Inspired by the code from lecture notes
  Ulf Nilsson: Transparencies for the course TDDD08 Logic
  Programming, page 6f
  http://www.ida.liu.se/~TDDD08/misc/ulfni.slides/oh10.pdf

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Test all the simple instances.
%% The GLPK instance is much harder, see go2/0.
%%
go:-        
   time(once(do_tsp(nilsson))),  %% the original formulation
   time(once(do_tsp(nilsson2))), %% the generalized version
   time(once(do_tsp(chip))),
   time(once(do_tsp(ilog))),
   nl.


%%
%% Problem from GLPK:s example tsp.mod.
%% Compare with the MiniZinc model http://www.hakank.org/minizinc/tsp.mzn
%% and see more comments below.
%%
%% % 7,366,933,236 inferences, 477.695 CPU in 477.694 seconds (100% CPU, 15421831 Lips)
%% 
go2 :- 
        time(do_tsp(glpk)).


%%
%% Use a random cost matrix of size NxN with cost values of 1..MaxVal
%% and 0 in the diagonal.
%% 
%% Note: When using small MaxVal (say 10 or 20), the probability of a cost of 1
%% is quite high which is certainly the smallest cost for an edge and thus the
%% instance can be fairly fast even for larger problems, e.g. N = 150.
%%
%% For larger MaxVals (say 50) this probability of cost 1 is smaller
%% and this tends to increase the solving time, even for smaller N.
%%
%% Example runs:
%%
%% n=150
%% [mindist=1,maxDist=10]
%% cities=[11,3,25,19,2,7,20,4,12,9,34,28,15,29,1,10,5,17,13,23,8,14,30,6,45,21,22,26,40,36,24,49,32,37,27,57,43,52,54,33,16,38,39,72,74,59,42,44,48,18,31,41,60,66,64,58,47,35,53,50,65,55,77,70,82,88,69,78,75,85,68,76,62,63,51,67,84,46,87,56,83,79,93,117,81,61,114,89,115,102,110,101,92,71,86,111,123,91,73,99,80,94,106,108,104,100,113,118,96,90,95,116,119,105,98,135,127,97,141,107,124,112,120,133,109,136,126,131,146,145,150,140,129,148,144,122,121,134,130,149,139,128,125,147,137,132,138,142,103,143]
%% costs=[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
%% path=[11,34,37,43,39,54,66,88,89,115,98,91,110,90,102,94,71,68,78,46,59,53,60,50,18,17,5,2,3,25,45,74,63,77,84,117,127,126,136,122,112,116,135,144,147,138,134,148,142,128,131,150,143,125,109,96,111,95,86,61,65,82,79,87,114,105,104,108,118,97,123,120,107,113,119,141,139,130,145,137,121,124,133,129,146,132,140,149,103,106,100,99,73,62,55,64,70,85,81,83,93,92,101,80,56,58,35,27,22,14,29,40,33,32,49,48,44,72,76,67,69,75,51,31,24,6,7,20,23,30,36,57,47,42,38,52,41,16,10,9,12,28,26,21,8,4,19,13,15,1]
%% cost=150
%%
%% % 319,777,982 inferences, 20.991 CPU in 20.992 seconds (100% CPU, 15233706 Lips)
%%
%% n=16
%% [mindist=9,maxDist=1998]
%% cities=[9,11,5,3,10,1,8,16,7,14,6,15,12,2,4,13]
%% costs=[182,168,60,72,804,387,406,248,448,13,24,9,78,363,51,18]
%% path=[9,7,8,16,13,12,15,4,3,5,10,14,2,11,6,1]
%% cost=3331
%% % 32,834,370 inferences, 2.140 CPU in 2.140 seconds (100% CPU, 15343003 Lips)
%
go3 :-
        N = 300,
        writeln(n=N),
        MaxVal = 10,
        generate_random_matrix_zero_diag(N, MaxVal,Matrix),
        (
         N =< 30
        ->
         writeln("Matrix:"),
         maplist(writeln,Matrix)
        ;
         true
        ),
        tsp(Matrix, Cities, Costs,Cost),
        writeln(cities=Cities),
        writeln(costs=Costs),
        writeln(cost=Cost),
        (
         N =< 30
        ->
         show_tour(Cities,Costs)
        ;
         circuit_path(Cities,Path),
         writeln(path=Path)
        ),
        nl.

%%
%% Wrapper
%%
do_tsp(P) :-
        format("Problem ~w~n", P),
        (
         P == nilsson
        -> 
         tsp_test(nilsson, Cities, Cost),
         writeln(cities=Cities),
         writeln(cost=Cost)
        ;
         tsp_test(P, Cities, Costs,Cost),
         writeln(cities=Cities),
         writeln(costs=Costs),
         writeln(cost=Cost),
         show_tour(Cities,Costs)
        ),
        nl.

%%
%% print the tour
%%
show_tour(Cities,Costs) :-
        circuit_path(Cities,Path),
        writeln(path=Path),
        length(Path,Len),
        Len1 #= Len-1,
        findall([I2,I3, C],
                (between(1,Len1,I),
                 element(I,Path,I2),
                 element(I2,Cities,I3),                 
                 element(I2,Costs,C)
                ),
                Tour1),
        element(1,Path,P1),
        element(1,Costs,C1),
        append([[1,P1,C1]],Tour1,Tour),
        maplist(format("Travel between ~w and ~w with cost ~w~n"),Tour),                 
        nl.

%%
%% TSP using a matrix, element/1 and circuit/1 constraints.
%%
%% This is a generalization of Nilsson's original version.
%%
tsp(Matrix, Cities, Costs,Cost) :-

        length(Matrix,Len),
        length(Cities,Len),
        Cities ins 1..Len,

        %% calculate upper and lower bounds of the Costs list
        flatten(Matrix,Dists1),
        subtract(Dists1,[0],Dists),
        
        min_list(Dists,MinDist),
        max_list(Dists,MaxDist),
        writeln([n=Len,mindist=MinDist,maxDist=MaxDist]),

        %% Costs ant total cost for the tour
        length(Costs,Len),
        Costs ins MinDist..MaxDist,
        sum(Costs,#=,Cost),
        Cost #> 0,

        %% all_different(Cities), %% implied constraint
        %% all_distinct(Cities), %% implied constraint        
        circuit(Cities),

        %% connect cities and costs 
        maplist(connect_cities_and_costs,Matrix,Cities,Costs),

        %% list_domains(Costs,CostDomains), %% show the inferred domains
        %% writeln(costDomains=CostDomains),

        flatten([Costs,Cities],Vars),
        %% flatten([Cities,Costs],Vars),        
        labeling([min(Cost)],Vars).

connect_cities_and_costs(Row,City,Cost) :-
        element(City,Row,Cost).



%%
%% Original formulation from Nilsson cited above.
%%
tsp_test(nilsson, Cities, Cost) :-
        Cities = [X1,X2,X3,X4,X5,X6,X7],
        element(X1,[ 0, 4, 8,10, 7,14,15],C1),
        element(X2,[ 4, 0, 7, 7,10,12, 5],C2),
        element(X3,[ 8, 7, 0, 4, 6, 8,10],C3),
        element(X4,[10, 7, 4, 0, 2, 5, 8],C4),
        element(X5,[ 7,10, 6, 2, 0, 6, 7],C5),
        element(X6,[14,12, 8, 5, 6, 0, 5],C6),
        element(X7,[15, 5,10, 8, 7, 5, 0],C7),
        Cost #= C1+C2+C3+C4+C5+C6+C7,
        circuit(Cities),
        labeling([min(Cost)], Cities).


%% 
%% This is a more general solution of the same
%% problem using for loops.
%%
%% It is somewhat most costly than the "explicit"
%% model above. It has the same number of 
%% backtracks, though.
%%
tsp_test(nilsson2,Cities, Costs,Cost) :-
        Matrix = 
        [[ 0, 4, 8,10, 7,14,15],
         [ 4, 0, 7, 7,10,12, 5],
         [ 8, 7, 0, 4, 6, 8,10],
         [10, 7, 4, 0, 2, 5, 8],
         [ 7,10, 6, 2, 0, 6, 7],
         [14,12, 8, 5, 6, 0, 5],
         [15, 5,10, 8, 7, 5, 0]],
        tsp(Matrix, Cities, Costs,Cost).


%%
%% This problem is from the SICStus example 
%% ./library/clpfd/examples/tsp.pl
%% The "chip" examples 
%%
tsp_test(chip,Cities, Costs,Cost) :-
        Matrix = 
        [[0,205,677,581,461,878,345],
         [205,0,882,427,390,1105,540],
         [677,882,0,619,316,201,470],
         [581,427,619,0,412,592,570],
         [461,390,316,412,0,517,190],
         [878,1105,201,592,517,0,691],
         [345,540,470,570,190,691,0]],
        tsp(Matrix, Cities, Costs,Cost).


%% This problem is from the SICStus example 
%% ./library/clpfd/examples/tsp.pl
%% The "ilog" examples
%%
tsp_test(ilog,Cities, Costs,Cost) :-
        Matrix = 
        [[2,4,4,1,9,2,4,4,1,9],
         [2,9,5,5,5,2,9,5,5,5],
         [1,5,2,3,3,1,5,2,3,3],
         [2,6,8,9,5,2,6,8,9,5],
         [3,7,1,6,4,3,7,1,6,4],
         [1,2,4,1,7,1,2,4,1,7],
         [3,5,2,7,6,3,5,2,7,6],
         [2,7,9,5,5,2,7,9,5,5],
         [3,9,7,3,4,3,9,7,3,4],
         [4,1,5,9,2,4,1,5,9,2]],
        tsp(Matrix, Cities, Costs,Cost).


%% This problem is from 
%% GLPK:s example tsp.mod
%% (via http://www.hakank.org/minizinc/tsp.mzn)
%% """
%% These data correspond to the symmetric instance ulysses16 from:
%% Reinelt, G.: TSPLIB - A travelling salesman problem library.
%% ORSA-Journal of the Computing 3 (1991) 376-84;
%% http://elib.zib.de/pub/Packages/mp-testdata/tsp/tsplib 
%% 
%% The optimal solution is 6859
%% """
tsp_test(glpk,Cities, Costs,Cost) :-
        Matrix = 
        [[0,509,501,312,1019,736,656,60,1039,726,2314,479,448,479,619,150],
         [509,0,126,474,1526,1226,1133,532,1449,1122,2789,958,941,978,1127,542],
         [501,126,0,541,1516,1184,1084,536,1371,1045,2728,913,904,946,1115,499],
         [312,474,541,0,1157,980,919,271,1333,1029,2553,751,704,720,783,455],
         [1019,1526,1516,1157,0,478,583,996,858,855,1504,677,651,600,401,1033],
         [736,1226,1184,980,478,0,115,740,470,379,1581,271,289,261,308,687],
         [656,1133,1084,919,583,115,0,667,455,288,1661,177,216,207,343,592],
         [60,532,536,271,996,740,667,0,1066,759,2320,493,454,479,598,206],
         [1039,1449,1371,1333,858,470,455,1066,0,328,1387,591,650,656,776,933],
         [726,1122,1045,1029,855,379,288,759,328,0,1697,333,400,427,622,610],
         [2314,2789,2728,2553,1504,1581,1661,2320,1387,1697,0,1838,1868,1841,1789,2248],
         [479,958,913,751,677,271,177,493,591,333,1838,0,68,105,336,417],
         [448,941,904,704,651,289,216,454,650,400,1868,68,0,52,287,406],
         [479,978,946,720,600,261,207,479,656,427,1841,105,52,0,237,449],
         [619,1127,1115,783,401,308,343,598,776,622,1789,336,287,237,0,636],
         [150,542,499,455,1033,687,592,206,933,610,2248,417,406,449,636,0]
        ],
        tsp(Matrix, Cities, Costs,Cost).


%%
%% generate_random_matrix(N, MaxVal)
%%
%% Generate a random NxN matrix int the range of MinVal..MaxVal.
%%
generate_random_matrix(N,MinVal, MaxVal,Matrix) :-
        findall(Row,
                (between(1,N,_I),
                 findall(R,
                         (between(1,N,_J),
                          random_between(MinVal,MaxVal,R)),
                         Row
                        )
                ),
                Matrix).


%%
%% generate_random_matrix_zero_diag(N, MaxVal)
%%
%% Generate a random NxN matrix in the range of 1..MaxVal
%% except for the main diagonal where the value is 0.
%%
generate_random_matrix_zero_diag(N,MaxVal,Matrix) :-
        findall(Row,
                (between(1,N,I),
                 findall(R,
                         (
                         between(1,N,J),
                          (
                           I == J
                          ->
                           R = 0
                          ;
                           random_between(1,MaxVal,R)
                          )
                         ),
                         Row
                        )
                ),
                Matrix).
:- initialization(go).
%---------------------------------------------------- 235 hakank_swi_tunapalooza
/*

  Tunapalooza puzzle (Dell Logic Puzzles) in SWI Prolog

  http://brownbuffalo.sourceforge.net/TunapaloozaClues.html
  """
  Title: Tunapalooza
  Author: Eliot George
  Publication: Dell Logic Puzzles
  Issue: April, 1998
  Page: 10
  Stars: 2
 
  Tim and Keri have a full day ahead for themselves as they plan to see 
  and hear everything at Tunapalooza '98, the annual save-the-tuna benefit 
  concert in their hometown. To cover the most ground, they will have to 
  split up. They have arranged to meet during four rock band acts 
  (Ellyfish, Korrupt, Retread Ed and the Flat Tires, and Yellow Reef) at 
  planned rendezvous points (carnival games, information booth, mosh pit, 
  or T-shirt vendor). Can you help match each band name with the type of 
  music they play (country, grunge, reggae, or speed metal) and Tim and 
  Kerri's prearranged meeting spot while they play?
  
  1. Korrupt isn't a country or grunge music band.
  2. Tim and Kerri won't meet at the carnival games during Ellyfish's 
     performance.
  3. The pair won't meet at the T-shirt vendor during the reggae band's show.
  4. Exactly two of the following three statements are true:
  a) Ellyfish plays grunge music.
  b) Tim and Kerri won't meet at the information booth during a 
     performance by Retread Ed and the Flat Tires.
  c) The two friends won't meet at the T-shirt vendor while Yellow Reef 
     is playing.
  5. The country and speed metal acts are, in some order, Retread Ed 
     and the Flat Tires and the act during which Tim and Kerri will 
     meet at the mosh pit.
  6. The reggae band is neither Korrupt nor the act during which Tim and 
     Kerri will meet at the information booth.
  
  Determine: Band name -- Music type -- Meeting place
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        N = 4,
        
        Ellyfish            = 1,
        Korrupt             = 2,
        Retread_Ed_and_the_Flat_Tires = 3,
        Yellow_Reef         = 4,
        RockBand = [Ellyfish,Korrupt,Retread_Ed_and_the_Flat_Tires,Yellow_Reef],
   
        Genre = [Country, Grunge, Reggae, SpeedMetal],
        Genre ins 1..N,

        Rendevouz = [CarnivalGames, InformationBooth, MoshPit, TShirtVendor],
        Rendevouz ins 1..N,

        all_different(Genre),
        all_different(Rendevouz),

        %% 1. Korrupt isn't a country or grunge music band.
        (Korrupt #\= Country #/\ Korrupt #\= Grunge),

        %% 2. Tim and Kerri won't meet at the carnival games during Ellyfish's 
        %%    performance.
        Ellyfish #\= CarnivalGames,

        %% 3. The pair won't meet at the T-shirt vendor during the reggae 
        %%    band's show.
        Reggae #\= TShirtVendor,

        %% 4. Exactly two of the following three statements are true:
        %% a) Ellyfish plays grunge music.
        %% b) Tim and Kerri won't meet at the information booth during a 
        %%    performance by Retread Ed and the Flat Tires.
        %% c) The two friends won't meet at the T-shirt vendor while 
        %%    Yellow Reef is playing.
        R1 in 0..1,
        R2 in 0..1,
        R3 in 0..1,
        Ellyfish #= Grunge #<==> R1 #= 1,
        InformationBooth #\= Retread_Ed_and_the_Flat_Tires #<==> R2 #= 1,
        TShirtVendor #\= Yellow_Reef #<==> R3 #= 1,
        R1 + R2 + R3 #= 2,
   
        %% 5. The country and speed metal acts are, in some order, Retread Ed 
        %%    and the Flat Tires and the act during which Tim and Kerri will 
        %%    meet at the mosh pit.
        (  
           ( Country #= Retread_Ed_and_the_Flat_Tires #/\ SpeedMetal #= MoshPit )
        #\/
        ( SpeedMetal #= Retread_Ed_and_the_Flat_Tires #/\ Country #= MoshPit )
        ),
   
        
        %% 6. The reggae band is neither Korrupt nor the act during
        %%    which Tim and Kerri will meet at the information booth.
        Reggae #\= Korrupt,
        Reggae #\= InformationBooth,

        flatten([Genre,Rendevouz],Vars),

        labeling([],Vars),
        writeln("Rockband "=RockBand),
        writeln("Genre    "=Genre),
        writeln("Rendevouz"=Rendevouz),nl,
        nl,
        fail.

go.
:- initialization(go).
%--------------------------------------------------- 236 hakank_swi_twin_letters
/*

  Twin letters in SWI Prolog

  From
  http://www.comp.nus.edu.sg/~henz/projects/puzzles/digits/index.html
  """
  Twin Letters    

  In the following puzzle, there are ten pairs of
  letters to be assigned to the same digit so that the multiplication
  (including intermediate results) is correct. Can you find out the
  pairs and their values?

          A B C
   *      D E F
   ____________
          G H I
        J K L
      M N O
   ____________
      P Q R S T



  Q=R=0, D=H=1, A=B=2, J=M=3, C=P=4, 
  K=N=5, I=T=6, E=G=7, L=O=8, F=S=9

  224 * 179
  _________
        716
       358
      358
  _________
      40096 
  """""


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        LD = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T],
        twin(LD), 
        writeln([a=A,b=B,c=C,d=D,e=E,f=F,g=G,h=H,i=I,j=J]),
        writeln([k=K,l=L,m=M,n=N,o=O,p=P,q=Q,r=R,s=S,t=T]),
        
        Alpha = [a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t],
        writeln(LD),
        findall(DD-CH,
                (between(0,9,DD),
                 element(Ix,LD,DD),
                 nth1(Ix,Alpha,CH)
                ),
                Sol),
        writeln(Sol),
        nl.


twin(LD) :-

        LD = [A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T],
        LD ins 0..9,

        C1 in 0..1,
        C2 in 0..2,
        C3 in 0..1,

        %% exactly 2 occurrences of each digit
        findall(DD-2,between(0,9,DD), GCC),
        global_cardinality(LD,GCC),

        100*G + 10*H + I +
        1000*J + 100*K + 10*L +
        10000*M + 1000*N + 100*O #=
        10000*P + 1000*Q + 100*R + 10*S + T,
   
        (100*D + 10*E + F)*C #= 100*G + 10*H + I,
        (100*D + 10*E + F)*B #= 100*J + 10*K + L,
        (100*D + 10*E + F)*A #= 100*M + 10*N + O,
        
        (100*A + 10*B + C) * (100*D + 10*E + F) #=
        10000*P + 1000*Q + 100*R + 10*S + T,

        %% Carry constraints
             T    #= I,
        S + 10*C1 #= H + L,
        R + 10*C2 #= G + K + O + C1,
        Q + 10*C3 #= J + N + C2,
             P    #= M + C3,

        flatten([LD,C1,C2,C3],Vars),
        labeling([enum],Vars),
        nl.
:- initialization(go).
%-------------------------------------------------------- 237 hakank_swi_volsay1
/*

  Volsay problem in SWI Prolog

  From OPL model volsay.mod
  """
  Consider a Belgian company Volsay, which specializes in producing ammoniac gas 
  (NH3) and ammonium chloride (NH4Cl). Volsay has at its disposal 50 units of 
  nitrogen (N), 180 units of hydrogen (H), and 40 units of chlorine (Cl). The company 
  makes a profit of 40 Euros for each sale of an ammoniac gas unit and 50 Euros 
  for each sale of an ammonium chloride unit. Volsay would like a production plan 
  maximizing its profits given its available stocks. 
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   Gas in 0..100000,
   Chloride in 0..100000,

   Gas + Chloride #=< 50,
   3 * Gas + 4 * Chloride #=< 180,

   MaxVal #= 40 * Gas + 50 * Chloride,

   labeling([max(MaxVal)],[Gas,Chloride]),

   writeln(gas=Gas),
   writeln(chloride=Chloride),
   writeln(max_val=MaxVal),
   nl.
:- initialization(go).
%-------------------------------------------------------- 238 hakank_swi_volsay2
/*

  Volsay problem in SWI Prolog

  From OPL model volsay.mod
  """
  Consider a Belgian company Volsay, which specializes in producing ammoniac gas 
  (NH3) and ammonium chloride (NH4Cl). Volsay has at its disposal 50 units of 
  nitrogen (N), 180 units of hydrogen (H), and 40 units of chlorine (Cl). The company 
  makes a profit of 40 Euros for each sale of an ammoniac gas unit and 50 Euros 
  for each sale of an ammonium chloride unit. Volsay would like a production plan 
  maximizing its profits given its available stocks. 
  """

  Slightly different from volsay1.pi

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   Products = [Gas, Chloride],
   Products ins 0..100000,

   Gas + Chloride #=< 50,
   3 * Gas + 4 * Chloride #=< 180,
   MaxVal #= 40 * Gas + 50 * Chloride,

   labeling([max(MaxVal)],Products),

   writeln(gas=Gas),
   writeln(chloride=Chloride),
   writeln(max_val=MaxVal),
   nl.
:- initialization(go).
%-------------------------------------------------------- 239 hakank_swi_volsay3
/*

  Volsay problem in SWI Prolog

  From OPL model volsay.mod
  """
  Consider a Belgian company Volsay, which specializes in producing ammoniac gas 
  (NH3) and ammonium chloride (NH4Cl). Volsay has at its disposal 50 units of 
  nitrogen (N), 180 units of hydrogen (H), and 40 units of chlorine (Cl). The company 
  makes a profit of 40 Euros for each sale of an ammoniac gas unit and 50 Euros 
  for each sale of an ammonium chloride unit. Volsay would like a production plan 
  maximizing its profits given its available stocks. 
  """


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
   Products = [Gas, Chloride],
   Products ins 0..100000,
   Profits = [40,50],
   Hydrogen = [3,4],
   MaxHydrogen = 180,
   MaxUnits = 50,

   scalar_product(Hydrogen, Products,#=<, MaxHydrogen),
   scalar_product(Profits, Products, #=, MaxVal),
   sum(Products,#=<,MaxUnits),

   labeling([max(MaxVal)],Products),

   writeln(gas=Gas),
   writeln(chloride=Chloride),
   writeln(max_val=MaxVal),
   nl.
:- initialization(go).
%--------------------------------------------------- 240 hakank_swi_war_or_peace
/*

  War or Peace problem in SWI Prolog

  From the Alma0 model war_or_peace.a0  
  http://www.cwi.nl/en/alma
  """
  There are N countries.
  Each pair of two countries is either at war or has a peace treaty.
  Each pair of two countries that has a common enemy has a peace treaty.
  What is the minimum no of peace treaties?
  """
  
  Note: 
  For 8 countries there are 35 solutions with the minimum number of peace treaties 12.

  The minimum number of peace treaties for N=2.12. seems to be 
  https://oeis.org/A002620
  Quarter-squares: floor(n/2)*ceiling(n/2). Equivalently, floor(n^2/4). 

  0, 1, 2, 4, 6, 9, 12, 16, 20, 25, 30, 36, 42, 49, 56, 64, 72, 81,..


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%
% 8 countries.
%
go :-
        writeln("Find the minimum for 8 countries:"),
        N = 8,
        time(once(war_and_peace(N,_X, CountPeaces))),
        writeln(minumum=CountPeaces),

        writeln("\nFind all solution with minimal peace treaties"),
        time(once(findall(X2,war_and_peace(N,X2, CountPeaces),All))),
        length(All,Len),
        writeln(len=Len),
        maplist(print_matrix,All),
        writeln(len=Len),
        nl.

%
% General solution: Check 2..n countries.
%
% N  2 3 4 5 6 7  8  9 10 11 12 13 14 15 16
%   [0,1,2,4,6,9,12,16,20,25,30,36,42,49,56]
%
go2 :-
        between(2,15,N),
        writeln(n=N),
        time(once(war_and_peace(N,X, CountPeaces))),
        print_matrix(X),
        writeln(minimum=CountPeaces),
        nl,
        fail,
        nl.

go2.

war_and_peace(N, X, CountPeaces) :-
        War = 0,
        Peace = 1,
        new_matrix(N,N,War..Peace,X),
        flatten(X,Vars),

        N2 #= N*N,
        CountPeaces in 1..N2,
        sum(Vars,#=,CountPeaces),

        N1 #= N-1,
        numlist(2,N1,Is),
        maplist(wop_loop(War,Peace,X,N),Is),
        
        (var(CountPeaces)
        ->
         labeling([ffc,min(CountPeaces)],Vars)
        ;
         labeling([enum],Vars)
        ).



wop_loop(War,Peace,X,N,I) :-
        I1 #= I+1,
        numlist(I1,N,Js),
        maplist(wop_loop_(War,Peace,X,I),Js).

wop_loop_(War,Peace,X,I,J) :-
        matrix_element(X,I,J,XIJ),
        I1 #= I-1,
        numlist(1,I1,Ks),
        sum_line(Ks,X,I,J,0,SumLine),
        (
         (
          XIJ #= War #/\ SumLine #= I1
         )
        #\/
        (
         XIJ #= Peace
        )
        ).


sum_line([],_X,_I,_J,Sum,Sum).
sum_line([K|Ks],X,I,J,Sum0,Sum) :-
        matrix_element(X,K,I,XKI),
        matrix_element(X,K,J,XKJ),
        B in 0..1,
        %% (XKI #= Peace #\/ XKJ #= Peace) #<==> B #= 1,
        XKI + XKJ #> 0 #<==> B #= 1,        
        Sum1 #= Sum0 + B,
        sum_line(Ks,X,I,J,Sum1,Sum).
        
:- initialization(go).
%------------------------------------------------------ 241 hakank_swi_warehouse
/*

  Warehouse location problem in SWI Prolog

  From OPL model warehouse.mod
  Solution:
  """
  Optimal solution found with objective: 383
  open= [1 1 1 0 1]
  storesof= [{3} {1 5 6 8} {7 9} {} {0 2 4}]
  """

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

        Warehouses = ["Bonn", "Bordeaux", "London", "Paris", "Rome"],
        Capacity= [1,4,2,1,3],
        SupplyCost = 
        [[ 20, 24, 11, 25, 30 ], 
         [ 28, 27, 82, 83, 74 ],
         [ 74, 97, 71, 96, 70 ],
         [  2, 55, 73, 69, 61 ],
         [ 46, 96, 59, 83,  4 ],
         [ 42, 22, 29, 67, 59 ],
         [  1,  5, 73, 59, 56 ],
         [ 10, 73, 13, 43, 96 ],
         [ 93, 35, 63, 85, 46 ],
         [ 47, 65, 55, 71, 95 ]],
        
        Fixed = 30,
        
        length(SupplyCost,NumStores),
        transpose(SupplyCost,SupplyCostT),
        length(SupplyCostT,NumWarehouses),
        
        flatten(SupplyCost,SupplyCostList),
        
        %% suppliers
        new_matrix(NumStores, NumWarehouses, 0..1, Supply),
        flatten(Supply,SupplyList),
        
        %% Open suppliers
        length(Open,NumWarehouses),
        Open ins 0..1,

        %% Supply: only one warehouse for a supply
        maplist(sum_supply,Supply),

        maplist(supply_open(Open),Supply),
        
        %% check capacity
        transpose(Supply,SupplyT),
        maplist(check_capacity,SupplyT,Capacity),  

        
        %% calculate total costs: Fixed costs for the open
        total_cost(Open,Fixed,0,Costs1),
        
        %% cost for open suppliers
        scalar_product(SupplyCostList,SupplyList,#=,Costs2),

        TotalCosts #= Costs1 + Costs2,

        %% search
        flatten([SupplyList,Open], Vars),
        labeling([ff,enum,min(TotalCosts)], Vars),

        %% output
        writeln(open=Open),
        writeln("supply:"),
        maplist(writeln,Supply),
        nl,
        writeln(total_costs=TotalCosts),

        findall([WH,OpenW,Stores],
                (between(1,NumWarehouses,W),
                 nth1(W,Warehouses,WH),
                 nth1(W,Open,OpenW),
                 findall(S,
                         (between(1,NumStores,S),
                          matrix_element(Supply,S,W,1)
                         ),
                         Stores)
                 ),
                Sol),
        maplist(format("~w: ~w Stores: ~w~n"),Sol),
        nl.

%% Supply: only one warehouse for a supply
sum_supply(SRow) :-
        sum(SRow,#=,1).

%%
%% A supply that supply something must be open
%%
supply_open(Open,Supply) :-
        maplist(supply_open_1,Open,Supply).
supply_open_1(O,S) :-
        S #=< O.

%%
%% check capacity
%%
check_capacity(SupplyCol,Cap) :-
        sum(SupplyCol, #=<, Cap).

%%
%% calculate total costs: Fixed costs for an open warehouse.
%%
total_cost([],_Fixed,TotalCost,TotalCost).
total_cost([O|Os],Fixed,TotalCost0,TotalCost) :-
        TotalCost1 #= TotalCost0 + Fixed * O,
        total_cost(Os,Fixed,TotalCost1,TotalCost).
:- initialization(go).
%---------------------------------------------------------- 242 hakank_swi_water
/*

  Water jugs problem in SWI Prolog

  See https://en.wikipedia.org/wiki/Water_pouring_puzzle
  """
  Water pouring puzzles (also called water jug problems or measuring puzzles) are a class of puzzle
  involving a finite collection of water jugs of known integer capacities (in terms of a liquid
  measure such as liters or gallons). Initially each jug contains a known integer volume of liquid,
  not necessarily equal to its capacity. Puzzles of this type ask how many steps of pouring water
  from one jug to another (until either one jug becomes empty or the other becomes full) are
  needed to reach a goal state, specified in terms of the volume of liquid that must be present in
  some jug or jugs.
  """
  
  The solution:
    fill1=(8,0)
    transfer_1_to_2=(3,5)
    empty2=(3,0)
    transfer_1_to_2=(0,3)
    fill1=(8,3)
    transfer_1_to_2=(6,5)
    empty2=(6,0)
    transfer_1_to_2=(1,5)
    empty2=(1,0)
    transfer_1_to_2=(0,1)
    fill1=(8,1)
    transfer_1_to_2=(4,5)
    len=12


  The bplan module is here: http.//hakank.org/swi_prolog/bplan.pl

  Compare with the following which use a different approach:
  - http.//hakank.org/swi_prolog/3_jugs.pl
  - http.//hakank.org/swi_prolog/3_jugs_regular.pl  

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(bplan).
:- use_module(library(clpfd)).

%%
%% Solve the water jugs problem
%%
go :-
        abolish_all_tables, % bplan tables reachable/3 (legal_moves/3)
        bplan(Plan),
        maplist(writeln,Plan),
        length(Plan,Len),
        writeln(len=Len),
        nl.

%%
%% Initial state: both water jugs are empty
%%
initial_state([0,0]).


%%
%% Goal states: either of the jugs should contain 4 water units
%%
goal_state([4,_]).
goal_state([_,4]).

%%
%% (Max) Capacities of the water jugs.
%%
capacity(1,8).
capcity(2,5).


% goal_state([0,4]). %% a more exact goal

legal_move([_V1,V2],Action,S1) :-
        capacity(1,C),
        Action = (fill1=(C,V2)),
        S1 = [C,V2].

legal_move([V1,_V2],Action,S1) :-
        capacity(2,C),
        Action = (fill2=(V1,C)),        
        S1 = [V1,C].

legal_move([V1,V2],Action,S1) :-
        V1 #> 0,
        Action = (empty1=(0,V2)),
        S1 = [0,V2].

legal_move([V1,V2],Action,S1) :-
        V2 #> 0,
        Action = (empty2=(V1,0)),
        S1 = [V1,0].

legal_move([V1,V2],Action,S1) :-
        V2 #> 0,
        capcity(1,C1),
        Liquid #= V1+V2,
        Excess #= Liquid-C1,
        (Excess #=< 0
        ->
         W1 #= Liquid, W2 #= 0
        ;
         W1 #= C1, W2 #= Excess
        ),
        Action = (transfer_2_to_1=(W1,W2)),
        S1=[W1,W2].

legal_move([V1,V2],Action,S1) :-
        V1 #> 0,
        capcity(2,C2),
        Liquid #= V1+V2,
        Excess #= Liquid-C2,
        (Excess #=< 0
        ->
         W2 #= Liquid, W1 #= 0
        ;
         W2 #= C2, W1 #= Excess
        ),
        Action = (transfer_1_to_2=(W1,W2)),
        S1=[W1,W2].    
:- initialization(go).
%---------------------------------------------- 243 hakank_swi_who_killed_agatha
/*

  Who killed agatha? (The Dreadsbury Mansion Murder Mystery) in SWI Prolog

  http://www.lsv.ens-cachan.fr/~goubault/H1.dist/H1.1/Doc/h1003.html
  """ 
  Someone in Dreadsbury Mansion killed Aunt Agatha. 
  Agatha, the butler, and Charles live in Dreadsbury Mansion, and 
  are the only ones to live there. A killer always hates, and is no 
  richer than his victim. Charles hates noone that Agatha hates. Agatha 
  hates everybody except the butler. The butler hates everyone not richer 
  than Aunt Agatha. The butler hates everyone whom Agatha hates. 
  Noone hates everyone. Who killed Agatha? 
  """

  Originally from F. J. Pelletier: 
  Seventy-five problems for testing automatic theorem provers. 
  Journal of Automated Reasoning, 2: 191 216, 1986.
  http://www.sfu.ca/~jeffpell/papers/75ATPproblems86.pdf


  I have blogged about the problem here:
  * "Learning constraint programming - part II: Modeling with the Element constraint"
    http://www.hakank.org/constraint_programming_blog/2009/05/learning_constraint_programmin.html
  * "Learning Constraint Programming IV: Logical constraints: Who killed Agatha? revisited"
    http://www.hakank.org/constraint_programming_blog/2009/05/learning_constraint_programmin_3.html

  Here is a more detailed explanation (describing the MiniZinc and Picat models):
  * Decision Model "Who killed Agatha?"
   http://hakank.org/minizinc/who_killed_agatha_dmcommunity_challenge.html


  Note: This SWI Prolog model is ported from my Picat model (http://hakank.org/picat/who_killed_agatha.pi)
  Since SWI Prolog don't support loops or list comprehensions (AFAIK), some of the original Picat code is
  kept to help understand this model. Oh, and I'm sure that there's other approaches that is not
  that convoluted, but I wanted to implement the same general approach to this problem.

  This ("the same general approach") means that we - as expected - get 8 solutions, all indicating
  that Agatha is the killer, which is shown in go/0.

  
  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).


%
% There are 8 solutions: all states that Agatha killed herself.
%
go :- 
        % collect all possible solutions
        findall(Killer, who_killed_agatha(Killer), L),
        length(L,Len),        
        writeln(killer=L),
        writeln(len=Len).


who_killed_agatha(Killer) :-
        % Setup
        N = 3,
        Agatha = 1,
        Butler = 2,
        Charles = 3,
        People = [Agatha,Butler,Charles],
        
        Killer in 1..N,

        %
        % define the Hates and Richer matrices
        %
        new_matrix(N,N, 0..1, Hates),    
        new_matrix(N,N, 0..1, Richer),
    
        % 
        % The constraints
        % 

        %
        % Agatha, the butler, and Charles live in Dreadsbury Mansion, and 
        % are the only ones to live there. 
        %

        % * A killer always hates, and is no richer than his victim. 
        check1(People, Agatha, Killer, Hates, Richer),
    
        % * Define the concept of richer: no one is richer than him-/herself
        matrix_element(Richer,Agatha,Agatha,0),
        matrix_element(Richer,Butler,Butler,0),
        matrix_element(Richer,Charles,Charles,0),

    
        % (contd...) if i is richer than j then j is not richer than i
        % foreach(I in 1..N, J in 1..N, I != J)
        %    Richer[I,J] #= 1 #=> Richer[J,I] #= 0,
        %    Richer[J,I] #= 0 #=> Richer[I,J] #= 1
        % end,
        check2(People,Richer),

        % * Charles hates no one that Agatha hates. 
        % foreach(I in 1..N) Hates[Agatha, I] #= 1 #=> Hates[Charles, I] #= 0 end,
        check3(People, Agatha, Charles, Hates),
    
        % % * Agatha hates everybody except the butler. 
        matrix_element(Hates,Agatha,Butler,0),
        matrix_element(Hates,Agatha,Charles,1),
        matrix_element(Hates,Agatha,Agatha,1),
        
        % * The butler hates everyone not richer than Aunt Agatha. 
        check4(People,Agatha,Butler,Richer,Hates),

        % * The butler hates everyone whom Agatha hates. 
        check5(People,Agatha,Butler,Hates),
   
        % * No one hates every one.
        check6(People,Hates),
    
        % * A killer always hates, and is no richer than his victim. 
        matrix_element(Hates,Killer,Agatha,1),
        matrix_element(Richer,Killer,Agatha,0),

        % * Who killed Agatha?

        append(Hates,Richer,Vars1),
        append(Vars1,[Killer],Vars2),    
        flatten(Vars2,Vars),
        labeling([ffc, bisect],Vars).


% * A killer always hates, and is no richer than his victim. 
%    
%    foreach(I in 1..N)
%       Killer #= I #=> Hates[I, Agatha] #= 1,
%       Killer #= I #=> Richer[I, Agatha] #= 0
%    end,
%
check1([], _Agatha, _Killer, _Hates, _Richer).
check1([I|L], Agatha, Killer, Hates, Richer) :-
        matrix_element(Hates,I,Agatha,HatesA),
        matrix_element(Richer,I,Agatha,RicherA),
        Killer #= I #==> HatesA #= 1,
        Killer #= I #==> RicherA #= 0,
        check1(L, Agatha, Killer, Hates, Richer).

% % (contd...) if i is richer than j then j is not richer than i
% foreach(I in 1..N, J in 1..N, I != J)
%    Richer[I,J] #= 1 #=> Richer[J,I] #= 0,
%    Richer[J,I] #= 0 #=> Richer[I,J] #= 1
% end,
check2(L,Richer) :-
        findall([I,J], (member(I,L),member(J,L), I \= J),L1),
        check2_(L1,Richer).
check2_([],_Richer).
check2_([[I,J]|Ls], Richer) :-
        matrix_element(Richer,I,J,RIJ),
        matrix_element(Richer,J,I,RJI),
        RIJ #= 1 #==> RJI #= 0,
        RJI #= 0 #==> RIJ #= 1,
        check2_(Ls,Richer).
       
        

% * Charles hates no one that Agatha hates. 
% foreach(I in 1..N) Hates[Agatha, I] #= 1 #=> Hates[Charles, I] #= 0 end,
check3([], _Agatha, _Charles, _Hates).
check3([I|L], Agatha, Charles, Hates) :-
        matrix_element(Hates,Agatha,I,HAI),
        matrix_element(Hates,Charles,I,HCI),
        HAI #= 1 #==> HCI #= 0,
        check3(L, Agatha, Charles, Hates).
        
% * The butler hates everyone not richer than Aunt Agatha. 
% foreach(I in 1 ..N)
%   Richer[I, Agatha] #= 0 #=> Hates[Butler, I] #= 1
% end,
check4([],_Agatha,_Butler,_Richer,_Hates).
check4([I|L],Agatha,Butler,Richer,Hates) :-
        matrix_element(Richer,I,Agatha,RIA),
        matrix_element(Hates,Butler,I,HBI),
        RIA #= 0 #==> HBI #= 1,
        check4(L,Agatha,Butler,Richer,Hates).
        
% * The butler hates everyone whom Agatha hates. 
% foreach(I in 1..N) Hates[Agatha, I] #= 1 #=> Hates[Butler, I] #= 1 end,
check5([],_Agatha,_Butler,_Hates).
check5([I|L],Agatha,Butler,Hates) :-
        matrix_element(Hates,Agatha,I,HAI),
        matrix_element(Hates,Butler,I,HBI),
        HAI #= 1 #==> HBI #= 1,
        check5(L,Agatha,Butler,Hates).

% * No one hates every one.
% foreach(I in 1..N) sum([Hates[I,J] : J in 1..N]) #=< 2 end,
check6([],_Hates).
check6([I|L],Hates) :-
        %% This don't work.
        % People = [1,2,3],
        % findall(HIJ,(member(J,People), matrix_element(Hates,I,J,HIJ)),S),
        % sum(S, #=<, 2),
        % writeln(s=S),

        %% This works:
        matrix_element(Hates,I,1,HI1),
        matrix_element(Hates,I,2,HI2),
        matrix_element(Hates,I,3,HI3),
        HI1 + HI2 + HI3 #=< 2,
        check6(L,Hates).
:- initialization(go).
%------------------------------------------ 244 hakank_swi_who_killed_the_bosmer
/*

  Who killed the Bosmer logic puzzle in SWI Prolog

  From https://swi-prolog.discourse.group/t/similar-einstein-riddle/5142/6
  """
  A Bosmer, was slain. The Altmer claims the Dunmer is guilty. The Dunmer says the Khajiit did it. 
  The Orc swears he didn’t kill the Bosmer. The Khajiit says the Dunmer is lying. If only one of 
  these speaks the truth, who killed the Bosmer?""
  """

  Cf http://hakank.org/picat/who_killed_the_bosmer.pi
     http://hakank.org/webppl/who_killed_the_bosmer.wppl

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).

go :- 
          L = [altmer,dunmer,orc,khajiit],

          % Who speaks the truth?
          SpeaksTruth = [AltmerT,DunmerT,OrcT,KhajiitT],
          SpeaksTruth ins 0..1,

          % Who is guilty?
          Guilty = [_AltmerG,DunmerG,OrcG,KhajiitG],
          Guilty ins 0..1,
   
          % A Bosmer, was slain.
  
          % The Altmer claims the Dunmer is guilty.
          AltmerT #<==> DunmerG,

          % The Dunmer says the Khajiit did it.
          DunmerT #<==> KhajiitG,
  
          % The Orc swears he didn’t kill the Bosmer.
          OrcT #<==> (OrcG #= 0),
  
          % The Khajiit says the Dunmer is lying.
          KhajiitT #<==> (DunmerT #= 0),

          % If only one of these speaks the truth, who killed the Bosmer?""
          sum(SpeaksTruth,#=,1),

          % Only one is is guilty
          sum(Guilty, #=,1),

          append(SpeaksTruth,Guilty,Vars),
          label(Vars),
          writeln(speaks_truth=SpeaksTruth),
          writeln(guilty=Guilty),
          nl,
          maplist(print_solution,SpeaksTruth,Guilty,L),
          fail,
          nl.
go.


print_solution(SpeaksTruth,Guilty,T) :-
        Guilty      == 1 -> format("Guilty: ~w~n",[T]) ; true,
        SpeaksTruth == 1 -> format("Speaks truth: ~w~n",[T]) ; true.
        
:- initialization(go).
%--------------------------------------------------------- 245 hakank_swi_wordle
/*

  Wordle solver in SWI Prolog

  Note: This program requires a wordlist (here called wordle_small.txt).

  Two Wordle related wordlist can be found at
  https://github.com/dlew/wordle-solver/tree/main/src/main/resources
  - target: the small wordlist, 2315 words (here called wordle_small.txt)
  - wordlist: the large wordlist, 12971 words

  (This is a port of my Picat program http://hakank.org/picat/wordle2.pi .)

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/
:- use_module(library(readutil)).

/*
  Some realistic tests.

*/
go :-

        wordle("...n.",["","","","",""],"slat"),
        % ->  [crone,brine,crony,briny,prone,corny,borne,prune,drone,phone,brink,phony,bound,pound,grind,frond,found,bring,drink,being,whine,fiend,chunk,whiny,prong,mound,horny,urine,round,drunk,irony,doing,wound,hound,opine,wring,rhino,downy,wrong,wrung,ebony,ovine,dying,young,owing,eying,vying,eking,penne,penny,bunny,funny,going,ninny,ozone,icing]

        wordle(".r.n.",["","","","",""],"slatcoe"),
        % -> [briny,brink,grind,bring,drink,drunk,wring,wrung]
  
        wordle("...st",["s","","","",""],"flancre"),
        % -> [moist,hoist,ghost,midst,joist,joust,boost,twist]
  
        wordle(".r.n.",["","","","",""],"slatcoe"),
        % -> [briny,brink,grind,bring,drink,drunk,wring,wrung]
  
        wordle(".r.n.",["","","","",""],"slatcoebiy"),
        % -> [drunk,wrung]
  
        wordle(".run.",["","","","",""],"slatcoebiydk"),
        % ->  [wrung]

        wordle(".l...",["","","a","","t"],"sn"),
        % -> [alter,ultra,altar]

        % 2022-03-16: Wordle word of today
        wordle(".....",["","","a","","t"],"sln"),
        % [cater,triad,tread,today,tamer,party,matey,taper,faith,tardy,batch,water,tapir,patch,hater,warty,haute,taker,patio,tweak,bathe,amity,match,acute,earth,watch,tacky,ratio,actor,datum,after,topaz,quota,extra,catty,batty,tatty,patty,catch,fatty,eater,terra,ratty,aorta,theta,hatch,tibia,taboo,tabby,taffy,cacti,attic]
        
        % wordle(".....",["","","","",""],""),
        % -> All words...

        nl.


%
% wordle(Words,CorrectPos,CorrectChar,NotInWord)
% - Words: the wordlist/candidates
% - CorrectPos: correct character in correct position,
%   Example: n is in position 4 and t is in position 5: "...nt": 
% - CorrectChar: correct character but in wrong position.
%   Example: a is not in position 1, l is not in position 2: ["a","l","","",""]
% - NotInWord: characters not in word.
%   Example: s, a, and t are not in the word: "sat"
%
wordle(CorrectPos, CorrectChar, NotInWord) :-
        writeln(wordle(words,CorrectPos,CorrectChar,NotInWord)),
        N = 5,
        File = "wordle_small.txt", % 2314 words
        read_words(File,N,Words),

        wordle(Words, CorrectPos, CorrectChar, NotInWord,[],Candidates),
        length(Candidates,CandidatesLen),
        writeln(candidates=Candidates),
        writeln(len=CandidatesLen),
        
        (Candidates \= [] ->
         Candidates = [Suggestion|_], writeln(suggestion=Suggestion)
        ;
         true
        ),
  
        nl.

%
% The main engine:
% Loop through all words and check if they are in the scope.
% 
wordle([],_CorrectPos,_CorrectChar,_NotInWord, AllWords,Sorted) :-
        sort_candidates(AllWords,Sorted).
wordle([Word|Words],CorrectPos1,CorrectChar1,NotInWord1, AllWords0,AllWords) :-
        string_chars(CorrectPos1,CorrectPos),
        string_chars(NotInWord1,NotInWord),
        maplist(string_chars,CorrectChar1,CorrectChar),
        ( (correct_pos(Word,CorrectPos),
           correct_char(Word,Word,CorrectChar),
           not_in_word(Word,NotInWord)) ->
          append(AllWords0,[Word],AllWords1),
          wordle(Words, CorrectPos, CorrectChar, NotInWord, AllWords1,AllWords)
        ;
          wordle(Words, CorrectPos, CorrectChar, NotInWord, AllWords0,AllWords)
        ).

%
% Correct position.
%
% Ensure that all chars != "." are in correct position.
% 
correct_pos([],[]).
correct_pos([C|Cs],[C2|CorrectPos]) :-
        (C == C2 ; C2 == '.'),
        correct_pos(Cs,CorrectPos).

%
% Correct char.
% Ensure that the character is in the word, but not
% in the given position.
% 
correct_char(_,_,[]).
correct_char(Word,[W|WordRest],[CC|CorrectChars]) :-
        correct_char_(Word,W,CC), % check each character in CorrectChars
        correct_char(Word,WordRest,CorrectChars).

%
% Helper function for correct_char/2.
% Check each character in CorrectChar against each
% character in the candidate word.
%
correct_char_(_,_,[]).
correct_char_(Word,W,[C|CorrectChars]) :-
        W \= C,
        memberchk(C,Word),
        correct_char_(Word,W,CorrectChars).

%
% Characters not in word.
% Ensure that the given chararacter are not in the
% candidate word.
% 
not_in_word(_Word,[]).
not_in_word(Word,[C|Cs]) :-
        \+ memberchk(C,Word),
        not_in_word(Word,Cs).

%
% Sort the candidates.
%
sort_candidates(Candidates,Sorted) :-
        % The probability order for each position in the word.
        % Reversed and with missing chars.
        % See http://hakank.org/picat/wordle.pi (go2/0) for the method to get this.
        Alphas1 = ["zyjkquinovhewlrmdgfaptbcsx",
                   "zqfkgxvbsdymcwptnhulieroaj",
                   "qjhzkxfwyvcbpmgdstlnrueoia",
                   "xyzbwhfvpkmdguotcrilasnejq",
                   "uzxbiwfcsgmpoakdnhlrtyejqv"
                  ],
        maplist(string_chars,Alphas1,Alphas),
        score_words(Candidates,Alphas,[],Scores),
        keysort(Scores,Sorted1),
        reverse(Sorted1,Sorted2),
        pairs_values(Sorted2,SortedList),
        maplist(string_chars,Sorted,SortedList).


%
% Score all words
% 
score_words([],_Alpha,Scores,Scores).
score_words([Word|Words],Alphas,Scores0,[Score-Word|Scores]) :-
        % We boost words with distinct characters.
        list_to_set(Word,Unique),
        length(Word,WordLen),
        length(Unique,UniqueLen),
        (WordLen == UniqueLen -> Score1 = 100 ; Score1 = 0),
        score_word(Word,Alphas,Score1,Score),
        score_words(Words,Alphas,Scores0,Scores).

% Score each character in a word
score_word([],_Alpha,Score,Score).
score_word([C|Cs],[Alpha|Alphas],Score0,Score) :-
        nth1(N,Alpha,C),        % find the position of this character
        S is N / 2,
        Score1 is Score0 + S,
        score_word(Cs,Alphas,Score1,Score).

% Print an empty board
empty() :-
        println("wordle(\".....\",[\"\",\"\",\"\",\"\",\"\"],\"\")").

read_words(File,Len, Words) :-
        read_file_to_string(File,Str,[]),
        split_string(Str,"\n", "",WordsRead),
        include(strlen(Len),WordsRead,Words1),
        maplist(string_chars,Words1,Words).

strlen(Len,Word) :-
        string_length(Word,Len).


:- initialization(go).
%----------------------------------------------------- 246 hakank_swi_wordle_dcg
/*

  Wordle solver using DCG in SWI Prolog

  This Wordle solver use DCGs for checking the Wordle constraints.
  It also includes a DCG for generating all the 2315 Wordle target words.

  This is a port of my Picat program http://hakank.org/picat/wordle_dcg.pi .

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(pairs)). % for pairs_keys_values/3

/*
  Some realistic tests.
*/

go :-

        wordle("...n.",["","","","",""],"slat"),
        % ->  [crone,brine,crony,briny,prone,corny,borne,prune,drone,phone,brink,phony,bound,pound,grind,frond,found,bring,drink,being,whine,fiend,chunk,whiny,prong,mound,horny,urine,round,drunk,irony,doing,wound,hound,opine,wring,rhino,downy,wrong,wrung,ebony,ovine,dying,young,owing,eying,vying,eking,penne,penny,bunny,funny,going,ninny,ozone,icing]

        wordle(".r.n.",["","","","",""],"slatcoe"),
        % -> [briny,brink,grind,bring,drink,drunk,wring,wrung]
  
        wordle("...st",["s","","","",""],"flancre"),
        % -> [moist,hoist,ghost,midst,joist,joust,boost,twist]
  
        wordle(".r.n.",["","","","",""],"slatcoe"),
        % -> [briny,brink,grind,bring,drink,drunk,wring,wrung]
  
        wordle(".r.n.",["","","","",""],"slatcoebiy"),
        % -> [drunk,wrung]
  
        wordle(".run.",["","","","",""],"slatcoebiydk"),
        % ->  [wrung]

        wordle(".l...",["","","a","","t"],"sn"),
        % -> [alter,ultra,altar]

        % 2022-03-16: Wordle word of today
        wordle(".....",["","","a","","t"],"sln"),
        % [cater,triad,tread,today,tamer,party,matey,taper,faith,tardy,batch,water,tapir,patch,hater,warty,haute,taker,patio,tweak,bathe,amity,match,acute,earth,watch,tacky,ratio,actor,datum,after,topaz,quota,extra,catty,batty,tatty,patty,catch,fatty,eater,terra,ratty,aorta,theta,hatch,tibia,taboo,tabby,taffy,cacti,attic]

        % 2022-03-27: Wordle word of today
        wordle(".....",["","","n","n","y"],"slatboe"),
        
        % wordle(".....",["","","","",""],""),
        % -> All words...

        nl.


%
% wordle(Words,CorrectPos,CorrectChar,NotInWord)
% - Words: the wordlist/candidates
% 
% - CorrectPos: correct character in correct position,
%   Example: n is in position 4 and t is in position 5: "...nt":
%   
% - CorrectChar: correct character but in wrong position.
%   Example: a is not in position 1, l is not in position 2: ["a","l","","",""]
%   
% - NotInWord: characters not in word.
%   Example: s, a, and t are not in the word: "sat"
%
wordle(CorrectPos, CorrectChar, NotInWord) :-
        writeln(wordle(words,CorrectPos,CorrectChar,NotInWord)),
        % Get all the words via the wordle_words DCG.
        findall(S,(wordle_words(L,[]),string_chars(L,S)),Words),

        wordle(Words, CorrectPos, CorrectChar, NotInWord,[],Candidates),
        length(Candidates,CandidatesLen),
        writeln(candidates=Candidates),
        writeln(len=CandidatesLen),
        
        (Candidates \= [] ->
         Candidates = [Suggestion|_], writeln(suggestion=Suggestion)
        ;
         true
        ),
  
        nl.

%
% The main engine:
% Loop through all words and check if they are in the scope.
% 
wordle([],_CorrectPos,_CorrectChar,_NotInWord, AllWords,Sorted) :-
        sort_candidates(AllWords,Sorted).
wordle([Word|Words],CorrectPos1,CorrectChar1,NotInWord1, AllWords0,AllWords) :-
        string_chars(CorrectPos1,CorrectPos),
        string_chars(NotInWord1,NotInWord),
        maplist(string_chars,CorrectChar1,CorrectChar),

        % connect Word + CorrectPos into pairs
        pairs_keys_values(Pairs1,Word,CorrectPos),
        % connect Word + CorrectChar into pairs        
        pairs_keys_values(Pairs2,Word,CorrectChar),
        ( (correct_pos(Pairs1,_,_),
           correct_char(Word,Pairs2,_,_),
           not_in_word(Word,NotInWord,_,_)) ->
          append(AllWords0,[Word],AllWords1),
          wordle(Words, CorrectPos, CorrectChar, NotInWord, AllWords1,AllWords)
        ;
          wordle(Words, CorrectPos, CorrectChar, NotInWord, AllWords0,AllWords)
        ).


            
%
% Correct position.
%
% Ensure that all chars != "." are in correct position.
% 
correct_pos([C-C2|Cs]) --> {(C == C2 ; C2 == '.')}, correct_pos(Cs).
correct_pos([]) --> [].

%
% Correct char.
% Ensure that the character is in the word, but not
% in the given position.
% 
correct_char(Word,[W-CC|WCC]) --> { (CC == [] ; (member(C,CC), C \= W, memberchk(C,Word)) ) }, 
                                    correct_char(Word,WCC).
correct_char(_Word,[]) --> [].

%
% Characters not in word.
% Ensure that the given chararacter are not in the
% candidate word.
% 
not_in_word(Word,[C|Cs]) --> {\+ memberchk(C,Word)}, not_in_word(Word,Cs).
not_in_word(_Word,[]) --> [].

%
%
% Sort the candidates.
%
sort_candidates(Candidates,Sorted) :-
        % The probability order for each position in the word.
        % Reversed and with missing chars.
        % See http://hakank.org/picat/wordle.pi (go2/0) for the method to get this.
        Alphas1 = ["zyjkquinovhewlrmdgfaptbcsx",
                   "zqfkgxvbsdymcwptnhulieroaj",
                   "qjhzkxfwyvcbpmgdstlnrueoia",
                   "xyzbwhfvpkmdguotcrilasnejq",
                   "uzxbiwfcsgmpoakdnhlrtyejqv"
                  ],
        maplist(string_chars,Alphas1,Alphas),
        score_words(Candidates,Alphas,[],Scores),
        keysort(Scores,Sorted1),
        reverse(Sorted1,Sorted2),
        pairs_values(Sorted2,SortedList),
        maplist(string_chars,Sorted,SortedList).


%
% Score all words
% 
score_words([],_Alpha,Scores,Scores).
score_words([Word|Words],Alphas,Scores0,[Score-Word|Scores]) :-
        % We boost words with distinct characters.
        list_to_set(Word,Unique),
        length(Word,WordLen),
        length(Unique,UniqueLen),
        (WordLen == UniqueLen -> Score1 = 100 ; Score1 = 0),
        score_word(Word,Alphas,Score1,Score),
        score_words(Words,Alphas,Scores0,Scores).

% Score each character in a word
score_word([],_Alpha,Score,Score).
score_word([C|Cs],[Alpha|Alphas],Score0,Score) :-
        nth1(N,Alpha,C),        % find the position of this character
        S is N / 2,
        Score1 is Score0 + S,
        score_word(Cs,Alphas,Score1,Score).


% Print an empty board
empty() :-
        writeln("wordle(\".....\",[\"\",\"\",\"\",\"\",\"\"],\"\").").

wordle_words --> ("a",("b",("a",("ck";"se";"te");"b",("ey";"ot");"o",("de";"rt";"ut";"ve");"hor";"ide";"led";"use";"yss");"c",("orn";"rid";"tor";"ute");"d",("a",("ge";"pt");"m","i",("n";"t");"o",("r",("e";"n");"be";"pt");"ept";"ult");"f",("o",("ot";"ul");"fix";"ire";"ter");"g",("a",("in";"pe";"te");"i",("le";"ng");"o",("ny";"ra");"ent";"low";"ree");"i",("der";"sle");"l",("i",("bi";"en";"gn";"ke";"ve");"l",("o",("t";"w";"y");"ay";"ey");"o",("n",("e";"g");"ft";"of";"ud");"t",("ar";"er");"arm";"bum";"ert";"gae";"pha");"m",("a",("ss";"ze");"b",("er";"le");"i",("ss";"ty");"p","l",("e";"y");"end";"ong";"use");"n",("g",("e",("l";"r");"le";"ry";"st");"n",("ex";"oy";"ul");"ime";"kle";"ode";"tic";"vil");"p",("p","l",("e";"y");"art";"hid";"ing";"nea";"ron";"tly");"r",("o",("ma";"se");"r",("ay";"ow");"bor";"dor";"ena";"gue";"ise";"mor";"son";"tsy");"s",("s",("ay";"et");"cot";"hen";"ide";"kew");"t",("o",("ll";"ne");"tic");"u",("d","i",("o";"t");"gur";"nty");"v",("ail";"ert";"ian";"oid");"w",("a",("r",("d";"e");"it";"ke";"sh");"ful";"oke");"x","i",("o",("m";"n");"al");"head";"orta";"zure");"b",("a",("d",("ge";"ly");"g",("el";"gy");"l",("er";"my");"n",("al";"jo");"r",("ge";"on");"s",("i",("c";"l";"n";"s");"al";"te");"t",("ch";"he";"on";"ty");"con";"ker";"wdy";"you");"e",("a",("ch";"dy";"rd";"st");"e",("ch";"fy");"g",("a",("n";"t");"et";"in";"un");"l",("l",("e";"y");"ch";"ie";"ow");"r",("et";"ry";"th");"fit";"ing";"nch";"set";"tel";"vel";"zel");"i",("l",("ge";"ly");"n","g",("e";"o");"r",("ch";"th");"ble";"cep";"ddy";"got";"ome";"son";"tty");"l",("a",("n",("d";"k");"ck";"de";"me";"re";"st";"ze");"e",("a",("k";"t");"e",("d";"p");"nd";"ss");"i",("n",("d";"k");"mp";"ss";"tz");"o",("o",("d";"m");"at";"ck";"ke";"nd";"wn");"u",("r",("b";"t");"er";"ff";"nt";"sh"));"o",("a",("rd";"st");"n",("ey";"go";"us");"o",("t",("h";"y");"z",("e";"y");"by";"st");"r",("ax";"ne");"s",("om";"sy");"u",("gh";"le";"nd");"bby";"tch";"wel";"xer");"r",("a",("i",("d";"n");"s",("h";"s");"v",("e";"o");"w",("l";"n");"ce";"ke";"nd");"e",("a",("d";"k");"ed");"i",("n",("e";"g";"k";"y");"ar";"be";"ck";"de";"ef";"sk");"o",("o",("d";"k";"m");"ad";"il";"ke";"th";"wn");"u",("nt";"sh";"te"));"u",("d",("dy";"ge");"g",("gy";"le");"i","l",("d";"t");"l",("ge";"ky";"ly");"n",("ch";"ny");"r",("ly";"nt";"st");"s",("ed";"hy");"t",("ch";"te");"xom";"yer");"ylaw");"c",("a",("b",("al";"by";"in";"le");"c",("ao";"he";"ti");"d",("dy";"et");"m","e",("l";"o");"n",("o",("e";"n");"al";"dy";"ny");"p",("er";"ut");"r",("at";"go";"ol";"ry";"ve");"t",("ch";"er";"ty");"u",("lk";"se");"gey";"irn";"ste";"vil");"e",("ase";"dar";"llo");"h",("a",("f",("e";"f");"i",("n";"r");"r",("d";"m";"t");"s",("e";"m");"lk";"mp";"nt";"os");"e",("a",("p";"t");"e",("k";"r");"s",("s";"t");"ck");"i",("l",("d";"i";"l");"ck";"de";"ef";"me";"na";"rp");"o",("r",("d";"e");"ck";"ir";"ke";"se");"u",("ck";"mp";"nk";"rn";"te"));"i",("v","i",("c";"l");"der";"gar";"nch";"rca");"l",("a",("n",("g";"k");"s",("h";"p";"s");"ck";"im";"mp");"e",("a",("n";"r";"t");"ft";"rk");"i",("n",("g";"k");"ck";"ff";"mb");"o",("u",("d";"t");"ak";"ck";"ne";"se";"th";"ve";"wn");"u",("ck";"ed";"mp";"ng"));"o",("a",("ch";"st");"l","o",("n";"r");"m",("et";"fy";"ic";"ma");"n",("ch";"do";"ic");"r",("al";"er";"ny");"u",("ch";"gh";"ld";"nt";"pe";"rt");"v","e",("n";"r";"t";"y");"bra";"coa";"pse";"wer";"yly");"r",("a",("n",("e";"k");"s",("h";"s");"z",("e";"y");"ck";"ft";"mp";"te";"ve";"wl");"e",("a",("k";"m");"e",("d";"k";"p");"p",("e";"t");"s",("s";"t");"do";"me");"i",("e",("d";"r");"m",("e";"p");"ck";"sp");"o",("n",("e";"y");"w",("d";"n");"ak";"ck";"ok";"ss";"up");"u",("m",("b";"p");"s",("h";"t");"de";"el");"ypt");"u",("r",("v",("e";"y");"io";"ly";"ry";"se");"bic";"min";"tie");"y",("ber";"cle";"nic"));"d",("a",("i",("ly";"ry";"sy");"n",("ce";"dy");"ddy";"lly";"tum";"unt");"e",("a",("lt";"th");"b",("u",("g";"t");"ar";"it");"c",("a",("l";"y");"o",("r";"y");"ry");"i",("gn";"ty");"l",("ay";"ta";"ve");"m",("on";"ur");"n",("im";"se");"p",("ot";"th");"t",("er";"ox");"fer";"rby";"uce";"vil");"i",("n",("g",("o";"y");"er");"r",("ge";"ty");"t",("t",("o";"y");"ch");"ary";"cey";"git";"lly";"mly";"ode";"sco";"ver";"zzy");"o",("d","g",("e";"y");"n",("or";"ut");"u",("bt";"gh");"w",("dy";"el";"ny";"ry");"gma";"ing";"lly";"pey";"zen");"r",("a",("w",("l";"n");"ft";"in";"ke";"ma";"nk";"pe");"e",("a",("d";"m");"ss");"i",("e",("d";"r");"ft";"ll";"nk";"ve");"o",("o",("l";"p");"it";"ll";"ne";"ss";"ve";"wn");"u",("id";"nk");"y",("er";"ly"));"u",("m",("my";"py");"s",("ky";"ty");"chy";"lly";"nce";"tch";"vet");"w",("e","l",("l";"t");"arf");"ying");"e",("a",("g",("er";"le");"r",("ly";"th");"t","e",("n";"r");"sel");"d","i",("ct";"fy");"l",("e",("ct";"gy");"i",("de";"te");"ate";"bow";"der";"fin";"ope";"ude");"m",("b","e",("d";"r");"ail";"cee";"pty");"n",("e","m",("a";"y");"t",("er";"ry");"act";"dow";"joy";"nui";"sue";"voy");"p","o",("ch";"xy");"q","u",("al";"ip");"r",("ase";"ect";"ode";"ror";"upt");"s",("say";"ter");"t",("h",("er";"ic";"os");"ude");"v",("e",("nt";"ry");"ade";"ict";"oke");"x",("a",("ct";"lt");"i",("le";"st");"t",("ol";"ra");"cel";"ert";"pel";"ult");"bony";"clat";"erie";"gret";"ight";"ject";"king";"ying");"f",("a",("i",("nt";"ry";"th");"n",("cy";"ny");"t",("al";"ty");"u",("lt";"na");"ble";"cet";"lse";"rce";"vor");"e",("l",("la";"on");"m",("me";"ur");"r",("al";"ry");"t",("al";"ch";"id";"us");"ast";"cal";"ign";"nce";"ver";"wer");"i",("b",("er";"re");"e",("ld";"nd";"ry");"f","t",("h";"y");"l",("e",("r";"t");"ly";"my";"th");"n",("al";"ch";"er");"cus";"ght";"rst";"shy";"xer";"zzy");"l",("a",("i",("l";"r");"k",("e";"y");"s",("h";"k");"ck";"me";"nk";"re");"e",("ck";"et";"sh");"i",("n",("g";"t");"ck";"er";"rt");"o",("o",("d";"r");"u",("r";"t");"at";"ck";"ra";"ss";"wn");"u",("n",("g";"k");"ff";"id";"ke";"me";"sh";"te");"yer");"o",("c",("al";"us");"l",("io";"ly");"r",("g",("e";"o");"t",("e";"h";"y");"ay";"ce";"um");"amy";"ggy";"ist";"und";"yer");"r",("a",("il";"me";"nk";"ud");"e",("e",("d";"r");"ak";"sh");"i",("ar";"ed";"ll";"sk";"tz");"o",("n",("d";"t");"ck";"st";"th";"wn";"ze");"uit");"u",("n",("gi";"ky";"ny");"r",("or";"ry");"dge";"gue";"lly";"ssy";"zzy");"jord");"g",("a",("m",("er";"ma";"ut");"u",("dy";"ge";"nt";"ze");"y",("er";"ly");"ffe";"ily";"ssy";"vel";"wky";"zer");"e",("e",("ky";"se");"n",("ie";"re");"cko");"h","o",("st";"ul");"i",("r",("ly";"th");"v","e",("n";"r");"ant";"ddy";"psy");"l",("a",("de";"nd";"re";"ss";"ze");"e","a",("m";"n");"i",("de";"nt");"o",("at";"be";"om";"ry";"ss";"ve");"yph");"n",("ash";"ome");"o",("l",("em";"ly");"n",("ad";"er");"o",("dy";"ey";"fy";"se");"u",("ge";"rd");"dly";"ing";"rge");"r",("a",("i",("l";"n");"n",("d";"t");"p",("e";"h");"s",("p";"s");"v",("e";"y");"ce";"de";"ft";"te";"ze");"e",("e",("d";"n";"t");"at");"i",("m",("e";"y");"ef";"ll";"nd";"pe");"o",("u",("p";"t");"w",("l";"n");"an";"in";"om";"pe";"ss";"ve");"u",("el";"ff";"nt"));"u",("a",("rd";"va");"e","s",("s";"t");"i",("l",("d";"e";"t");"de";"se");"l",("ch";"ly");"m",("bo";"my");"s","t",("o";"y");"ppy");"ypsy");"h",("a",("r",("dy";"em";"py";"ry";"sh");"s","t",("e";"y");"t",("ch";"er");"u",("nt";"te");"v",("en";"oc");"bit";"iry";"lve";"ndy";"ppy";"zel");"e",("a",("r",("d";"t");"v",("e";"y");"dy";"th");"l",("ix";"lo");"dge";"fty";"ist";"nce";"ron");"i",("p","p",("o";"y");"lly";"nge";"tch");"o",("n",("ey";"or");"r",("de";"ny";"se");"t",("el";"ly");"u",("nd";"se");"v","e",("l";"r");"ard";"bby";"ist";"lly";"mer";"wdy");"u",("m",("an";"id";"or";"ph";"us");"n",("ch";"ky");"s",("ky";"sy");"rry";"tch");"y",("dro";"ena";"men";"per"));"i",("c","i",("ly";"ng");"d",("i","o",("m";"t");"eal";"ler";"yll");"m",("p",("el";"ly");"age";"bue");"n",("e",("pt";"rt");"l",("ay";"et");"t",("er";"ro");"ane";"box";"cur";"dex";"fer";"got";"ner";"put");"r",("ate";"ony");"s",("let";"sue");"gloo";"liac";"onic";"tchy";"vory");"j",("a",("unt";"zzy");"e",("lly";"rky";"tty";"wel");"o",("i",("nt";"st");"ker";"lly";"ust");"u",("i","c",("e";"y");"m",("bo";"py");"n","t",("a";"o");"dge";"ror");"iffy");"k",("a",("ppa";"rma";"yak");"i",("nky";"osk";"tty");"n",("a",("ck";"ve");"e",("e",("d";"l");"ad";"lt");"o",("ck";"ll";"wn");"ife");"ebab";"haki";"oala";"rill");"l",("a",("b",("el";"or");"d",("en";"le");"n",("ce";"ky");"p",("el";"se");"r",("ge";"va");"t",("ch";"er";"he";"te");"ger";"sso";"ugh";"yer");"e",("a",("s",("e";"h";"t");"ch";"fy";"ky";"nt";"pt";"rn";"ve");"e",("ch";"ry");"g",("al";"gy");"m",("on";"ur");"v","e",("l";"r");"dge";"fty";"per");"i",("m",("bo";"it");"n",("e",("n";"r");"go");"v",("er";"id");"bel";"ege";"ght";"ken";"lac";"pid";"the");"o",("a",("my";"th");"c",("al";"us");"g","i",("c";"n");"o",("py";"se");"u","s",("e";"y");"w",("er";"ly");"bby";"dge";"fty";"rry";"ser";"ver";"yal");"u",("c",("id";"ky");"m",("en";"py");"n",("ar";"ch";"ge");"r",("ch";"id");"pus";"sty");"y",("ing";"mph";"nch";"ric");"lama");"m",("a",("c",("aw";"ho";"ro");"d",("am";"ly");"g",("ic";"ma");"m",("m",("a";"y");"bo");"n",("g",("a";"e";"o";"y");"i",("a";"c");"ly";"or");"r",("ch";"ry";"sh");"s",("on";"se");"t",("ch";"ey");"y",("be";"or");"fia";"ize";"jor";"ker";"ple";"uve";"xim");"e",("a",("ly";"nt";"ty");"d",("i",("a";"c");"al");"l",("ee";"on");"r",("cy";"ge";"it";"ry");"t",("al";"er";"ro");"cca");"i",("d",("ge";"st");"n",("ce";"er";"im";"or";"ty";"us");"s",("er";"sy");"cro";"ght";"lky";"mic";"rth");"o",("d",("e",("l";"m");"al");"l",("ar";"dy");"n",("ey";"th");"o",("dy";"se");"r",("al";"on";"ph");"t",("el";"if";"or";"to");"u",("n",("d";"t");"lt";"rn";"se";"th");"v",("er";"ie");"cha";"gul";"ist";"ssy";"wer");"u",("c",("ky";"us");"r",("al";"ky");"s",("hy";"ic";"ky";"ty");"ddy";"lch";"mmy";"nch");"yrrh");"n",("a",("s",("al";"ty");"v",("al";"el");"dir";"ive";"nny";"tal");"e",("r",("dy";"ve");"w",("er";"ly");"edy";"igh";"ver");"i",("c",("er";"he");"n",("ja";"ny";"th");"ece";"ght");"o",("b","l",("e";"y");"i","s",("e";"y");"mad";"ose";"rth";"sey";"tch";"vel");"u",("dge";"rse";"tty");"y",("lon";"mph"));"o",("c",("t",("al";"et");"cur";"ean");"d","d",("er";"ly");"f",("f",("al";"er");"ten");"l",("d","e",("n";"r");"ive");"m",("bre";"ega");"n",("ion";"set");"p",("i",("ne";"um");"era";"tic");"r",("bit";"der";"gan");"t",("her";"ter");"u",("t",("do";"er";"go");"ght";"nce");"v",("a",("ry";"te");"ert";"ine";"oid");"w",("ing";"ner");"aken";"bese";"xide";"zone");"p",("a",("l",("er";"sy");"n",("el";"ic";"sy");"p",("al";"er");"r",("er";"ka";"ry";"se";"ty");"s","t",("a";"e";"y");"t",("ch";"io";"sy";"ty");"y","e",("e";"r");"ddy";"gan";"int";"use");"e",("a",("c",("e";"h");"rl");"n",("n",("e";"y");"al";"ce");"r",("ch";"il";"ky");"s",("ky";"to");"t",("al";"ty");"can";"dal");"h",("o",("n",("e";"y");"to");"ase");"i",("e",("ce";"ty");"n",("ch";"ey";"ky";"to");"t",("ch";"hy");"x",("el";"ie");"ano";"cky";"ggy";"lot";"per";"que";"vot";"zza");"l",("a",("i",("d";"n";"t");"n",("e";"k";"t");"ce";"te";"za");"e","a",("d";"t");"i","e",("d";"r");"u",("m",("b";"e";"p");"ck";"nk";"sh"));"o",("i",("nt";"se");"l",("ar";"ka";"yp");"s",("er";"it";"se");"u",("ch";"nd";"ty");"esy";"ker";"och";"ppy";"rch";"wer");"r",("a",("nk";"wn");"e",("en";"ss");"i",("c",("e";"k");"m",("e";"o");"de";"ed";"nt";"or";"sm";"vy";"ze");"o",("n",("e";"g");"be";"of";"se";"ud";"ve";"wl";"xy");"u",("de";"ne"));"u",("l",("py";"se");"p",("al";"il";"py");"r",("e",("e";"r");"ge";"se");"bic";"dgy";"ffy";"nch";"shy";"tty");"salm";"ygmy");"q","u",("a",("r",("k";"t");"s",("h";"i");"ck";"il";"ke";"lm");"e",("e",("n";"r");"ll";"ry";"st";"ue");"i",("l",("l";"t");"ck";"et";"rk";"te");"o","t",("a";"e";"h"));"r",("a",("b",("bi";"id");"d",("i",("i";"o");"ar");"i",("ny";"se");"l",("ly";"ph");"n",("ch";"dy";"ge");"t",("io";"ty");"cer";"jah";"men";"pid";"rer";"spy";"ven";"yon";"zor");"e",("a",("c",("h";"t");"dy";"lm";"rm");"b",("u",("s";"t");"ar";"el");"c",("u",("r";"t");"ap");"f",("er";"it");"l",("a",("x";"y");"ic");"n",("al";"ew");"p",("ay";"el";"ly");"s",("et";"in");"t",("r",("o";"y");"ch");"v",("el";"ue");"edy";"gal";"hab";"ign";"mit";"run";"use");"h",("ino";"yme");"i",("d",("er";"ge");"g",("ht";"id";"or");"p","e",("n";"r");"s",("e",("n";"r");"ky");"v",("e",("r";"t");"al");"fle";"nse");"o",("a",("ch";"st");"b",("in";"ot");"g",("er";"ue");"o",("my";"st");"u",("g",("e";"h");"nd";"se";"te");"w",("dy";"er");"cky";"deo";"tor";"ver";"yal");"u",("d",("dy";"er");"m",("ba";"or");"gby";"ler";"pee";"ral";"sty"));"s",("a",("l",("v",("e";"o");"ad";"ly";"on";"sa";"ty");"n",("dy";"er");"t",("in";"yr");"u",("c",("e";"y");"na";"te");"v",("o",("r";"y");"vy");"dly";"fer";"int";"ppy";"ssy");"c",("a",("l",("d";"e";"p";"y");"r",("e";"f";"y");"mp";"nt");"e","n",("e";"t");"o",("r",("e";"n");"u",("r";"t");"ff";"ld";"ne";"op";"pe";"wl");"r",("a",("m";"p");"e",("e";"w");"u",("b";"m"));"ion";"uba");"e",("r",("if";"um";"ve");"v","e",("n";"r");"dan";"edy";"gue";"ize";"men";"nse";"pia";"tup";"wer");"h",("a",("d",("e";"y");"k",("e";"y");"l",("e";"l";"t");"r",("d";"e";"k";"p");"ck";"ft";"me";"nk";"pe";"ve";"wl");"e",("e",("n";"p";"r";"t");"l",("f";"l");"ar";"ik");"i",("n",("e";"y");"r",("e";"k";"t");"ed";"ft");"o",("o",("k";"t");"r",("e";"n";"t");"w",("n";"y");"al";"ck";"ne";"ut";"ve");"r",("u",("b";"g");"ew");"u",("ck";"nt";"sh");"yly");"i",("e",("ge";"ve");"g",("ht";"ma");"l",("ky";"ly");"n",("ce";"ew";"ge");"x","t",("h";"y");"ren";"ssy");"k",("i",("er";"ff";"ll";"mp";"rt");"u",("l",("k";"l");"nk");"ate");"l",("a",("n",("g";"t");"ck";"in";"sh";"te";"ve");"e",("e",("k";"p";"t");"pt");"i",("c",("e";"k");"m",("e";"y");"n",("g";"k");"de");"o",("op";"pe";"sh";"th");"u",("n",("g";"k");"mp";"rp";"sh");"yly");"m",("a",("ck";"ll";"rt";"sh");"e",("l",("l";"t");"ar");"i",("t",("e";"h");"le";"rk");"o",("k",("e";"y");"ck";"te"));"n",("a",("k",("e";"y");"r",("e";"l");"ck";"il");"e",("ak";"er");"i",("de";"ff";"pe");"o",("r",("e";"t");"op";"ut";"wy");"u",("ck";"ff"));"o",("l",("ar";"id";"ve");"n",("ar";"ic");"o","t",("h";"y");"u",("nd";"th");"apy";"ber";"ggy";"rry";"wer");"p",("a",("r",("e";"k");"ce";"de";"nk";"sm";"wn");"e",("a",("k";"r");"l",("l";"t");"n",("d";"t");"ck";"ed";"rm");"i",("c",("e";"y");"e",("d";"l");"k",("e";"y");"l",("l";"t");"n",("e";"y");"re";"te");"l",("at";"it");"o",("o",("f";"k";"l";"n");"r",("e";"t");"il";"ke";"ut");"r",("ay";"ee";"ig");"u",("r",("n";"t");"nk"));"q","u",("a",("d";"t");"ib");"t",("a",("i",("d";"n";"r");"l",("e";"k";"l");"n",("d";"k");"r",("e";"k";"t");"ck";"ff";"ge";"ke";"mp";"sh";"te";"ve");"e",("a",("d";"k";"l";"m");"e",("d";"l";"p";"r");"in";"rn");"i",("l",("l";"t");"n",("g";"k";"t");"ck";"ff");"o",("n",("e";"y");"o",("d";"l";"p");"r",("e";"k";"m";"y");"ck";"ic";"ke";"le";"mp";"ut";"ve");"r",("a",("p";"w";"y");"ip";"ut");"u",("n",("g";"k";"t");"ck";"dy";"ff";"mp");"yle");"u",("i",("ng";"te");"l",("ky";"ly");"r",("er";"ge";"ly");"ave";"gar";"mac";"nny";"per";"shi");"w",("a",("m",("i";"p");"rm";"sh";"th");"e",("a",("r";"t");"e",("p";"t");"ll";"pt");"i",("n",("e";"g");"ft";"ll";"rl";"sh");"o",("o",("n";"p");"r",("d";"e";"n"));"ung");"y",("nod";"rup"));"t",("a",("b",("by";"le";"oo");"c",("it";"ky");"k","e",("n";"r");"l",("ly";"on");"n","g",("o";"y");"p",("er";"ir");"r",("dy";"ot");"s","t",("e";"y");"ffy";"int";"mer";"tty";"unt";"wny");"e",("a",("ch";"ry";"se");"n",("et";"or";"se";"th");"p",("ee";"id");"r",("ra";"se");"ddy";"eth";"mpo";"sty");"h",("e",("ft";"ir";"me";"re";"se";"ta");"i",("n",("g";"k");"ck";"ef";"gh";"rd");"o",("ng";"rn";"se");"r",("e",("e";"w");"o",("b";"w");"um");"u","m",("b";"p");"ank";"yme");"i",("g",("er";"ht");"m",("er";"id");"t",("an";"he";"le");"ara";"bia";"dal";"lde";"psy");"o",("d",("ay";"dy");"n",("al";"ga";"ic");"p",("az";"ic");"r",("ch";"so";"us");"t",("al";"em");"u",("ch";"gh");"w","e",("l";"r");"x","i",("c";"n");"ast";"ken";"oth");"r",("a",("c",("e";"k";"t");"i",("l";"n";"t");"de";"mp";"sh";"wl");"e",("a",("d";"t");"nd");"i",("a",("d";"l");"c",("e";"k");"be";"ed";"pe";"te");"o",("ll";"op";"pe";"ut";"ve");"u",("c",("e";"k");"s",("s";"t");"er";"ly";"mp";"nk";"th");"yst");"u",("b",("al";"er");"l",("ip";"le");"mor";"nic";"rbo";"tor");"w",("e",("e",("d";"t");"ak");"i",("ce";"ne";"rl";"st";"xt");"ang");"ying");"u",("l",("cer";"tra");"n",("c",("le";"ut");"d",("er";"id";"ue");"f",("ed";"it");"i",("t",("e";"y");"fy";"on");"t","i",("e";"l");"lit";"met";"set";"wed";"zip");"p",("per";"set");"r",("ban";"ine");"s",("u",("al";"rp");"age";"her";"ing");"t",("ile";"ter");"dder";"mbra");"v",("a",("l",("et";"id";"or";"ue";"ve");"p",("id";"or");"u",("lt";"nt");"gue");"e",("n",("om";"ue");"r",("s",("e";"o");"ge";"ve");"gan");"i",("g",("il";"or");"r",("al";"us");"s",("it";"or";"ta");"car";"deo";"lla";"nyl";"ola";"per";"tal";"vid";"xen");"o",("i",("ce";"la");"cal";"dka";"gue";"mit";"ter";"uch";"wel");"ying");"w",("a",("g",("er";"on");"i",("st";"ve");"t",("ch";"er");"cky";"fer";"ltz";"rty";"ste";"ver";"xen");"e",("a",("ry";"ve");"i",("gh";"rd");"l",("ch";"sh");"dge";"edy";"nch");"h",("a",("ck";"le";"rf");"e",("at";"el";"lp";"re");"i",("n",("e";"y");"ch";"ff";"le";"rl";"sk";"te");"o",("le";"op";"se"));"i",("d",("e",("n";"r");"ow";"th");"n",("c",("e";"h");"dy");"s",("er";"py");"t",("ch";"ty");"eld";"ght";"lly";"mpy");"o",("m",("an";"en");"o",("dy";"er";"ly";"zy");"r",("s",("e";"t");"dy";"ld";"ry";"th");"u",("ld";"nd");"ken";"ven");"r",("a",("ck";"th");"e",("ak";"ck";"st");"i",("ng";"st";"te");"o",("ng";"te");"ung";"yly"));"y",("e","a",("rn";"st");"o","u",("ng";"th");"acht";"ield");"z",("e",("bra";"sty");"onal")).
:- initialization(go).
%----------------------------------------------------------- 247 hakank_swi_xkcd
/*

  xkcd's knapsack/subset-sum problem in SWI Prolog

  http://xkcd.com/287/

  Some amount (or none) of each dish should be ordered to give a total of exact 15.05


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-
        findall(X,xkcd(X),L),
        writeln(L).

xkcd(X) :-
        Prices = [215, 275, 335, 355, 420, 580],
        Total = 1505,
        length(Prices,Len),
        length(X,Len),
        X ins 0..10,
        scalar_product(Prices, X, #=, Total),
        label(X).
:- initialization(go).
%------------------------------------------------- 248 hakank_swi_young_tableaux
/*

  Young tableaux and partition in SWI Prolog

  See 
  http://mathworld.wolfram.com/YoungTableau.html
  and
  http://en.wikipedia.org/wiki/Young_tableau
  """
  The partitions of 4 are
   {4}, {3,1}, {2,2}, {2,1,1}, {1,1,1,1}
 
  And the corresponding standard Young tableaux are:
 
  1.   1 2 3 4
 
  2.   1 2 3         1 2 4    1 3 4
       4             3        2
 
  3.   1 2           1 3
       3 4           2 4
 
  4    1 2           1 3      1 4 
       3             2        2 
       4             4        3
 
  5.   1
       2
       3
       4
  """  


  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

%%
%% Show all 76 solutions for N=6
%%
go :- 
        N = 6,
        findall(_, young_tableaux(N,_X,_P,1), L),
        length(L,Len),
        format("It was ~d solutions.\n\n", Len),
        nl.



%%
%% Number of solutions for N in 1..10
%%
go2 :-
        between(1,10,N),
        findall(_, young_tableaux(N,_X,_P,0),L),
        length(L,Len),
        format("~d solutions.\n\n", Len), 
        fail,
        nl.

go2.


young_tableaux(N,X,P,Print) :-

        format("Young tableaux and partitions of order ~d\n", N),
        %% X = new_array(N,N),
        %% X :: 1..N+1,
        N1 #= N+1,
        new_matrix(N,N,1..N1,X),
        
        %% for count and labeling
        flatten(X,Vars),
        
        %% the partition structure
        length(P,N),
        P ins 0..N1,
        
        %% 1..N is used exactly once (N+1 may be used many times)
        %% All relevant integers must have a key in global_cardinality/2.
        %% foreach(I in 1..N) count(I, Vars, #=, 1) end,
        findall(I-1,between(1,N,I),Counts),
        append(Counts,[N1-_], Counts2),
        global_cardinality(Vars,Counts2),
    
        %% alternative (but much slower for this purpose)
        %% alldifferent_except_N(Vars,N1),

        %% The first element is always 1
        matrix_element(X,1,1,1),
    
        %% all rows and columns should be ordered
        maplist(increasing, X),
        transpose(X,XT),
        maplist(increasing, XT),

        %% calculate the structure (the partition)
        partition_structure(X, N, P),

        %% P should be ordered
        decreasing(P),
        sum(P,#=,N),
        %% first element
        element(1,P,PFirst),
        PFirst #>= 1,
        
        %% solve
        append(Vars,P,Vars2),
        labeling([],Vars2),
        (
         Print #= 1
        ->
         writeln(p=P),
         print_matrix(X,N),
         nl
        ;
         true
        ).

%% Partition structure:
%% foreach(I in 1..N)
%%   P[I] #= sum([ (X[I,J] #=< N)  : J in 1..N])
%% end,
partition_structure(X,N,P) :-
        numlist(1,N,Is),
        partition_structure_(Is,X,N,P).

partition_structure_([],_X,_N,_P).
partition_structure_([I|Is],X,N,P) :-
        %% This don't work. Why?
        %% findall(1, (between(1,N,J), matrix_element(X,I,J,XIJ), XIJ #=< N), L),
        %%writeln(l=L),
        %%sum(L,#=, Count),
        numlist(1,N,Js),
        p_lesseq_than_n(Js,I,X,N,Count),
        element(I,P,Count),
        partition_structure_(Is,X,N,P).

p_lesseq_than_n(Js,I,X,N,Count) :-
        p_lesseq_than_n_(Js,I,X,N,0,Count).

p_lesseq_than_n_([],_I,_X,_N,Count,Count).
p_lesseq_than_n_([J|Js],I,X,N,Count0,Count) :-
        matrix_element(X,I,J,XI),
        XI #=< N,
        Count1 #= Count0+1,
        p_lesseq_than_n_(Js,I,X,N,Count1,Count).
p_lesseq_than_n_([J|Js],I,X,N,Count0,Count) :-
        matrix_element(X,I,J,XI),
        XI #> N,
        p_lesseq_than_n_(Js,I,X,N,Count0,Count).

% Nicer print of a Young Tableaux
print_matrix([], _N).
print_matrix([Row|Rows], N) :-
        print_row(Row,N),
        nl,
        print_matrix(Rows,N).

print_row([],_N).
print_row([E|Row],N) :-
        (
        E #=< N
        ->
        write(E),write(" ")
        ;
         true
        ),
        print_row(Row,N).

:- initialization(go).
%---------------------------------------------------------- 249 hakank_swi_zebra
/*

  Zebra puzzle in SWI Prolog

  Lewis Carrol's classical puzzle with five houses and a zebra:
  
  Five men with different nationalities live in the first five houses
  of a street.  They practise five distinct professions, and each of
  them has a favourite animal and a favourite drink, all of them
  different.  The five houses are painted in different colours.
  
  The Englishman lives in a red house.
  The Spaniard owns a dog.
  The Japanese is a painter.
  The Italian drinks tea.
  The Norwegian lives in the first house on the left.
  The owner of the green house drinks coffee.
  The green house is on the right of the white one.
  The sculptor breeds snails.
  The diplomat lives in the yellow house.
  Milk is drunk in the middle house.
  The Norwegian's house is next to the blue one.
  The violinist drinks fruit juice.
  The fox is in a house next to that of the doctor.
  The horse is in a house next to that of the diplomat.
  
  Who owns a Zebra, and who drinks water?
  

  Model created by Hakan Kjellerstrand, hakank@gmail.com
  See also my SWI Prolog page: http://www.hakank.org/swi_prolog/

*/

:- use_module(library(clpfd)).
:- use_module(hakank_utils).

go :-

   Nat        = [English, Spaniard, Japanese, Italian, Norwegian],
   Color      = [Red, Green, White, Yellow, Blue],
   Profession = [Painter, Sculptor, Diplomat, Violinist, Doctor],
   Pet        = [Dog, Snails, Fox, Horse, Zebra],
   Drink      = [Tea, Coffee, Milk, Juice, Water],

   Nat        ins 1..5,
   Color      ins 1..5,
   Profession ins 1..5,
   Pet        ins 1..5,
   Drink      ins 1..5,

   all_different(Nat),
   all_different(Color),
   all_different(Profession),
   all_different(Pet),
   all_different(Drink),

   English #= Red,
   Spaniard #= Dog,
   Japanese #= Painter,
   Italian #= Tea,
   Norwegian #= 1,
   Green #= Coffee,
   Green #= White + 1,
   Sculptor #= Snails,
   Diplomat #= Yellow,
   Milk #= 3,
   abs(Norwegian - Blue) #= 1,
   Violinist #= Juice,
   abs(Fox-Doctor) #= 1,
   abs(Horse - Diplomat) #= 1,

   flatten([Nat,Color,Profession,Pet,Drink],Vars),
   label(Vars),
   
   NatNames = [English=english, 
               Spaniard=spaniard, 
               Japanese=japanese,
    	       Italian=italian, 
               Norwegian=norwegian],
   member((Zebra=ZebraNat), NatNames),
   member((Water=WaterNat), NatNames),
   format("The ~w owns the zebra\n", ZebraNat),
   format("The ~w drinks water\n", WaterNat).
:- initialization(go).
