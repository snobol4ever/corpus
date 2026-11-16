%------------------------------------------------------------- 1 closure/closure
% closure.pl -- the module closure of Wouter Beek's prolog_library_collection (MIT), as it stands, its plunit units inside it (plc_cut.py, the grader 2026-11-16)
:- module(
  closure,
  [
    leave_closure/3,  % :Goal_2, ?X, ?Y
    leave_closure0/3, % :Goal_2, ?X, ?Y
    path_closure/3,   % :Goal_2, ?X, ?Y
    path_closure/4,   % :Goal_2, ?X, ?Y, ?Path
    path_closure0/3,  % :Goal_2, ?X, ?Y
    path_closure0/4,  % :Goal_2, ?X, ?Y, ?Path
    path_distance/4   % :Goal_2, ?X, ?Y. ?Distance
  ]
).

/** <module> Closures

Generic closure predicates that operate over graph data structures.

*/

:- use_module(library(error)).
:- use_module(library(lists)).
:- use_module(library(plunit)).

:- meta_predicate
    leave_closure(2, ?, ?),
    leave_closure0(2, ?, ?),
    path_closure(2, ?, ?),
    path_closure(2, ?, ?, -),
    path_closure0(2, ?, ?),
    path_closure0(2, ?, ?, -),
    path_closure_1(2, +, -, +, -),
    path_closure_2(2, -, +, +, -),
    path_distance(2, -, +, -),
    path_distance1(2, +, -, +, +, -),
    path_distance2(2, -, +, +, +, -).





%! leave_closure(:Goal_2, +X, +Y) is semidet.
%! leave_closure(:Goal_2, +X, -Y) is nondet.
%! leave_closure(:Goal_2, -X, +Y) is nondet.

leave_closure(Goal_2, X, Z) :-
  ground(X), !,
  call(Goal_2, X, Y),
  leave_closure_1(Goal_2, Y, Z, [X,Y]).
leave_closure(Goal_2, X, Z) :-
  ground(Z), !,
  call(Goal_2, Y, Z),
  leave_closure_2(Goal_2, X, Y, [Y,Z]).
leave_closure(_, X, Y) :-
  instantiation_error(args(X,Y)).



%! leave_closure0(:Goal_2, +X, +Y) is semidet.
%! leave_closure0(:Goal_2, +X, -Y) is nondet.
%! leave_closure0(:Goal_2, -X, +Y) is nondet.

leave_closure0(Goal_2, X, Y) :-
  ground(X), !,
  leave_closure_1(Goal_2, X, Y, [X]).
leave_closure0(Goal_2, X, Y) :-
  ground(Y), !,
  leave_closure_2(Goal_2, X, Y, [Y]).
leave_closure0(_, X, Y) :-
  instantiation_error(args(X,Y)).

leave_closure_1(Goal_2, X, Z, Hist) :-
  call(Goal_2, X, Y),
  \+ memberchk(Y, Hist), !,
  leave_closure_1(Goal_2, Y, Z, [Y|Hist]).
leave_closure_1(_, X, X, _).

leave_closure_2(Goal_2, X, Z, Hist) :-
  call(Goal_2, Y, Z),
  \+ memberchk(Y, Hist), !,
  leave_closure_2(Goal_2, X, Y, [Y|Hist]).
leave_closure_2(_, X, X, _).



%! path_closure(:Goal_2, +X, +Y) is semidet.
%! path_closure(:Goal_2, +X, -Y) is nondet.
%! path_closure(:Goal_2, -X, +Y) is nondet.
%! path_closure(:Goal_2, +X, +Y, +Path:list) is semidet.
%! path_closure(:Goal_2, +X, +Y, -Path:list) is semidet.
%! path_closure(:Goal_2, +X, -Y, -Path:list) is nondet.
%! path_closure(:Goal_2, -X, +Y, -Path:list) is nondet.
%
% Transitive closure over X or Y.

path_closure(Goal_2, X, Y) :-
  path_closure(Goal_2, X, Y, _).


path_closure(Goal_2, X, Z, Path) :-
  ground(X), !,
  call(Goal_2, X, Y),
  X \== Y,
  path_closure_1(Goal_2, Y, Z, [Y,X], Path0),
  reverse(Path0, Path).
