:- use_module(library(pure_input)).
:- use_module(library(dcg/basics), [string_without/4]).
:- use_module(library(dcg/high_order), [sequence/4]).
lines(Lines) --> sequence(line, Lines).
line(Line) --> string_without("\n", Line), "\n".
:- phrase_from_file(lines(Lines), '/dev/stdin'), reverse(Lines, R), phrase(lines(R), Codes), format("~s", [Codes]).
