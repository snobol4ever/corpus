% all_driver.pl -- grades GNU Prolog's Pl2Wam/all.pl, its Prolog-to-WAM compiler assembled from its ten parts (read_file, syn_sugar,
% internal, code_gen, reg_alloc, inst_codif, first_arg, indexing, wam_emit, pl2wam) (Lon via the ceo, CEO-1312 and CEO-1523: every
% Prolog source file of the GNU package is graded through a driver; CEO-700: a library is graded by its driver, NAME_driver beside it).
% all.pl is a program, not a library: pl2wam.pl's own :- initialization(go) reads argument_list/1 and compiles what it names, and with
% no argument it prints 'no input file' and aborts. So the driver is all.pl itself, run as pl2wam user -o user (all_driver.argv) over a
% fixed program on its standard input (all_driver.in): it prints that program's WAM. The ref is gprolog 1.6.0's answer (the oracle
% since CEO-1598; 1.4.5 could not run this 1.6.0 source), and equals the 1.6.0 pl2wam binary's own output for the same input.
:- include('all.pl').
