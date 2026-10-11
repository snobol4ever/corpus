%% leancop.pl -- leanCoP 2.1, the lean connection prover for classical
%% first-order logic (Jens Otten, www.leancop.de, GNU General Public
%% License), as a SCRIP demo (Lon 2026-10-09, CEO-1583: "A theorem prover
%% or LEAN thing would be a neat demo.").
%%
%% The parts of the leanCoP 2.1 distribution, in load order: def_mm.pl
%% (clausal form), leancop21_swi.pl (the core prover, the SWI version; its
%% ":- [def_mm]." is this file's first part), leancop_proof.pl (the readable
%% proof), leancop_equal/2 and its helpers from leancop_tptp2.pl (the
%% equality axioms; the TPTP file reader is left out), and output_result/5
%% from leancop_main.pl. The driver at the end replaces leancop_main/3's
%% file input: it reads problem(Name, Formula) terms from standard input
%% and runs leancop_main's own steps on each with leanCoP's complete
%% strategy [cut,comp(7)], the first entry of leancop.sh's schedule.
%%
%% THE PORT TO ISO / GNU PROLOG (the reference output is GNU Prolog 1.6.0's
%% run of this file; SCRIP runs the same file), every change listed:
%%  1. def_mm.pl univar/3: (A=ex;A=all) is (A=(ex);A=(all)) -- ex and all
%%     are prefix operators, and an operator as an operand takes brackets.
%%  2. leancop21_swi.pl: ":- dynamic(pathlim/0), dynamic(lit/4)." is two
%%     directives, as Otten's own SICStus version leancop21_sic.pl writes it.
%%  3. leancop21_swi.pl prove/6 and assert_clauses2/3: assert/1 is
%%     assertz/1 (GNU Prolog has no assert/1; SWI's assert/1 is assertz/1).
%%  4. leancop_proof.pl: ":- assert(proof(readable))." is a dynamic
%%     declaration and the fact proof(readable).
%%  5. leancop_tptp2.pl leancop_equal/2: (=,2) is ((=),2), operand brackets.
%%  6. leancop_proof.pl prints through print_numbered/1, below: print/1 of a
%%     term with its variables numbered A, B, ... -- an unbound variable
%%     prints by a name of the system's own (_G0, _46280), which no two
%%     Prologs share, so a first-order proof could never read the same twice.
%%  7. The driver is a failure-driven loop (repeat, read, run, fail), so
%%     each problem's stack and choice points return when it is printed.

%% File: def_mm.pl  -  Version: 1.01  -  Date: 07 June 2007
%%
%% Purpose: Transform first-order formulae into clausal form
%%
%% Author:  Jens Otten
%% Web:     www.leancop.de
%%
%% Usage:   make_matrix(F,M,S).  % where F is a first-order formula,
%%                               % S is a list of settings, and M is
%%                               % the (definitional) clausal form
%%
%% Example: make_matrix(ex Y: (all X: ((p(Y) => p(X))) ),Matrix,[]).
%%          Matrix = [[-(p(X1))], [p(1 ^ [X1])]]
%%
%% Copyright: (c) 1999-2007 by Jens Otten
%% License:   GNU General Public License


% definitions of logical connectives and quantifiers

:- op(1130, xfy, <=>). % equivalence
:- op(1110, xfy, =>).  % implication
%                      % disjunction (;)
%                      % conjunction (,)
:- op( 500, fy, ~).    % negation
:- op( 500, fy, all).  % universal quantifier
:- op( 500, fy, ex).   % existential quantifier
:- op( 500,xfy, :).


% ------------------------------------------------------------------
%  make_matrix(+Fml,-Matrix,+Settings)
%    -  transform first-order formula into set of clauses (matrix)
%
%  Fml, Matrix: first-order formula and matrix
%
%  Settings: list of settings, which can contain def, nodef and conj;
%            if it contains nodef/def, no definitional transformation
%            or a complete definitional transformation is done,
%            otherwise a definitional transformation is done for
%            the conjecture and the standard transformation is done
%            for the axioms; conjecture is marked if conj is given
%
%  Syntax of Fml: negation '~', disjunction ';', conjunction ',',
%      implication '=>', equivalence '<=>', universal/existential
%      quantifier 'all X:<Formula>'/'ex X:<Formula>' where 'X' is a
%      Prolog variable, and atomic formulae are Prolog atoms.
%
%  Example: make_matrix(ex Y:(all X:((p(Y) => p(X)))),Matrix,[]).
%           Matrix = [[-(p(X1))], [p(1 ^ [X1])]]

make_matrix(Fml,Matrix,Set) :-
    univar(Fml,[],F1),
    ( member(conj,Set), F1=(A=>C) -> F2=((A,#)=>(#,C)) ; F2=F1 ),
    ( member(nodef,Set) ->
       def_nnf(F2,NNF,1,_,nnf), dnf(NNF,DNF)
       ;
       \+member(def,Set), F2=(B=>D) ->
        def_nnf(~(B),NNF,1,I,nnf), dnf(NNF,DNF1),
        def_nnf(D,DNF2,I,_,def), DNF=(DNF2;DNF1)
        ;
        def_nnf(F2,DNF,1,_,def)
    ),
    mat(DNF,M),
    ( member(reo(I),Set) -> mreorder(M,Matrix,I) ; Matrix=M ).

% ------------------------------------------------------------------
%  def_nnf(+Fml,-DEF)  -  transform formula into a definitional
%                         Skolemized negation normal form (DEF)
%  Fml, DEF: first-order formula and formula in DEF
%
%  Example: def_nnf(ex Y:(all X:((p(Y) => p(X)))),DEF,def).
%           DEF = ~ p(X1) ; p(1 ^ [X1])

def_nnf(Fml,DEF,I,I1,Set) :-
    def(Fml,[],NNF,DEF1,_,I,I1,Set), def(DEF1,NNF,DEF).

def([],Fml,Fml).
def([(A,(B;C))|DefL],DEF,Fml) :- !, def([(A,B),(A,C)|DefL],DEF,Fml).
def([A|DefL],DEF,Fml) :- def(DefL,(A;DEF),Fml).

def(Fml,FreeV,NNF,DEF,Paths,I,I1,Set) :-
    ( Fml = ~(~A)      -> Fml1 = A;
      Fml = ~(all X:F) -> Fml1 = (ex X: ~F);
      Fml = ~(ex X:F)  -> Fml1 = (all X: ~F);
      Fml = ~((A ; B)) -> Fml1 = ((~A , ~B));
      Fml = ~((A , B)) -> Fml1 = (~A ; ~B);
      Fml = (A => B)   -> Fml1 = (~A ; B);
      Fml = ~((A => B))-> Fml1 = ((A , ~B));
      Fml = (A <=> B)  ->
      ( Set=def        -> Fml1 = ((A => B) , (B => A));
                          Fml1 = ((A , B) ; (~A , ~B)) );
      Fml = ~((A<=>B)) -> Fml1 = ((A , ~B) ; (~A , B)) ), !,
    def(Fml1,FreeV,NNF,DEF,Paths,I,I1,Set).

def((ex X:F),FreeV,NNF,DEF,Paths,I,I1,Set) :- !,
    def(F,[X|FreeV],NNF,DEF,Paths,I,I1,Set).

def((all X:Fml),FreeV,NNF,DEF,Paths,I,I1,Set) :- !,
    copy_term((X,Fml,FreeV),((I^FreeV),Fml1,FreeV)), I2 is I+1,
    def(Fml1,FreeV,NNF,DEF,Paths,I2,I1,Set).

def((A ; B),FreeV,NNF,DEF,Paths,I,I1,Set) :- !,
    def(A,FreeV,NNF1,DEF1,Paths1,I,I2,Set),
    def(B,FreeV,NNF2,DEF2,Paths2,I2,I1,Set),
    append(DEF1,DEF2,DEF), Paths is Paths1 * Paths2,
    (Paths1 > Paths2 -> NNF = (NNF2;NNF1);
                        NNF = (NNF1;NNF2)).

def((A , B),FreeV,NNF,DEF,Paths,I,I1,Set) :- !,
    def(A,FreeV,NNF3,DEF3,Paths1,I,I2,Set),
    ( NNF3=(_;_), Set=def -> append([(~I2^FreeV,NNF3)],DEF3,DEF1),
                             NNF1=I2^FreeV, I3 is I2+1 ;
                             DEF1=DEF3, NNF1=NNF3, I3 is I2 ),
    def(B,FreeV,NNF4,DEF4,Paths2,I3,I4,Set),
    ( NNF4=(_;_), Set=def -> append([(~I4^FreeV,NNF4)],DEF4,DEF2),
                             NNF2=I4^FreeV, I1 is I4+1 ;
                             DEF2=DEF4, NNF2=NNF4, I1 is I4 ),
    append(DEF1,DEF2,DEF), Paths is Paths1 + Paths2,
    (Paths1 > Paths2 -> NNF = (NNF2,NNF1);
                        NNF = (NNF1,NNF2)).

def(Lit,_,Lit,[],1,I,I,_).

% ------------------------------------------------------------------
%  dnf(+NNF,-DNF)  -  transform formula in NNF into formula in DNF
%  NNF, DNF: formulae in NNF and DNF
%
%  Example: dnf(((p;~p),(q;~q)),DNF).
%           DNF = (p, q ; p, ~ q) ; ~ p, q ; ~ p, ~ q

dnf(((A;B),C),(F1;F2)) :- !, dnf((A,C),F1), dnf((B,C),F2).
dnf((A,(B;C)),(F1;F2)) :- !, dnf((A,B),F1), dnf((A,C),F2).
dnf((A,B),F) :- !, dnf(A,A1), dnf(B,B1),
    ( (A1=(C;D);B1=(C;D)) -> dnf((A1,B1),F) ; F=(A1,B1) ).
dnf((A;B),(A1;B1)) :- !, dnf(A,A1), dnf(B,B1).
dnf(Lit,Lit).

% ------------------------------------------------------------------
%  mat(+DNF,-Matrix)  -  transform formula in DNF into matrix
%  DNF, Matrix: formula in DNF, matrix
%
%  Example: mat(((p, q ; p, ~ q) ; ~ p, q ; ~ p, ~ q),Matrix).
%           Matrix = [[p, q], [p, -(q)], [-(p), q], [-(p), -(q)]]

mat((A;B),M) :- !, mat(A,MA), mat(B,MB), append(MA,MB,M).
mat((A,B),M) :- !, (mat(A,[CA]),mat(B,[CB]) -> union2(CA,CB,M);M=[]).
mat(~Lit,[[-Lit]]) :- !.
mat(Lit,[[Lit]]).

% ------------------------------------------------------------------
%  univar(+Fml,[],-Fml1)  -  rename variables
%  Fml, Fml1: first-order formulae
%
%  Example: univar((all X:(p(X) => (ex X:p(X)))),[],F1).
%           F1 = all Y : (p(Y) => ex Z : p(Z))

univar(X,_,X)  :- (atomic(X);var(X);X==[[]]), !.
univar(F,Q,F1) :-
    F=..[A,B|T], ( (A=(ex);A=(all)) -> B=(X:C), delete2(Q,X,Q1),
    copy_term((X,C,Q1),(Y,D,Q1)), univar(D,[Y|Q],D1), F1=..[A,Y:D1] ;
    univar(B,Q,B1), univar(T,Q,T1), F1=..[A,B1|T1] ).

% ------------------------------------------------------------------
%  union2/member2 - union and member for lists without unification

union2([],L,[L]).
union2([X|L1],L2,M) :- member2(X,L2), !, union2(L1,L2,M).
union2([X|_],L2,M)  :- (-Xn=X;-X=Xn) -> member2(Xn,L2), !, M=[].
union2([X|L1],L2,M) :- union2(L1,[X|L2],M).

member2(X,[Y|_]) :- X==Y, !.
member2(X,[_|T]) :- member2(X,T).

% ------------------------------------------------------------------
%  delete2 - delete variable from list

delete2([],_,[]).
delete2([X|T],Y,T1) :- X==Y, !, delete2(T,Y,T1).
delete2([X|T],Y,[X|T1]) :- delete2(T,Y,T1).

% ------------------------------------------------------------------
%  mreorder - reorder clauses

mreorder(M,M,0) :- !.
mreorder(M,M1,I) :-
    length(M,L), K is L//3, append(A,D,M), length(A,K),
    append(B,C,D), length(C,K), mreorder2(C,A,B,M2), I1 is I-1,
    mreorder(M2,M1,I1).

mreorder2([],[],C,C).
mreorder2([A|A1],[B|B1],[C|C1],[A,B,C|M1]) :- mreorder2(A1,B1,C1,M1).

%% File: leancop21_swi.pl  -  Version: 2.1  -  Date: 30 Aug 2008
%%
%%         "Make everything as simple as possible, but not simpler."
%%                                                 [Albert Einstein]
%%
%% Purpose: leanCoP: A Lean Connection Prover for Classical Logic
%%
%% Author:  Jens Otten
%% Web:     www.leancop.de
%%
%% Usage: prove(M,P).    % where M is a set of clauses and P is
%%                       %  the returned connection proof
%%                       %  e.g. M=[[q(a)],[-p],[p,-q(X)]]
%%                       %  and  P=[[q(a)],[[-(q(a)),p],[[-(p)]]]]
%%        prove(F,P).    % where F is a first-order formula and
%%                       %  P is the returned connection proof
%%                       %  e.g. F=((p,all X:(p=>q(X)))=>all Y:q(Y))
%%                       %  and  P=[[q(a)],[[-(q(a)),p],[[-(p)]]]]
%%        prove2(F,S,P). % where F is a formula, S is a subset of
%%                       %  [nodef,def,conj,reo(I),scut,cut,comp(J)]
%%                       %  (with numbers I,J) defining attributes
%%                       %  and P is the returned connection proof
%%
%% Copyright: (c) 1999-2008 by Jens Otten
%% License:   GNU General Public License


:- dynamic(pathlim/0). :- dynamic(lit/4).


%%% prove matrix M / formula F

prove(F,Proof) :- prove2(F,[cut,comp(7)],Proof).

prove2(F,Set,Proof) :-
    (F=[_|_] -> M=F ; make_matrix(F,M,Set)),
    retractall(lit(_,_,_,_)), (member([-(#)],M) -> S=conj ; S=pos),
    assert_clauses(M,S), prove(1,Set,Proof).

prove(PathLim,Set,Proof) :-
    \+member(scut,Set) -> prove([-(#)],[],PathLim,[],Set,[Proof]) ;
    lit(#,_,C,_) -> prove(C,[-(#)],PathLim,[],Set,Proof1),
    Proof=[C|Proof1].
prove(PathLim,Set,Proof) :-
    member(comp(Limit),Set), PathLim=Limit -> prove(1,[],Proof) ;
    (member(comp(_),Set);retract(pathlim)) ->
    PathLim1 is PathLim+1, prove(PathLim1,Set,Proof).

%%% leanCoP core prover

prove([],_,_,_,_,[]).

prove([Lit|Cla],Path,PathLim,Lem,Set,Proof) :-
    Proof=[[[NegLit|Cla1]|Proof1]|Proof2],
    \+ (member(LitC,[Lit|Cla]), member(LitP,Path), LitC==LitP),
    (-NegLit=Lit;-Lit=NegLit) ->
       ( member(LitL,Lem), Lit==LitL, Cla1=[], Proof1=[]
         ;
         member(NegL,Path), unify_with_occurs_check(NegL,NegLit),
         Cla1=[], Proof1=[]
         ;
         lit(NegLit,NegL,Cla1,Grnd1),
         unify_with_occurs_check(NegL,NegLit),
         ( Grnd1=g -> true ; length(Path,K), K<PathLim -> true ;
           \+ pathlim -> assertz(pathlim), fail ),
         prove(Cla1,[Lit|Path],PathLim,Lem,Set,Proof1)
       ),
       ( member(cut,Set) -> ! ; true ),
       prove(Cla,Path,PathLim,[Lit|Lem],Set,Proof2).

%%% write clauses into Prolog's database

assert_clauses([],_).
assert_clauses([C|M],Set) :-
    (Set\=conj, \+member(-_,C) -> C1=[#|C] ; C1=C),
    (ground(C) -> G=g ; G=n), assert_clauses2(C1,[],G),
    assert_clauses(M,Set).

assert_clauses2([],_,_).
assert_clauses2([L|C],C1,G) :-
    assert_renvar([L],[L2]), append(C1,C,C2), append(C1,[L],C3),
    assertz(lit(L2,L,C2,G)), assert_clauses2(C,C3,G).

assert_renvar([],[]).
assert_renvar([F|FunL],[F1|FunL1]) :-
    ( var(F) -> true ; F=..[Fu|Arg], assert_renvar(Arg,Arg1),
      F1=..[Fu|Arg1] ), assert_renvar(FunL,FunL1).

%% File: leancop_proof.pl  -  Version: 1.1  -  Date: 3 July 2009
%%
%% Purpose: Presentation of connection proof found by leanCoP
%%
%% Author:  Jens Otten
%% Web:     www.leancop.de
%%
%% Usage:   leancop_proof(M,P). % where M is a matrix and P is the
%%                              %  connection proof found by leanCoP
%%                              %  e.g. M=[[q(a)],[-p],[p, -q(X)]],
%%                              %  P=[[q(a)],[[-(q(a)),p],[[-(p)]]]]
%%
%% Copyright: (c) 2009 by Jens Otten
%% License:   GNU General Public License


:- dynamic(proof/1).
proof(readable). % compact, connect, readable

% SCRIP demo port: print a term with its variables numbered A, B, ... (an unbound
% variable prints by a system-specific name, _G0 or _46280, which no two Prologs share).
print_numbered(T) :- \+ \+ ( numbervars(T, 0, _), print(T) ).


%%% output of leanCoP proof

leancop_proof(Mat,Proof) :-
    proof(compact) -> leancop_compact_proof(Proof) ;
    proof(connect) -> leancop_connect_proof(Mat,Proof) ;
    leancop_readable_proof(Mat,Proof).

%%% print readable proof

leancop_readable_proof(Mat,Proof) :-
    print_numbered('------------------------------------------------------'),
    nl,
    print_explanations,
    print_numbered('Proof:'), nl, print_numbered('------'), nl, nl,
    print_numbered('Translation into (disjunctive) clausal form:'), nl,
    print_clauses(Mat,1,Mat1),
    print_introduction,
    calc_proof(Mat1,Proof,Proof1),
    print_proof(Proof1), nl,
    print_ending,
    print_numbered('------------------------------------------------------'),
    nl.

%%% print compact proof

leancop_compact_proof(Proof) :-
    print_numbered('------------------------------------------------------'),
    nl,
    print_numbered('Compact Proof:'), nl,
    print_numbered('--------------'), nl,
    print_numbered(Proof), nl,
    print_numbered('------------------------------------------------------'),
    nl.

%%% print connection proof

leancop_connect_proof(Mat,Proof) :-
    print_numbered('------------------------------------------------------'),
    nl,
    print_numbered('Proof for the following clauses:'), nl,
    print_clauses(Mat,1,Mat1),
    calc_proof(Mat1,Proof,Proof1),
    print_numbered('Connection Proof:'), nl,
    print_numbered('-----------------'), nl,
    print_connect_proof(Proof1),
    print_numbered('------------------------------------------------------'),
    nl.

print_connect_proof([(Cla,Num,Sub)|Proof]) :-
    print_connect_proof_step([],Cla,Num,Sub),
    print_connect_proof(Proof,[1]).

print_connect_proof([],_).

print_connect_proof([[(Cla,Num,Sub)|Proof]|Proof2],[I|J]) :-
    print_connect_proof_step([I|J],Cla,Num,Sub),
    print_connect_proof(Proof,[1,I|J]), I1 is I+1,
    print_connect_proof(Proof2,[I1|J]).

print_connect_proof_step(I,Cla,Num,Sub) :-
    append(I,[1],I1), print_step(I1), print_numbered('  '), print_numbered(Cla),
    ( Num=(R:N) -> append(_,[H|T],I1), N1 is N+1, length([H|T],N1),
      ( R=r -> print_numbered('   (reduction:'), print_step(T) ;
               print_numbered('   (lemmata:'), print_step(T) ) ;
      print_numbered('   ('), print_numbered(Num) ), print_numbered(')  '),
    ( Sub=[[],_] -> true ; print_numbered('substitution:'), print_numbered(Sub) ), nl.


%%% calculate leanCoP proof

calc_proof(Mat,[Cla|Proof],[(Cla1,Num,Sub)|Proof1]) :-
    ((Cla=[#|Cla1];Cla=[-!|Cla1]) -> true ; Cla1=Cla),
    clause_num_sub(Cla1,[],[],Mat,1,Num,Sub),
    calc_proof(Cla1,[],[],Mat,Proof,Proof1).

calc_proof(_,_,_,_,[],[]).

calc_proof(Cla,Path,Lem,Mat,[[Cla1|Proof]|Proof2],Proof1) :-
    append(Cla2,[#|Cla3],Cla1), !, append(Cla2,Cla3,Cla4),
    append(Pro1,[[[-(#)]]|Pro2],Proof), append(Pro1,Pro2,Proof3),
    calc_proof(Cla,Path,Lem,Mat,[[Cla4|Proof3]|Proof2],Proof1).

calc_proof([Lit|Cla],Path,Lem,Mat,[[Cla1|Proof]|Proof2],Proof1) :-
    (-NegLit=Lit;-Lit=NegLit), append(Cla2,[NegL|Cla3],Cla1),
    NegLit==NegL, append(Cla2,Cla3,Cla4), length([_|Path],I) ->
      clause_num_sub(Cla1,Path,Lem,Mat,1,Num,Sub),
      Proof1=[[([NegLit|Cla4],Num,Sub)|Proof3]|Proof4],
      calc_proof(Cla4,[I:Lit|Path],Lem,Mat,Proof,Proof3),
      (Lem=[I:J:_|_] -> J1 is J+1 ; J1=1),
      calc_proof(Cla,Path,[I:J1:Lit|Lem],Mat,Proof2,Proof4).

%%% determine clause number and substitution

clause_num_sub([NegLit],Path,Lem,[],_,R:Num,[[],[]]) :-
    (-NegLit=Lit;-Lit=NegLit), member(Num:J:LitL,Lem), LitL==Lit ->
    R=J ; member(Num:NegL,Path), NegL==NegLit -> R=r.

clause_num_sub(Cla,Path,Lem,[Cla1|Mat],I,Num,Sub) :-
    append(Cla2,[L|Cla3],Cla1), append([L|Cla2],Cla3,Cla4),
    instance1(Cla,Cla4) ->
      Num=I, term_variables(Cla4,Var), copy_term(Cla4,Cla5),
      term_variables(Cla5,Var1), Cla=Cla5, Sub=[Var,Var1] ;
      I1 is I+1, clause_num_sub(Cla,Path,Lem,Mat,I1,Num,Sub).

instance1(A,B) :-
    \+ \+ (term_variables(A,VA), unify_with_occurs_check(A,B),
           term_variables(A,VB), VA==VB).

%%% print leanCoP proof

print_proof([(Cla,Num,Sub)|Proof]) :-
    print_clause([],Cla,Num,Sub),
    print_proof(Proof,[1]).

print_proof([],_).

print_proof([[(Cla,Num,Sub)|Proof]|Proof2],[I|J]) :-
    print_proof_step([I|J],Cla,Num,Sub),
    print_proof(Proof,[1,I|J]), I1 is I+1,
    print_proof(Proof2,[I1|J]).

%%% print leanCoP proof step

print_proof_step(I,[Lit|Cla],Num,Sub) :-
    print_assume(I,Lit),
    ( Num=(R:N) -> append(_,[H|T],I), length([H|T],N),
      (R=r -> print_redu(I,[H|T]) ; print_fact(I,[R|T])) ;
      print_clause(I,Cla,Num,Sub) ).

print_assume(I,Lit) :-
    print_step(I), print_numbered(' Assume '), (-NegLit=Lit;-Lit=NegLit) ->
    print_numbered(NegLit), print_numbered(' is '), print_numbered('false.'), nl.

print_clause(I,Cla,Num,Sub) :-
    print_sp(I), print_numbered(' Then clause ('), print_numbered(Num), print_numbered(')'),
    ( Sub=[[],[]] -> true ; print_numbered(' under the substitution '),
                            print_numbered(Sub), nl, print_sp(I) ),
    ( Cla=[] -> print_numbered(' is true.') ;
      print_numbered(' is false if at least one of the following is false:'),
      nl, print_sp(I), print_numbered(' '), print_numbered(Cla) ), nl.

print_redu(I,J) :-
    print_sp(I), print_numbered(' This is a contradiction to assumption '),
    print_step(J), print_numbered('.'), nl.

print_fact(I,J) :-
    print_sp(I), print_numbered(' This assumption has been refuted in '),
    print_step(J), print_numbered('.'), nl.

%%% print clauses, print step number, print spaces

print_clauses([],_,[]) :- nl.
print_clauses([[-(#)]|Mat],I,Mat1) :- !, print_clauses(Mat,I,Mat1).
print_clauses([Cla|Mat],I,Mat1) :-
    append(Cla2,[#|Cla3],Cla), append(Cla2,Cla3,Cla1),
    print_clauses([Cla1|Mat],I,Mat1).
print_clauses([Cla|Mat],I,[Cla|Mat1]) :-
    print_numbered(' ('), print_numbered(I), print_numbered(')  '),
    print_numbered(Cla), nl, I1 is I+1, print_clauses(Mat,I1,Mat1).

print_step([I]) :- print_numbered(I).
print_step([I,J|T]) :- print_step([J|T]), print_numbered('.'), print_numbered(I).

print_sp([]).
print_sp([I]) :- atom(I), !, print_numbered(' ').
print_sp([I]) :- I<1.
print_sp([I]) :- I>=1, print_numbered(' '), I1 is I/10, print_sp([I1]).
print_sp([I,J|T]) :- print_sp([J|T]), print_numbered(' '), print_sp([I]).

%%% print standard proof explanations, introduction/ending of proof

print_explanations :-
 print_numbered('Explanations for the proof presented below:'), nl,
 print_numbered('- to solve unsatisfiable problems they are negated'), nl,
 print_numbered('- equality axioms are added if required'), nl,
 print_numbered('- terms and variables are represented by Prolog terms'), nl,
 print_numbered('  and Prolog variables, negation is represented by -'), nl,
 print_numbered('- I^[t1,..,tn] represents the atom P_I(t1,..,tn)'), nl,
 print_numbered('  or the Skolem term f_I(t1,t2,..,tn) introduced'), nl,
 print_numbered('  during the clausal form translation'), nl,
 print_numbered('- the substitution [[X1,..,Xn],[t1,..,tn]] represents'), nl,
 print_numbered('  the assignments X1:=t1, .., Xn:=tn'), nl, nl.

print_introduction :-
 print_numbered('We prove that the given clauses are valid, i.e. for'), nl,
 print_numbered('a given substitution they evaluate to true for all'), nl,
 print_numbered('interpretations. The proof is by contradiction:'), nl,
 print_numbered('Assume there is an interpretation so that the given'), nl,
 print_numbered('clauses evaluate to false. Then in each clause there'), nl,
 print_numbered('has to be at least one literal that is false.'), nl, nl.

print_ending :-
 print_numbered('Therefore there is no interpretation that makes all'), nl,
 print_numbered('given clauses simultaneously false. Hence the given'), nl,
 print_numbered('clauses are valid.'), nl,
 print_numbered('                                             q.e.d.'), nl.

%%% add equality axioms

leancop_equal(F,F1) :-
    collect_predfunc([F],PL,FL), append(PL2,[((=),2)|PL3],PL),
    append(PL2,PL3,PL1) -> basic_equal_axioms(F0),
    subst_pred_axioms(PL1,F2), (F2=[] -> F3=F0 ; F3=(F0,F2)),
    subst_func_axioms(FL,F4), (F4=[] -> F5=F3 ; F5=(F3,F4)),
    ( F=(A=>C) -> F1=((F5,A)=>C) ; F1=(F5=>F) ) ; F1=F.

basic_equal_axioms(F) :-
    F=(( all X:(X=X) ),
       ( all X:all Y:((X=Y)=>(Y=X)) ),
       ( all X:all Y:all Z:(((X=Y),(Y=Z))=>(X=Z)) )).

% generate substitution axioms

subst_pred_axioms([],[]).
subst_pred_axioms([(P,I)|PL],F) :-
    subst_axiom(A,B,C,D,E,I), subst_pred_axioms(PL,F1), P1=..[P|C],
    P2=..[P|D], E=(B,P1=>P2), ( F1=[] -> F=A ; F=(A,F1) ).

subst_func_axioms([],[]).
subst_func_axioms([(P,I)|FL],F) :-
    subst_axiom(A,B,C,D,E,I), subst_func_axioms(FL,F1), P1=..[P|C],
    P2=..[P|D], E=(B=>(P1=P2)), ( F1=[] -> F=A ; F=(A,F1) ).

subst_axiom((all X:all Y:E),(X=Y),[X],[Y],E,1).
subst_axiom(A,B,[X|C],[Y|D],E,I) :-
    I>1, I1 is I-1, subst_axiom(A1,B1,C,D,E,I1),
    A=(all X:all Y:A1), B=((X=Y),B1).

% collect predicate & function symbols

collect_predfunc([],[],[]).
collect_predfunc([F|Fml],PL,FL) :-
    ( ( F=..[<=>|F1] ; F=..[=>|F1] ; F=..[;|F1] ; F=..[','|F1] ;
        F=..[~|F1] ; (F=..[all,_:F2] ; F=..[ex,_:F2]), F1=[F2] ) ->
      collect_predfunc(F1,PL1,FL1) ; F=..[P|Arg], length(Arg,I),
      I>0 ->  PL1=[(P,I)], collect_func(Arg,FL1) ; PL1=[], FL1=[] ),
    collect_predfunc(Fml,PL2,FL2),
    union1(PL1,PL2,PL), union1(FL1,FL2,FL).

collect_func([],[]).
collect_func([F|FunL],FL) :-
    ( \+var(F), F=..[F1|Arg], length(Arg,I), I>0 ->
      collect_func(Arg,FL1), union1([(F1,I)],FL1,FL2) ; FL2=[] ),
    collect_func(FunL,FL3), union1(FL2,FL3,FL).

union1([],L,L).
union1([H|L1],L2,L3) :- member(H,L2), !, union1(L1,L2,L3).
union1([H|L1],L2,[H|L3]) :- union1(L1,L2,L3).

% print status and connection proof

output_result(File,Matrix,Proof,Result,Conj) :-
    ( Conj\=[] -> Art=' is a ' ; Art=' is ' ), nl,
    print(File), print(Art), print(Result), nl,
    Proof=[] -> true ; ( Result='Theorem' -> Out=' for ' ;
      Result='Unsatisfiable' -> Out=' for negated ' ; true ),
    ( var(Out) -> true ; print('Start of proof'), print(Out),
      print(File), nl, leancop_proof(Matrix,Proof),
      print('End of proof'), print(Out), print(File), nl ).


%%% SCRIP demo driver: problems from standard input

:- initialization(main).

main :-
    repeat,
    read(T),
    ( T == end_of_file -> ! ; run(T), fail ).

run(problem(Name,Problem)) :-
    Settings=[cut,comp(7)], Conj=non_empty,
    leancop_equal(Problem,Problem2),
    make_matrix(Problem2,Matrix,Settings),
    ( prove2(Matrix,Settings,Proof) -> Result='Theorem' ;
      Result='Non-Theorem' ),
    output_result(Name,Matrix,Proof,Result,Conj).