path_closure(Goal_2, X, Z, Path) :-
  ground(Z), !,
  call(Goal_2, Y, Z),
  Y \== Z,
  path_closure_2(Goal_2, X, Y, [Z,Y], Path0),
  reverse(Path0, Path).
path_closure(_, X, Y, _) :-
  instantiation_error(args(X,Y)).



%! path_closure0(:Goal_2, +X, +Y) is semidet.
%! path_closure0(:Goal_2, +X, -Y) is nondet.
%! path_closure0(:Goal_2, -X, +Y) is nondet.
%! path_closure0(:Goal_2, +X, +Y, +Path:list) is semidet.
%! path_closure0(:Goal_2, +X, +Y, -Path:list) is semidet.
%! path_closure0(:Goal_2, +X, -Y, -Path:list) is nondet.
%! path_closure0(:Goal_2, -X, +Y, -Path:list) is nondet.
%
% Reflexive-transitive closure over X or Y.

path_closure0(Goal_2, X, Y) :-
  path_closure0(Goal_2, X, Y, _).


path_closure0(Goal_2, X, Y, Path) :-
  ground(X), !,
  path_closure_1(Goal_2, X, Y, [X], Path0),
  reverse(Path0, Path).
path_closure0(Goal_2, X, Y, Path) :-
  ground(Y), !,
  path_closure_2(Goal_2, X, Y, [Y], Path0),
  reverse(Path0, Path).
path_closure0(_, X, Y, _) :-
  instantiation_error(args(X,Y)).

path_closure_1(_, X, X, Path, Path).
path_closure_1(Goal_2, X, Z, Hist, Path) :-
  call(Goal_2, X, Y),
  \+ memberchk(Y, Hist),
  path_closure_1(Goal_2, Y, Z, [Y|Hist], Path).

path_closure_2(_, X, X, Path, Path).
path_closure_2(Goal_2, Z, X, Hist, Path) :-
  call(Goal_2, Y, X),
  \+ memberchk(Y, Hist),
  path_closure_2(Goal_2, Z, Y, [Y|Hist], Path).



%! path_distance(:Goal_2, +X, +Y, +Distance:nonneg) is semidet.
%! path_distance(:Goal_2, +X, +Y, -Distance:nonneg) is semidet.
%! path_distance(:Goal_2, +X, -Y, -Distance:nonneg) is nondet.
%! path_distance(:Goal_2, -X, +Y, -Distance:nonneg) is nondet.

path_distance(Goal_2, X, Y, N) :-
  ground(X), !,
  path_distance1(Goal_2, X, Y, [X], 0, N).
path_distance(Goal_2, X, Y, N) :-
  ground(Y), !,
  path_distance2(Goal_2, X, Y, [X], 0, N).
path_distance(_, X, Y, _) :-
  instantiation_error(args(X,Y)).

path_distance1(_, X, X, _, N, N).
path_distance1(Goal_2, X, Z, Hist, N1, N) :-
  call(Goal_2, X, Y),
  \+ memberchk(Y, Hist),
  N2 is N1 + 1,
  path_distance1(Goal_2, Y, Z, [Y|Hist], N2, N).

path_distance2(_, X, X, _, N, N).
path_distance2(Goal_2, Z, X, Hist, N1, N) :-
  call(Goal_2, Y, X),
  \+ memberchk(Y, Hist),
  N2 is N1 + 1,
  path_distance2(Goal_2, Z, Y, [Y|Hist], N2, N).





% TESTS %

:- begin_tests(closure).

test(leave_closure, [set(Y==[charing_cross])]) :-
  leave_closure(arc(1), bond_street, Y).

test(path_closure, [set(Y-P == [b-[a,b],c-[a,b,c]])]) :-
  path_closure(arc(2), a, Y, P).

test(path_closure0, [set(Y-P == [a-[a],b-[a,b],c-[a,b,c]])]) :-
  path_closure0(arc(2), a, Y, P).

