% pre.pl -- loaded BEFORE each figure file of the ProBratko suite (ours): the collection's readme says "to run a program, it is easiest to first load the file
% frequent.pl", the book's library of frequently used predicates (conc, del, member, the prefix operator not), so every figure is read and run after it.
:- consult('frequent.pl').
