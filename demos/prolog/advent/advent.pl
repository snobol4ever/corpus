/*-------------------------------------------------------------------------*
 * ADVENT OF CODE 2023, DAYS 1 TO 4 -- Jesper Eskilson's Prolog solutions  *
 * to the first days of the 2023 Advent of Code puzzles: calibration       *
 * values (day 1), the cube game (day 2), gear ratios (day 3, with PCRE    *
 * and SWI dicts) and scratchcards (day 4). As a SCRIP demo (Lon           *
 * 2026-10-10, CEO-1595).                                                  *
 *                                                                         *
 * Source: https://github.com/jesperes/advent-of-code-prolog at 9ddf440e9  *
 * (2024-01-01). GNU GPL version 3 (the LICENSE file beside this one, as   *
 * shipped). This file is utils.pl, day01.pl to day04.pl and the parts of  *
 * aocdata.pl that read a day's input, folded into one; day05.pl is left   *
 * out, being a CLP(FD) model (Lon, CEO-579: "Do not count the FD as       *
 * failures for us."). The puzzle inputs are not in the drop -- aocdata.pl *
 * downloads each with the player's session cookie, and Advent of Code     *
 * asks that inputs not be shared -- so advent.in and advent.session are   *
 * synthetic, written in each puzzle's format by advent_inputs.py beside   *
 * this file (python3 advent_inputs.py 2023 sample > advent.in; 1225       *
 * workhorse > advent.session).                                            *
 * Five edits, nothing else changed:                                       *
 *  1. set_prolog_flag(double_quotes, string) heads the file: the program  *
 *     is SWI-Prolog 7's -- it matches split_string/4's strings against    *
 *     "red" -- where "..." reads as a string; ISO's default reads it as a *
 *     code list (GOAL-PROLOG-100: a dialect conflict goes through ISO's   *
 *     own set_prolog_flag/2, set by the program). Under swipl it is       *
 *     already the default.                                                *
 *  2. Every module/2 header and every use_module of a sibling module is   *
 *     gone: one file, one namespace. The library imports stay.            *
 *  3. Each day's solve/1 is solve_dayN/1, the name main.pl imports it     *
 *     under (solve/1 as solve_day1, ...), the one name the modules share. *
 *  4. aocdata.pl's network fetch and cache (input_file/2,                 *
 *     cache_filename/2, session_cookie/1, the stream reader) are gone;    *
 *     input/2 and input_line/2 read the day's lines the driver stored;    *
 *     input_lines/2 and remove_empty/2 are aocdata.pl's own.              *
 *  5. main.pl's benchmark harness (it finds the days by module reflection *
 *     and prints each day's wall-clock msecs, which no ref can hold) is   *
 *     replaced by main/0: it reads standard input, where each day's input *
 *     follows a line @day N, then prints each day's solutions in day      *
 *     order with main.pl's own format less its msecs column, and halts.   *
 * The ref is swipl 9.0.4's output on the same input:                      *
 *   swipl -q advent.pl < advent.in > advent.ref                           *
 *-------------------------------------------------------------------------*/

:- set_prolog_flag(double_quotes, string).

/*======================================================================== utils.pl */

% (SCRIP demo edit 2: the module/2 header of utils is gone -- one file, one namespace)

%! Unify Width with the width of lines in Str.
%
% Backtracks over all line widths in Str.
line_width(Str, Width) :-
    sub_string(Str, Width, _, _, "\n").

sum(Xs, Sum) :-
    sum(Xs, Sum, 0).

sum([], Sum, Sum).
sum([X|Xs], Sum, Acc) :-
    Acc0 is X + Acc,
    sum(Xs, Sum, Acc0).


next_integer(I) :-
    next_integer(0, I).

next_integer(I, I).
next_integer(I, J) :-
    I2 is I + 1,
    next_integer(I2, J).

seq(Low, High, List) :-
    findall(X, between(Low, High, X), List).

intlist_stringlist(IntList, StringList) :-
    maplist(number_string, IntList, StringList).