arc(1, bond_street, oxford_circus).
arc(1, oxford_circus, tottenham_court_road).
arc(1, bond_street, green_park).
arc(1, green_park, charing_cross).
arc(1, green_park, piccadilly_circus).
arc(1, piccadilly_circus, leicester_square).
arc(1, green_park, oxford_circus).
arc(1, oxford_circus, piccadilly_circus).
arc(1, piccadilly_circus, charing_cross).
arc(1, tottenham_court_road, leicester_square).
arc(1, leicester_square, charing_cross).
arc(2, a, a).
arc(2, a, b).
arc(2, b, c).

:- end_tests(closure).
%----------------------------------------------------------- 2 math_ext/math_ext
% math_ext.pl -- the module math_ext of Wouter Beek's prolog_library_collection (MIT), as it stands, its plunit units inside it (plc_cut.py, the grader 2026-11-16)
:- encoding(utf8).
:- module(
  math_ext,
  [
    avg_list/2,           % +Numbers, -Avg
    between/4,            % +Low, +High, +Interval, ?Value
    decimal_parts/3,      % ?Decimal, ?Integer, ?Fractorial
    fractional_integer/2, % +Number, -Fractorial
    fractional_weights/2, % ?Fractional, ?Weights
    inf_max/3,            % +X, +Y, -Z
    inf_min/3,            % +X, +Y, -Z
    integer_weights/2,    % ?Integer, ?Weights
    integer_weights/3     % ?Integer, +Base, ?Weights
  ]
).

/** <module> Mathematics extensions

*/

:- use_module(library(aggregate)).
:- use_module(library(clpfd)).
:- use_module(library(error)).
:- use_module(library(lists)).
:- use_module(library(plunit)).





%! avg_list(+Numbers:list(number), +Avg:number) is semidet.
%! avg_list(+Numbers:list(number), -Avg:number) is det.
%
% # Examples
%
% ```prolog
% ?- avg_list([1 rdiv 3, 1 rdiv 6], X).
% X = 1 rdiv 4.
% ```
%
% # Special cases
%
% Avg is the integer 0 in case Numbers is the empty list.  This is
% in line with how sum_list/2 works.
%
% @throws instantiation_error if Numbers is non-ground.

avg_list([], 0):- !.
avg_list(L, Avg):-
  aggregate(count+sum(X), member(X, L), Len+Sum),
  Avg is Sum / Len.



%! between(+Low:integer, +High:integer, +Interval:integer,
%!         +Value:integer) is semidet.
%! between(+Low:integer, +High:integer, +Interval:integer,
%!         -Value:integer) is nondet.

between(Low, _, _, Low).
between(Low1, High, Interval, Value):-
  Low2 is Low1 + Interval,
  (High == ∞ -> true ; Low2 =< High),
  between(Low2, High, Interval, Value).



%! decimal_parts(+Decimal:number, -Integer:integer, -Frac:nonneg) is det.
%! decimal_parts(-Decimal:number, +Integer:integer, +Frac:nonneg) is det.
%
% @throws instantation_error
% @throws type_error

decimal_parts(N, Int, Frac):-
  ground(N),
  must_be(number, N), !,
  Int is floor(float_integer_part(N)),
  fractional_integer(N, Frac).
decimal_parts(N, Int, Frac):-
  must_be(integer, Int),
  must_be(nonneg, Frac),
  number_length(Frac, Length),
  N is copysign(abs(Int) + (Frac rdiv (10 ^ Length)), Int).



%! fractional_integer(+Frac:number, -Int:integer) is det.
%
% Variant of float_fractional_part/2 where the integer value instead
% of the fractional part is returned.

fractional_integer(Frac, _) :-
  \+ ground(Frac), !,
  instantiation_error(Frac).
fractional_integer(Frac, Int) :-
  Frac = A rdiv B, !,
  FloatFrac is A / B,
  fractional_integer(FloatFrac, Int).
