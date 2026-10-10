/*-------------------------------------------------------------------------*
 * PRESS -- the PRolog Equation Solving System, the Edinburgh algebra      *
 * solver of Alan Bundy, Bernard Silver, Leon Sterling, Richard O'Keefe,   *
 * Lawrence Byrd, Bob Welham and others (files dated 1981 to 1985): it     *
 * solves symbolic equations the way an A-level student is taught to --    *
 * isolation, collection, attraction, change of unknown, homogenization,   *
 * polynomial methods -- and prints each step and the method that took it. *
 * As a SCRIP demo (Lon 2026-10-10, CEO-1595).                             *
 *                                                                         *
 * Source: https://github.com/maths/PRESS at 026ff5d (2016-09-02), the     *
 * University of Edinburgh's copy from dream.inf.ed.ac.uk modified to run  *
 * on SWI-Prolog. MIT licence, its text below. The README says not every   *
 * part runs on SWI yet; enough does to solve the A-level equations here.  *
 * This file is swiload.pl with its consult list replaced by the 61 files  *
 * that list names, in its order (the entries it comments out stay out).   *
 * Three edits, nothing else changed:                                      *
 *  1. swiload.pl's :- [ ... ] consult list is gone: the files it loaded   *
 *     follow it, each under a separator naming its path. No file defines  *
 *     a predicate another defines, and none loads a file itself.          *
 *  2. swiload.pl's closing :- tlim(5) is :- tlim(1): trace level 2 prints *
 *     the homogenization's reduced term before anaz/6 binds it, so the    *
 *     line names an unbound variable as the host names it (swipl prints   *
 *     _15422 from the original files and _9304 from this one), which no   *
 *     ref can hold. Level 1 keeps every solving step and the answer.      *
 *  3. main/0 at the end reads equations from standard input, one term     *
 *     each, ended by a full stop, and solves each with solve/1 until end  *
 *     of file, then halts, under initialization/1.                        *
 * The ref is swipl 9.0.4's output on the same input:                      *
 *   swipl -q press.pl < press.in > press.ref                              *
 *-------------------------------------------------------------------------*/

/*
   MIT License

   Copyright (c) 2016 University of Edinburgh

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in all
   copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
   SOFTWARE.
*/

/*======================================================================== swiload.pl */

ttynl :- nl.

% Evaluates the exponential function exp(Number) ("e to the power of Number") and 
% unifies the resulting value with Result. See the following URL for more information.
% http://www.cs.uni-potsdam.de/wv/lehre/Material/Prolog/Eclipse-Doc/bips/kernel/arithmetic/exp-2.html
exp(A,B) :- B is exp(A).

%fwritef(File, Format) :-
%        fwritef(File, Format, []).
%
%fwritef(File, Format, List) :-
%        telling(Old),
%        tell(File),
%        writef(Format, List),
%        tell(Old).

% (SCRIP demo edit 1: swiload.pl's consult list is gone -- the 61 files it named follow, in its order)

/*======================================================================== util/util_ops.pl */

%   File   : UTIL.OPS
%   Author : Lawrence Byrd, L Hardman
%   Updated: 4 April 1984
%   Purpose: Operator declarations for UTIL and other MECHO programs

:- op(950,xfy,#).			% Used for disjunction
:- op(920,xfy,&).			% Used for conjunction
% :- op(900,fy,[not,thnot]).		% See INVOCA.PL
% :- op(700,xfx,\=).			% see IMISCE.PL

				% Conveniences

% :- op(600,xfy, (.)).			% see EDIT.PL
% :- op(300,fx,edit).			% see EDIT.PL
% :- op(300,fx,redo).
% :- op(300,fx,tlim).			% see TRACE.PL
% :- op(300,fx,ton).
% :- op(300,fx,toff).
% :- op(100,fx,l).
% :- op(100,xfy,(:)).			% see EDIT.PL

/*======================================================================== util/arith_ops.pl */

/* ARITH.OPS : Operator declarations for arithmetic expressions
                Now present in UTIL, used by PRESS and others

                                                UTILITY
                                                Lawrence
                                                Updated: 2 August 81
*/

  :- op(500,yfx,[++,--]).
  :- op(400,yfx,div).
  :- op(300,xfy,:).

/*======================================================================== util/invoca.pl */

%   Author : Lawrence
%   Updated: 20 July 1983
%   Purpose: Fancy control structures ("invocation" routines).


%   Most of these predicates are best forgotten.
%   The exceptions are &/2, forall/2, once_press/1, not/1.

	%%%  Run this module interpreted
	%%%  INVOCA requires no other modules


:- dynamic '$bind'/1.

%:- public			% /--- begin junk
%	(\\)/2,			% |    a\\b = once_press((a;b))
%	nobt/1,			% |    nobt(X) = once_press(X)
%	(thnot)/1,		% |    thnot(X) = not(X) = \+ X
%	any/1,			% |    any([G1,...,Gn]) = G1;....;Gn
%	binding/2,		% |    nobody knows
%	for/2,			% |    for(N,G) = G,...,G (with N Gs)
%	findall_press/3,		% \--- end junk
%	(&)/2,
%	forall/2,
%	once_press/1,
%	(not)/1.
                               
&(A, B) :-
	call(A),
	call(B).

/*		

\\(A, B) :-
	(call(A) ; call(B)), !.

*/

any([]) :- !,
	fail.			%   catch lists with unbound tails
any([Goal|_Goals]) :-
	call(Goal).
any([_|Goals]) :-
	any(Goals).



binding(N, Goal) :-
	asserta('$bind'(N)),
	N > 0,
	call(Goal),
	'$retr'(N2),
	N3 is N2-1,
	(   N3 =< 0
	;   asserta('$bind'(N3)), fail
	),  !.
binding(_, _) :-
	'$retr'(_),
	fail.


'$retr'(N) :-
	retract('$bind'(N)), !.



			% Findall Xs such that P.  This is a funny version
			%  which finds the FIRST solution that bagof would
			%  find, but returns the empty list if there are no
			%  solutions. (Logically dubious.)  A better version
			%  of this is available elsewhere.

findall_press(X, P, List) :-
	bagof(X, P, List), !.
findall_press(_X, _P, []).



for(0, _Goal) :- !.
for(N, Goal) :-
	N > 0,
	call(Goal),
	M is N-1,
	for(M, Goal),
	!.			%   this cuts Goal as well



forall(Generator, Test) :-
	Generator,
	\+ Test,
	!, fail.
forall(_, _).



once_press(Goal) :-
	call(Goal), !.


nobt(Goal) :-
	call(Goal), !.



not(Goal) :- call(Goal), !, fail.
not(_Goal).



thnot(Goal) :- call(Goal), !, fail.
thnot(_Goal).

/*======================================================================== util/imisce.pl */

%   File   : IMISCE.PL
%   Author : Lawrence Byrd, L. Hardman
%   Updated: 4 April 1984
%   Purpose: Miscellaneous routines (interpreted)

%   The contents of this module should be redistributed.  The only thing
%   which has to be interpreted rather than compiled is subgoal, and that
%   is incomplete and obsolete.  gcc needs once from INVOCA.PL.

%:- public
%        (\=)/2,
%        casserta/1,
%        cassertz/1,
%        clean/0,
%        continue/0.


continue.                       %  This is one of the actions for error/3


% \=(X, X) :- !, fail.

%\=(_X, _Y) :- !.


casserta(X) :-
        clause(X, true),
        !.
casserta(X) :-
        asserta(X).


cassertz(X) :-
        clause(X, true),
        !.
cassertz(X) :-
        assertz(X).


clean :-
        seeing(OldInput),
        see('prolog.log'),
        file_delete('prolog.log'),
        seen,
        see(OldInput).


diff(X, X) :- !,
        fail.
diff(_X, _Y).


gcc(Goal) :-
        once_press(Goal),
        asserta('$gcc'(Goal)),
        fail.
gcc(Goal) :-
        retract('$gcc'(Answer)),
        !,              %  This cut is needed for nested 
        Goal = Answer.


l(X) :- listing(X).                     % Make listing easier.


subgoal(exact, L) :-
        \+ \+ (numbervars(L, 0, _), subgoal_of(L) ).

/*======================================================================== util/applic.pl */

%   File   : APPLIC.PL
%   Author : Lawrence Byrd + Richard A. O'Keefe
%   Updated: 4 August 1984
%   Purpose: Various "function" application routines based on apply/2.
%   Needs  : append/3 from ListUt.Pl

% :- public
%         apply/2,
%         callable_press/1,
%         checkand/2,
%         checklist/2,
%         convlist/3,
%         exclude/3,
%         mapand/3,
%         maplist/3,
%         some/2,
%         somechk/2,
%         sublist/3.
% 
% :- mode
%         apply(+, +),
%         callable_press(?),
%         checkand(+, +),
%         checklist(+, +),
%         convlist(+, +, ?),
%         exclude(+, +, ?),
%         mapand(+, ?, ?),
%         maplist(+, ?, ?),
%         some(+, ?),
%         somechk(+, +),
%         sublist(+, +, ?).



%   apply(Pred, Args)
%   is the key to this whole module.  It is basically a variant of call/1
%   (see the Dec-10 Prolog V3.43 manual) where some of the arguments may
%   be already in the Pred, and the rest are passed in the list of Args.
%   Thus apply(foo, [X,Y]) is the same as call(foo(X,Y)),
%   and apply(foo(X), [Y]) is also the same as call(foo(X,Y)).
%   BEWARE: any goal given to apply is handed off to call/1, which is the
%   Prolog *interpreter*, so if you want to apply compiled predicates you
%   MUST have :- public declarations for them.  The ability to pass goals
%   around with some of their (initial) arguments already filled in is
%   what makes apply/2 so useful.  Don't bother compiling anything that
%   uses apply heavily, the compiler won't be able to help much.  LISP
%   has the same problem.  Later Prolog systems may have a simpler link
%   between compiled and interpreted code, or may fuse compilation and
%   interpretation, so apply/2 may come back into its own.  At the moment,
%   apply and the routines based on it are not well thought of.

apply(Pred, Args) :-
        (   atom(Pred),
                Goal =.. [Pred|Args]
        ;   %compound_press(Pred),
                Pred =.. OldList,
                append(OldList, Args, NewList),
                Goal =.. NewList
        ),  !,
        call(Goal).



%   callable_press(Term)
%   succeeds when Term is something that it would make sense to give to
%   call/1 or apply/2.  That is, Term must be an atom or a compound term;
%   variables and integers are out.

callable_press(Term) :-
        nonvar(Term),
        functor(Term, FunctionSymbol, _),
        atom(FunctionSymbol).



%   checkand(Pred, Conjunction)
%   succeeds when Pred(Conjunct) succeeds for every Conjunct in the
%   Conjunction.  All the *and predicates in this module assume that
%   a&b&c&d is parsed as a&(b&(c&d)), and that the "null" conjunction
%   is 'true'.  It is possible for this predicate, and most of the
%   others, to backtrack and try alternative solutions.  If you do not
%   want that to happen, copying one of these predicates and putting a
%   cut in the suggested place will produce a tail-recursive version.
%   The cuts in the *and predicates are there because "non-and" is
%   defined by exclusion; they cannot be assigned types.

checkand(_Pred, true) :- !.
checkand(Pred, A&B)  :- !,
        apply(Pred, [A]),
        checkand(Pred, B).
checkand(Pred, A) :-
        apply(Pred, [A]).



%   checklist(Pred, List)
%   suceeds when Pred(Elem) succeeds for each Elem in the List.
%   In InterLisp, this is EVERY.  It is also MAPC.

checklist(_Pred, []).
checklist(Pred, [Head|Tail]) :-
        apply(Pred, [Head]),
        checklist(Pred, Tail).



%   mapand(Rewrite, OldConj, NewConj)
%   succeeds when Rewrite is able to rewrite each conjunct of OldConj,
%   and combines the results into NewConj.

mapand(_Pred, true, true) :- !.
mapand(Pred, Old&Olds, New&News) :- !,
        apply(Pred, [Old,New]),
        mapand(Pred, Olds, News).
mapand(Pred, Old, New) :-
        apply(Pred, [Old,New]).



%   maplist(Pred, OldList, NewList)
%   succeeds when Pred(Old,New) succeeds for each corresponding
%   Old in OldList, New in NewList.  In InterLisp, this is MAPCAR. 
%   It is also MAP2C.  Isn't bidirectionality wonderful?

maplist(_Pred, [], []).
maplist(Pred, [Old|Olds], [New|News]) :-
        apply(Pred, [Old,New]),
        maplist(Pred, Olds, News).



%   convlist(Rewrite, OldList, NewList)
%   is a sort of hybrid of maplist/3 and sublist/3.
%   Each element of NewList is the image under Rewrite of some
%   element of OldList, and order is preserved, but elements of
%   OldList on which Rewrite is undefined (fails) are not represented.
%   Thus if foo(X,Y) :- integer(X), Y is X+1.
%   then convlist(foo, [1,a,0,joe(99),101], [2,1,102]).

convlist(_Pred, [], []).
convlist(Pred, [Old|Olds], NewList) :-
        apply(Pred, [Old,New]),
        !,
        NewList = [New|News],
        convlist(Pred, Olds, News).
convlist(Pred, [_|Olds], News) :-
        convlist(Pred, Olds, News).



%   exclude(Pred, List, SubList)
%   succeeds when SubList is the SubList of List containing all the
%   elements for which Pred(Elem) is *false*.  That is, it removes
%   all the elements satisfying Pred.  Efficiency would be somewhat
%   improved if the List argument came first, but this argument order
%   was copied from the older sublist/3 predicate, and let's face it,
%   apply/2 isn't stupendously efficient itself.  

exclude(_Pred, [], []).
exclude(Pred, [Head|List], SubList) :-
        apply(Pred, [Head]),
        !,
        exclude(Pred, List, SubList).
exclude(Pred, [Head|List], [Head|SubList]) :-
        exclude(Pred, List, SubList).



%   some(Pred, List)
%   succeeds when Pred(Elem) succeeds for some Elem in List.  It will
%   try all ways of proving Pred for each Elem, and will try each Elem
%   in the List.  somechk/2 is to some/2 as memberchk_press/2 is to member/2;
%   you are more likely to want somechk with its single solution.
%   In InterLisp this is SOME.

some(Pred, [Head|_]) :-
        apply(Pred, [Head]).
some(Pred, [_|Tail]) :-
        some(Pred, Tail).



somechk(Pred, [Head|_]) :-
        apply(Pred, [Head]),
        !.
somechk(Pred, [_|Tail]) :-
        somechk(Pred, Tail).



%   sublist(Pred, List, SubList)
%   succeeds when SubList is the sub-sequence of the List containing all
%   the Elems of List for which Pred(Elem) succeeds.

sublist(_Pred, [], []).
sublist(Pred, [Head|List], SubList) :-
        apply(Pred, [Head]),
        !,
        SubList = [Head|Rest],
        sublist(Pred, List, Rest).
sublist(Pred, [_|List], SubList) :-
        sublist(Pred, List, SubList).

/*======================================================================== util/arith.pl */

%   File   : ARITH.PL
%   Author : R.A.O'Keefe
%   Updated: 12 June 1984
%   Purpose: Define the 'plus' family of arithmetic predicates.

% :- public
%         divide/4,
%         ge/2,
%         gt/2,
%         le/2,
%         lt/2,
%         plus/3,
%         succ/2,
%         times/3.

%:- mode
%        instantiation_fault_(+),
%        ge(?, ?),
%        gt(?, ?),
%        le(?, ?),
%        lt(?, ?),
%        succ(?, ?),
%        plus(?, ?, ?),
%        times(?, ?, ?),
%        times(+, +, ?, ?, ?),
%        divide(?, ?, ?, ?).

/* :- pred
        ge(integer, integer),
        gt(integer, integer),
        le(integer, integer),
        lt(integer, integer),
        succ(integer, integer),
        plus(integer, integer, integer),
        times(integer, integer, integer),
            times(integer, integer, integer, integer, integer),
        divide(integer, integer, integer, integer).
*/
/*  These predicates are now primitives in C Prolog.  My original
    reason for adding them to C-Prolog was efficiency, as the "is"
    expression interpreter (which has to handle floating point as
    well as integers) is quite complicated.  succ(X, Y) is 1.2ms
    faster than Y is X+1 on a VAX 11-750.  However, I found that
    using succ and plus were clearer, and because of the (limited)
    reversibility of these operations, lived up to Prolog's claim
    to have some relation to logic a little better than programs
    written using the strictly one-way "is".  When I started using
    Prolog I was very taken with "is" and held my nose up at IC-
    Prolog for lacking it.  I now think this was a mistake.

    Of course there are occasions when you want more than the four
    algorithms of antiquity, such as when you want to do bit-wise
    operations, or when you want to use floating-point.  And it is
    undeniable that a single arithmetic expression involving 3 or 4
    operators is a lot clearer than 3 or 4 predicate calls whose
    data flow needs careful tracing.  The style rule I have adopted
    (in addition to using 'is' when these predicates simply can't
    express what I mean) is to use 'is' whenever I can't express
    what I want with a *single* call on one of these predicates.
    Thus to calculate 3X I might use times(3,X,Ans), but to obtain
    3X+2 I would use Ans is 3*X+2.  A further style rule is that
    if a predicate uses 'is', all similar calculations in that
    predicate also use 'is' so you can see what is going on.  Thus
    if I want 3X+2 in one clause and 3X in another, I would use 'is'
    in both so that the reader can easily perceive the similarities
    and differences.  Reversibility is not then an issue.

    This Prolog code looks bulky.  It is bulky.  But don't dismiss
    these operations for such a reason.  The C code which implements
    them in C Prolog is much shorter, and it is much more efficient
    than using "is", as it knows that there is no question of walking
    down trees.  When writing a Prolog compiler, you should consider
    these operations: the compiler can benefit from knowing more
    about the arguments, and if it keeps track of the instantiation
    state of source variables it may be able to generate special-
    purpose code.  (E.g. calling plus(X,Y,Z) when Z is known to be
    unbound should generate "int_chk_push(X), int_chk_push(Y),
    add, bind_new_var(Z)" or something like that.)
*/

%   The general idea is that if there is enough information in a goal
%   to detect that it must fail (e.g. succ(X,a)) we fail, if there is
%   enough information to determine a unique solution, we yield that
%   solution, and otherwise (this can generally only happen when too
%   few arguments are instantiated) we report an instantiation fault.
%   We report a fault even when the non-determinism is bounded, e.g.
%   in times(X, X, 4) there are only two possible solutions.  This is
%   because these operations are primitives, that would be coded in
%   assembler or micro-code, and we don't want to oblige a compiler
%   to generate full frames for them.  

instantiation_fault_(Goal) :-
        nl, write('! instantiation fault in '),
        print(Goal), nl,
        break, abort.



%   {ge|gt|le|lt}(X,Y) <-> integer(X) & integer(Y) & X {>=|>|=<|<} Y
%   Note that there is no eq or ne, = and \= will do fine.

ge(X, Y) :-
        integer(X), integer(Y),
        !,
        X @>= Y.
ge(X, Y) :-
        ( var(X) ; integer(X) ),
        ( var(Y) ; integer(Y) ),
        !,
        instantiation_fault_(ge(X,Y)).


gt(X, Y) :-
        integer(X), integer(Y),
        !,
        X @> Y.
gt(X, Y) :-
        ( var(X) ; integer(X) ),
        ( var(Y) ; integer(Y) ),
        !,
        instantiation_fault_(gt(X,Y)).


le(X, Y) :-
        integer(X), integer(Y),
        !,
        X @=< Y.
le(X, Y) :-
        ( var(X) ; integer(X) ),
        ( var(Y) ; integer(Y) ),
        !,
        instantiation_fault_(le(X,Y)).


lt(X, Y) :-
        integer(X), integer(Y),
        !,
        X @< Y.
lt(X, Y) :-
        ( var(X) ; integer(X) ),
        ( var(Y) ; integer(Y) ),
        !,
        instantiation_fault_(lt(X,Y)).



%   succ(P, S) <-> integer(P) & integer(S) & P >= 0 & S = P+1
%   given either of P or S we can solve for the other.
%   If either is neither an integer nor a variable the relation
%   must be false.  But succ(P, S) with both arguments unbound
%   has infinitely many solutions.  (You can generate a bounded
%   range of integers using between/3.)

succ(Pred, Succ) :-
        integer(Pred),
        !,
        Pred >= 0,
        Succ is Pred+1.
succ(Pred, Succ) :-
        integer(Succ),
        !,
        Succ > 0,
        Pred is Succ-1.
succ(Pred, Succ) :-
        var(Pred), var(Succ),
        instantiation_fault_(succ(Pred,Succ)).



%   plus(A, B, S) <-> integer(A) & integer(B) & integer(S) & S = A+B.
%   given any two of the arguments, we can solve for the third.
%   If any argument is neither an integer nor a variable, the relation
%   must be false.  If two are variables and the other is variable or
%   integer, there are infinitely many solutions.

plus(A, B, S) :-
        integer(A), integer(B),
        !,
        S is A+B.
plus(A, B, S) :-
        integer(A), integer(S),
        !,
        B is S-A.
plus(A, B, S) :-
        integer(B), integer(S),
        !,
        A is S-B.
plus(A, B, S) :-
        ( var(A) ; integer(A) ),
        ( var(B) ; integer(B) ),
        ( var(S) ; integer(S) ),
        !,      % at most one of A,B,S is integer, the others are vars
        instantiation_fault_(plus(A,B,S)).



%   times(A, B, P) <-> integer(A) & integer(B) & integer(P) & P = A*B.
%   This is trickier than plus.  Given A and B there is a unique solution
%   for P.  Given A(B) and P there is at most one solution for B(A)
%   except in the case when P and A(B) are both 0, in which case there
%   are infinitely many solutions.  Given just A or B there are infinitely
%   many solutions.  Given P there is always a finite number of solutions,
%   but this number always exceeds 1 (even times(X,Y,1) has X,Y=1,1 or -1,-1).
%   So we report an instantiation error in that case two.  Of course if any
%   argument is instantiated to a non-integer the relation must be false.

times(A, B, P) :-
        integer(A), integer(B),
        !,
        P is A*B.
times(A, B, P) :-
        integer(A), integer(P),
        !,
        times(P, A, B, A, B).
times(A, B, P) :-
        integer(B), integer(P),
        !,
        times(P, B, A, A, B).
times(A, B, P) :-
        ( var(A) ; integer(A) ),
        ( var(B) ; integer(B) ),
        ( var(P) ; integer(P) ),
        !,      % at most one of P,A,B is integer, the others are vars
        instantiation_fault_(times(A,B,P)).

times(P, A, B, _X, _Y) :-
        A \== 0,
        !,
        0 is P mod A,
        B is P  //  A.
times(0, 0, _B, X, Y) :-
        instantiation_fault_(times(X,Y,0)).



/*  divide(A, B, Q, R)
    means A, B, Q, and R are all integers,
    A = B*Q + R,
    A*R >= 0,   (A and R have the same sign, so Q is truncated towards 0)
    0 <= |R/B| < 1      (so B is non-zero)

    This piece of Prolog is to be taken as a specification of the
    predicate, an implementation may proceed differently.
    I assume "is", and that overflow need not be checked for,
    and that X / Y and X / Y are well defined for X >= 0, Y >= 1.

    Cases:
        any one of A, B, Q, R is bound to a non-integer => FAIL
        B is bound to 0 => FAIL
        {These two failures should have associated error messages}

        A and B bound => calculate Q', R' unify Q=Q' R=R'

        A, Q, and R bound => if A*R < 0 then FAIL
                         if Q = 0 then instantiation FAULT
                         unless |Q| divides A-R then FAIL
                         calculate B from divide(A-R,Q,B,0)

        B, Q, and R bound => check conditions
                        calculate A = B*Q+R
                        check remaining conditions

        otherwise, instantiation FAULT
*/
divide(A, B, Q, R) :-
        ( nonvar(A), \+ integer(A)
        ; nonvar(B), \+ integer(B)
        ; nonvar(Q), \+ integer(Q)
        ; nonvar(R), \+ integer(R)
        ),
        !,      % bound to fail
        fail.
divide(A, B, Q, R) :-
        nonvar(A),
        nonvar(B),
        !,
        ( B > 0, A >= 0, Q1 is A//B
        ; B > 0, A <  0, Q1 is -((-A)//B)
        ; B < 0, A >= 0, Q1 is -(A//(-B))
        ; B < 0, A <  0, Q1 is (-A)//(-B)
        ), !,
        Q = Q1,
        R is A-Q1*B.
divide(A, B, Q, R) :-
        nonvar(A),
        nonvar(Q),      
        nonvar(R),
        !,
        ( A >= 0, R >= 0
        ; A =< 0, R =< 0
        ),
        ( Q = 0, !, instantiation_fault_(divide(A,B,Q,R))
        ; true
        ),
        !,
        0 is (A-R) mod Q,
        B is (A-R)  //  Q.
divide(A, B, Q, R) :-
        nonvar(B),
        nonvar(Q),
        nonvar(R),
        !,
        B \== 0,
        A is B*Q+R,
        ( R >= 0, A >= 0, (B > R ; -B > R)
        ; R =< 0, A =< 0, (B < R ; -B < R)
        ),
        !.
divide(A, B, Q, R) :-
        instantiation_fault_(divide(A,B,Q,R)).

/*======================================================================== util/bagutl.pl */

%   File   : BAGUTL.PL
%   Author : R.A.O'Keefe
%   Updated: 18 February 1984
%   Purpose: Bag Utilities
/*
    A bag B is a function from a set dom(B) to the non-negative integers.
For the purposes of this module, a bag is constructed from two functions:
        
        bag             - creates an empty bag
        bag(E, M, B)    - extends the bag B with a new (NB!) element E
                          which occurs with multiplicity M, and which
                          precedes all elements of B in Prolog's order.

A bag is represented by a Prolog term mirroring its construction.  There
is one snag with this: what are we to make of
        bag(f(a,Y), 1, bag(f(X,b), 1, bag))     ?
As a term it has two distinct elements, but f(a,b) will be reported as
occurring in it twice.  But according to the definition above,
        bag(f(a,b), 1, bag(f(a,b), 1, bag))
is not the representation of any bag, that bag is represented by
        bag(f(a,b), 2, bag)
alone.  We are apparently stuck with a scheme which is only guaranteed
to work for "sufficiently instantiated" terms, but then, that's true of 
a lot of Prolog code.

    The reason for insisting on the order is to make union and 
intersection linear in the sizes of their arguments.

*/

%:- public
%        bag_inter/3,
%        bag_to_list/2,
%        bag_to_set/2,
%        bag_union/3,
%        bagmax/2,
%        bagmin/2,
%        checkbag/2,
%        is_bag/1,
%        length/3,
%        list_to_bag/2,
%        make_sub_bag/2,
%        mapbag/3,
%        member/3,
%        member/3,
%        portray_bag/1,
%        test_sub_bag/2.
%
%:- mode
%        addkeys(+, -),
%        bag_inter(+, +, -),
%            bag_inter(+, +, +, +, +, +, +, -),  
%        bag_scan(+, +, +, -, +),
%        bag_to_list(+, -),
%            bag_to_list(+, +, -, -),
%        bag_to_set(+, -),
%        bag_union(+, +, -),
%            bag_union(+, +, +, +, +, +, +, -),
%        bagform(+, -),
%            bagform(?, +, -, +, -),
%        bagmax(+, -),
%        bagmin(+, -),
%        checkbag(+, +),
%        countdown(+, -),
%        is_bag(+),
%            is_bag(+, +),
%        length(+, -, -),
%            length(+, +, -, +, -),
%        list_to_bag(+, -),
%        make_sub_bag(+, -),
%        mapbag(+, +, -),
%            mapbaglist(+, +, -),
%        member(?, ?, +),
%        memberchk_press(+, ?, +),
%        portray_bag(+),
%            portray_bag(+, +, +),
%                portray_bag(+, +),
%        test_sub_bag(+, +),
%            test_sub_bag(+, +, +, +, +, +, +).



is_bag(bag).
is_bag(bag(E,M,B)) :-
        integer(M), M > 0,
        is_bag(B, E).

        is_bag(bag, _).
        is_bag(bag(E,M,B), P) :-
                E @> P,
                integer(M), M > 0,
                is_bag(B, E).



portray_bag(bag(E,M,B)) :-
        write('[% '), portray_bag(E, M, B), write(' %]').
portray_bag(bag) :-
        write('[% '), write(' %]').

        portray_bag(E, M, B) :-
                var(B), !,
                portray_bag(E, M), write(' | '), write(B).
        portray_bag(E, M, bag(F,N,B)) :- !,
                portray_bag(E, M), write(', '),
                portray_bag(F, N, B).
        portray_bag(E, M, bag) :- !,
                portray_bag(E, M).
        portray_bag(E, M, B) :-
                portray_bag(E, M), write(' | '), write(B).

                portray_bag(E, M) :-
                        print(E), write(':'), write(M).


%   If bags are to be as useful as lists, we should provide mapping
%   predicates similar to those for lists.  Hence
%       checkbag(Pred, Bag)             - applies Pred(Element, Count)
%       mapbag(Pred, BagIn, BagOut)     - applies Pred(Element, Answer)
%   Note that mapbag does NOT give the Count to Pred, but preserves it.
%   It wouldn't be hard to apply Pred to four arguments if it wants them.



checkbag(_Pred, bag).
checkbag(Pred, bag(E,M,B)) :-
        apply(Pred, [E, M]),
        checkbag(Pred, B).


mapbag(Pred, BagIn, BagOut) :-
        mapbaglist(Pred, BagIn, Listed),
        keysort(Listed, Sorted),
        bagform(Sorted, BagOut).

        mapbaglist(_Pred, bag, []).
        mapbaglist(Pred, bag(E,M,B), [R-M|L]) :-
                apply(Pred, [E, R]),
                mapbaglist(Pred, B, L).



bag_to_list(bag, []).
bag_to_list(bag(E,M,B), R) :-
        bag_to_list(M, E, L, R),
        bag_to_list(B, L).

        bag_to_list(0, _, L, L) :- !.
        bag_to_list(M, E, L, [E|R]) :-
                N is M-1,
                bag_to_list(N, E, L, R).



list_to_bag(L, B) :-
        addkeys(L, K),
        keysort(K, S),
        bagform(S, B).

        addkeys([], []).
        addkeys([Head|Tail], [Head-1|Rest]) :-
                addkeys(Tail, Rest).

        bagform([], bag) :- !.
        bagform(List, bag(E,M,B)) :-
                bagform(E, List, Rest, 0, M), !,
                bagform(Rest, B).

                bagform(Head, [Head-N|Tail], Rest, K, M) :-!,
                        L is K+N,
                        bagform(Head, Tail, Rest, L, M).
                bagform(_Head, Rest, Rest, M, M).



bag_to_set(bag, []).
bag_to_set(bag(E,_,B), [E|S]) :-
        bag_to_set(B, S).


/*  There are two versions of the routines member, bagmax, and bagmin.
    The slow versions, which are commented out, try to allow for the
    possibility that distinct elements in the bag might unify, while
    the faster routines assume that all elements are ground terms.


member(E, M, bag(E,K,B)) :-
        member(B, E, K, M).
member(E, M, bag(_,_,B)) :-
        member(E, M, B).

        member(bag(E,L,B), E, K, M) :- !,
                N is K+L,
                member(B, E, N, M).
        member(bag(_,_,B), E, K, M) :-
                member(B, E, K, M).
        member(bag,        E, M, M).

%  These routines are correct, but Oh, so costly!

bagmax(B, E) :-
        member(E, M, B),
        \+ (member(F, N, B), N > M).

bagmin(B, E) :-
        member(E, M, B),
        \+ (member(F, N, B), N < M).

*//*    The faster versions follow    */


member(Element, Multiplicity, bag(Element,Multiplicity,_)).
member(Element, Multiplicity, bag(_,_,Bag)) :-
        member(Element, Multiplicity, Bag).


memberchk_press(Element, Multiplicity, bag(Element,Multiplicity,_)) :- !.
memberchk_press(Element, Multiplicity, bag(_,_,Bag)) :-
        memberchk_press(Element, Multiplicity, Bag).



bagmax(bag(E,M,B), Emax) :-
        bag_scan(B, E, M, Emax, >).

bagmin(bag(E,M,B), Emin) :-
        bag_scan(B, E, M, Emin, <).

        bag_scan(bag(Eb,Mb,B), _Ei, Mi, Eo, C) :-
                compare(C, Mb, Mi), !,
                bag_scan(B, Eb, Mb, Eo, C).
        bag_scan(bag(_Eb,_Mb,B), Ei, Mi, Eo, C) :-
                bag_scan(B, Ei, Mi, Eo, C).
/*      bag_scan(bag(Eb,Mb,B), Ei, Mi, Eo, C) :-
                bag_scan(B, Eb, Mb, Eo, C).     %  for all extrema
*/      bag_scan(bag,          Ei, _Mi, Ei, _C).




length(B, BL, SL) :-
        length(B, 0, BL, 0, SL).

        length(bag,        BL, BL, SL, SL).
        length(bag(_,M,B), BA, BL, SA, SL) :-
                BB is BA+M, SB is SA+1,
                length(B, BB, BL, SB, SL).


%  sub_bag, if it existed, could be used two ways: to test whether one bag
%  is a sub_bag of another, or to generate all the sub_bags.  The two uses
%  need different implementations.


make_sub_bag(bag, bag).
make_sub_bag(bag(E,M,B), bag(E,N,C)) :-
        countdown(M, N),
        make_sub_bag(B, C).
make_sub_bag(bag(_,_,B), C) :-
        make_sub_bag(B, C).

        countdown(M, M).
        countdown(M, N) :-
                M > 1, K is M-1,
                countdown(K, N).



test_sub_bag(bag, _).
test_sub_bag(bag(E1,M1,B1), bag(E2,M2,B2)) :-
        compare(C, E1, E2),
        test_sub_bag(C, E1, M1, B1, E2, M2, B2).

        test_sub_bag(>, E1, M1, B1, _E2, _M2, B2) :-
                test_sub_bag(bag(E1, M1, B1), B2).
        test_sub_bag(=, E1, M1, B1, E1, M2, B2) :-
                M1 =< M2,
                test_sub_bag(B1, B2).


bag_union(bag(E1,M1,B1), bag(E2,M2,B2), B3) :-
        compare(C, E1, E2), !,
        bag_union(C, E1, M1, B1, E2, M2, B2, B3).
bag_union(bag, Bag, Bag) :- !.
bag_union(Bag, bag, Bag).

        bag_union(<, E1, M1, B1, E2, M2, B2, bag(E1,M1,B3)) :-
                bag_union(B1, bag(E2, M2, B2), B3).
        bag_union(>, E1, M1, B1, E2, M2, B2, bag(E2,M2,B3)) :-
                bag_union(bag(E1, M1, B1), B2, B3).
        bag_union(=, E1, M1, B1, E1, M2, B2, bag(E1,M3,B3)) :-
                M3 is M1+M2,
                bag_union(B1, B2, B3).



bag_inter(bag(E1,M1,B1), bag(E2,M2,B2), B3) :-
        compare(C, E1, E2), !,
        bag_inter(C, E1, M1, B1, E2, M2, B2, B3).
bag_inter(_, _, bag).

        bag_inter(<, _E1, _M1, B1, E2, M2, B2, B3) :-
                bag_inter(B1, bag(E2,M2,B2), B3).
        bag_inter(>, E1, M1, B1, _E2, _M2, B2, B3) :-
                bag_inter(bag(E1,M1,B1), B2, B3).
        bag_inter(=, E1, M1, B1, E1, M2, B2, bag(E1, M3, B3)) :-
                (   M1 < M2, M3 = M1  ;  M3 = M2   ), !,
                bag_inter(B1, B2, B3).

/*======================================================================== util/betwee.pl */

%   File   : BETWEEN.PL
%   Author : R.A.O'Keefe
%   Updated: 4 October 1984
%   Purpose: Generate integers.

% :- public
%         between/3,
%         gen_arg/3,
%         gen_int/1,
%         gen_nat/1,
%         repeat/1.
% 
% :- mode
%         between(+, +, ?),
%         between1(+, +, -),
%         gen_arg(?, +, ?),
%         gen_int(?),
%         gen_nat(?),
%         gen_nat(+, -),
%         repeat(+).


between(L, U, N) :-
        nonvar(N),
        !,
        integer(L), integer(U), integer(N),
        L =< N, N =< U.
between(L, U, N) :-
        integer(L), integer(U), L =< U,
        between1(L, U, N).


between1(L, _, L).
between1(L, U, N) :-
        L < U,
        M is L+1,
        between1(M, U, N).



%   gen_arg(N, Term, Arg)
%   is exactly like arg(N, Term, Arg), except that it will generate
%   solutions for N by backtracking (will work when N is a variable).

gen_arg(N, Term, Arg) :-
        functor(Term, _, Arity),
        between(1, Arity, N),
        arg(N, Term, Arg).



gen_nat(N) :-                   % gen-erate nat-ural
        nonvar(N),              % if we aren't to generate it
        !,                      % demand that it is an integer
        integer(N), N >= 0.     % and non-negative.
gen_nat(N) :-                   % otherwise, generate an
        gen_nat(0, N).          % integer >= 0
 
 
gen_nat(L, L).
gen_nat(L, N) :-                % generate natural > L
        M is L+1,
        gen_nat(M, N).          % generate natural >= M
 
 

gen_int(I) :-                   % gen-erate int-eger
        nonvar(I),              % if we aren't to generate it
        !,                      % demand that it is an integer.
        integer(I).
gen_int(0).                     % generate 0
gen_int(I) :-                   % generate +/- N for N > 0
        gen_nat(1, N),
        (   I = N
        ;   I is -N
        ).



repeat(N) :-
        telling(Old), tell(user),
        write('It is pointlessly stupid to use repeat/1.'), nl,
        write('Why dont you use between/3 instead, fathead?'), nl,
        tell(Old),
        between(1, N, _).

/*======================================================================== util/flagro.pl */

%   File   : FLAGRO.PL
%   Author : Lawrence Byrd + R.A.O'Keefe.
%   Updated: 31 October 1983
%   Purpose: Flag (global variable) handling.
%   Needs  : no other files.

% :- public
%         flag/2,                 %  initialise a flag.
%         flag/3.                 %  change a flag.
% 
% :- mode
%         check_valid_flag_name(+),
%         flag(+, +),
%         flag(+, ?, ?).

:- dynamic flag/2.


/*  Flags are stored in the data base keyed under the Flag itself with
    the information packaged into a compound term as follows:

        Flag -->                '$flag'(Flag, CurrentValue)

    If you only access flags through these routines there will be at
    most one such record per flag.  The flag/2 predicate will clear
    out any records it may find.  The flag/3 predicate maintains the
    flags returning the previous value as Old and updating the flag
    to New.  The code actually checks to see if this updating really
    has to change the data base.  For compatibility with old code, if
    you call flag/3 on a flag which has no record, an old value of 0
    is assumed.  For compatibility with C-Prolog, flags may not be
    integers, but only atoms or compound terms.
*/

check_valid_flag_name(Flag) :-
        nonvar(Flag),
        functor(Flag, Atom, _),
        atom(Atom).
%   There should be a clause to print an error message here.


flag(Flag, InitialValue) :-
        check_valid_flag_name(Flag),
        ( recorded(Flag, '$flag'(Flag,_), Ref), erase(Ref), fail ; true ),
        recorda(Flag, '$flag'(Flag,InitialValue), _).


flag(Flag, OldValue, NewValue) :-
        check_valid_flag_name(Flag),
        (   recorded(Flag, '$flag'(Flag, Old), Ref)  ;  Old = 0   ),
        !,                              %   there should be only one record
        OldValue = Old,                 %   pattern match, may fail
        (   OldValue == NewValue        %   no change needed
        ;   (   var(Ref)  ;  erase(Ref)   ),
            recorda(Flag, '$flag'(Flag,NewValue), _)
        ),  !.

/*======================================================================== util/gensym.pl */

%   File   : GENSYM.PL
%   Author : Lawrence Byrd?
%   Updated: 21 February 1984
%   Purpose: create new atoms
%   Needs  : append/3.

% :- public
%         cgensym/2,
%         concat/3,
%         gensym/2.
% 
% :- mode
%         cgensym(+, ?),
%         concat(+, +, ?),
%         gensym(+, ?).


%   gensym(Prefix, V)
%   binds V to a new atom whose name begins with Prefix and ends with a
%   number.  E.g. gensym(a,X), gensym(a,Y), gensym(a,Z) might bind
%   X to a1, Y to a2, Z to a3.  It only succeeds once per call, to get
%   another binding for V you have to call it again.

gensym(Prefix, V) :-
        var(V),
        atomic(Prefix),
        (   retract(flag(gensym(Prefix), M))
        ;   M = 0
        ),
        N is M+1,
        asserta(flag(gensym(Prefix), N)),
        concat(Prefix, N, V),
        !.


%   cgensym(Prefix, V)
%   binds V to a new atom unless it is already bound.  Thus
%   cgensym(a, fred) would succeed, but cgensym(a, X) would bind
%   X to a new atom, maybe a4.  "c" standard for "conditional".

cgensym(Prefix, V) :-
        nonvar(V), !,
        atomic(V),
        atomic(Prefix).
cgensym(Prefix, V) :-
        gensym(Prefix, V).


%   concat(Name1, Name2, Name3)
%   is like append on atoms.  That is, it appends the name of Name1 and
%   the name of Name2, and binds Name3 to the atom named by the result.
%   Unlike append, it will only work one way round.  Examples:
%   concat(a, b, ab), concat(10, 23, 1023), concat(gs, 46, gs46).
%   concat(04, 05, 405)*??*

concat(N1, N2, N3) :-
        name(N1, Ls1),
        name(N2, Ls2),
        append(Ls1, Ls2, Ls3),
        name(N3, Ls3).

/*======================================================================== util/listut.pl */

%   File   : LISTUT.PL
%   Author : Bob Welham, Lawrence Byrd, and R.A.O'Keefe
%   Updated: 1 October 1984
%   Purpose: list processing utilities

%   This module requires
%       select/3        (from SetUtl.Pl) for perm/2
%       listtoset/2     (from SetUtl.Pl) for remove_dups/2
%   If you don't want those routines, it can be used on its own.
%   I am not sure how much of the original code was by Bob Welham
%   and how much by Lawrence Byrd.  The layout and comments are by
%   R.A.O'Keefe, as are nth*, same_length, shorter_list, and subseq*.
%   Keys_and_values has moved to PROJEC.PL.

% :- public
%         append/3,                       %   List x List -> List
%         correspond/4,                   %   Elem <- List x List -> Elem
%         delete/3,                       %   List x Elem -> List
%         last/2,                         %   List -> Elem
%         nextto/3,                       %   Elem, Elem <- List
%         nmember/3,                      %   Elem <- Set -> Integer
%         nth0/3,                         %   Integer x List -> Elem
%         nth0/4,                         %   Integer x List -> Elem x List
%         nth1/3,                         %   Integer x List -> Elem
%         nth1/4,                         %   Integer x List -> Elem x List
%         numlist/3,                      %   Integer x Integer -> List
%         perm/2,                         %   List -> List
%         perm2/4,                        %   Elem x Elem -> Elem x Elem
%         remove_dups/2,                  %   List -> Set
%         rev/2,                          %   List -> List
%         reverse/2,                      %   List -> List
%         same_length/2,                  %   List x List ->
%         select/4,                       %   Elem x List x Elem -> List
%         shorter_list/2,                 %   List x List ->
%         subseq/3,                       %   List -> List x List
%         subseq0/2,                      %   List -> List
%         subseq1/2,                      %   List -> List
%         sumlist/2.                      %   List -> Integer
% 
% :- mode
%         append(?, ?, ?),
%         correspond(?, +, +, ?),
%         delete(+, +, -),
%         last(?, ?),
%         nextto(?, ?, ?),
%         nmember(?, +, ?),
%         nth0(+, +, ?),
%         nth0(+, ?, ?, ?),
%         nth1(+, +, ?),
%         nth1(+, ?, ?, ?),
%         numlist(+, +, ?),
%         perm(?, ?),
%         perm2(?,?, ?,?),
%         remove_dups(+, ?),
%         rev(?, ?),
%         reverse(?, ?),
%         reverse(?, +, ?),
%         same_length(?, ?),
%         select(?, ?, ?, ?),
%         shorter_list(?, +),
%         subseq(?, ?, ?),
%         subseq0(+, ?),
%         subseq1(+, ?),
%         sumlist(+, ?),
%         sumlist(+, +, ?).


%   append(Prefix, Suffix, Combined)
%   is true when all three arguments are lists, and the members of Combined|yy
%   are the members of Prefix followed by the members of Suffix.  It may be
%   used to form Combined from a given Prefix and Suffix, or to take a given
%   Combined apart.  E.g. we could define member/2 (from SetUtl.Pl) as
%       member(X, L) :- append(_, [X|_], L).

append([], L, L).
append([H|T], L, [H|R]) :-
        append(T, L, R).



%   correspond(X, Xlist, Ylist, Y)
%   is true when Xlist and Ylist are lists, X is an element of Xlist, Y is
%   an element of Ylist, and X and Y are in similar places in their lists.

correspond(X, [X|_], [Y|_], Y) :- !.
correspond(X, [_|T], [_|U], Y) :-
        correspond(X, T, U, Y).



%   delete(List, Elem, Residue)
%   is true when List is a list, in which Elem may or may not occur, and
%   Residue is a copy of List with all elements equal to Elem deleted.

delete([], _, []) :- !.
delete([Kill|Tail], Kill, Rest) :- !,
        delete(Tail, Kill, Rest).
delete([Head|Tail], Kill, [Head|Rest]) :- !,
        delete(Tail, Kill, Rest).



%   last(Last, List)
%   is true when List is a List and Last is its last element.  This could
%   be defined as last(X,L) :- append(_, [X], L).

last(Last, [Last]) :- !.
last(Last, [_|List]) :-
        last(Last, List).



%   nextto(X, Y, List)
%   is true when X and Y appear side-by-side in List.  It could be written as
%       nextto(X, Y, List) :- append(_, [X,Y], List).
%   It may be used to enumerate successive pairs from the list.

nextto(X,Y, [X,Y|_]).
nextto(X,Y, [_|List]) :-
        nextto(X,Y, List).



%   nmember(Elem, List, Index)
%   is true when Elem is the Indexth member of List.  Could be written as
%       nmember(X, L, N) :- append(B, [X|_], L), length(B, M), N is M+1.
%   It may be used to select a particular element, or to find where some
%   given element occurs, or toy enumerate the elements and indices together.

nmember(Elem, [Elem|_], 1).
nmember(Elem, [_|List], N) :-
        nmember(Elem, List, M),
        N is M+1.



%   nth0(N, List, Elem) is true when Elem is the Nth member of List,
%   counting the first as element 0.  (That is, throw away the first
%   N elements and unify Elem with the next.)  It can only be used to
%   select a particular element given the list and index.  For that
%   task it is more efficient than nmember.
%   nth1(N, List, Elem) is the same as nth0, except that it counts from
%   1, that is nth(1, [H|_], H).

nth0(0, [Head|_Tail], Head) :- !.
nth0(N, [_Head|Tail], Elem) :-
        M is N-1,                       % should be succ(M, N)
        nth0(M, Tail, Elem).


nth1(1, [Head|_Tail], Head) :- !.
nth1(N, [_Head|Tail], Elem) :-
        M is N-1,                       % should be succ(M, N)
        nth1(M, Tail, Elem).



%   nth0(N, List, Elem, Rest) unifies Elem with the Nth element of List,
%   counting from 0, and Rest with the other elements.  It can be used
%   to select the Nth element of List (yielding Elem and Rest), or to 
%   insert Elem before the Nth (counting from 1) element of Rest, when
%   it yields List, e.g. nth0(2, List, c, [a,b,d,e]) unifies List with
%   [a,b,c,d,e].  nth1 is the same except that it counts from 1.  nth1
%   can be used to insert Elem after the Nth element of Rest.

nth0(0, [Head|Tail], Head, Tail) :- !.
nth0(N, [Head|Tail], Elem, [Head|Rest]) :-
        M is N-1,               % succ(M, N); should fail if N < 1
        nth0(M, Tail, Elem, Rest).


nth1(1, [Head|Tail], Head, Tail) :- !.
nth1(N, [Head|Tail], Elem, [Head|Rest]) :-
        M is N-1,               % succ(M, N); should fail if N < 1
        nth1(M, Tail, Elem, Rest).



%   numlist(Lower, Upper, List)
%   is true when List is [Lower, ..., Upper]
%   Note that Lower and Upper must be integers, not expressions, and
%   that if Upper < Lower numlist will FAIL rather than producing an
%   empty list.

numlist(Upper, Upper, [Upper]) :- !.
numlist(Lower, Upper, [Lower|Rest]) :-
        Lower < Upper,
        Next is Lower+1,
        numlist(Next, Upper, Rest).



%   perm(List, Perm)
%   is true when List and Perm are permutations of each other.  Of course,
%   if you just want to test that, the best way is to keysort/2 the two
%   lists and see if the results are the same.  Or you could use list_to_bag
%   (from BagUtl.Pl) to see if they convert to the same bag.  The point of
%   perm is to generate permutations.  The arguments may be either way round,
%   the only effect will be the order in which the permutations are tried.
%   Be careful: this is quite efficient, but the number of permutations of an
%   N-element list is N!, even for a 7-element list that is 5040.

perm([], []).
perm(List, [First|Perm]) :-
        select(First, List, Rest),      %  tries each List element in turn
        perm(Rest, Perm).



%   perm2(A,B, C,D)
%   is true when {A,B} = {C,D}.  It is very useful for writing pattern
%   matchers over commutative operators.  It is used more than perm is.

perm2(X,Y, X,Y).
perm2(X,Y, Y,X).



%   remove_dups(List, Pruned)
%   removes duplicated elements from List.  Beware: if the List has
%   non-ground elements, the result may surprise you.

remove_dups(List, Pruned) :-
        sort(List, Pruned).



%   reverse(List, Reversed)
%   is true when List and Reversed are lists with the same elements
%   but in opposite orders.  rev/2 is a synonym for reverse/2.

rev(List, Reversed) :-
        reverse(List, [], Reversed).

reverse(List, Reversed) :-
        reverse(List, [], Reversed).

reverse([], Reversed, Reversed).
reverse([Head|Tail], Sofar, Reversed) :-
        reverse(Tail, [Head|Sofar], Reversed).



%   same_length(List1, List2)
%   is true when List1 and List2 are both lists and have the same number
%   of elements.  No relation between the values of their elements is
%   implied.  It may be used to generate either list given the other,
%   or indeed to generate two lists of the same length, in which case
%   the arguments will be bound to lists of length 0, 1, 2, ... 

same_length([], []).
same_length([_|List1], [_|List2]) :-
        same_length(List1, List2).



%   select(X, Xlist, Y, Ylist)
%   is true when X is the Kth member of Xlist and Y the Kth element of Ylist
%   for some K, and apart from that Xlist and Ylist are the same.  You can
%   use it to replace X by Y or vice versa.

select(X, [X|Tail], Y, [Y|Tail]).
select(X, [Head|Xlist], Y, [Head|Ylist]) :-
        select(X, Xlist, Y, Ylist).



%   shorter_list(Short, Long)
%   is true when Short is a list is strictly shorter than Long.  Long
%   doesn't have to be a proper list provided it is long enough.  This
%   can be used to generate lists shorter than Long, lengths 0, 1, 2...
%   will be tried, but backtracking will terminate with a list that is
%   one element shorter than Long.  It cannot be used to generate lists
%   longer than Short, because it doesn't look at all the elements of the
%   longer list.

shorter_list([], [_|_]).
shorter_list([_|Short], [_|Long]) :-
        shorter_list(Short, Long).
        


%   subseq(Sequence, SubSequence, Complement)
%   is true when SubSequence and Complement are both subsequences of the
%   list Sequence (the order of corresponding elements being preserved)
%   and every element of Sequence which is not in SubSequence is in the
%   Complement and vice versa.  That is,
%   length(Sequence) = length(SubSequence)+length(Complement), e.g.
%   subseq([1,2,3,4], [1,3,4], [2]).  This was written to generate subsets
%   and their complements together, but can also be used to interleave two
%   lists in all possible ways.  Note that if S1 is a subset of S2, it will
%   be generated *before S2 as a SubSequence and *after it as a Complement.

subseq([], [], []).
subseq([Head|Tail], Sbsq, [Head|Cmpl]) :-
        subseq(Tail, Sbsq, Cmpl).
subseq([Head|Tail], [Head|Sbsq], Cmpl) :-
        subseq(Tail, Sbsq, Cmpl).



%   subseq0(Sequence, SubSequence)
%   is true when SubSequence is a subsequence of Sequence, but may
%   be Sequence itself.   Thus subseq0([a,b], [a,b]) is true as well
%   as subseq0([a,b], [a]).

%   subseq1(Sequence, SubSequence)
%   is true when SubSequence is a proper subsequence of Sequence,
%   that is it contains at least one element less.

%   ?- setof(X, subseq0([a,b,c],X), Xs).
%   Xs = [[],[a],[a,b],[a,b,c],[a,c],[b],[b,c],[c]] 
%   ?- bagof(X, subseq0([a,b,c,d],X), Xs).
%   Xs = [[a,b,c,d],[b,c,d],[c,d],[d],[],[c],[b,d],[b],[b,c],[a,c,d],
%         [a,d],[a],[a,c],[a,b,d],[a,b],[a,b,c]] 

subseq0(List, List).
subseq0(List, Rest) :-
        subseq1(List, Rest).


subseq1([_Head|Tail], Rest) :-
        subseq0(Tail, Rest).
subseq1([Head|Tail], [Head|Rest]) :-
        subseq1(Tail, Rest).



%   sumlist(Numbers, Total)
%   is true when Numbers is a list of integers, and Total is their sum.
%   Note that in Dec-10 compiled Prolog this will only work as stated;
%   interpreters will almost certainly accept integer expressions.  Also
%   note here as elsewhere in Prolog arithmetic that machine arithmetic
%   wraps round on the Dec-10: (2^17 - 1)+1 = -2^17 .

sumlist(Numbers, Total) :-
        sumlist(Numbers, 0, Total).

sumlist([], Total, Total).
sumlist([Head|Tail], Sofar, Total) :-
        Next is Sofar+Head,
        sumlist(Tail, Next, Total).

/*======================================================================== util/long.pl */

/* LONG.PL : Arbitrary precision rational arithmetic package.

Copyright (C) 1981 - R.A.O'Keefe.               Updated: 30 August 82

        Designed and written by Richard O'Keefe.
        Scenery by Lawrence Byrd.

        This package provides arithmetic for arbitrary precision rational
        numbers.  The normal domain of prolog 'integers' is extended to
        full rational 'numbers'.  This domain includes all Prolog integers.
        The predicate:

                        number(N)

        will recognise any number in this extended domain.
        Rational numbers are produced by using the predicates

                        eval(Command)

                        eval(Expression,Answer)

        Expression can involve any form of rational number, whether such
        numbers can be represented by Prolog integer or not.  Any form of
        number produced as output by "eval" is acceptable as input to it.

        For convenience the Answer produced by eval is normalised as follows:

        a) Integers X (where |X| <= 99999) are represented as Prolog integers;

        b) 1/0, 0/0, -1/0 are represented as infinity, undefined, neginfinity;

        c) All other numbers are represented as full rationals in reduced form
           i.e. numerator and denominator are relatively prime.

        In the current representation, one normalised number will unify with
        another (including an integer) iff the two numbers are equal.  But it
        is better to test for equality between arbitrary numbers by calling

                        eval(N1=:=N2)

        which also handles infinity & undefined, and is guaranteed to work.|
        Once created, representations of rational numbers can be passed round
        your program, used with eval, or printed.  The predicate

                        portray_number(Number)

        will pretty-print arbitrary numbers, and will fail for anything
        else.  In particular, it will not evaluate an expression.  (But
        eval(write(Expr)) combines evaluation and printing if you want.)
        If this is connected up to your general "portray" mechanism, you
        will never have to see the internal representation of rationals.
        It is ill-advised to write procedures which assume knowledge of
        this internal representation as it is subject to change (rarely),
        not to mention that such activities are against all the principles
        of abstraction and structured programming.

   NB   Note that eval/1 and eval/2 will only evaluate fully numeric
        expressions. If there is some garbage in the expression (such
        as an atom) then no evaluation at all occurs and the whole
        input expression is returned untouched. If you want to evaluate
        mixed symbolic and numeric expressions then use tidy/2 (from
        TIDY.PL) which is designed for this purpose.

FIXES

[3 April 81]

        Added the functions numer(_), denom(_) and sign(_) to the 
        evaluator (ie eva2).

[8 April 81]

        removed choice-points from comq, and corrected sign(.).
        replaced the log routine completely.

[14 April 81]

        changed all XXXr routines to XXXn (for Natural or zero)
        changed all XXXs routines to XXXm (for Modified (Natural routines))
        changed all XXXl routines to XXXz (for the ring Z of integers)
        replaced "digits" by "conn" as I've meant to for some time.
        removed experimental 'xwd' code which doesn't work compiled.  Eheu.
        changed estq,chkq,gest to estd,chkd,estg (estimate division digit,
        check digit, estimate Gcd) to avoid confusion; they don't use rationals.
        rewrote norm_number and renamed it to standardise.
        laid the trig routines out in MY style not Lawrence's.
        Increased the radix from 10,000 to 100,000 after fixing addn to use
        unsigned numbers.

[21 April 81]

        Continued tidying things up.
        made 0^(1/N) = 0; this was an oversight.
        added new xwd(,) code in eva2, and beautified portray_number.

[8 July 81]

        fixed mode error bug in eva2(abs(_),_).  Foolish oversight.

[9 Sept 81]

        fixed negative number bugs in arccos and arcsin.  How long have
        these been around without anyone (except Bernard) noticing?
        Also shunted some cuts around in the same general area.

[13 Sept 81]

        corrected typo {da=>Da} in gcdq/4.

[2 Dec 81]

        corrected a benign bug in number/5 (100000 had been written
        where R should have been), and some minor cosmetic changes.
        Unified error reporting into long_error[_message].  Added a
        few mode declarations for trig functions.

[9 Dec 81]

        when writing eval up for EuroSam, discovered that logs aren't
        handled properly.  Rewrote absq and logq to return 'undefined'
        in more cases, instead of failing.

[27 July 82]

        changed prnq/3 to portray_number/3 and laid it out properly.
        changed prin/1 to putn/1 (put Natural) to avoid conflict elsewhere.     
        Made this stuff call put/1 where it made sense, and used ASCII
        codes instead of strings.  Don't know if it matters, really.
        Also rewrote arctaneval completely, so that it should succeed in a
        few more cases.  Really, the trig stuff is PITIFUL.  Please, will
        someone do a proper job of it (preferrably someone PAID to do it).

[30 August 82]

        fixed bug in gcdq/4 so that gcd(1/2,1/4) = 1/4, not 1/2!

[12 July 1983]

        arctaneval used to call addn/4, and there isn't any such
        predicate.  Made it call addn/5.
*/

% :-  public
%         number/1,               %  number(N) <=> N is a number
%         eval/1,                 %  eval(E) => E/rational-eval is true
%         eval/2,                 %  eval(E,A) => (A is E)/rational-eval
%         portray_number/1,       %  writes rational assumed radix 100000.
% %                               %  Lawrence's Low Level TIDY interface
%         add/3,                  %  add(A,B,C) => (C is A+B)/rational-eval
%         multiply/3,             %  similar for *.  NB A,B must be numbers
%         power/3.                %  similar for ^.  NOT general terms.


/* OPERATORS */

:- op(300, xfx, div).           %  integer quotient A div B = fix(A/B).


/* MODES and types */

%   The comments at the right give the argument types for each predicate.
%   The predicates can of course be called with any arguments, but these
%   are the only types they are supposed to work on or deliver.  
%   ? = any Prolog term, possibly including variables.
%   E = an arithmetic Expression, a term.
%   A = a Prolog atom (but not an integer).
%   I = a Prolog integer.  Generally positive, but not always.
%   T = a Truth-value, 'true' or 'false'.
%   S = a Sign, '+' or '-'.  {Sometimes can be 0 or *.}
%   R = a Relational operator, {<, =, >; sometimes =<, >=, =/=}
%   N = a long positive (Natural) number.
%   Q = a rational number.

% :- mode
% 
% %% Top Level %%
% 
%     number(+),                                  % Q
%     eval(+),                                    % E
%     eval(+, -),                                 % E Q
%         eva2(+, -),                             % E Q
%             relational_op(+, -, -),             % R R T
%             combine_ops(+, +, +, -),            % R R T T
%     portray_number(+),                          % Q
%         portray_number(+, +, +),                % S N N
%             putn(+),                            % N
% 
% %% Conversions %%
% 
%     number(+, +, ?, ?, ?),                      % Q I S N N
%         binrad(+, +, -),                        % I I N
%     standardise(+, ?),                          % Q Q
% 
% %% Low Level %%
% 
%     add(+, +, ?),                               % Q Q Q
%     multiply(+, +, ?),                          % Q Q Q
%     power(+, +, ?),                             % Q Q Q
% 
% %% Rational Arithmetic %%
% 
%     mod2(+, ?),                                 % Q I
%     intq(+,    +, -),                           % Q   I Q
%     gcdq(+, +, +, -),                           % Q Q I Q
% /*  invq(+,    +, -),                           % Q   I Q  */
%     mulq(+, +, +, -),                           % Q Q I Q
%     divq(+, +, +, -),                           % Q Q I Q
%     divo(+, +, +, -, -),                        % Q Q I Q Q
%     powq(+, +, +, -),                           % Q Q I Q
%     negq(+,    +, -),                           % Q   I Q
%     addq(+, +, +, -),                           % Q Q I Q
%     subq(+, +, +, -),                           % Q Q I Q
%     comq(+, +, +, ?),                           % Q Q I R
%     nthq(+, +, +, -),                           % I Q I Q
%         nthn(+, +, +, -),                       % I N I N
%             newton(+, +, +, +, -),              % I N N I N
%                 newton(+, +, +, +, +, -),       % R I N N I N
% 
%   %% Long Arithmetic %%
% 
%     addz(+,+, +,+, +, -,-),                     % S N S N I S N
%         addn(+, +, +, +, -),                    % N N I I N
%             add1(+, +, -),                      % N I N
%     comz(+,+, +,+, ?),                          % S N S N R
%         comn(+, +, +, ?),                       % N N R R
%             com1(+, +, +, -),                   % I I R R
%     subz(+,+, +,+, +, -,-),                     % S N S N I S N
%         subn(+, +, +, -,-),                     % N N I S N
%             subn(+, +, +, +, -,-),              % R N N I S N
%                 prune(+, -),                    % N N
%                 subp(+, +, +, +, -),            % N N I I N
%                     sub1(+, +, -),              % N I N
%     sign(+, +, -),                              % S S S
% /*  mulz(+,+, +,+, +, -,-),                     % S N S N I S N  */
%         muln(+, +, +, -),                       % N N I N
%             muln(+, +, +, +, -),                % N N N I N
%                 mul1(+, +, +, -),               % N I I N
%                     mul1(+, +, +, +, -),        % N I I I N
%     powz(+,+, +, +, -,-),                       % S N I I S N
%         pown(+, +, +, +, -),                    % I N N I N
%     divz(+,+, +,+, +, -,-, -,-),                % S N S N I S N S N
%         divn(+, +, +, -, -),                    % N N I N N
%             conn(?, ?, ?),                      % I N N
%         %   both +, +, - and -, -, + are used.
%             div1(+, +, +, -, -),                % N I I N N
%             divm(+, +, +, -, -),                % N N I N N
%                 div2(+, +, +, -, -),            % N N I N N
%                     estd(+, +, +, -),           % N N I I
%                     chkd(+, +, +, +, +, -, -),  % N N I I I I N
% /*  gcdz(+,+, +,+, +, -, -,-, -,-),             % S N S N I N S N S N  */
%         gcdn(+, +, +, -, -, -),                 % N N I N N N
%             gcdn(+, +, +, -),                   % N N I N
%                 gcdn(+, +, +, +, -),            % R N N I N
%                     estg(+, +, +, -),           % N N I I
% 
% %% Logarithms %%
% 
%     logq(+, +, +, -),                           %  Q Q I Q
%         logq(+,+, +,+,+,-),                     %  R R Q Q I Q
%         absq(+, -, -),                          %  Q S Q
%             logq(+, -,-),                       %  S S N
%             oneq(+, -, -),                      %  Q R Q
%             ratlog(+, +, +, -),                 %  Q Q I Q
%                 ratlog(+,+, +,+,+, -),          %  S S Q Q I Q
%                     lograt(+,+,+, -,-),         %  Q Q I N N
%                         loop(+, +, +, -),       %  N N I N
%                             loop(+,+,+,+,-),    %  N N N I N
%                         logn(+,+,+,+,-),        %  Q I Q Q I I 
% 
% %% Trigonometry %%
% 
%     sineval(+, -),                              %  Q Q
%     coseval(+, -),                              %  Q Q
%     taneval(+, -),                              %  Q Q
%     arcsineval(+, -),                           %  Q Q
%     arccoseval(+, -),                           %  Q Q
%     arctaneval(+, -),                           %  Q Q
%         arctaneval(+, +, -, -),                 %  N N N N
%         sineval1(?, ?),                         %  Q Q
% 
% %% Error handing %%
% 
%     long_error(+, ?),                           %  A ?
%         long_error_message(+, -).               %  A A

/* Implementation

        The internal representation for rationals is of the form:

                number(Sign, Numerator, Denominator)

                    where
                        Sign is in {+,-}
                        Numerator is a list of (Prolog) integers
                        Denominator is a list of (Prolog) integers

        The lists of Prolog integers represent arbitrary precision unsigned
        long integers

                eg [n0,n1,....,nz]

                    is n0+R*(n1+R*(....R*nz)...)

                    where R is the Radix.

        The Radix used in the current version is 100000. Most of the code
        in this module is completely independent of the radix - it all
        uses the value passed in by the top level procedures. However the
        printing routine currently assumes that the radix is a power of
        10 as this makes things easier. In general the radix must be such
        that both:

                        Radix^2 - 1
                   and  Radix*2 + 1

                                are representable as Prolog integers (which
        are 18 bit quantities on the DEC10). This is a little restrictive,
        however, and this implementation only assumes that Radix^2 - 1 is
        "obtainable" as an intermediate during Prolog arithmetic. On the
        DEC10 intermediate results can be 36 bit quantities and so 100000
        becomes a suitable radix.

        The code actually unpacks the number terms into their separate
        bits for all the low level operations. At this stage the following
        additional number forms are appropriately converted

                <integer>   -   (Prolog integers)
                infinity    -   represented as +1/0
                neginfinity -   represented as -1/0
                undefined   -   represented as  0/0

        The treatment of these strange things is not supposed to be
        mathematically beautiful, but sensible things happen using
        this representation. They are strictly an extension to the
        rationals and could be removed (with eval failing should 0
        denominator numbers ever get produced) if desired.

        Results from eval are normalised before being returned.
        This operation reverses the above transformation except that
        only integers within the range -99999 to +99999 are turned
        back into Prolog integers.
*/


%% TOP LEVEL PREDICATES %%



                        % Number recognition predicate

ok_number(N)      :- integer(N), !.
ok_number(number(_S,_N,_D))   :- !.
ok_number(infinity)        :- !.
ok_number(neginfinity)     :- !.
ok_number(undefined)       :- !.



                        % Simple eval interpreter with various features.

eval(Var)      :- var(Var), !, long_error(eval, Var).
eval(B is Y)   :- !, eval(Y, B).
eval(write(Y)) :- !, eval(Y, B), print(B).
eval(even(X))  :- !, eva2(X, A), !, mod2(A, 0).
eval(odd( X))  :- !, eva2(X, A), !, mod2(A, 1).
eval(compare(R,A,B)) :-
                  !, eva2(_X, A), eva2(_Y, B), comq(A, B, 100000, S), !, R=S.
eval(Term)     :- Term =.. [F,X,Y], relational_op(F, R, Flag),
                  !, eva2(X, A), eva2(Y, B), comq(A, B, 100000, S), !,
                  combine_ops(R, S, Flag, true).

        mod2(number(_,_,[]),    _M) :- !, fail.
        mod2(number(_,[],_),    0).
        mod2(number(_,[L|_],_), M) :- M is L mod 2.


                        % General evaluation of rational expressions

eval(Exp, Ans) :-       %    Hope for the best
        eva2(Exp, N),
        standardise(N, A), !,
        Ans = A.
eval(Exp, Exp).         %    Cannot evaluate so leave alone
%       ttynl, display('[Couldn''t evaluate: '),
%       print(Exp), ttyput("]"), ttynl, ttynl.



eva2(Var, _C)     :- var(Var), !, long_error(eva2, Var).
eva2(X+Y, C)     :- !, eva2(X, A), eva2(Y, B), addq(A, B, 100000, C).
eva2(X-Y, C)     :- !, eva2(X, A), eva2(Y, B), subq(A, B, 100000, C).
eva2( -Y, C)     :- !,             eva2(Y, B), negq(   B, 100000, C).
eva2(X*Y, C)     :- !, eva2(X, A), eva2(Y, B), mulq(A, B, 100000, C).
eva2(X/Y, C)     :- !, eva2(X, A), eva2(Y, B), divq(A, B, 100000, C).
eva2(X div Y, C) :- !, eva2(X, A), eva2(Y, B), divo(A, B, 100000, C, _).
eva2(X mod Y, C) :- !, eva2(X, A), eva2(Y, B), divo(A, B, 100000, _, C).
eva2(X++Y, C)    :- !, eva2((X+Y) mod 360, C).
eva2(X--Y, C)    :- !, eva2((X-Y) mod 360, C).
eva2(X^Y, C)     :- !, eva2(X, A), eva2(Y, B), powq(A, B, 100000, C).
eva2(sqrt(Y), C) :- !,             eva2(Y, B), nthq(2, B, 100000, C).
eva2(pi,number((+),[355],[113])) :- !.
eva2(log(X,Y),C) :- !, eva2(X, A), eva2(Y, B), logq(A, B, 100000, C).
eva2(gcd(X,Y),C) :- !, eva2(X, A), eva2(Y, B), gcdq(A, B, 100000, C).
eva2(fix(X), C)  :- !, eva2(X, A),             intq(A,    100000, C).
eva2(sin(X), C)  :- !, eva2(X, A), sineval(A, C).
eva2(cos(X), C)  :- !, eva2(X, A), coseval(A, C).
eva2(tan(X), C)  :- !, eva2(X, A), taneval(A, C).
eva2(arcsin(X),C):- !, eva2(X, A), arcsineval(A, C).
eva2(arccos(X),C):- !, eva2(X, A), arccoseval(A, C).
eva2(arctan(X),C):- !, eva2(X, A), arctaneval(A, C).
eva2(abs(X),   number((+),N, D )) :- !, eva2(X, A), A = number(_,N,D).
eva2(numer(X), number((+),N,[1])) :- !, eva2(X, A), A = number(_,N,_).
eva2(denom(X), number((+),D,[1])) :- !, eva2(X, A), A = number(_,_,D).
eva2(sign(X),  number(S,B,[1])) :- !, eva2(X, A), A = number(S,N,_),
                                      (N=[], B=[]; B=[1]), !.
 eva2(xwd(X,Y),C) :- !, U is (Y mod 262143)>>9, V is (Y mod 262143)/\511,
                    eva2((X*512+U)*512+V, C).
eva2(X,       C) :- number(X, 100000, S, N, D), !, C = number(S, N, D).
eva2(Term,    C) :- Term =.. [F,X,Y], relational_op(F,R, Flag),
                    !, eva2(X, A), eva2(Y, B), comq(A, B, 100000, S), !,
                    combine_ops(R, S, Flag, C).


        relational_op(  =, =, true).
        relational_op( \=, =, false).
        relational_op(  <, <, true).
        relational_op( >=, <, false).
        relational_op(  >, >, true).
        relational_op( =<, >, false).
        relational_op(=:=, =, true).
        relational_op(=\=, =, false).

        combine_ops(Sign, Sign, Flag,  Ans) :- !, Ans = Flag.
        combine_ops(_Sign, _Diff, true,false) :- !.
        combine_ops(_Sign, _Diff, false,true) :- !.



                        % Pretty-Print a number.
                        %  This now always forces parentheses. When a
                        %  proper general portray handler is written
                        %  this could be made cleverer (as it once was).
                        %  The magic numbers are 40 = "(", 41 = ")",
                        %  45 = "-", 47 = "/", 48 = "0" {ASCII codes}.

portray_number(A) :-
        number(A, 100000, S, N, D),     !,
        portray_number(S, N, D).

        portray_number(_,[],  []) :- !,         %  0/0 = undefined
                write(undefined).
        portray_number((+), _N,  []) :- !,         % +N/0 = +infinity
                write(infinity).
        portray_number((-), _N,  []) :- !,         % -N/0 = -infinity
                write(neginfinity).
        portray_number((+), N, [1]) :- !,         % +N/1 = a +ve integer
                putn(N).
        portray_number((-), N, [1]) :- !,         % -N/1 = a -ve integer
                put(45), putn(N).
        portray_number((+), N,  D ) :- !,         % +N/D = a +ve rational
                put(40), putn(N), put(47), putn(D), put(41).
        portray_number((-), N,  D ) :- !,         % -N/D = a -ve rational
                put(40), put(45), putn(N), put(47), putn(D), put(41).

                putn([]   ) :- !, put(48).
                putn([D]  ) :- !, write(D).
                putn([D|T]) :- 
                        putn(T),
                        D4 is (D//10000)       +48, put(D4),     % D4*10^4 +
                        D3 is (D//1000) mod 10 +48, put(D3),     % D3*10^3 +
                        D2 is (D//100) mod 10  +48, put(D2),     % D2*10^2 +
                        D1 is (D//10) mod 10   +48, put(D1),     % D1*10^1 +
                        D0 is (D) mod 10      +48, put(D0).     % D0*10^0 = D.

%% INTERFACE CONVERSIONS %%

                        % Conversion of a number, of any form, to its
                        %  essential bits.

number(infinity,        _R, (+),[1], []) :- !.
number(neginfinity,     _R, (-),[1], []) :- !.
number(undefined,       _R, (+), [], []) :- !.
number(number(S, N, D), _R, S,  N,  D) :- !.
number(N, R, (+), L, [1]) :- integer(N), N >= 0, !,          binrad(N, R, L).
number(N, R, (-), L, [1]) :- integer(N), N  < 0, !, M is -N, binrad(M, R, L).

        binrad(0, _R, [])    :- !.
        binrad(N, R, [M|T]) :- K is N//R, M is N mod R, !, binrad(K, R, T).



                        % Normalise a number

standardise(number(S,[N],[1]), Ans) :- !,
        (   S = ('+'), Ans = N
        ;   S = ('-'), Ans is -N
        ),  !.
standardise(number(_, [],[1]),  0 ) :- !.
standardise(number(S,  N, []), Ans) :- !,
        (   N =  [], Ans = undefined
        ;   S = ('+'), Ans = infinity
        ;   S = ('-'), Ans = neginfinity
        ),  !.
standardise(Number,         Number).




%% LOW LEVEL INTERFACE %%



                        % These routines provide a low level interface
                        %  for procedures which want to operate directly
                        %  on pairs of numbers.
                        % Only currently used by TIDY (27/2/81),
                        %  so only those necessary are provided.

add(A, B, C) :-         % eval(C is A+B).
        addq(A, B, 100000, X),
        standardise(X, C).

multiply(A, B, C) :-    % eval(C is A*B).
        mulq(A, B, 100000, X),
        standardise(X, C).

power(A, N, C) :-       % eval(C is A^B).
        powq(A, N, 100000, X),
        standardise(X, C).

%% BASIC ARITHMETIC OVER RATIONALS %%


                        % Integer part of a rational

intq(A, R, number(S, Q, [1])) :-
        number(A, R, S, N, D),
        divn(N, D, R, Q, _).



                        %   The greatest common divisor of two numbers is
                        %   defined for all pairs of non-zero rationals.
                        %   gcd(X,Y) = Z iff Z > 0 and there are integers
                        %   M,N relatively prime for which X=MZ & Y=NZ.

gcdq(A, B, R, number((+),Nd,Dd)) :-
        number(A, R, _, Na, Da),
        number(B, R, _, Nb, Db),
        gcdn(Da, Db, R, _, Ga, Gb),
        muln(Gb, Na, R, Ma),
        muln(Ga, Nb, R, Mb),
        gcdn(Ma, Mb, R, Nd),
        muln(Gb, Da, R, Dd).

/*      The above seems to be right, but I'm not sure.  This IS right.
gcdq(A, B, R, number(+,Nd,Dd)) :-
        number(A, R, _, Na, Da),        %  |A| = Na/Da
        number(B, R, _, Nb, Db),        %  |B| = Nb/Db
        muln(Na, Db, R, N1),            %  N1 = Na.Db
        muln(Nb, Da, R, N2),            %  N2 = Nb.Da
        gcdn(N1, N2, R, Nc),            %  Nc = gcd(Na.Db, Nb.Da)
        muln(Da, Db, R, Dc),            %  Dc = Da.Db
        gcdn(Nc, Dc, R, _, Nd, Dd).     %  Nd/Dd = Nc/Dc in standard form
*/

/*                      % Take the inverse of a rational

invq(A, R, number(S, D, N)) :-
        number(A, R, S, N, D).

*/

                        % Multiplication of two rationals

mulq(A, B, R, number(Sc, Nc, Dc)) :-
        number(A, R, Sa, Na, Da),
        number(B, R, Sb, Nb, Db),
        sign(Sa, Sb, Sc),
        gcdn(Na, Db, R, _, Na1, Db1),
        gcdn(Da, Nb, R, _, Da1, Nb1),
        muln(Na1, Nb1, R, Nc),
        muln(Da1, Db1, R, Dc).



                        % Division of two rationals

divq(A, B, R, number(Sc, Nc, Dc)) :-
        number(A, R, Sa, Na, Da),
        number(B, R, Sb, Nb, Db),
        sign(Sa, Sb, Sc),
        gcdn(Na, Nb, R, _, Na1, Nb1),
        gcdn(Da, Db, R, _, Da1, Db1),
        muln(Na1, Db1, R, Nc),
        muln(Da1, Nb1, R, Dc).



                        % Quotient and remainder of two rationals

divo(A, B, R, number(Sq,Nq,[1]), number(Sx,Nx,Dx)) :-
        number(A, R, Sa, Na, Da),       %  A = Sa.Na/Da
        number(B, R, Sb, Nb, Db),       %  B = Sb.Nb/Db
        muln(Na, Db, R, N1),            %  A/B = (Sa.Na.Db)/(Sb.Nb.Da)
        muln(Nb, Da, R, D1),            %      = (Sa.N1)/(Sb.D1)
        divz(Sa,N1, Sb,D1, R, Sq,Nq, Sx,Ny),
        muln(Da, Db, R, Dy),            %  A/B = Q + (Sx.Ny)/(Sb.Nb.Da)
        gcdn(Ny, Dy, R, _, Nx, Dx).     %  A = Q.B + (Sx.Ny)/Dy



                        % Exponentiation of rationals
                        %  This is always defined for (positive or
                        %   negative) integer powers, however there
                        %   is a current implementation restiction that
                        %   the power be between -99999 and +99999 (ie
                        %   within the current Radix).
                        %  This may be defined for some rational powers
                        %   but since there are results from this which are
                        %   not representable as rationals it will fail
                        %   in such cases.  The code for rational powers
                        %   relies on numerator and denominator being
                        %   relatively prime, which is standard.

powq(A, B, R, C) :-
        number(B, R, S, N, [1]), !,
        powq(S, N, A, R, C).
powq(A, B, R, C) :-
        number(B, R, S, N, [D]),
        nthq(D, A, R, X), !,
        powq(S, N, X, R, C).

        powq(_S, [], _A, _R, number((+),[1],[1])) :- !.
        powq((+),[N], A, R, number(Sc, Nc, Dc)) :- !,
                number(A, R, Sa, Na, Da),
                powz(Sa, Na, N, R, Sc, Nc),
                pown(N,  Da,[1],R,     Dc).
        powq((-),[N], A, R, number(Sc, Nc, Dc)) :- !,
                number(A, R, Sa, Na, Da),
                powz(Sa, Da, N, R, Sc, Nc),
                pown(N,  Na,[1],R,     Dc).



                        % Negate a rational

negq(A, R, number(Sc, Nc, Dc)) :-
        number(A, R, Sa, Nc, Dc),
        (   Nc = [], Dc = [], Sc = (+)            %  -undefined=undefined
        ;   sign(Sa, (-), Sc)                     %  -0 = -(0) now.
        ),  !.



                        % Addition of two rationals

addq(A, B, R, number(Sc, Nc, Dc)) :-
        number(A, R, Sa, Na, Da),
        number(B, R, Sb, Nb, Db),
        muln(Na, Db, R, Xa),
        muln(Nb, Da, R, Xb),
        addz(Sa,Xa, Sb,Xb, R, Sc,Xc),
        gcdn(Xc, Da, R, _, Nx, Ya),
        gcdn(Nx, Db, R, _, Nc, Yb),
        muln(Ya, Yb, R, Dc), /*Q'*/ Nc/Dc\==[]/[], !.
addq(A, B, R, number(Sc, Nc, [])) :- /*Q'*/
        number(A, R, Sa, Na, _Da),
        number(B, R, Sb, Nb, _Db),
        (   Na\==[], Nb\==[], Sa==Sb, Sc=Sa, Nc=[1]
        ;   Sc= (+), Nc=[]
        ),  !.



                        % Subtraction of two rationals

subq(A, B, R, number(Sc, Nc, Dc)) :-
        number(A, R, Sa, Na, Da),
        number(B, R, Sb, Nb, Db),
        muln(Na, Db, R, Xa),
        muln(Nb, Da, R, Xb),
        subz(Sa,Xa, Sb,Xb, R, Sc,Xc),
        gcdn(Xc, Da, R, _, Nx, Ya),
        gcdn(Nx, Db, R, _, Nc, Yb),
        muln(Ya, Yb, R, Dc), /*Q'*/ Nc/Dc\==[]/[], !.
subq(A, B, R, number(Sc, Nc, [])) :- /*Q'*/
        number(A, R, Sa, Na, _Da),
        number(B, R, Sb, Nb, _Db),
        (   Na\==[], Nb\==[], Sa\==Sb, Sc=Sa, Nc=[1]
        ;   Sc= (+), Nc=[]
        ),  !.



                        % Comparison of two rationals

comq(A, B, R, S) :-
        number(A, R, Sa, Na, Da), /*Q'*/ Na/Da \== []/[],
        number(B, R, Sb, Nb, Db), /*Q'*/ Nb/Db \== []/[],
        muln(Na, Db, R, Xa),
        muln(Nb, Da, R, Xb),    !,
        comz(Sa, Xa, Sb, Xb, S).



                        % Try to find Nth root
                        %  This will fail in cases where the solution is
                        %  not representable as a rational

nthq(N, A, R, number((+), Nr, Dr)) :-
        number(A, R, (+), Na, Da), !,
        nthn(N, Na, R, Nr),
        nthn(N, Da, R, Dr).
nthq(N, A, R, number((-), Nr, Dr)) :-
        number(A, R, (-), Na, Da), !,
        1 is N mod 2,
        nthn(N, Na, R, Nr),
        nthn(N, Da, R, Dr).

        nthn(_N,  [], _R,  []) :- !.
        nthn(_N, [1], _R, [1]) :- !.
        nthn(N,   A, R,   S) :-
                newton(N, A, A, R, S), !,
                pown(N, S, [1], R, B), !, B=A.  % check that S^N=A !

                newton(N, A, E, R, S) :-
                        M is N-1,
                        pown(M, E, [1], R, E1), % E1=E^(N-1)
                        mul1(E1,N, R, D2),      % D2=N.E^(N-1)
                        muln(E, E1,R, E2),      % E2=E^N
                        mul1(E2,M, R, N1),      % N1=(N-1).E^N
                        addn(N1,A, 0, R, N2),   % N2=(N-1).E^N+A
                        divn(N2,D2,R, F, _),    % F = {(N-1).E^N+A}div{N.E^(N-1)}
                        comn(F, E, =,  Z), !,   % F Z E
                        newton(Z, N, A, F, R, S).

                        newton(<, N, A, F, R, S) :- !, newton(N, A, F, R, S).
                        newton(=, _N, _A, F, _R, F) :- !.


                        % Take the logarithm of a rational to a rational base.
                        % This can be expected to fail for almost every pair
                        % of rational numbers.  To keep the search space within


%   logq(B, X, R, L) is true iff
%       B, X, and L are rationals such that B^L = X.
%   This does its best for strange mixtures, like log(-3,-27) = 3.

logq(B, X, R, L) :-
        absq(B, S, C),  %   B S 0 & |B| = C
        absq(X, T, Y),  %   X T 0 & |X| = Y
        logq(S, T, C, Y, R, L).

        %   absq(A, R, S, B) is true iff
        %       A and B are rationals, |A| = B, and
        %       S = {+,-,0,*} as A {<,=,>} 0 or is undefined.

        absq(number(_Sa,[],[]),  *, number((+),[],[]))  :- !.
        absq(number(_Sa,[],_Da),  0, number((+),[],[1])) :- !.
        absq(number(Sa,Na,Da), Sa, number((+),Na,Da)).

        %   logq(S, T, ...) is just a case analysis of logq.

        logq((+), (+), B, X, R, L) :- !,
                ratlog(B, X, R, L).
        logq((-), (+), B, X, R, L) :- !,
                ratlog(B, X, R, L),
                mod2(L, 0).             %  L must be "even"
        logq((-), (-), B, X, R, L) :- !,
                ratlog(B, X, R, L), !,
                mod2(L, 1).             %  L must be "odd"
        logq((+), (-), _, _, _, number((+),[],[])) :- !.
        logq(*, _, _, _, _, number((+),[],[])) :- !.
        logq(_, *, _, _, _, number((+),[],[])) :- !.
        logq(0, _, _, _, _, number((+),[],[])) :- !.
        logq(_, 0, B, _X, _R, number(Z, N,[])) :- !,
                oneq(B, S, _),
                logq(S, Z,N).

                logq((+), (-),[1]) :- !.    %  log(B,0) = -inf for 1<B<inf
                logq((-), (+),[1]) :- !.    %  log(B,0) = +inf for 0<B<1
                logq(_, (+),[]).          %  log(B,0) = ???? otherwise

                %  oneq(A, S, B) is true when A and B are positive
                %  defined rationals, |log A| = log B, and S = sign(log A).

                oneq(number(_, _,[]), *, number((+),[1],[])) :- !.
                oneq(number(_,Na,Na), 0, number((+),Na,Na)) :- !.
                oneq(number(_,Na,Da), (+), number((+),Na,Da)) :-
                        comn(Na, Da, =, >), !.
                oneq(number(_,Na,Da), (-), number((+),Da,Na)).


                %   ratlog(B, X, R, L) is true iff
                %       B, X > 0 and B^L = X.

                ratlog(B, X, R, L) :-
                        oneq(B, S, C),  %  B S 1 & |log B| = log C
                        oneq(X, T, Y),!,%  X T 1 & |log X| = log Y
                        ratlog(S, T, C, Y, R, L).

                        %  ratlog(S,T, ...) is just a case analysis

                        ratlog((+), (+), B, X, R, number((+),N,D)) :- !,
                                lograt(B, X, R, N, D).
                        ratlog((+), (-), B, X, R, number((-),N,D)) :- !,
                                lograt(B, X, R, N, D).
                        ratlog((-), (+), B, X, R, number((-),N,D)) :- !,
                                lograt(B, X, R, N, D).
                        ratlog((-), (-), B, X, R, number((+),N,D)) :- !,
                                lograt(B, X, R, N, D).
                        ratlog(0, _, _, _, _, number((+),[], [])) :- !.
                        ratlog(_, 0, _, _, _, number((+),[],[1])) :- !.
                        ratlog((+), *, _, _, _, number((+),[1],[])) :- !.
                        ratlog((-), *, _, _, _, number((-),[1],[])) :- !.
                        ratlog(_, *, _, _, _, number((+),[], [])) :- !.
                        ratlog(*, _, _, _, _, number((+),[], [])) :- !.

%   lograt(B, X, R, N, D) is true iff
%       B > 1, X > 1 are rationals, B^N = X^D, and gcd(N,D) = 1.

lograt(number((+),Nb,Db), number((+),Nx,Dx), R, [N], [D] ) :-
        gcdn(Db, Nx, R, U), !, U = [1],         %  Db co-prime Nx
        gcdn(Nb, Dx, R, V), !, V = [1],         %  Nb co-prime Dx
        loop(Nb, Nx, R, G), !,
        logn(G, 1, G, Nb, R, D), !,             %  D=log(G,Nb)
        logn(G, 1, G, Nx, R, N), !,             %  N=log(G,Nx)
        pown(N, Db, [1], R, K1),
        pown(D, Dx, [1], R, K2), !,
        K1 = K2.                                %  Db^N = Dx^D

        loop(A, B, R, G) :-
                comn(A, B, =, S), !,
                loop(S, A, B, R, G).

                loop(=, A, _B, _R, A) :- !.
                loop(<, A, B, R, G) :-
                        divn(B, A, R, Q, X), X = [], !,
                        loop(A, Q, R, G).
                loop(>, A, B, R, G) :-
                        divn(A, B, R, Q, X), X = [], !,
                        loop(Q, B, R, G).

        %   logn(B, N, P, X, R, L) is true iff
        %       X >= B > 1, P = B^N, and X = B^L.

        logn(_B, N, X, X, _R, N) :- !.
        logn(B, N, P, X, R, L) :-
                comn(P, X, =, <),
                muln(B, P, R, Q),
                M is N+1, !,
                logn(B, M, Q, X, R, L).

%% BASIC ARITHMETIC OVER LONG INTEGERS %%


                        % Addition of two long integers

addz((+),A, (+),B, R, (+),C) :- !, addn(A, B, 0, R, C).
addz((+),A, (-),B, R, S,C) :- !, subn(A, B, R, S, C).
addz((-),A, (+),B, R, S,C) :- !, subn(B, A, R, S, C).
addz((-),A, (-),B, R, (-),C) :- !, addn(B, A, 0, R, C).

        addn([D1|T1], [D2|T2], Cin, R, [D3|T3]) :-
                Sum is D1+D2+Cin,
                (   (Sum mod 262143) >= R, Cout = 1, D3 is (Sum mod 262143)-R
                ;   (Sum mod 262143) <  R, Cout = 0, D3 =  Sum
                ),  !, 
                addn(T1, T2, Cout, R, T3). 
        addn([], L, 0, _R, L) :- !.
        addn([], L, 1, R, M) :- !, add1(L, R, M).
        addn(L, [], 0, _R, L) :- !.
        addn(L, [], 1, R, M) :- !, add1(L, R, M).

                add1([M|T], R, [N|T]) :- N is M+1, N < R, !.
                add1([M|T], R, [0|S]) :- R is M+1, !, add1(T, R, S).
                add1([],    _R, [1]).



                        % Comparison of two long integers

comz(_,[],_,[],S) :- !, S = '='.        % -0 = 0 now, alas.
comz((+),A, (+),B, S) :- !, comn(A, B, =, S).
comz((+),_A, (-),_B, >).
comz((-),_A, (+),_B, <).
comz((-),A, (-),B, S) :- !, comn(B, A, =, S).

        comn([D1|T1], [D2|T2], D, S) :-
                com1(D1, D2, D, N), !,
                comn(T1, T2, N, S).
        comn([],      [],      D, S) :- !, S = D.
        comn([],      _L,       _D, <) :- !.
        comn(_L,       [],      _D, >) :- !.

                com1(X, X, D, D) :- !.
                com1(X, Y, _D, <) :- X < Y, !.
                com1(X, Y, _D, >) :- X > Y, !.



                        % Subtraction of two long integers

subz((+),A, (+),B, R, S,C) :- !, subn(A, B, R, S, C).
subz((+),A, (-),B, R, (+),C) :- !, addn(A, B, 0, R, C).
subz((-),A, (+),B, R, (-),C) :- !, addn(B, A, 0, R, C).
subz((-),A, (-),B, R, S,C) :- !, subn(B, A, R, S, C).

        subn(A, B, R, S, C) :-
                comn(A, B, =, O), !,  %  Oh for Ordering
                subn(O, A, B, R, S, C).

                subn(<, A, B, R, (-), C) :- !, subp(B, A, 0, R, D), prune(D, C).
                subn(>, A, B, R, (+), C) :- !, subp(A, B, 0, R, D), prune(D, C).
                subn(=, _A, _B, _R, (+),[]) :- !.

                        prune([0|L], M ) :- !,
                                prune(L, T),
                                (T = [], M = []; M = [0|T]).
                        prune([D|L], [D|M]) :- !,
                                prune(L, M).
                        prune([],    []) :- !.

                subp([D1|T1], [D2|T2], Bin, R, [D3|T3]) :-
                        S is D1-D2-Bin,
                        (   S >= 0, Bout = 0, D3 =  S
                        ;   S <  0, Bout = 1, D3 is S+R
                        ),  !,
                        subp(T1, T2, Bout, R, T3).
                subp(L, [], 0, _R, L) :- !.
                subp(L, [], 1, R, M) :- !, sub1(L, R, M).

                        sub1([0|T], R, [K|S]) :- !, K is R-1, sub1(T, R, S).
                        sub1([N|T], _R, [M|T]) :- M is N-1.



                        % Multiplication of Signs

sign(S, S, (+)) :- !.
sign(_S, _T, (-)) :- !.



                        % Multiplication of two long integers
/*
mulz(S,A, T,B, R, U,C) :-|
        sign(S, T, U), !,
        muln(A, B, R, C).
*/
        muln([], _B, _R, []) :- !.
        muln(_A, [], _R, []) :- !.
        muln(A,  B, R,  C) :- !, muln(A, B, [], R, C).

        muln([D1|T1], N2, Ac, R, [D3|Pr]) :-
                mul1(N2, D1, R, P2),
                addn(Ac, P2, 0, R, Sm),
                conn(D3, An, Sm), !,
                muln(T1, N2, An,R, Pr).
        muln([],      _N2, Ac, _R, Ac) :- !.

                mul1(_A, 0, _R, []) :- !.
                mul1(A, M, R, Pr) :- !,
                        mul1(A, M, 0, R, Pr).

                        mul1([], _M, 0, _R, []) :- !.
                        mul1([], _M, C, _R, [C]) :- !.
                        mul1([D1|T1], M, C, R, [D2|T2]) :-
                                D2 is (D1*M+C) mod R,
                                Co is (D1*M+C)  //  R,
                                mul1(T1, M, Co, R, T2).



                        % Exponentiation of a long integer to a short
                        %  (Prolog) integer. Note that this means the
                        %  power must be less than 100000 (current radix).
                        %  This code should always be called with positive
                        %  powers.

powz((-),A, N, R, (-),C) :-
        N mod 2 =:= 1, !,
        pown(N, A, [1], R, C).
powz(_S,A, N, R, (+),C) :- !,
        pown(N, A, [1], R, C).

        pown(0, _A, M, _R, M) :- !.
        pown(1, A, M, R, P) :- !,
                muln(A, M, R, P).
        pown(N, A, M, R, P) :-
                 N1 is N//2,
                (   N mod 2 =:= 0, M1 = M
                ;   N mod 2 =:= 1, muln(A, M, R, M1)
                ),
                muln(A, A, R, A1), !,
                pown(N1, A1, M1, R, P).


                        % Division of two long integers

divz(S,A, T,B, R, U,Q, S,X) :-
        sign(S, T, U), !,
        divn(A, B, R, Q, X).

        divn(_A, [], _R, _, _) :- !, fail. % division by 0 is undefined
        divn(A,[1], _R, A,[]) :- !.       % a very common special case
        divn(A,[B], R, Q, X) :- !,       % nearly as common a case
                div1(A, B, R, Q, Y),
                conn(Y, [], X).
        divn(A,  B, _R, Q, X) :-
                comn(A, B, =, S),
                (   S = '<', Q =  [], X = A
                ;   S = '=', Q = [1], X = []
                ), !.
        divn(A,  B, R, Q, X) :- !,
                divm(A, B, R, Q, X).

                conn(0, [],   []) :- !.
                conn(D, T, [D|T]).

                div1([D1|T1], B1, R, Q1, X1) :- !,
                        div1(T1, B1, R, Q2, X2),
                        D2 is (X2*R+D1)  //  B1,
                        X1 is (X2*R+D1) mod B1,
                        conn(D2, Q2, Q1).
                div1([],      _B1, _R, [],  0).

% divm(A, B, R, Q, X) is called with A > B > R

                divm([D1|T1], B, R, Q1, X1) :- !,
                        divm(T1, B, R, Q2, X2),
                        conn(D1, X2, T2),
                        div2(T2, B, R, D2, X1),
                        conn(D2, Q2, Q1).
                divm([],      _B, _R, [], []).

                        div2(A, B, R, Q, X) :-
                                estd(A, B, R, E), !,
                                chkd(A, B, R, E, 0, Q, P), !,
                                subn(A, P, R, _S, X).   %  S=+
                        div2(A, B, _R, _, _) :-
                                long_error(divq, A/B).

                                estd([_A0,A1,A2], [_B0,B1], R, E) :-
                                        B1 >= R//2, !,
                                        E is (A2*R+A1)//B1.
                                estd([A0,A1,A2], [B0,B1], R, E) :- !,
                                        L is (A2*R+A1)//(B1+1),
                                        mul1([B0,B1],    L, R, P),
                                        subn([A0,A1,A2], P, R, _S, N), !, %S=+
                                        estd(N, [B0,B1], R, M),    !,
                                        E is L+M.
                                estd([A0,A1],    [B0,B1], R, E) :- !,
                                        E is (A1*R+A0+1)//(B1*R+B0).
                                estd([_A0],       _,       _R, 0) :- !.
                                estd([_A0|Ar],    [_B0|Br], R, E) :- !,
                                        estd(Ar, Br, R, E).
                                estd([],         _,       _R, 0) :- !.
        
                                chkd(A, B, _R, _E, 3, _, _) :-       !,
                                        long_error(divq, A/B).
                                chkd(A, B, R, E, _K, E, P) :-
                                        mul1(B, E, R, P),
                                        comn(P, A, <, <), !.
                                chkd(A, B, R, E, K, Q, P) :-
                                        L is K+1, F is E-1, !,
                                        chkd(A, B, R, F, L, Q, P).



                        % GCD of two long integers
/*
gcdz(S,A, T,B, R, D, S,M, T,N) :- !,
        gcdn(A, B, R, D, M, N).
*/
        gcdn([], [], _R, [1],  [],  []) :- !.
        gcdn([],  B, _R,   B,  [], [1]) :- !.
        gcdn( A, [], _R,   A, [1],  []) :- !.
        gcdn([1], B, _R, [1], [1],   B) :- !.    %  common case
        gcdn( A,[1], _R, [1],   A, [1]) :- !.    %  common case
        gcdn( A,  B, R,   D,   M,   N) :-       %  A, B > 1
                gcdn(A, B, R, D),
                divn(A, D, R, M, _),
                divn(B, D, R, N, _).

                gcdn(A, B, R, D) :-             %  A, B >= 1  !!
                        comn(A, B, =, S), !,
                        gcdn(S, A, B, R, D).

                        gcdn(<,[], B, _R, B) :- !.
                        gcdn(<, A, B, R, D) :-
                                estg(B, A, R, E),
                                muln(E, A, R, P),
                                subn(B, P, R, _, M), !,
                                gcdn(A, M, R, D).
                        gcdn(>, A,[], _R, A) :- !.
                        gcdn(>, A, B, R, D) :-
                                estg(A, B, R, E),
                                muln(E, B, R, P),
                                subn(A, P, R, _, M), !,
                                gcdn(M, B, R, D).
                        gcdn(=, A, _B, _R, A).

                                estg(    A,   [B], R, E) :- !,
                                        div1(A, B, R, Q, X),
                                        (   X*2 =< B, E = Q
                                        ;   add1(Q, R, E)
                                        ),  !.
                                estg([_|A], [_|B], R, E) :- !,
                                        estg(A, B, R, E).

%% TRIGONOMETRIC EVALUATION %%

        % This stuff needs some work done on it, and the mode
        % declarations haven't been written yet.  Taihoa.
        % To do:
        %       Since at this stage all the argumentss are known to be
        %       numbers we shouldn't waste time using the general eval.
        %       Approximations should be used so that the routines work
        %       for ANY argument.  Care is needed, since little is known
        %       about rational approximations, lest the numbers explode.




sineval(X, S) :-
        eval(X < 0),    !,
        eva2(-X, Y),
        sineval(Y, T),
        eva2(-T, S).
sineval(X, S) :-
        eval(X > 90),   !,
        eva2(180-X, Y),
        sineval(Y, S).
sineval(X, S) :-        % 0 <= X <= 90
        sineval1(X, S).


        sineval1(number((+),[],[1]),   number((+),[],[1])).
        sineval1(number((+),[30],[1]), number((+),[1],[2])).
%        sineval1(number(+,[45],[1]), number(+,[99],[140])).    % Use C code now
%        sineval1(number(+,[60],[1]), number(+,[45],[52])).     % Use C code now
        sineval1(number((+),[90],[1]), number((+),[1],[1])).



coseval(X, C) :-
        eva2(90-X, Y), !,
        sineval(Y, C).


taneval(X, T) :-
        sineval(X, S),
        coseval(X, C), !,
        eva2(S/C, T).


arcsineval(S, X) :-
        eval(S >= 0), !,
        sineval1(X, S).
arcsineval(S, X) :-
        eval(S < 0),
        eva2(-S, T), !,
        sineval1(Y, T),
        eva2(-Y, X).


arccoseval(C, X) :-
        arcsineval(C, Y), !,
        eva2(90-Y, X).


arctaneval(number(S,N,D), number(S,M,C)) :-
        arctaneval(N, D, M, C).
        
arctaneval([],X, [], X) :- !.           %  arctan(0) = 0, arctan(undef) = undef
arctaneval(X, X, [45], [1]) :- !.       %  arctan(1) = 45`
arctaneval(_X,[], [90], [1]) :- !.       %  arctan(inf) = 90`
arctaneval(N, D, M, C) :-
        R = 100000,                     %  the common radix
        muln(N, N, R, Nsq),
        muln(D, D, R, Dsq),
        addn(Nsq, Dsq, 0, R, Sq), !,
        nthn(2, Sq, R, Den), !,
        arcsineval(number((+),N,Den), S),
        S = number((+),M,C).



%% ERROR HANDLING %%

long_error(Culprit, Expression) :-
        long_error_message(Culprit, Message),
        display('** '), display(Message), display(': '),
        print(Expression), ttynl,
        break, fail.

long_error_message(eval, 'EVAL given a variable').
long_error_message(eva2, 'EVAL given an expression containing a variable').
long_error_message(divq, 'Unexpected rational division problem').

/*======================================================================== util/metutl.pl */

%   File   : METUTL.PL
%   Author : R.A.O'Keefe
%   Updated: 15 September 1984
%   Purpose: meta-logical operations as described in my note

% :- public
%         compound_press/1,
%         copy/2,
%         ground_press/1,
%         occurs_check/2,
%         occurs_in/2,
%         simple/1,
%         subsumes/2,
%         subsumes_chk/2,
%         subterm/2,
%         unify/2,
%         variables_of/2,
%         variant/2,
%         var_member_chk/2.
%  
% :- mode
%         copy(+, ?),
%         ground_press(+),
%             ground_press(+, +),
%         occurs_check(+, ?),
%             occurs_check(+, +, ?),
%         occurs_in(+, +),
%             occurs_in(+, +, +),
%         subterm(+, ?),
%             subterm(+, +, ?),
%         subsumes(+, +),
%             subsumes(+, +, +),
%                 subsumes(+, +, +, +),
%         subsumes_chk(+, +),
%         unify(+, +),
%             unify(+, +, +),
%         var_member_chk(+, +),
%         variables_of(+, -),
%             variables_of(+, +, -),
%                 variables_of(+, +, +, -),
%         variant(+, +).

:- dynamic copy/1.


compound_press(Term) :-
        nonvar(Term),           %  not a variable
        functor(Term, _, Arity),
        Arity > 0.              %  not atomic
 

simple(Term) :-
        var(Term), !.                   %  is a variable
simple(Term) :-                         %  -or-
        functor(Term, Term, 0), !.      %  is atomic
simple(Term) :-                         %  rationals should be atomic
        ok_number(Term).                   %  but aren't so we need this hack.

ground_press(Term) :-
        nonvar(Term),
        functor(Term, _, N),
        ground_press(N, Term).
 
ground_press(0, _) :-
        !.
ground_press(N, Term) :-
        arg(N, Term, Arg),
        ground_press(Arg),
        M is N-1, !,
        ground_press(M, Term).
 

occurs_in(Var, Term) :-
        var(Term),
        !,
        Var == Term.
occurs_in(Var, Term) :-
        functor(Term, _, N),
        occurs_in(N, Var, Term).
 
occurs_in(N, Var, Term) :-
        arg(N, Term, Arg),
        occurs_in(Var, Arg),
        !.
occurs_in(N, Var, Term) :-
        N > 1,
        M is N-1,
        occurs_in(M, Var, Term).
 

subterm(Term, Term).
subterm(SubTerm, Term) :-
        nonvar(Term),
        functor(Term, _, N),
        subterm(N, SubTerm, Term).
 
subterm(N, SubTerm, Term) :-
        arg(N, Term, Arg),
        subterm(SubTerm, Arg).
subterm(N, SubTerm, Term) :-
        N > 1,
        M is N-1,
        subterm(M, SubTerm, Term).


copy(Old, New) :-
        asserta(copy(Old)),
        retract(copy(Mid)), !,
        New = Mid.

occurs_check(Term, Var) :-
        var(Term), !,
        Term \== Var.
occurs_check(Term, Var) :-
        functor(Term, _, Arity),
        occurs_check(Arity, Term, Var).

occurs_check(0, _, _) :- !.
occurs_check(N, Term, Var) :-
        arg(N, Term, Arg),
        occurs_check(Arg, Var),
        M is N-1, !,
        occurs_check(M, Term, Var).

unify(X, Y) :-
        var(X), var(Y),
        !,
        X = Y.          %  want unify(X,X)
unify(X, Y) :-
        var(X),
        !,
        occurs_check(Y, X),             %  X is not in Y
        X = Y.
unify(X, Y) :-
        var(Y),
        !,
        occurs_check(X, Y),             %  Y is not in X
        X = Y.
unify(X, Y) :-
        atomic(X),
        !,
        X = Y.
unify(X, Y) :-
        functor(X, F, N),
        functor(Y, F, N),
        unify(N, X, Y).
        
unify(0, _X, _Y) :- !.
unify(N, X, Y) :-
        arg(N, X, Xn),
        arg(N, Y, Yn),
        unify(Xn, Yn),
        M is N-1, !,
        unify(M, X, Y).


subsumes_chk(General, Specific) :-
        \+  (   numbervars(Specific, 0, _),
                \+ General = Specific
            ).

var_member_chk(Var, [Head|_]) :-
        Head == Var,
        !.
var_member_chk(Var, [_|Tail]) :-
        var_member_chk(Var, Tail).


variables_of(Term, Vars) :-
        variables_of(Term, [], Vars).

variables_of(Term, Sofar, Sofar) :-
        var(Term),
        var_member_chk(Term, Sofar),
        !.
variables_of(Term, Sofar, [Term|Sofar]) :-
        var(Term),
        !.
variables_of(Term, Sofar, Vars) :-
        functor(Term, _, N),
        variables_of(N, Term, Sofar, Vars).

variables_of(0, _, Vars, Vars) :- !.
variables_of(N, Term, Sofar, Vars) :-
        arg(N, Term, Arg),
        variables_of(Arg, Sofar, Mid),
        M is N-1, !,
        variables_of(M, Term, Mid, Vars).


subsumes(General, Specific) :-
        variables_of(Specific, Vars),
        subsumes(General, Specific, Vars).

subsumes(General, Specific, Vars) :-
        var(General),
        var_member_chk(General, Vars),
        !,
        General == Specific.
subsumes(General, Specific, _Vars) :-
        var(General),
        !,
        General = Specific.     %  binds
subsumes(General, Specific, Vars) :-
        nonvar(Specific),       %  mustn't bind it
        functor(General,  FunctionSymbol, Arity),
        functor(Specific, FunctionSymbol, Arity),
        subsumes(Arity, General, Specific, Vars).

subsumes(0, _, _, _) :- !.
subsumes(N, General, Specific, Vars) :-
        arg(N, General,  GenArg),
        arg(N, Specific, SpeArg),
        subsumes(GenArg, SpeArg, Vars),
        M is N-1, !,
        subsumes(M, General, Specific, Vars).


variant(A, B) :-
        subsumes_chk(A, B),
        subsumes_chk(B, A).

/*======================================================================== util/occur.pl */

%   File   : OCCUR.PL
%   Author : R.A.O'Keefe
%   Updated: 22 May 1983
%   Purpose: routines for checking number/place of occurrence 

%   Some of the things in METUTL.PL may also be relevant, particularly
%   subterm/2.  Maybe that should go here?  occ/3 in STRUCT.PL too.

% :- public
%         contains/2,                     %   Term x Term ->
%         freeof/2,                       %   Term x Term ->
%         patharg/3,                      %   Path x Term -> Term
%         position/3,                     %   Term x Term -> Path
%         replace/4.                      %   Path x Term x Term -> Term
% 
% :- mode
%         contains(+, +),
%         copy_all_but_one_arg(+, +, +, +),
%         freeof(+, +),
%             freeof(+, +, -),
%         patharg(+, +, ?),
%         position(?, +, ?),
%         position(+, ?, +, ?),
%         replace(+, +, +, -).



%   contains(Kernel, Expression)
%   is true when the given Kernel occurs somewhere in the Expression.
%   It be only be used as a test; to generate subterms use subterm/2.

contains(Kernel, Expression) :-
        \+ freeof(Kernel, Expression).


%   freeof(Kernel, Expression)
%   is true when the given Kernel does not occur anywhere in the
%   Expression.  NB: if the Expression contains an unbound variable,
%   this must fail, as the Kernel might occur there.  Since there are
%   infinitely many Kernels not contained in any Expression, and als
%   infinitely many Expressions not containing any Kernel, it doesn't
%   make sense to use this except as a test.

freeof(Kernel, Kernel) :- !,
        fail.
freeof(Kernel, Expression) :-
        functor(Expression, _, Arity),          %  can't be a variable!
        freeof(Arity, Kernel, Expression).

freeof(0, _Kernel, _Expression) :- !.
freeof(N, Kernel, Expression) :-
        arg(N, Expression, Argument),
        freeof(Kernel, Argument),
        M is N-1, !,
        freeof(M, Kernel, Expression).



%   patharg(Path, Exp, Term)
%   unifies Term with the subterm of Exp found by following Path.
%   It may be viewed as a generalisation of arg/3.  It cannot be
%   used to discover a path to a known Term; use position/3 for that.

patharg([Head|Tail], Exp, Term) :-
        arg(Head, Exp, Arg),
        patharg(Tail, Arg, Term).
patharg([], Term, Term).



%   position(Term, Exp, Path)
%   is true when Term occurs in Exp at the position defined by Path.
%   It may be at other places too, so the predicate is prepared to
%   generate them all.  The path is a generalised Dewey number, as usual.
%   position(x, 2*x^2+2*x+1=0, [1, 1, 2, 2]) {2*x} and
%   position(x, 2*x^2+2*x+1=0, [1, 1, 1, 2, 1]) {x^2} are both examples.

position(Term, Term, []).
position(Term, Exp, Path) :-
        nonvar(Exp),
        functor(Exp, _, N),
        position(N, Term, Exp, Path).

position(0, _Term, _Exp, _Path) :- !, fail.
position(N, Term, Exp, [N|Path]) :-
        arg(N, Exp, Arg),
        position(Term, Arg, Path).
position(N, Term, Exp, Path) :-
        M is N-1, !,
        position(M, Term, Exp, Path).



%   replace(Path, OldExpr, SubTerm, NewExpr)
%   is true when OldExpr and NewExpr are identical except at the position
%   identified by Path, where NewExpr has SubTerm.  There is a bug in the
%   Dec-10 compiler, which is why the second 'arg' call follows the replace
%   recursion.  If it weren't for that bug, replace would be tail recursive.
%   replace([1,1,2,2], 2*x^2+2*x+1=0, y, 2*x^2+2*y+1=0) is an example.
 
replace([M|Path], OldExpr, SubTerm, NewExpr) :- !,
        arg(M, OldExpr, OldArg),
        functor(OldExpr, F, N),
        functor(NewExpr, F, N),
        copy_all_but_one_arg(N, M, OldExpr, NewExpr),
        replace(Path, OldArg, SubTerm, NewArg),
        arg(M, NewExpr, NewArg).
replace([], _, SubTerm, SubTerm).


copy_all_but_one_arg(0, _, _, _) :- !.
copy_all_but_one_arg(M, M, OldExpr, NewExpr) :- !,
        L is M-1,
        copy_all_but_one_arg(L, M, OldExpr, NewExpr).
copy_all_but_one_arg(N, M, OldExpr, NewExpr) :-
        arg(N, OldExpr, Arg),
        arg(N, NewExpr, Arg),
        L is N-1,
        copy_all_but_one_arg(L, M, OldExpr, NewExpr).


/*  Suppose you have a set of rewrite rules Lhs -> Rhs which you
    want exhaustively applied to a term.  You would write

        waterfall(Expr, Final) :-
                Lhs -> Rhs,
                position(Expr, Lhs, Path),
                replace(Path, Expr, Rhs, Modified),
                !,
                waterfall(Modified, Final).
        waterfall(Expr, Expr).

*/

/*======================================================================== util/projec.pl */

%   File   : PROJEC.PL
%   Author : R.A.O'Keefe
%   Updated: 14 August 1984
%   Purpose: Select Kth argument of each element of a list

% :- public
%         keys_and_values/3,              %   KeyValList -> KeyList x ValList
%         project/3.                      %   TermList x ArgNo -> ArgList
% 
% :- mode
%         keys_and_values(?, ?, ?),
%         project(+, +, ?),
%             '$project'(+, +, ?),
%             '$project'(+, ?).


%   keys_and_values({K1-V1,...,Kn-Vn], [K1,...,Kn], [V1,...,Vn])
%   is true when its arguments look like the picture above.  It is meant
%   for splitting a list of Key-Value pairs (such as keysort/2 wants and
%   produces) into separate lists of Keys and of Values.  It may just as
%   well be used for building a list of pairs from a pair of lists.   In
%   fact one usually wants just the keys or just the values, but you can
%   supply _ as the other argument.   For example, suppose you wanted to
%   sort a list without having duplicates removed.  You could do
%       keys_and_values(RawPairs, RawKeys, _),
%       keysort(RawPairs, OrdPairs),
%       keys_and_values(OrdPairs, OrdKeys, _).
%   (In fact this operation is msort/2 and should be available somewhere.)

keys_and_values([], [], []) :- !.
keys_and_values([Key-Value|Pairs], [Key|Keys], [Value|Values]) :-
        keys_and_values(Pairs, Keys, Values).



%   This problem has cropped up in several programs.  You have a
%   list of structures s(A1,...,Ak,...An), which you can guarantee
%   are all the same, and you want a list with just the Ak in the
%   same order.  The best thing to do is to write
/*  type s(T1,...,Tn) --> s(T1,...,Tn).
    pred s_project(list(s(T1,...,Tn)), list(T1), ..., list(Tn)).
    mode s_project(+, -, ..., -).

s_project([s(A1,...,An)|Ss], [A1|A1s], ..., [An|Ans]) :-
        s_project(Ss, A1s, ..., Ans).
s_project([], [], ..., []).
*/
%   This is second best.  Doing it this way does mean that you can
%   extract just the argument you want, and that you only have to
%   remember one predicate, but it also means that it can't be
%   type-checked.  project(Structs, K, Args) unifies Args with the
%   list of Kth arguments of the Structs.  K = 0 means the principal
%   function symbol, which is occasionally useful.
%   This could be defined as maplist(arg(K), TermList, ArgList).


project(Structs, 0, Functors) :- !,
        '$project'(Structs, Functors).
project(Structs, K, Args) :-
        integer(K), K > 0,
        '$project'(Structs, K, Args).


'$project'([], []).
'$project'([Struct|Structs], [Functor|Functors]) :-
        functor(Struct, Functor, _),
        '$project'(Structs, Functors).


'$project'([], _, []).
'$project'([Struct|Structs], K, [Arg|Args]) :-
        arg(K, Struct, Arg),
        '$project'(Structs, K, Args).

/*======================================================================== util/readin.pl */

%   File   : READIN.PL
%   Author : Lawrence Byrd
%   Updated: 15 November 1983
%   Purpose: Read in a sentence as a list of words.

% :- public
%         read_in/1.
% 
% :- mode
%         read_in(?),
%         ri_rest(+, -),
%         ri_word(-, ?, ?),
%         ri_words(-, ?, ?),
%         ri_letdig(-, ?, ?),
%         ri_space(?, ?),
%         ri_digits(-, ?, ?),
%         ri_digit(+),
%         ri_lcase(+, -).



%   read_in(Words)
%   reads characters until it finds a period (. ? or !) at the end of a
%   line, that is, followed by any number of spaces but nothing else.
%   It then parses this list of characters using grammar rules.  Words
%   are sequences of letters (in either case, forced to lower case),
%   or strings of digits, or punctuation marks.  Other characters act
%   as word separators, and are otherwise ignored.  The subroutines in
%   this file all start with ri_, to avoid a collision with a user's
%   predicates.


read_in(Words) :-
        get(C1),
        get0(C2),
        ri_rest(C2, Chars), !,
        ri_words(Found, [C1,C2|Chars], []), !,
        Words = Found.

ri_rest(C, Chars) :-                            %  check for period NL
        (C=33 ; C=46 ; C=63),                   %  ! . ?
        repeat, get0(C1), C1 =\= 32, !,         %  next non-blank
        (   C1 = 10, !, Chars = []              %  was end of line
        ;   Chars = [C1|Chars1], ri_rest(C1, Chars1)
        ).                                      %  false alarm
ri_rest(C, [C1|Chars]) :-                       %  all control chars
        C =< 32, !,                             %  act as spaces.
        get(C1),                                %  skip other spaces
        ri_rest(C1, Chars).
ri_rest(_C, [C1|Chars]) :-
        get0(C1),
        ri_rest(C1, Chars).


ri_words([Word|Words]) -->
        ri_word(Word), !,
        ri_space, ri_words(Words).
ri_words([]) --> [].

ri_word(Word) -->
        [C], {ri_letter(C, D)}, !,              %  either case letter
        ri_letdig(Chars),                       %  parse rest of word
        {name(Word, [D|Chars])}.
ri_word(Word) -->
        [C], {ri_digit(C)}, !,                  %  digit
        ri_digits(Chars),                       %  parse rest of number
        {name(Word, [C|Chars])}.
ri_word(Word) -->
        [C],                                    %  can't a space, so it
        {name(Word, [C])}.                      %  is punctuation

ri_letdig([D|Chars]) -->
        [C], {ri_letter(C, D)}, !,
        ri_letdig(Chars).
ri_letdig([C|Chars]) -->
        [C], {ri_digit(C)}, !,
        ri_letdig(Chars).
ri_letdig([]) --> [].

ri_digits([C|Chars]) -->
        [C], {ri_digit(C)}, !,
        ri_digits(Chars).
ri_digits([]) --> [].

ri_space -->
        [C], {C=<32}, !,
        ri_space.
ri_space --> [].

ri_digit(C) :-
        C >= 48, C =< 57.       %  0..9

ri_letter(C, C) :-
        C >= 97, C =< 122, !.   %  a..z
ri_letter(C, D) :-
        C >= 65, C =< 90,       %  A..Z
        D is C+32.              %  32 is "a"-"A"

/*======================================================================== util/setutl.pl */

%   File   : SETUTL.PL
%   Author : Lawrence Byrd + R.A.O'Keefe
%   Updated: 19 July 1984
%   Purpose: Set manipulation utilities

%   Sets are represented as lists with no repeated elements.
%   An ordered representation could be much more efficient, but
%   these routines were designed before sort/2 entered the language.

% :- public
%         add_element/3,          %  Elem x Set -> Set
%         del_element/3,          %  Elem x Set -> Set
%         disjoint/1,             %  List ->
%         disjoint/2,             %  Set x Set ->
%         intersect/2,            %  Set x Set ->
%         intersect/3,            %  Set x Set -> Set
% %       length/2,               %  List -> Integer
%         listtoset/2,            %  List -> Set
%         member/2,               %  Elem <- Set
%         memberchk_press/2,            %  Elem x Set ->
%         nonmember/2,            %  Elem x Set ->
%         pairfrom/4,             %  Set -> Elem x Elem x Set
%         select/3,               %  Elem <- Set -> Set
%         seteq/2,                %  Set x Set ->
%         subset/2,               %  Set x Set ->
%         subtract/3,             %  Set x Set -> Set
%         symdiff/3,              %  Set x Set -> Set
%         union/3.                %  Set x Set -> Set
% 
% :- mode
% %       length(+, -),
% %           length(+, +, -),
%         member(?, ?),
%         memberchk_press(+, +),
%         nonmember(+, +),
%         pairfrom(?, ?, ?, ?),
%         select(?, ?, ?),
%         add_element(+, +, -),
%         del_element(+, +, -),
%         disjoint(+),
%         disjoint(+, +),
%         intersect(+, +),
%         subset(+, +),
%         seteq(+, +),
%         listtoset(+, ?),
%         intersect(+, +, ?),
%         subtract(+, +, ?),
%         symdiff(+, +, ?),
%             symdiff(+, +, ?, ?),
%         union(+, +, ?).



/*  length(List, Length) is true when Length is the number of elements
    in List.  The definition here is correct, but length is actually in
    the Prolog system.  Note that this comment is unclosed!

length(List, Length) :-
        length(List, 0, Length).

        length([], Length, Length).
        length([_|Tail], SoFar, Length) :-
                Count is SoFar+1,
                length(Tail, Count, Length).
*/
/* end of comment */



%   member(?Element, ?Set)
%   is true when Set is a list, and Element occurs in it.  It may be used
%   to test for an element or to enumerate all the elements by backtracking.
%   Indeed, it may be used to generate the Set!

member(Element, [Element|_]).
member(Element, [_|Rest]) :-
        member(Element, Rest).



%   memberchk_press(+Element, +Set)
%   means the same thing, but may only be used to test whether a known
%   Element occurs in a known Set.  In return for this limited use, it
%   is more efficient when it is applicable.

memberchk_press(Element, [Element|_]) :- !.
memberchk_press(Element, [_|Rest]) :-
        memberchk_press(Element, Rest).



%   nonmember(+Element, +Set)
%   means that Element does not occur in Set.  It does not make sense
%   to instantiate Element in any way, as there are infinitely many
%   terms which do not occur in any given set.  That being so, it is
%   sensible to test for membership using == rather than =.  So
%   nonmember(X, S) is not quite the same as \+member(X, S).

nonmember(_X, []).
nonmember(X, [H|T]) :-
        X \== H,
        nonmember(X, T).



%   add_element(Elem, Set1, Set2)
%   is true when Set1 and Set2 are sets represented as unordered lists,
%   and Set2 = Set1 U {Elem}.  It may only be used to calculate Set2
%   given Elem and Set1.  However, if Set1 is a list with a variable at
%   the end, it may still be used, and will add new elements at the end.

add_element(Elem, Set, Set) :-
        memberchk_press(Elem, Set),
        !.
add_element(Elem, Set, [Elem|Set]).



%   del_element(Elem, Set1, Set2)
%   is true when Set1 and Set2 are sets represented as unordered lists,
%   and Set2 = Set1 \ {Elem}.  It may only be used to calculate Set2
%   given Elem and Set1.  If Set1 does not contain Elem, Set2 and Set1
%   will be equal.  I wanted to call this predicate 'delete', but other
%   Prologs have used that for 'select'.  If Set1 is not an unordered
%   set, but contains more than one copy of Elem, only the first will
%   be removed.

del_element(Elem, [Elem|Set2], Set2) :- !.
del_element(Elem, [X|Set1], [X|Set2]) :- !,
        del_element(Elem, Set1, Set2).
del_element(_, [], []).



%   disjoint(+Set)
%   is true when Set is a list that contains no repeated elements.
%   disjoint/1 and disjoint/2 used to be defined using \+, but for
%   speed (as the Dec-10 compiler does not understand \+), this is
%   no longer so.  Sorry 'bout the !,fails, the price of speed.

disjoint([Head|Tail]) :-
        memberchk_press(Head, Tail),
        !, fail.
disjoint([_|Tail]) :- !,
        disjoint(Tail).
disjoint([]).



%   disjoint(+Set1, +Set2)
%   is true when the two given sets have no elements in common.
%   It is the opposite of intersect/2.

disjoint(Set1, Set2) :-
        member(Element, Set1),
        memberchk_press(Element, Set2),
        !, fail.
disjoint(_, _).



%   select(?Element, ?Set, ?Residue)
%   is true when Set is a list, Element occurs in Set, and Residue is
%   everything in Set except Element (things stay in the same order).

select(Element, [Element|Rest], Rest).
select(Element, [Head|Tail], [Head|Rest]) :-
        select(Element, Tail, Rest).



%   pairfrom(?Set, ?Element1, ?Element2, ?Residue)
%   is true when Set is a list, Element1 occurs in list, Element2
%   occurs in list after Element1, and Residue is everything in Set
%   bar the two Elements.  The point of this thing is to select
%   pairs of elements from a set without selecting the same pair
%   twice in different orders.

pairfrom([Element1|Set], Element1, Element2, Residue) :-
        select(Element2, Set, Residue).
pairfrom([Head|Tail], Element1, Element2, [Head|Rest]) :-
        pairfrom(Tail, Element1, Element2, Rest).



%   intersect(Set1, Set2)
%   is true when the two sets have a member in common.  It assumes
%   that both sets are known, and that you don't care which element
%   it is that they share.

intersect(Set1, Set2) :-
        member(Element, Set1),          %  generates Elements from Set1
        memberchk_press(Element, Set2),       %  tests them against Set2
        !.                              %  if it succeeds once, is enough.



%   subset(+Set1, +Set2)
%   is true when each member of Set1 occurs in Set2.
%   It can only be used to test two given sets; it cannot be used
%   to generate subsets.  At the moment there is NO predicate for
%   generating subsets, but select/3 takes you part-way.

subset([], _).
subset([Element|Residue], Set) :-
        memberchk_press(Element, Set), !,
        subset(Residue, Set).



%   seteq(+Set1, +Set2)
%   is true when each Set is a subset of the other.  There are two
%   ways of doing this.  One is commented out.

seteq(Set1, Set2) :-
        subset(Set1, Set2),
        subset(Set2, Set1).
%       sort(Set1, Ord1),
%       sort(Set2, Ord2),
%       Ord1 == Ord2.



%   listtoset(+List, ?Set)
%   is true when List and Set are lists, and Set has the same elements
%   as List in the same order, except that it contains no duplicates.
%   The two are thus equal considered as sets.  If you really want to
%   convert a list to a set, list_to_ord_set is faster, but this way
%   preserves as much of the original ordering as possible.

listtoset([], []).
listtoset([Head|Tail], Set) :-
        memberchk_press(Head, Tail), !,
        listtoset(Tail, Set).
listtoset([Head|Tail], [Head|Set]) :-
        listtoset(Tail, Set).



%   intersect(+Set1, +Set2, ?Intersection)
%   is true when Intersection is the intersection of Set1 and Set2,
%   *taken in a particular order*.  In fact it is precisely the
%   elements of Set1 taken in that order, with elements not in Set2
%   deleted.  If Set1 contains duplicates, so may Intersection.

intersect([], _, []).
intersect([Element|Residue], Set, [Element|Intersection]) :-
        memberchk_press(Element, Set), !,
        intersect(Residue, Set, Intersection).
intersect([_|Rest], Set, Intersection) :-
        intersect(Rest, Set, Intersection).



%   subtract(+Set1, +Set2, ?Difference)
%   is like intersect, but this time it is the elements of Set1 which
%   *are* in Set2 that are deleted.

subtract([], _, []).
subtract([Element|Residue], Set, Difference) :-
        memberchk_press(Element, Set), !,
        subtract(Residue, Set, Difference).
subtract([Element|Residue], Set, [Element|Difference]) :-
        subtract(Residue, Set, Difference).



%   symdiff(+Set1, +Set2, ?Diff)
%   is true when Diff is the symmetric difference of Set1 and Set2,
%   that is, if each element of Union occurs in one of Set1 and Set2,
%   but not both.  The construction method is such that the answer
%   will contain no duplicates even if the Sets do.

symdiff(Set1, Set2, Diff) :-
        symdiff(Set1, Set2, Diff, Mid),
        symdiff(Set2, Set1, Mid, []).

symdiff([Elem|Rest], Avoid, Diff, Tail) :-
        memberchk_press(Elem, Avoid), !,
        symdiff(Rest, Avoid, Diff, Tail).
symdiff([Elem|Rest], Avoid, [Elem|Diff], Tail) :- !,
        symdiff(Rest, [Elem|Avoid], Diff, Tail).
symdiff([], _, Tail, Tail).



%   union(+Set1, +Set2, ?Union)
%   is true when subtract(Set1,Set2,Diff) and append(Diff,Set2,Union),
%   that is, when Union is the elements of Set1 that do not occur in
%   Set2, followed by all the elements of Set2.

union([], Set2, Set2).
union([Element|Residue], Set, Union) :-
        memberchk_press(Element, Set), !,
        union(Residue, Set, Union).
union([Element|Residue], Set, [Element|Union]) :-
        union(Residue, Set, Union).

/*======================================================================== pressdir/toplevel/ident.pl */

/* IDENT. :             Prove identities with PRESS
Written 1.11.1981
                                                Bernard Silver
                                                Updated: 21 March 83
*/

/* Top level X is the possible identity */
identity(X) :- 
        trace_press('\nTrying to prove that\n%t\nis an identity\n',[X],1),
        tidy(X,Y),
        cond_print(X,Y,_),
        abolish(seen_eqn,1),
        ident(Y),
        !.

/* Recursive call top level */
identity1(X) :- tidy(X,Y),cond_print(X,Y,_),ident(Y),!.

/* Base cases */
ident(false) :- !,trace_press('\nExpression is not an identity\n',1).
ident(true) :- !,trace_press('\nExpression is an identity\n',1).
ident(A=A) :-  !,trace_press('\nIdentically true\n',1).  %unifies

/* Find words in expression */
ident(X) :- wordsin(X,Words),ident1(X,Words),!.

/* No words remaining,so fail */
ident1(_,[]) :- trace_press('\nCannot show identity\n',1),!,fail.

/* Try to solve as an equation with unknown X */

ident1(X,[H|_]) :- ident2(X,H),!.

/* Try next word, if any */
ident1(X,[_|T]) :- ident1(X,T),!.

/* Put expression in weak normal form and try PRESS methods */
ident2(Old,Unk) :- weak_normal_form(Old,Unk,New),ident3(New,Unk),!.

  % Isolation

ident3(A,Unk) :- 
        occ(Unk,A,1),
        position(Unk,A,Posn),
        isolate(Posn,A,New),
        tidy(New,New1),
        cond_print(New,New1,_),
        terminate_ident(New),
        !.

% Polynomial
ident3(L=R,X) :- 
        is_poly(X,L),
        poly_solve(L=R,X,Ans,_),
        !,
        ident(Ans).

% Collection
ident3(Old=Rhs,Unk) :- 
        collect(Unk,Old,New),
        trace_press('\n%t\n',[New=Rhs],1),
        !,
        identity1(New=Rhs),
        !.

% Attraction
ident3(Old=Rhs,X) :-  
        attract(X,Old,New), 
        !,
        trace_press('%c\n',[New=Rhs],1),
        identity1(New=Rhs),
        !.

% Change Of Unknown
ident3(A=B,Unk) :- 
        occ(Unk,A,N), 
        eval(N>1),
        setof(T,good_subterm(A,Unk,N,T),Tset),
        extreme_term(Tset,>,T),
        identifier(New),
        !,
        subst_mesg(T=New,A=B,Neweq),
        identity1(Neweq),
        !.

% Trig Methods
ident3(Old,Unk) :- 
        linear_sin_cos(Old,Unk),
        trig_fac(Old,Unk,New), 
        !,
        trace_press('\n%t\n',[New],1),
        identity1(New),
        !.

% Homogenization
ident3(Old,Unk) :- 
        mult_occ(Unk,Old), 
        multiple_offenders_set(Old,Off,Unk),
        homog(Old,Unk,New,_,_,Off),
        identity1(New),
        !.

% Nas1
ident3(Eqn,X) :-  
        mult_occ(X,Eqn), 
        nas1(Eqn,X,Posn),
        isolate(Posn,Eqn,New),
        findrhs(New,List),
        checklist(freeof(X),List),
        !,
        identity1(New),
        !.

% Logmethods
ident3(Eqn,X) :- 
        logmethod(Eqn,X,New,Base), 
        trace_press('\nTaking logs, base %t, gives\n\n%t\n',[Base,New],1),
        identity1(New),
        !.

% Nasty Function Method
ident3(Eqn,X) :- nasty_method(Eqn,X,Neweq),tidy(Neweq,New),!,identity1(New),!. 

/* Examine result of isolation  */
terminate_ident(true) :- trace_press('\nExpression is identity\n',1),!.
terminate_ident(_) :- trace_press('\nExpression is not an identity\n',1),!.

/*======================================================================== util/struct.pl */

%   File   : STRUCT.PL
%   Author : Richard A. O'Keefe.
%   Updated: 15 September 1984
%   Purpose: General term hacking.  See also OCCUR.PL, METUTL.PL.
/*

    These routines view a term as a data-structure.  In particular,
they handle Prolog variables in the terms as objects.  This is not
entirely satisfactory.  A proper separations of levels is needed.
*/

% :- public
%         copy_ground/3,                  %  Term -> GroundCopy,Substitution
%         occ/3,                          %  SubTerm,Term -> Occurrences
%         subst/3,                        %  Substitution,Term -> ModifiedTerm
%         variables/2.                    %  Term -> ListOfVariables


%   subst(Substitution, Term, Result) applies a substitution, where
%   <substitution> ::= <OldTerm> = <NewTerm>
%                   |  <Substitution> & <Substitution>
%                   |  <Substitution> # <Substitution>
%   The last two possibilities only make sense when the input Term is
%   an equation, and the substitution is a set of solutions.  The
%   "conjunction" of substitutions really refers to back-substitution,
%   and the order in which the substitutions are done may be crucial.
%   If the substitution is ill-formed, and only then, subst will fail.

% :- mode
%         subst(+,+,-),           %  Subst,Term -> NewTerm
%         subst(+,+,+,-),         %  Lhs,Rhs,Term -> NewTerm
%         subst(+,+,+,+,+).       %  ArgNo,Lhs,Rhs,OldTerm, NewTerm


subst(Subst1 & Subst2, Old, New) :-
        subst(Subst1, Old, Mid), !,
        subst(Subst2, Mid, New).
subst(Subst1 # Subst2, Old, New1 # New2) :-
        subst(Subst1, Old, New1), !,
        subst(Subst2, Old, New2).
subst(Lhs = Rhs, Old, New) :- !,
        subst(Lhs, Rhs, Old, New).
subst(true, Old, Old).


        subst(Lhs, Rhs, Old, Rhs) :-            %   apply substitution
                Old == Lhs, !.
        subst(_Lhs, _Rhs, Old, Old) :-            %   copy unchanged
                var(Old), !.
        subst(Lhs, Rhs, Old, New) :-            %   apply to arguments
                functor(Old, Functor, Arity),
                functor(New, Functor, Arity),
                subst(Arity, Lhs, Rhs, Old, New).

        
                subst(0, _Lhs, _Rhs, _Old, _New) :- !.
                subst(N, Lhs, Rhs, Old, New) :-
                        arg(N, Old, OldArg),
                        subst(Lhs, Rhs, OldArg, NewArg),
                        arg(N, New, NewArg),
                        M is N-1, !,
                        subst(M, Lhs, Rhs, Old, New).
                

%   occ(Subterm, Term, Times) counts the number of times that the subterm
%   occurs in the term.  It requires the subterm to be ground.  We have to
%   introduce occ/4, because occ's last argument may already be instantiated.
%   It is useful to do so, because we can use accumulator arguments to make
%   occ/4 and occ/5 tail-recursive.  NB if you merely want to check whether
%   SubTerm occurs in Term or not, it is possible to do better than this.
%   See Util:Occur.Pl .

% :- mode
%         occ(+,+,?),                     %  SubTerm,Term -> Occurrences
%         occ(+,+,+,-),                   %  SubTerm,Term,SoFar -> Total
%         occ(+,+,+,+,-).                 %  ArgNo,SubTerm,Term,SoFar -> Total


occ(SubTerm, Term, Occurrences) :-
        occ(SubTerm, Term, 0, Times), !,
        Occurrences = Times.

        occ(SubTerm, Term, SoFar, Total) :-
                Term == SubTerm, !,
                Total is SoFar+1.
        occ(_SubTerm, Term, Total, Total) :-
                var(Term), !.
        occ(SubTerm, Term, SoFar, Total) :-
                functor(Term, _Functor, Arity), !,
                occ(Arity, SubTerm, Term, SoFar, Total).

                occ(0, _SubTerm, _Term, Total, Total) :- !.
                occ(N, SubTerm, Term, SoFar, Total) :-
                        arg(N, Term, Arg),
                        occ(SubTerm, Arg, SoFar, Accum),
                        M is N-1, !,
                        occ(M, SubTerm, Term, Accum, Total).


%   The previous two predicates operate on ground arguments, and have some
%   pretence of being logical (though at the next level up).  The next one
%   is thoroughly non-logical.  Given a Term,
%       variables(Term, VarList)
%   returns a list whose elements are the variables occuring in Term, each
%   appearing exactly once in the list.  var_member_check(L, V) checks
%   that the variable V is *not* a member of the list L.  The original
%   version of variables/2 had its second argument flagged as "?", but this
%   is actually no use, because the order of elements in the list is not
%   specified, and may change from implementation to implementation.
%   The only application of this routine I have seen is in Lawrence's code
%   for tidy_withvars.  The new version of tidy uses copy_ground (next page).
%   If that is the only use, this routine could be dropped.

%:- mode
%        variables(+,-),                 %  Term -> VarList
%        variables(+,+,-),               %  Term,Accum -> VarList
%        variables(+,+,+,-),             %  Arity,Term,Accum -> VarList
%        var_member_check(+,-).          %  VarList,Variable ?


variables(Term, VarList) :-
        variables(Term, [], VarList).

        variables(Term, VarList, [Term|VarList]) :-
                var(Term),
                var_member_check(VarList, Term), !.
        variables(Term, VarList, VarList) :-
                var(Term), !.
        variables(Term, SoFar, VarList) :-
                functor(Term, _Functor, Arity), !,
                variables(Arity, Term, SoFar, VarList).

                variables(0, _Term, VarList, VarList) :- !.
                variables(N, Term, SoFar, VarList) :-
                        arg(N, Term, Arg),
                        variables(Arg, SoFar, Accum),
                        M is N-1, !,
                        variables(M, Term, Accum, VarList).

var_member_check([],    _Var).
var_member_check([Head|Tail], Var) :-
                        Var \== Head, !,
                        var_member_check(Tail, Var).

/*  In order to handle statements and expressions which contain variables,
    we have to create a copy of the given data-structure with variables 
    replaced by ground terms of some sort, do an ordinary tidy, then put
    the variables back.  Since we can use subst/3 to do this last step, a
    natural choice of working structure in the first step is a substitution
        $VAR(k) = Vk & ... & $VAR(0) = V0 & 9 = 9.
    The rest is straight-forward.  The cost of building the copy is o(E*V)
    where E is the size of the original expression and V is the number of
    variables it contains.  The final substitution is the same order of cost.
    For what it's worth, copy_ground(X,Y,_) & numbervars(X,0,_) => X == Y.
*/

% :- mode
%         copy_ground(+,-,-),             %  Term -> GroundCopy,Substitution
%         copy_ground(+,-,+,-),           %  Term->Copy, OldSubst->NewSubst
%         copy_ground(+,+,+,+,-),         %  Arity, Term->Copy, OldSubst->NewSubst
%         subst_member(+,-,-,-),          %  OldSubst,Var -> Copy,NewSubst
%         subst_member(+,-,-).            %  OldSubst,Var -> Copy ?


copy_ground(Term, Copy, Substitution) :-
        copy_ground(Term, Copy, 9=9, Substitution).

        copy_ground(Term, Copy, SubstIn, SubstOut) :-
                var(Term), !,
                subst_member(SubstIn, Term, Copy, SubstOut).
        copy_ground(Term, Copy, SubstIn, SubstOut) :-
                functor(Term, Functor, Arity),
                functor(Copy, Functor, Arity), !,
                copy_ground(Arity, Term, Copy, SubstIn, SubstOut).
        
                copy_ground(0, _Term, _Copy, SubstIn, SubstIn) :- !.
                copy_ground(N, Term, Copy, SubstIn, SubstOut) :-
                        arg(N, Term, TermN),
                        copy_ground(TermN, CopyN, SubstIn, SubstMid),
                        arg(N, Copy, CopyN),
                        M is N-1, !,
                        copy_ground(M, Term, Copy, SubstMid, SubstOut).
        
                subst_member(SubstIn, Term, Copy, SubstIn) :-
                        subst_member(SubstIn, Term, Copy), !.
                subst_member(SubstIn, Term, Copy, (Copy = Term) & SubstIn) :-
                        (   SubstIn = (('$VAR'(M) = _) & _),
                                N is M+1                %  M+1 variables seen
                        ;   N = 0                       %  SubstIn = 9=9
                        ), !,
                        Copy = '$VAR'(N).
                
                        subst_member((Copy = Vrbl) & _, Term, Copy) :-
                                Vrbl == Term, !.
                        subst_member(_ & Rest, Term, Copy) :-
                                subst_member(Rest, Term, Copy).
                

/*======================================================================== util/tidy.pl */

/*  File   : TIDY.PL
    Author : R.A.O'Keefe
    Updated: 2 June 1984
    Purpose: Limited algebraic expression simplifier.

    This is a new implementation of tidy, written in an attempt to remedy
    some of the deficiencies of the old one.  Unfortunately, it has a few
    of its own.  The only completely satisfactory approach seems to be to
    keep all expressions in bag form all the time.

    Tidy has now been split into two parts: tidy_stmt and tidy_expr.
        <stmt> ::= <stmt> # <stmt>      %   disjunction
                |  <stmt> & <stmt>      %   conjunction
                |  <expr> R <expr>      %   equation/inequality
        where R is one of = < > \= >= =<
    An <expr> is an ordinary algebraic expression.  Statements are scanned
    top-down, and no great effort is expended on them beyond a limited bit
    of evaluation.  Expressions are scanned bottom-up, and are worked hard.

    Tidy_stmt works from top down.  It doesn't bother putting statements in
    bag form, although since & (and) and # (or) are both commutative and
    associative it could well do so.  It does however do some flattening of
    statements: (E1 & E2) & E3 -> E1 & (E2 & E3).  This can do no harm.  As
    an experiment, tidy_stmt tries to put constants on the right-hand-sides
    of equations.  E.g. "x+y-3 = 0" -> "x+y = 3".  Just how useful this may
    be remains to be seen.  The code for combine_and and combine_or comes
    almost directly from the original tidy.

    The intermediate form makes use of a different representation of bags.
    A plus (times) bag is stored as +(Tree, Hole, Num) {*(Tree, Hole, Num)}.
    For example, a+b+c+3 would be stored as
        +(      +    ,  X,  3)
               / \
              +   c
             / \
            +   b
           / \
          X   a

    <expr> ::= <expr> + <expr> | <expr> - <expr> | - <expr>
            |  <expr> * <expr> | <expr> / <expr>
            |  <expr> ^ <expr> | sqrt(<expr>)
            |  <special function>(<expr>,...)
            |  <atom>           -- algebraic variable
            |  <variable>       -- treated like an atom
            |  <ok_number>         -- including rational numbers

    <tidy expr> ::= {like <expr>, but only the first column.  Also,
            numeric fragments are combined where possible, and sums
            and products are flattened.}

    <baggy expr> ::= +(Tree, Hole, Num)
                  |  *(Tree, Hole, Num)
                  |  <tidy expr> ^ <baggy expr>
                  |  <tidy expr>

    BUG: if the exponent of a term eventually simplifies to 1, the base
    emerges as a <tidy expr>, rather than a <baggy expr>.  Hence some
    simplifications will be missed.  E.g. "(1+x)^(-1)^(-1) + -1" will end
    up as "(1+x) + -1" rather than as "x".  There appears to be no easy 
    way around this problem, though keeping the base as a <baggy expr> 
    may yet prove to be feasible.  In any case, the new tidy only has this
    problem with exponents, which are generally fairly simple.

    Tidy requires simple/1 and copy_ground/3 from STRUCT.PL.

    [2 June 1984] Bug fix: the user has always been able to add its
    own rewrite rules in the form simplify_axiom(Lhs, Rhs), e.g.
    simplify_axiom(X^log(X,Y), Y).  The result of this rewrite was
    assumed to be tidy, which was not always true.  The result is
    now retidied.  This could lead to looping, where the user's rules
    undo something that tidy does.  Look at your intended use of this
    hook, and decided whether to do retidying or not.  A related bug
    was that simplify_axiom was not called for powers.
*/

% :- public
%         tidy/2,                         %  general interface
%         tidy_withvars/2,                %  same as tidy_expr
%         tidy_expr/2,                    %  tidy an expression
%         tidy_stmt/2.                    %  tidy a statement.


% :- mode
%         bag_to_tidy(+,-),               %  F(T,H,N) -> T'
%         bag_to_tidy(+,+,+),
%         combine_and(+,+,-),             %  X,Y -> X&Y
%         combine_bags(+,-),              %  apply op to baggy arguments
%         combine_or(+,+,-),              %  X,Y -> X#Y
%         combine_power(+,+,-),           %  X,Y -> X^Y
%         combine_plus(+,+,-),            %  X,Y -> X+Y
%         combine_rel(+,+,-,-),           %  X(R)Y -> X'(R)Y'
%         combine_times(+,+,-),           %  X,Y -> X*Y
%         expr_to_bag(+,-),               %  <expr> -> <baggy expr>
%         expr_to_bag(+,+,+,+,-),         %  map down args of <expr>
%         multiply_exp(+,+,-),            %  X,N -> N*X
%         multiply_out(+,+,-),            %  N,X -> N*X
%         multiply_out(+,-,+,-),          %  +(T,H),N -> +(T*N,H)
%         number_check(+,+,-),            %  maintain number-p accum
%         power_out(+,+,-),               
%         power_out(+,-,+,-),             %  *(T,H),N -> *(T^N,H)
%         relop_tidy(-,+,+,+),            %  R,X,Y -> X(R)Y or true/false
%         tidy_expr(+,-),                 %  tidy expression
%         tidy_stmt(+,-),                 %  tidy statement
%         user_tidy(+,-).                 %  invoke user's simplify_axiom s.


tidy(Old, New) :-
        tidy_stmt(Old, Mid), !, New = Mid.      %  which now tries tidy_expr
tidy(Old, Old) :-
        write('** failed: '), write(tidy(Old, '_')), nl.


tidy_withvars(Old, New) :-
        copy_ground(Old, Ground, Subst),
        tidy(Ground, Tidier),
        subst(Subst, Tidier, Mid), !,
        New = Mid.

tidy_stmt(Var, _) :-                    %  don't do anything with variables
        var(Var), !, fail.
tidy_stmt(OldOne # OldTwo, New) :- !,
        tidy_stmt(OldOne, MidOne),
        tidy_stmt(OldTwo, MidTwo), !,
        combine_or(MidOne, MidTwo, New).
tidy_stmt(OldOne & OldTwo, New) :- !,
        tidy_stmt(OldOne, MidOne),
        tidy_stmt(OldTwo, MidTwo), !,
        combine_and(MidOne, MidTwo, New).
tidy_stmt(Equation, New) :-
        tidy_relop(Equation, Relation, OldLhs, OldRhs),
        !,
        expr_to_bag(OldLhs, MidLhs),
        expr_to_bag(OldRhs, MidRhs),
        combine_rel(MidLhs, MidRhs, NewLhs, NewRhs), !,
        relop_tidy(New, Relation, NewLhs, NewRhs).
tidy_stmt(Old, New) :-
        tidy_expr(Old, New).


combine_or(true, _Y, true) :- !.         %  zero element
combine_or(false, Y, Y) :- !.           %  unit element
combine_or(_X, true, true) :- !.         %  zero element
combine_or(X, false, X) :- !.           %  unit element
combine_or(X, X, X) :- !.               %  merging identical elements
combine_or(W#X, Y, W#(X#Y)) :- !.       %  change association
combine_or(X, Y, X # Y).                %  general case

combine_and(false, _Y, false) :- !.      %  zero element
combine_and(true, Y, Y) :- !.           %  unit element
combine_and(_X, false, false) :- !.      %  zero element
combine_and(X, true, X) :- !.           %  unit element
combine_and(X, X, X) :- !.              %  merging identical elements
combine_and(W&X, Y, W&(X&Y)) :- !.      %  change association
combine_and(X, Y, X & Y).               %  general case


tidy_relop(X = Y,   =, X, Y).
tidy_relop(X < Y,   <, X, Y).
tidy_relop(X > Y,   >, X, Y).
tidy_relop(X =< Y, =<, X, Y).
tidy_relop(X >= Y, >=, X, Y).
tidy_relop(X \= Y, \=, X, Y).


relop_tidy(Value, Relation, Lhs, Rhs) :-
        ok_number(Lhs), ok_number(Rhs),
        tidy_relop(Goal, Relation, Lhs, Rhs), !,
        eval(Goal, Value).
relop_tidy(Goal, Relation, Lhs, Rhs) :-
        tidy_relop(Goal, Relation, Lhs, Rhs).


combine_rel(+(T1, H1, N1), +(T2, H2, N2), Lhs, Rhs) :- !,
        bag_to_tidy(+(T1, H1, 0), Lhs),
        eval(N2-N1, N3),
        bag_to_tidy(+(T2, H2, N3), Rhs).
combine_rel(+(T1, H1, N1), N2, Lhs, N3) :-
        ok_number(N2), !,
        eval(N2-N1, N3),
        bag_to_tidy(+(T1, H1, 0), Lhs).
combine_rel(*(T1, H1, N1), *(T2, H2, N2), Lhs,  Rhs) :-
        eval(N1 > 0), !,
        bag_to_tidy(*(T1, H1, 1), Lhs),
        eval(N2/N1, N3),
        bag_to_tidy(*(T2, H2, N3), Rhs).
combine_rel(*(T1, H1, N1), N2, Lhs, N3) :-
        ok_number(N2),
        eval(N1 > 0), !,
        eval(N2/N1, N3),
        bag_to_tidy(*(T1, H1, 1), Lhs).
combine_rel(E1, E2, Lhs, Rhs) :-
        bag_to_tidy(E1, Lhs),
        bag_to_tidy(E2, Rhs).


tidy_expr(Old, New) :-
        expr_to_bag(Old, Mid), !,
        bag_to_tidy(Mid, New).

expr_to_bag(Var, _) :-                  %  do nothing with variables
        var(Var), !, fail.
expr_to_bag(Old, Old) :-
        simple(Old), !.
expr_to_bag(Old, New) :-
        functor(Old, F, N),
        functor(Mid, F, N),
        expr_to_bag(N, Old, Mid, yes, New).

        expr_to_bag(0, _Old, Mid, yes, New) :- !,
                eval(Mid, New).
        expr_to_bag(0, _Old, Mid, no,  New) :-
                combine_bags(Mid, New).
        expr_to_bag(N, Old, Mid, EvalP, New) :-
                arg(N, Old, OldN),
                expr_to_bag(OldN, MidN),
                arg(N, Mid, MidN),
                number_check(MidN, EvalP, EvalQ),
                M is N-1, !,
                expr_to_bag(M, Old, Mid, EvalQ, New).

                number_check(N, EvalP, EvalP) :-
                        ok_number(N), !.
                number_check(_, _, no). %  not a number


combine_bags(X+Y, New) :- !,
        combine_plus(X, Y, New).
combine_bags(X-Y, New) :-
        multiply_out(-1, Y, Z), !,
        combine_plus(X, Z, New).
combine_bags(-Y, New) :- !,
        multiply_out(-1, Y, New).
combine_bags(X*Y, New) :- !,
        combine_times(X, Y, New).
combine_bags(X/Y, New) :- !,
        power_out(Y, -1, Z),
        combine_times(X, Z, New).
combine_bags(X^Y, New) :- !,
        combine_power(X, Y, Mid),
        user_tidy(Mid, New).
combine_bags(Old, New) :-
        functor(Old, F, N),
        functor(Mid, F, N),
        bag_to_tidy(N, Old, Mid),
        user_tidy(Mid, New).


user_tidy(Expr, Bag) :-                 %  apply user's rules
        simplify_axiom(Expr, Rewritten),
        !,                              %  omit expr_to_bag call if the
        expr_to_bag(Rewritten, Bag).    %  Rewritten form is always tidy.
user_tidy(Expr, Expr).


bag_to_tidy(0, _Old, _Mid) :- !.
bag_to_tidy(N, Old, Mid) :-
        arg(N, Old, OldN),
        bag_to_tidy(OldN, MidN),
        arg(N, Mid, MidN),
        M is N-1, !,
        bag_to_tidy(M, Old, Mid).

bag_to_tidy(+(T+R, R, 0), T) :- !.
bag_to_tidy(+( T , N, N), T) :- !.
bag_to_tidy(*( _T,  _H, 0), 0) :- !.
bag_to_tidy(*(T*R, R, 1), T) :- !.
bag_to_tidy(*( T , N, N), T) :- !.
bag_to_tidy(_B^0,          1) :- !.              %  B^0 = 1
bag_to_tidy(0^_X,          0) :- !.              %  0^X = 0
bag_to_tidy(1^_X,          1) :- !.              %  1^X = 1
bag_to_tidy(B^1,          B) :- !.              %  B^1 = B (B already <tidy>)
bag_to_tidy(M^ *(T*R,R,N), B^T) :-              %  M^(N*X) = (M^N)^X
        ok_number(M),
        power(M, N, B), !.
bag_to_tidy(B^X,           B^T) :- !,           %  B^X, where X is <baggy>
        bag_to_tidy(X, T).
        bag_to_tidy(*(_T, _H, _N), _E).
bag_to_tidy(Old, Old).


combine_plus(+(T1, H1, N1), +(T2, T1, N2), +(T2, H1, N3)) :- !,
        add(N1, N2, N3).
combine_plus(+(T1, H1, N1), N2, +(T1, H1, N3)) :-
        ok_number(N2), !,
        add(N1, N2, N3).
combine_plus(+(T1, H1, N1), E2, +(T1+E4, H1, N1)) :- !,
        bag_to_tidy(E2, E4).
combine_plus(0, E2, E2) :- !.
combine_plus(N1, +(T2, H2, N2), +(T2, H2, N3)) :-
        ok_number(N1), !,
        add(N1, N2, N3).
combine_plus(E1, +(T2, H2, N2), +(T2+E3, H2, N2)) :- !,
        bag_to_tidy(E1, E3).
combine_plus(E1, 0, E1) :- !.
combine_plus(E1, N2, +(H+E3, H, N2)) :-
        ok_number(N2), !,
        bag_to_tidy(E1, E3).
combine_plus(N1, E2, +(H+E4, H, N1)) :-
        ok_number(N1), !,
        bag_to_tidy(E2, E4).
combine_plus(E1, E2, +((H+E3)+E4, H, 0)) :-
        bag_to_tidy(E1, E3),
        bag_to_tidy(E2, E4).


combine_times(*(T1, H1, N1), *(T2, T1, N2), *(T2, H1, N3)) :- !,
        multiply(N1, N2, N3).
combine_times(N1, E2, Ans) :-
        ok_number(N1), !,
        multiply_out(N1, E2, Ans).
combine_times(E1, N2, Ans) :-
        ok_number(N2), !,
        multiply_out(N2, E1, Ans).
combine_times(*(T1, H1, N1), E2, *(T1*E4, H1, N1)) :- !,
        bag_to_tidy(E2, E4).
combine_times(E1, *(T2, H2, N2), *(T2*E3, H2, N2)) :- !,
        bag_to_tidy(E1, E3).
combine_times(E1, E2, *((H*E3)*E4, H, 1)) :-
        bag_to_tidy(E1, E3),
        bag_to_tidy(E2, E4).


multiply_out(0, _Old, 0) :- !.
multiply_out(1, Old, Old) :- !.
/*  The next clause has been replaced by the two following clauses for the
    sake of Press and attraction.  This clause is correct, but alas, when
    attraction moves a number out (N*X+N*X)->N*(X+X) tidy moves it back in.

multiply_out(N, +(OldTree, Hole, OldNum), +(NewTree, Hole, NewNum)) :-
        multiply(N, OldNum, NewNum), !,
        multiply_out(OldTree, Hole, N, NewTree).
*/
multiply_out(-1, +(OldTree, Hole, OldNum), +(NewTree, Hole, NewNum)) :-
        multiply(-1, OldNum, NewNum), !,
        multiply_out(OldTree, Hole, -1, NewTree).
multiply_out(N, +(OldTree, Hole, OldNum), +(NewHole+N*Exp, NewHole, NewNum)) :-
        multiply(N, OldNum, NewNum), !,
        bag_to_tidy(+(OldTree, Hole, 0), Exp).
multiply_out(N, *(OldTree, Hole, OldNum), *(OldTree, Hole, NewNum)) :- !,
        multiply(N, OldNum, NewNum).
multiply_out(N, M, P) :-
        ok_number(M), !,
        multiply(N, M, P).
multiply_out(N, Old, *(Hole*Exp, Hole, N)) :- !,
        bag_to_tidy(Old, Exp).

multiply_out(Bottom, Hole, _N, Bottom) :-
        Bottom == Hole.
multiply_out(OldX + OldY, Hole, N, NewX + NewY) :-
        multiply_exp(OldY, N, NewY), !,
        multiply_out(OldX, Hole, N, NewX).

multiply_exp(OldX * OldY, N, NewX * OldY) :- !,
        multiply_exp(OldX, N, NewX).
multiply_exp(OldX + OldY, N, NewX + NewY) :-
        multiply_exp(OldY, N, NewY), !,
        multiply_exp(OldX, N, NewX).
multiply_exp(OldNum, N, NewNum) :-
        ok_number(OldNum), !,
        multiply(N, OldNum, NewNum).
multiply_exp(Old, N, N*Old).


combine_power(B^E1, E2, B^E3) :- !,
        combine_times(E1, E2, E3).
combine_power(B, N2, Ans) :-
        ok_number(N2), !,
        power_out(B, N2, Ans).
combine_power(E1, E2, E3^E4) :-
        bag_to_tidy(E1, E3), !,
        bag_to_tidy(E2, E4).


power_out(_B, 0, 1) :- !.
power_out(B, 1, B) :- !.
power_out(B^E1, P, B^E2) :- !,
        multiply_out(P, E1, E2).
power_out(*(H1*T1, H1, 1), P, Ans) :-
        var(H1), !,
        power_out(T1, P, Ans).
power_out(*(T1, H1, N1), P, *(T2, H1, N2)) :-
        power(N1, P, N2), !,
        power_out(T1, H1, P, T2).
power_out(*(T1, H2*N1, N1), P, *(T2, H2, 1)) :- !,
        power_out(T1, H2, P, T2).
power_out(+(H0+T1, H1, 0), P, Ans) :-
        H0 == H1 /*DRAT*/, !,
        power_out(T1, P, Ans).
power_out(N, P, M) :-
        ok_number(N),
        power(N, P, M), !.
power_out(B, P, E^P) :-
        bag_to_tidy(B, E).


power_out(Bottom, Hole, _Num, Bottom) :-
        Bottom == Hole, !.
power_out(OldX * (OldB^OldP), Hole, Num, NewX * NewB) :-
        multiply_exp(OldP, Num, NewP),
        (   NewP = 1, NewB = OldB
        ;   NewB = OldB^NewP
        ), !,
        power_out(OldX, Hole, Num, NewX).
power_out(OldX * OldY, Hole, Num, NewX * (OldY^Num)) :- !,
        power_out(OldX, Hole, Num, NewX).

/*======================================================================== util/trace.pl */

%   File   : TRACE.PL
%   Author : Lawrence
%   Updated: 24 February 1984
%   Purpose: Tracing routines.
%   Needs  : writef.pl, flag.pl
        
% FIXES
%
%  (11 May 81)
%
%       Split the (now obsolete) module IOROUT into two: WRITEF and
%       TRACE (this one).
%

% :- public
%         error/3,
%         tlim/1,
%         ton/1,
%         toff/1,
%         toff/0,
%         trace_press/2,
%         trace_press/3.
% 
% :- mode
%         error(+, +, +),
%         tlim(?),
%         ton(?),
%         toff(?),
%         toff,
%         trace_press(+, +),
%         trace_press(+, +, +).

:- dynamic tracing/1.



                        % Error message handler
                        %  Prints a (writef style) message and then performs
                        %  the specified action.

error(Format, List, Action) :-
        nl,
        write('** ERROR '),
        writef_press(Format, List),
        writef_press('\n   ( %t after error )\n', [Action]),
        call(Action).


                        % Set tracing level for level conditional tracing

tlim(N) :-
        flag(tflag, Old, N),
        fwritef(user, '\nTracing level reset from %t to %t.\n', [Old,N]).


                        % Set/unset various name conditional trace_press messages
                        %  The Name "all" is treated specially by trace_press/3 to
                        %  effectively switch on ALL named tracing messages.

ton(Name) :-
        tracing(Name),
        !,
        display('You are already tracing '),
        display(Name), ttynl.
ton(Name) :-
        asserta(tracing(Name)),
        display('Now tracing '),
        display(Name), ttynl.



toff(Name) :-
        retract(tracing(Name)),
        !,
        display('No longer tracing '),
        display(Name), ttynl.
toff(Name) :-
        display('You were not tracing '),
        display(Name), ttynl.



toff :-
        abolish(tracing, 1),
        display('All named tracing switched off'), ttynl.


                        % Print out a trace_press message
                        %  There are two styles of trace_press message;
                        %  Those conditional on a specific name and those
                        %  conditional on a numeric tracing level.
                        %   Name conditional trace_press message are switched
                        %   on and of using ton(_) and toff(_)
                        %   Number conditional trace_press messages are dependent
                        %   on the tlim(_) flag which specifies the current
                        %   level of tracing.

trace_press(Format, N) :-
        trace_press(Format, [], N).


trace_press(Format, List, Name) :-
        atom(Name),
        ( tracing(Name)  ;  tracing(all) ),
        !,
        writef_press(Format, List).
trace_press(Format, List, N) :-
        integer(N),
        flag(tflag, M, M),
        N =< M,
        !,
        writef_press(Format, List).
trace_press(_, _, _).

/*======================================================================== util/writef.pl */

%   File   : WRITEF.PL
%   Author : Lawrence + Richard
%   Updated: 13 October 1984
%   Purpose: Formatted write routine (and support)

%          . Compile this module.
%          . WRITEF requires no other modules.
        
% FIXES
%
%  (11 May 81)  LB
%
%       Split the (now obsolete) module IOROUT into two: WRITEF (this one)
%       and TRACE.
%       Added cuts to writefs to make it determinate (it's tail recursive).
%
%  (8 September 82)     ROK
%
%       Added a clause to writef to allow the format to be a string.
%       Added the format items nL, nR, nC for atoms/numbers/strings.
%       Added the %s format code.  Made getxxx things grammar rules.
%
%  (9 September 82)     ROK
%
%       Fixed long-standing bug in ttyprint: 'tell' was 'see' !!
%
%  (22 June 83)         ROK
%
%       Added fwrite/2 and fwritef/3 by analogy to fprintf.
%       They are very often useful.
%       Also added the %i (indirect) format item, and the \e
%       escape (generates ESC) for talking to terminals.
%
%  (10 September 1983)  ROK
%
%       Added the %g (agglutinated) format item.  The idea of this is that
%       you can have a term like +(A,B,C,D) written as A + B + C + D.  ASA
%       is the only program to use it so far, but since such records are
%       quite a bit more compact than lists, it sems like a good idea.
%
%       Added the %x (ignore) format item, so that you can compute
%       a format : get_format(Key,Fmt), writef(Fmt, [List]) where
%       some of the variations don't want to display all the arguments.
%
%       Added the \b (backspace) and \f (formfeed) escapes.  This wants
%       to be done when strings are read, and wants to be exactly the same
%       as C.  Maybe in the next Prolog system...
%
%       If the list argument is neither [] nor a list, it will be turned
%       into a list of one element.  I keep forgetting to do this in my
%       source code, so writef might as well do it fo me.
%
%       Changed uses of & and # as operators to uses as function symbols,
%       so this file can be loaded when you're not using those operators.
%       Also made the logical stuff treat , as conjunction and ; (same as
%       |) as disjunction.  Renamed all prexpr's subroutines to prexpr,to
%       remove possible name conflicts.  That was a bit dubious, but I also
%       renamed special->wf_char and action->wf_act; those two were *bound*
%       to get in someone's way sooner or later, probably mine.
%
%    (15 September 1983)        ROK
%
%       Added the %v hack, which calls numbervars on the items in the list.
%       This is to make variables come out as letters, which I think looks
%       pretty, and it is harmless, because writef fails anyway!
%
%    (13 October 1984)  ROK
%
%       Added the %j feature, inspired by ~S in MacLisp's (FORMAT ...).
%       The other likely characters being used up, I had to use the
%       plural letter from Esperanto, e.g. "bildo%8jn" -> bildon/bildojn
%       Sorry about using numeric codes, but that is no worse than ":",
%       and I want a wider range of endings than ~S provides.
%


% :- public
%         prconj/1,               %   print conjunction
%         prexpr/1,               %   print logical expression
%         prlist/1,               %   print list, one per line
%         ttyprint/1,             %   print on terminal
%         fwritef/2,
%         fwritef/3,              %   formatted write to file
%         writef_press/1,
%         writef_press/2.               %   formatted write
% 
% 
% :- mode
%         ttyprint(?),
%         prlist(?),
%         prconj(?),
%         prexpr(?),
%                 prexpr(+,+,-,?,?),
%                 prexpr(+,-,-,-),
%                 prexpr(+,+),
%         fwritef(+,+),
%         fwritef(+,+,+),
%         writef_press(+),
%         writef_press(+,+),
%                 wf_act(+,+,-),
%                 getcode(-,+,-),
%                 getdigits(+,-,+,-),
%                 getpad(+,-),
%                 getpad(+,+,-),
%                 getpad(-,-,+,-),
%                 padout(+),
%                 padout(+,+,+),
%                 padout(+,+,+,-,-),
%                 praggl(+,+,+,+),
%                 wf_char(+,-),
%                 wf_suffix(+,+,-),
%                 writelots(?,+),
%                 writef_press_nonlist(+,-),
%                 writefs(+,+).
 



                        % Print (therefore use pretty printing) onto
                        %  the terminal (no-one uses this routine).

ttyprint(X) :-          % fwritef(user, '%p', [X])
        telling(Old),
        tell(user),
        print(X),
        tell(Old).



                        % Print a list, one element per line

prlist([]) :- !.
prlist([Head|Tail]) :-
        tab(4), print(Head), nl,
        prlist(Tail).



                        % Print a conjunction, one element per line

prconj(true) :- !.
prconj(&(A,B)) :-
        prconj(A), !,
        prconj(B).
prconj((A,B)) :-
        prconj(A), !,
        prconj(B).
prconj(A) :-
        tab(4), print(A), nl.



                        % Pretty print a simple logical expression
                        %  This is done by first printing the logical
                        %  structure using X1 X2 etc to name the components
                        %  and then printing the 'values' of X1 X2 etc on
                        %  separate lines.

prexpr(Expr) :-
        prexpr(Expr, 1, _, Elements, []),
        nl, write('  where :'), nl,
        prexpr(Elements, 1).


prexpr(Term, Nin, Nout, Elements, Z) :-
        prexpr(Term, Conn, A, B), !,
        put("("), prexpr(A, Nin, Nmid, Elements, Rest),
        put(" "), put(Conn),
        put(" "), prexpr(B, Nmid, Nout, Rest, Z),
        put(")").
prexpr(Term, Nin, Nout, [Term|Z], Z) :-
        Nout is Nin+1,
        put("X"), write(Nin).


        prexpr(&(A,B),  38, A, B).      %  38 is "&"
        prexpr(#(A,B),  35, A, B).      %  35 is "#"
        prexpr((A,B),   38, A, B).      %  38 is "&"
        prexpr((A;B),  124, A, B).      % 124 is "|"


prexpr([Head|Tail], M) :-
        write('    X'), write(M), write(' =  '),
        print(Head), nl,
        N is M+1, !,
        prexpr(Tail, N).
prexpr([], _).


                        % Formatted write utility
                        %  This converts the format atom to a string and
                        %  uses writef_presss on that. Note that it fails back over
                        %  itself to recover all used space.

fwritef(File, Format) :-
        fwritef(File, Format, []).

fwritef(File, Format, List) :-
        telling(Old),
        tell(File),
        writef_press(Format, List),
        tell(Old).

writef_press(Format) :-
        writef_press(Format, []).


writef_press(Format, Item) :-
        writef_nonlist(Item, List), !,
        writef(Format, List).
writef_press([F|String], List) :-
        writefs([F|String], List),
        fail.
writef_press(Format, List) :-
        atom(Format),
        name(Format, Fstring),
        writefs(Fstring, List),
        fail.
writef_press(_, _).


writef_nonlist([], _) :- !, fail.
writef_nonlist([_|_], _) :- !, fail.
writef_nonlist(Item, [Item]).



                        % Formatted write for a string (ie a list of
                        %  character codes).

writefs([], _List).

writefs([37,A|Rest], List) :-           %   %<action>
        wf_act(A, List, More), !,
        writefs(Rest, More).

writefs([37,D|Rest], [Head|Tail]) :-    %   %<columns><just>
        "0" =< D, D =< "9",
        getpad(Size, Just, [D|Rest], More),
        padout(Head, Size, Just), !,
        writefs(More, Tail).

writefs([92,C|Rest], List) :-           %   \<special>
        wf_char(C, Char),
        put(Char), !,
        writefs(Rest, List).

writefs([92|Rest], List) :-             %   \<character code in decimal>
        getcode(Char, Rest, More),
        put(Char), !,
        writefs(More, List).

writefs([Char|Rest], List) :-           %   <ordinary character>
        put(Char), !,
        writefs(Rest, List).



wf_act( 99, [Head|Tail], Tail) :-       %   Conjunction
        nl, !, prconj(Head).

wf_act(100, [Head|Tail], Tail) :-       %   Display
        display(Head).

wf_act(101, [Head|Tail], Tail) :-       %   Expression
        nl, !, prexpr(Head).

wf_act(102, List, List) :-              %   Flush
        ttyflush.

wf_act(103, [Head|Tail], Tail) :-       %   aGglutinated
        functor(Head, F, N),
        praggl(1, N, F, Head).

wf_act(105, [Format,List|Tail], Tail):- %   Indirect
        writef_press(Format, List).

wf_act(106, [1,S,_|Tail], Tail) :- !,   %   "unua" or "multaJ"?
        write(S).
wf_act(106, [_,_,P|Tail], Tail) :-
        write(P).

wf_act(108, [Head|Tail], Tail) :-       %   List
        nl, !, prlist(Head).

wf_act(110, [Char|Tail], Tail) :-       %   iNteger (character)
        put(Char).

wf_act(112,  [Head|Tail], Tail) :-      %   Print
        print(Head).

wf_act(113, [Head|Tail], Tail) :-       %   Quoted
        writeq(Head).

wf_act(114, [Thing,Times|Tail],Tail) :- %   Repeatedly
        writelots(Times, Thing).

wf_act(115, [Head|Tail], Tail) :-       %   String
        padout(Head).

wf_act(116, [Head|Tail], Tail) :-       %   Term
        print(Head).

wf_act(118, List, List) :-              %   numberVars
        numbervars(List, 0, _).

wf_act(119, [Head|Tail], Tail) :-       %   Write
        write(Head).

wf_act(120, [_|Tail], Tail).            %   X (skip)




wf_char( 37, 37).               %  %
wf_char( 92, 92).               %  \
wf_char( 98,  8).               %  Backspace
wf_char(101, 27).               %  Escape
wf_char(102, 12).               %  Formfeed
wf_char(108, 10).               %  Linefeed
wf_char(110, 10).               %  Newline
wf_char(114, 13).               %  Return
wf_char(116,  9).               %  Tab



getcode(Char) -->
        getdigits(3, Digits), !,
        {   Digits \== [], name(Char, Digits),  Char < 128   }.

getdigits(Limit, [Digit|Digits]) -->
        {   Limit > 0   },
        [Digit],        {   "0" =< Digit, Digit =< "9"   },
        {   Fewer is Limit-1   }, !,
        getdigits(Fewer, Digits).
getdigits(_, []) --> [].


writelots(N, T) :-
        N > 0,
        write(T),
        M is N-1, !,
        writelots(M, T).
writelots(_, _).


%   praggl(ArgNo, Arity, Func, Term)
%   prints the arguments of the term one after the other, starting with
%   argument ArgNo.  Arguments are separated by " Func ".  This is meant
%   mainly for ASA, but should be generally useful.

praggl(N, N, _, Term) :- !,
        arg(N, Term, Arg),
        print(Arg).
praggl(L, N, F, Term) :-
        arg(L, Term, Arg),
        print(Arg),
        put(32), write(F), put(32),
        M is L+1, !,
        praggl(M, N, F, Term).


/*  The new formats are %nC, %nL, and %nR for centered, left, and right
    justified output of atoms, integers, and strings.  This is meant to
    simplify the production of tabular output when it is appropriate.
    At least one space will always precede/follow the item written.
*/

getpad(Size, Just) -->
        getdigits(3, Digits),   {   name(Size, Digits)   },
        [Char],                 {   getpad(Char, Just)   }.

        getpad(114, r).         %  right justified
        getpad(108, l).         %  left justified
        getpad(106, j).         %  plural ending
        getpad( 99, c).         %  centered
        getpad( 82, r).         %  right justified
        getpad( 76, l).         %  left justified
        getpad( 74, j).         %  plural ending
        getpad( 67, c).         %  centered



                                %   padout(A,S,J) writes the item A in a
                                %   field of S or more characters, Justified.

padout(Number, Style, j) :-
        wf_suffix(Style, Number, Suffix),
        !,
        write(Suffix).
padout(Atom, Size, Just) :-
        atomic(Atom),
        name(Atom, Name), !,
        padout(Name, Size, Just).
padout(String, Size, Just) :-
        length(String, Length),
        padout(Just, Size, Length, Left, Right),
        tab(Left),
        padout(String),
        tab(Right).

                                %   padout(Just,Size,Length,Left,Right)
                                %   calculates the number of spaces to put
                                %   on the Left and Right of an item needing
                                %   Length characters in a field of Size.

padout(l, Size, Length, 0, Right) :-
        Excess is Size-Length, !,
        getpad(Excess, 1, Right).
padout(r, Size, Length, Left, 0) :-
        Excess is Size-Length, !,
        getpad(Excess, 1, Left).
padout(c, Size, Length, Left, Right) :-
        Prefix is (Size-Length)//2,
        getpad(Prefix, 1, Left),
        Remainder is (Size-Length)-Left, !,
        getpad(Remainder, 1, Right).


                                %   getpad(A,B,Max) returns the maximum.

getpad(A, B, A) :- A >= B, !.
getpad(_, B, B).


                                %   padout(Str) writes a string.

padout([Head|Tail]) :-
        put(Head), !,
        padout(Tail).
padout([]).


wf_suffix(1,    1,      '').            %  1 = -/s
wf_suffix(1,    _,      s).
wf_suffix(2,    1,      '').            %  2 = -/es
wf_suffix(2,    _,      es).
wf_suffix(3,    1,      y).             %  3 = y/ies
wf_suffix(3,    _,      ies).
wf_suffix(4,    1,      fe).            %  4 = fe/ves
wf_suffix(4,    _,      ves).
wf_suffix(5,    1,      s).             %  5 = s/- (for verbs)
wf_suffix(5,    _,      '').
wf_suffix(6,    1,      es).            %  6 = es/- (for verbs)
wf_suffix(6,    _,      '').
wf_suffix(7,    1,      ies).           %  7 = ies/y (for verbs)
wf_suffix(7,    _,      y).
wf_suffix(8,    1,      '').            %  8 = -/j
wf_suffix(8,    _,      j).

/*======================================================================== pressdir/methods/chunk.pl */

%   Press:Chunk.                        Updated: 30 August 82
%   Clause removed 19.2.81, modified 28.4.81, 26.5.81, 10.9.81.
%   subst_mesg moved to Misc, rest made compilable 12.9.81.

% :- public
%         changeunknown/3,
%         changevar/4,
%         good_subterm/4.         %   just so that 'setof' can find it.
% 
% :- mode
%         changeunknown(+, +, -),
%         changevar(+, +, +, -),
%         good_subterm(+, +, +, -),
%             good_subterm(+, -),
%                 good_subterm(+, +, -).


/*  There is a non-trivial BUG:
    change of unknown sometimes fails when it should apparently succeed,
    e.g. when solving for x in the equation
        y + x*(x+1)^(-1)*6 + (y+4)*x*(x+1)^(-1)*(-3) = 1
    (this is problem  d2hard  in the Lewis set).  The problem is due to
    the lack of associativity in the simple matcher, so that the subterm
    x*(x+1)^(-1) actually appears only once in this equation.  Fixing
    this will require extensive reworking of good_subterm/subterm.
*/

%   changeunknown(Eqn, Var, Ans) determines whether there is a suitable subterm 
%   (Term) of Eqn (which contains the unknown Var) for changing the unknown.
%   The equation is assumed to be in weak normal form.

changeunknown(Lhs=_Rhs, Var, Term) :-
        occ(Var, Lhs, N), N > 1,
        setof(Term, good_subterm(Lhs, Var, N, Term), TermSet),
        extreme_term(TermSet, >, Term),!.

%   changevar generates a new variable NewVar and performs the relevant
%   substitution.

changevar(Term, Eqn, New, NewEqn) :-
        identifier(New),
        subst_mesg(Term=New, Eqn, NewEqn).

%   find good subterms for the change of unknown method.

good_subterm(Exp, Var, N, Term) :-
        good_subterm(Exp, Term),
        occ(Var, Term, M), M > 0,
        occ(Term, Exp, L), L > 1,
        N is L*M.
        
        %   good_subterm(Term, Exp) is true when Term is a non-atomic subterm
        %   of Exp.  This enables us to drop the "Term \= Var" requirement in 
        %   good_subterm/4.

        good_subterm(Exp, _Term) :-
                (   atomic(Exp) ; ok_number(Exp)   ), !, fail.
        good_subterm(Exp, Term) :-
                functor(Exp, _, N),
                good_subterm(N, Exp, Term).

            %   good_subterm(N,E,T) <- T is a good subterm of Exp's Nth argument

                good_subterm(0, Exp, Term) :- !, Term = Exp.
                good_subterm(N, Exp, Term) :-
                        arg(N, Exp, Arg),
                        good_subterm(Arg, Term).
                good_subterm(N, Exp, Term) :-
                        M is N-1, !,
                        good_subterm(M, Exp, Term).

/*======================================================================== pressdir/methods/collec.pl */

/*  COLLEC      A more efficient version        Leon
                                Updated: 15 February 83
*/
/*****************************************/
/* COLLECTION ROUTINES*/
/*****************************************/
%declarations%
% :-  public              collect/3,
%                         applicable/3,
%                         newform/4.
% 
% :- mode                 collect(+,+,-),
%                         applicable(+,+,?),
%                         newform(+,+,+,?),
%                         template_match(+,+,?).


collect(X,Exp,New1) :- 
        mult_occ(X,Exp),
        least_dom(X,Exp),               % Expression is in weak normal form
        collax(U,Template,Rewrite),
        applicable(Template,Exp,Rest),
        contains(X,U),
        !,
        newform(Exp,Rewrite,Rest,New),
        tidy(New,New1).

/* TRY TO COLLECT WITHIN A SUBTERM*/

collect(X,Old,New) :- 
        mult_occ(X,Old),
        decomp(Old,[Fun|Args]),
        corresponding_arguments(Args,Arg,NewArgs,NewArg),
        collect(X,Arg,NewArg),
        recomp(New,[Fun|NewArgs]),
        !.

% Does a rewrite rule match an expression? 
% A more efficient version than relying on the built in commutativity
% and associativity of the matcher

applicable(Template,Exp,Rest) :-
        ident_operators(Template,Exp),          % quick test
        template_match(Template,Exp,Rest).

    ident_operators(A,B) :- A=..[Op|_], B=..[Op|_].

template_match(Template,Exp,Rest) :-
        Template=..[Op,C,D],
        ac_op(Op,_,_,_,_),
        !,
        decomp(Exp,[Op|Args]),
        select(A,Args,Rem),
        perm2(C,D,Pat1,Pat2),
        exp_match(A,Pat1,Pat2,Rem,Rest),
        !.

template_match(Template,Exp,[]) :-
        match(Exp,Template).

exp_match(A,C,D,Rem,Rest) :-
        match(A,C),             % stop match backtracking (the key idea)
        !,
        exp_match1(A,C,D,Rem,Rest).

exp_match1(_A,_C,D,Rem,_Rest) :-
        ops_to_find(D,Ops),
        tidy_ops(Ops,Term),
        absent(Term,Rem),
        !,
        fail.

exp_match1(A,C,D,Rem,Rest) :-
        match(A,C),
        select(B,Rem,Rest),
        match(B,D),
        !.

ops_to_find(Pat,Pat) :- atomic(Pat), !.
ops_to_find(Pat,var) :- var(Pat), !.
ops_to_find(Pat,Term) :-
        Pat =.. [Op|Args],
        ops_list(Args,NewArgs),
        Term =.. [Op|NewArgs].

ops_list([],[]) :- !.
ops_list([H|T],[NewH|NewT]) :-
        ops_to_find(H,NewH),
        ops_list(T,NewT).

absent(_,[]) :- !.
absent(_Ops,[H|_Rest]) :-
        compatible(_Term,H),
        !,
        fail.

absent(Term,[_|Rest]) :- absent(Term,Rest).

compatible(var,_H) :- !.
compatible(Term,H) :-
        Term=..[Op|Args],
        H=..[Op|Terms],
        list_compatible(Args,Terms).

list_compatible([],[]) :- !.
list_compatible([H|T],Terms) :-
        select(A,Terms,Rest),
        compatible(H,A),
        list_compatible(T,Rest),
        !.

newform(_,Rewrite,[],Rewrite) :- !.

newform(Exp,Rewrite,Rest,New) :-
        Exp=..[Op|_],
        recomp(Term,[Op|Rest]),
        New=..[Op,Rewrite,Term].

tidy_ops(var*Term,New) :- !, tidy_ops(Term,New).
tidy_ops(Term*var,New) :- !, tidy_ops(Term,New).
tidy_ops(var+Term,New) :- !, tidy_ops(Term,New).
tidy_ops(Term+var,New) :- !, tidy_ops(Term,New).
tidy_ops(Term,Term).

/*======================================================================== pressdir/methods/attrac.pl */

/*  ATTRAC  Modified by Leon    Updated: 15 February 83
*/

%declarations%

% :- public               attract/3.
% 
% :- mode                 attract(+,+,-),
%                         closeness(+,+,?),
%                         attractable(+,+,-),
%                         tree_size(+,+,-),
%                         tree_size(+,+,+,+,-).
%end%

        %---------------------------------------%
        %          Attraction Routines          %
        %---------------------------------------%

attract(X,Exp,New) :-
        closeness(X,Exp,EC),
        attractable(X,Exp,New,EC),
        closeness(X,New,NC),
        NC < EC,
        !.

%   Try to apply an attraction axiom

attractable(X,Old,New1,Closeness) :-
        mult_occ(X,Old),
        least_dom(X,Old), 
        attrax(U & V,Template,Rewrite), % Assumes attraction between 2
        applicable(Template,Old,Rest),  % subterms only
        contains(X,U),
        contains(X,V),
        newform(Old,Rewrite,Rest,New),
        tidy(New,New1),
        closeness(X,New1,NewC),
        NewC < Closeness,  !,   % Insist on local improvement
        trace_press('%t  attracted in %t gives  %c\n',[X,Old,New1],2).


%   Try to attract within a sub-term

attractable(X,Old,New,_) :- 
        mult_occ(X,Old),
        decomp(Old,[Fun|Args]),
        corresponding_arguments(Args,Arg,NewArgs,NewArg),
        closeness(X,Arg,C),
        attractable(X,Arg,NewArg,C),
        recomp(New,[Fun|NewArgs]).

/* Heuristic measure of closeness used by attraction */

%   The "closeness" of all the occurrences of a kernel X in an expression
%   Exp is the number of arcs in the smallest subtree of Exp which holds
%   all the occurrences of X.  Strictly speaking, we ought to consider a
%   sum or product as a single node: closeness(x, x+x+x, 3).  Until PRESS
%   generally uses bags, this is not done, so closeness(x, x+x+x, 4).  It
%   is easier to compute the number of nodes in the subtree, there is gone
%   less arc.  The algorithm and corrected code are by R.A.O'Keefe.

closeness(X, Exp, Arcs) :-
        tree_size(X, Exp, Nodes),
        Arcs is Nodes-1.

tree_size(X, X, 1) :- !.
tree_size(_X, Exp, 0) :-
        atomic(Exp), !.
tree_size(X, Exp, Size) :-
        functor(Exp, _, N),                     %  cut not needed after all
        tree_size(N, Exp, X, 0, Size).

tree_size(0, _Exp, _X, 0, 0) :- !.                %  X doesn't occur in Exp
tree_size(0, _Exp, _X, M, N) :- !,                %  X does occur in Exp,
        N is M+1.                               %  so count Exp node too.
tree_size(N, Exp, X, Acc, Size) :-
        arg(N, Exp, Arg),
        tree_size(X, Arg, ArgSize),
        NewAcc is Acc+ArgSize,
        M is N-1, !,
        tree_size(M, Exp, X, NewAcc, Size).

/*
closeness(X,Exp,Num) :-
        findall_press(Path,position(X,Exp,Path),Paths),
        closeness(Paths,Num),
        !.

closeness([],0) :- !.

closeness([Path],Num) :- length(Path,Num).

closeness([Path|Rest],Num) :-
        dest_list(Head,Tail,Path),
        tree_divide(Head,Rest,Group,Others),
        closeness([Tail|Group],M),
        closeness(Others,N),
        Num is M + N + 1.

dest_list(Head,Tail,[Head|Tail]) :- !.

tree_divide(Head,Rest,Group,Others)  :-
        tree_divide(Head,Rest,Group,[],Others,[]).

tree_divide(_,[],Group,Group,Others,Others) :- !.

tree_divide(Head,[Path|Rest],Group,P,Others,Q) :-
        dest_list(Head,_,Path),
        !,
        tree_divide(Head,Rest,Group,[Path|P],Others,Q).

tree_divide(Head,[Path|Rest],Group,P,Others,Q) :-
        tree_divide(Head,Rest,Group,P,Others,[Path|Q]).
*/

/*======================================================================== pressdir/axioms/simp_ax.pl */


/* SIMP.AX : Simplification axioms for TIDY

						Bernard Silver
						Updated: 13 May 82
*/

% % PUBLIC 
% :- public simplify_axiom/2.
% 
% % MODES
% 
% :- mode simplify_axiom(+,-).

% Logs
simplify_axiom(log(U,U^V),V) :- !.
simplify_axiom(log(_A,1),0) :- !.
simplify_axiom(U^log(U,V),V) :- !.
simplify_axiom(U ^( N*log(U,V)),Ans) :- ok_number(N),tidy(V^N,Ans),!.
% Normalize square roots
simplify_axiom(sqrt(U),U^number((+),[1],[2])) :- !.

% Trig cancelling pairs
simplify_axiom(cos(arccos(X)),X) :- !.
simplify_axiom(arccos(cos(X)),X) :- !.

simplify_axiom(arcsin(sin(X)),X) :- !.
simplify_axiom(sin(arcsin(X)),X) :- !.

simplify_axiom(tan(arctan(X)),X) :- !.
simplify_axiom(arctan(tan(X)),X) :- !.

simplify_axiom(sec(arcsec(X)),X) :- !.
simplify_axiom(arcsec(sec(X)),X) :- !.

simplify_axiom(cosec(arccosec(X)),X) :- !.
simplify_axiom(arccosec(cosec(X)),X) :- !.

simplify_axiom(cot(arccot(X)),X) :- !.
simplify_axiom(arccot(cot(X)),X) :- !.

% Hyperbolic cancelling pairs
simplify_axiom(sinh(arcsinh(X)),X) :- !.
simplify_axiom(arcsinh(sinh(X)),X) :- !.

simplify_axiom(cosh(arccosh(X)),X) :- !.
simplify_axiom(arccosh(cosh(X)),X) :- !.

simplify_axiom(tanh(arctanh(X)),X) :- !.
simplify_axiom(arctanh(tanh(X)),X) :- !.

simplify_axiom(sech(arcsech(X)),X) :- !.
simplify_axiom(arcsech(sech(X)),X) :- !.

simplify_axiom(cosech(arccosech(X)),X) :- !.
simplify_axiom(arccosech(cosech(X)),X) :- !.

simplify_axiom(coth(arccoth(X)),X) :- !.
simplify_axiom(arccoth(coth(X)),X) :- !.

% Common trig cases
simplify_axiom(sin(arccos(X)),(1-X^2)^(1/2)#(1-X^2)^(1/2)*(-1)) :- !.

simplify_axiom(cos(arcsin(X)),(1-X^2)^(1/2)#(1-X^2)^(1/2)*(-1)) :- !.

simplify_axiom(arcsin(cos(X)),90-X) :- !.

simplify_axiom(arccos(sin(X)),90-X) :- !.

/*======================================================================== pressdir/package/match.pl */

%   File   : PRESS:MATCH
%   Author : Press Group
%   Updated: 14 March 82
%   Purpose: Pattern Matcher for associative commutative functions.

% :- public
% 	corresponding_arguments/4,	%   (replaces any1)
% 	decomp/2,
% 	match/2,
% 	recomp/2,
% 	ac_op/5.
% 
% :- mode
% 	corresponding_arguments(+, -, -, -),
% 	decomp(+, ?),
% 	    ac_decomp(+, +, ?, ?),
% 	    ac_op(+, ?, ?, ?, -),
% 	recomp(?, +),
% 	    ac_recomp(+, +, ?),
% 	match(+, ?),
% 	    match_arguments(+, +, +),
% 	    split_two_ways(+, ?, ?).


%   replace OldA by NewA in one element of Old, giving New.

corresponding_arguments([OldA|Tail], OldA, [NewA|Tail], NewA).
corresponding_arguments([Head|Tail], OldA, [Head|Rest], NewA) :-
	corresponding_arguments(Tail, OldA, Rest, NewA).


%------------------------------------------------------------------------%

%   decomp(Term, List) and recomp(Term, List) are generalisations of univ,
%   i.e. Term =.. List, treating the four known associative commutative
%   operators as function symbols having any number of arguments.

%   They are called in the patterns
%	decomp(Old, [Op|Olds]),		%   var(Op)
%	any1(<foo>, Olds, News),
%	recomp(New, [Op|News]),
%   in collect and attract, and elsewhere in the form
%   	decomp(Old, [+|_])	trig_fac,multiply_through,weaknf
%	recomp(New, [+|_])	make_poly.

%   ac_op(Op, X, Y, X Op Y, Idn) means that Op is known to be a commutative
%   associative operator, that X Op Y =.. [Op,X,Y], and that Idn Op X = X
%   i.e. Idn is the identity of Op.  All four operators have an identity.
%   The fifth clause is a hack for 1/(X*Y), but is still true.

ac_op((+), X, Y, X+Y, 0)     :- !.
ac_op(*, X, Y, Y*X, 1)     :- !.	%   note reversal!
ac_op(&, X, Y, X&Y, true)  :- !.	%   conjunction
ac_op(#, X, Y, X#Y, false) :- !.	%   disjunction
%%ac_op(*, X^N, Y^N, (Y*X)^N, 1) :- !.


decomp(Term, [Op|Args]) :-
	functor(Term, Op, 2),
	ac_op(Op, _, _, _, _), !,
	ac_decomp(Term, Op, Args, []).
%%decomp((X*Y)^(-1), [*|Args]) :-		%   special hack
%%	ac_decomp((X*Y)^(-1), *, Args, []).
decomp(Term, List) :-
	Term =.. List.


	ac_decomp(Term, _Op, [Term|R], R) :-
		var(Term), !.
	ac_decomp(Term, Op, L, R) :-
		ac_op(Op, X, Y, Term, _), !,
		ac_decomp(X, Op, L, M), !,
		ac_decomp(Y, Op, M, R).
	ac_decomp(Term, _Op, [Term|R], R).



recomp(Term, [Op|Args]) :-
	ac_op(Op, _, _, _, _), !,
	ac_recomp(Args, Op, Term).
recomp(Term, List) :-
	Term =.. List.

	ac_recomp([[]|Args], Op, Term) :- !,
		ac_recomp(Args, Op, Term).
	ac_recomp([Exp], _Op, Term) :- !,
		Term = Exp.
	ac_recomp([Exp|Args], Op, Term) :-
		ac_op(Op, Exp, Mid, Term, _), !,
		ac_recomp(Args, Op, Mid).
	ac_recomp([], Op, Term) :-
		ac_op(Op, _, _, _, Term).


%------------------------------------------------------------------------%

%   match two terms, using the associativity and commutativity of + and *.

match(Lhs, Rhs) :-
	functor(Lhs, Op, 2),
	ac_op(Op, Arg1, Arg2, Rhs, _), !,
	decomp(Lhs, [Op|Olds]), !,
	split_two_ways(Olds, [C1|Cs1], [C2|Cs2]),
	recomp(D1, [Op,C1|Cs1]),
	recomp(D2, [Op,C2|Cs2]),
	match(D1, Arg1),
	match(D2, Arg2).

match(Lhs, Lhs) :-		%   atoms match themselves
	atomic(Lhs), !.

match(Neg, -1*Pos) :-		%   hack round the representation of
	ok_number(Neg),		%   negative numbers
	eval(Neg < 0),		%   rationals are around now!
	eval(-Neg, Pos), !.
match(-1*Pos, Neg) :-		%  can't happen if Lhs is tidied first
	ok_number(Neg),
	eval(Neg < 0),
	eval(-Neg, Pos), !.
match(Lhs, Rhs) :-
	functor(Lhs, Functor, Arity),
	functor(Rhs, Functor, Arity), !,
	match_arguments(Arity, Lhs, Rhs).


	match_arguments(0, _Lhs, _Rhs) :- !.
	match_arguments(N, Lhs, Rhs) :-
		arg(N, Lhs, LhsNth),
		arg(N, Rhs, RhsNth),
		match(LhsNth, RhsNth),
		M is N-1,
		match_arguments(M, Lhs, Rhs).


	split_two_ways([Head|Tail], A, B) :-
		split_two_ways(Tail, A1, B1),
		(   A = [Head|A1], B = B1
		;   B = [Head|B1], A = A1
		).
	split_two_ways([], [], []).

%   Given a Term, discover all the constants, atoms, and functors occuring in
%   it.  The Term is known to be ground.  Special code for matching for Leon.
/*
functors_in(Term, List) :-
	functors_in(Term, L, []),
	sort(L, List).

	functors_in(Term, [Term|R], R) :-
		atom(Term), !.
	functors_in(Term, [Abso|R], R) :-
		number(Term), !,
		eval(abs(Term), Abso).
	functors_in(Term, [Head|L], R) :-
		functor(Term, Functor, Arity),
		functor(Head, Functor, Arity), !,
		functors_in(Arity, Term, L, R).

		functors_in(0, Term, R, R) :- !.
		functors_in(N, Term, L, R) :-
			arg(N, Term, Argument),
			functors_in(Argument, L, M),
			K is N-1, !,
			functors_in(K, Term, M, R).
*/

/*======================================================================== pressdir/package/diff.pl */

%   Press:Diff.				Updated: 12 Sept 81

%======================================================================%
%			Differential Calculus		19.2.81	       %
%======================================================================%

% :- public diffwrt/3.
% :- mode
%     diffwrt(+, -, +),
% 	dx(+, -, +),
% 	    exactly_one_arg(+, +, -),
% 		exactly_one_arg(+, +, +, ?).


diffwrt(Exp, Ans, Var) :-
	trace_press('Differentiating %c with respect to %t\n', [Exp, Var], 1),
	dx(Exp, Der, Var),
	tidy(Der, Ans),
	trace_press('   gives : %c\n', [Ans], 1), !.


dx(Exp, 0, X) :-
	freeof(X, Exp), !.

dx(X, 1, X) :- !.

dx(X^N, N*X^M, X) :-
	freeof(X, N),
	tidy(N-1, M), !.

dx(Exp^X, Exp^X*log(e,Exp)^(-1), X) :-
	freeof(X, Exp), !.

dx(log(e,X), X^(-1), X) :- !.

dx(tan(X), sec(X)^2, X) :- !.

dx(cot(X), -1*cosec(X)^2, X) :- !.

dx(sec(X), sec(X)*tan(X), X) :- !.	%  is this a good way to say it?

dx(arcsin(X), (1 + -1*X^2)^(-2 ^ -1), X) :- !.

dx(cosec(X), -1*cos(X)*cosec(X)^2, X) :- !.

dx(arcsin(X), (1 + -1*X^2)^(-2 ^ -1), X):- !.

dx(cosec(X), -1*cos(X)*cosec(X)^2, X):- !.

dx(arctan(X), (1+X^2)^(-1), X):- !.

dx(sin(X), cos(X), X) :- !.

dx(cos(X), -1*sin(X), X) :- !.

dx(A+B, DA+DB, X) :- !, 
	dx(A, DA, X), !,
	dx(B, DB, X).

dx(C*A, C*DA, X) :-
	freeof(X, C),  !,  dx(A, DA, X).

dx(A*C, DA*C, X) :-
	freeof(X, C),  !,  dx(A, DA, X).

dx(A/C, DA/C, X) :-
	freeof(X, C),  !,  dx(A, DA, X).

dx(C/A, -1*C*DA/A^2, X) :-
	freeof(X, C), !, dx(A, DA, X).

dx(A*B, A*DB + B*DA, X) :- !, 
	dx(A, DA, X), !, dx(B, DB, X).

dx(A/B, (B*DA + -1*A*DB)/B^2, X) :- !, 
	dx(A, DA, X), !, dx(B, DB, X).

dx(Exp, Exp1*Arg1, X) :-
	exactly_one_arg(X, Exp, Arg),
	Arg \== X, !,
	gensym(var, T),
	subst(Arg=T, Exp, Mid),		dx(Mid, Mid1, T),
	subst(T=Arg, Mid1, Exp1), !,	dx(Arg, Arg1, X).

%   check that there is exactly one argument of Exp containing Term,
%   and return that argument as Arg.

exactly_one_arg(Term, Exp, Arg) :-
	functor(Exp, _, N),
	exactly_one_arg(N, Term, Exp, Arg).

	exactly_one_arg(0, _Term, _Exp, Ans) :- !, nonvar(Ans).
	exactly_one_arg(N, Term, Exp, Ans) :-
		arg(N, Exp, Arg),
		contains(Term, Arg), !,
		M is N-1, Arg = Ans, !,
		exactly_one_arg(M, Term, Exp, Ans).
	exactly_one_arg(N, Term, Exp, Ans) :-
		M is N-1,
		exactly_one_arg(M, Term, Exp, Ans).

/*======================================================================== pressdir/package/polpak.pl */

/*			POLPAK		*/

/*	Polynomial arithmetic package 
		Gathered together by Leon 23.2.81    
		Extra methods added 3.4.81
		Guessing roots by remainder theorem by Bernard
		Made compatible with new simplification code
			Last Updated: 6 January 83
*/

%declarations%

% :- public
% 		even_anti_symmetric/1,
% 		even_symmetric/1,
% 		factor_out/3,
% 		guess_list/2,
% 		gcd_powers/2,
% 		is_poly/2,
% 		make_poly/3,
% 		map_add_power/3,
% 		map_div_power/3,
% 		map_reify/3,
% 		odd_anti_symmetric/1,
% 		odd_symmetric/1,
% 		poly/4,
% 		poly_norm/3,
% 		root/2,
% 		sym_transform/2,
% 		z_norm/2.
% 
% :- mode
% 	is_poly(+,+),
% 	poly_norm(+,+,-),
% 	poly(+,+,?,?),
% 	gcd_powers(+,?),
% 	map_div_power(+,+,?),
% 	map_reify(+,+,-),
% 	map_add_power(+,+,?),
% 	z_norm(+,?),
% 	times(+,+,?),
% 	add_poly(+,+,?),
% 	odd_symmetric(+),
% 	odd_anti_symmetric(+),
% 	symmetric(+,+),
% 	even_symmetric(+),
% 	even_anti_symmetric(+),
% 	reconst(+,-),
% 	reconst(+,+,-).
% 	reify(+,+,-).

/* Check if Expression is a polynomial */

is_poly(X,X) :- !.

is_poly(X,X^N) :- integer(N), !.

is_poly(X,(X^N)^(-1)) :- integer(N), !.

is_poly(X,E) :- freeof(X,E), !.

is_poly(X,S+T) :- !, is_poly(X,S), is_poly(X,T).

is_poly(X,S*T) :- !, is_poly(X,S), is_poly(X,T).

is_poly(X,S^N) :- !, integer(N), N >= 0, is_poly(X,S).

/* Put polynomials in normal form (succeeds only for polynomials) */

poly_norm(Poly,X,Plist) :- 
	poly(X,Poly,Pbag),
	z_norm(Pbag,Plist).

/* Forms bag of coefficients */

poly(X,X,[polyand(1,1)]) :- !.

poly(X,X^N,[polyand(N,1)]) :- integer(N), !.

poly(X,(X^N)^(-1),[polyand(N1,1)]) :- integer(N), !, eval(-N,N1).

poly(X,E,[polyand(0,E)]) :- freeof(X,E), !.

poly(X,S+T,Ebag) :- 
	!,
	poly(X,S,Sbag), 
	poly(X,T,Tbag),
	add_poly(Sbag,Tbag,Ebag).

poly(X,S*T,Ebag) :- 
	!,
	poly(X,S,Sbag), 
	poly(X,T,Tbag),
	times_poly(Sbag,Tbag,Ebag).

poly(X,S^N,Ebag) :-
	integer(N),
	eval(N > 0),
	!,
	poly(X,S,Sbag),
	binomial(Sbag,N,Ebag).

poly(X,X^K,[polyand(N,1)]) :- !, eval(K,N), ok_number(N).

poly(X,S^K,Bag) :-
	exp_distrib(S^K,Exp),
	poly(X,Exp,Bag).

/* Add two coefficients bags  */

add_poly([],T,T) :- !.

add_poly(S,[],S) :- !.

add_poly([polyand(N,E)|P],[polyand(M,F)|Q],[polyand(N,E)|Y]) :-
		eval(N > M),
		add_poly(P,[polyand(M,F)|Q],Y), 
		!.

add_poly([polyand(N,E)|P],[polyand(M,F)|Q],[polyand(N,Y)|Z]) :-
		eval(N = M),
		add_poly(P,Q,Z),
		tidy(E+F,Y), 
		!.

add_poly([polyand(N,E)|P],[polyand(M,F)|Q],[polyand(M,F)|Y]) :-   %N < M
		add_poly(Q,[polyand(N,E)|P],Y), !.


/* Multiply two coefficient bags - Distributivity of multiplication over
					addition assumed	*/

times_poly([],_Bag,[]) :- !.

times_poly(_Bag,[],[]) :- !.

times_poly([polyand(N,E)],S,X) :- timesingl(S,N,E,X), !.

times_poly([polyand(N,E)|R],S,Z) :- 
	timesingl(S,N,E,X), 
	times_poly(R,S,Y),
        add_poly(X,Y,Z),
	!.

timesingl([],_N,_E,[]) :- !.

timesingl([polyand(M,F)|R],N,E,[polyand(X,Y)|Z]) :- 
		eval(M+N,X),
		tidy(F*E,Y),
		timesingl(R,N,E,Z).          

/* Binomial expansion of coefficient bag */

binomial(_Bag, 0, [polyand(0,1)]) :- !.

binomial(Bag, 1, Bag) :- !.

binomial(Sbag, N, Ebag) :- 
		!,
		eval(N-1,N1),
		binomial(Sbag,N1,Ebag1),
		times_poly(Sbag,Ebag1,Ebag).

% Remove any  terms with zero coefficient

z_norm([],[]) :- !.

z_norm([polyand(_N,0)|R],Pnorm) :- z_norm(R,Pnorm), !.

z_norm([polyand(N,A)|R],[polyand(N,A)|Pnorm]) :- z_norm(R,Pnorm).

/* Put in normal form,undo the effect of z_norm   */

denorm([polyand(0,A)],[polyand(0,A)]) :- !.

denorm([polyand(N,A)|R],[polyand(N,A)|R1]) :- denorm1(N,R,R1),!.

denorm1(0,_,[]) :- !.

denorm1(N,[polyand(L,B)|R],[polyand(L,B)|R1]) :- 
	eval(N-1 =:= L),
	!,
	denorm1(L,R,R1).
	
denorm1(N,R,[polyand(M,0)|R1]) :- 
	eval(N-1,M),
	denorm1(M,R,R1).

/* Code to factor out the linear factor x+B  */

factor_out([polyand(N,A)|Plist],B,Qlist) :-
		!,
		eval(N-1,M),
		div_lin(Plist,M,A,B,Qlist).

div_lin([],-1,0,_,[]) :- !.

div_lin([],-1,_,_,_) :- !, trace_press('Division error \n',1).

div_lin([polyand(N,C)|Plist],M,A,B,[polyand(M,A)|Qlist]) :-
		eval(N < M),			% The sparse case
		!,
		eval(M-1,M1),
		tidy(A*B* -1,A1),
		div_lin([polyand(N,C)|Plist],M1,A1,B,Qlist).

div_lin([polyand(N,C)|Plist],M,A,B,[polyand(M,A)|Qlist]) :-
		eval(N = M),		% N should never be greater than M
		!,
		eval(M-1,M1),
		tidy(C - A*B,A1),
		div_lin(Plist,M1,A1,B,Qlist).

/* Evaluate the polynomial represented by Plist,at Val to give Ans  */

poleval(Poly,Val,Ans) :- 
	denorm(Poly,Plist),
	poleval1(Plist,Val,0,Ans), !.

poleval1([polyand(_,A)|R],V,Res,Ans) :- 	% Use Horner's scheme
	eval(Res*V+A,X),			% for polynomial evaluation
	poleval1(R,V,X,Ans),
	!.

poleval1([],_,Ans,Ans) :- !.

root(Poly,Root) :- poleval(Poly,Root,0).

/*Try to guess roots by applying remainder theorem  */

guess_list(Poly,Candidates) :- 
	gcd_coeffs(Poly,M),
	M \= non_rational,
	constant(Poly,K),
	rational_gcd(M,K,K1),
	eval(K/K1,K2),
	allowed_guess(K2,Candidates).

% Find the gcd of all the coefficients, check that all are rational.

gcd_coeffs(Poly,Gcd) :- 
	coeff_list(Poly,List),
	!,
	rational_gcd_list(List,Gcd).

gcd_coeffs(_,non_rational).

coeff_list([],[]) :- !.
coeff_list([polyand(_,L)|T],[L|T1]) :- ok_number(L), coeff_list(T,T1), !.

% The constant term of a polynomial in normal form

constant(Poly,K) :- last(polyand(0,K),Poly), !.

% If Plist has an integer root then root is a factor of constant term 
% divided by the gcd of all the coefficients.

allowed_guess(K,[1,-1|T]) :- factors_of(K,T,2), !.

factors_of(_K,[],10) :- !.

factors_of(K,[M,H|T],M) :- 
	eval(K mod M,N),
	N = 0,
	!,
	eval(-M,H),
	eval(M+1,M1),
	factors_of(K,T,M1).
	
factors_of(K,T,M) :- 
	eval(M+1,M1),
	factors_of(K,T,M1).

/* Reconstitute bag of coefficients into polynomial */

make_poly(X,Bag1,Poly) :- !,
		map_reify(X,Bag1,Bag2),
		reconst(Bag2,Poly).
		
	reconst([],0).
	reconst([H|T],Poly) :-
		reconst(T,H,Poly).
		
		reconst([H|T],Acc,Ans) :-
			!,
			reconst(T,Acc+H,Ans).
		reconst([],Ans,Ans).

/* reify coefficient and power into product */

reify(_X,polyand(0,E),E) :- !.
reify(X,polyand(1,E),Exp) :- !, tidy(E*X,Exp).
reify(X,polyand(N,E),Exp) :- !, tidy(E*X^N,Exp).

/* Reduce symmetric polynomial to one with half the degree */

sym_transform([polyand(N,A)|Plist],NewPoly) :-
	eval(N/2,M),
	build_red(M,0,Plist,Qlist),
	trans([polyand(M,A)|Qlist],NewPoly),
	!.

build_red(M,M,_,[]) :- !.

build_red(M,K,[polyand(N,A)|Plist],[polyand(M1,A)|Qlist]) :-
	eval(M-K-1,M1),
	eval((2*M-K)-1,N),
	!,
	eval(K+1,K1),
	build_red(M,K1,Plist,Qlist).

build_red(M,K,Plist,[polyand(M1,0)|Qlist]) :-
	eval(M-K-1,M1),
	eval(K+1,K1),
	build_red(M,K1,Plist,Qlist).

% Special code which holds for the quartic case

trans([polyand(2,A),polyand(1,B),polyand(0,C)],
	[polyand(2,A),polyand(1,B),polyand(0,D)]) :-  tidy(C-2*A,D),!.

trans(Plist,Plist) :- writef_press('Relevant reduction code not written'),fail.


/* Test if polynomial is symmetric or anti-symmetric */

odd_symmetric([polyand(N,A)|Plist]) :-
		 odd(N),symmetric(N,[polyand(N,A)|Plist]).

even_symmetric([polyand(N,A)|Plist]) :-
		 even(N),symmetric(N,[polyand(N,A)|Plist]).

odd_anti_symmetric([polyand(N,A)|Plist]) :-
		 odd(N),anti_symmetric(N,[polyand(N,A)|Plist]).

even_anti_symmetric([polyand(N,A)|Plist]) :-
		 even(N),anti_symmetric(N,[polyand(N,A)|Plist]).

symmetric(_,[]) :- !.

symmetric(N,[polyand(M,_)]) :-	eval(N/2,M), !.

symmetric(N,[polyand(L,A)|Plist]) :-
		append(Qlist,[polyand(M,A)],Plist),
		eval(M+L,N),
		!,
		symmetric(N,Qlist).

anti_symmetric(_N,[]) :- !.
anti_symmetric(N,[polyand(L,A)|Plist]) :-
		append(Qlist,[polyand(M,B)],Plist),
		eval(M+L,N),
		eval(-A,B),
		!,
		anti_symmetric(N,Qlist).

 % Converted maplists etc

map_reify(_,[],[]) :- !.
map_reify(X,[H|T],[H1|T1]) :- reify(X,H,H1),map_reify(X,T,T1),!.

map_add_power(_,[],[]) :- !.
map_add_power(N,[Pterm|P],[Qterm|Q]) :-
	add_power(N,Pterm,Qterm),
	map_add_power(N,P,Q).

add_power(N,polyand(M,Coeff),polyand(MN,Coeff)) :- 
	MN is M+N.

map_div_power(_,[],[]) :- !.
map_div_power(N,[Pterm|P],[Qterm|Q]) :-
	div_power(N,Pterm,Qterm),
	map_div_power(N,P,Q).

div_power(Num,polyand(Power,Coeff),polyand(Newpow,Coeff)) :- 
	Newpow is Power//Num.

gcd_powers([polyand(N,_)|Poly],Gcd) :-
	gcd_poly(Poly,N,Gcd).

gcd_poly(_,1,1) :- !.

gcd_poly([],Gcd,Gcd) :- !.

gcd_poly([polyand(N,_)|Poly],Sofar,Gcd) :-
	gcd(N,Sofar,New),
	gcd_poly(Poly,New,Gcd).

/*======================================================================== pressdir/package/poltid.pl */

/* POLTID : New simplification code using polynomial simplification

						Leon
						Updated: 9 September 82
*/
%declaration%
% :- public
% 		simplify/2,
% 		simplify/3,
% 		poly_tidy/2.
% 
% :- mode
% 		simplify(+,-),
% 		simplify(+,+,-),
% 		select_letter(-,+),
% 		poly_tidy(+,-),
% 		pol_tidy(+,-).

simplify(Expr,Expr) :- atomic(Expr), !.

simplify(Expr,Simp) :-
	wordsin(Expr,List),
	select_letter(A,List),
	mult_occ(A,Expr),
	is_poly(A,Expr),
	!,
	simplify(Expr,A,Simp).
	
simplify(Expr,Expr).

select_letter(A,[A|_List]).	% Use sorting property of wordsin as heuristic
				% for selecting letter for simplifying

simplify(Expr,Sub,Simp) :-
	poly_norm(Expr,Sub,Pbag),
	poly_tidy(Pbag,Tidy),
	make_poly(Sub,Tidy,Simp).

poly_tidy(Pbag,Tidy) :- pol_tidy(Pbag,Qbag), z_norm(Qbag,Tidy).

pol_tidy([],[]) :- !.

pol_tidy([polyand(N,Expr)|Rest],[polyand(N,Simp)|TidyRest]) :-
	tidy(Expr,Tidy),
	simplify(Tidy,Simp),
	pol_tidy(Rest,TidyRest).

/*======================================================================== pressdir/package/odds.pl */

%   Arith:Odds.					Updated: 10 September 82
%   Odd and even natural numbers
%   Gcd and factorial calculations.

% :- public odd/1.	:- mode odd(+).
% :- public even/1.	:- mode even(+).
% :- public fact/2.	:- mode fact(+, ?).
% :- public gcd/3.	:- mode gcd(+, +, -).
% :- public gcd_list/2.	:- mode gcd_list(+, -).
% :- public lcm/3.	:- mode lcm(+, +, -).
% :- public lcm_list/2.	:- mode lcm_list(+, -).
% :- public rational_gcd/3.	:- mode rational_gcd(+, +, -).
% :- public rational_gcd_list/2.	:- mode rational_gcd_list(+, -).

odd(X) :-
	eval(odd(X)).

even(X) :-
	eval(even(X)).

gcd(X, Y, Z) :- eval(gcd(X,Y), Z).

lcm(X, Y, Z) :- gcd(X,Y,G), eval(X*Y/G,Z).

gcd_list([H|T],Gcd) :- 		% Takes the gcd of a list of integers
	gcdl(T,H,Gcd).

gcdl(_,1,1) :- !.
gcdl([],Gcd,Gcd) :- !.
gcdl([H|T],Sofar,Gcd) :- gcd(H,Sofar,New), gcdl(T,New,Gcd).

lcm_list([H|T],Lcm)  :-		% Finds the lcm of a list of integers
	lcml(T,H,Lcm).

lcml([],Lcm,Lcm) :- !.
lcml([H|T],Sofar,Lcm) :- lcm(H,Sofar,New), lcml(T,New,Lcm).

rational_gcd(X,Y,Z) :-
	integer(X),
	integer(Y),
	!,
	gcd(X,Y,Z).

rational_gcd(X,Y,Z) :-
	eval(denom(X),X_denom),
	eval(denom(Y),Y_denom),
	eval(numer(X),X_numer),
	eval(numer(Y),Y_numer),
	eval(gcd(X_numer*Y_denom,Y_numer*X_denom),G),
	eval(G/(X_denom*Y_denom),Z).

rational_gcd_list([H|T],Gcd) :- 
	eval(numer(H),N),
	eval(denom(H),D),
	rgl(T,N,D,Gcd).

rgl([],N,D,Gcd) :- eval(N/D,Gcd).
rgl([H|T],N,D,Gcd) :-
	eval(numer(H),N1),
	eval(denom(H),D1),
	eval(gcd(N*D1,D*N1),G),
	eval(D*D1,Dnew),
	rgl(T,G,Dnew,Gcd).


fact(N,Fact) :- N >= 0, fact(N,1,Fact).

fact(0,Fact,Fact) :- !.
fact(N,Sofar,Fact) :- eval(N*Sofar,New), M is N-1, fact(M,New,Fact).

/* Old code
:- public natnum/1.	:- mode natnum(+).
:- public oddnum/1.	:- mode oddnum(+).

natnum(X) :-
	integer(X), X > 0.

oddnum(X) :-
	1 is X mod 2.
*/

/*======================================================================== pressdir/package/weaknf.pl */

%   Press:Weaknf.			Updated: 10 September 82
%   					Author:  Bernard Silver 28.4.81
%   Put expression into weak normal form for collection, attraction, &c.

% :- public weak_normal_form/3,
% 	zero_rhs/2,
% 	filter/4.
% :- mode  
%     weak_normal_form(+, +, -),
% 	zero_rhs(+, -),
% 	filter(+, +, -, -).

weak_normal_form(Eqn, Var, New) :-
	zero_rhs(Eqn, Mid),
	decomp(Mid, [+|Bag]),
	filter(Bag, Var, Lhs, Rhs),
	tidy(Lhs=Rhs, New), !.

weak_normal_form(Eqn, _Var, New=0)  :- zero_rhs(Eqn,New),!.

weak_normal_form(Exp,_X,Exp).  % Hack default for inequalities

%   put an equation Lhs=Rhs into the form New=0.

	zero_rhs(Lhs=0, Lhs) :- !.
	zero_rhs(Lhs=Rhs, New) :- tidy(Lhs-Rhs, New).

%   split a sum bag into Lhs, holding all elements containing Var,
%   and Rhs, holding all the elements not containing Var.  We are
%   free to use '-' in Rhs, as it will be tidied before use.

	filter([Head|Tail], Var, Head+More, Rest) :-
		contains(Var, Head), !,
		filter(Tail, Var, More, Rest).
	filter([Head|Tail], Var, More, Rest-Head) :- !,
		filter(Tail, Var, More, Rest).
	filter([],	  _Var, 0,    0).

/*======================================================================== pressdir/package/real.pl */

%   File   : REAL.PL
%   Author : Bernard Silver
%   Updated: 31 May 1985
%   Purpose: Real number function evaluation for PRESS

% Very badly written!!


% Called by process_answer/2 in SOLVE

process_answer_23(A#B,A1#B1) :- !,
	process_answer_23(A,A1),
	process_answer_23(B,B1).

process_answer_23(A&B,A1&B1) :- !,
	process_answer_23(A,A1),
	process_answer_23(B,B1).

process_answer_23(A=B,Ans) :- !,
	handle(B,New),
	check_for_validity(A,B,New,Ans).

process_answer_23(false,false) :- !.
process_answer_23(true,true) :- !.

check_for_validity(A,B,New, X-(A=B)) :-
	member(X,[invalidlog,invalidasin,invalidacos,invalidexp]),
	contains(X,New),
	!.

check_for_validity(A,_,F,A=F).


handle(Ans,NewAns) :-
	const_parse(Ans,Set),
	mathevaluate(Set,SetAns),
	substitute_back(Set,SetAns,Ans,New),
	tidy(New,New1),
	evalmath(New1,NewAns,_).

substitute_back([],[],X,X) :- !.
substitute_back([H|T],[H1|T1],Old,New) :-
	subst(H=H1,Old,Mid),
	subst_lhs(T,NewT,H=H1),
	!,
	substitute_back(NewT,T1,Mid,New).

subst_lhs([],[],_).
subst_lhs([Old|T],[New|T1],Subs) :-
	subst(Subs,Old,New),
	!,
	subst_lhs(T,T1,Subs).

mathevaluate([],[]) :- !.
mathevaluate([H|T],[H1|T1]) :-
	matheval(H,H1),
	!,
	mathevaluate(T,T1).

pi(Pi) :- atan(1,X), Pi is 4*X.
convert_angle(Degree,Radian) :- pi(Pi),Radian is Degree*180/Pi.
inv_convert_angle(Radian,Degree) :- pi(Pi),Degree is Radian*Pi/180.

matheval(e,Ans) :- !,exp(1,Ans).
matheval(Atom,Atom) :- atomic(Atom),!.
matheval(A,B) :- top_matheval(A,B,win),!.
matheval(X,X) :- ok_number(X),!.   % Must be a long integer or procedure above would have got it.
matheval(F,Ans) :-
	F=..[Func|Args],
	Args \= [],
	mathevaluate(Args,Args1),
	New =.. [Func|Args1],
	top_matheval(New,Ans1,_),
	evalmath(Ans1,Ans,_).

long_eval_and_check(X,Ans) :-
	eval(X<100000),
	eval(X> -100000),  % Not long integer
	!,
	eval(numer(X),Y),
	eval(denom(X),Z),
	eval(sign(X),S),
	Ans is S*Y/Z.

top_matheval(A*B,Ans,win) :- number(A),number(B),!,Ans is A*B.
top_matheval(A+B,Ans,win) :- number(A),number(B),!,Ans is A+B.
top_matheval(X,Ans,win) :- 
	ok_number(X),
	!,
	long_eval_and_check(X,Ans).

top_matheval(e^X,Ans,win) :- number(X),!,exp(X,Ans).
top_matheval(A^ -1,Ans,win) :- number(A),!,Ans is 1/A.
top_matheval(A^B,Ans,win) :- number(A),integer(B),B>0,!, real_power(A,A,B,Ans).

top_matheval(A^B,Ans,win) :- number(A),number(B),exp_valid_check(A,B,Ans).
top_matheval(e,Ans,win) :- !,exp(1,Ans).
top_matheval(log(e,A),Ans,win) :- number(A),!,log(A,Ans).
top_matheval(log(10,A),Ans,win):- number(A),!,log10(A,Ans).
top_matheval(log(A,B),Ans,win) :- number(A),number(B),!,log_check_valid(B,A,Ans).
top_matheval(sin(X),Ans,win) :- number(X),!,convert_angle(X,Y),sin(Y,Ans).
top_matheval(cos(X),Ans,win) :- number(X),!,convert_angle(X,Y),cos(Y,Ans).
top_matheval(tan(X),Ans,win) :- number(X),!,convert_angle(X,Y),tan(Y,Ans).
top_matheval(arcsin(X),Ans,win) :- number(X),!,asin_check_valid(X,Ans).
top_matheval(arccos(X),Ans,win) :- number(X),!,acos_check_valid(X,Ans).
top_matheval(arctan(X),Ans,win) :- number(X),!,atan(X,Y),inv_convert_angle(Y,Ans).
top_matheval(X,X,lose).

real_power(_,Acc,1,Acc) :- !.
real_power(A,Acc,M,Ans) :-
	N is M - 1,
	New is A*Acc,
	!,
	real_power(A,New,N,Ans).
asin_check_valid(X,Ans) :-
	X >= -1,
	X =< 1,
	!,
	asin(X,Y),
	inv_convert_angle(Y,Ans).
asin_check_valid(_,invalidasin) :- !.

exp_valid_check(A,B,Ans) :- A > 0,!,log(A,Log),Exp is B*Log,exp(Exp,Ans).
exp_valid_check(_,_,invalidexp).

acos_check_valid(X,Ans) :-
	X >= -1,
	X =< 1,
	!,
	acos(X,Y),
	inv_convert_angle(Y,Ans).
acos_check_valid(_,invalidacos) :- !.

log_check_valid(B,A,Ans) :-
	B > 0,
	!,
	log(B,X),
	log(A,Y),
	Ans is X/Y.
log_check_valid(_,_,invalidlog) :- !.

const_parse(Eqn,Set) :- dl_parse_const(Eqn,Set1-[]),listtoset(Set1,Set).

dl_parse_const(e^X,[e^X|L]-L) :- !.
dl_parse_const(e,[e|L]-L) :- !.
dl_parse_const(X,L-L) :- atomic(X),!.
dl_parse_const(X,L-L) :- number(X),!.
dl_parse_const(A+B,L-L1) :- !,dl_parse_const(A,L-L2),dl_parse_const(B,L2-L1).
dl_parse_const(A*B,L-L1) :- !,dl_parse_const(A,L-L2),dl_parse_const(B,L2-L1).
dl_parse_const(A^B,L) :-number(B), !,dl_parse_const(A,L).
dl_parse_const(A,[A|L]-L) :- !.


evalmath(A+B,Ans,win) :- 
	evalmath(A,A1,win),
	evalmath(B,Sum,win),
	!,
	Ans is A1 + Sum.

evalmath(A*B,Ans,win) :- 
	evalmath(A,A1,win),
	evalmath(B,Prod,win),
	!,
	Ans is A1* Prod.
evalmath(A^B,Ans,win) :-
	evalmath(A,A1,win),
	evalmath(B,B1,win),
	!,
	evalmath1(A1,B1,Ans).

evalmath(X,X,win) :- number(X),!.
evalmath(X,Y,win) :- top_matheval(X,Y,win),!.
evalmath(X,X,Flag) :-
	ok_number(X), % Must be long int by now.
	!,
	Flag = lose.
evalmath(X,X,Flag) :- 
	atom(X),
	X \= e,
	!,
	Flag = lose.

evalmath(A,A,lose).


evalmath1(A,-1,Ans) :- !, Ans is 1/A.
evalmath1(A,B,Ans) :-
	integer(B),
	B > 0,
	!,
	real_power(A,A,B,Ans).

evalmath1(A,B,Ans) :-
	exp_valid_check(A,B,Ans).

/*======================================================================== pressdir/package/int.pl */

/* INT : Finds intervals of terms in PRESS

						Alan Bundy
						Updated: 30 September 82

	Alan Bundy 19.12.79, revised 13.3.80, 26.3.81
	Cosmetics by Lawrence 18.6.81, later versions
	new pi, e handling by R.A.O'K 30.9.82
*/

/* EXPORT */

:- public
	vet/2,
	positive/1,
	negative/1,
	non_neg/1,
	non_pos/1,
	non_zero/1,
	acute/1,
	obtuse/1,
	non_reflex/1,
	
	less_than/2,			% Used in a \+
	
	find_int/2,			% Exported for convenience
	int_apply/3.


/* IMPORT */
/*
	error/3				from  UTIL:TRACE
	
	memberchk_press/2			from  UTIL:SETROU
	
	number/1			from  LONG
	eval/1
	eval/2
	
	measure/2			from  notional Mecho database
	quantity/1
	angle/3
	incline/3
	concavity/2
	slope/2
	partition/2
	
%%	special_atom/1  		from  ARITH:FACTS  not needed!
*/


/* MODES */

/* 
:- mode
	vet(+,?),
	positive(+),
	negative(+),
	non_neg(+),
	non_pos(+),
	non_zero(+),
	acute(+),
	obtuse(+),
	non_reflex(+),
 
	    gen_combine(+,?),
	    combine(+,+,?),
	    in(+,+),
	    sub_int(+,+),
	    below(+,+),
	    alan_disjoint(+,+),
	    overlap(+,+),
	    marker_flip(?,?),
 
		default_interval(?),
	    find_int(+,?),
		find_int2(+,-),
		find_int_args(+,-,-),
		find_simple_int(+,-),
		    make_assumption_positive(+),
 
	    int_apply(+,+,-),
		int_apply_all(+,+,-),
		all_are_contained(+,+),
		make_regions(+,+,-),
		    split(+,+,+,-),
			split1(+,+,-),
		    cartesian_product(+,+,-,?),
			cart_prod(+,+,+,-,?),
		find_limits(+,+,+,-),
		    clean_up(+,-),
		    limits(+,+,+,+,?),
		    get_bnds(+,+,+,-),
			updown_flip(+,+,-),
			get_bnd(+,+,-),
 
	    order(+,+,?,?),
	    less_than(+,+),
	    calc(+,+,?),
		breakup_bnds(+,-,-),
	    comb(+,?),
 
	    mono(+,?,?),
 
	    classify(+,-),
		interval(+,-,-),
		collect_intervals(+,+,-),
		quad(+,+,+,?).
 


    Data structures

	<interval>	has form	i(LMarker,Bottom,Top,RMarker)
	<boundary>	has form	b(N,Marker)

		where:
			Bottom, Top, N		  are  <numbers>
			LMarker, RMarker, Marker  are  one of {open,closed}

	An interval ranges between Bottom and Top and is open or closed at
	the ends depending on LMarker (for Bottom) and RMarker (for Top).

	A boundary is an end of an interval. There are operations defined
	over these boundaries which are then used to help define the
	operations over intervals. Note that the notion of a boundary does
	NOT involve any specific end of an interval (ie Top/Bottom). They
	are a generalisation over all such ends.

*/

:- dynamic assumed_positive/1.

%% @@@ - marker (top of code)


/****************************************/
/* Use interval information - top level */
/****************************************/

			% Check that solution is admissible

vet(true,true).

vet(false,false).

vet(A&B,A1&B1) :- vet(A,A1), vet(B,B1).

vet(A#B,A1#B1) :- vet(A,A1), vet(B,B1).

vet(A=B,A=B) :- 
	find_int(A,IntA), find_int(B,IntB),
	overlap(IntA,IntB),
	!.

vet(_A=_B,false).

	
			% X is positive, negative, acute, etc.

positive(X) :- find_int(X,i(L,B,_T,_R)), less_than(b(0,closed),b(B,L)).

negative(X) :- find_int(X,i(_L,_B,T,R)), less_than(b(T,R),b(0,closed)).

non_neg(X) :- find_int(X,i(L,B,_T,_R)), less_than(b(0,open),b(B,L)).

non_pos(X) :- find_int(X,i(_L,_B,T,R)), less_than(b(T,R),b(0,open)).

non_zero(X^_N) :- !, non_zero(X).	%ad hoc patch (replaces negative(N)

non_zero(X) :-
	find_int(X,i(L,B,T,R)),
	( less_than(b(0,closed),b(B,L)) ; less_than(b(T,R),b(0,closed)) ),
	!.

acute(X) :-
	find_int(X,i(L,B,T,R)),
	less_than(b(0,open),b(B,L)),
	less_than(b(T,R),b(90,open)).

obtuse(X) :-
	find_int(X,i(L,B,T,R)),
	less_than(b(90,open),b(B,L)),
	less_than(b(T,R),b(180,open)).

non_reflex(X) :-
	find_int(X,i(L,B,T,R)),
	less_than(b(0,open),b(B,L)),
	less_than(b(T,R),b(180,open)).



/*****************************************/
/*	Manipulating Intervals		 */
/*****************************************/


			% Combine a list of intervals by sweeping list and
			%  accumulating the combined intervals.

gen_combine([FirstInt|RestInts],Result)
     :-	gen_combine(RestInts,FirstInt,Result).


gen_combine([],Result,Result).

gen_combine([Int|RestInts],Acc,Result)
     :-	combine(Int,Acc,NewAcc),
	gen_combine(RestInts,NewAcc,Result).


			% Combine x and y intervals

combine(i(Lx,Bx,Tx,Rx), i(Ly,By,Ty,Ry), i(L,B,T,R)) :-
	order(b(Tx,Rx),b(Ty,Ry),_,b(T,R)),
	order(b(Bx,Lx),b(By,Ly),b(B,L),_).


			% Number N is contained in interval

in(N,i(L,B,T,R)) :- !,
	sub_int(i(closed,N,N,closed),i(L,B,T,R)).


			% x interval is contained in second interval

sub_int(i(Lx,Bx,Tx,Rx),i(L,B,T,R)) :-
	marker_flip(L,L1), marker_flip(R,R1),
	less_than(b(B,L1),b(Bx,Lx)), less_than(b(Tx,Rx),b(T,R1)).

			% x interval is wholly below y interval

below(i(_Lx,_Bx,Tx,Rx),i(Ly,By,_Ty,_Ry)) :-
	less_than(b(Tx,Rx),b(By,Ly)), !.

			% x and y intervals are disjoint

alan_disjoint(IntX,IntY) :- below(IntX,IntY), !.
alan_disjoint(IntX,IntY) :- below(IntY,IntX), !.

			% x and y intervals overlap

%% overlap(IntX,IntY) :- \+ alan_disjoint(IntX,IntY).

overlap(IntX,IntY) :- alan_disjoint(IntX,IntY), !, fail.
overlap(_,_).


			% open and closed are opposites
			%  (this is how to flip them)

marker_flip(open,closed) :- !.
marker_flip(closed,open).



/****************************************/
/* X lies in closed or open interval    */
/****************************************/


		% Worst case default for intervals

default_interval(i(open,neginfinity,infinity,open)).


		% Let's try to do better.

find_int(X,Interval)
     :-	find_int2(X,Result),		% guarantee mode (+,-)
	Interval = Result.


			% Catch variables (shouldn't be there!)

find_int2(V,_)
     :-	var(V),
	!,
	error('Interval package given variable: %w',[V],fail).

			% Base cases
			%  Numbers have point intervals
			%  Symbols (atoms) have various special cases

find_int2(X,i(closed,X,X,closed)) :- ok_number(X), !.

find_int2(X,Interval) :- atom(X), !, find_simple_int(X,Interval).


			% Special case normalisation

			% Convert ^(-1) to 1/

find_int2(X^(-1), Int) :- !,
	find_int2(1/X, Int).

			% Deal with exponentials to even power

find_int2(X^N, i(L,B,T,R)) :- 
	even(N), !,
	find_int(abs(X), i(Lx,Bx,Tx,Rx)),
	calc(^,[b(Bx,Lx),b(N,closed)],b(B,L)),
	calc(^,[b(Tx,Rx),b(N,closed)],b(T,R)).

			% Convert cosecant to sine

find_int2(csc(X), Int) :- !, find_int2(1/sin(X), Int).

			% Convert secant to cosine

find_int2(sec(X), Int) :- !, find_int2(1/cos(X), Int).

			% Convert cotangent to tangent

find_int2(cot(X), Int) :- !, find_int2(1/tan(X), Int).


			% General case
			%  Recursively find intervals for arguments and
			%  then int_apply to sort this out. This will use
			%  monotonicity of F to calculate interval of Term
			%  from arguments.

find_int2(Term,Int) :-
	find_int_args(Term,F,IntList),
	int_apply(F,IntList,Int),
	!.


			% If the general case fails

find_int2(sin(_X), i(closed,(-1),1,closed)) :- !.
find_int2(cos(_X), i(closed,(-1),1,closed)) :- !.

find_int2(_X,Default) :- default_interval(Default).



			% Find a list of intervals corresponding to the
			%  arguments of Term. Also return the functor.

find_int_args(Term,Fn,IntList)
     :-	functor(Term,Fn,Arity),
	find_int_args(1,Arity,Term,IntList).


find_int_args(N,Max,_,[]) :- N > Max, !.

find_int_args(N,Max,Term,[Int|IntRest])
     :-	arg(N,Term,Arg),
	find_int2(Arg,Int),
	N1 is N+1,
	find_int_args(N1,Max,Term,IntRest).



			% Find the interval for a simple symbol
			%  This involves looking to see if we know
			%  anything special about the symbol which will
			%  help us.
			% Ad hoc patch for gravity - proper solution means
			%  allowing equations between quantities and defining
			%  g as measure(g,32,ft/sec^2).
			% pi and e have explicit conservative intervals
			% Otherwise try to classify symbol (if it is an angle)
			% Otherwise assume all quantities are positive
			%  	(possibly extreme?)
			% If there is no useful info we must use the default.

find_simple_int(g, i(open,1,infinity,open)) :- !.

find_simple_int(e, i(open,5/2,3,open)) :- !.

find_simple_int(pi,i(open,3,10/3,open)) :- !.

find_simple_int(X,Int) :- classify(X,Int), !.

find_simple_int(M,i(open,0,infinity,open)) :-
	measure(Q,M), quantity(Q),
	!,
	make_assumption_positive(M).

find_simple_int(_X,Default) :- default_interval(Default).



			% Make and remember assumption

make_assumption_positive(X) :- assumed_positive(X), !.

make_assumption_positive(X)
     :-	assert( assumed_positive(X) ),
	trace_press('I assume %t positive.\n',[X],1).



/*************************************************************/
/* Find interval of function from intervals of its arguments */
/*************************************************************/


				% Simple case

int_apply(F,Region,Int) :-
	mono(F,Is,Mono),
	all_are_contained(Region,Is),
	!,
	find_limits(F,Region,Mono,Int).

				% Complex Case

int_apply(F,Region,Int) :-
	mono(F,MRegion,_Mono),
	make_regions(Region,MRegion,NewRegions),
	int_apply_all(NewRegions,F,IntervalSet),
	!,
	gen_combine(IntervalSet,Int).



			% int_apply all intervals in a set (list)

int_apply_all([],_,[]).

int_apply_all([Region1|Rest],F,[Int1|IRest])
     :-	int_apply(F,Region1,Int1),
	int_apply_all(Rest,F,IRest).



			% All the argument intervals are sub intervals of
			%  the corresponding monotonic intervals for the
			%  function (from mono). (ie maplist sub_int down
			%  the two "argument" lists).

all_are_contained([],[]).

all_are_contained([ArgInt|ArgRest],[FInt|FRest])
     :-	sub_int(ArgInt,FInt),
	all_are_contained(ArgRest,FRest).



			% Given the list of actual intervals and the list
			%  of monotonic intervals for the function build
			%  a set of similar interval lists, derived from the
			%  actual interval list, but such that each element
			%  of each list in the set is wholly inside or outside
			%  its corresponding monotonic function interval.
			% This amounts to case splitting the actual interval
			%  list into a set of intervals for more tractable
			%  (sub) regions in the nD space.
			% Implemented by splitting lists to form a list of
			%  sets and taking the nD cartesian product. Note
			%  that both split/4 and cartesian_product/4 perform
			%  order reversals - which cancel each other out.

make_regions(Region,MRegion,NewRegions)
     :-	split(Region,MRegion,[],ListOfSets),
	cartesian_product(ListOfSets,[],NewRegions,[]).



			% Given the list of actual intervals and the list of
			%  monotonic intervals for the function, we build
			%  a list of n sets, where n is the arity of the 
			%  function (ie the length of the lists) and where
			%  each set contains intervals which are wholly inside
			%  or outside the corresponding monotonic function
			%  intervals, such that the intervals in each set
			%  would combine to form the corresponding actual
			%  interval.
			% The combining property follows from the way we split
			%  up the actual intervals.
			% The sets produced at the moment will only ever have
			%  number of members m such that: 1 =< m =< 3.
			%  The following special representations are used for
			%  these cases:
			%  		singleton(A)
			%  		pair(A,B)
			%  		triple(A,B,C)
			%  In fact the code will currently never produce sets
			%  of 3 elements (triples), but I (Lawrence) think
			%  this is probably a bug so have left the option, and
			%  this comment, around til we see.
			% Note that the list of sets built will be in reverse
			%  order compared with the "argument" lists. This is
			%  is implemented by an extra accumulator argument
			%  (should be [] to start with) onto which each Set
			%  is pushed.

split([],[],Result,Result).

split([ArgInt|ArgRest],[FInt|FRest],Sofar,Result)
     :-	split1(ArgInt,FInt,Set),
	split(ArgRest,FRest,[Set|Sofar],Result).


				% Intx wholly within Int

split1(Intx,Int,singleton(Intx)) :-
	sub_int(Intx,Int),
	!.

				% Intx and Int overlap with Intx leftmost

split1(i(Lx,Bx,Tx,Rx), i(L,B,T,R), pair(i(L,B,Tx,Rx),i(Lx,Bx,B1,L1)) ) :-
	marker_flip(R,R1), marker_flip(L,L1), 
	marker_flip(Lx,Lx1),
	correct(B,B1),
	less_than(b(Tx,Rx),b(T,R1)),
	\+ less_than(b(Tx,Rx),b(B,L)),
	less_than(b(Bx,Lx1),b(B,L)), !.



			% Given a list of n sets produce the a set of the
			%  elements from the nD cartesian product of the sets.
			%  The incoming sets are represented with special
			%  functors as there are only a few special cases (see
			%  split). The resulting product set is represented as
			%  a list. Each element will itself be a list (of n
			%  intervals) where the order of this element list will 
			%  be the reverse of the order in which the items
			%  were found in the original list of sets.
			% The implementation involves an accumulator for the
			%  (partial) element being built and uses the 
			%  difference list technique to build the final set
			%  of elements (repn as a list).

cartesian_product([],Element,[Element|Z],Z).

cartesian_product([First|Rest],PartialElement,ProductSet,Z)
     :-	cart_prod(First,Rest,PartialElement,ProductSet,Z).



cart_prod(singleton(A),Rest,PartialElement,PSet,Z)
     :-	cartesian_product(Rest,[A|PartialElement],PSet,Z).

cart_prod(pair(A,B),Rest,PartialElement,PSet0,Z)
     :-	cartesian_product(Rest,[A|PartialElement],PSet0,PSet1),
	cartesian_product(Rest,[B|PartialElement],PSet1,Z).

cart_prod(triple(A,B,C),Rest,PartialElement,PSet0,Z)
     :-	cartesian_product(Rest,[A|PartialElement],PSet0,PSet1),
	cartesian_product(Rest,[B|PartialElement],PSet1,PSet2),
	cartesian_product(Rest,[C|PartialElement],PSet2,Z).



			% Calculate Bottom and Top of Interval

find_limits(F,Region,Mono,Int) :-
	limits(bottom,F,Region,Mono,b(B,L)),
	limits(top,F,Region,Mono,b(T,R)), 
	clean_up(i(L,B,T,R), Int).


			% Hack to clear up various funnies

clean_up(i(_,undefined,_,_), Int) :- !, default_interval(Int).
clean_up(i(_,_,undefined,_), Int) :- !, default_interval(Int).
clean_up(i(L,B,0,R), i(L,B,-(0),R)) :- !.
clean_up(Int, Int).

correct(0,-(0)) :- !.
correct(B,B) :- !.


			% Calculate limit for a particular boundary

limits(TopBot,F,Region,Mono,Boundary)
     :-	get_bnds(Mono,TopBot,Region,BoundaryList),
	calc(F,BoundaryList,Boundary).



			% Form a boundary list from an interval list
			%  given various details - up+down x top+bottom.

get_bnds([],_,[],[]).

get_bnds([Mono|MRest],TopBot,[Int|IRest],[Bnd|BRest])
     :-	updown_flip(TopBot,Mono,NewMono),
	get_bnd(NewMono,Int,Bnd),
	get_bnds(MRest,TopBot,IRest,BRest).


	updown_flip(top,UD,UD).
	updown_flip(bottom,up,down) :- !.
	updown_flip(bottom,down,up).


	get_bnd(up,  i(_L,_B,T,R), b(T,R)).
	get_bnd(down,i(L,B,_T,_R), b(B,L)).




/*****************************************/
/*	Manipulating Boundaries		 */
/*****************************************/


			% Put boundaries in order

					% Boundaries are identical
order(Bnd,Bnd,Bnd,Bnd) :- !.
					% One of Mis is closed
order(b(N,_M1),b(N,_M2),b(N,closed),b(N,closed)) :- !.
					% Numbers are different, N1 smallest
order(b(N1,M1),b(N2,M2),b(N1,M1),b(N2,M2)) :-
	eval(N1 < N2), !.
					% N2 is smallest
order(b(N1,M1),b(N2,M2),b(N2,M2),b(N1,M1)).



			% Ordering of boundaries
			%  (assumes intervals are consecutive)

less_than(b(X,Mx),b(Y,My)) :- 
	comb([Mx,My],M),
	less_than_eval(M,X,Y).


less_than_eval(open,X,Y) :- eval( X =< Y ).

less_than_eval(closed,X,Y) :- eval( X < Y ).



			% Apply Function F to a boundary list
			%  Do this by combining the boundary markers and
			%  applying F to the numbers.

calc(F,BoundaryList,b(X,M)) :-
	breakup_bnds(BoundaryList,Markers,Numbers),
	comb(Markers,M),
	Term =.. [F|Numbers],
	eval(Term,X),
	!.


breakup_bnds([],[],[]).

breakup_bnds([b(N,M)|Rest],[M|MRest],[N|NRest])
     :-	breakup_bnds(Rest,MRest,NRest).



			% Combine boundary markers
			%  Result = open if any of the inputs is open

comb(MarkerList,Result) :- memberchk_press(open,MarkerList), !, Result = open.

comb(_,closed).



/**********************************************/
/* Monotonicity of Functions in each Interval */
/**********************************************/

/* unary minus */
mono(-, [i(closed,neginfinity,infinity,closed)], [down]).

/* addition */
mono(+,[i(closed,neginfinity,infinity,closed), 
	i(closed,neginfinity,infinity,closed)], [up,up]).

/* binary minus */
mono(-,[i(closed,neginfinity,infinity,closed),
        i(closed,neginfinity,infinity,closed)], [up,down]).

/* absolute value */
mono(abs,[i(closed,neginfinity,-(0),closed)], [down]).
mono(abs,[i(closed,0,infinity,closed)], [up]).

/* multiplication */
mono(*,[i(closed,0,infinity,closed), i(closed,0,infinity,closed)], 
	[up,up]).
mono(*,[i(closed,0,infinity,closed), i(closed,neginfinity,-(0),closed)], 
	[down,up]).
mono(*,[i(closed,neginfinity,-(0),closed), i(closed,0,infinity,closed)], 
	[up,down]).
mono(*,[i(closed,neginfinity,-(0),closed), i(closed,neginfinity,-(0),closed)], 
	[down,down]).



/* division */
mono(/,[i(closed,0,infinity,closed), i(closed,0,infinity,closed)], 
	[up,down]).
mono(/,[i(closed,0,infinity,closed), i(closed,neginfinity,-(0),closed)], 
	[down,down]).
mono(/,[i(closed,neginfinity,-(0),closed), i(closed,0,infinity,closed)], 
	[up,up]).
mono(/,[i(closed,neginfinity,-(0),closed), i(closed,neginfinity,-(0),closed)], 
	[down,up]).


/* exponentiation */
mono(^,[i(open,0,infinity,closed),i(closed,0,infinity,closed)], 
	[up,up]).
mono(^,[i(open,0,infinity,closed),i(closed,neginfinity,-(0),closed)],
	[down,up]).


/* logarithm */
mono(log,[i(closed,0,infinity,closed),i(closed,0,infinity,closed)], 
	[down,up]).

/* sine */
mono(sin,[i(closed,(-90),90,closed)],[up]).
mono(sin,[i(closed,90,270,closed)],[down]).
mono(sin,[i(closed,270,450,closed)],[up]).

/* cosine */
mono(cos,[i(closed,0,180,closed)],[down]).
mono(cos,[i(closed,180,360,closed)],[up]).

/* tangent */
mono(tan,[i(open,(-90),90,open)],[up]).
mono(tan,[i(open,90,270,open)],[up]).
mono(tan,[i(open,270,450,open)],[up]).

/* inverse sine */
mono(arcsin,[i(closed,(-1),1,closed)],[up]).

/* inverse cosine */
mono(arccos,[i(closed,(-1),1,closed)],[down]).

/* inverse tangent */
mono(arctan,[i(open,neginfinity,infinity,open)],[up]).

/* inverse cosecant */
mono(arccsc,[i(closed,neginfinity,(-1),closed)],[down]).
mono(arccsc,[i(closed,1,infinity,closed)],[down]).

/* inverse secant */
mono(arcsec,[i(closed,neginfinity,(-1),closed)],[up]).
mono(arcsec,[i(closed,1,infinity,closed)],[up]).

/* inverse cotangent */
mono(arccot,[i(closed,neginfinity,-(0),open)],[down]).
mono(arccot,[i(open,0,infinity,closed)],[down]).

	


/*************************************************/
/*  Calculate Interval of Angle from Curve Type  */
/*************************************************/


			% We classify a symbol using semantic information
			%  from the (Mecho) database. Calls which are to
			%  this database (notionally, Press does not really
			%  share the same object-level database) are marked
			%  as such.
			% This method is only appropriate if the symbol is an
			%  <angle>, and tries to find the interval of the
			%  angle using general principles about curve types.

classify(Angle, Int ) :-
	measure(Q, Angle ),			% database
	angle(_Point, Q, Curve ), !,		% database
	interval(angle, Curve, Int ).

classify(Angle, Int ) :-
	measure(Q, Angle ),			% database
	incline(Curve, Q, _Point ), !,		% database
	interval(incline, Curve, Int ).



			% Find interval from curve shape

				% For simple curves
interval(AI, Curve, Int ) :-
	concavity(Curve, Conv ),		% database
	slope(Curve, Slope ), !,		% database
	quad(AI, Slope, Conv, Int ).

				% For complex curves
interval(AI, Curve, Int ) :-
	partition(Curve, Clist ), !,		% database
	collect_intervals(Clist, AI, Rlist),
	gen_combine(Rlist, Int ).



			% Collect up a list of intervals for all the parts
			%  of a partitioned curve.

collect_intervals([],_,[]).

collect_intervals([First|Rest],AI,[FirstInt|RestInt])
     :-	interval(AI,First,FirstInt),
	collect_intervals(Rest,AI,RestInt).



			% Information about properties of simple curves
			%  The interval depends on both the slope and the
			%  concavity.

quad(angle,left,right,i(closed,0,90,closed)) :- !.
quad(incline,left,right,i(closed,90,180,closed)) :- !.

quad(angle,right,right,i(closed,90,180,closed)) :- !.
quad(incline,right,right,i(closed,180,270,closed)) :- !.

quad(angle,left,left,i(closed,180,270,closed)) :- !.
quad(incline,left,left,i(closed,270,360,closed)) :- !.

quad(angle,right,left,i(closed,270,360,closed)) :- !.
quad(incline,right,left,i(closed,0,90,closed)) :- !.

quad(angle,left,stline,i(open,180,270,open)) :- !.
quad(incline,left,stline,i(open,270,360,open)) :- !.

quad(angle,right,stline,i(open,270,360,open)) :- !.
quad(incline,right,stline,i(open,0,90,open)) :- !.

quad(angle,hor,stline,i(closed,270,270,closed)) :- !.
quad(incline,hor,stline,i(closed,0,0,closed)) :- !.

quad(angle,vert,stline,i(closed,180,180,closed)) :- !.
quad(incline,vert,stline,i(closed,270,270,closed)) :- !.



/* JOBS TO DO

	write symbolic version for finding max/mins

	use monotonicity in > >= etc Isolation rules
*/

assumed_positive(_) :- fail.

/*======================================================================== pressdir/misc/words.pl */

%	WORDS					Updated: 21-Apr-81.

% :- public wordsin/2, frequent_words/2.
% 
% :- mode
%     wordsin(+, -),
%     frequent_words(+, -),
% 	scan_term(+, ?, -),
% 	    insert_word(?, +, -),
% 	    scan_list(+, ?, -),
% 	tree_list(?, +, +, -),
% 	strip_num(+, -).

%   wordsin(Term, List)
% finds all the words (atom) which occur at least once in Term, and returns
% them in List.  Furthermore, the words are in descending order of frequency.
% E.g. wordsin(x*x+x*y+y^2+z^7, [x,y,z]).
% The order is supposed to be heuristic.

wordsin(Term, List) :-
	scan_term(Term, _Some, Tree),
	tree_list(Tree, 1, [], Pairs),
	keysort(Pairs, Inorder),
	strip_num(Inorder, List).

%   frequent_words(Term, List)
% finds all the words (atoms) which occur more than once in Term, and returns
% them in List.  Furthermore, the words are in descending order of frequency.
% E.g. frequent_words(x*x+x*y+y^2+z^7, [x,y]).

frequent_words(Term, List) :-
	scan_term(Term, _Some, Tree),
	tree_list(Tree, 2, [], Pairs),
	keysort(Pairs, Inorder),
	strip_num(Inorder, List).

	scan_term(Simp, Old_Tree, Old_Tree) :-
		var(Simp), !.
	scan_term(Simp, Old_Tree, Old_Tree) :-
	ok_number(Simp), !.	%  was integer(Simp)
	scan_term(Atom, Old_Tree, New_Tree) :-
		atom(Atom), !,
		insert_word(Old_Tree, Atom, New_Tree).
	scan_term(List, Old_Tree, New_Tree) :-
		List = [_|_], !,
		scan_list(List, Old_Tree, New_Tree).
	scan_term(Term, Old_Tree, New_Tree) :-
		Term =.. [_Functor|Args], !,
		scan_list(Args, Old_Tree, New_Tree).

		insert_word(t(C, W, L, R), W, t(D, W, L, R)) :- !,
			(   var(C), D = 1
			;   integer(C), D is C+1
			),  !.
		insert_word(t(C, X, L, R), W, t(C, X, M, R)) :-
			W @< X, !,
			insert_word(L, W, M).
		insert_word(t(C, X, L, R), W, t(C, X, L, S)) :-
			W @> X, !,
			insert_word(R, W, S).

		scan_list([Head|Tail], Old_Tree, New_Tree) :-
			scan_term(Head, Old_Tree, Mid_Tree), !,
			scan_list(Tail, Mid_Tree, New_Tree).
		scan_list([],          Old_Tree, Old_Tree).

	tree_list(Tree,		 _Thresh, Accum, Accum) :-
		var(Tree), !.
	tree_list(t(N, _X, L, R), Thresh, Accum, Answer) :-
		N < Thresh, 
		tree_list(L, Thresh, Accum, Sofar), !,
		tree_list(R, Thresh, Sofar, Answer).
	tree_list(t(C, W, L, R), Thresh, Accum, Answer) :-
		tree_list(L, Thresh, Accum, Sofar),
		Key is -C, !,
		tree_list(R, Thresh, [Key-W|Sofar], Answer).

	strip_num([_Key-Word|Rest], [Word|More]) :- !,
		strip_num(Rest, More).
	strip_num([],		   []).

/*======================================================================== pressdir/misc/gportr.pl */

/* GPORTR : First stab at a general all level portray handler.

						Richard+Lawrence
						Updated: 26 July 82

	This was Richard's code for his rational stuff.
	Eventually I must fix these problems by having the 'print'
	routine in the interpreter actually descend level by level
	taking operators into account and calling portray at each
	level to see whether the users wants to handle it.
	NB: this has now been done.  Why is gportr still around?

	The following magic numbers appear in put(N) calls:
	32 = space, 40 = "(", 41 = ")", 44 = ",", 91 = "[", 93 = "]".
	The magic number 1000 also appears; this is the priority of ','.

*/


% /* EXPORT */
% 
% :- public
%     portray/1.
% 
% 
% /* MODES */
% 
% :- mode
%     portray(?),
% 	prin(+, +),
% 	    prin(+, +, +),
% 	    prnf(+, +, +),
% 	    prna(+, +, +),
% 	    prnp(+, +, +, +),
% 	    printail(+),
% 	    oper(+, ?, ?),
% 		oper(+, +, ?, ?).



			% Top level

portray(Term) :-
	prin(1000, Term).



			% Print a term taking account of surrounding
			%  operator priorities.

	prin(_Prio, Term) :-
		(   var(Term)		%  _N style of variables
		;   number(Term)	%  Non Q numbers
		;   atom(Term)		%  ordinary atoms
		;   Term = '$VAR'(_N)	%  A1 style of variables from numbervars
		),  !,
		writeq(Term).		%  quotes around e.g. 'foo baz'
	prin(_Prio, Term) :- /*Q'*/
		portray_number(Term),	%  if a number
		!.
	/*  Other user-provided portrayal methods should be called here  */
	prin(_Prio, [Head|Tail]) :- !,	%  list
		put(91),		%  "["
		prin(1000, Head),
		printail(Tail).
	prin(Prio, Term) :-		%  postfix operator
		functor(Term, Functor, 1),
		oper(Functor, Lp, 0), !,
		prnp(Prio, Lp, 0, 40),
  		prna(Lp, Term, 1),
		prnf(Functor, 0, 1),
		prnp(Prio, Lp, 0, 41).
	prin(Prio, Term) :-		%  prefix operator
		functor(Term, Functor, 1),
		oper(Functor, 0, Rp), !,
		prnp(Prio, 0, Rp, 40),
		prnf(Functor, 1, 0),
		prna(Rp, Term, 1),
		prnp(Prio, 0, Rp, 41).
	prin(Prio, Term) :-		%  infix operator
		functor(Term, Functor, 2),
		oper(Functor, Lp, Rp),
		Lp > 0, Rp > 0, !,
		prnp(Prio, Lp, Rp, 40),
		prna(Lp, Term, 1),
		prnf(Functor, 0, 0),
		prna(Rp, Term, 2),
		prnp(Prio, Lp, Rp, 41).
	prin(_Prio, Term) :-
		functor(Term, Functor, N),
		writeq(Functor),
		prin(0, N, Term).


					% print one argument of a term

		prna(Prio, Term, ArgNo) :-
			arg(ArgNo, Term, Arg),
			prin(Prio, Arg).

					% print a functor with spaces

		prnf(',', _, _) :- !,
			write(', ').
		prnf(';', _, _) :- !,
			write('; ').
		prnf(Functor, L, R) :-
			prnp(L, 1, 1, 32),
			write(Functor),
			prnp(R, 1, 1, 32).

					% print the arguments of a term

		prin(0, N, Term) :-
			put(40),		%  "("
			prna(1000, Term, 1),
			prin(1, N, Term).
		prin(N, N, _Term) :- !,
			put(41).		%  ")"
		prin(L, N, Term) :-
			M is L+1,
			write(', '),
			prna(1000, Term, M), !,
			prin(M, N, Term).
		

					% Print a parenthesis if the priorities
					%  around the operator require it.

		prnp(Prio, Lp, Rp, _Char) :-
			Prio >= Lp, Prio >= Rp, !.
		prnp(_Prio, _Lp, _Rp, Char) :-
			put(Char).


					% Print the tail of a list, being
					%  careful about partial instantiation
					%  at the end..

		printail(List) :-
			nonvar(List), List = [Head|Tail], !,
			write(', '),
			prin(1000, Head), !,
			printail(Tail).
		printail(Tail) :-
			Tail \== [],
			put(124),		%  "|"
			prin(1000, Tail), !,
			printail([]).
		printail([]) :-
			put(93).		%  "]"



			% Check for operators.  Return left and right
			%  precedences. These are Richard's conventions.
			%  Note that prefix/postfix ops have 0 for their
			%  other precedence.

oper(Op, Left,Right) :-
	current_op(Prec, Type, Op),
	oper(Type, Prec, Left, Right).


	oper( fx, Prec, 0, Prec).
	oper( fy, Prec, 0, Prec).
	oper(xf , Prec, Prec, 0).
	oper(yf , Prec, Prec, 0).
	oper(xfx, Prec, Prec, Prec).
	oper(xfy, Prec, Prec, More) :- More is Prec+1.
	oper(yfx, Prec, More, Prec) :- More is Prec+1.

/*======================================================================== pressdir/misc/misc.pl */

%   Press:Misc.				Updated: 24 August 82
%   Basic utilities for Press.  Written by Alan Bundy 31.8.80.
%   additional routines by Leon Sterling, Richard O'Keefe, and Bernard Silver

%   flag(tflag,_,1)  has been moved to  Press:Filin.

% :- public
% 	andtodot/2,		%  X&Y -> [X|Y']
% 	arbint/1,		%  -> GenSym {flagged as integer}
% 	cond_print/3,		%  if Old and New differ, print New.
% %	contains/2,		%  SubTerm in Term ?
% %	correspond/4,		%  X,Xlist,Ylist,Y  X,Y at similar places
% %	delete/3,		%  delete term from list to get new list
% 	dottoand/2,		%  [X|Y] -> X&Y'
% 	dottoor/2,		%  [X|Y] -> X#Y'
% 	extreme_term/3,		%  from List pick smallest(<)|biggest(>) Term
% 	fixvar/2,		%  Exp -> Vbl where Vbl is ok for isolation
% %	freeof/2,		%  SubTerm not in Term?
% 	identifier/1,		%  -> GenSym {any old intermediate}
% 	least_dom/2,		%  SubTerm has Term as least dominating term?
% 	mult_occ/2,		%  SubTerm in Term more than once
% 	ok/1,			%  does it make sense to solve for X ?
% 	ortodot/2,		%  X#Y -> [X|Y']
% %	position/3,		%  Term,Exp -> Path
% 	single_occ/2,		%  SubTerm in Term exactly once?
% 	subst_mesg/3.		%  substitution with trace_press
% 
% %   Predicates to convert between conjunctions/disjunctions and lists.
% %   The routines binary_to_list and list_to_binary might be useful elsewhere.
% 
% :- mode
% 	andtodot(+,-),			%   Conjunction -> List
% 	binary_to_list(+,+,+,?,?),	%   Term,Operator,Unit -> DiffList
% 	dottoand(+,-),			%   List -> Conjunction
% 	dottoor(+,-),			%   List -> Disjunction
% 	list_to_binary(+,+,-),		%   List,Operator -> Term
% 	ortodot(+,-).			%   Disjunction -> List


:- dynamic integral/1.

andtodot(Term, List) :-
	binary_to_list(Term, &, true, List, []).

ortodot(Term, List) :-
	binary_to_list(Term, #, false, List, []).

	binary_to_list(Nil, _, Nil, List, List) :- !.
	binary_to_list(Term, Op, Nil, Head, Tail) :-
		Term =.. [Op, Arg1, Arg2],
		binary_to_list(Arg1, Op, Nil, Head, Middle), !,
		binary_to_list(Arg2, Op, Nil, Middle, Tail).
	binary_to_list(Term, _, _, [Term|Tail], Tail).


dottoand([], true) :- !.
dottoand(List, Term) :-
	list_to_binary(List, &, Term).

dottoor([], false) :- !.
dottoor(List, Term) :-
	list_to_binary(List, #, Term).

	list_to_binary([Term], _, Term) :- !.
	list_to_binary([Head|Tail], Op, Answer) :-
		Answer =.. [Op,Head,Rest], !,
		list_to_binary(Tail, Op, Rest).



%   Occurrence clauses.  The routine occ/3 is defined in STRUCT.PL.
%   freeof(K,E) :- occ(K,E,0) is certainly a good definition of the
%   meaning of freeof, but the definition here is faster and uses
%   less stack.  A similar improvement is possible for single_occ
%   and mult_occ, but there is less to be gained from them.

% :- mode
% %	contains(+,+),			%  Kernel in Expression ?
% %	freeof(+,+),			%  Kernel not in Expression ?
% %	freeof(+,+,+),			%  Arity,Kernel,Expression ?
% 	mult_occ(+,+),			%  mult_occ with args swapped
% 	single_occ(+,+).		%  Kernel in Expression once ?


single_occ(Kernel, Expression) :-
	occ(Kernel, Expression, 1).

mult_occ(Kernel, Expression) :-		%  arguments right way round
	occ(Kernel, Expression, N), !, N > 1.

/*  Defined elsewhere
contains(Kernel, Expression) :-
	\+ freeof(Kernel, Expression).


freeof(Kernel, Kernel) :- !,
	fail.
freeof(Kernel, Expression) :-
	simple(Expression), !.
freeof(Kernel, Expression) :-
	functor(Expression, _, Arity), !,
	freeof(Arity, Kernel, Expression).

	freeof(0, Kernel, Expression) :- !.
	freeof(N, Kernel, Expression) :-
		arg(N, Expression, Argument),
		freeof(Kernel, Argument),
		M is N-1, !,
		freeof(M, Kernel, Expression).

*/


%   test whether Exp is a least dominating expression of Term, i.e.
%   whether Exp contains at least two occurrences of Term directly.

% :- mode
% 	at_least_occ(+,+,+),		%  List has Term >= Limit times?
% 	com_ass_idn(+,-),		%  Operator -> Identity
% 	least_dom(+,+),			%  Kernel,Expression ?
% 	least_dom(+,+,+,+).


%   at_least_occ(List, Term, Limit) is true when List contains at least
%   Limit (>= 0) elements which contain Term.  This is NOT the same as
%   occ(List,Term,N) & N >= Limit, as several instances can be in 1 element.

at_least_occ(_, _, 0) :- !.
at_least_occ([Head|Tail], Term, Limit) :-
	contains(Term, Head),
	Mimit is Limit-1, !,
	at_least_occ(Tail, Term, Mimit).
at_least_occ([_|Tail], Term, Limit) :-
	at_least_occ(Tail, Term, Limit).


%   com_ass_idn(Op,Id) -> Op is a commutative associative operator
%   with identity element Id.  This is a makeshift for keeping the
%   arguments of such operators as bags.

	com_ass_idn((+), 0).		com_ass_idn(*, 1).
	com_ass_idn(&, true).		com_ass_idn(#, false).


least_dom(Term, Exp) :-
	functor(Exp, Op, 2),
	com_ass_idn(Op, Unit),
	binary_to_list(Exp, Op, Unit, List, []), !,
	at_least_occ(List, Term, 2).
least_dom(Term, Exp) :-
	functor(Exp, _, N),
	least_dom(N, 0, Term, Exp).

	least_dom(_N, 2, _Term, _Exp) :- !.
	least_dom(0, _K, _Term, _Exp) :- !, fail.
	least_dom(N, K, Term, Exp) :-
		arg(N, Exp, Arg),
		contains(Term, Arg),
		M is N-1, L is K+1, !,
		least_dom(M, L, Term, Exp).
	least_dom(N, K, Term, Exp) :-
		M is N-1, !,
		least_dom(M, K, Term, Exp).


/*
%   position(Term, Exp, Path) is true when Term occurs in Exp at the
%   position defined by Path.  It may be at other places too, so the
%   predicate is prepared to generate them all.

% :- mode
% 	position(?,+,?),		%  Term,Exp -> Path
% 	position(+,?,+,?).		%  ArgNo,Term,Exp -> Path


position(Term, Term, []).
position(Term, Exp, Path) :-
	(   var(Exp) ; atomic(Exp) ; ok_number(Exp)   ), !, fail.
position(Term, Exp, Path) :-
	functor(Exp, _, N),
	position(N, Term, Exp, Path).

	position(0, Term, Exp, Path) :- !, fail.
	position(N, Term, Exp, [N|Path]) :-
		arg(N, Exp, Arg),
		position(Term, Arg, Path).
	position(N, Term, Exp, Path) :-
		M is N-1, !,
		position(M, Term, Exp, Path).
*/
 
%   Find the smallest (if C = <) or greatest (if C = >) term in a list of
%   terms, where comparison is by the size of a term.

% :- mode
% 	extreme_term(+,+,-),
% 	extreme_term(+,+,+,+,-),
% 	term_size(+,-),
% 	term_size(+,+,+,-).


extreme_term([Head|Tail], C, Term) :-
	term_size(Head, Size), !,
	extreme_term(Tail, Head, Size, C, Term).

	extreme_term([Head|Tail], _Hold, Sold, C, Term) :-
		term_size(Head, Size),
		compare(C, Size, Sold), !,
		extreme_term(Tail, Head, Size, C, Term).
	extreme_term([_Head|Tail], Hold, Sold, C, Term) :- !,
		extreme_term(Tail, Hold, Sold, C, Term).
	extreme_term([],	  Term, _,    _, Term).

	term_size(Term, 1) :-
		(   var(Term) ; atomic(Term) ; ok_number(Term)   ), !.
	term_size(Term, Size) :-
		functor(Term, _, N), !,
		term_size(N, Term, 1, Size).

		term_size(0, _Exp, Ans, Ans) :- !.
		term_size(N, Exp, Acc, Ans) :-
			arg(N, Exp, Arg),
			term_size(Arg, Size),
			Nxt is Acc+Size+1, M is N-1, !,
			term_size(M, Exp, Nxt, Ans).


%   generate intermediate variables, or arbitray integer tokens.

% :- mode
% 	arbint(-),
% 	identifier(-).

arbint(Var) :-
	gensym(n, Var),
	assert(integral(Var)),
	trace_press('\n\tLetting %t denote an arbitrary integer', [Var], 1), !.

identifier(Var) :-
	gensym(x, Var), !.
%	assert(intermediate(Var)) for MECHO info.

/*  Code needed for running MECHO output (goes in process_input)
%   fix the variable to be isolated if it has not already been fixed.

fixvar(Exp, Var) :-
	var(Var),		%  why not drop this test?
	wordsin(Exp, Words),
	member(Var, Words),
	ok(Var),
	checkand(contains(Var), Exp), !.
fixvar(Exp, Var) :-
	nonvar(Var).


ok(Var) :-
	\+ call(const(Var)),
	(  call(sought(Var))
	;  call(given(Var))
	), !.

*/

/*
%   correspond(X, Xlist, Ylist, Y) is true when the position of X and Xlist
%   and the position of Y in Ylist (which is as long as Xlist) are the same.

:-  mode  correspond(?, +, +, ?).	%  the lists must be given

correspond(X, [X|_], [Y|_], Y) :- !.
correspond(X, [_|T], [_|U], Y) :-
	correspond(X, T, U, Y).

*/
%   cond_print(Old,New,Infer) prints New unless it matches Old.

% :-  mode  cond_print(+, +, -).

cond_print(Old, New, nil) :-
	match(Old, New), !.
cond_print(_Old, New, tidy(New)) :-
	trace_press('\nTidying to %t\n', [New], 1).


%   apply a substitution, tidy the result, and print a message.

% :-  mode  subst_mesg(+, +, -).

subst_mesg(Substitution, Old, New) :-
	subst(Substitution, Old, Mid),
	tidy(Mid, New),
	trace_press('\nApplying substitution %c\n   to    : %c\n   gives : %c\n',
		[Substitution, Old, New], 1), !.

/*

:- mode
	delete(+,+,-).			%  List,Drop -> Depleted

delete([], _, []) :- !.
delete([Kill|Tail], Kill, Rest) :- !,
	delete(Tail, Kill, Rest).
delete([Head|Tail], Kill, [Head|Rest]) :- !,
	delete(Tail, Kill, Rest).



*/

/*======================================================================== pressdir/misc/fld.pl */

%   File   : FLD
%   Author : Richard O'Keefe
%   Updated: 20 July 1983
%   Purpose: Find a least dominating subterm

/*  We are given a kernel X and an expression Exp, and want to find
    a subterm Ldom of Exp which is a least dominating term for X,
    and the path to that term.
    This is done by finding the unique argument which contains all
    the occurrences of X, and if there is more than one such argument,
    returning the current term.
*/

%:- public
%	find_least_dom/4,	%   ker x expr -> expr x path
%	least_closeness/3.	%   ker x expr -> integer
%
%:- mode
%	find_least_dom(+, +, -, -),
%	least_closeness(+, +, -),
%	unique_argument(+, +, -),
%	unique_argument(+, +, +, +, -).


find_least_dom(X, Exp, Ldom, [ArgNo|Path]) :-
	unique_argument(X, Exp, ArgNo),
	arg(ArgNo, Exp, Arg),
	!,
	find_least_dom(X, Arg, Ldom, Path).
find_least_dom(_X, Exp, Exp, []).


unique_argument(X, Exp, ArgNo) :-
	functor(Exp, _, N),
	unique_argument(N, X, Exp, 0, ArgNo).

unique_argument(0, _, _, ArgNo, ArgNo) :- !.
unique_argument(N, X, Exp, SoFar, ArgNo) :-
	arg(N, Exp, Arg),
	contains(X, Arg),
	!,
	SoFar = 0,
	M is N-1,
	unique_argument(M, X, Exp, N, ArgNo).
unique_argument(N, X, Exp, SoFar, ArgNo) :-
	M is N-1,
	unique_argument(M, X, Exp, SoFar, ArgNo).


/*  least_closeness(X, Exp, Dist)
    finds the closeness of the occurrences of the kernel X in the expression
    Exp, which is not guaranteed to be a least dominating term for X.  The
    older predicate 'closeness' is only correct when Exp >is< a least
    dominating term, so this code finds the correct subterm first.  Some of
    the uses of 'closeness' in press:attrac should be changed to use this.
*/
least_closeness(X, Exp, Dist) :-
	find_least_dom(X, Exp, Ldom, _),
	closeness(X, Ldom, Dist).

/*======================================================================== pressdir/toplevel/solve.pl */

/* SOLVE : Top level Solve procedure

        After a chequered history       Updated: 12 May 1983
*/                      
/***********************************************
        SOLVE ONE EQUATION OR INEQUALITY 
************************************************/

:- dynamic seen_eqn/1.

/* Top Level Solve Procedure */

solve(Eqn,X,Ans,[Tidy|ProofTree]) :- 
    process_input(Eqn,X,Eqn1,Tidy),
    initialize_loop_check,
    solve_eqn(Eqn1,X,Ans1,ProofTree-[]), 
    process_answer(Ans1,Ans,[Tidy|ProofTree]),
    !.


/* Equation does not contain the unknown */

solve_eqn(Eqn,X,Soln,[evaluation|L]-L) :- 
        freeof(X,Eqn), 
        !,
        verify(Eqn,Soln).

/* Deal with disjunction */

solve_eqn(Eqn,X,Soln,Proof) :-
        disjunction(Eqn),
        !,
        disj_solve(Eqn,X,Soln,Proof).

disj_solve(Eqn,X,Soln,Proof) :-
        ortodot(Eqn,EqnList),
        disj_solve_list(EqnList,X,SolnList,Proof),
        dottoor(SolnList,Soln),
        !.

disj_solve_list([],_,[],L-L) :- !.

disj_solve_list([Eqn|E],X,[Soln|S],[Proof|P]-Diff) :-
        trace_press('\n\nSolving disjunct %t\n',[Eqn],1),
        solve_eqn(Eqn,X,Soln,Proof),
        disj_solve_list(E,X,S,P-Diff).

/* See if eqn is factorizable*/

solve_eqn(Lhs=Rhs, X, Soln, [Fact|Proof]-Diff) :-       % Always factorise when possible
        zero(Rhs),
        mulbag(Lhs),
        !,
        factorise(Lhs,X,List,Fact),
        fact_solve(List,X,SolnList,Proof-Diff),
        dottoor(SolnList,Soln).

fact_solve([],_,[],L-L) :- !.

fact_solve([Lhs|L],X,[Soln|S],Proof-Diff) :-
        trace_press('\n\nSolving factor %t = 0\n',[Lhs],1),
        solve_eqn(Lhs=0,X,Soln,Proof-Inter),
        fact_solve(L,X,S,Inter-Diff).

/* If single occurence of unknown then Isolate */

solve_eqn(Exp,X,Ans,[single_occurrence|Proof]-Proof) :-
        single_occ(X,Exp),
        !,
        position(X,Exp,Posn),
        isolate(Posn,Exp,Ans).

/* Special Polynomial Method */

solve_eqn(Lhs=Rhs,X,Ans,Proof-Diff) :-
        is_poly(X,Lhs),
        !,
        poly_solve(Lhs=Rhs,X,Ans,Proof-Diff).

/* Try to Change the unknown to simplify equation  */

solve_eqn(Eqn,X,Ans,[substitute(Term)|Proof]-Diff) :- 
        changeunknown(Eqn,X,Term),
        !,
        changevar(Term,Eqn,NewVar,NewEqn),
        solve_eqn(NewEqn,NewVar,Soln,Proof-Inter),
        subst_mesg(NewVar=Term,Soln,NewSoln),
        solve_eqn(NewSoln,X,Ans,Inter-Diff),
        !.

/* Apply Collection to reduce occurrences of unknown */

solve_eqn(Exp=Rhs,X,Ans,[collect|Proof]-Diff) :- 
        collect(X,Exp,New), 
        !,
        trace_press('\n%t = %t\n',[New,Rhs],1),
        solve_eqn(New=Rhs,X,Ans,Proof-Diff).

/* Apply Attraction to move occurrences of unknown closer together */

solve_eqn(Exp=Rhs,X,Ans,[attract|Proof]-Diff) :- 
        attract(X,Exp,New), 
        !,
        trace_press('\n%t = %t\n',[New,Rhs],1),
        solve_eqn(New=Rhs,X,Ans,Proof-Diff).

/* Trig factorization method */

solve_eqn(Eqn,X,Ans,[trig_fac|Proof]-Diff) :-
        linear_sin_cos(Eqn,X),
        trig_fac(Eqn,X,Neweqn),
        solve_eqn(Neweqn,X,Ans,Proof-Diff),
        !.

/* Try to remove dominating functor  */

solve_eqn(Eqn,X,Ans,[isolate|Proof]-Diff) :- 
        nas1(Eqn,X,Posn),
        isolate(Posn,Eqn,New),
        solve_eqn(New,X,Ans,Proof-Diff),
        !.

/* Try to take logs if equation is in suitable form  */

solve_eqn(Eqn,X,Ans,[take_logs|Proof]-Diff) :- 
        prod_exp_terms_eqn(Eqn,X,New),
        !,
        log_reduce(New,X,Base,Log),
        weak_normal_form(Log,X,NewLog),
        trace_press('\nTaking logs, base %t, gives \n\n%t\n',[Base,Log],1),
        solve_eqn(NewLog,X,Ans,Proof-Diff),!.
 
/* Try homogenization     */

solve_eqn(Eqn,X,Ans,[homog|Proof]-Diff) :-
        multiple_offenders_set(Eqn,Off_Set,X),
        homog(Eqn,X,New,Term,V,Off_Set),
        tidy(New,NewEqn),       % Hack due to poor tidying
        solve_eqn(NewEqn,V,Vans,Proof-Inter),
        subst_mesg(V=Term,Vans,Uans),
        solve_eqn(Uans,X,Ans,Inter-Diff),
        !.


/* Try to eliminate Nasty Functions */

solve_eqn(Eqn,X,Ans,[nasty|Proof]-Diff) :- 
        nasty_method(Eqn,X,Neweq),
        tidy(Neweq,Neweqn),
        solve_eqn(Neweqn,X,Ans,Proof-Diff),
        !.


/* One, two and three argument solve clauses for easy type-in and past
        compatibility                                    */

solve(Exp) :- solve(Exp,x,_A,_).
solve(Exp,Unk) :- solve(Exp,Unk,_Ans,_).
solve(Exp,Unk,Ans) :- solve(Exp,Unk,Ans,_).

% Initialize Looping Check
initialize_loop_check :- 
        abolish(seen_eqn,1),
        assert((seen_eqn(_) :- fail)).

% Tidy the input equation, putting into weak normal form (see weaknf)
% noting any significant changes

process_input(Eqn,X,Eqn2,Infer) :-
        trace_press('\nSolving %t for %t\n',[Eqn,X],1),
        tidy(Eqn,Eqn1),
        weak_normal_form(Eqn1,X,Eqn2),
        cond_print(Eqn,Eqn2,Infer),
	!.

% Tidy and print the answer in the appropriate form.

process_answer(Ans,Ans2,ProofTree) :-
        tidy(Ans,Ans1),
        simplify_ans(Ans1,Ans2),
	print_the_answer(Ans2,ProofTree),
	real_process(Ans2,ProofTree), % Calculate and print a possibly evaluated answer but
	!.				   % don't pass it to Ans2 (which goes to solve) so that sim eqns 
					   % arent passed solutions that they cant handle.
real_process(Ans2,ProofTree) :-
	process_answer_real(Ans2,Ans3),
	(Ans2 = Ans3; print_the_answer(Ans3,ProofTree)),
	!.  



simplify_ans(A#B,C#D) :- !, simplify_ans(A,C), simplify_ans(B,D).
simplify_ans(X=Expr,X=Simp) :- !, simplify(Expr,Simp).
simplify_ans(Expr,Expr).        % to handle inequalities

print_the_answer(false,_) :- !,trace_press('\nThe equation has no solution.\n',1).

print_the_answer(Ans,_) :- trace_press('\nAnswer is : %e\n',[Ans],1).

process_answer_real(Old,New1) :-
	flag(real,on,on),
	!,
	process_answer_23(Old,New),
	cond_real_print(Old,New,New1).

process_answer_real(X,X).

:- flag(real,_,on).

cond_real_print(Old,New,New) :-
	match(Old,New),
	!.

cond_real_print(_,New,NewAns) :-
	remove_bad_answers(New,New1),
	tidy(New1,NewAns),
	writef_press('\nEvaluating expression to\n\n%e\n',[NewAns]).

remove_bad_answers(A#B,New) :- !,
	remove_bad_answers(A,A1),
	remove_bad_answers(B,B1),
	tidy(A1#B1,New).

remove_bad_answers(A&B,false) :-
	((remove_bad_answer(A,A1),A \= A1) ; (remove_bad_answer(B,B1),B \= B1)),
	!.
remove_bad_answers(A&B,A&B) :- !.
remove_bad_answers(A,B) :-
	remove_bad_answer(A,B).
remove_bad_answer(invalidlog-New,false) :- !,
	writef_press('\n Answer %t\n is invalid as it contains a negative argument to a log\n\n',[New]).
remove_bad_answer(invalidasin-New,false) :- !,
	writef_press('\n Answer %t\n is invalid as it contains a argument to asin that is numerically > 1\n\n',[New]).
remove_bad_answer(invalidacos-New,false) :- !,
	writef_press('\n Answer %t\n is invalid as it contains a argument to acos that is numerically > 1\n\n',[New]).
remove_bad_answer(invalidexp-New,false) :- !,
	writef_press('\n Answer %t\n is invalid as it contains a negative base argument to an exponent\n\n',[New]).
remove_bad_answer(A,A).

/*======================================================================== pressdir/toplevel/simeq.pl */

/* SIMEQ. :         May 1981

                                                Alan Bundy
                                                Updated: 10 September 82

        Simultaneous Equations Routines      */

/*simultaneous solution with messages*/
simsolve(Eqns,Us,Ans) :-
        trace_press('Simultaneously solving : %cFor %t.\n',[Eqns,Us],1),
	flag(real,Old,off),	% Stop solve evaluating with real arith.
        simsolve_pick(Eqns,Us,Ans), 
        trace_press('\nFinal Answers are : %e', [Ans],1),
	flag(real,_,Old),	% Reset flag to old value
	real_process(Ans,_),
        !.


/* Solve conjunction of equations */
simsolve_pick(Eqns,Unks,Ans1) :-
        reorder_eqn(Unks,Eqns,NewUnks,NewEqns),
        simsolve1(NewEqns,NewUnks,Ans1).

simsolve1(EqnsA & EqnsB,[X|Unks], Ans1) :- !,
        pick_xeqn(EqnsA & EqnsB,X,XEqn,Rest),
        solve(XEqn,X,Ans),
        distribute(Ans,Rest,Eqns1),
        simsolve2(Eqns1,Unks,Ans1).



/*single equation*/
simsolve1(A=B, [U], Ans) :- !, solve(A=B,U,Ans).


/*basis case*/
simsolve1(true,[],true) :- !.

/*Pick equation to solve for x, and return the remainder */
pick_xeqn(EqnC,X,XEqn,RestC) :-  !,
        andtodot(EqnC,EqnL),
        sublist(contains(X),EqnL,XEqnL),
        subtract(EqnL,XEqnL,NonXRestL),
        select(XEqn,XEqnL,XRestL),
        append(XRestL,NonXRestL,RestL),
        dottoand(RestL,RestC).

/* Distribute Or over And */
distribute(Sub1 # Sub2, Exp, Ans1 # Ans2) :- !, % disjunction case
        distribute(Sub1,Exp,Ans1),
        distribute(Sub2,Exp,Ans2).

distribute(Sub, Exp, Sub & Ans) :- !,   % conjunction or single equation case
        subst_mesg(Sub,Exp,Ans).


/* Call simsolve1 recursively and substitute back */
simsolve2(Eqns1 # Eqns2, Unks, Ans1 # Ans2) :- !,       % Solve disjunction
        simsolve2(Eqns1,Unks,Ans1),
        simsolve2(Eqns2,Unks,Ans2).

simsolve2(X=Ans1 & Eqns, Unks, Ans3) :- !,      % Discount already solved equation
        simsolve1(Eqns, Unks, Ans2),
        trace_press('Substituting back in %t solution\n',[X],1),
        distribute(Ans2,X=Ans1,Ans3).

% Clauses for easy type-in   
simsolve(Eqns,Unks) :- simsolve(Eqns,Unks,_Ans).

simsolve(Eqns) :- simsolve(Eqns,[x,y],_Ans).

/* Problems
        2. Return particular solutions; alternates on backtracking.
        4. Reject silly answers as required by Cardan. (??)
*/

/*======================================================================== pressdir/toplevel/sim.pl */

 %              SIM                      
 % Simplify simultaneous equations using homogenization 
 % Bernard Silver 12.9.81 
 % Updated: 10 September 82

 % Top level 
 % Find the offending terms in each unknown 

sim(Eqns1,Unks,Ans) :- tidy(Eqns1,Eqns),
        mapmodparse(Eqns,Unks,Offends),
        sim1(Eqns,Unks,Offends,Ans),
        !.

 % If all the offending sets are empty or contain only the unknown
 % use normal method (simsolve) 

sim1(Eqns,Unks,Offends,Ans) :- checktrivial_set(Unks,Offends),
        simsolve(Eqns,Unks,Ans),
        !.

 % Otherwise try to use homogenization  

sim1(Eqns,Unks,Offends,Ans) :-
        trace_press('Simultaneously solving : %c For %t.\n',[Eqns,Unks],1),
        apply_sim2(Eqns,Unks,Offends,New,Vs,Terms),
        !,
        tidy(New,New1),
        reorder_eqn(Vs,New1,NewVarsList,NewEqnList),
	flag(real,Old,off),
        simsolve1(NewEqnList,NewVarsList,Ans1),
        ortodot(Ans1,Dislist),
        listsolve(Dislist,NewVarsList,Terms,Unks,Ans2),
        dottoor_set(Ans2,Ans),
        trace_press('\nFinal Answers are : %e ',[Ans],1),
	flag(real,_,Old),
	process_answer_real(Ans,_).


 % If homogenization fails try simsolve 
sim1(Eqns,Unks,_,Ans) :- 
	flag(real,Old,off),
	simsolve1(Eqns,Unks,Ans1),
        tidy(Ans1,Ans),
        trace_press('\nFinal Answers are : %e',[Ans],1),
	flag(real,_,Old),
	process_answer_real(Ans,_),
        !.

apply_sim2(Eqns,[],[],Eqns,[],[]) :- !.
apply_sim2(Eqns,[H|T],[O1|T1],New,[V1|T2],[Term1|T3]) :-
        sim2(Eqns,H,O1,New1,V1,Term1),
        apply_sim2(New1,T,T1,New,T2,T3),
        !.

 % sim2(Eqns,Unknown,Newequation,Identifier,Reduced_Term) applies
 % homogenization to the set of equations,homogenizing in Unknown 

sim2(Eqns,X,[],Eqns,X,X) :- !. %Eqns do not contain X
sim2(Eqns,X,[X],Eqns,X,X) :- !. %Eqns is already homogeneous in X
sim2(Eqns,X,Y,Eqns,X,X) :- checklist(polytype(X),Y),!.
 %Only Polynomials

 % Change of Unknown case 
sim2(Eqns,_X,[A],New,V,A) :- identifier(V),subst_mesg(A=V,Eqns,New),!.

 % Homogenize 
sim2(Eqns,X,Off,New,V,Term) :- 
	homog1(Eqns,X,New,Term,V,Off,Hom,sim),
        trace_press('\nHomogenizing equations in %t\n gives %c\n',[X,Hom],1),
        trace_press('\nSubstituting %t = %t gives %c\n',[V,Term,New],1),
        !.

 % listsolve(ListofAns,Newunks,Reducedterms,Oldunks,Newans) 
 % ListofAns is the list of answers in the Newunks returned by simsolve1.
 % listsolve now solves the substitution equations (of the form
 % Newunk1=Ans1 & Reducedterm1=Newunk1) in terms of the Oldunks to give
 % Newans  

listsolve([],_,_,_,[]) :- !.
listsolve([A|T],X,Y,Z,[A1|T1]) :- 
	andtodot(A,A2),
        listsolve1(A2,X,Y,Z,A3),
        dottoand(A3,A4),
        tidy(A4,A1),
        listsolve(T,X,Y,Z,T1),
        !.

listsolve1([],_,_,_,[]) :- !.
listsolve1([H|T],Vs,Terms,Unks,[Ans|Tail]) :-
        wordsin(H,Words),
        correspond1(Words,Vs,Terms,Unks,Id,Term,Unk),
        subst_solve(Id,Term,H,Unk,Ans),
        listsolve(T,Vs,Terms,Unks,Tail),
        !.

 % Solve substitution equation

 %No substitution needed
subst_solve(X,X,Unk=Ans,Unk,Unk=Ans) :- !.

 % General case
subst_solve(Id,Term,H,Unk,Ans) :- 
        subst_mesg(Id=Term,H,New),
        weak_normal_form(New,Unk,New1),
	flag(real,Old,off),
        solve_eqn(New1,Unk,Ans,_),
	flag(real,_,Old),
        !.

 % The offending set is trivial,ie it is empty or contains just the unknown 
checktrivial_set(_,[]) :- !.
checktrivial_set(X,[H|T]) :- trivial_set(X,H),checktrivial_set(X,T),!.

trivial_set(_,[]) :- !.
trivial_set(Unklist,[X]) :- member(X,Unklist),!.


 %Reorder equations so nicest occurs first
reorder_eqn(OldVars,OldEqns,[GoodVar|Rest],NewEqns) :-
        find_good_eqn(OldVars,OldEqns,NewEqns,GoodVar),
        !,
        delete(OldVars,GoodVar,Rest).

reorder_eqn(OldVars,OldEqns,OldVars,OldEqns).
find_good_eqn([X|_],Old,New,X) :- try_sort(X,Old,New),!.
find_good_eqn([_|T],Old,New,X) :- find_good_eqn(T,Old,New,X),!.



 % Equation to be solved first should have only one 'easy' occurrence of X

try_sort(X,First&Rest,First&Rest) :- good_eqn(X,First),!.
try_sort(X,F&Rest,New) :- try_sort(X,Rest,New1),tidy(New1&F,New).
try_sort(X,First,First) :- good_eqn(X,First),!.

 %Occurrence is good if it is a first order polynomial
good_eqn(X,Eqn) :- 
	single_occ(X,Eqn),
        weak_normal_form(Eqn,X,Lhs=_Rhs),
        poly_norm(Lhs,X,[polyand(1,_)|_]),
        !.

 % Multilist version of correspond/4  
 % correspond1(List,L1,L2,L3,T1,T2,T3)
 % List, L1,L2,L3 are lists,T1 is a member of List that also occurs in L1.
 % T2 and T3 occur in the same position in L2 and L3 as T1 does in L1 

correspond1([],_,_,_,_,_,_) :- !,fail.
correspond1([H|_],L1,L2,L3,H,T2,T3) :-
        correspond2(H,L1,L2,L3,T2,T3),
        !.
correspond1([_|H],L1,L2,L3,T1,T2,T3) :-
        correspond1(H,L1,L2,L3,T1,T2,T3),
        !.

correspond2(H,[H|_],[H1|_],[H2|_],H1,H2) :- !.
correspond2(H,[_|T],[_|T1],[_|T2],H1,H2) :- 
        correspond2(H,T,T1,T2,H1,H2),
        !.

 % Modified parser,deals with & and =,and also reorders the expression 
mapmodparse(_,[],[]) :- !.
mapmodparse(X,[H|T],[H1|T1]) :- modparse(X,H,H1),mapmodparse(X,T,T1),!.

modparse(Exp,X,Off) :- dl_modparse(Exp,X,Off1-[]),listtoset(Off1,Off).

dl_modparse(A&B,X,L-L1) :- !,dl_modparse(A,X,L-L2),dl_modparse(B,X,L2-L1).
dl_modparse(A=B,X,L-L1) :- !,dl_modparse(A,X,L-L2),dl_modparse(B,X,L2-L1).
dl_modparse(A,X,Off) :- dl_parse(A,Off,X),!.

 % These are needed to deal with disjunctive solutions from simsolve1 
dottoor_set(List,Ans) :- listtoset(List,L1),dottoor(L1,Ans1),tidy(Ans1,Ans),!.

 % Equation doesn't need homogenization in X
polytype(X,X) :- !.
polytype(X,X^N) :- integer(N),!.

 %Clauses for easy type in

sim(Eqns) :- sim(Eqns,[x,y],_Ans).

sim(Eqns,Unks) :- sim(Eqns,Unks,_Ans).

/*======================================================================== pressdir/toplevel/ineq.pl */

/*              INEQ       Updated: 14 January 83
		min/3 commented out 3rd October 1987
*/

% :- public
%                 findbnd/3,
%                 givesneg/3,
%                 subst2/4.

/*******************************
        MULTIPLE INEQUALITIES
**********************************/

/*FIND MINIMUM VALUE OF X FOR WHICH EXP IS TRUE*/
%min(Exp,X,Minval) :- 
%        solveineq(Exp,X,X>=Minval),
%        trace_press('Hence minimum value of %c is %c\n',[X,Minval],1),
%        !.

/*SOLVE INEQUALITY CONJUNCTION*/

solvemax(Exp,X,Ans) :-
        process_ineq(Exp,X,Ansset),
        maximum(Ansset,Ans1), 
        tidy(Ans1,Ans),
        trace_press('%t dominates the other inequalities.\n',[Ans],1).

solvemin(Exp,X,Ans) :-
        process_ineq(Exp,X,Ansset),
        minimum(Ansset,Ans1), 
        tidy(Ans1,Ans),
        trace_press('%t dominates the other inequalities.\n',[Ans],1).

process_ineq(Exp,X,Ansset) :-
        trace_press('Trying to solve %c\n',[Exp],1),
        tidy(Exp,Exp1),
        mapand(findbnd(X),Exp1,Ansset),
        trace_press('Isolating %t on the lhs gives %c\n',[X,Ansset],1),
        trace_press('Trying to find maximum of : %c',[Ansset],3),
        !.

/*SOLVE INEQUALITY*/

findbnd(_X,true,true) :-!.

findbnd(X,Ineq,Ans) :-
        solve(Ineq,X,Ans1),
        Ans1=..[Prop,X,Bnd1],
        (intermediates_in(Bnd1,[Y]) -> findmax(Bnd1,Y,[Bnd]); Bnd1=Bnd),
        Ans=..[Prop,X,Bnd],
        !.

findbnd(X,Ineq,_Ans) :-
        trace_press('Unable to find bounds for %t in %t.\n',[X,Ineq],2), 
        !, fail.


/*GET LIST OF INTERMEDIATES IN EXP*/

intermediates_in(Exp,Inters) :-
        wordsin(Exp,Words), 
        sublist(intermediate,Words,Inters),
        !.

/*FIND MAXIMUM VALUES OF EXPRESSION*/

findmax(Exp,X,Maxvals) :-
        diffwrt(Exp,Exp2,X),
        solve(Exp2=0,X,Soln),
        collect_ans(X,Soln,Anslist),
        diffwrt(Exp2,Exp3,X),
        sublist(givesneg(X,Exp3),Anslist,Maxargs),
        maplist(subst2(X,Exp),Maxargs,Maxvals),
        !.

/*special substitution to suit maplist*/

subst2(X,Exp,Arg,Val) :- subst(X=Arg,Exp,Val1), tidy(Val1,Val), !.

/*MAKE LIST OF ALTERNATIVE ANSWERS*/

collect_ans(X,true, [X]) :- !.

collect_ans(_X,false, []) :- !.

collect_ans(X,X=Ans,[Ans]) :- !.

collect_ans(X,Exp1#Exp2,Anslist) :-
        collect_ans(X,Exp1,Anslist1), 
        collect_ans(X,Exp2,Anslist2),
        append(Anslist1,Anslist2,Anslist),
        !.

/*SUBSTITUTING ANS FOR X IN EXP GIVES NEGATIVE RESULT*/

givesneg(X,Exp,Ans) :-
        subst_mesg(X=Ans,Exp,Exp1), 
        negative(Exp1),
        !.

/*======================================================================== pressdir/methods/isolat.pl */

/* ISOLAT. : 

                                                    19.2.81 
                                                 Modified 19.9.81 
                                                Updated: 7 September 82
*/

% :- public
%                 isolate/3.


/* ISOLATION ROUTINES*/

isolate([N|Posn],Exp,Ans) :-
        maneuver_sides(N,Exp,NewExp),
        isolate1(Posn,NewExp,Inter),
        tidy(Inter,Ans),
        mod_trace_press(Ans).

/*get term to be isolated on Lhs */

maneuver_sides(1,Exp,Exp) :- !.

maneuver_sides(2,Exp,NewExp) :- 
        !,
        Exp=..[Sym,Lhs,Rhs],
        invert(Sym,Sym1),
        NewExp=..[Sym1,Rhs,Lhs].

%% Perform the Isolation %%

/*trivial boolean cases*/

isolate1(_Posn,false,false).
isolate1(_Posn,true,true).

/*deal with each disjunct*/

isolate1(Posn,Eqn1#Eqn2,Ans1#Ans2) :- 
        !, 
        isolate1(Posn,Eqn1,Ans1),
        isolate1(Posn,Eqn2,Ans2).


/*expression is already isolated*/

isolate1([],Ans,Ans) :- !.

/*expression can have isolax rule applied*/

isolate1([N|Posn],Old,Ans) :- !,
        isolax(N,Old,New,Condition),
        modcall(Condition),    %Hack for non_zero
        isolate1(Posn,New,Ans).

/* Inversion of Predicates */

invert(S1,S2) :- perm2(S1,S2,S3,S4), invert1(S3,S4), !.

invert1(=,=) :- !.
invert1(>,<) :- !.
invert1(>=,=<) :- !.

/* Overcoming non_zero, etc. condition */

modcall(A&B) :- !,modcall(A),modcall(B).
modcall(non_zero(X)) :- non_zero(X),!.
modcall(non_zero(X)) :- eval(X=0),!,fail.
modcall(non_zero(X)) :- trace_press('\nAssuming %t is non-zero\n',[X],1),!.
modcall(X) :- call(X),!.

/* Output result */

mod_trace_press(false) :- !. % Hack for false case
mod_trace_press(Exp) :- trace_press('%c     (by Isolation)\n',[Exp],1),!.

/*======================================================================== pressdir/methods/factor.pl */

%   File: Factor.       Authors: Leon+RAOK      Updated: 23 November 82

/*  Method: factorising equations F1*F2*...*Fk = 0

    factorise assumes that the right hand side of the equation is zero,
    and the left hand side is a product.  The lhs is split into factors,
    and factors independent of x which are (or may be assumed to be)
    non-zero are "divided through".
*/

% :- public
%         factorise/4.
% 
% :- mode
%         factorise(+, +, -, -),
%         separate_factors(+, +, -, -).

factorise(Lhs, X, Factors, Proof) :-
        decomp(Lhs, [*|Terms]),
        sort(Terms, UniqueTerms), !,    %  remove duplicates
        separate_factors(UniqueTerms, X, Factors, Proof).

%   separate factors sorts the factors into those which depend on X
%   and those which do not.

separate_factors([Term|Rest], X, Factors, [div(Term)|Proof]) :-
        freeof(X, Term),                %   Term is independent of X
        modcall(non_zero(Term)),        %   is or assumed to be non-zero
        trace_press('\nDividing through by %t', [Term], 1), !,
        separate_factors(Rest, X, Factors, Proof).
separate_factors([Term|Rest], X, [Term|Factors], Proof) :- !,
        separate_factors(Rest, X, Factors, Proof).
separate_factors([], _, [], []).

/*======================================================================== pressdir/methods/poly.pl */

/*              POLY                    19.2.81 

                        Written as per note 82 in Mecho folder
                                        1.5.81  Leon 
                                 Updated: 28 October 1984
*/

% Poly_solve is only called when it has been determined that the
% equation is a polynomial equation.
%  i.e. a precondition that the method is called is that is_poly is true

poly_solve(Eqn1#Eqn2,X,Soln1#Soln2,Rules-Diff) :-
        poly_solve(Eqn1,X,Soln1,Rules-Inter),
        poly_solve(Eqn2,X,Soln2,Inter-Diff).

poly_solve(Lhs=Rhs,X,Soln,[Infer,Mult|Rules]-Diff) :-
        poly_norm(Lhs + -1*Rhs,X,Plist),
        poly_tidy(Plist,Qlist),
        cond_poly_print(Lhs + -1*Rhs,X,Qlist,Infer),
        remove_neg_powers(X,Qlist,Poly,Mult),           % Remove negative powers
        poly_method(X,Poly,Soln,Rules-Diff).

cond_poly_print(Poly,X,Plist,tidy(Pol1)) :-
        make_poly(X,Plist,Pol1),
        tidy(Poly,Pol2),
        \+ match(Pol1,Pol2),
        !,
        trace_press('\nPolynomial %t becomes \n\n%t when in normal form\n',
                                                        [Pol2,Pol1],1).
cond_poly_print(_,_,_,_).

poly_out(X,Poly) :-
        make_poly(X,Poly,P),
        trace_press('%t',[P],1).

remove_neg_powers(X,Plist,Qlist,multiply(Mult)) :-
        last(polyand(N,_),Plist),
        N < 0,
        !,
        eval(-N,N1),
        map_add_power(N1,Plist,Qlist),
        make_poly(X,Qlist,Poly),
        tidy(X^N1,Mult),
        trace_press('\nMultiply through by %t to get \n\n%t = 0\n',[Mult,Poly],1).

remove_neg_powers(_,Plist,Plist,nomult).

/*****************************************/
/* ROUTINES FOR POLYNOMIAL EQUATIONS */
/*****************************************/

/* Identities and unsatisfiable equations */

poly_method(_,[],true,[ident|Diff]-Diff) :- !.  % The polynomial has simplified away

poly_method(X,[Pterm],Ans,[single_term|Diff]-Diff) :-   % Polynomial simplified
        !,                                              % to a single term
        singleton_method(Pterm,X,Ans).

singleton_method(polyand(0,A),_,true) :-
        simplify(A,B),
        B = 0,
        !.

singleton_method(polyand(0,_),_,false) :- !.

singleton_method(polyand(_,_),X,X = 0) :- !.

/* LINEAR EQUATIONS */

poly_method(X,Poly,X=Ans,[linear|Diff]-Diff) :-
        linear(Poly),
        !,
        linear_method(Poly,Ans,_).

linear([polyand(1,_)|_]) :- !.

linear_method([polyand(N,A)|T],Ans,N) :-        % Handles disguised linear also
        find1(T,B),
        tidy(-B/A,Ans).

find1([polyand(0,B)],B) :- !.
find1([],0) :- !.               % Shouldn't be needed

/* QUADRATIC EQUATIONS*/

poly_method(X,Poly,Soln,[quadratic|Diff]-Diff) :-
        quadratic(Poly),
        !,
        trace_press('\nUsing quadratic equation formula\n',1),
        find_coeffs(Poly,A,B,C),
        discriminant(A,B,C,Discr),
        roots(X,A,B,C,Discr,Soln).

quadratic([polyand(2,_)|_]) :- !.

find_coeffs([polyand(2,A)|T],A,B,C) :- find2(T,B,C).

discriminant(A,B,C,Discr) :- tidy(B^2 - 4*A*C,Discr).

roots(X,A,B,_,0,X = Root) :-                    % Only 1 root
        !, 
        tidy(-B/(2*A),Root),
      trace_press('\nThe discriminant is zero, so the single solution is %t = %t\n',
                                                        [X,Root],1).

roots(X,A,B,_C,Discr,X = Root1 # X = Root2) :-
        warn_if_complex(Discr),
        tidy((-B + Discr^(1/2))/(2*A),Root1),
        tidy((-B - Discr^(1/2))/(2*A),Root2),
        trace_press('\nSolutions are %t = %t and %t = %t\n',[X,Root1,X,Root2],1).

warn_if_complex(Discr)  :-
        eval(Discr < 0),
        !,
        trace_press('\nRoots are complex',1).

warn_if_complex(_).

find2([polyand(1,B),polyand(0,C)],B,C) :- !.
find2([polyand(1,B)],B,0) :- !.
find2([polyand(0,C)],0,C) :- !.
%       find2([],0,0) :- !.     Shouldn't be needed

/* Polynomial divisible by an integral power of the unknown */

poly_method(X,Plist,X = 0 # Ans,[divide(X^N)|Rules]-Diff) :-
        last(polyand(N,_),Plist),
        N > 0,
        !,
        eval(-N,M),
        map_add_power(M,Plist,Qlist),
        poly_method(X,Qlist,Ans,Rules-Diff).

/* Disguised Linear */

poly_method(X,Poly,Soln,[linear|Rules]-Diff) :-
        disguised_linear(Poly),
        !,
        linear_method(Poly,Ans,N),
        isolate([1,1],X^N=Ans,Soln,Rules-Diff).

disguised_linear([polyand(_,_),polyand(0,_)]).

/* Disguised polynomial equations  */

poly_method(X,Plist,Ans,Rules-Diff) :- 
        poly_hidden(X,Plist,N),         % Disguised polynomial in X^N
        trace_press('\nThis is a hidden polynomial in %t\n',[X^N],1),
        !,
        map_div_power(N,Plist,Qlist),
        poly_method(X^N,Qlist,Inter,Rules-Laws),
        isolate([1,1],Inter,Ans,Laws-Diff). % Maybe needs poly_isolate

poly_hidden(_X,Poly,Gcd) :-
        gcd_powers(Poly,Gcd),
        Gcd > 1,
        !.

/* Special methods for reciprocal polynomial equations
        i.e. those that remain unchanged (w.r.t. roots)
        when unknown is replaced by 1/unknown           */

poly_method(X,Poly,X = -1 # Ans,[divide(X + 1)|Rules]-Diff) :-
        odd_symmetric(Poly),
        trace_press('\nPolynomial is odd-symmetric so %t + 1 is a factor\n',[X],1),
        !,
        factor_out(Poly,1,Plist),
        z_norm(Plist,Qoly),
        poly_method(X,Qoly,Ans,Rules-Diff).

poly_method(X,Poly,X = 1 # Ans,[divide(X - 1)|Rules]-Diff) :-
        odd_anti_symmetric(Poly),
        trace_press('\nPolynomial is odd anti-symmetric so %t - 1 is a factor\n',
                                                        [X],1),
        !,
        factor_out(Poly,-1,Plist),
        z_norm(Plist,Qoly),
        poly_method(X,Qoly,Ans,Rules-Diff).

poly_method(X,Poly,X = 1 # X = -1 # Ans,[divide(X^2 - 1)|Rules]-Diff) :-
        even_anti_symmetric(Poly),
trace_press('\nPolynomial is even anti-symmetric so %t - 1 and %t + 1 are both factors\n',
                                                        [X],1),
        !,
        factor_out(Poly,-1,Plist),
        factor_out(Plist,1,Qlist),
        z_norm(Qlist,Qoly),
        poly_method(X,Qoly,Ans,Rules-Diff).

poly_method(X,Poly,Ans,Rules-Diff) :-
        even_symmetric(Poly),
        sym_transform(Poly,NewPoly),
        trace_press('\nPolynomial is symmetric\n',1),
        !,
        poly_method(X+1/X,NewPoly,Soln,Rules-Inter),
        tidy(Soln,NewEqn),
        poly_solve(NewEqn,X,Ans,Inter-Diff).

/* Guess a root,using integers between 9 and -9  */

poly_method(X,Poly,X = Root # Ans,[divide(X - Root)|Rules]-Diff) :- 
        guess_list(Poly,Candidates),
        member(Root,Candidates),
        root(Poly,Root),
        !,
        trace_press('\nBy inspection %t = %t is a solution\n',[X,Root],1),
        eval(-Root,A),
        factor_out(Poly,A,Plist),
        z_norm(Plist,Qoly),
        trace_press('\nAfter division, polynomial becomes\n',1),
        poly_out(X,Qoly),
        poly_method(X,Qoly,Ans,Rules-Diff).


% isolate hack until code is reformed
isolate(Posn,Eqn,New,[isolate|L]-L) :- isolate(Posn,Eqn,New).

/*======================================================================== pressdir/methods/trig_fac.pl */

%   File   :  /usr/bs/pressdir/methods/trig.fac
%   Author : Bernard Silver
%   Updated: Wed Nov 20 09:53:30 1985
%   Purpose: Trigonometric Factorization for Press


 % Try to solve trig equations of the form A=0, where A contains only
 % sin and cos and terms in linear form  

 % Also solves a*cos(x) + b*sin(x) =c ,see  comments on derive/7 


 % Top Level 
trig_fac(A=C,X,New) :- 
        trig_normal_form(X,A,List),
        trigmethod(X,List,Type),
        trigsolve(X,List,C,Type,New),
        !.

linear_sin_cos(A=_B,X) :- !,linear_sin_cos(A,X).

linear_sin_cos(A+B,X) :- !,linear_sin_cos(A,X),linear_sin_cos(B,X).

linear_sin_cos(A*B,X) :- !,
        decomp(A*B,[*|List]),
        sublist(contains(X),List,[New]),
        linear_sin_cos(New,X).

linear_sin_cos(Z,X) :- freeof(X,Z),!.

linear_sin_cos(sin(_),_) :- !.

linear_sin_cos(cos(_),_) :- !.


trig_normal_form(X,A,List) :-
        unattract_distribute(X,A,New),
        decomp(New,[+|NewList]),
        maptrigtype(X,NewList,List).

unattract_distribute(X,A,New) :-
        decomp(A,[*|List]),
        !,
        collect_multipliers(X,List,1,Mults,[],[Rest]),
        tidy(Mults,NewMult),
        dist_multiply(NewMult,Rest,New).

unattract_distribute(X,A,New) :- 
        decomp(A,[+|New1]),
        !,
        mapunattract_distribute(X,New1,New2),
        recomp(New,[+|New2]).

unattract_distribute(_,A,A).

mapunattract_distribute(_,[],[]).

mapunattract_distribute(X,[H|New1],[H1|New2]) :-
        unattract_distribute(X,H,H1),
        mapunattract_distribute(X,New1,New2).

collect_multipliers(_,[],Acc,Acc,Acc1,Acc1) :- !.

collect_multipliers(X,[H|T],Acc,Ans,Acc1,Ans1) :-
        freeof(X,H),
        !,
        collect_multipliers(X,T,Acc*H,Ans,Acc1,Ans1).

collect_multipliers(X,[H|T],Acc,Ans,Acc1,Ans1) :- 
        collect_multipliers(X,T,Acc,Ans,[H|Acc1],Ans1).


dist_multiply(A,B+C,D+E) :- !,dist_multiply(A,B,D),dist_multiply(A,C,E).

dist_multiply(A,B,C) :- tidy(A*B,C),!.


 % Put each trig term into the form tf(Fun,Mult,Ang,Rest,plus(Coeff,Add))
 % where Fun is the functor,Ang the angle.Ang is of the form
 % Coeff*Rest + Add, where Rest contains the unknown,and Coeff is a number
 % Mult is the coeff of the trig term.eg 2*sin(3*a*x) becomes
 % tf(sin,2,3*a*x,a*x,plus(3,0))   

maptrigtype(_,[],[]) :- !.
maptrigtype(X,[H|T],[H1|T1]) :- trigtype(X,H,H1),maptrigtype(X,T,T1),!.

trigtype(Unk,X,tf(Fun,1,Ang,Rest,Coeff)) :- 
        trigf(X),
        functor(X,Fun,1),
        arg(1,X,Ang),
        mod_angsize(Unk,Rest,X,Coeff),!.

trigtype(Unk,A,tf(Fun,Y,Ang,Rest,Coeff)) :- 
        match(A,X*Y),
        trigf(X),
        freeof(Unk,Y),
        functor(X,Fun,1),
        arg(1,X,Ang),
        mod_angsize(Unk,Rest,X,Coeff),!.


 % Classify the equation into three types: Does it contain only two terms
 % or does it contain only sin (or cos) terms whose angles are in A.P.,or
 % is it a mixture of sines and cosines  
trigmethod(_,List,two(norm)) :- length(List,2),!.
trigmethod(X,List,ap(A,D)) :-  
        checklist(sincos(_Type),List),
        apcheck(X,List,A,D),
        !.

trigmethod(_,List,mixed(Sins,Cos)) :- 
        sublist(sincos(sin),List,Sins),
        sublist(sincos(cos),List,Cos),
        length(Cos,M),
        M>0,
        length(Sins,N),
        N>0,
        M+N>2,
        !.


 % Eqn is A=0 where A is C*sin(X) + C*sin(Y),or C*cos(X) + C*cos(Y),
 % or C*sin(X)-C*sin(Y),or C*cos(X)-C*cos(Y)       

trigsolve(_,[tf(Y,N,Ang1,R1,Co1),tf(Y,M,Ang2,R2,Co2)],0,two(X),Newform=0) :-
        (M=N;eval(-M,N)),
        add_angle(Y,N,M,Ang1,Ang2,R1,R2,Co1,Co2,Newform),
        (X=norm ->
        trace_press('\nUsing trigonometric addition\n %t = 0\n',[Newform],1);
        true),
        !.

 % Both terms have the same angle  
trigsolve(_,[tf(Y,N,Ang,_,_),tf(Z,M,Ang,_,_)],C,two(norm),Newform) :-
        derive(C,Y,Z,M,N,Ang,Newform),
        trace_press('\n%t \n',[Newform],1),
        !.

 % Terms have angles of form M.X+C and N.X + D where  M= -N or M = N, and
 % C, D, M and N are free of x.
 % The equation is expanded to the form SC*sin(M1*X) + CC*cos(M1*X) = C
 % where M1 is the positive one of M and N.  If SC and CC are both non-zero
 % the equation is kept in normal form, and solved as for the normal two term
 % case, giving tan is C = 0, otherwise using the R*sin(M1*X+B) form.
 % If one of SC or CC is 0 the intermediate result is passed back to the
 % solve procedure of PRESS

trigsolve(X,[tf(Y,M,_,R,plus(Co1,Add1)),
tf(Z,N,_,R,plus(Co2,Add2))],C,two(norm),New) :-
        (eval(-Co1,Co2),Flag= -1;Co1=Co2,Flag=1),
        ((eval(Co1>0) -> Coeff=Co1,
        expand_and_collect(Flag,Y,M,Z,N,Coeff,Add1,Add2,R,C,Mid,CC,SC));
        (Coeff=Co2,
        expand_and_collect(Flag,Z,N,Y,M,Coeff,Add2,Add1,R,C,Mid,CC,SC))),
        trace_press('\nExpanding and collecting terms gives\n\n%t\n',[Mid],1),
        tidy(Coeff*R,Ang),
        ((eval(CC\=0),eval(SC\=0) ->
        trigsolve(X,[tf(sin,SC,Ang,Rest,Coeff),tf(cos,CC,Ang,Rest,Coeff)],
C,two(norm),New));
        New=Mid),
        !.


 % The terms have different functors and angles,but same coeff 
trigsolve(X,[tf(Y,M,Ang1,R1,Co1),tf(Z,N,Ang2,_R2,_Co2)],0,two(norm),Newform) :-
        (M=N;eval(-M,N)),
        ((Y=sin,Z=cos) -> M1=M,N1=N;
        Y=cos,Z=sin,N1=M,M1=N),
        convert_functor(X,M1,N1,Ang1,Ang2,R1,Co1,Newform),
        !.

 % AP case  
trigsolve(_,List,C,ap(A,D),New1) :- 
        length(List,N),
        odd(N),
        checkpairs(List,A,D,N,Term1+Term2),
        tidy(Term1+Term2=C,New),
        trace_press('\nAdding in pairs\n%t\n',[New],1),
        try_factorize(apcase(C),Term1,Term2,New1),
        !.

 % Mixed case 
trigsolve(X,_List,0,mixed(Sin,[A]),Final) :-
        trigsolve(X,Sin,0,two(mixed),New1=0),
        inv_trigtype(A,Term),
        tidy(New1 +Term =0,New),
        trace_press('\nAdding sin terms \n%t \n',[New],1),
        try_factorize(addone,New1+Term,Final),
        !.

trigsolve(X,_List,0,mixed([A],Cos),Final) :-
        trigsolve(X,Cos,0,two(mixed),New1=0),
        inv_trigtype(A,Term),
        tidy(New1 +Term =0,New),
        trace_press('\nAdding cosine terms \n%t \n',[New],1),
        try_factorize(addone,New1+Term,Final),
        !.

trigsolve(X,_List,0,mixed(Sin,Cos),Final) :-
        trigsolve(X,Sin,0,two(mixed),New1=0),
        trigsolve(X,Cos,0,two(mixed),New2=0),
        tidy(New1 + New2 =0,New),
        trace_press('\nAdding sin terms and cos terms\n%t \n',[New],1),
        try_factorize(addboth,New1+New2,Final),
        !.

  % Do some factorization, to take the load off collection
  % This is hacky, should be done using tf/5 representation.

try_factorize(apcase(Rhs),Term1,Term2,New) :-
        match(Term1,Fac*B),
        \+ atomic(Fac),
        match(Term2,Fac*C),
        tidy(Fac*(B+C)=Rhs,New),
        trace_press('\n%t\n',[New],1),
        !.

try_factorize(apcase,Term1,Term2,New) :-
        match(Term1,Term2*_B),
        \+ atomic(Term2),
        tidy(Term2*(Term1+1)=0,New),
        trace_press('\n%t\n',[New],1),
        !.

try_factorize(apcase,_,_) :- !,fail.

try_factorize(addone,A+B*G,F1=0) :-
        match(B*G,C*D),
        \+ atomic(C),
        match(A,C*E),
        tidy(C*(D+E),F1),
        trace_press('\n%t\n',[F1=0],1),
        !.

try_factorize(addone,A+B,F1=0) :-
        match(A,C*B),
        \+ atomic(B),
        tidy(B*(C+1),F1),
        trace_press('\n%t\n',[F1=0],1),
        !.

try_factorize(addboth,A+B*G,F1=0) :-
        match(B*G,C*D),
        \+ atomic(C),
        match(A,C*E),
        tidy(C*(D+E),F1),
        trace_press('\n%t\n',[F1=0],1),
        !.

try_factorize(_,Old,Old=0) :- !.

 % Sum of two sines case  
add_angle(sin,N,N,A1,A2,R1,R2,Coeff1,Coeff2,New) :-
        eval(N*2,N1),
        sumdiff(Coeff1,Coeff2,A1,A2,R1,R2,Sum,Diff,Sum1,Diff1),
        correct_sin(Sum,Sum1,Newsum,Fac,R1,R2),
        correct_cos(Diff,Diff1,Newdiff,R1,R2),
        tidy(Fac*N1*sin(Newsum)*cos(Newdiff),New),
        !.

 % Difference of two sines cases 
add_angle(sin,N,_M,A1,A2,R1,R2,Coeff1,Coeff2,New) :-
        eval(N>0),
        eval(N*2,N1),
        sumdiff(Coeff1,Coeff2,A1,A2,R1,R2,Sum,Diff,Sum1,Diff1),
        correct_sin(Diff,Diff1,Newdiff,Fac,R1,R2),
        correct_cos(Sum,Sum1,Newsum,R1,R2),
        tidy(Fac*N1*sin(Newdiff)*cos(Newsum),New),
        !.

add_angle(sin,_N,M,A1,A2,R1,R2,Coeff1,Coeff2,New) :-
        eval(M>0),
        eval(M*2,N1),
        sumdiff(Coeff2,Coeff1,A2,A1,R2,R1,Sum,Diff,Sum1,Diff1),
        correct_sin(Diff,Diff1,Newdiff,Fac,R1,R2),
        correct_cos(Sum,Sum1,Newsum,R1,R2),
        tidy(Fac*N1*sin(Newdiff)*cos(Newsum),New),
        !.

 % Sum of two cosines 
add_angle(cos,M,M,A1,A2,R1,R2,Coeff1,Coeff2,New) :-
        eval(M*2,N1),
        sumdiff(Coeff1,Coeff2,A1,A2,R1,R2,Sum,Diff,Sum1,Diff1),
        correct_cos(Sum,Sum1,Newsum,R1,R2),
        correct_cos(Diff,Diff1,Newdiff,R1,R2),
        tidy(N1*cos(Newsum)*cos(Newdiff),New),
        !.

 % Difference of two cosines 
add_angle(cos,M,_N,A1,A2,R1,R2,Coeff1,Coeff2,New) :-
        eval(M>0),
        eval(M*2,N1),
        sumdiff(Coeff2,Coeff1,A2,A1,R2,R1,Sum,Diff,Sum1,Diff1),
        correct_sin(Sum,Sum1,Newsum,Fac1,R1,R2),
        correct_sin(Diff,Diff1,Newdiff,Fac2,R1,R2),
        tidy(N1*Fac1*Fac2*sin(Newsum)*sin(Newdiff),New),
        !.

add_angle(cos,_M,N,A1,A2,R1,R2,Coeff1,Coeff2,New) :-
        eval(N>0),
        eval(N*2,N1),
        sumdiff(Coeff1,Coeff2,A1,A2,R1,R2,Sum,Diff,Sum1,Diff1),
        correct_sin(Sum,Sum1,Newsum,Fac1,R1,R2),
        correct_sin(Diff,Diff1,Newdiff,Fac2,R1,R2),
        tidy(N1*Fac1*Fac2*sin(Newsum)*sin(Newdiff),New),
        !.



 % Find the half_sum and half_difference of two angles 

 % Angles are of the form A*R and B*R,A and B are numbers 
sumdiff(plus(A,0),plus(B,0),_,_,R,R,Sum,Diff,Sum1,Diff1) :- 
        eval((A+B)/2,Sum1),
        eval((A-B)/2,Diff1),
        tidy(Sum1*R,Sum),
        tidy(Diff1*R,Diff),
        !.

 % General case 
sumdiff(_,_,A1,A2,_,_,Sum,Diff,Sum,Diff) :- 
        simplify_tidy((A1+A2)/2,Sum),
        simplify_tidy((A1-A2)/2,Diff),
        !.

 % Equation is M*sin(Ang)+N*cos(Ang) =0,so tan(Ang)=-N/M  
derive(0,sin,cos,M,N,Ang,tan(Ang) = K) :- eval((-N)/M,K),!. 
derive(0,cos,sin,N,M,Ang,tan(Ang) = K) :- eval((-N)/M,K),!.

 % Equation is M*sin(Ang)+N*cos(Ang) = C,so (M^2+N^2)sin(Ang+Beta) = C,
 % where beta is arctan(N/M)  

 % At present this is the best place for this rule as:
 % Should only be used as a collection rule when there are only 2 terms
 % If homogenization is used on the general case,the simplify routines
 % get overloaded. 

derive(C,sin,cos,M,N,Ang,New = C) :- 
        eval((M^2+N^2)^(1/2),R),
        eval(arctan(N/M),Beta),
        tidy(R*sin(Ang+Beta),New),
        !.

derive(C,cos,sin,N,M,Ang,New = C) :- 
        eval((M^2+N^2)^(1/2),R),
        eval(arctan(N/M),Beta),
        tidy(R*sin(Ang+Beta),New),
        !.

 % Convert cos(X) to sin(90-X)  
convert_functor(X,M,M,Ang1,Ang2,R1,Co1,NewE) :-
        tidy((90-Ang2),Newang),
        tidy(M*(sin(Ang1) + sin(Newang))=0,New),
        trace_press('\nRewriting (cos(X) = sin(90-X))\n%t\n',[New],1),
        mod_angsize1(X,NR,Newang,NC),
        trigsolve1(X,[tf(sin,M,Ang1,R1,Co1),tf(sin,M,Newang,NR,NC)],Co1,NC,NewE),
        !.

convert_functor(X,M,N,Ang1,Ang2,R1,Co1,NewE) :-
        eval(M>0),
        tidy((90-Ang2),Newang),
        tidy(M*(sin(Ang1) - sin(Newang))=0,New),
        trace_press('\nRewriting (cos(X) = sin(90-X)\n%t\n',[New],1),
        mod_angsize1(X,NR,Newang,NC),
        trigsolve1(X,[tf(sin,M,Ang1,R1,Co1),tf(sin,N,Newang,NR,NC)],Co1,NC,NewE),
        !.

convert_functor(X,N,M,Ang1,Ang2,R1,Co1,NewE) :-
        eval(M>0),
        tidy((90-Ang2),Newang),
        tidy(M*(sin(Newang) - sin(Ang1))=0,New),
        trace_press('\nRewriting (cos(X) = sin(90-X)\n%t\n',[New],1),
        mod_angsize1(X,NR,Newang,NC),
        trigsolve1(X,[tf(sin,M,Newang,NR,NC),tf(sin,N,Ang1,R1,Co1)],Co1,NC,NewE),
        !.

 % Check equation has not become trivial
trigsolve1(_X,_List,Coeff1,Coeff2,true)  :-
        tidy(Coeff1,NewC),
        tidy(Coeff2,NewC),
        !,
        trace_press('\nEquation collapses to 0 = 0\n',1).

trigsolve1(X,List,_,_,Ans) :- trigsolve(X,List,0,two(norm),Ans).

 % Find the coefficient and remainder of the angle
mod_angsize(X,U,T,Ans) :- arg(1,T,Z),mod_angsize1(X,U,Z,Ans),!.
        
mod_angsize1(X,U,Z,plus(N,B1)) :- 
        match(Z,A+B),
        contains(X,A),
        freeof(X,B),
        mod_angsize1(X,U,A,plus(N,C)),
        tidy(B+C,B1),
        !.

mod_angsize1(X,U,Z,plus(N,0)) :- 
        match(Z,N*U),
        ok_number(N),
        contains(X,U),
        !.

mod_angsize1(X,Z,Z,plus(1,0)) :- \+ ok_number(Z),contains(X,Z),!.

sincos(sin,tf(sin,_,_,_,_)) :- !.
sincos(cos,tf(cos,_,_,_,_)) :- !.

checksin_cos1([]) :- !.
checksin_cos1([sin(_)|T]) :- checksin_cos1(T),!.
checksin_cos1([cos(_)|T]) :- checksin_cos1(T),!.

 % AP case  
 
apcheck(_X,List,A,D) :- 
        maplist(get_coeff,List,Newlist),
        apcheck1(Newlist,A,D),
        trace_press('\nAngles are in arithmetic progression \n',1),
        !.

get_coeff(tf(_,_,_,_,C),C) :- !.

apcheck1(L,plus(A,0),diff(D,0)) :- 
        non_add(L,L1),
        sort(L1,[A|S]),
        apcheck2([A|S],D),
        !.

apcheck1(L,plus(X,A),diff(0,D)) :- 
        additive_angles(L,L1,X),
        sort(L1,[A|S]),
        apcheck2([A|S],D),
        !.

apcheck2([],_) :- !.
apcheck2([_N],_) :- !.
apcheck2([H,H1|T],D) :- simplify_tidy(H1-H,D),apcheck2([H1|T],D),!.

non_add([],[]) :- !.
non_add([plus(X,0)|S],[X|T]) :- non_add(S,T),!.

additive_angles([],[],_) :- !.
additive_angles([plus(X,A)],[A],X) :- !.
additive_angles([plus(X,A),plus(X,B)|S],[A|T],X) :- 
        additive_angles([plus(X,B)|S],T,X),
        !.

checkpairs(List,A,_,1,Term) :-
        member(tf(T,C,Z,Y,A),List),
        inv_trigtype(tf(T,C,Z,Y,A),Term),
        !.

checkpairs(List,plus(A,0),diff(D,0),N,New1+Tail) :-
        member(tf(T,C,Z,Y,plus(A,0)),List),
        simplify_tidy(A+(N-1)*D,X),
        member(tf(T,C,Z1,Y,plus(X,0)),List),
        add_angle(T,C,C,Z,Z1,Y,Y,plus(A,0),plus(X,0),New1),
        simplify_tidy(A+D,V),
        eval(N-2,N1),
        checkpairs(List,plus(V,0),diff(D,0),N1,Tail),
        !.

checkpairs(List,plus(A,A1),diff(0,D),N,New1+Tail) :-
        member(tf(T,C,Z,Y,plus(A,A1)),List),
        simplify_tidy(A1+(N-1)*D,X),
        member(tf(T,C,Z1,Y1,plus(A,X)),List),
        add_angle(T,C,C,Z,Z1,Y,Y1,plus(A,A1),plus(A,X),New1),
        simplify_tidy(A1+D,V),
        eval(N-2,N1),
        checkpairs(List,plus(A,V),diff(0,D),N1,Tail),
        !.

inv_trigtype(tf(sin,C,Z1,_,_),C*sin(Z1)) :- !.
inv_trigtype(tf(cos,C,Z1,_,_),C*cos(Z1)) :- !.



 % Equation is M*sin(Coeff*R+Add1)+N*sin(Coeff1*R+Add2) = C

 % If Coeff = Flag*Coeff1, where Flag is 1 or -1, this expands as
 % (sin(Coeff*R)*(M*cos(Add1) + Flag*N*cos(Add2)) + 
 %      cos(Coeff*R)*(M*sin(Add1)+N*sin(Add2))) = C


expand_and_collect(Flag,sin,M,sin,N,Coeff,Add1,Add2,R,C,Mid,CC,SC) :-
        simplify_tidy(M*cos(Add1) + Flag*N*cos(Add2),SC),
        simplify_tidy(M*sin(Add1) + N*sin(Add2),CC),
        simplify_tidy(sin(Coeff*R)*SC+cos(Coeff*R)*CC=C,Mid),
        !.

 % Same for two cosines
 % Expands as cos(Coeff*R)*(M*cos(Add1) - Flag*N*cos(Add2)) +
 % sin(Coeff*R)*(N*sin(Add2)-M*sin(Add1)) = C

expand_and_collect(Flag,cos,M,cos,N,Coeff,Add1,Add2,R,C,Mid,CC,SC) :-
        simplify_tidy(M*cos(Add1) - Flag*N*cos(Add2),SC),
        simplify_tidy(N*sin(Add2) - M*sin(Add1),CC),
        simplify_tidy(sin(Coeff*R)*SC+cos(Coeff*R)*CC=C,Mid),
        !.

 % One sin and one cos
expand_and_collect(Flag,cos,M,sin,N,Coeff,Add1,Add2,R,C,Mid,CC,SC) :-
        simplify_tidy(M*cos(Add1) + N*sin(Add2),CC),
        simplify_tidy(M*sin(Add1) -  N*Flag*cos(Add2),SC),
        simplify_tidy(cos(Coeff*R)*CC - sin(Coeff*R)*SC=C,Mid),
         !.

 % Note reversal of order of M, N etc!

expand_and_collect(Flag,sin,N,cos,M,Coeff,Add2,Add1,R,C,Mid,CC,SC) :-
        simplify_tidy(M*cos(Add1) + N*Flag*sin(Add2),CC),
        simplify_tidy(M*sin(Add1) + N*cos(Add2),SC),
        simplify_tidy(cos(Coeff*R)*CC - sin(Coeff*R)*SC=C,Mid),
        !.

 % Get signs right
correct_sin(_,Sum,X,F,Unk,Unk) :- ok_number(Sum),correct_sin1(Sum,F,X,Unk),!.
correct_sin(_,Sum,Sum,1,_,_) :- !.


correct_cos(_,Sum,X,Unk,Unk) :- ok_number(Sum),correct_cos1(Sum,X,Unk),!.
correct_cos(_,Sum,Sum,_,_) :- !.

correct_sin1(Sum,1,New,Unk) :- eval(Sum>0),tidy(Sum*Unk,New),!.
correct_sin1(Sum,(-1),New,Unk) :- tidy(-Sum*Unk,New),!.

correct_cos1(Sum,New,Unk) :- eval(Sum>0),tidy(Sum*Unk,New),!.
correct_cos1(Sum,New,Unk) :- tidy(-Sum*Unk,New),!.

simplify_tidy(Old,New) :-
        tidy(Old,Mid),
        simplify(Mid,New).

/*======================================================================== pressdir/methods/nas1.pl */

/* NAS1. : 

                                                Bernard Silver
                                                Updated: 24 February 82
Created: May 1981       
*/

% :- public
%                 findrhs/2,
%                 nas1/3.

% This method is similar to isolate,it it used to solve equations where
% all occurrences of the unknown are dominated by a function other than =,+,*
% eg sin(x^2+x+1)=(1/2).  Should also remove multiplicative constants.

% Top level 
% If equation is of the right type find the position of the dominating 
% function and prepare to isolate it  
nas1(L=_R,X,[1|Pos]) :- L=..[Func|Args],
        nas1ok(Func,Args,X,Pos),
        !.

nas1ok((+),_,_,_) :- !,fail.
nas1ok(*,[A,B],X,[1]) :- contains(X,A),freeof(X,B),!.
nas1ok(*,[B,A],X,[2]) :- contains(X,A),freeof(X,B),!.
nas1ok(*,_,_,_) :- !,fail.
nas1ok(log,[A,B],X,[1]) :- contains(X,A),freeof(X,B),!.
nas1ok(log,[B,A],X,[2]) :- contains(X,A),freeof(X,B),!.
nas1ok(log,_,_,_) :- !,fail.
nas1ok(^,[A,B],X,[1]) :- contains(X,A),freeof(X,B),!.
nas1ok(^,[B,A],X,[2]) :- contains(X,A),freeof(X,B),!.
nas1ok(^,_,_,_) :- !,fail.
nas1ok(_,_,_,[1]) :- !.

% Defensive checking,make sure that no unknowns occur on the right hand
% side of the isolated equation  

findrhs(A#B,P) :- !,findrhs(A,C),findrhs(B,D),append(C,D,P).
findrhs(_A=B,[B]) :- !.

/*======================================================================== pressdir/methods/homog_top.pl */

/* HOMOG.TOP : 

                                                Bernard Silver
                                                Updated: 9 September 82
*/                              



                                % HOMOGENIZATION  ROUTINE         
                                % NOTE: Requires equation is in 
                                % weak normal form 
                                


% Solve case of Homogenization with messages

homog(Eqn,X,New,Term,V,Off) :- 
        homog1(Eqn,X,New,Term,V,Off,Homeqn,solve),
        trace_press('\nRewriting equation in terms of %t\ngives %t\n',[Term,Homeqn],1),
        trace_press('\nSubstituting   %t for %t gives\n %t\n',[V,Term,New],1).

% Top Level of Homogenization proper 

homog1(Eqn,Unk,Neweqn,Term,V,Offend,Homeqn,Flag) :- 
        findtype(Type,Offend),
        trace_press('\nOffending set is %t\n',[Offend],2),
        anaz(Type,Eqn,Unk,Offend,Term,Flag),
        trace_press('\nReduced term is %t\n',[Term],2),
        perform_rewrites(Eqn,Term,Offend,Homeqn,Unk,Type),
        change_the_variable(Term,V,Unk,Homeqn,Neweqn).

 % Equation can have Homogenization applied to it
multiple_offenders_set(Eqn=_Rhs,Off,X) :-
        parse(Eqn,Off,X),
        length(Off,N),
        !,
        N>1.


 % Rewrite the offenders set and obtain new Homogenized equation
perform_rewrites(Eqn,Term,Offend,Homeqn,Unk,Type) :-
        rew(Term,Offend,Sub,Unk,Type),
        subs1(Eqn,Sub,Homeqn).

 % Now change the variable, reporting substitutions if neccesary

change_the_variable(Term,V,Unk,Homeqn,New) :-
        report_subs(Unk,_Sub),
        identifier(V),
        subst(Term=V,Homeqn,Neweqn),
        tidy(Neweqn,New).                               

% Find the offenders set (ie the terms which prevent the parsing 
% of Eqn as a rational equation ) (Assumes Eqn has been tidied 
% so no / or - occurs) 

parse(Eqn,Set,Unk) :- dl_parse(Eqn,Set1-[],Unk),listtoset(Set1,Set).

dl_parse(A+B,L-L1,Unk) :- !,dl_parse(A,L-L2,Unk),dl_parse(B,L2-L1,Unk).
dl_parse(A*B,L-L1,Unk) :- !,dl_parse(A,L-L2,Unk),dl_parse(B,L2-L1,Unk).
dl_parse(Unk^N,[Unk^N|L]-L,Unk) :- ok_number(N),!.
dl_parse(A^B,L,Unk) :- ok_number(B), !,dl_parse(A,L,Unk).
dl_parse(Unk,[Unk|L]-L,Unk) :- !.
dl_parse(A,L-L,Unk) :- freeof(Unk,A),!.
dl_parse(A,[A|L]-L,_Unk) :- !.

% Find the type of the offending set  

findtype(trig,L) :- checklist(trigf,L),!.
findtype(log(_),L) :- checklist(logf,L),!.
findtype(genpol,L) :- maplist(genpoly,L,L1),rational_gcd_list(L1,N),!,N \= 1.
findtype(exp,L) :- checklist(expp,L),!.
findtype(hyper,L) :- checklist(hyperf,L),!. %Just hyperbolics
findtype(hyper_exp,L) :- checklist(hypexp,L),!. %Hyperbolics and exponentials
findtype(mixed,_) :- !.

 % Recognizers for each type

trigf(X) :- member(X,[sin(_),cos(_),tan(_),sec(_),cosec(_),cot(_)]),!.
logf(X) :- member(X,[log(_,_)]),!.
hyperf(X) :- member(X,[sinh(_),cosh(_),sech(_),tanh(_),coth(_),cosech(_)]),!.
expp(_^_) :- !.
expp1(e^_) :- !.
hypexp(X) :- (expp1(X);hyperf(X)),!.
genpoly(X,1) :- atom(X),!.
genpoly(X^N,N) :- atom(X),ok_number(N),!.


%  Find which terms are hyperbolic and which are exponential in hyper_exp case
split_case(L,Exp,Hyp) :- split_case1(L,Exp,Hyp),non_trivial([Exp,Hyp]),!.

split_case1([],[],[]) :- !.
split_case1([H|T],[H|A],B) :- expp1(H),!,split_case1(T,A,B).
split_case1([H|T],A,[H|B]) :- hyperf(H),!,split_case1(T,A,B).

%  Check that both occur in this case

non_trivial([]) :- !.
non_trivial([[]|_]) :- !,fail.
non_trivial([_|T]) :- !,non_trivial(T).
 
% Try to choose reduced term . Arguments of anaz are
% Type of offenders set, Equation, the Unknown, the offenders set
% the reduced term, and a flag to show if the problem is a sim or solve one

 % Trig case, find the gcd of all angles that occur, then choose functor

anaz(trig,Eqn,Unk,Offend,Term,_) :- 
        findangle(Unk,Offend,Angle),!,
        anaz1(Eqn,Angle,Offend,Term,Unk,_).

%  Exponential case where terms are of the form a^f(x) where a is the same
%  for all members of the offending set. We find the 'gcd' of the f(x)

anaz(exp,_,Unk,Offend,Base^Power,_) :- 
        maplist(expcase1(Base,Rest,Unk),Offend,NewList),
        form(Rest,NewList,Power),!.

%  Other exponential case where terms are of the form a^(c*x+d).

anaz(exp,_,Unk,Offend,Base^Power,_) :- 
        maplist(expcase2(Unk),Offend,NewList),
        coeff_exp(NewList,Base,Rest),
        form1(Unk,Rest,Power),
        !.

%  Normal log case dealing with terms like log(x,4) and log(2,x) in the 
%  offenders set.

anaz(log(_),_,Unk,Offend,_Term,_) :- 
        maplist(laura(Arg2,Unk),Offend,NewList),
        onetest(NewList,Arg1),
        logocc(Arg1,Arg2,_X,Offend).


%  Other log case where the logs are converted to base 10.

anaz(log(10),_,Unk,Offend,log(10,Term),_) :- 
        checklist(laura1(Unk,Term),Offend),
        !.

 % The generalized polynomial case

anaz(genpol,_,Unk,Offend,U,_) :- 
        maplist(genpolcase(Unk),Offend,List1),
        signed(List1,P),
        rational_gcd_list(List1,N),
        eval(P*N,N1),
        form4(Unk,N1,U),
        !.

 % Hyperbolics.  Find the gcd of all the 'angles' as in trig case

anaz(hyper,Eqn,Unk,Offend,Term,Flag) :- 
        findangle(Unk,Offend,Angle),
        hyper_find(Eqn,Unk,Offend,Term,Angle,Flag),!.

 % Both exponentials and hyperbolics, find gcd of all angles and powers.

anaz(hyper_exp,_,Unk,Offend,e^Term,_) :- 
        split_case(Offend,Exp,Hyper),
        maplist(angle_size(Unk,Rest),Hyper,Angle),
        maplist(expcase1(e,Rest,Unk),Exp,NewList),
        append(Angle,NewList,Newlist1),
        rational_gcd_list(Newlist1,Gcd),
        form1(Rest,Gcd,Term),
        !.

% Choose reduced_term  using simplicity metric
  
anaz(_,_,Unk,Offend,T,_) :- 
        trace_press('Choosing reduced term via simplicity metric',2),
         reduced_term(Offend,Unk,T).

/*======================================================================== pressdir/methods/homog_trg.pl */

/* HOMOG.TRG : 

                                                Bernard Silver
                                                Updated: 2 October 82
*/
% :- public
%                 anaz1/6,
%                 angle_size/4,
%                 cc/2,
%                 cch/2,
%                 cosecfind/1,
%                 cosechp/3,
%                 cosecp/3,
%                 cosfind/1,
%                 coshp/3,
%                 cosp/3,
%                 cothp/3,
%                 cs/2,
%                 csh/2,
%                 expcc/4,
%                 expcs/4,
%                 expsc/4,
%                 expss/4,
%                 exptt/4,
%                 findangle/3,
%                 hyper_find/6,
%                 secfind/1,
%                 sechp/3,
%                 secp/3,
%                 sinfind/1,
%                 sinhp/3,
%                 st/2,
%                 sth/2,
%                 tanhp/3.

 %   Find gcd of angles in offending set 
findangle(Unk,Offend,Angle) :- 
        maplist(angle_size(Unk,Rest),Offend,List),
        form(Rest,List,Angle),
        !.

angle_size(Unk,Rest,Term,Coeff) :- 
        arg(1,Term,Arg),
        angle_size1(Unk,Rest,Arg,Coeff),
        !.

angle_size1(Unk,Rest,Arg,Coeff) :- 
        match(Arg,A+B),
        contains(Unk,A),
        freeof(Unk,B),
        angle_size1(Unk,Rest,A,Coeff),
        !.

angle_size1(Unk,Rest,Arg,Coeff) :- 
        match(Arg,Coeff*Rest),
        ok_number(Coeff),
        contains(Unk,Rest),
        !.

angle_size1(Unk,Rest,Other,1) :- 
        \+ ok_number(Other),
        contains(Unk,Other),
        match(Other,Rest),
        !.

 % Find the reduced term
 % First,see if offending set contains only cos & sin,or sec & tan,
 % or cot & cosec.If so eliminate (ie choose the other as reduced term) 
 % the one that occurs to only even powers,if this happens  
 % Flag indicates whether sim or solve is the top level 

anaz1(Eqn,Ang,Offend,R,X,Flag) :- 
        findtype_trig(Type,Offend),
        action(Type,R,Eqn,Ang,X,Flag),
        !.

 % Same case for hyperbolic functions  

hyper_find(Eqn,Unk,Offend,Term,A,Flag) :- 
        findtype_hyper(Type,Offend),
        action(Type,Term,Eqn,A,Unk,Flag),
        !.

hyper_find(_Eqn,_,_,e^A,A,_) :- !. %If first clause fails use e^A as reduced term

 % See if equation needs tan(R) as a reduced term because equation contains
 % the correct functions.

anaz1(Eqn,Ang,Offend,tan(Ang),X,_) :- tantype(Offend,Ang),taneqn(Eqn,X,Ang),!.

 % Otherwise,choose as reduced term the term that occurs most often 

anaz1(Eqn,Ang,Offend,R,_,_) :- 
        find_common(Offend,Eqn,R1,Ang),
        !,
        makenice(R1,R).

 % If no term occurs more than once,choose according to an order of niceness 

anaz1(_,Ang,Offend,R,_,_) :- anaz2(Ang,Offend,R),(R=tan(Ang) -> ! ;true).

 % If resulting equation can't be solved try tan(half_angle) method,when  
 % this method is applicable  

anaz1(_,Ang,Offend,tan(R),X,_) :- 
        maplist(angle_size(X,Rest),Offend,L1),
        ((match(Ang,M*Rest),ok_number(M));M=1),
        half_angle(M,L1,Ang,R,Rest),
        trace_press('\nTrying tan half-angle method\n',1),
        !.

% Check to see if tan(x/2) method might work  

half_angle(M,List,Angle,Angle,_) :- 
        eval(2*M,N),
        member(N,List),
        check_half_angle_check1(M,List),
        !.

half_angle(M,List,_,A1,Rest) :- 
        check_half_angle_check2(M,List),
        form2(M,Rest,A1),
        !.

 % Check to see if a term occurs more than once in the equation  

find_common(L1,Eqn,R,_Ang) :-  
        maplist(nocc(Eqn),L1,L2),
        great_el(L2,Ans),
        Ans>1,
        correspond(R,L1,L2,Ans),
        arg(1,R,x),
        !.

 % Check for sin_cos etc pairs    

findtype_trig(sin_cos,Offend) :- 
        memberchk_press(cos(X),Offend),
        memberchk_press(sin(X),Offend),
        check_cs(X,Offend),
        !.

findtype_trig(cosec_cot,Offend) :- 
        memberchk_press(cosec(X),Offend),
        memberchk_press(cot(X),Offend),
        check_cc(X,Offend),
        !.

findtype_trig(sec_tan,Offend) :- 
        memberchk_press(sec(X),Offend),
        memberchk_press(tan(X),Offend),
        check_st(X,Offend),
        !.

 % Hyperbolic cases 

findtype_hyper(sinh_cosh,Offend) :- 
        memberchk_press(cosh(X),Offend),
        memberchk_press(sinh(X),Offend),
        check_csh(X,Offend),
        !.

findtype_hyper(cosech_coth,Offend) :- 
        memberchk_press(cosech(X),Offend),
        memberchk_press(coth(X),Offend),
        check_cch(X,Offend),
        !.

findtype_hyper(sech_tanh,Offend) :- 
        memberchk_press(sech(X),Offend),
        memberchk_press(tanh(X),Offend),
        check_sth(X,Offend),
        !.

action(Type,R,Eqn,Ang,X,Flag) :- 
        parse2(Eqn,X,Offend),
        action1(Type,R,Offend,Ang,Flag),
        !.

 % If one of pair occurs only to even powers eliminate it    
action1(sin_cos,sin(A),Offend,A,_) :- 
        maplist(cosp(A),Offend,L1),
        check_even(L1),
        !.

action1(sin_cos,cos(A),_Offend,A,_) :-  !.

action1(sec_tan,tan(A),Offend,A,_) :- 
        maplist(secp(A),Offend,L1),
        check_even(L1),
        !.

action1(sec_tan,sec(A),_Offend,A,_) :- !.

action1(cosec_cot,cot(A),Offend,A,_) :- 
        maplist(cosecp(A),Offend,L1),
        check_even(L1),
        !.

action1(cosec_cot,cosec(A),_Offend,A,_) :- !.

 % Hyperbolic cases  
action1(sinh_cosh,sinh(A),Offend,A,_) :- 
        maplist(coshp(A),Offend,L1),
        check_even(L1),
        !.

action1(sinh_cosh,cosh(A),Offend,A,_) :- 
        maplist(sinhp(A),Offend,L1),
        check_even(L1),
        !.

action1(sinh_cosh,sinh(A),_,A,sim) :- !.  %Only for sim case

action1(sech_tanh,tanh(A),Offend,A,_) :- 
        maplist(sechp(A),Offend,L1),
        check_even(L1),
        !.

action1(sech_tanh,sech(A),Offend,A,_) :- 
        maplist(tanhp(A),Offend,L1),
        check_even(L1),
        !.

action1(sech_tanh,tanh(A),_,A,sim) :- !.  %Only for sim case

action1(cosech_coth,coth(A),Offend,A,_) :- 
        maplist(cosechp(A),Offend,L1),
        check_even(L1),
        !.

action1(cosech_coth,cosech(A),Offend,A,_) :- 
        maplist(cothp(A),Offend,L1),
        check_even(L1),
        !.

action1(cosech_coth,coth(A),_,A,sim) :- !.  %Only for sim case

 % Check for tan case
tantype([],_) :- !.
tantype([H|T],X) :- tantype1(H,X),!,tantype(T,X).

tantype1(tan(_),_) :- !.
tantype1(cot(_),_) :- !.
tantype1(sec(X),Y) :- match(X,Y),!.
tantype1(cosec(X),Y) :- match(X,Y),!.

taneqn(Eqn,X,Ang) :- parse2(Eqn,X,Offend),check_tan(Offend,Ang),!.

check_tan([],_) :- !.
check_tan([H|T],Ang) :- check_tan1(H,Ang),!,check_tan(T,Ang).

check_tan1(tan(_),_) :- !.
check_tan1(cot(_),_) :- !.
check_tan1(sec(Ang)^N,Ang1) :- integer(N),even(N),match(Ang,Ang1),!.
check_tan1(cosec(Ang)^N,Ang1) :- integer(N),even(N),match(Ang,Ang1),!.

 % Choose reduced term in order of niceness  

anaz2(Ang,Offend,sin(Ang)) :- 
        member(sin(Ang),Offend),
        member(cosec(Ang),Offend),
        !.

anaz2(Ang,Offend,cos(Ang)) :- 
        member(cos(Ang),Offend),
        member(sec(Ang),Offend),
        !.

anaz2(Ang,Offend,cos(Ang)) :- 
        member(cos(Ang),Offend),
        member(cos(X),Offend),
        diff(X,Ang),
        !.

anaz2(Ang,Offend,sin(Ang)) :- member(sin(Ang),Offend),!.

anaz2(Ang,Offend,cos(Ang)) :- member(cos(Ang),Offend),!.

anaz2(Ang,Offend,cos(Ang)) :- member(sec(Ang),Offend),!.

anaz2(Ang,Offend,sin(Ang)) :- member(cosec(Ang),Offend),!.

anaz2(Ang,Offend,sin(Ang)) :- some(sinfind,Offend),!.

anaz2(Ang,Offend,cos(Ang)) :- some(cosfind,Offend),!.

anaz2(Ang,Offend,sin(Ang)) :- some(cosecfind,Offend),!.

anaz2(Ang,Offend,cos(Ang)) :- some(secfind,Offend),!.

anaz2(Ang,_,tan(Ang)) :- !.


cs(X,sin(X)) :- !.
cs(X,cos(X)) :- !.
cc(X,cot(X)) :- !.
cc(X,cosec(X)) :- !.
st(X,sec(X)) :- !.
st(X,tan(X)) :- !.

 % Hyperbolic cases 
csh(X,sinh(X)) :- !.
csh(X,cosh(X)) :- !.
cch(X,coth(X)) :- !.
cch(X,cosech(X)) :- !.
sth(X,sech(X)) :- !.
sth(X,tanh(X)) :- !.

sinfind(sin(_)) :- !.
cosfind(cos(_)) :- !.
secfind(sec(_)) :- !.
cosecfind(cosec(_)) :- !.

 % Recognize powers of trig functions in the equation   
cosp(Ang,cos(Ang)^N,N) :- integer(N),!.
cosp(Ang,cos(Ang),1) :- !.
cosp(_,_,0) :- !.
secp(Ang,sec(Ang)^N,N) :- integer(N),!.
secp(Ang,sec(Ang),1) :- !.
secp(_,_,0) :- !.
cosecp(Ang,cosec(Ang)^N,N) :- integer(N),!.
cosecp(Ang,cosec(Ang),1) :- !.
cosecp(_,_,0) :- !.

 % Recognize powers of hyperbolic functions in the equation   
coshp(Ang,cosh(Ang)^N,N) :- integer(N),!.
coshp(Ang,cosh(Ang),1) :- !.
coshp(_,_,0) :- !.
sinhp(Ang,sinh(Ang)^N,N) :- integer(N),!.
sinhp(Ang,sinh(Ang),1) :- !.
sinhp(_,_,0) :- !.
sechp(Ang,sech(Ang)^N,N) :- integer(N),!.
sechp(Ang,sech(Ang),1) :- !.
sechp(_,_,0) :- !.
tanhp(Ang,tanh(Ang)^N,N) :- integer(N),!.
tanhp(Ang,tanh(Ang),1) :- !.
tanhp(_,_,0) :- !.
cosechp(Ang,cosech(Ang)^N,N) :- integer(N),!.
cosechp(Ang,cosech(Ang),1) :- !.
cosechp(_,_,0) :- !.
cothp(Ang,coth(Ang)^N,N) :- integer(N),!.
cothp(Ang,coth(Ang),1) :- !.
cothp(_,_,0) :- !.

makenice(cosec(X),sin(X)) :- !.
makenice(sec(X),cos(X)) :- !.
makenice(cot(X),tan(X)) :- !.
makenice(X,X) :- !.

 % expss(P,Q,X,T) expresses sin(Z) in terms of sin(X) where Z/X=Q/P 
 % expcs expresses cos(Z) in terms of sin(X) etc.    The 4
 % functions are more or less mutually recursive, but expcc does
 % not depend on the others, though they call it

expss(P,P,X,sin(X)) :- !.

expss(P,Q,X,2*sin(X)*(1-sin(X)^2)^(1/2)) :- eval(Q/P=:=2),!.

expss(P,Q,X,(3*sin(X)-4*sin(X)^3)) :- eval(Q/P=:=3),!.

 % Where Q/P is odd a simple series expansion can be applied
expss(P,Q,X,A) :- eval(Q/P,N),eval(N mod 2,1),!,sinexp(sin(X),N,0,A).

 % sin(Y) = sin((Y-3*X) + 3*X) = sin(3*X)*cos(Y-3*X) + cos(3*X)*sin(Y-3*X)  
 % We can now express each of these 4 terms in terms of sin(X) as
 % a recursive step. The 4 terms are A,B,C and D below.

expss(P,Q,X,(A*B+C*D)) :- 
        eval(3*P,P1),
        eval(Q-3,Q1),
        expss(P,P1,X,A),
        expcs(P,Q1,X,B),
        expcs(P,P1,X,C),
        expss(P,Q1,X,D),
        !.

 % Similarly for sin in terms of cos
expsc(P,P,X,(1-cos(X)^2)^(1/2)) :- !.

expsc(P,Q,X,2*cos(X)*(1-cos(X)^2)^(1/2)) :-eval(Q/P=:=2),!.

expsc(P,Q,X,(4*cos(X)^2-1)*(1-cos(X)^2)^(1/2)) :- eval(Q/P=:=3),!.

expsc(P,Q,X,(A*B+C*D)) :- 
        eval(3*P,P1),
        eval(Q-3,Q1),
        expsc(P,P1,X,A),
        expcc(P,Q1,X,B),
        expcc(P,P1,X,C),
        expsc(P,Q1,X,D),
        !.

 %  cos in terms of sin
expcs(P,P,X,(1-sin(X)^2)^(1/2)) :- !.

expcs(P,Q,X,(1-2*sin(X)^2)) :-eval(Q/P=:=2),!.

expcs(P,Q,X,(1-4*sin(X)^2)*(1-sin(X)^2)^(1/2)) :- eval(Q/P=:=3),!.

expcs(P,Q,X,(A*B-C*D)) :- 
        eval(3*P,P1),
        eval(Q-3,Q1),
        expcs(P,P1,X,A),
        expcs(P,Q1,X,B),
        expss(P,P1,X,C),
        expss(P,Q1,X,D),
        !.

 % Series exists for cos in terms of cos
expcc(P,Q,X,Y) :- eval(Q/P,N),cosexp(cos(X),N,0,Y),!.

 % Base case, series complete
cosexp(A,N,R,X) :- eval(2*R,R1),eval(R1+1,R2),(N=R1;N=R2),coeff1(A,N,R,X),!.

 % Recurse
cosexp(X1,N,R,X-(Y)) :- coeff1(X1,N,R,X),eval(R+1,R1),!,cosexp(X1,N,R1,Y).
 
 % Produce the coefficients for the series, very ugly

coeff1(Fang,N,R,X*(ZZ)) :- 
        fact(R,R1),
        eval(N-2*R-1,N1),
        eval(N-R-1,N2),
        eval(N1+1,N3),
        fact(N2,Z2),
        fact(N3,Z3),
        eval((2^N1*N*Z2)/(R1*Z3),X),
        form4(Fang,N3,ZZ),
        !.

 % The sin expansion for odd Q/P is very similar to cos cos series
sinexp(X,N,A,B*(Z)) :- eval((-1)^((N-1)/2),B),cosexp(X,N,A,Z),!.

 % Expand tan(n*x) in terms of tan(m*x)  (m < n)  
 % Tan produces a numerator and denominator series.

exptt(I,J,X,(Z)/(Y)) :- 
        eval(J/I,N),
        tanexp_num(tan(X),N,1,Z),
        tanexp_denom(tan(X),N,0,Y),
        !.

 % Obtain numerator
tanexp_num(A,N,R,X) :- eval(R+1,R1),(N=R1;N=R),coeff2(A,N,R,X),!.
tanexp_num(A,N,R,X-(Y)) :- 
        coeff2(A,N,R,X),
        eval(R+2,R1),
        !,
        tanexp_num(A,N,R1,Y).


 % Obtain the denominator
tanexp_denom(A,N,R,X) :- eval(R+1,R1),(N=R1;N=R),coeff2(A,N,R,X),!.
tanexp_denom(A,N,R,X-(Y)) :- 
        coeff2(A,N,R,X),
        eval(R+2,R1),
        !,
        tanexp_denom(A,N,R1,Y).

 % Different coefficients from the other series

coeff2(A,N,R,X*(ZZ)) :- calc_coeff(N,R,X),form4(A,R,ZZ),!.

calc_coeff(N,R,X) :- 
        fact(R,Rfact),
        fact(N,Nfact),
        eval(N-R,P),
        fact(P,Pfact),
        eval(Nfact/(Pfact*Rfact),X),
        !.

 % Modified checklists
check_cs(_,[]) :- !.
check_cs(X,[H|T]) :- cs(X,H),check_cs(X,T).


check_cc(_,[]) :- !.
check_cc(X,[H|T]) :- cc(X,H),check_cc(X,T).

check_st(_,[]) :- !.
check_st(X,[H|T]) :- st(X,H),check_st(X,T).

check_csh(_,[]) :- !.
check_csh(X,[H|T]) :- csh(X,H),check_csh(X,T).

check_cch(_,[]) :- !.
check_cch(X,[H|T]) :- cch(X,H),check_cch(X,T).

check_sth(_,[]) :- !.
check_sth(X,[H|T]) :- sth(X,H),check_sth(X,T).


check_half_angle_check1(_,[]) :- !.
check_half_angle_check1(A,[H|T]) :- 
        half_angle_check1(A,H),
        check_half_angle_check1(A,T).


check_half_angle_check2(_,[]) :- !.
check_half_angle_check2(A,[H|T]) :- 
        half_angle_check2(A,H),
        check_half_angle_check2(A,T).


check_even([]) :- !.
check_even([H|T]) :- even(H),check_even(T).

/*======================================================================== pressdir/methods/log.pl */

/* LOG : Logmethod showing meta-level inference

                                                Leon + Bernard
                                                Updated: 12 May 1983
*/
                        %  The equation is solvable by log_method when the
                        %  equation is of the form A*B*...*N=P*Q*...*Z
                        %  where each of the multiplicative terms are of the
                        %  form base^f(x) for varying bases free of the unknown
                        %  and varying functions of the unknown.
                        %  Alternatively the equation can be the of the form
                        %  A+B=0, so that the equation can be transformed into
                        %  the above form.
                        %  For example the AEB question:
                        %
                        %  4^(2*x+1)*5^(x-2)=6^(1-x)
                        %  is solved by taking logs base 10 and solving the 
                        %  linear equation.

prod_exp_terms_eqn(A+B=0,X,New) :-
        !,
        prod_exp_terms(A,X),
        prod_exp_terms(B,X),
        form_new_equation(A+B=0,New).

prod_exp_terms_eqn(A=B,X,A=B) :- 
        prod_exp_terms(A,X),
        prod_exp_terms(B,X).

                        %  Describing the allowable multiplicative forms

prod_exp_terms(A*B,X) :-
        !,
        exp_term(B,X),          % Note the precedence of *
        prod_exp_terms(A,X).

prod_exp_terms(A,X) :- exp_term(A,X).

exp_term(A,X) :- freeof(X,A), !.
exp_term(A^_B,X) :- freeof(X,A).

                        %  Find the appropriate Base and take logs

log_reduce(A=B,X,Base,Eqn) :- 
        log_separate(A=B,X,Loglist,Prod),
        find_base(Loglist,Base),
        take_logs_and_recomp(Base,Loglist,Newlhs),
        tidy(Newlhs=log(Base,Prod),Eqn).

log_separate(A=B,X,Loglist,Prod) :- log_separate(A=B,X,[],Loglist,1,Prod).

log_separate(A=B,X,Loglist,L,Prod,P) :-
        prod_decomp(B,X,Loglist,Inter,Prod,Intp,rhs),
        prod_decomp(A,X,Inter,L,Intp,P,lhs).

prod_decomp(A*B,X,Log,L,Prod,P,Side) :-
        !,
        prod_decomp(A,X,Log,Intl,Prod,Intp,Side),
        prod_decomp(B,X,Intl,L,Intp,P,Side).

prod_decomp(A,X,L,L,Prod,A*Prod,rhs) :- freeof(X,A).
prod_decomp(A,X,L,L,Prod,Prod/A,lhs) :- freeof(X,A).

prod_decomp(A^B,_,Log,[exp_term(A,B,-1)|Log],P,P,rhs).
prod_decomp(A^B,_,Log,[exp_term(A,B,1)|Log],P,P,lhs).

find_base([exp_term(A,_,_)|Log],Base) :-
        ok_number(A),
        base(A,B),
        find_base(Log,B,Base,BaseList),
        check_power_of([B|BaseList],Base),
        !.

find_base(_,10).        % Logs to base 10 is the default

find_base([exp_term(A,_,_)|Log],B,Base,[Exp|BaseList]) :-
        ok_number(A),
        !,
        base(A,Exp),
        least(Exp,B,NewB),
        find_base(Log,NewB,Base,BaseList).
        
find_base([],B,B,[]).

base(A,A) :- integer(A), !.
base(A,Denom) :- eval(numer(A)=1),eval(denom(A),Denom).

                        %  Take logs and reconstitute

take_logs_and_recomp(Base,[exp_term(A,B,Sign)|Log],NewLhs) :-
        tlar(Base,Log,Sign*B*log(Base,A),NewLhs).

tlar(_Base,[],Lhs,Lhs) :- !.
tlar(Base,[exp_term(A,B,Sign)|Log],Sum,Lhs) :-
        tlar(Base,Log,Sign*B*log(Base,A)+Sum,Lhs).

                        %  Check that the new base is a root of all the
                        %  exponents, otherwise fail and use base 10.
check_power_of([],_).
check_power_of([H|T],Base) :-
        powered(Base,_,H),
        !,
        check_power_of(T,Base).

                        %  Manipulate equation of the form A + B = 0
                        %  to remove negative signs if possible.

form_new_equation(A+B=0,NewEqn) :-
        negative_number_product(A,New),
        !,
        \+ negative_number_product(B,_),
        tidy(B=New,NewEqn).

form_new_equation(A+B=0,NewEqn) :- 
        negative_number_product(B,New),
        !,
        \+ negative_number_product(A,_),
        tidy(A=New,NewEqn).


negative_number_product(Term,New) :-
        decomp(Term,[*|Args]),
        select(Number,Args,Rest1),
        ok_number(Number),
        eval(Number < 0),
        recomp(Rest,[*|Rest1]),
        tidy(-Number*Rest,New),
        !.

/*======================================================================== pressdir/methods/nasty.pl */

/*              NASTY                   14.9.81   
                                        Updated: 10 September 82
*/
%declarations%

% :- public
%                 findbase/2,
%                 good_fun/1,
%                 invert_exp/2,
%                 nasty/2,
%                 nasty2/2,
%                 nasty_method/3,
%                 nice_at/1,
%                 pt/1,
%                 pta/1.
%end%


/*              CODE                                    */
/* Nasty in the context of the code and comments means a term u^x where
x is a rational non-integer and u is anything.Here offending term means
the same as it does in homogenization  */


/* Has equation been seen before */
nasty_method(Eqn,X,NewEqn) :- 
        looping(Eqn,X),
        tidy(Eqn,Eqn1),
        try_nasty_method(Eqn1,X,Eqn2),
        weak_normal_form(Eqn2,X,NewEqn),
        !.

/* Try to deal with non-rational nasty functions  */
try_nasty_method(Eqn,X,Neweqn) :- 
        parse4(Eqn,X,U,other),
        subnasty(X,U,V),
        find_symbols(Eqn,V,Symbols,Posns),
        nasty_act(Symbols,Posns,Eqn,X,Neweq),
        tidy(Neweq,Neweqn),
        !.

/* Clear rational functions */
try_nasty_method(Eqn,X,Neweqn) :- 
        parse4(Eqn,X,U,neg),
        exp_nasty_list(X,U,V),
        remove_subsumed(V,Termlist),
        multiply_through(Eqn,Termlist,Neweqn,X),
        tidy(Neweqn,New),
        trace_press('\nClearing of rational functions\n\n%t\n',[New],1),
        !.


/* The isolate case   */

nasty_act(Symbols,[Posn|_],Eqn,_X,New) :- 
        nice(Symbols),
        append(Posn,[1],Posn1),
        position(Term,Eqn,Posn1),
        trace_press('\nTrying to isolate %t\n in %t\n',[Term,Eqn],1),
        try_isolate(Posn1,Eqn,New),
        !.


try_isolate(Posn,Eqn,New) :- isolate(Posn,Eqn,New),!.
try_isolate(_,_,_) :-   writef_press('\nFailed to isolate\n'),!,fail.

/* The cancelling pair case   */
/* Left to tidy at present  */
/* Eventually we will need rules to cancel sin(arcsin(x)) etc  */

/* Attraction case  */

nasty_act(Symbols,Posns,Eqn,_X,New) :- 
        find_attract_list(Symbols,N,L,Type),
        nmember(Posn,Posns,N),
        strip(Posn,L,Newp),
        position(Term,Eqn,Newp),
        nas_rule(Term,Nterm,Type),
        subst(Term=Nterm,Eqn,New1),
        tidy(New1,New),
        trace_press('\nAttracting nasty functions\n%t\n',[New],1),
        !.

parse4(A,Unk,Bag,Type) :- dl_parse4(A,Unk,Bag-[],Type).

dl_parse4(A,Unk,L-L,_) :- freeof(Unk,A),!.
dl_parse4(A=B,Unk,L-L1,T) :- !,
        dl_parse4(A,Unk,L-L2,T),
        dl_parse4(B,Unk,L2-L1,T).

dl_parse4(A*B,Unk,L-L1,T) :- !,
        dl_parse4(A,Unk,L-L2,T),
        dl_parse4(B,Unk,L2-L1,T).

dl_parse4(A+B,Unk,L-L1,T) :- !,
        dl_parse4(A,Unk,L-L2,T),
        dl_parse4(B,Unk,L2-L1,T).

dl_parse4(A^B,Unk,X,other) :- integer(B),B > 0,!,dl_parse4(A,Unk,X,other).
dl_parse4(A,_,[A|L]-L,_) :- !.

/* See if any of the terms found are nasty rather than offending  */

nasty(X,Y) :- root_nasty(X,Y),!.
nasty(X,Y) :- exp_nasty(X,Y),!.
nasty(X,Y) :- trig_nasty(X,Y),!.

/* Root type nasty */
root_nasty(X,U^N) :- contains(X,U),ok_number(N),\+ integer(N),eval(N>0),!.

/* Negative exponent nasty */
exp_nasty(X,U^N) :- contains(X,U),ok_number(N),eval(N<0),diff(X,U),!.

exp_nasty_list(_,[],[]) :- !.
exp_nasty_list(X,[H|Rest],[H|RestV]) :-
        exp_nasty(X,H),
        !,
        exp_nasty_list(X,Rest,RestV).
exp_nasty_list(X,[_|Rest],RestV) :-
        exp_nasty_list(X,Rest,RestV).

trig_nasty(X,Y) :- (arctrigf(Y);trigf(Y)),contains(X,Y),!.

/* Find the functions dominating,and the positions of,the nasty functions */
find_symbols(_,[],[],[]) :- !.

        find_symbols(E,[H|T],[H1|T1],[H2|T2]) :- find_symbols1(E,H,H1,H2),
        find_symbols(E,T,T1,T2),
        !.

find_symbols1(Eqn,X,Y,B) :- 
        posl(X,Eqn,A,B),
        expon(X,P),
        append(A,[P],Y),
        !.      

posl(X,X,[],[]) :- !.
posl(X,E,[Op|L],[N|Pos]) :- 
        E=..[Op1,Arg|Args],
        get_ops(Op,Op1,E),
        nmember(T,[Arg|Args],N),
        posl(X,T,L,Pos),
        !.

get_ops(exp(Arg1),_,E) :- E=..[^,_,Arg1|_],!.
get_ops(Op1,Op1,_) :- !.

expon(_U^N,exp(N)) :- ok_number(N),!.
expon(X,X) :- arctrigf(X),!.
expon(X,X) :- trigf(X),!.

/* Remove terms form list if they are subsumed by others,ie
if U^-N and U^-M,M>N both occur keep only U^-M    */
remove_subsumed([],_) :- !, fail.
remove_subsumed(V,Termlist) :-
        listtoset(V,List),              % Cheap test
        rem_sub(List,Termlist,[]).

rem_sub([],Termlist,Termlist) :- !.
rem_sub([H|Rest],Termlist,Acc) :-
        member_match(H,Acc,NewAcc),
        !,
        rem_sub(Rest,Termlist,NewAcc).
rem_sub([H|Rest],Termlist,Acc) :-
        match(H,U^N),
        ok_number(N),
        rem_sub(Rest,Termlist,[U^N|Acc]).

member_match(_H,[],_) :- !, fail.
member_match(H,[U^N|Rest],[U^K|Rest]) :-
        match(H,U^M),
        !,
        least(N,M,K).
member_match(H,[Term|Rest],[Term|NewRest]) :-
        member_match(H,Rest,NewRest).

least(N,M,N) :- eval(N=<M), !.
least(_N,M,M).

/* Is the function dominating list nice,ie can isolation be used  */
nice([]) :- !.
nice([List|Rest]) :-
        nice_list(List),
        !,
        nice(Rest).

nice_list([]) :- !.
nice_list([Fun|Rest]) :-
        good_fun(Fun),
        !,
        nice_list(Rest).

/* Isolatable functions (need to add arctrig etc) */
good_fun(+) :- !.
good_fun(=) :- !.
good_fun(*) :- !.
good_fun(X) :- arctrigf(X),!.
good_fun(exp(N)) :- ok_number(N),\+ integer(N),eval(numer(N)=1),!.

/* Is the function dominating list attractable */
find_attract_list([],_,_,_) :- !,fail.
find_attract_list([H|_T],1,M,Type) :- attract_list(H,M,Type),!.
find_attract_list([_|T],N,M,Type) :- 
        find_attract_list(T,N1,M,Type),
        N is N1+1,
        !.

attract_list([exp(N)|T],K,Type) :- 
        integer(N),
        last(exp(M),T),
        get_nasty_type(M,N,Type),
        append(T1,[exp(M)],T),
        checkpt(T1),
        length(T,K),
        !.
attract_list([X|T],K,trig) :- trigf(X),checkpta(T),length(T,K),!.

attract_list([_|T],M,Type) :- attract_list(T,M,Type),!.


get_nasty_type(M,N,root(M)) :- eval(1/N,M),!.
get_nasty_type(M,N,negroot(M)) :- eval(1/N,-1*M),!.
get_nasty_type(M,_N,neg(M)) :- eval(M<0),!.

pt(*) :- !.
pt(+) :- !.

pta(X) :- pt(X),!.
pta(X) :- arctrigf(X),!.

arctrigf(X) :- member(X,[arcsin(_),arccos(_),arctan(_)]),!.
/* Attraction Rules (many to be added)  */

nas_rule(A^2 ,Exp,root(N)) :- dist(A,A1),tidy(A1,A2),expon_exp(A2^2,N,Exp),!.
nas_rule(A^2,Exp,negroot(N)) :- 
        dist(A,A1),
        tidy(A1,A2),
        expon_inv_exp(A2^2,N,Exp),
        !.
nas_rule(A^2,Exp,neg(N)) :- neg_exp(A^2,N,Exp),!.
nas_rule(sin(X),Exp,trig) :- sinatt(X,Exp),!.
nas_rule(cos(X),Exp,trig) :- cosatt(X,Exp),!.
nas_rule(tan(X),Exp,trig) :- tanatt(X,Exp),!.

expon_exp(Old,N,New) :- eval(N=(1/2)),expon_exp1(Old,N,New),!.

expon_inv_exp(Old,N,New) :- eval(N=(-1/2)),expon_inv_exp1(Old,N,New),!.

expon_exp1(A^2,N,C^2 + 2*C*D^N + D) :- match(A,D^N+C),!.
expon_exp1(A^2,N,C^2 + 2*C*E*D^N + D*E^2) :- match(A,C+E*D^N),!.
expon_exp1(A^2,N,C^2*D) :- match(A,C*D^N),!.

expon_inv_exp1(A^2,N,C^2 + 2*C*D^N + D^(-1)) :- match(A,D^N+C),!.
expon_inv_exp1(A^2,N,C^2 + 2*C*E*D^N + D^(-1)*E^2) :- match(A,C+E*D^N),!.
expon_inv_exp1(A^2,N,C^2*D^(-1)) :- match(A,C*D^N),!.

neg_exp(A^2,_N,A^2) :- wordsin(A,L),L=[],!.
neg_exp(A^2,N,X*Y) :- match(A,B*C),!,neg_exp(B^2,N,X),neg_exp(C^2,N,Y).
neg_exp(A^2,N,B^E+2*C*B^N +C^2) :- 
        match(A,B1+C),
        neg_exp_match(B1,_F,B,N), 
        eval(2*N,E),
        !.
neg_exp(A^2,_,A^2) :- !.


neg_exp_match(Exp,1,B,N) :- match(Exp,B^N),!.
neg_exp_match(Exp,F,B,N) :- match(Exp,F*B^N),!.

sinatt(X,Exp) :- match(X,(-1)*Y),sinatt(Y,E1),tidy((-1)*E1,Exp),!.
sinatt(A+B,Exp) :- 
        trig_inv(sin(A),X,F1),
        trig_inv(cos(A),Y,F2),
        trig_inv(sin(B),Z,F3),
        trig_inv(cos(B),W,F4),
        member(cancel,[F1,F2,F3,F4]),
        merge(X*W,X1),
        merge(Y*Z,X2),
        tidy(X1 + X2,Exp),
        !.

cosatt(X,Exp) :- match(X,Y*(-1)),cosatt(Y,Exp),!.
cosatt(A+B,Exp) :- 
        trig_inv(sin(A),X,F1),
        trig_inv(cos(A),Y,F2),
        trig_inv(sin(B),Z,F3),
        trig_inv(cos(B),W,F4),
        member(cancel,[F1,F2,F3,F4]),
        merge(W*Y,X1),
        merge(Z*X,X2),
        tidy(X1 - X2,Exp),
        !.

tanatt(X,Exp) :- match(X,Y*(-1)),cosatt(Y,Exp1),tidy((-1)*Exp1,Exp),!.
tanatt(A+B,Exp) :- 
        trig_inv(tan(A),X,F1),
        trig_inv(tan(B),Y,F2),
        member(cancel,[F1,F2]),
        merge(X*Y,Z),
        tidy((X+Y)/(1-Z),Exp),
        !.

trig_inv(sin(X),Y,F) :- match(X,(-1)*Z),trig_inv(sin(Z),W,F),tidy((-1)*W,Y),!.
trig_inv(sin(arcsin(X)),X,cancel) :- !.
trig_inv(sin(arccos(X)),Y,cancel) :- tidy((1-X^2)^(1/2),Y),!.
trig_inv(sin(X),sin(X),no) :- !.

trig_inv(cos(X),Y,F) :- match(X,(-1)*Z),trig_inv(cos(Z),Y,F),!.
trig_inv(cos(arccos(X)),X,cancel) :- !.
trig_inv(cos(arcsin(X)),Y,cancel) :- tidy((1-X^2)^(1/2),Y),!.
trig_inv(cos(X),cos(X),no) :- !.

trig_inv(tan(X),Y,F) :- match(X,(-1)*Z),trig_inv(tan(Z),W,F),tidy((-1)*W,Y),!.
trig_inv(tan(arctan(X)),X,cancel) :- !.
trig_inv(tan(X),tan(X),no) :- !.

/* strip(L,M,L1) holds when removing the last M elements from list L
gives list L1 */
strip(L,N,L1) :- append(L1,List,L),length(List,N),!.

/* Do the multiplication to rationalize  */
multiply_through(Lhs=Rhs,List,New,_X) :- 
        dist(Lhs,Exp),
        decomp(Exp,[+|L]),
        mult(List,L,NewL),
        recomp(NewLhs,[+|NewL]),
        free_mult(List,Rhs,NewRhs),
        tidy(NewLhs=NewRhs,New),
        !.

dist(Old,New) :- prepd(Old,New1),dist1(New1,New),!.

dist1(A+B,C+D) :- !,dist1(A,C),dist1(B,D),!.    
dist1((A+B)*C,Y + Z) :- !,dist1(A*C,Y),dist1(B*C,Z).
dist1(C*(A+B),Y+Z) :- !,dist1(A*C,Y),dist1(B*C,Z).
dist1(C*(A+B)*D,Y+Z) :- !,dist1(C*D*A,Y),dist1(C*D*B,Z).
dist1(X,X) :- !.

prepd(X,Y) :- decomp(X,[*|L]), prepd1(L,Y),!.
prepd(X,X) :- !.

prepd1(L,Y) :- get_dist(L,Mult,[],Plus),re_dist(Mult,Plus,Y),!.

get_dist([],_,_,_) :- !,fail.
get_dist([A+B|T],Prod,Acc,A+B) :- !,append(T,Acc,Prod1),recomp(Prod,[*|Prod1]).
get_dist([H|T],Ans,Acc,Plus) :- !,append([H],Acc,Newacc),
get_dist(T,Ans,Newacc,Plus).
        

re_dist(M1,P+Q,X+Y) :- prepd(M1*P,X),prepd(M1*Q,Y),!.


mult(_Termlist,[],[]) :- !.
mult(Termlist,[H|Rest],[NewH|NewRest]) :-
        domult(Termlist,H,NewH),
        mult(Termlist,Rest,NewRest).

domult(Termlist,H,NewH) :-
        mulbag_to_list(H,Mullist),
        domult(Termlist,Mullist,NewH,1).

domult([],Args,Term*Acc,Acc) :-
        !,
        recomp(Term,[*|Args]).
domult([U^N|Rest],Args,Prod,Acc) :-
        exp_member(U,Args,NewArgs,K),
        eval(K-N,M),
        domult(Rest,NewArgs,Prod,U^M*Acc),
        !.

mulbag_to_list(H,Mullist) :- decomp(H,[*|Mullist]), !.
mulbag_to_list(H,[H]).

exp_member(_U,[],[],0) :- !.
exp_member(U,[H|Rest],Rest,1) :- match(H,U), !.
exp_member(U,[H|Rest],Rest,K) :- match(H,U^K),eval(K<0), !. %fix???
exp_member(U,[H|Rest],[H|NewRest],K) :-
        exp_member(U,Rest,NewRest,K).

free_mult(_List,0,0) :- !.
free_mult([],Term,Term) :- !.
free_mult([U^N|Rest],Term,NewTerm) :-
        eval(-N,M),
        free_mult(Rest,U^M*Term,NewTerm).

/* Looping Check */
looping(Eqn,X) :- normstore(Eqn,X,Eqn1),looping1(Eqn1),!.

looping1(Eqn1)  :- seen_eqn(Eqn1),
        !,
        trace_press('\n*****LOOPING*****\nI have seen equation before\n',1),
        trace_press('\nTracing\n',1),
        cond_trace_press,
        fail.

looping1(Eqn1) :- asserta(seen_eqn(Eqn1)),!.

normstore(Eqn,X,Eq) :- subst(X  = unk,Eqn,Eqn1),
        !,
        remove_arbs(Eqn1,Eqn2),
        tidy(Eqn2,Eq).


/* Remove arbitrary integers */

remove_arbs(Eqn1,Eqn2) :- 
        wordsin(Eqn1,Words),
        subintegral(Words,Word),
        remove_arbs1(Eqn1,Word,Eqn2),
        !.

remove_arbs1(X,[],X) :- !.
remove_arbs1(X,H,Y) :- make_arblist(H,Z),make_subl(H,Z,Y1),subs1(X,Y1,Y),!.

make_arblist(H,Z) :- make_arblist1(H,Z,1),!.

make_arblist1([],[],_) :- !.
make_arblist1([_H|T],[arb(N)|T1],N) :- M is N+1,make_arblist1(T,T1,M),!.

cond_trace_press :- flag(tflag,N,N),N>0,trace_press,!.
cond_trace_press :- !.

/*
seen_eqn(_) :- fail.

integral(_) :- fail.
*/

/* Merge roots in products      */
merge(A,X) :- eval(1/2,N),match(A,B^N*C^N),tidy(B*C,Y),tidy(Y^N,X),!.
merge(A,X) :- eval(1/2,N),match(A,Z*B^N*C^N),tidy(B*C,Y),tidy(Z*Y^N,X),!.
merge(A,A) :- !.

 % Converted sublists etc   

subnasty(_,[],[]) :- !.
subnasty(X,[H|T],[H|T1]) :- nasty(X,H),!,subnasty(X,T,T1).
subnasty(X,[_|T],T1) :- subnasty(X,T,T1),!.

subintegral([],[]) :- !.
subintegral([H|T],[H|T1]) :- integral(H),!,subintegral(T,T1).
subintegral([_|T],T1) :- subintegral(T,T1),!.

checkpt([]) :- !.
checkpt([H|T]) :- pt(H),checkpt(T),!.

checkpta([]) :- !.
checkpta([H|T]) :- pta(H),checkpta(T),!.

/*======================================================================== pressdir/axioms/isolat_ax.pl */

%   File   :  /usr/bs/pressdir/axioms/isolat.ax
%   Author :  PRESS Group
%   Updated: Tue Oct 29 14:26:21 1985
%   Purpose: Isolation axioms

% :- multifile isolax/4.
% :- public
% 		isolax/4.

/* AXIOMS FOR ISOLATION*/
/* FIRST ARGUMENT IS THE VARIABLE ISOLATED*/

/* unary minus */
isolax( 1 , -U=V , U= -1*V , true ).

/* plus */
isolax( 1 , U+V=W , U=W+(-1)*V , true ).
isolax( 2 , V+U=W , U=W+(-1)*V , true ).

/* multiplication */
isolax( 1 , U*V=W , U=W*V1 , non_zero(V) ) :- tidy(1/V,V1).
isolax( 2 , V*U=W , U=W*V1 , non_zero(V) ) :- tidy(1/V, V1).

/* logarithms */
isolax( 1 , log(U,1)=0 , U=N , arbint(N) ).
isolax( 1 , log(U,V)=W , U=V^W1 , non_zero(W) ) :- tidy(1/W,W1).
isolax( 2 , log(U,V)=W , V=U^W , true ) .

/* exponentiation */

isolax( 1 , U^0 = K , U=N , arbint(N) ) :-  K=1,!.

isolax( 1 , U^0=N,false,true) :- eval(N\= -1),
	 trace_press('\nThe equation %t^0 = %t has no real roots\n',[U,N],1),
	 trace_press('\n%t^0  must equal 1.\n',[U],1),
	 !.

isolax( 1 , U^N = 0 , false , true ) :- negative(N),
trace_press('\n%t^%t = 0 has no real roots, %t^%t can not be 0\n',[U,N,U,N],1),
	!.

isolax( 1 , U^N=V , U=V^N1 , odd(N) ) :- tidy(1/N, N1).

isolax( 1 , U^N=V , false , true ) :- negative(V),
	integer(N),
	even(N),
	tidy(1/N,N1),
	trace_press('\nThe equation %t^%t = %t has no real roots\n',[U,N,V],1),
	trace_press('\nas %t^%t is not real\n',[V,N1],1),
	!.


isolax( 1 , U^N=V , U=V^N1 , non_neg(U) & even(N) ) :- tidy(1/N, N1).

isolax( 1 , U^N=V , U=V^N1 # U=(-1)*(V^N1) , even(N) ) :- tidy(1/N, N1).

isolax( 1 , U^A=V, U=V^A1 , \+ number(A) ) :- tidy(1/A,A1).

isolax( 2 , U^V=W , false , true ) :- positive(U),
	eval(W=<0),
trace_press('\n%t^%t = %t has no real roots, %t^%t must be > 0\n',[U,V,W,U,V],1),
	!.

isolax( 2 , U^V=W , V=log(U,W) , true ) .

/* sine */

isolax( 1 ,sin(U)=0,U=180*N,arbint(N)).

isolax( 1 ,sin(U)=1,U=360*N+90,arbint(N)).

isolax( 1 ,sin(U)= -1,U=360*N-90,arbint(N)).

isolax( 1, sin(U)=V,false,true) :- (eval(V>1);eval(V< -1)),
trace_press('\n%t=%t has no real roots, sin must lie in [-1,1]\n',[sin(U),V],1),
	!.

isolax( 1 ,sin(U)=V,U=arcsin(V), acute(U)).

isolax( 1 ,sin(U)=V,U=arcsin(V)#U=180+((-1)*arcsin(V)), non_reflex(U)).

isolax( 1 , sin(U)=V , U=N*180+ (-1)^N*arcsin(V) , arbint(N) ) .

/* cosine */

isolax( 1 ,cos(U)=1,U=360*N,arbint(N)).

isolax( 1 ,cos(U)= -1,U=360*N+180,arbint(N)).

isolax( 1 ,cos(U)=0,U=180*N+90,arbint(N)).

isolax( 1, cos(U)=V,false,true) :- (eval(V>1);eval(V< -1)),
trace_press('\n%t=%t has no real roots, cos must lie in [-1,1]\n',[cos(U),V],1),
	!.

isolax( 1 ,cos(U)=V,U=arccos(V), non_reflex(U)).

isolax( 1 , cos(U)=V , U=2*N*180+arccos(V) #
                           U=2*N*180+ ((-1)*arccos(V)) , arbint(N) ) .

/* tangent */
isolax( 1 , tan(U)=V , U=N*180+arctan(V) , arbint(N) ) .

/* cosecant */
isolax( 1 , cosec(U)=V , U=N*180+ (-1)^N*arcsin(V1) ,
                             arbint(N) ) :- tidy(1/V,V1).

/* secant */
isolax( 1 , sec(U)=V , U=2*N*180+arccos(V1) #
                           U=2*N*180+ ((-1)*arccos(V1)) , arbint(N) ) :- tidy(1/V,V1).

/* cotangent */
isolax( 1 , cot(U)=V , U=N*180+arctan(V1) , arbint(N) ) :- tidy(1/V,V1).

/* inverse sine */
isolax( 1, arcsin(U)=V,false,true) :- (eval(U>1);eval(U< -1)),
	tidy(V,V1),
trace_press('\n%t=%t has no real roots, sin must lie in [-1,1]\n',[arcsin(U),V1],1),
	!.

isolax( 1 , arcsin(U)=V , U=sin(V) , true ) .

/* inverse cosine */
isolax( 1, arccos(U)=V,false,true) :- (eval(U>1);eval(U< -1)),
	tidy(V,V1),
trace_press('\n%t=%t has no real roots, cos must lie in [-1,1]\n',[arccos(U),V1],1),
	!.

isolax( 1 , arccos(U)=V , U=cos(V) , true ) .

/* inverse tangent */
isolax( 1 , arctan(U)=V , U=tan(V) , true ) .

/*inverse cosecant */
isolax( 1 , arccosec(U)=V , U=sin(V1) , true )  :- tidy(1/V,V1).

/* inverse secant */
isolax( 1 , arcsec(U)=V , U=cos(V1) , true ) :- tidy(1/V,V1).

/* inverse cotangent */
isolax( 1 , arccot(U)=V , U=tan(V1) , true ) :- tidy(1/V,V1).

/* sinh  */
isolax( 1, sinh(U)=V,  U=log(e,X),true) :- tidy(V+(V^2+1)^(1/2),X),!.

/* cosh */
isolax( 1, cosh(U)=V,false,true) :- eval(V<1),
	tidy(V,V1),
trace_press('\n%t=%t has no real roots, cosh must be >= 1\n',[cosh(U),V1],1),
	!.


isolax( 1, cosh(U)=V,U=log(e,X) # U=log(e,Y),true) :-
	tidy(V+(V^2-1)^(1/2),X),
	tidy(V-(V^2-1)^(1/2),Y),
	!.
			

/* tanh */
isolax( 1, tanh(U)=V,false,true) :- (eval(V=< -1);eval(V>=1)),
	tidy(V,V1),
trace_press('\n%t=%t has no real roots, tanh must lie in (-1,1)\n',[tanh(U),V1],1),
	!.

isolax( 1, tanh(U)=V,U=log(e,X)*(1/2),true) :- tidy((1+V)*(1-V)^ -1,X),!.

/* cosech */
isolax( 1, cosech(U)=V,U=log(e,X),non_zero(V)) :- 
	tidy(1/V,V1),
	tidy(V1+(V1^2+1)^(1/2),X),
	!.

/* sech */
isolax( 1, sech(U)=V,false,true) :- (eval(V=<0);eval(V>1)),
	tidy(V,V1),
trace_press('\n%t=%t has no real roots, sech must lie in (0,1]\n',[sech(U),V1],1),
	!.


isolax( 1, sech(U)=V1,U=log(e,X) # U=log(e,Y),non_zero(V1)) :- 
	tidy(1/V1,V),
	tidy(V-(V^2-1)^(1/2),Y),
	tidy(V+(V^2-1)^(1/2),X),
	!.

/* coth */
isolax( 1, coth(U)=V, false, true) :- 
	((eval(V>0),eval(V<1));(eval(V<0),eval(V> -1))),
	tidy(V,V1),
trace_press('\n%t=%t has no real roots, coth can not lie in (-1,1)\n',[coth(U),V1],1),
	!.

isolax( 1,coth(U)=V1,U=log(e,X)*(1/2),non_zero(V1)) :-
	tidy(1/V,V1),
	tidy((1+V)*(1-V)^ -1,X),
	!.

/* inverse sinh */
isolax( 1,arcsinh(U)=V,U=sinh(V),true).

/* inverse cosh  */
isolax( 1, arccosh(U)=V,false,true) :- eval(U<1),
	tidy(U,U1),
trace_press('\n%t=%t has no real roots, cosh must be >= 1\n',[arccosh(U1),V],1),
	!.


isolax( 1,arccosh(U)=V,U=cosh(V),true).

/* inverse tanh */
isolax( 1,arctanh(U)=V,false,true) :- (eval(U>=1);eval(U=< -1)),
	tidy(U,U1),
trace_press('\n%t=%t has no real roots, tanh must lie in (-1,1)\n',[arctanh(U1),V],1),
	!.

isolax( 1,arctanh(U)=V,U=tanh(V),true).

/* inverse sech */
isolax( 1, arcsech(U)=V,false,true) :- eval(U>0),eval(U=<1),
	tidy(U,U1),
trace_press('\n%t=%t has no real roots, sech must lie in [0,1]\n',[arcsech(U1),V],1),
	!.

isolax( 1, arcsech(U)=V,U=sech(V), true).

/* inverse cosech */
isolax( 1, arccosech(U)=V,U=cosech(V), true).

/* inverse  coth */
isolax( 1, arccoth(U)=V, false, true) :- 
	((eval(U>0),eval(U<1));(eval(U<0),eval(U> -1))),
	tidy(U,U1),
trace_press('\n%t=%t has no real roots, coth can not lie in (-1,1)\n',[arccoth(U1),V],1),
	!.

isolax( 1, arccoth(U)=V,U=coth(V), true).

/*======================================================================== pressdir/axioms/collec_ax.pl */

/*		COLLEC.AX	  19.2.81  */
/* AXIOMS FOR COLLECTION*/
/* FIRST ARGUMENT IS THE VARIABLES COLLECTED*/
/* ALL COLLECTION AXIOMS APPLY TO TERMS DOMINATED BY + OR */

% :- public		collax/3.

collax( W , U*W+V*W , (U+V)*W ) .

collax( W , W+V*W , (V+1)*W ) .

collax( W , W+W , 2*W ) .

collax( U&V , (U+V)*(U+ (-1*V)) , U^2+ -1*(V^2) ) .

collax( W , W^U*W^V , W^(U+V) ) .

collax( W , W*W^V , W^(V+1) ) .

collax( W , W*W , W^2 ) .

collax( U , sin(U)*cos(U) , sin(2*U)* (1/2) ) .

collax( U , cos(U)^2+ -1*(sin(U)^2) , cos(2*U) ) .

collax( U , sin(U)*cos(V)+cos(U)*sin(V) , sin(U+V) ) .

collax( U&V , sin(U)*cos(V)+ -1*(cos(U)*sin(V)) , sin(U+ (-1*V)) ) .

collax( U , cos(U)*cos(V)+ -1*(sin(U)*sin(V)) , cos(U+V) ) .

collax( U , cos(U)*cos(V)+sin(U)*sin(V) , cos(U+ (-1*V)) ) .

collax( U , cos(U)^2 + sin(U)^2 , 1 ).

collax( U , log(U,X) + log(U,Y) , log(U,X*Y) ) .

collax( U , A*log(U,X) + B*log(U,Y),log(U,X^A*Y^B) ).

collax( U, A*log(U,X) + log(U,Y),log(U,X^A*Y) ).

/*======================================================================== pressdir/axioms/attrac_ax.pl */

/*		ATTRAC.AX	  19.2.81   */
/* New axioms added 17.9.81 */
/* AXIOMS FOR ATTRACTION*/
/* FIRST ARGUMENT IS THE SET OF THE VARIABLES ATTRACTED*/

% :- public		attrax/3.

attrax( U & V , U*W+V*W , (U+V)*W ) .

attrax( U & V , W^U*W^V , W^(U+V) ) .

attrax( U & V , log(W,U)+log(W,V) , log(W,U*V) ) .

attrax( U & V , A*log(W,U)+B*log(W,V),log(W,U^A*V^B) ) .

attrax( U & V , A*log(W,U)+log(W,V),log(W,U^A*V) ) .

attrax( U & V , U*log(W,V) , log(W,V^U) ) .

attrax( U & V , log(W,V)*log(U,W) , log(U,V) ) .

attrax( U & V , U=V , U+(-1*V)=0 ) .

attrax( U & V , U>V , U+(-1*V)>0 ) .

attrax( U & V , U>=V , U+(-1*V)>=0 ) .

attrax( V & W , (U^V)^W , U^(V*W) ) .

attrax( U & V , U^(V*W) , (U^V)^W ) .

/*======================================================================== pressdir/axioms/homog_rew.pl */

/*	HOMOG.REW	*/
/* Written by Bernard Silver  Jan 1981  */
% Updated: 26 February 83

% :- public
% 		rew/5,
% 		rew1/5.

/* Try to rewrite each of the terms in the offending set as a 
    function of the reduced term */
rew(X,L,Subs,Unk,Type) :-  newtype(Type,New),
	maplist(rew1(New,X,Unk),L,L1),
	make_subl(L,L1,Subs),
	!.

			%  Kludge for stopping recursive calls of rew-rule
			%  in mixed case, and for getting the log case right
newtype(mixed,_) :- !.
newtype(log(X),log) :- X \== 10.
newtype(C,C) :- !.

rew1(_,X,_,X,X) :- !.
rew1(Type,A^B,Unk,Old,New) :- !,rew_rule(Type,A^B,Old,New,Unk).
rew1(Type,X,Unk,A^B,C^D) :- rew1(Type,X,Unk,A,C),rew1(Type,X,Unk,B,D),!.
rew1(Type,X,Unk,Old,New) :- rew_rule(Type,X,Old,New,Unk),!.

/* rew_rule(Type,Term1,Term2,Exp,Unk) gives Exp as a rewrite of Term2 in terms */
/* of Term1,where Unk is the  unknown, and the rule is for type Type */

/* Special cases   */
rew_rule(_,X,Y,X,_) :- match(X,Y),!.

rew_rule(_,_,Y,Y,Unk) :- freeof(Unk,Y),!.

/* Generalized Polynomial Rewrite rules  */
rew_rule(genpol,X^M,X,(X^M)^K,X) :- ok_number(M),!,eval(1/M,K).

rew_rule(genpol,X^N,X^M,(X^N)^K,X) :- ok_number(N),ok_number(M),!,eval(M/N,K).

/* Hyperbolic Rewrite rules  */
rew_rule(T,e^X,sinh(Z),((e^X)^K-(e^X)^(-K))/2,_) :- (T = hyper;T = hyper_exp),
	break(X,Z,P,Q),
	eval(Q/P,K),
	!.

rew_rule(T,e^X,cosh(Z),((e^X)^K+(e^X)^(-K))/2,_) :- (T = hyper;T = hyper_exp),
	break(X,Z,P,Q),
	eval(Q/P,K),
	!.

rew_rule(T,e^X,tanh(Z),((e^X)^K-(e^X)^(-K))*((e^X)^K+(e^X)^(-K))^ -1,_) :- 
	(T = hyper;T = hyper_exp),
	break(X,Z,P,Q),
	eval(Q/P,K),
	!.

rew_rule(T,e^X,sech(Z),((e^X)^K+(e^X)^(-K))^ -1*2,_) :- 
	(T = hyper;T = hyper_exp),
	break(X,Z,P,Q),
	eval(Q/P,K),!.

rew_rule(T,e^X,cosech(Z),((e^X)^K-(e^X)^(-K))^ -1*2,_) :- 
	(T = hyper;T = hyper_exp),
	break(X,Z,P,Q),
	eval(Q/P,K),!.

rew_rule(T,e^X,coth(Z),((e^X)^K+(e^X)^(-K))*((e^X)^K-(e^X)^(-K))^ -1,_) :- 
	(T = hyper;T = hyper_exp),
	break(X,Z,P,Q),
	eval(Q/P,K),
	!.

rew_rule(T,sinh(X),cosh(X),(1 + sinh(X)^2)^(1/2),_) :- 
	(T = hyper;T = hyper_exp),!.

rew_rule(T,cosh(X),sinh(X),(cosh(X)^2 - 1)^(1/2),_) :- 
	(T = hyper;T = hyper_exp),!.

rew_rule(T,sech(X),tanh(X),(1 - sech(X)^2)^(1/2),_) :- 
	(T = hyper;T = hyper_exp),!.

rew_rule(T,tanh(X),sech(X),(1 - tanh(X)^2)^(1/2),_) :- 
	(T = hyper;T = hyper_exp),!.

rew_rule(T,coth(X),cosech(X),(coth(X)^2 - 1)^(1/2),_) :- 
	(T = hyper;T = hyper_exp),!.

rew_rule(T,cosech(X),coth(X),(1 + cosech(X)^2)^(1/2),_) :- 
	(T = hyper;T = hyper_exp),!.

	
/* Exponential Rewrite rules  */
rew_rule(T,A^B,A^C,A^B,_) :- (T = exp;T = hyper_exp),match(B,C),!.

rew_rule(T,A^B,V^Z,X*Y,Unk) :- 	(T == exp;T == hyper_exp),
	match(Z,C*D+E),
	!,
	rew_rule(T,A^B,V^(C*D),X,Unk),
	rew_rule(T,A^B,V^E,Y,Unk).

rew_rule(T,A^B,A^Z,A^C*A^B,X) :- (T = exp;T = hyper_exp),
	match(Z,B+C),
	freeof(X,C),!.

rew_rule(T,A^B,A^Z,(A^B)^C,X) :- (T = exp;T = hyper_exp),
	match(Z,B*C),
	freeof(X,C),!.

rew_rule(Type,A^B,C^D,C^E*Z,X) :- Type == exp,
	ok_number(A),
	ok_number(C),
	match(D,B+E),
	freeof(X,E),				
	rew_rule(exp,A^B,C^B,Z,X),
	!.

rew_rule(exp,A^B,C^B,(A^B)^N,_) :- powered(A,N,C),!.

rew_rule(T,A^B,A^C,(A^B)^D,_) :- 
	(T = exp;T = hyper_exp),
	match(B,E*F),
	ok_number(E),
	match(C,G*F),
	ok_number(G),
	eval(G/E,D),
	!.


rew_rule(T,A^B,C^D,Term^N,X) :- 
	T == exp,
	powered(A,N,C),
	eval(N\=1),
	!,
	rew_rule(T,A^B,A^D,Term,X).

/* Trignometric Rewrite rules */
rew_rule(T,sin(X),sin(Z),V*cos(C) + V1*sin(C),U) :- T == trig,
	match(Z,B + C),
	contains(U,B),
	freeof(U,C),
	rew_rule(trig,sin(X),sin(B),V,U),
	rew_rule(trig,sin(X),cos(B),V1,U),
	!.

rew_rule(T,sin(X),cos(Z),V*cos(C) - V1*sin(C),U) :- T == trig,
	match(Z,B + C),
	contains(U,B),
	freeof(U,C),
	rew_rule(trig,sin(X),sin(B),V1,U),
	rew_rule(trig,sin(X),cos(B),V,U),
	!.

rew_rule(T,cos(X),sin(Z),V*cos(C) + V1*sin(C),U) :- T == trig,
	match(Z,B + C),
	contains(U,B),
	freeof(U,C),
	rew_rule(trig,cos(X),sin(B),V,U),
	rew_rule(trig,cos(X),cos(B),V1,U),
	!.

rew_rule(T,cos(X),cos(Z),V*cos(C) - V1*sin(C),U) :- T == trig,
	match(Z,B + C),
	contains(U,B),
	freeof(U,C),
	rew_rule(trig,cos(X),cos(B),V,U),
	rew_rule(trig,cos(X),sin(B),V1,U),
	!.


rew_rule(trig,sin(X),cos(Z),V,_) :- break(X,Z,P,Q),
	absol(Q,Q1),
	expcs(P,Q1,X,V),
	!.

rew_rule(trig,sin(X),sin(Z),I*(V),_) :- break(X,Z,P,Q),
	absol(Q,Q1),
	eval(sign(Q),I),
	expss(P,Q1,X,V),
	!.

rew_rule(trig,cos(X),sin(Z),I*(V),_) :- break(X,Z,P,Q),
	absol(Q,Q1),
	eval(sign(Q),I),
	expsc(P,Q1,X,V),
	!.

rew_rule(trig,cos(X),cos(Z),V,_) :- break(X,Z,P,Q),
	absol(Q,Q1),
	expcc(P,Q1,X,V),
	!.

rew_rule(trig,tan(X),sec(X),(1+tan(X)^2)^(1/2),_) :- !.

rew_rule(trig,sec(X),tan(X),(sec(X)^2-1)^(1/2),_) :- !.

rew_rule(trig,cot(X),cosec(X),(1+cot(X)^2)^(1/2),_) :- !.

rew_rule(trig,cosec(X),cot(X),(cosec(X)^2-1)^(1/2),_) :- !.

rew_rule(T,tan(X),tan(Z),(V + tan(C))/(1 - tan(C)*V),U) :- T == trig,
	match(Z,B + C),
	contains(U,B),
	freeof(U,C),
	rew_rule(trig,tan(X),tan(B),V,U),
	!.

rew_rule(trig,tan(X),tan(Z),I*(V),_) :- break(X,Z,P,Q),
	absol(Q,Q1),
	eval(sign(Q),I),
	exptt(P,Q1,X,V),
	!.

rew_rule(trig,tan(X),cosec(X),(1+tan(X)^2)^(1/2)/tan(X),_) :- !.

rew_rule(trig,tan(X),sin(X),tan(X)/(1+tan(X)^2)^(1/2),_) :- !.

rew_rule(trig,tan(X),cos(X),1/(1+tan(X)^2)^(1/2),_) :- !.

/* Tan half-angle Rewrite rules */
rew_rule(trig,tan(X),sin(Z),2*tan(X)*(1+tan(X)^2)^(-1),_) :-break(X,Z,P,Q),
	eval(Q/P=:=2),!.

rew_rule(trig,tan(X),cos(Z),(1-tan(X)^2)*(1+tan(X)^2)^(-1),_) :-break(X,Z,P,Q),
	eval(Q/P=:=2),!.

/* Reciprocal function Rewrite rules  */
rew_rule(T,X,tan(Z),A*B^ -1,Unk) :- T == trig,
	rew_rule(trig,X,sin(Z),A,Unk),
	rew_rule(trig,X,cos(Z),B,Unk),
	!.

rew_rule(T,A,sec(Z),(B)^ -1,Unk) :- T == trig,
	rew_rule(trig,A,cos(Z),B,Unk),
	!.

rew_rule(T,A,cosec(Z),(B)^ -1,Unk) :-  T == trig,
	rew_rule(trig,A,sin(Z),B,Unk),
	!.

rew_rule(T,A,cot(Z),(B)^ -1,Unk) :- T == trig,
	rew_rule(trig,A,tan(Z),B,Unk),
	!.


/* Logarithmic Rewrite rules  */
rew_rule(log,log(X,Y),log(Y,X),log(X,Y)^ -1,_) :- !.
 
rew_rule(log,log(X,Y),log(Z,Y),N1*log(X,Y),_) :- 
	powered(X,N,Z),
	!,
	eval(1/N,N1).

rew_rule(log,log(X,Y),log(Y,Z),N*log(X,Y)^ -1,_) :- powered(X,N,Z),!.

rew_rule(log,log(X,Y),log(X,Z),N1*log(X,Y),_) :- 
	powered(Y,N,Z),
	!,
	eval(1/N,N1).

rew_rule(log,log(X,Y),log(Z,X),N*log(X,Y)^ -1,_) :- powered(Y,N,Z),!.

			%  Reduced term is log base 10
rew_rule(log(10),log(10,X),log(X,10),log(10,X)^ -1,_) :- !.

rew_rule(log(10),log(10,X),log(A,X),Term,_Unk) :-
	ok_number(A),
	tidy(log(10,X)/log(10,A),Term),
	!.

rew_rule(log(10),log(10,X),log(X,A),Term,_Unk) :-
	ok_number(A),
	tidy(log(10,A)*(log(10,X)^ -1),Term),
	!.

/* Failure  */
rew_rule(_,X,Y,_,_) :- !,
	trace_press('\nFailed to find a rewrite for %t\n in terms of %t\n',[Y,X],2),
	fail.

/*======================================================================== pressdir/axioms/facts.pl */

/*
	Miscellaneous facts for PRESS

						Bernard Silver
						Updated: 9 September 82
*/

/* EXPORTS  */

% :-	public special_atom/1,
% 	commutative/1,
% 	associative/1.

/* MODES   (Defined as used now, may need changing later) */

% :- 	mode special_atom(+),
% 	commutative(+),
% 	associative(+).

 % Special atoms are positive, and therefore non_neg and non_zero
special_atom(e) :- !.

special_atom(pi) :- !.

 % Properties of functions
commutative(+) :- !.
commutative(*) :- !.

associative(+) :- !.
associative(*) :- !.

disjunction(_A#_B).

zero(Rhs) :- tidy(Rhs,0).

mulbag(_A*_B).

plusbag(_A+_B).

/*======================================================================== pressdir/axioms/init.pl */

/* INIT. :  Add dummy definitions from MECHO database

Used to allow better use of unknown(_,trace_press).

						Bernard Silver
						Updated: 16 August 82
*/

measure(_,_) :- fail.

quantity(_) :- fail.

incline(_,_,_):- fail.	

slope(_,_) :- fail.		

concavity(_,_) :- fail.

angle(_,_,_) :- fail.	

partition(_,_) :- fail.

intermediate(_) :- fail.	

/*======================================================================== pressdir/package/prover.pl */

/*		PROVER 		Updated: 14 January 83
*/
/********************************
 THEOREM PROVERS
********************************/

/*FIND MAXIMUM OF SET*/

maximum(IneqC,AnsC) :-
	andtodot(IneqC,IneqL),
	maximum1(IneqL,AnsL),
	dottoand(AnsL,AnsC),
	!.

maximum1([],[]) :- !.

maximum1([Ineq],[Ineq]) :- !.

maximum1([Ineq|Rest],Ans) :-
	some(smaller(Ineq),Rest), !,
	maximum1(Rest,Ans).

maximum1([Ineq|Rest],[Ineq]) :-
	checklist(bigger(Ineq),Rest), !.

maximum1([Ineq|Rest],[Ineq|Ans]) :-
	maximum1(Rest,Ans), !.

/*FIND MINIMUM OF SET*/

minimum(IneqC,AnsC) :-
	andtodot(IneqC,IneqL),
	minimum1(IneqL,AnsL),
	dottoand(AnsL,AnsC),
	!.

minimum1([],[]) :- !.

minimum1([Ineq],[Ineq]) :- !.

minimum1([Ineq|Rest],Ans) :-
	some(bigger(Ineq),Rest), !,
	minimum1(Rest,Ans).

minimum1([Ineq|Rest],[Ineq]) :-
	checklist(smaller(Ineq),Rest), !.

minimum1([Ineq|Rest],[Ineq|Ans]) :-
	minimum1(Rest,Ans), !.


/*INEQ1 DOMINATES INEQ2*/    
smaller(Ineq2,Ineq1) :- bigger(Ineq1,Ineq2), !.

			%  Greater thans

bigger(X>=Y,X>=Z) :- prove(Y>=Z), !.
bigger(X>Y,X>Z) :- prove(Y>=Z), !.
bigger(X>Y,X>=Z) :- prove(Y>=Z), !.
bigger(X>=Y,X>Z) :- prove(Y>Z), !.

			%  Less thans

bigger(X=<Y,X=<Z) :- prove(Y>=Z), !.
bigger(X<Y,X<Z) :- prove(Y>=Z), !.
bigger(X<Y,X=<Z) :- prove(Y>=Z), !.
bigger(X=<Y,X<Z) :- prove(Y>Z), !.

/* Prove simple inequalities etc*/

prove(X>=Y) :- simplify(X+(-1*Y) , E), non_neg(E), !.

prove(X>Y) :- simplify(X+(-1*Y), E), positive(E), !.

prove(X=\=Y) :- simplify(X+(-1*Y), E), non_zero(E), !.

prove(X=Y) :- simplify(X+(-1*Y), 0), !.

/* Simplify formulae into true or false if possible*/

verify(F,true) :- prove(F), !.

verify(F,false) :- negation(F,NF), prove(NF), !.

verify(F,F) :- !.

/* Negation of formula */
negation(F,NF) :- negation1(F,NF), !.
negation(F,NF) :- negation1(NF,F), !.

negation1(A=B,A=\=B).
negation1(A>=B,B>A).

/*======================================================================== pressdir/package/manip.pl */

/* MANIP : Manipulation of algebraic expressions

						Leon
						Updated: 10 August 82
*/

exp_distrib(S^K,Expr) :-
	mulbag(S),
	decomp(S,[*|List]),
	exp_distrib_list(K,List,Bag),
	recomp(Expr,[*|Bag]).

exp_distrib_list(_,[],[]) :- !.

exp_distrib_list(K,[S|Rest],[S^K|NewRest]) :-
	exp_distrib_list(K,Rest,NewRest).

mul_distrib(S*K,Expr) :-
	plusbag(S),
	decomp(S,[+|List]),
	mul_distrib_list(K,List,Bag),
	recomp(Expr,[+|Bag]).

mul_distrib_list(_,[],[]) :- !.

mul_distrib_list(K,[S|Rest],[S*K|NewRest]) :-
	mul_distrib_list(K,Rest,NewRest).

/*======================================================================== pressdir/misc/homog_msc.pl */

/* HOMOG.MSC : 

						Bernard Silver
						Updated: 2 September 82

*/

:- dynamic report/0.

% :- public
% 		absol/2,
% 		break/4,
% 		expcase1/5,
% 		expcase2/4,
% 		form/3,
% 		form1/3,
% 		form2/3,
% 		form4/3,
% 		genpolcase/3,
% 		great_el/2,
% 		half_angle_check1/2,
% 		half_angle_check2/2,
% 		laura/4,
% 		laura1/3,
% 		least_el/2,
% 		lessone/1,
% 		logocc/4,
% 		make_subl/3,
% 		moreone/1,
% 		neg22/1,
% 		nocc/3,
% 		onetest/2,
% 		parse2/3,
% 		powered/3,
% 		reduced_term/3,
% 		report_subs/2,
% 		signed/2,
% 		subs1/3.


 % Various functions for recognizing certain forms 

			%  The exponential case with all offending terms
			%  of the form a^f(x), a the same in all terms.
expcase1(A,B,X,A^Z,C) :- atom_num(A),match(Z,C*B+D),ok_number(C),freeof(X,D),!.
expcase1(A,B,X,A^Z,1) :- atom_num(A),match(Z,B+C),freeof(X,C),!.
expcase1(A,B,_X,A^Z,C) :- atom_num(A),match(Z,C*B),ok_number(C),!.
expcase1(A,B,_X,A^B,1).


			%  The other exponential case
expcase2(B,A^Y,set(A,Z)) :- ok_number(A),match(Y,Z*B+C),ok_number(Z),freeof(B,C),!.
expcase2(B,A^Y,set(A,1)) :- ok_number(A),match(Y,B+C),freeof(B,C),!.
expcase2(B,A^Y,set(A,Z)) :- ok_number(A),match(Y,Z*B),ok_number(Z),!.
expcase2(B,A^B,set(A,1)).

			%  Check is the tan(half-angle) method can be used
half_angle_check1(M,M) :- !.
half_angle_check1(M,N) :- eval(2*M,N),!.

half_angle_check2(M,M) :- !.

genpolcase(X,X,1) :- !.
genpolcase(X,X^N,N) :- !.

			%  Standard log case
laura(B,X,log(A,B),A) :- freeof(X,A),!.
laura(A,X,log(A,B),B) :- freeof(X,B),!.

			%  Convert to log base 10 case
laura1(Unk,Term,log(A,Term)) :-
	ok_number(A),
	contains(Unk,Term),
	!.
	
laura1(Unk,Term,log(Term,A)) :-
	ok_number(A),
	contains(Unk,Term),
	!.

 % From the exponential case (expcase2), find the gcd of bases and exponents to
 % form the reduced term

coeff_exp(L,M,N) :- 
	get_members(L,L1,L2),
	rational_gcd_list(L1,M),			
	rational_gcd_list(L2,N),
	!.
 % Maplist for above
get_members([],[],[]) :- !.
get_members([set(A,B)|T],[A|X],[B|Y]) :- !,get_members(T,X,Y).

 % When the terms are being raised to powers the reduced term should
 % be the smallest if all terms are less than one, the largest
 % if they are all greater than one, otherwise unless they are
 % all the same (listtoset is a singleton) fail

onetest(K,A) :- checklist(moreone,K),least_el(K,A),!.
onetest(K,A) :- checklist(lessone,K),great_el(K,A),!.
onetest(K,A) :- listtoset(K,[A]),!.

 % Choosing the reduced term in the log case, we choose it to have
 % the term containing the unknown as its second argument, whether or
 % not this log term occurred in the original equation
logocc(A,B,log(A,B),L) :- member(log(A,B),L),!.
logocc(A,B,log(B,A),L) :- member(log(B,A),L),!.

 % These form functions put terms together prettily,so 1*A is A for example

form(Unk,K,Z) :-rational_gcd_list(K,Gcd),absol(Gcd,Gcd1),!,form1(Unk,Gcd1,Z).

form1(Unk,A,Res) :- tidy(A*Unk,Res),!.

form2(M,Rest,Res) :- !,tidy(Rest*M/2,Res).

form4(_,0,1) :- !.
form4(A,1,A) :- !.
form4(A,N,A^N) :- !.

 % This recognizes numeric expressions eg 3^(1/2),on which number fails 
numeric(X) :- wordsin(X,L),!,L=[].

atom_num(X) :- atomic(X),!.
atom_num(X) :- numeric(X),!.

 % Parser for trig method  
parse2(Exp,X,L) :- dl_parse2(Exp,X,L1-[]),!,listtoset(L1,L).

dl_parse2(A&B,X,L-L1) :- !,dl_parse2(A,X,L-L2),dl_parse2(B,X,L2-L1).
dl_parse2(A=B,X,L-L1) :- !,dl_parse2(A,X,L-L2),dl_parse2(B,X,L2-L1).
dl_parse2(A*B,X,L-L1) :- !,dl_parse2(A,X,L-L2),dl_parse2(B,X,L2-L1).
dl_parse2(A+B,X,L-L1) :- !,dl_parse2(A,X,L-L2),dl_parse2(B,X,L2-L1).
dl_parse2(A^N,_,[A^N|L]-L) :- integer(N),(trigf(A);hyperf(A)),!.
dl_parse2(A^N,X,L) :- ok_number(N),dl_parse2(A,X,L),!.
dl_parse2(A,X,L-L) :- freeof(X,A),!.
dl_parse2(A,_X,[A|L]-L) :- !.

 % Find the "smallest" term in the  offenders set 

reduced_term([Unk],Unk,_) :- !,fail.		%Unk can't be the reduced term
reduced_term([A],_Unk,A) :- !.
reduced_term(L,Unk,A) :- 
	extreme_term(L, <, A),  %  return the smallest
	!,
	A \= Unk.

 % Make a list of the rewrites found,and substitute them into 
 % the expression 
subs1(Exp,[],Exp) :- !.
subs1(Exp,[H|T],E1) :- subst(H,Exp,E2),!,subs1(E2,T,E1).

make_subl([],[],[]) :- !.
make_subl([X|R],[X|R1],R2) :- !,make_subl(R,R1,R2).
make_subl([Hd|R],[H1|R1],[Hd=H1|R2]) :- !,make_subl(R,R1,R2). 

 % List the rewrites used, if desired  

report_subs(X,List) :- 
	report,
	!,
	sublist(contains(X),List,New),
	trace_press('\nRewrites used are:\n',1),
	report_subs1(New).

report_subs(_,_) :- !.

report_subs1([]) :- !.
report_subs1([L=R|T]) :- trace_press('\n %t -> %t\n',[L,R],1),!,report_subs1(T).

 % Turn on the reporting 
report_on :- report,trace_press('\nReporting is already on! Nothing done\n',1),!.
report_on :- asserta((report :- !)),trace_press('\nReporting turned on\n',1),!.

 % Turn off reporting 
report_off :- report,retract((report :- !)),trace_press('\nReporting turned off\n',1),!.
report_off :- trace_press('\nReporting is not on! Nothing done\n',1),!.

report :- fail.

 % Find the smallest and largest elements of a list of numbers 
least_el([Hd],Hd) :- !.
least_el([Hd|Tl],Ans) :- least_el(Tl,Lwr),(eval(Hd < Lwr) -> Hd=Ans;Lwr=Ans),!.

great_el([Hd],Hd) :- !.
great_el([Hd|Tl],Ans) :- great_el(Tl,Hgr),(eval(Hd>Hgr) -> Hd=Ans;Hgr=Ans),!.

 % powered(A,B,C) if A^B=C,A not equal 1   
powered(1,_,_) :- !,fail.
powered(A,1,A) :- !.
powered(A,N,A^N) :- ok_number(N),!.
powered(A,B,C) :- ok_number(A),ok_number(C),eval(log(A,C),X),!,ok_number(X),B=X.

nocc(Eqn,A,N) :- occ(A,Eqn,N),!.

lessone(A) :- ok_number(A),eval(A < 1),!.

moreone(A) :- ok_number(A),eval(A > 1),!.

 % Absolute value 
absol(X,X1) :- eval(sign(X)*X,X1),!.

 % Given terms A and B break(A,B,I,J) finds I and J 
 % so that A=I*Y,and B=J*Y,if this is possible   
break(A,B,1,1) :- match(A,B),!.
break(A,B,1,C) :- ok_number(A),ok_number(B),eval(B/A,C),!.
break(A,B,1,J1) :- match(A,I*Y),ok_number(I),match(B,Y*J),ok_number(J),eval(J/I,J1),!.
break(A,B,1,J) :- match(B,J*A),ok_number(J),!.
break(A,B,J,1) :- match(A,J*B),ok_number(J),!.

 % If all numbers on a list are negative then signed(list,-1),   
 % else signed(list,1)   
signed(L,-1) :- checklist(neg22,L),!.
signed(_,1) :- !.

 % Stupid name, but needed function for above checklist!
neg22(Num) :- eval(sign(Num)=:= (-1)),!.

/*  Old Code - now replaced by code in odds
 % Factorial function  
fact(X,Y) :- fact(X,1,Y).
fact(0,Acc,Acc) :- !.
fact(N,Acc,Ans) :- eval(N>0),eval(N-1,N1),eval(N*Acc,M),!,fact(N1,M,Ans).

 % Find the least common multiple of a set of integers  
lcm([A],A) :- !.
lcm([A,B|T],X) :- gcd(A,B,Z),eval((A*B)/Z,Y),lcm([Y|T],X),!.


 % Find the greatest common divisor of a list of integers 
gcd1([A],A) :- !.
gcd1([H|T],X) :- gcd1(T,Y),gcd(H,Y,X),!.

 % Find the greatest common divisor of a list of rationals  
rational_gcd_list(L,X) :- listtoset(L,L1),gcd3(L1,X),!.

gcd3([A],A) :- !.
gcd3([H|T],Y) :- 
	gcd3(T,X),
	eval(numer(H),H2),
	eval(denom(H),H1),
	gcd_calc(H2,H1,X,Y),
	!.

 % Do the calculations for rational gcd (gcd of a/b and c/d is found
 % by expressing both terms as functions of the lcm of the denominators
 % and taking the hcf of the resulting numerators.  Apply recursivly

gcd_calc(A,B,C,C) :- eval(A/B,C),!.
gcd_calc(A,B,X2,X3) :-
	eval(numer(X2),C),
	eval(denom(X2),D),
	lcm([B,D],Z), 
	eval((Z/B)*A,Z1),
	eval((Z/D)*C,Z2),
	gcd(Z1,Z2,Y),
	eval(Y/Z,X3),
	!.
*/

/*======================================================================== pressdir/probs/demo.pl */

/* DEMO. : 

						Bernard Silver
						Updated: 30 June 82
*/     
	%  Problems for demonstration of Press

text(1) :- writef('\nThis problem comes from the London 1978 A level exam.\nWe are asked to find the value(s) of for which log(2,x) + 4.log(x,2) = 5.\n\n').

text(2) :-
	writef('\nThis problem is from the A.E.B. A level exam of 1971.\nWe are required to find the value(s) of x such that cos(x) + 2.cos(2.x) + cos(3.x) = 0.\n\n').

text(3) :-
	writef('\nThis problem is from the A.E.B. 1971 A level paper.\nThe question asks for the value(s) of x which satisfy 4^x - 2^(x+1) - 3 = 0.\n\n').

text(4) :-
	writef('\nThis question demonstrates the basic methods of PRESS.\nThe problem is to find the value(s) of x that satisfy log(e,x+1) + log(e,x-1) = 3.\n\n').

basic :- example4.

example1 :- text(1),demo1,ttynl.

example2 :- text(2),demo2,ttynl.

example3 :- text(3),demo3,ttynl.

example4 :- text(4),demo4,ttynl.

	% The questions	

demo1 :- solve(log(2,x) + 4*log(x,2) = 5).  		%lon(15)

demo2 :- solve(cos(x) + 2*cos(2*x) + cos(3*x) = 0).	%aeb(7)

demo3:- solve(4^x - 2^(x+1) - 3 = 0).			%aeb(6)

demo4 :- solve(log(e,x+1) + log(e,x-1) = 3). %logeqn

/*======================================================================== swiload.pl, after its consult list */

% (SCRIP demo edit 2: swiload.pl's tlim(5) is tlim(1) -- level 2 prints an unbound variable by its host name)
:- tlim(1).

% SCRIP demo driver (edit 3): the equations on standard input, each solved by solve/1, then halt

:- initialization(main).

main :-
	read(Equation),
	(   Equation == end_of_file
	->  halt
	;   solve(Equation),
	    main
	).