split_at([], _Elem, [], []).
split_at([Elem|List], Elem, [], List) :- !.
split_at([Elem|List], Sep, [Elem|L0], R0) :-
    split_at(List, Sep, L0, R0).

%! Like get_assoc/3, but binds a default value if the key does not
% exist.
get_assoc_default(Key, Assoc, Value, _Default) :-
    get_assoc(Key, Assoc, Value),
    !.
get_assoc_default(_Key, _Assoc, Default, Default).

/*======================================================================== day01.pl */

% (SCRIP demo edit 2: the module/2 header of day01 is gone -- one file, one namespace;
%  edit 3: its solve/1 is solve_day1/1, the name main.pl imports it under)

% (SCRIP demo edit 2: use_module of utils, aocdata is gone -- folded into this file)

input_line(Line) :-
    input_line(1, Line).

solve_day1({part1, Sum}) :-
    findall(Value, calibration_values(Value, part1), Values),
    sum(Values, Sum).

solve_day1({part2, Sum}) :-
    findall(Value, calibration_values(Value, part2), Values),
    sum(Values, Sum).

calibration_values(Value, Part) :-
    input_line(Line),
    string_to_list(Line, List),
    first_and_last_digits(First, Last, List, Part),
    number_codes(Value, [First, Last]).

first_and_last_digits(First, Last, List, Part) :-
    first_digit(List, First, Part),
    last_digit(List, Last, Part).

%% Digit is the first digit in String
first_digit(List, Digit, Part) :-
    is_digit_prefix(Part, List, Digit),
    !.
first_digit([_|Rest], Digit, Part) :-
    first_digit(Rest, Digit, Part).

%% Digit is the last digit in String
last_digit(List, Digit, Part) :-
    reverse(List, ListRev),
    last_digit_rev(ListRev, Digit, Part).

last_digit_rev(ListRev, Digit, Part) :-
    is_digit_prefix(Part, ListRev, Digit),
    !.
last_digit_rev([_|ListRev], Digit, Part) :-
    last_digit_rev(ListRev, Digit, Part).

is_digit_prefix(_, [Digit|_List], Digit) :-
    char_type(Digit, digit),
    !.

is_digit_prefix(part2, [122, 101, 114, 111|_List], 48) :- !.      %% zero
is_digit_prefix(part2, [111, 110, 101|_List], 49) :- !.           %% one
is_digit_prefix(part2, [116, 119, 111|_List], 50) :- !.           %% two
is_digit_prefix(part2, [116, 104, 114, 101, 101|_List], 51) :- !. %% three
is_digit_prefix(part2, [102, 111, 117, 114|_List], 52) :- !.      %% four
is_digit_prefix(part2, [102, 105, 118, 101|_List], 53) :- !.      %% five
is_digit_prefix(part2, [115, 105, 120|_List], 54) :- !.           %% six
is_digit_prefix(part2, [115, 101, 118, 101, 110|_List], 55) :- !. %% seven
is_digit_prefix(part2, [101, 105, 103, 104, 116|_List], 56) :- !. %% eight
is_digit_prefix(part2, [110, 105, 110, 101|_List], 57) :- !.      %% nine

is_digit_prefix(part2, [111, 114, 101, 122|_List], 48) :- !.      %% orez
is_digit_prefix(part2, [101, 110, 111|_List], 49) :- !.           %% eno
is_digit_prefix(part2, [111, 119, 116|_List], 50) :- !.           %% owt
is_digit_prefix(part2, [101, 101, 114, 104, 116|_List], 51) :- !. %% eerht
is_digit_prefix(part2, [114, 117, 111, 102|_List], 52) :- !.      %% ruof
is_digit_prefix(part2, [101, 118, 105, 102|_List], 53) :- !.      %% evif
is_digit_prefix(part2, [120, 105, 115|_List], 54) :- !.           %% xis
is_digit_prefix(part2, [110, 101, 118, 101, 115|_List], 55) :- !. %% neves
is_digit_prefix(part2, [116, 104, 103, 105, 101|_List], 56) :- !. %% thgie
is_digit_prefix(part2, [101, 110, 105, 110|_List], 57) :- !.      %% enin