fractional_integer(Frac, Int) :-
  atom_number(FracAtom, Frac),
  % We assume that there is at most one occurrence of `.'.
  sub_atom(FracAtom, IndexOfDot, 1, _, .), !,
  Skip is IndexOfDot + 1,
  sub_atom(FracAtom, Skip, _, 0, IntAtom),
  atom_number(IntAtom, Int).
fractional_integer(_, 0).



%! fractional_weights(-Frac:number, +Weights:list(between(0,9))) is det.
%! fractional_weights(+Frac:number, -Weights:list(between(0,9))) is det.

fractional_weights(Frac, Weights):-
  ground(Weights), !,
  aggregate_all(
    sum(N),
    (
      nth1(Position, Weights, Weight),
      N is Weight rdiv (10 ^ Position)
    ),
    Frac
  ).
fractional_weights(Frac, Weights):-
  ground(Frac), !,
  fractional_integer(Frac, Int),
  integer_weights(Int, Weights).
fractional_weights(_, _):-
  instantiation_error(_).



%! inf_max(+X, +Y, -Z) is det.

inf_max(∞, _, ∞) :- !.
inf_max(_, ∞, ∞) :- !.
inf_max(-∞, Y, Y) :- !.
inf_max(X, -∞, X) :- !.
inf_max(X, Y, Z) :-
  Z is max(X, Y).



%! inf_min(+X, +Y, -Z) is det.

inf_min(-∞, _, -∞) :- !.
inf_min(_, -∞, -∞) :- !.
inf_min(∞, Y, Y) :- !.
inf_min(X, ∞, X) :- !.
inf_min(X, Y, Z) :-
  Z is min(X, Y).



%! integer_weights(+Int:nonneg, +Weights:list(between(0,9))) is semidet.
%! integer_weights(-Int:nonneg, +Weights:list(between(0,9))) is det.
%! integer_weights(+Int:nonneg, -Weights:list(between(0,9))) is det.

integer_weights(Int, Weights):-
  integer_weights(Int, 10, Weights).


%! integer_weights(+Int:nonneg, +Base:nonneg, +Weights:list(between(0,9))) is semidet.
%! integer_weights(-Int:nonneg, +Base:nonneg, +Weights:list(between(0,9))) is det.
%! integer_weights(+Int:nonneg, +Base:nonneg, -Weights:list(between(0,9))) is det.
%
% @see http://stackoverflow.com/questions/4192063/reversible-binary-to-number-predicate/28442760#28442760

integer_weights(Int, Base, Weights):-
  (nonvar(Int), nonvar(Base) ; nonvar(Weights)), !,
  integer_weights0(Int, Base, Weights, 0, Int).

integer_weights0(Int, _, [], Int, _) :- !.
integer_weights0(Int, Base, [Weight|Weights], Int0, M):-
  in_base(Weight, Base),
  Int1 #= Weight + Base * Int0,
  M #>= Int1,
  integer_weights0(Int, Base, Weights, Int1, M).

in_base(Weight, Base):-
  Base #= Max + 1,
  Weight in 0..Max.

:- begin_tests('integer_weights/3').

test(
  'integer_weights(+,+,+) is semidet. TRUE',
  [forall(integer_weights_test(Int,Base,Weights))]
):-
  integer_weights(Int, Base, Weights).
test(
  'integer_weights(+,+,-) is multi. TRUE',
  [forall(integer_weights_test(Int,Base,Weights)),nondet]
):-
  integer_weights(Int, Base, Weights0),
  Weights0 = Weights.
test(
  'integer_weights(-,+,+) is multi. TRUE',
  [forall(integer_weights_test(Int, Base, Weights)),nondet]
):-
  integer_weights(Int, Base, Weights0),
  Weights0 = Weights.

integer_weights_test(1226, 10, [1,2,2,6]).
integer_weights_test(120, 60, [2,0]).

:- end_tests('integer_weights/3').



%! number_length(+Number:number, -Length:integer) is det.
%! number_length(+Number:number, +Radix:integer, -Length:integer) is det.
%
% Returns the length of the given number ‘before the dot’.
%
% @param An integer representing a decimal number.
%
% @param Radix An integer representing the radix used.  Common values
%        are `2.0` (binary), `8.0` (octal), `10.0` (decimal, used by
%        number_length/2, and `16.0` (hexadecimal).
%
% @param Length An integer representing the number of digits in the
%        given number.

number_length(M, L):-
  number_length(M, 10.0, L).


number_length(N1, Radix, L1):-
  N2 is N1 / Radix,
  N2 >= 1.0, !,
  number_length(N2, Radix, L2),
  L1 is L2 + 1.
number_length(_N, _Radix, 1):- !.
%------------------------------------------------------- 3 string_ext/string_ext
% string_ext.pl -- the module string_ext of Wouter Beek's prolog_library_collection (MIT), as it stands, its plunit units inside it (plc_cut.py, the grader 2026-11-16)
:- encoding(utf8).
:- module(
  string_ext,
  [
    max_string_length/2,  % +Strings, -Max
    message_lines/3,      % +Message, +MaxLength, -Lines
    read_string/2,        % +In, -String
    split_string/3,       % +String, +SepChars, -SubStrings
    string_code/2,        % ?String, ?Code
    string_ellipsis/3,    % +Original, ?MaxLength, ?Ellipsed
    string_list_concat/2, % +Strings, ?String
    string_list_concat/3, % ?Strings, ?Separator, ?String
    string_postfix/2,     % +Original, ?Postfix
    string_postfix/3,     % +Original, ?Length, ?Postfix
    string_prefix/2,      % +Original, ?Prefix
    string_prefix/3,      % +Original, ?Length, ?Prefix
    string_strip/2,       % +Original, ?Stripped
    string_strip/3,       % +Original, +Strip, ?Stripped
    string_truncate/3,    % +Original, +MaxLength, ?Truncated
    words_lines/3,        % +Words, +MaxLength, -Lines
    words_lines/4         % +Words, +MaxLength, +Separator, -Lines
  ]
).

/** <module> Extended support for strings

Extends the string support in the SWI-Prolog standard library.

*/

:- use_module(library(apply)).
:- use_module(library(clpfd)).
:- use_module(library(error)).
:- use_module(library(lists)).



%! max_string_length(+Strings:list(string), -Max:nonneg) is det.

max_string_length([], 0) :- !.
max_string_length(Strings, Len) :-
  aggregate_all(
    max(Len0),
    (
      member(String, Strings),
      string_length(String, Len0)
    ),
    Len
  ).



%! message_lines(+Message:string,
%!               +MaxLength:positive_integer,
%!               -Lines:list(string)) is det.

message_lines(Message, Max, Lines) :-
  string_list_concat(Words, ' ', Message),
  words_lines(Words, Max, Lines).



%! read_string(+In:istream, -String:string) is det.
%
% Wrapper for read_string/3 when the number of read characters does
% not matter.

read_string(In, String) :-
  read_string(In, _, String).



%! split_string(+String:string, +SepChars:string, +SubStrings:list(string)) is semidet.
%! split_string(+String:string, +SepChars:string, -SubStrings:list(string)) is det.

split_string(String, SepChars, SubStrings) :-
  split_string(String, SepChars, "", SubStrings).



%! string_code(+String:string, +Code:atom) is semidet.
%! string_code(+String:string, -Code:atom) is det.
%! string_code(-String:string, +Code:atom) is det.

string_code(String, Code) :-
  ground(String), !,
  atom_string(Char, String),
  char_code(Char, Code).
string_code(String, Code) :-
  ground(Code), !,
  char_code(Char, Code),
  atom_string(Char, String).
string_code(String, Code) :-
  instantiation_error([String,Code]).



%! string_ellipsis(+Original:string, +MaxLength:between(2,inf), +Ellipsed:string) is semidet.
%! string_ellipsis(+Original:string, +MaxLength:between(2,inf), -Ellipsed:string) is semidet.
%! string_ellipsis(+Original:string, -MaxLength:between(2,inf), -Ellipsed:string) is nondet.
%
% Succeeds if Ellipsed is like Orginal, but has ellipsis applied in
% order to have MaxLength.  If Original is not longer than MaxLength,
% Orignal and Ellipsed are the same.
%
% ```
% ?- string_ellipsis("monkey", Length, Ellipsed).
% Length = 2,
% Ellipsed = "m…" ;
% Length = 3,
% Ellipsed = "mo…" ;
% Length = 4,
% Ellipsed = "mon…" ;
% Length = 5,
% Ellipsed = "monk…" ;
% Length = 6,
% Ellipsed = "monkey".
% ```
%
% @see atom_ellipsis/3 provides the same functionality for atoms.

string_ellipsis(String, MaxLength, String) :-
  MaxLength == inf, !.
string_ellipsis(Original, MaxLength, Ellipsed) :-
  string_length(Original, Length),
  (   between(2, Length, MaxLength)
  *-> (   MaxLength =:= Length
      ->  Ellipsed = Original
      ;   PrefixLength is MaxLength - 1,
          string_prefix(Original, PrefixLength, Prefix),
          string_concat(Prefix, "…", Ellipsed)
      )
  ;   must_be(between(2,inf), MaxLength),
      Ellipsed = Original
  ).

:- begin_tests(string_ellipsis).

test('string_ellipsis(+,+,+)', [forall(string_ellipsis_test(Original,MaxLength,Ellipsed))]) :-
  string_ellipsis(Original, MaxLength, Ellipsed).
test('string_ellipsis(+,+,-)', [forall(string_ellipsis_test(Original,MaxLength,Ellipsed))]) :-
  string_ellipsis(Original, MaxLength, Ellipsed0),
  assertion(Ellipsed == Ellipsed0).
test('string_ellipsis(+,+,-) err_1', [error(type_error(between(2,inf),MaxLength))]) :-
  member(MaxLength, [-1,0,1,'0']),
  string_ellipsis("monkey", MaxLength, "").
test('string_ellipsis(+,-,-)', [forall(string_ellipsis_test(Original,MaxLength,Ellipsed))]) :-
  string_ellipsis(Original, MaxLength, Ellipsed).

string_ellipsis_test("monkey", 2, "m…").
string_ellipsis_test("monkey", 3, "mo…").
string_ellipsis_test("monkey", 4, "mon…").
string_ellipsis_test("monkey", 5, "monk…").
string_ellipsis_test("monkey", 6, "monkey").
string_ellipsis_test("monkey", 7, "monkey").
string_ellipsis_test("monkey", inf, "monkey").

:- end_tests(string_ellipsis).



%! string_list_concat(+Strings:list(string), +String:string) is semidet.
%! string_list_concat(+Strings:list(string), -String:string) is det.
%! string_list_concat(+Strings:list(string), +Separator:string, +String:string) is semidet.
%! string_list_concat(+Strings:list(string), +Separator:string, -String:string) is det.
%! string_list_concat(-Strings:list(string), +Separator:string, +String:string) is semidet.
%
% @see atomic_list_concat/3 provides the same functionality for atoms.

string_list_concat(Strings, String) :-
  atomics_to_string(Strings, String).


string_list_concat(Strings, Separator, String):-
  (   ground(Strings-Separator)
  ->  atomics_to_string(Strings, Separator, String)
  ;   maplist(atom_string, [Separator0,String0], [Separator,String]),
      atomic_list_concat(Strings0, Separator0, String0),
      maplist(atom_string, Strings0, Strings)
  ).

:- begin_tests(string_list_concat).

test(ambiguïty) :-
  string_list_concat([], "a", "").
test('string_list_concat(+,+,+)', [forall(test_string_list_concat(Strings,Separator,String))]) :-
  string_list_concat(Strings, Separator, String).
test('string_list_concat(+,+,-)', [forall(test_string_list_concat(Strings,Separator,String))]) :-
  string_list_concat(Strings, Separator, String0),
  assertion(String == String0).
test('string_list_concat(-,+,+)', [forall(test_string_list_concat(Strings,Separator,String))]) :-
  string_list_concat(Strings0, Separator, String),
  assertion(Strings == Strings0).

test_string_list_concat([""], "a", "").
test_string_list_concat(["","","",""], "a", "aaa").

:- end_tests(string_list_concat).



%! string_postfix(+Original:string, +Postfix:string) is semidet.
%! string_postfix(+Original:string, -Postfix:string) is multi.
%! string_postfix(+Original:string, +Length:nonneg, +Postfix:string) is semidet.
%! string_postfix(+Original:string, +Length:nonneg, -Postfix:string) is semidet.
%! string_postfix(+Original:string, -Length:nonneg, +Postfix:string) is semidet.
%! string_postfix(+Original:string, -Length:nonneg, -Postfix:string) is multi.
%
% @param Length is the number of characters in the Postfix string.
%
% @param Postfix is the postfix of the Original string that has Length
%        characters.
%
% Fails in case Length is higher than the length of string String.
%
% @see atom_postfix/[2,3] provides the same functionality for atoms.

string_postfix(Original, Postfix) :-
  string_postfix(Original, _, Postfix).


string_postfix(Original, Length, Postfix) :-
  sub_string(Original, _, Length, 0, Postfix).

:- begin_tests(string_postfix).

test('string_postfix(+,+,+)', [forall(test_string_postfix(Original,Length,Postfix))]) :-
  string_postfix(Original, Length, Postfix).
test('string_postfix(+,+,-)', [forall(test_string_postfix(Original,Length,Postfix))]) :-
  string_postfix(Original, Length, Postfix0),
  assertion(Postfix == Postfix0).
test('string_postfix(+,-,+)', [forall(test_string_postfix(Original,Length,Postfix))]) :-
  string_postfix(Original, Length0, Postfix),
  assertion(Length == Length0).
test('string_postfix(+,-,-)', [all(Length-Postfix == [4-"abcd",3-"bcd",2-"cd",1-"d",0-""])]) :-
  string_postfix("abcd", Length, Postfix).

test_string_postfix("abcd", 4, "abcd").
test_string_postfix("abcd", 3, "bcd").
test_string_postfix("abcd", 2, "cd").
test_string_postfix("abcd", 1, "d").
test_string_postfix("abcd", 0, "").

:- end_tests(string_postfix).



%! string_prefix(+Original:string, +Prefix:string) is semidet.
%! string_prefix(+Original:string, -Prefix:string) is multi.
%! string_prefix(+Original:string, +Length:nonneg, +Prefix:string) is semidet.
%! string_prefix(+Original:string, +Length:nonneg, -Prefix:string) is semidet.
%! string_prefix(+Original:string, -Length:nonneg, +Prefix:string) is semidet.
%! string_prefix(+Original:string, -Length:nonneg, -Prefix:string) is multi.
%
% Succeeds if Prefix is a prefix of Original consisting of Length
% characters.
%
% Fails in case Length exceeds the Original string length.
%
% @param Length is the number of characters in the Prefix string.
%
% @param Prefix is the prefix of the Original string that has Length
%        characters.
%
% @see atom_prefix/[2,3] provides the same functionality for atoms.

string_prefix(Original, Prefix) :-
  string_prefix(Original, _, Prefix).


string_prefix(Original, Length, Prefix) :-
  sub_string(Original, 0, Length, _, Prefix).

:- begin_tests(string_prefix).

test('string_prefix(+,+,+)', [forall(test_string_prefix(Original,Length,Prefix))]) :-
  string_prefix(Original, Length, Prefix).
test('string_prefix(+,+,-)', [forall(test_string_prefix(Original,Length,Prefix))]) :-
  string_prefix(Original, Length, Prefix0),
  assertion(Prefix == Prefix0).
test('string_prefix(+,-,+)', [forall(test_string_prefix(Original,Length,Prefix))]) :-
  string_prefix(Original, Length0, Prefix),
  assertion(Length == Length0).
test('string_prefix(+,-,-)', [all(Length-Prefix == [0-"",1-"a",2-"ab",3-"abc",4-"abcd"])]) :-
  string_prefix("abcd", Length, Prefix).

test_string_prefix("abcd", 0, "").
test_string_prefix("abcd", 1, "a").
test_string_prefix("abcd", 2, "ab").
test_string_prefix("abcd", 3, "abc").
test_string_prefix("abcd", 4, "abcd").

:- end_tests(string_prefix).



%! string_strip(+Original:string, +Stripped:string) is semidet.
%! string_strip(+Original:string, -Stripped:string) is det.
%! string_strip(+Original:string, +Strip:list(char), +Stripped:string) is semidet.
%! string_strip(+Original:string, +Strip:list(char), -Stripped:string) is det.
%
% Succeeds if Stripped is a copy of Original where leading and
% trailing characters in Strip have been removed.
%
% Notice that the order in which the characters in Strip are specified
% is significant.
%
% The default Strip characters are space, newline and horizontal tab.
%
% @param Strip is a list of charaters that will be stripped from the
%        Original string.  The default includes: horizontal tab,
%        newline, space, NO-BREAK SPACE (0xa0).
%
% @see atom_strip/[2,3] provides the same functionality for atoms.

string_strip(Original, Stripped) :-
  string_strip(Original, ['\t','\n',' ','\u00a0'], Stripped).


string_strip(Original, Strip0, Stripped) :-
  string_chars(Strip, Strip0),
  split_string(Original, "", Strip, [Stripped]).

:- begin_tests(string_strip).

test('string_strip(+,+,+)', [forall(test_string_strip(Original,Strip,Stripped))]) :-
  string_strip(Original, Strip, Stripped).
test('string_strip(+,+,-)', [forall(test_string_strip(Original,Strip,Stripped))]) :-
  string_strip(Original, Strip, Stripped0),
  assertion(Stripped == Stripped0).

test_string_strip(" a ", [' '], "a").
test_string_strip(" a ", [' ',a], "").
test_string_strip("", [' '], "").
test_string_strip(" ", [], " ").

:- end_tests(string_strip).



%! string_truncate(+Original:string, +MaxLength:nonneg, +Truncated:string) is semidet.
%! string_truncate(+Original:string, +MaxLength:nonneg, -Truncated:string) is det.
%
% @see Like string_prefix/3, but the Truncated string is the Original
%      string in case MaxLength exceeds the Original string length.
%
% @see atom_truncate/3 provides the same functionality for atoms.

string_truncate(Original, MaxLength, Truncated) :-
  string_length(Original, Length),
  (   Length > MaxLength
  ->  string_prefix(Original, MaxLength, Truncated)
  ;   Truncated = Original
  ).

:- begin_tests(string_truncate).

test('string_truncate(+,+,+)', [forall(string_truncate_test(Original,MaxLength,Truncated))]) :-
  string_truncate(Original, MaxLength, Truncated).
test('string_truncate(+,+,-)', [forall(string_truncate_test(Original,MaxLength,Truncated))]) :-
  string_truncate(Original, MaxLength, Truncated0),
  assertion(Truncated == Truncated0).
test('string_truncate(+,-,-)', [error(instantiation_error,_Context)]) :-
  string_truncate("abcd", _MaxLength, "abcd").

string_truncate_test("monkey", 3, "mon").
string_truncate_test("monkey", 1 000, "monkey").

:- end_tests(string_truncate).



%! words_lines(+Words:list(string),
%!             +MaxLength:positive_integer,
%!             -Lines:list(string)) is det.
%! words_lines(+Words:list(string),
%!             +MaxLength:positive_integer,
%!             +Separator:string,
%!             -Lines:list(string)) is det.
%
% Splits the given list of words into lines that do not exceed
% MaxLength.

words_lines(Words, Max, Lines) :-
  words_lines(Words, Max, ' ', Lines).


words_lines(Words, Max, Sep, Lines) :-
  string_length(Sep, SepLen),
  words_lines_(Words, SepLen, Max, Wordss),
  maplist(
    {Sep}/[Strings0,String0]>>string_list_concat(Strings0, Sep, String0),
    Wordss,
    Lines
  ).

words_lines_([], _, _, []) :- !.
words_lines_(Words1, SepLen, Max, [Line|Lines]) :-
  words_line_(Words1, SepLen, Max, Max, Line, Words2),
  words_lines_(Words2, SepLen, Max, Lines).

words_line_([Word|Words], _, _, Max, _, [Word], Words) :-
  string_length(Word, Length),
  Length >= Max, !.
words_line_([Word|Words], SepLen, Remaining1, Max, [Word|Line], WordsSol) :-
  string_length(Word, Length),
  Length =< Remaining1, !,
  Remaining2 #= Remaining1 - Length - SepLen,
  words_line_(Words, SepLen, Remaining2, Max, Line, WordsSol).
words_line_(Words, _, _, _, [], Words).
