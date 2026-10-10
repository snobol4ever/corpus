:- system:set_prolog_flag(double_quotes,codes) .

:- [library(lists)] .

%!  starts_with(FIRSTz,SECONDz)
%
% True if `SECONDz` is the beginning of `FIRSTz` .

starts_with(FIRSTz,SECONDz)
:-
lists:append(SECONDz,_,FIRSTz)
.

%!  contains(FIRSTz,SECONDz)
%
% True once if `SECONDz` is contained within `FIRSTz` at one or more positions .

contains(FIRSTz,SECONDz)
:-
contains(FIRSTz,SECONDz,_) ,
!
.

%!  contains(FIRSTz,SECONDz,NTH1)
%
% True if `SECONDz` is contained within `FIRSTz` at position `NTH1` .

contains(FIRSTz,SECONDz,NTH1)
:-
lists:append([PREFIXz,SECONDz,_SUFFIXz_],FIRSTz) ,
prolog:length(PREFIXz,NTH0) ,
NTH1 is NTH0 + 1
.

%!  ends_with(FIRSTz,SECONDz)
%
% True if `SECONDz` is the ending of `FIRSTz` .

ends_with(FIRSTz,SECONDz)
:-
lists:append(_,SECONDz,FIRSTz)
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines starts_with/2, contains/2,3 and ends_with/2 and never calls them; the driver asks all three of four string pairs, with every match position of contains/3.
:- initialization(forall(member(F-S, ["abcd"-"ab", "abcd"-"bc", "abcd"-"cd", "abab"-"ab"]), ((starts_with(F, S) -> A = yes ; A = no), (contains(F, S) -> B = yes ; B = no), findall(N, contains(F, S, N), Ns), (ends_with(F, S) -> C = yes ; C = no), format("~s / ~s: starts with ~w, contains ~w at ~w, ends with ~w~n", [F, S, A, B, Ns, C])))).