is_digit_prefix(Part, [_|List], Digit) :-
    is_digit_prefix(Part, List, Digit).

/*======================================================================== day02.pl */

% (SCRIP demo edit 2: the module/2 header of day02 is gone -- one file, one namespace;
%  edit 3: its solve/1 is solve_day2/1, the name main.pl imports it under)

% (SCRIP demo edit 2: use_module of utils, aocdata is gone -- folded into this file)

solve_day2({part1, P1}) :-
    findall(GameId, valid_game_id(GameId), GameIds),
    sum(GameIds, P1).
solve_day2({part2, P2}) :-
    findall(Power, game_power(Power), Powers),
    sum(Powers, P2).

game(GameId, Draws) :-
    input_line(2, Line),
    split_string(Line, " ", ":; ,", ["Game", GameIdStr|Draws]),
    number_string(GameId, GameIdStr).

%% Part 1
valid_game_id(ValidGameId) :-
    game(GameId, Draws),
    valid_game(Draws, GameId, ValidGameId).

valid_game([], GameId, GameId).
valid_game([Cubes, Color|Rest], GameId, ValidGameId) :-
    number_string(N, Cubes),
    num_cubes(Color, Max),
    N =< Max,
    valid_game(Rest, GameId, ValidGameId).

%% Part 2
game_power(Power) :-
    game(_, Draws),
    game_power(Draws, {0, 0, 0}, Power).

game_power([], {R, G, B}, Power) :-
    Power is R * G * B.
game_power([Cubes, Color|Rest], RGB, Power) :-
    number_string(N, Cubes),
    min_rgb(N, Color, RGB, MaxRGB),
    game_power(Rest, MaxRGB, Power).

min_rgb(N, "red", {R, G, B}, {N, G, B}) :- N > R, !.
min_rgb(N, "green", {R, G, B}, {R, N, B}) :- N > G, !.
min_rgb(N, "blue", {R, G, B}, {R, G, N}) :- N > B, !.
min_rgb(_, _, RGB, RGB).

num_cubes("red", 12).
num_cubes("green", 13).
num_cubes("blue", 14).

/*======================================================================== day03.pl */

% (SCRIP demo edit 2: the module/2 header of day03 is gone -- one file, one namespace;
%  edit 3: its solve/1 is solve_day3/1, the name main.pl imports it under)

% (SCRIP demo edit 2: use_module of utils, aocdata is gone -- folded into this file)
:- use_module([library(pcre),
               library(assoc),
               library(pairs)]).

:- set_prolog_flag(re_compile, true).

solve_day3(PartSol) :-
    input(3, Input),
    parse(Input, Symbols),
    do_solve(Symbols, PartSol).

do_solve(Symbols, {part1, P1}) :-
    assoc_to_values(Symbols, Values),
    flatten(Values, Flattened),
    pairs_values(Flattened, List),
    sum(List, P1).

do_solve(Symbols, {part2, P2}) :-
    assoc_to_list(Symbols, Pairs),
    foldl(sum_part2_sol, Pairs, 0, P2).

sum_part2_sol(_-[_-Gear1, _-Gear2], Sum, SumOut) :-
    SumOut is Gear1 * Gear2 + Sum,
    !.
sum_part2_sol(_, Sum, Sum).

%! Parse the input.
%
% The parsed output consist of an assoc list where the keys are
% AdjIdx-CharAt pairs with AdjIdx being the index of the adjacent
% symbol (*, /, etc), and CharAt is the corresponding symbol. The
% values are NumIdx-Num pairs, when NumIdx is the index of the number
% and Num is the actual number.
parse(Input, Symbols) :-
    line_width(Input, Width), !, % don't backtrack, only look at first line
    WNL is Width + 1,
    string_length(Input, InputLen),
    empty_assoc(SymbolsIn),
    re_foldl(matchpred, "(?<num>\\d+)"/r, Input,
             {Input, WNL, InputLen, SymbolsIn}, %% input accumulator
             {_, _, _, Symbols}, %% output accumulator
             []).

