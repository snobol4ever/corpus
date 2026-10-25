:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does
% Checks mem_calloc for structure manager expansion

first_test:- 
%    (xsb_configuration(engine_mode,'multi-threading') ->
%       writeln(skipping_first_test)
%    ;
%        catch(test_1,error(resource_error(memory),context(E,_)),writeln(E)) ).
   catch(test_1,error(resource_error(memory),context(E,_)),writeln(E)).

second_test:- 
%    (xsb_configuration(engine_mode,'multi-threading') ->
%       writeln(skipping_second_test)
%    ;
%       second_test_1).
       second_test_1.

second_test_1:- catch(test_4,error(resource_error(memory),E,_),writeln(E)),fail.
second_test_1:- catch(test_3,error(_,E,_),writeln(E)),fail.
second_test_1:- catch(test_2,error(resource_error(memory),E,_),writeln(E)),fail.
second_test_1.

:- index(p/3,trie).

test_1(0):- !.
test_1(N):- 
	  assert(p(N,N,N)),
	  N1 is N - 1,
%	  (N1 mod 1000 =:= 0 -> writeln(N) ; true),
	  test_1(N1).

test_1:- 
      set_prolog_flag(max_memory,25000),
      test_1(500000). 

%------------------------------------------------
% checks mem_alloc

test_2(0):- !.
test_2(N):- 
	  assert(q(N,N,N)),
	  N1 is N - 1,
	  test_2(N1).

test_2:- 
      set_prolog_flag(heap_garbage_collection,indirection),
      set_prolog_flag(max_memory,25000),
      test_2(250000). 

%------------
% tests heap overflow

test_3:-
      set_prolog_flag(max_memory,25000),
      set_prolog_flag(heap_garbage_collection,none),
      test_3(1000000).

test_3(0):- !.
test_3(N):- 
	    f(f(f(f(a))))  = _X,
	    N1 is N -1,
	    test_3(N1).

%------------
% tests tcpstack overflow

test_4:-
      set_prolog_flag(max_memory,25000),
      test_4(1000000).

test_4(0).
test_4(N):- 
	    N1 is N -1,
	    test_4(N1).
test_4(_):- fail.	

% DRIVER (appended by the vendoring, CEO-700): XSB prolog_tests/test.sh (commented out there) runs gentest.sh test_memory_ovrflw_1 "first_test."
xsb_nonempty_line(L) :- string_length(L, N), N > 0. xsb_write_lines([]). xsb_write_lines([X|Xs]) :- write(X), nl, xsb_write_lines(Xs).
xsb_sorted_output(G) :- with_output_to(string(S), catch(ignore(G), E, print_message(error, E))), split_string(S, "\n", "", L0), include(xsb_nonempty_line, L0, L1), msort(L1, L), xsb_write_lines(L).
:- initialization(xsb_sorted_output((first_test))).
