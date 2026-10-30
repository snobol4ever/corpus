:- use_module(library(lists)).   % the dialect marker (see README): the oracle is swipl, so SCRIP reads this program as SWI-Prolog does

test:- [test_cond_comp].

% Test use of else part 1
:- if(file_exists('test_cond_comp.P')).
:- writeln(succeeded_1).
:- else.
:- writeln(else_1).
:- endif.

% Test use of else part 1q
:- if(file_exists('test_cond_comp.P')).
:- writeln(succeeded_2).
:- else.
:- writeln(else_2).
:- endif.

% Test use of else part 2.
:- if(file_exists('absent.P')).
:- writeln(if_3).
:- else.
:- writeln(succeeded_3).
:- endif.

% Test use of elseif part 1
:- if(file_exists('absent.P')).
:- writeln(if_4).
:- elseif(file_exists('test_cond_comp.P')).
:- writeln(succeeded_4).
:- elseif(file_exists('test_cond_comp.P')).
:- writeln(else_4).
:- endif.

% Test use of elseif part 2
:- if(file_exists('absent.P')).
:- writeln(if_5).
:- elseif(file_exists('absent.P')).
:- writeln(elseif_5).
:- elseif(file_exists('conditional.P')).
:- writeln(else_5).
:- endif.

% Test use of elseif part 3
:- if(file_exists('absent.P')).
:- writeln(if_6).
:- elseif(file_exists('absent.P')).
:- writeln(elseif_6).
:- elseif(file_exists('test_cond_comp.P')).
:- writeln(succeeded_6).
:- endif.




% DRIVER (appended by the vendoring, CEO-700; CEO-1927): XSB prolog_tests/test.sh runs gentest.sh test_cond_comp "test." -- the answer is the file temp, sorted: [test_cond_comp]. tell(temp). test. told. (the load before tell prints to standard output and is not the answer; test consults the file again and its directives write to temp)
:- initialization((tell(temp), catch(ignore(test), _, true), told)).
end_of_file.

% Test use of else part 1
:- if(file_exists('condtest.P')).
:- writeln(if_1).
:- else.
:- writeln(else_2).
:- endif.

:- if(file_exists('test_cond_comp.P')).
:- include('absent.P').
:- else.
:- writeln(else_2).
:- endif.


:- if(file_exists('absent.P')).
t2:- writeln('t2 = a').
:- else.
t2:- writeln('t2 = b').
:- endif.