% Invoked for each number in the input. Folds over all digits in the
% number, inserting all symbols adjacent to a number into a set.
matchpred(Match, {Input, Width, InputLen, AccIn}, {Input, Width, InputLen, AccOut}) :-
    NumIdx-Len = Match.get(num),
    sub_string(Input, NumIdx, Len, _, NumStr),
    To is NumIdx + Len - 1,
    seq(NumIdx, To, Indexes),
    foldl(find_adj_symbols(NumIdx, NumStr, Input, Width, InputLen), Indexes, AccIn, AccOut).

find_adj_symbols(NumIdx, NumStr, Input, Width, InputLen, Index, AccIn, AccOut) :-
    findall(AdjIdx, adjacent_to(Index, Width, InputLen, AdjIdx), AdjacentIndexes),
    foldl(find_adj_symbols_inner(NumIdx, NumStr, Input), AdjacentIndexes, AccIn, AccOut).

find_adj_symbols_inner(NumIdx, NumStr, Input, AdjIdx, AccIn, AccOut) :-
    sub_string(Input, AdjIdx, 1, _, CharAt),
    % format("Checking ~p of number ~p at index ~p~n", [CharAt, NumStr, NumIdx]),
    is_adj_symbol(NumIdx, NumStr, AdjIdx, CharAt, AccIn, AccOut).

is_adj_symbol(_NumIdx, _NumStr, _AdjIdx, ".", Acc, Acc).
is_adj_symbol(_NumIdx, _NumStr, _AdjIdx, CharAt, Acc, Acc) :- char_type(CharAt, digit).
is_adj_symbol(_NumIdx, _NumStr, _AdjIdx, CharAt, Acc, Acc) :- char_type(CharAt, end_of_line).
is_adj_symbol(NumIdx, NumStr, AdjIdx, CharAt, AccIn, AccOut) :-
    number_string(Num, NumStr),
    Key = AdjIdx-CharAt,
    Elem = NumIdx-Num,
    (  get_assoc(Key, AccIn, Old)
    -> ord_add_element(Old, Elem, NewSet),
       put_assoc(Key, AccIn, NewSet, AccOut)
    ;  list_to_ord_set([Elem], Set),
       put_assoc(Key, AccIn, Set, AccOut)
    ).

% Backtracks over all (valid) indexes adjacent to Index
adjacent_to(Index, Width, Len, Adj) :-
    adjacent_to(Index, Width, Adj),
    Adj >= 0,
    Adj < Len.
adjacent_to(Index, _Width, Adj) :- Adj is Index - 1.
adjacent_to(Index, _Width, Adj) :- Adj is Index + 1.
adjacent_to(Index, Width, Adj)  :- Adj is Index - Width - 1.
adjacent_to(Index, Width, Adj)  :- Adj is Index - Width.
adjacent_to(Index, Width, Adj)  :- Adj is Index - Width + 1.
adjacent_to(Index, Width, Adj)  :- Adj is Index + Width - 1.
adjacent_to(Index, Width, Adj)  :- Adj is Index + Width.
adjacent_to(Index, Width, Adj)  :- Adj is Index + Width + 1.

/*======================================================================== day04.pl */

% (SCRIP demo edit 2: the module/2 header of day04 is gone -- one file, one namespace;
%  edit 3: its solve/1 is solve_day4/1, the name main.pl imports it under)

% (SCRIP demo edit 2: use_module of utils, aocdata is gone -- folded into this file)
:- use_module([library(ordsets)]).

solve_day4({part1, P1}) :-
    findall(Score, card_value(Score), Scores),
    sum_card_values(Scores, 0, P1).

solve_day4({part2, P1}) :-
    input_lines(4, Lines),
    empty_assoc(Lin),
    foldl(count_cards, Lines, Lin, Lout),
    assoc_to_values(Lout, Values),
    sum(Values, S1),
    length(Lines, NumCards),
    P1 is S1 + NumCards.

% Part 1
card_value(Score) :-
    input_line(4, Line),
    split_card_line(Line, NumMatching, _CardId),
    Score = NumMatching.

sum_card_values([], Sum, Sum).
sum_card_values([N|Rest], SumIn, SumOut) :-
    Sum0 is SumIn + (1 << (N - 1)),
    sum_card_values(Rest, Sum0, SumOut).

% Part 2
count_cards(Line, Lin, Lout) :-
    split_card_line(Line, NumMatching, Card),
    From is Card + 1,
    To is Card + NumMatching,
    seq(From, To, Cards),
    foldl(count_one_card(Card), Cards, Lin, Lout).

count_one_card(Card, I, Lin, Lout) :-
    get_assoc_default(Card, Lin, CardVal0, 0),
    CardVal1 is CardVal0 + 1,
    sum_assoc(I, CardVal1, Lin, Lout).

sum_assoc(Key, Val, AssocIn, AssocOut) :-
    get_assoc_default(Key, AssocIn, Old, 0),
    Sum is Old + Val,
    put_assoc(Key, AssocIn, Sum, AssocOut).

% -- Helpers --

%! Split a line in the input.
%
% Unify NumMatching with the number of matching cards, and CardId with
% the id of the card. We don't need any other info.
split_card_line(Line, NumMatching, CardId) :-
    split_string(Line, " ", " :", ["Card", CardIdStr|Rest]),
    number_string(CardId, CardIdStr),
    split_at(Rest, "|", Left, Right),
    list_to_ord_set(Left, LeftSet),
    list_to_ord_set(Right, RightSet),
    ord_intersect(LeftSet, RightSet, Intersection),
    length(Intersection, NumMatching).

/*======================================================================== aocdata.pl, the input readers (edit 4) */

:- use_module(library(readutil)).

:- dynamic(day_lines/2).

%! input(+Day, -Input)
%
% Unify Input with the input data for the given day: its lines, each
% ended by a newline, as the downloaded file holds them. (edit 4)
input(Day, Input) :-
    day_lines(Day, Lines),
    findall(S, (member(L, Lines), string_concat(L, "\n", S)), Ss),
    atomics_to_string(Ss, Input).

%! input(+Day, -Lines)
%
% Read the output for the given day, split it into lines, and unify
% Lines with the result.
input_lines(Day, Lines) :-
    input(Day, Input),
    split_string(Input, "\n", "", Lines0),
    remove_empty(Lines0, Lines).

remove_empty([], []).
remove_empty([""|List], Out) :-
    !,
    remove_empty(List, Out).
remove_empty([Line|List], [Line|Out]) :-
    remove_empty(List, Out).

%! input_line(+Day, -Line)
%
% Unifies Line with lines in the input data for the given day, such
% that backtracking with yield all input lines in order. (edit 4)
input_line(Day, Line) :-
    day_lines(Day, Lines),
    member(Line, Lines).

/*======================================================================== main.pl, the SCRIP demo driver (edit 5) */

:- initialization(main).

main :-
    read_line_to_string(user_input, Line),
    read_days(Line, none, []),
    forall(member(Day-Solve, [day01-solve_day1, day02-solve_day2, day03-solve_day3, day04-solve_day4]),
           (   findall(Solution, call(Solve, Solution), Solutions),
               format("~w ~`.t~30|~p\n", [Day, Solutions])
           )),
    halt.

read_days(end_of_file, Day, Acc) :-
    !,
    store_day(Day, Acc).
read_days(Line, Day, Acc) :-
    (   string_concat("@day ", NStr, Line)
    ->  store_day(Day, Acc),
        number_string(Day1, NStr),
        Acc1 = []
    ;   Day1 = Day,
        Acc1 = [Line|Acc]
    ),
    read_line_to_string(user_input, Next),
    read_days(Next, Day1, Acc1).

store_day(none, _) :- !.
store_day(Day, RevLines) :-
    reverse(RevLines, Lines),
    assertz(day_lines(Day, Lines)).
