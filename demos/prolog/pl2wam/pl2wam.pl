/*-------------------------------------------------------------------------*
 * pl2wam -- GNU Prolog's own Prolog-to-WAM compiler, written in Prolog,   *
 * as a SCRIP demo (Lon 2026-10-09, CEO-1582: "I like a Prolog compiler     *
 * written in Prolog as a good demo.").                                    *
 *                                                                         *
 * Source: GNU Prolog 1.6.0, src/Pl2Wam (Daniel Diaz, dual LGPL-3/GPL-2,   *
 * the licence text kept in each part below). This file is the ten parts   *
 * of src/Pl2Wam/all.pl concatenated in all.pl's order: read_file,         *
 * syn_sugar, internal, code_gen, reg_alloc, inst_codif, first_arg,        *
 * indexing, wam_emit, pl2wam. Two edits, nothing else changed:            *
 *  1. prolog_name/1, prolog_version/1, prolog_date/1 and                   *
 *     prolog_copyright/1 name the compiler (GNU Prolog 1.6.0, as its own  *
 *     build stamps them) rather than reading the host's prolog flags: the *
 *     WAM header names the compiler, whichever Prolog runs it.            *
 *  2. pl2wam.pl's ":- initialization(go)" (go reads the command line) is  *
 *     replaced by main/0 below: compile standard input to standard        *
 *     output, which is pl2wam's own "user -o user".                       *
 *  3. The host's operator table is made GNU Prolog's, as pl2wam's own     *
 *     compat.pl does for SWI-Prolog: the operators a host may add that    *
 *     GNU Prolog 1.6.0 lacks are removed (op/3 with priority 0 below),    *
 *     since pl2wam writes its WAM with write_term(quoted(true)) and an    *
 *     operator atom is bracketed there. Under gprolog they are no-ops.    *
 * The ref is the WAM gprolog 1.6.0's own pl2wam binary emits for the same *
 * input: pl2wam user -o user < pl2wam.in > pl2wam.ref                     *
 *-------------------------------------------------------------------------*/

:- op(0, yfx, xor).
:- op(0, yfx, rdiv).
:- op(0, fx, dynamic).
:- op(0, fx, discontiguous).
:- op(0, fx, initialization).
:- op(0, fx, module).
:- op(0, fx, multifile).
:- op(0, fx, public).
:- op(0, fx, meta_predicate).
:- op(0, fx, table).
:- op(0, fy, not).

/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : read_file.pl                                                    *
 * Descr.: source file reading                                             *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


/*-------------------------------------------------------------------------*
 * Data structures:                                                        *
 *                                                                         *
 * the stack of opened files (for nested includes):                        *
 *    global variable open_file_stack = [of(PlFile,Stream,ParIncLine),...] *
 *    PlFile    : the file                                                 *
 *    Stream    : input stream                                             *
 *    ParIncLine: line no of :- include in its parent (next of element)    *
 *    if foo:16 includes bar the stack = [of(bar,S2,16),of(foo,S1,0)]      *
 *                                                                         *
 * the context (where occurs an error):                                    *
 *    global variable where = OpenFileStack+(L1-L2)                        *
 *    L1: first line of the current clause (resp. directive).              *
 *    L2: last  line of the current clause (resp. directive).              *
 *                                                                         *
 * read_predicate(Pred,N,LSrcCl):                                          *
 *    the structure of the compiler is a repeat/fail loop on 1 predicate   *
 *    calling read_predicate(Pred,N,LSrcCl) to obtain next predicate.      *
 *    Pred  : predicate name (an atom).                                    *
 *    N     : arity (an integer >=0).                                      *
 *    LSrcCl: [SrcCl,...], list of source clauses, with                    *
 *     SrcCl: Where+Cl where Cl is the raw source clause read.             *
 *                                                                         *
 * Buffers for special predicate management (with assert/retract):         *
 *                                                                         *
 * buff_aux_pred(Pred,N,LSrcCl):                                           *
 *    records the clauses of an auxiliary predicate.                       *
 *    Asserted by Pass 1 (syntactic sugar removing) when splitting ;/2,etc.*
 *    Retracted at the very next invocation of read_predicate/3 to         *
 *    ensure that aux. predicates always follow their "father" predicate.  *
 *                                                                         *
 * buff_discontig_clause(Pred,N,SrcCl):                                    *
 *    records a clause of a discontiguous predicate (:- discontiguous).    *
 *    Each clause of a discontiguous predicate is asserted when it is read *
 *    When the end of file is reached all clauses of a discontiguous pred  *
 *    are grouped to return a list of source clauses LSrcCl.               *
 *    Thus discontiguous predicates are always compiled after other        *
 *    predicates.                                                          *
 *                                                                         *
 * buff_dyn_interf_clause(Pred,N,SrcCl):                                   *
 *    records the interface clause of a dynamic predicate (:- dynamic).    *
 *    This clause is of the form Head:- call(Head) and only ensures that   *
 *    an external invocation to this predicate will not need to know that  *
 *    it is dynamic (and should be called by call/1).                      *
 *    Asserted as soon as a :- dynamic directive is encountered.           *
 *    Retracted only when the end of file is reached. All other clauses of *
 *    a dynamic predicate give rise to a system executable directive to    *
 *    assert(z) it.                                                        *
 *                                                                         *
 * empty_dyn_pred(Pred,N,Where):                                           *
 *    asserted when the declaration of a dynamic predicate is encoutered   *
 *    (:- dynamic). Retracted when a clause of a dynamic predicate is read.*
 *    At the end, only contains dynamic predicate with no clauses.         *
 *    Used then to define the interface clause.                            *
 *                                                                         *
 * ensure_linked(Pred,N):                                                  *
 *    asserted for each Pred/N occuring in a :- ensure_linked directive.   *
 *                                                                         *
 * module_export(Pred,N,Module):                                           *
 *    asserted for each imported Pred/N from Module.                       *
 *    asserted for each exported Pred/N from Module.                       *
 *                                                                         *
 * meta_pred(Pred,N,MetaDecl):                                             *
 *    asserted for each meta_predicate declaration.                        *
 *                                                                         *
 * Buffers for executable directive management (with assert/retract):      *
 *                                                                         *
 * buff_exe_system(SrcDirec)                                               *
 *     SrcDirec = Where+Body (i.e. source directive).                      *
 *     records a system directive.                                         *
 *     Asserted for dynamic clauses (to assertz it), and to execute, at    *
 *     run-time, op/3 set_prolog_flag/2, char_conversion/2.                *
 *     Retracted only when the end of file has been reached to provide a   *
 *     predicate '$exe_system':- Body.                                     *
 *                                                                         *
 * buff_exe_user(SrcDirec)                                                 *
 *     records user defined directives (:- initialization).                *
 *     Asserted when a :- initialization declaration is encountered.       *
 *     Retracted just after all '$buff_exe_system' to ensure that any user *
 *     directive has the needed environment.                               *
 *                                                                         *
 * Buffers for special clause management (with assert/retract):            *
 *                                                                         *
 * buff_raw_clause(Cl,Where):                                              *
 *    to handle term_expansion/2 which can return a list of (raw) clauses. *
 *    The first one is handled directly, for the others we                 *
 *    assert/retract(buff_raw_clause(Cl,Where)).                           *
 *    Read at the very next invocation of get_next_clause/3.               *
 *                                                                         *
 * buff_src_clause(Pred,N,SrcCl):                                          *
 *    the reader needs a lookahead clause (to group clauses by predicates).*
 *    For such a clause we assert/retract(buff_src_clause(Pred,N,SrcCl)).  *
 *    Read at the next invocation of get_next_clause/3.                    *
 *-------------------------------------------------------------------------*/

:- op(200, fx, ?).

read_file_init :-
	pp_start,
	retractall(buff_raw_clause(_, _)),
	retractall(buff_src_clause(_, _, _)),
	retractall(buff_aux_pred(_, _, _)),
	retractall(buff_discontig_clause(_, _, _)),
	retractall(buff_dyn_interf_clause(_, _, _)),
	retractall(buff_exe_system(_)),
	retractall(buff_exe_user(_)),
	retractall(empty_dyn_pred(_, _, _)),
	retractall(ensure_linked(_, _)),
	retractall(pred_info(_, _, _)),
	retractall(module_export(_, _, _)),
	retractall(meta_pred(_, _, _)),
	g_assign(module, user),
	g_assign(module_already_seen, f),
	g_assign(default_kind, user),
	g_assign(open_file_stack, []),
	g_assign(where, 0),
	g_assign(syn_error_nb, 0),
	g_assign(in_lines, 0),
	g_assign(in_bytes, 0),
	g_assign(compiler_mode, default),
	set_pred_flag(dyn, term_expansion, 2).




read_file_init(PlFile) :-
	g_assign(reading_dyn_pred, f),
	g_assign(eof_reached, f),
	open_new_prolog_file(PlFile, 0). % 0 means parent = command-line




read_file_term(Bytes, Lines) :-
	g_read(in_bytes, Bytes),
	g_read(in_lines, Lines).




read_file_error_nb(SynErrNb) :-
	g_read(syn_error_nb, SynErrNb).




open_new_prolog_file(PlFile, ParIncLine) :-
	g_read(open_file_stack, OpenFileStack),
	open_new_prolog_file1(PlFile, OpenFileStack, PlFile1, Stream), !,
	g_assign(open_file_stack, [of(PlFile1, Stream, ParIncLine)|OpenFileStack]),
	(   peek_char(Stream, '#'), % ignore #! starting line (for shebang support)
	    repeat,
	    get_char(Stream, X),
	    (X = '\n' ; X = end_of_file)
	;
	    true
	).


open_new_prolog_file1(user, _, user, Stream) :-
	current_input(Stream).
	
open_new_prolog_file1(PlFile, _, PlFile, Stream) :-
%	format('~n*** Trying to open ~a~n', [PlFile]),
	catch(open(PlFile, read, Stream), error(existence_error(source_sink, _), _), fail).

open_new_prolog_file1(PlFile, OpenFileStack, PlFile1, Stream) :-
%	format('file stack: ~w~n', [OpenFileStack]),
	is_relative_file_name(PlFile),
	try_other_directory(OpenFileStack, PlFile, PlFile1, Stream).

open_new_prolog_file1(PlFile, _, _, _) :-
	throw(error(existence_error(source_sink, PlFile), open/3)).


	/* If an included file is not found try to look in "parents" (includers) path.
	 * If found return the new name (to have correct error msg and file_name in .wam)
	 */

try_other_directory([of(PlFile1, _, _)|_], PlFile, PlFile2, Stream) :-
	decompose_file_name(PlFile1, Directory, _, _),
	Directory \== '',
	atom_concat(Directory, PlFile, PlFile2),
%	format('   fail.~n+++ Trying to open ~a~n', [PlFile2]),
	catch(open(PlFile2, read, Stream), _, fail).

try_other_directory([_|OpenFileStack], PlFile, PlFile1, Stream) :-
	try_other_directory(OpenFileStack, PlFile, PlFile1, Stream).



	


close_last_prolog_file :-
	g_read(open_file_stack, [of(_, Stream, _)|OpenFileStack]),
	g_assign(open_file_stack, OpenFileStack),
	g_read(in_bytes, Bytes1),
	g_read(in_lines, Lines1),
	character_count(Stream, Bytes2),
	line_count(Stream, Lines2),
	Bytes is Bytes1 + Bytes2,
	Lines is Lines1 + Lines2,
	g_assign(in_bytes, Bytes),
	g_assign(in_lines, Lines),
	close(Stream).




          % Read of a predicate

read_predicate(Pred, N, LSrcCl) :-
	repeat,
	read_predicate1(Pred, N, LSrcCl),                % standard predicate
% !,
	(   g_read(reading_dyn_pred, f),
	    g_read(native_code, t) ->
	    read_predicate_next(Pred, N, LSrcCl)
	;   true
	).




read_predicate_next(Pred, N, LSrcCl) :-
	(test_pred_flag(dyn, Pred, N) ; test_pred_flag(multi, Pred, N)), !,
	LSrcCl = [Where + _|_],
	add_dyn_interf_clause(Pred, N, Where),
	create_exe_clauses_for_dyn_pred(LSrcCl, Pred, N),
	fail.                              % backtrack to repeat of main loop

read_predicate_next(Pred, N, LSrcCl) :-
	test_pred_flag(pub, Pred, N), !,
	create_exe_clauses_for_pub_pred(LSrcCl).

read_predicate_next(_, _, _).




read_predicate1(Pred, N, LSrcCl) :-
	retract(buff_aux_pred(Pred, N, LSrcCl)), !. % aux. pred (cf syn_sugar)

read_predicate1(Pred, N, LSrcCl) :-
	g_read(eof_reached, f), !,
	repeat,
	get_next_clause(Pred, N, SrcCl),
	SrcCl = _ + Cl,
	retractall(empty_dyn_pred(Pred, N, _)),
	(   test_pred_flag(discontig, Pred, N) ->
	    assertz(buff_discontig_clause(Pred, N, SrcCl)),
	    define_predicate(Pred, N),
	    fail                               % backtrack to read_predicate1
	;   true
	),
	(   test_pred_flag(def, Pred, N) ->
	    warn('discontiguous predicate ~q - clause ignored', [Pred/N]),
	    fail                               % backtrack to read_predicate1
	;   true
	), !,
	Cl \== end_of_file,                    % if end_of_file is read, fail
                                            % and backtrack to read_predicate
	define_predicate(Pred, N),
	group_clauses_by_pred(Pred, N, SrcCl, LSrcCl).

read_predicate1(Pred, N, [SrcCl|LSrcCl]) :-
	retract(buff_discontig_clause(Pred, N, SrcCl)), !,  % discontiguous pred
	collect_discontig_clauses(Pred, N, LSrcCl).

read_predicate1(Pred, N, [SrcCl]) :-
	g_assign(reading_dyn_pred, t),
	retract(buff_dyn_interf_clause(Pred, N, SrcCl)), !.     % dyn predicate

read_predicate1(Pred, N, [SrcCl]) :-
	g_assign(reading_dyn_pred, t),
	retract(empty_dyn_pred(Pred, N, Where)),        % empty dyn predicate
	define_predicate(Pred, N),
	(   g_read(native_code, t) ->
	    create_dyn_interf_clause(Pred, N, Where, SrcCl)
	;   SrcCl = Where + '$$empty$$predicate$$clause$$'
	), !.

read_predicate1(Pred, N, LSrcCl) :-
	g_assign(reading_dyn_pred, f),
	retract(buff_exe_system(Where + Body)),       % system exe directives
	Pred = '$exe_system',
	N = 0,
	LSrcCl = [Where + (Pred :- Body)], !.

read_predicate1(Pred, N, LSrcCl) :-
	retract(buff_exe_user(Where + Body)),           % user exe directives
	Pred = '$exe_user',
	N = 0,
	LSrcCl = [Where + (Pred :- Body)], !.

read_predicate1(Pred, N, LSrcCl) :-
	Pred = end_of_file,
	N = 0,
	LSrcCl = [], !.                                         % end of file





group_clauses_by_pred(Pred, N, SrcCl, [SrcCl|LSrcCl1]) :-
	get_next_clause(Pred1, N1, SrcCl1),
	(   Pred = Pred1,
	    N = N1 ->
	    group_clauses_by_pred(Pred1, N1, SrcCl1, LSrcCl1)
	;   LSrcCl1 = [],
	    (   Pred1 = end_of_file,
	        N1 = 0 ->
	        true
	    ;   asserta(buff_src_clause(Pred1, N1, SrcCl1))
	    )
	).




add_dyn_interf_clause(Pred, N, _) :-
	clause(buff_dyn_interf_clause(Pred, N, _), true), !.  % already asserted

add_dyn_interf_clause(Pred, N, Where) :-
	create_dyn_interf_clause(Pred, N, Where, SrcCl),
	assertz(buff_dyn_interf_clause(Pred, N, SrcCl)).




create_dyn_interf_clause(Pred, N, Where, SrcCl) :-
	length(LArgs, N),
	Head =.. [Pred|LArgs],
	SrcCl = Where + (Head :- call(Head)).



/* Version with findall */
collect_discontig_clauses(Pred, N, LSrcCl) :-
	findall(SrcCl, retract(buff_discontig_clause(Pred, N, SrcCl)), LSrcCl).

/* Version with retract recursive (do not omit the cut). Can be worse than 
 * with findall depending on how LDUV is implemented (see dynam_supp.c)
 */
/*
collect_discontig_clauses(Pred, N, [SrcCl|LSrcCl]) :-
	retract(buff_discontig_clause(Pred, N, SrcCl)), !,
	collect_discontig_clauses(Pred, N, LSrcCl).

collect_discontig_clauses(_, _, []).
*/



create_exe_clauses_for_dyn_pred([], _, _).

create_exe_clauses_for_dyn_pred([SrcCl|LSrcCl], Pred, N) :-
	SrcCl = Where + Cl,
	get_file_name(Where, PlFile),
	add_wrapper_to_dyn_clause(Pred, N, Where + Cl, AuxName),
	record_initialization(system, ('$call_c'('Pl_Emit_BC_Execute_Wrapper'(Pred, N, '&', AuxName, N), [by_value]), '$add_clause_term'(Cl, PlFile)), Where),
	create_exe_clauses_for_dyn_pred(LSrcCl, Pred, N).




create_exe_clauses_for_pub_pred([]).

create_exe_clauses_for_pub_pred([Where + Cl|LSrcCl]) :-
	get_file_name(Where, PlFile),
	record_initialization(system, '$add_clause_term'(Cl, PlFile), Where),
	create_exe_clauses_for_pub_pred(LSrcCl).




get_file_name([of(PlFile, _, _)|_] + _, PlFile).




get_next_clause(Pred, N, SrcCl) :-
	retract(buff_raw_clause(Cl, Where)), !,
	g_assign(where, Where),
	get_next_clause2(Cl, Where, [], Pred, N, SrcCl).


get_next_clause(Pred, N, SrcCl) :-
	retract(buff_src_clause(Pred, N, SrcCl)), !,
	SrcCl = Where + _,
	g_assign(where, Where).

get_next_clause(Pred, N, SrcCl) :-
	g_read(open_file_stack, OpenFileStack),
	OpenFileStack = [of(_, Stream, _)|_],
	'$catch'(read_term(Stream, Cl, [singletons(SingNames)]), error(syntax_error(Err), _), after_syn_error, any, 0, false),
	(   var(Err) ->
	    last_read_start_line_column(L1, _),
	    '$catch'('$expand_term1'(Cl, Cl1, TermExpans), error(Err, _), expand_error(Err, Cl, Cl1), any, 0, false),
	    % ( Cl \== Cl1 -> format('Rewriting ~w -> ~w\n', [Cl, Cl1]) ; true ),
	    stream_line_column(Stream, Line, Col),
	    (   Col = 1 ->
	        L2 is Line - 1
	    ;   L2 = Line
	    ),
	    Where = OpenFileStack + (L1 - L2),
	    g_assign(where, Where),
	    get_next_clause1(Cl1, Where, SingNames, Pred, N, SrcCl, TermExpans)
	;   get_next_clause(Pred, N, SrcCl)
	), !.


get_next_clause1(LstCl, Where, SingNames, Pred, N, SrcCl, TermExpans) :-
	nonvar(TermExpans),
	list(LstCl), !,		% term_expansion/2 can return a list of clauses
	(   LstCl = [] ->
	    get_next_clause(Pred, N, SrcCl)
	;   LstCl = [Cl|LstCl1],	    
	    (   member(Cl1, LstCl1),
	        assertz(buff_raw_clause(Cl1, Where)),
	        fail
	    ;
		get_next_clause2(Cl, Where, SingNames, Pred, N, SrcCl)
	    )
	).
	    
get_next_clause1(Cl, Where, SingNames, Pred, N, SrcCl, _) :-
	get_next_clause2(Cl, Where, SingNames, Pred, N, SrcCl).


		% return the (next) source clause SrcCl from the raw clause Cl

get_next_clause2(end_of_file, _, _, Pred, N, SrcCl) :-
	close_last_prolog_file,
	g_read(open_file_stack, OpenFileStack),
	(   OpenFileStack = [] ->
	    Pred = end_of_file,
	    N = 0,
	    SrcCl = _ + end_of_file,
	    g_assign(eof_reached, t),
	    pp_stop
	;
	    get_next_clause(Pred, N, SrcCl)
	).

get_next_clause2(T, _, _, Pred, N, SrcCl) :-
	pp_handle_term(T), !,	% if succeeds, read next clause (used to skip a clause)
	get_next_clause(Pred, N, SrcCl).

get_next_clause2((:- D), Where, SingNames, Pred, N, SrcCl) :- % other directives than pp
	display_singletons(SingNames),
	(   g_read(foreign_only, f)
	;   functor(D, foreign, _)
	),
	(   handle_directive(D, Where)
	;   error('invalid directive ~q', [D])
	), !,
	get_next_clause(Pred, N, SrcCl).

get_next_clause2(Cl, Where, SingNames, Pred, N, Where + Cl) :-
	(   Cl = (Head :- _) ->
	    true
	;   Cl = Head
	),
	check_callable(Head, head),
	check_head_is_module_free(Head),
	functor(Head, Pred, N),
	check_module_clash(Pred, N),
	check_predicate(Pred, N),
	display_singletons(SingNames),
	g_read(foreign_only, f),	    % fail if --foreign-only
	embed_clause(Pred, N, Cl), !.    % fail if embed only (no compiled)

		% ignore clause with --foreign-only or if embed only
get_next_clause2(_, _, _, Pred, N, SrcCl) :-
	get_next_clause(Pred, N, SrcCl).




after_syn_error :-
	g_read(syn_error_nb, SynErrNb),
	SynErrNb1 is SynErrNb + 1,
	g_assign(syn_error_nb, SynErrNb1),
	syntax_error_info(_, Line, Column, Msg),
	g_read(open_file_stack, OpenFileStack),
	g_assign(where, OpenFileStack + (Line - Line)),
	disp_msg('syntax error', Column, '~a', [Msg]).




expand_error(existence_error(procedure,'$expand_term1'/3), Cl, Cl) :-
	!. 	% when bootstrapped with an old version of gprolog not having '$expand_term1'

expand_error(Err, Cl, Cl) :-
	last_read_start_line_column(Line, _),
	g_read(open_file_stack, OpenFileStack),
	g_assign(where, OpenFileStack + (Line - Line)),
	warn('term rewriting (DCG or term_expansion/2) raised exception: ~q', [Err]).




display_singletons(SingNames) :-
	g_read(singl_warn, t), !,
	get_singletons(SingNames, Sing),
	(   Sing = [] ->
	    true
	;   warn('singleton variables ~w', [Sing])
	).

display_singletons(_).




get_singletons([], []).

get_singletons([X = _|SingNames], Sing1) :-
	(   sub_atom(X, 0, 1, _, '_') ->
	    Sing1 = Sing
	;   Sing1 = [X|Sing]
	),
	get_singletons(SingNames, Sing).




	/* +++ begin preprocessor management +++
	 *
	 * Use a stack PPStack = [ pp(Where, Action),... ]
	 *   Where: in_then / in_else
	 *   Action: keep, ignore, ignore_all (ignore in both then and else parts)
	 *
	 * Each read term is passed to pp_handle_term. In case of success, the
	 * the next term will be read (get_next_clause). This is used to handle 
	 * preprocessor directives and to ignore a term in a false branch of 
	 * the preprocessor as :- if(fail). term_is_ignored. :- endif.
	 */

pp_handle_term((:- D)) :-
	check_callable(D, directive),
	pp_handle_directive(D), !.

pp_handle_term(_) :-
	g_read(pp_stack, [pp(_, Action)|_]),
	Action \== keep.	% success = ignore term, failure = continue with term




pp_handle_directive(if(Goal)) :-
	g_read(pp_stack, PPStack),
	(   PPStack = [pp(_, Action)|_], Action \== keep -> % fail is pp_stack is empty
	    g_assign(pp_stack, [pp(in_then, ignore_all)|PPStack])
	;   pp_exec_if_goal(Goal, PPStack, if)
	).

pp_handle_directive(elif(Goal)) :-
	(   g_read(pp_stack, [pp(in_then, Action)|PPStack]) ->
	    (   Action \== ignore ->
		g_assign(pp_stack, [pp(in_then, ignore_all)|PPStack])
	    ;	pp_exec_if_goal(Goal, PPStack, elif)
	    )
	;
	    error('unexpected elif directive', [])
	).

pp_handle_directive(else) :-
	(   g_read(pp_stack, [pp(in_then, Action)|PPStack]) ->
	    (	Action = keep, Action1 = ignore
	    ;	Action = ignore, Action1 = keep
	    ;	Action = ignore_all, Action1 = ignore_all
	    ), !,
	    g_assign(pp_stack, [pp(in_else, Action1)|PPStack])
	;
	    error('unexpected else directive', [])
	).


pp_handle_directive(endif) :-
	(   g_read(pp_stack, [_|PPStack]) ->
	    g_assign(pp_stack, PPStack)
	;   error('unexpected endif directive', [])
	).




pp_exec_if_goal(Goal, PPStack, What) :-
	(   '$catch'(Goal, Err, (warn('~a directive raised exception: ~q', [What, Err]), fail),
		     What, 1, false) ->
	    g_assign(pp_stack, [pp(in_then, keep)|PPStack])
	;   g_assign(pp_stack, [pp(in_then, ignore)|PPStack])
	).




pp_start :-
	g_assign(pp_stack, []).




pp_stop :-
	g_read(pp_stack, []), !.

pp_stop :-
	error('endif directive expected', []).


	/* +++ end preprocessor management +++ */


:- discontiguous(handle_directive/3).

% in pp_handle_directive the directive has been checked: it is a callable

handle_directive(D, Where) :-
	D =.. [DName|DLst],	% to handle include(a/1, b/2, c/3) and include([a/1, b/2, c/3]) as lists
	handle_directive(DName, DLst, Where), !.

handle_directive(D, _) :-
	warn('invalid directive is ignored: ~q', [D]).




handle_directive(public, DLst, _) :-
	!,
	check_pi_list(DLst, f),
	set_flag_for_preds(DLst, pub).

handle_directive(dynamic, DLst, Where) :-
	!,
	check_pi_list(DLst, f),
	set_flag_for_preds(DLst, dyn),
	set_flag_for_preds(DLst, pub),
	add_empty_dyn(DLst, Where).

handle_directive(multifile, DLst, Where) :-
	!,
	check_pi_list(DLst, f),
	set_flag_for_preds(DLst, multi),
	add_empty_dyn(DLst, Where).

handle_directive(discontiguous, DLst, _) :-
	!,
	check_pi_list(DLst, f),
	set_flag_for_preds(DLst, discontig).

handle_directive(compiler_mode, [CompMode], _) :-
	!,
	(   memberchk(CompMode, [default, embed, compile]),
	    g_assign(compiler_mode, CompMode)
	;   memberchk(CompMode, [embed_compile, both, embed+compile, compile+embed]),
	    g_assign(compiler_mode, embed_compile)
	), !.

handle_directive(built_in, DLst, _) :-
	!,
	check_pi_list(DLst, t),
	(   DLst = [] ->
	    g_assign(default_kind, built_in)
	;   set_flag_for_preds(DLst, bpl)
	).

handle_directive(built_in_fd, DLst, _) :-
	!,
	check_pi_list(DLst, t),
	(   DLst = [] ->
	    g_assign(default_kind, built_in_fd)
	;   set_flag_for_preds(DLst, bfd)
	).

handle_directive(ensure_linked, DLst, _) :-
	!,
	check_pi_list(DLst, f),
	(   g_read(native_code, f) ->
	    warn('ensure_linked directive ignored in byte-code compilation mode', [])
	;   add_ensure_linked(DLst)
	).

handle_directive(ensure_loaded, DLst, _) :-
	!,
	check_pi_list(DLst, f),
	warn('ensure_loaded directive not supported - directive ignored', []).

handle_directive(encoding, _, _) :-
	!,
	warn('encoding directive not supported - directive ignored', []).

handle_directive(include, [PlFile], Where) :-
	!,
	Where = _ + (L1 - _),
	prolog_file_name(PlFile, PlFile1),
	open_new_prolog_file(PlFile1, L1).

handle_directive(op, [X, Y, Z], Where) :-
	!,
	handle_init_directive(op(X, Y, Z), system, Where).

handle_directive(char_conversion, [X, Y], Where) :-
	!,
	handle_init_directive(char_conversion(X, Y), system, Where).

handle_directive(set_prolog_flag, [X, Y], Where) :-
	!,
	handle_init_directive(set_prolog_flag(X, Y), system, Where),
	(   X = singleton_warning -> % singl_warn and singleton_warning flag can be decorelated (use only flag ?)
	    (   current_prolog_flag(singleton_warning, off) ->
		g_assign(singl_warn, f)
	    ;   g_assign(singl_warn, t)
	    )
	;   true
	),
	(   X = suspicious_warning -> % idem for susp_warn and suspicious_warning flag
	    (   current_prolog_flag(suspicious_warning, off) ->
		g_assign(susp_warn, f)
	    ;   g_assign(susp_warn, t)
	    )
	;   true
	).

handle_directive(initialization, [Goal], Where) :-
	!,
	handle_init_directive(Goal, user, Where).

handle_directive(module, [Module, DLst], _) :-
	!,
	check_pi_list(DLst, f),
	check_module_name(Module, f),
	(   g_read(module_already_seen, f) ->
	    g_assign(module_already_seen, t),
	    g_assign(module, Module),
	    add_module_export_info(DLst, Module)
	;
	    error('directive module/2 already declared', [])
	).

handle_directive(use_module, [Module, DLst], _) :-
	!,
	check_module_name(Module, f),
	add_module_export_info(DLst, Module).

handle_directive(meta_predicate, [MetaDecl], Where) :-
	!,
	(   callable(MetaDecl) ->
	    functor(MetaDecl, Pred, N),
	    set_flag_for_preds(Pred/N, meta),
	    assertz(meta_pred(Pred, N, MetaDecl)),
	    set_flag_for_preds('$prop_meta_pred'/3, discontig),
	    set_flag_for_preds('$prop_meta_pred'/3, multi),
	    assertz(buff_discontig_clause('$prop_meta_pred', 3, Where+'$prop_meta_pred'(Pred, N, MetaDecl)))
	;
	    error('invalide directive meta_predicate/1 ~q', [MetaDecl])
	).

handle_directive(foreign, [Template], Where) :-
	!,
	handle_directive(foreign, [Template, []], Where).

handle_directive(foreign, _, _) :-
	g_read(call_c, f), !,
	warn('foreign directive ignored (not allowed in this mode)', []).

handle_directive(foreign, [Template, Options], Where) :-
	!,
	callable(Template),
	list(Options),
	functor(Template, Pred, N),
	(   test_pred_flag(pub, Pred, N) ->
	    error('foreign predicate ~q should not be public/dynamic', [Pred/N])
	;   true),
	define_predicate(Pred, N),
	g_assign(foreign_fct_name, Pred),
	g_assign(foreign_return, boolean),
	g_assign(foreign_bip, Pred/N),
	g_assign(foreign_choice_size, -1),
	foreign_get_options(Options),
	foreign_check_types(0, N, Template, LType),
	g_read(foreign_fct_name, FctName),
	g_read(foreign_return, Return),
	g_read(foreign_bip, BipPred),
	g_read(foreign_choice_size, ChcSize),
	mk_no_internal_transf(args(FctName, Return, BipPred, ChcSize, LType), Args),
	functor(Head, Pred, N),
	SrcCl = Where + (Head :- '$foreign_call_c'(Args)),
	assertz(buff_discontig_clause(Pred, N, SrcCl)),
	add_ensure_linked('$force_foreign_link'/0).
                     % to force the link of foreign.o and then foreign_supp.o




foreign_get_options([]).

foreign_get_options([X|Options]) :-
	foreign_get_options1(X), !,
	foreign_get_options(Options).


foreign_get_options1(fct_name(FctName)) :-
	atom(FctName),
	g_assign(foreign_fct_name, FctName).

foreign_get_options1(return(Return)) :-
	atom(Return),
	(   Return = none
	;   Return = boolean
	;   Return = jump
	),
	g_assign(foreign_return, Return).

foreign_get_options1(bip_name(X)) :-
	nonvar(X),
	X = none,
	g_assign(foreign_bip, ''/ -1).

foreign_get_options1(bip_name(BipName, BipArity)) :-
	atom(BipName),
	integer(BipArity),
	g_assign(foreign_bip, BipName/BipArity).

foreign_get_options1(bip_name(BipName/BipArity)) :-
	atom(BipName),
	integer(BipArity),
	g_assign(foreign_bip, BipName/BipArity).

foreign_get_options1(choice_size(ChcSize)) :-
	integer(ChcSize),
	g_assign(foreign_choice_size, ChcSize).




foreign_check_types(N, N, _, []) :-
	!.

foreign_check_types(I, N, Template, [(Mode, A)|LArgType]) :-
	I1 is I + 1,
	arg(I1, Template, Arg),
	nonvar(Arg),
	(   Arg = + A,
	    Mode = in
	;   Arg = - A,
	    Mode = out
	;   Arg = ? A,
	    Mode = in_out
	;   Arg = term,
	    A = term,
	    Mode = in
	),                                                     % term = +term
	nonvar(A),
	foreign_check_arg(A),
	foreign_check_types(I1, N, Template, LArgType).

foreign_check_arg(integer).
foreign_check_arg(positive).
foreign_check_arg(float).
foreign_check_arg(number).
foreign_check_arg(atom).
foreign_check_arg(boolean).
foreign_check_arg(char).
foreign_check_arg(in_char).
foreign_check_arg(code).
foreign_check_arg(in_code).
foreign_check_arg(byte).
foreign_check_arg(in_byte).
foreign_check_arg(string).
foreign_check_arg(chars).
foreign_check_arg(codes).
foreign_check_arg(term).




embed_clause(Pred, N, Cl) :-
	g_read(compiler_mode, CompMode),
	(   CompMode = default, Pred = term_expansion, N = 2
	;   CompMode = embed
	;   CompMode = embed_compile
	), !,
	(   test_pred_flag(embed, Pred, N) ->
	    true
	;   set_pred_flag(embed, Pred, N),
	    functor(Head, Pred, N),
	    retractall(Head)	% reinit when pl2wam executed under top-level
	),
	% format('Adding (assert) embed: ~w\n', [Cl]),
	assertz(Cl),
	CompMode \== embed.	% fail if embed only (do not compile)

embed_clause(_, _, _).




handle_init_directive(Goal, SystemUser, Where) :-
	embed_directive(Goal, SystemUser), !, % fail if embed only
	record_initialization(SystemUser, Goal, Where).

handle_init_directive(_, _, _).
	


embed_directive(Goal, SystemUser) :-
	g_read(compiler_mode, CompMode),
	(   CompMode = default, SystemUser = system
	;   CompMode = embed
	;   CompMode = embed_compile
	), !,
	exec_directive(Goal),
	(   current_prolog_flag(singleton_warning, off) -> % in case of :- set_prolog_flag
	    g_assign(singl_warn, f)
	;   g_assign(singl_warn, t)
	),
	CompMode \== embed.	% fail if embed only (do not compile)

embed_directive(_, _).




exec_directive(Goal) :-
	check_callable(Goal, 'directive goal'),
	'$catch'(Goal, Err, exec_directive_exception(Goal, Err), any, 0, false), !.

exec_directive(Goal) :-
	warn('directive goal failed (~q)', [Goal]).


exec_directive_exception(Goal, Err) :-
	warn('directive goal failed (~q): raised exception ~q', [Goal, Err]).




record_initialization(system, Body, Where) :-
	assertz(buff_exe_system(Where + Body)).

record_initialization(user, Body, Where) :-
	assertz(buff_exe_user(Where + Body)).



	
add_empty_dyn([], _) :-
	!.

add_empty_dyn([P1|P2], Where) :-
	!,
	add_empty_dyn(P1, Where),
	add_empty_dyn(P2, Where).

add_empty_dyn((P1, P2), Where) :-
	!,
	add_empty_dyn(P1, Where),
	add_empty_dyn(P2, Where).

add_empty_dyn(Pred/N, Where) :-
	(   clause(empty_dyn_pred(Pred, N, _), _) ->
	    true
	;   assertz(empty_dyn_pred(Pred, N, Where))
	).




add_ensure_linked([]) :-
	!.

add_ensure_linked([P1|P2]) :-
	!,
	add_ensure_linked(P1),
	add_ensure_linked(P2).

add_ensure_linked((P1, P2)) :-
	!,
	add_ensure_linked(P1),
	add_ensure_linked(P2).

add_ensure_linked(Pred/N) :-
	clause(ensure_linked(Pred, N), true), !.

add_ensure_linked(Pred/N) :-
	assertz(ensure_linked(Pred, N)).




add_module_export_info([], _) :-
	!.

add_module_export_info([P1|P2], Module) :-
	!,
	add_module_export_info(P1, Module),
	add_module_export_info(P2, Module).

add_module_export_info((P1, P2), Module) :-
	!,
	add_module_export_info(P1, Module),
	add_module_export_info(P2, Module).

add_module_export_info(Pred/N, _) :-
	clause(module_export(Pred, N, Module1), true), !,
	error('predicate ~q already exported from module ~q', [Pred/N, Module1]).

add_module_export_info(Pred/N, Module) :-
	assertz(module_export(Pred, N, Module)),
	(   test_pred_flag(def, Pred, N) ->
	    check_module_clash(Pred, N)
	;   true
	).




	% check_pi_list(DLst, EmptyOK)
check_pi_list(DLst, _) :-
	var(DLst), !,
	error('directive argument is a variable', []).

check_pi_list([], f) :-
	!,
	error('directive argument missing', []).

check_pi_list([], _) :-
	!.

check_pi_list([P1|P2], _) :-
	!,
	check_pi_list(P1, t),
	check_pi_list(P2, t).

check_pi_list((P1, P2), _) :-
	!,
	check_pi_list(P1, t),
	check_pi_list(P2, t).

check_pi_list(Pred/N, _) :-
	atom(Pred),
	integer(N),
	N >= 0, !.

check_pi_list(P, _) :-
	error('directive argument is not a valid predicate indicator (~q)', [P]).




check_callable(X, _) :-
	callable(X), !.

check_callable(X, What) :-
	var(X), !,
	error('~a is a variable', [What]).

check_callable(X, What) :-
	error('~a is not a callable (~q)', [What, X]).




	% check_module_name(Module, VarOK)
check_module_name(Module, t) :-
	var(Module), !.

check_module_name(Module, _) :-
	atom(Module), !.

check_module_name(Module, _) :-
	error('invalid module name (~q) should be an atom', [Module]).

/*
check_module_name(Module, _) :-
	atom(Module),
	\+ atom_property(Module, needs_quotes), !.

check_module_name(Module, _) :-
	error('invalid module name (~q) should only contain lower chars', [Module]).
*/




check_head_is_module_free(Module:Head) :-
	!,
	error('module qualification is not allowed for the head of a clause (~q)',
	      [Module:Head]).

check_head_is_module_free(_).




check_module_clash(Pred, N) :-  % Pred/N is defined in current module check for clash with an import
	clause(module_export(Pred, N, Module), true), !,
	g_read(module, Module1),
	Module \== Module1, !,
	error('clash on ~q - defined in module ~q (here) and imported from ~q',
	      [Pred/N, Module1, Module]).

check_module_clash(_, _).




get_owner_module(Pred, N, Module) :-
	clause(module_export(Pred, N, Module), true), !,
	Module \== system, !.

get_owner_module(_, _, _).



is_exported(Pred, N) :-
	clause(module_export(Pred, N, _), true), !.




get_module_of_cur_pred(Module) :-
	cur_pred(Pred, N),
	(   test_pred_flag(bpl, Pred, N) ->
	    Module = system
	;   test_pred_flag(bfd, Pred, N) ->
	    Module = system
	;   g_read(module, Module)
	).




set_flag_for_preds([], _) :-
	!.

set_flag_for_preds([P1|P2], Flag) :-
	!,
	set_flag_for_preds(P1, Flag),
	set_flag_for_preds(P2, Flag).

set_flag_for_preds((P1, P2), Flag) :-
	!,
	set_flag_for_preds(P1, Flag),
	set_flag_for_preds(P2, Flag).

set_flag_for_preds(Pred/N, Flag) :-
	set_flag_for_preds1(Flag, Pred, N).
	

set_flag_for_preds1(_, Pred, N) :-
	test_pred_flag(def, Pred, N), !,
	warn('directive occurs after definition of ~q - directive ignored',
	     [Pred/N]).

set_flag_for_preds1(-Flag, Pred, N) :-
	!,
	unset_pred_flag(Flag, Pred, N).

set_flag_for_preds1(bpl, Pred, N) :-
	unset_pred_flag(bfd, Pred, N),
	fail.

set_flag_for_preds1(bfd, Pred, N) :-
	unset_pred_flag(bpl, Pred, N),
	fail.

set_flag_for_preds1(bfd, Pred, N) :-
	unset_pred_flag(bpl, Pred, N),
	fail.

set_flag_for_preds1(Flag, Pred, N) :-
	set_pred_flag(Flag, Pred, N).




define_predicate(F, N) :-
	set_pred_flag(def, F, N),
	test_pred_flag(bpl, F, N), !.

define_predicate(F, N) :-
	test_pred_flag(bfd, F, N), !.

define_predicate(F, N) :-
	g_read(default_kind, built_in), !,
	set_pred_flag(bpl, F, N).

define_predicate(F, N) :-
	g_read(default_kind, built_in_fd), !,
	set_pred_flag(bfd, F, N).

define_predicate(_, _).




flag_bit(def, 0).
flag_bit(dyn, 1).
flag_bit(pub, 2).
flag_bit(bpl, 3).
flag_bit(bfd, 4).
flag_bit(discontig, 5).
flag_bit(need_cut_level, 6).
flag_bit(meta, 7).
flag_bit(multi, 8).
flag_bit(embed, 9).




/* Version with assert/retract */
set_pred_flag(Flag, F, N) :-
	flag_bit(Flag, Bit),
	(   retract(pred_info(F, N, InfoMask)), !
	;   InfoMask = 0
	), !,
	InfoMask1 is InfoMask \/ 1 << Bit,
	assertz(pred_info(F, N, InfoMask1)).




unset_pred_flag(Flag, F, N) :-
	flag_bit(Flag, Bit),
	retract(pred_info(F, N, InfoMask)), !,
	InfoMask1 is InfoMask /\ \ (1 << Bit),
	assertz(pred_info(F, N, InfoMask1)).

unset_pred_flag(_, _, _).




test_pred_flag(Flag, F, N) :-
	flag_bit(Flag, Bit),
	clause(pred_info(F, N, InfoMask), _), !,
	InfoMask /\ 1 << Bit > 0.




test_not_pred_flag(Flag, F, N) :-
	flag_bit(Flag, Bit),
	clause(pred_info(F, N, InfoMask), _), !,
	InfoMask /\ 1 << Bit =:= 0.

test_not_pred_flag(_, _, _).	% succeeds if not clause defined for F/N




/* Alternative version with g_assign (same speed) but would need a reset (like retractall)
set_pred_flag(Flag, F, N) :-
	flag_bit(Flag, Bit),
	f_n_to_key(F, N, Key),
	g_read(Key, InfoMask),
	InfoMask1 is InfoMask \/ 1 << Bit,
	g_assign(Key, InfoMask1).




unset_pred_flag(Flag, F, N) :-
	flag_bit(Flag, Bit),
	f_n_to_key(F, N, Key),
	g_read(Key, InfoMask),
	InfoMask1 is InfoMask /\ \ (1 << Bit),
	g_assign(Key, InfoMask1).




test_pred_flag(Flag, F, N) :-
	flag_bit(Flag, Bit),
	f_n_to_key(F, N, Key),
	g_read(Key, InfoMask),
	InfoMask /\ 1 << Bit > 0.



   
test_not_pred_flag(Flag, F, N) :-
	flag_bit(Flag, Bit),
	f_n_to_key(F, N, Key),
	g_read(Key, InfoMask),
	InfoMask /\ 1 << Bit =:= 0.




f_n_to_key(F, N, Key) :-
	format_to_atom(Key, '$~a/~d', [F, N]).
*/



check_predicate(Pred, N) :-
	reserved_predicate(Pred, N), !,
	error('defining reserved predicate ~q', [Pred/N]).

check_predicate(Pred, N) :-
	g_read(redef_error, t),
	control_construct(Pred, N), !,
	error('redefining control construct ~q', [Pred/N]).

check_predicate(Pred, N) :-
	g_read(redef_error, t),
	bip(Pred, N), !,
	error('redefining built-in predicate ~q', [Pred/N]).

check_predicate(Pred, N) :-
	g_read(susp_warn, t),
	suspicious_predicate(Pred, N), !,
	warn('suspicious predicate ~q', [Pred/N]).

check_predicate(Pred, N) :-
	'$aux_name'(Pred), !,
	warn('using system auxiliary predicate ~q', [Pred/N]).

check_predicate(_, _).


      /* (:-)/1-2 cannot be defined (WG17 https://www.complang.tuwien.ac.at/ulrich/iso-prolog/stc#56)
       * (:-)/1 will be treated as a directive (maybe unknown) - we only have to check (:-)/2 here
       */
reserved_predicate(':-', 1).


bip(F, N) :-
	'$predicate_property1'(F, N, built_in), !.
/* no longer needed built_in_fd ==> built_in
bip(F, N) :-
	'$predicate_property1'(F, N, built_in_fd).
*/


control_construct(',', 2).
control_construct(;, 2).
control_construct(->, 2).
control_construct(!, 0).
control_construct(fail, 0).
control_construct(true, 0).
control_construct(call, 1).
control_construct(catch, 3).
control_construct(throw, 1).

%suspicious_predicate(',', 2).
%suspicious_predicate(;, 2).
%suspicious_predicate(->, 2).
%suspicious_predicate(!, 0).
suspicious_predicate(:, 2).
suspicious_predicate(:-, 1).
suspicious_predicate(:-, 2).
suspicious_predicate(-->, 2).
suspicious_predicate({}, X) :- X < 2.
suspicious_predicate(+, 2).
suspicious_predicate(-, 2).
suspicious_predicate(*, 2).
suspicious_predicate(/, 2).
suspicious_predicate(//, 2).




warn(Msg, LArg) :-
	disp_msg(warning, 0, Msg, LArg).




error(Msg, LArg) :-
	disp_msg('fatal error', 0, Msg, LArg),
	repeat,                                      % close all opened files
	(   close_last_prolog_file ->
	    fail
	;   !
	),
	abandon_exec.




abandon_exec :-
	abort.




disp_msg(MsgType, Column, Msg, LArg) :-
	numbervars(LArg),
	g_read(where, Where),
	(   Where = OpenFileStack + L12,
	    L12 = _ - _ ->
	    disp_file_name(OpenFileStack, _, _),
	    disp_lines(L12),
	    disp_column(Column)
	;   true
	),
	format('~a: ', [MsgType]),
	format(Msg, LArg),
	nl.




disp_file_name([], _, _) :-
	!.

disp_file_name([of(PlFile, _, ParIncLine1)|OpenFileStack], First, ParIncLine) :-
	disp_file_name(OpenFileStack, First, ParIncLine1),
	(   var(ParIncLine) ->
	    format('~a', [PlFile])
	;
	    (	var(First) ->
		First = f,
		Prefix = 'In file included'
	    ;	Prefix = '                '
	    ),
	    format('~a from ~a:~d~n', [Prefix, PlFile, ParIncLine])
	).




disp_lines(L - L) :-
	!,
	format(':~d', [L]).

disp_lines(L1 - L2) :-
	format(':~d-~d', [L1, L2]).



disp_column(Column) :-
	Column > 0, !,
	format(':~d: ', [Column]).

disp_column(_) :-
	write(': ').




          % Exception recovery

exception(error(syntax_error(_), _)) :-
	!,
	syntax_error_info(_, Line, Char, Msg),
	g_read(open_file_stack, OpenFileStack),
	g_assign(where, OpenFileStack + (Line - Line)),
	error('syntax error: ~a (char:~d)', [Msg, Char]).

exception(error(existence_error(source_sink, File), _)) :-
	!,
	error('cannot open file ~a - does not exist', [File]).

exception(error(permission_error(open, source_sink, File), _)) :-
	!,
	error('cannot open file ~a - permission error', [File]).

exception(abandon_exec) :-
	abort.

exception(Err) :-
	error('exception raised: ~q', [Err]).

/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : syn_sugar.pl                                                    *
 * Descr.: pass 1: syntactic sugar removing                                *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


    /* for auxiliary predicates we do not restart the aux counter
     * but instead we continue sequentially.
     * All aux predicates stemming from p/n have the same prefix
     * (father pred p/n).
     */
  
syntactic_sugar_init_pred(Pred, _, _) :-
	'$aux_name'(Pred), !.

    /* Caution: the aux predicates stemming from a multifile pred p/n can
     * cause name clashes when compiled to byte-code.
     * These aux pred names are named p/n_$aux<K> where K is a seq number.
     * Since these predicates are also stored in the global predicate table
     * 2 clauses for p/n (defined in p1.pl and p2.pl) giving rise to aux
     * predicates will produce 2 clashing p/n_$aux1.
     * We here use the hash of the file name and a random number for the
     * starting aux number.
     */

syntactic_sugar_init_pred(Pred, N, PlFile) :-
	(   g_read(native_code, f), test_pred_flag(multi, Pred, N) ->
	    randomize,
	    term_hash(PlFile, H),
	    Max is (1 << 26),
	    random(1, Max, R),
	    Aux is (H + R) /\ (Max - 1) % avoid negative number
	;
	    Aux = 1
	),
	g_assign(aux, Aux).




syntactic_sugar(Cl, Head, Body2) :-
	(   Cl = (Head :- Body)
	;   Cl = Head,
	    Body = true
	), !,
	normalize_cuts(Body, Body1, _HasCut),
	normalize_alts(Body1, Head, Body2).


 /*
  * Cuts
  *
  * The compilation of cut in p/n requires to:
  *    1) copy the value of B at the entry of the p/n
  *    2) restore B with this copy when the cut ! occurs
  *
  * In 1), the instruction to copy B must occur before the code of any clause
  * (i.e. before any choice-point creation of the predicate).
  * Here, we generate a '$get_cut_level'(V) at the beginning of a clause
  * contianing cuts and a '$cut'(V) for each effective cut.
  *
  * If p/n (with args in X(0)..X(n-1)) has cuts, B is copied into X(n)
  * with a get_current_choice(X(n)) instruction. This must occur before any
  * choice-point creation instruction (in indexing.pl).
  * NB: if X(n) is used for the cut level, it must be saved in choice-points
  * in the case of a cut occurs in a following clause. For this we generate a
  * pragma_arity(N+1) which adjust the number of arguments to save in the
  * choice-points (indexing.pl).
  *
  * A '$get_cut_level'(V) will give rise to a simple copy instruction X(n)->V
  * (in code_gen.pl).
  * A '$cut'(V) will produce a cut(V) WAM instruction.
  * 
  *
  * If-Then/If-Then-Else
  *
  * (If -> Then) is rewritten as
  *   '$get_current_choice'(X), If, '$cut'(X).
  *
  * (If -> Then ; Else) is rewritten as
  *   ('$get_cut_level'(X), If, '$cut'(X), Then ; Else)
  * which will give rise to an auxiliary predicate:
  *
  *   'p/n_$auxK' :- '$get_cut_level'(X), If, '$cut'(X), Then.
  *   'p/n_$auxK' :- Else.
  * 
  * Soft-Cut
  *
  * A soft-cut preserve the alternatives of If and only "cut" the Else
  * alternative. For this the soft_cut(B') WAM instruction "forgets" the
  * choice-point pointed by B' (choice-points are traversed from the top B
  * until B' is encountered ; it is then unlinked).
  * While a cut instruction points to the last choice-point to keep) a
  * a  soft-cut instruction points to the choice-point to kill.
  *
  * (If *-> Then) is equivalent to and rewritten as
  *   (If, Then)
  *
  * (If *-> Then ; Else) is rewritten as
  *   '$get_current_choice'(X), If, '$soft_cut'(X), Then ; Else
  * which will give rise to an auxiliary predicate:
  *   'p/n_$auxK' :- '$get_current_choice'(X), If, '$soft_cut'(X), Then
  *   'p/n_$auxK' :- Else.
  *
  * Cut opacity:
  *
  * In -> or *->, the If part is not transparent to cut (ie. opaque). A cut in
  * the If part is thus local to the If (think to a call(If) instead of If).
  * e.g. (If -> Then ; Else)  <==>  (call(If) -> Then ; Else)
  *
  * If a cut occurs in If, '$cut'(X) is produced to restore B to the
  * choice point recorded just before the If. Cuts in Then or Else give rise
  * to a classical '$cut'(V) as explained at the beginning.
  */

normalize_cuts(Body, Body2, HasCut) :-
	normalize_cuts1(Body, CutVar, Body1, HasCut), !,
	(   HasCut == t ->
	    Body2 = ('$get_cut_level'(CutVar), Body1)
	;
	    Body2 = Body1
	).




normalize_cuts1(P, CutVar, P1, HasCut) :-
	var(P),
	normalize_cuts1(call(P), CutVar, P1, HasCut).

normalize_cuts1(!, CutVar, '$cut'(CutVar), t).

normalize_cuts1((IfThen ; R), CutVar, Body, HasCut) :-
	nonvar(IfThen),
	(   IfThen = (P -> Q),
	    Body1 = ('$get_cut_level'(CutVar1), P1, '$cut'(CutVar1), Q1 ; R1)
	;
	    IfThen = (P *-> Q),
	    Body1 = ('$get_current_choice'(CutVar1), P1, '$soft_cut'(CutVar1), Q1 ; R1)
	),
	normalize_cuts1(R, CutVar, R1, HasCut),
	(   g_read(optim_fail, t), R1 == fail ->
	    normalize_cuts1(IfThen, CutVar, Body, HasCut)
	;
	    normalize_cuts_in_if(P, P1),
	    normalize_cuts1(Q, CutVar, Q1, HasCut),
	    Body = Body1
	).

normalize_cuts1((P -> Q), CutVar, Body, HasCut) :-
	normalize_cuts1(P, CutVar1, P1, _HasCut1),
	normalize_cuts1(Q, CutVar, Q1, HasCut),
	Body = ('$get_current_choice'(CutVar1), P1, '$cut'(CutVar1), Q1).

	% P *-> Q alone (i.e. not inside a ;) is logically the same as P, Q. 
normalize_cuts1((P *-> Q), CutVar, (P1, Q1), HasCut) :-
	normalize_cuts_in_if(P, P1),
	normalize_cuts1(Q, CutVar, Q1, HasCut).

normalize_cuts1((P ; Q), CutVar, Body, HasCut) :-
	normalize_cuts1(P, CutVar, P1, HasCut),
	normalize_cuts1(Q, CutVar, Q1, HasCut),
	(   g_read(optim_fail, t), P1 == fail, Body = Q1
	;
	    g_read(optim_fail, t), Q1 == fail, Body = P1
	;
	    Body = (P1; Q1)
	).
	    
normalize_cuts1((P, Q), CutVar, (P1, Q1), HasCut) :-
	normalize_cuts1(P, CutVar, P1, HasCut),
	normalize_cuts1(Q, CutVar, Q1, HasCut).

normalize_cuts1(Module:G, CutVar, Body, HasCut) :-
	check_module_name(Module, t),
	normalize_cuts1(G, CutVar, G1, HasCut),
	distrib_module_qualif(G1, Module, G2),
	(   G2 = M2:_, var(M2) ->
	    normalize_cuts1(call(G2), CutVar, Body, _)
	;
	    Body = G2
	).

normalize_cuts1(call(G), _, '$call'(G, Func, Arity, true), _HasCut) :-
%	get_module_of_cur_pred(Module), % then use a '$call'(G, Module, Func, Arity, true)
	cur_pred_without_aux(Func, Arity).

normalize_cuts1(catch(G, C, R), _, '$catch'(G, C, R, Func, Arity, true), _HasCut) :-
	cur_pred_without_aux(Func, Arity).

normalize_cuts1(throw(B), _, '$throw'(B, Func, Arity, true), _HasCut) :-
	cur_pred_without_aux(Func, Arity).

normalize_cuts1(P, _, P1, _HasCut) :-
	(   callable(P) ->
	    meta_pred_rewriting(P, P1)
	;
	    error('body goal is not callable (~q)', [P])
	).




	/* A cut in the if-part is local (if-part is opaque)
	 * If a cut appears we have to get the current choice point
	 * at the entry of the if-part and use it for cuts in the if-part.
	 */

normalize_cuts_in_if(P, Body) :-
	normalize_cuts1(P, CutVar, P1, HasCut),
	(   HasCut == t ->
	    Body = ('$get_current_choice'(CutVar), P1)
	;
	    Body = P1
	).




distrib_module_qualif((P ; Q), M, (P1 ; Q1)) :-
	!,
	distrib_module_qualif(P, M, P1),
	distrib_module_qualif(Q, M, Q1).

distrib_module_qualif((P -> Q), M, (P1 -> Q1)) :-
	!,
	distrib_module_qualif(P, M, P1),
	distrib_module_qualif(Q, M, Q1).

distrib_module_qualif((P , Q), M, (P1 , Q1)) :-
	!,
	distrib_module_qualif(P, M, P1),
	distrib_module_qualif(Q, M, Q1).

distrib_module_qualif(M:G, _, G1) :-
	!,
	check_module_name(M, t),
	distrib_module_qualif(G, M, G1).

distrib_module_qualif(!, _, !) :-
	!.

distrib_module_qualif(P, M, M:P).

distrib_module_qualif_goal(G, _, G) :-
	nonvar(G),
	G = M:_, !,		% already qualifed with a module
	check_module_name(M, t).

distrib_module_qualif_goal(G, M, M:G).



normalize_alts(Body, Head, Body1) :-
	functor(Head, Pred, N),
	g_assign(head_functor, Pred),
	g_assign(head_arity, N),
	normalize_alts1(Body, Head, Body1), !.


normalize_alts1(X, _, call(X)) :-
	var(X).

normalize_alts1((P, Q), RestC, (P1, Q1)) :-
	normalize_alts1(P, (RestC, Q), P1),
	normalize_alts1(Q, (RestC, P), Q1).

normalize_alts1(Body, RestC, AuxPred) :-
	functor(Body, ';', 2),
	lst_var(RestC, [], VarRestC),
	lst_var(Body, [], VarAlt),
	set_inter(VarAlt, VarRestC, V),
	length(V, AuxN),
	g_read(head_functor, Pred),
	g_read(head_arity, N),
	init_aux_pred_name(Pred, N, AuxName, AuxN),
	AuxPred =.. [AuxName|V],
	g_read(where, Where),
	linearize(Body, AuxPred, Where, LAuxCl),
	asserta(buff_aux_pred(AuxName, AuxN, LAuxCl)).

normalize_alts1(P, _, P1) :-
	pred_rewriting(P, P1), !.




init_aux_pred_name(Pred, N, AuxName, AuxN) :-
	g_read(aux, Aux),
	Aux1 is (Aux + 1) /\ (1 << 26 - 1),  % avoid negative numbers
	g_assign(aux, Aux1),
	'$make_aux_name'(Pred, N, Aux, AuxName),
	(   test_pred_flag(bpl, Pred, N), % useful ?
	    set_pred_flag(bpl, AuxName, AuxN)
	;   test_pred_flag(bfd, Pred, N),
	    set_pred_flag(bfd, AuxName, AuxN)
	;   true
	), !.




linearize(Body, AuxPred, Where, LAuxCl) :-
	(   Body = (P ; Q) ->
	    linearize(Q, AuxPred, Where, LAuxCl1),
	    linearize1(P, AuxPred, Where, LAuxCl2),
	    append(LAuxCl2, LAuxCl1, LAuxCl)
	;
	    linearize1(Body, AuxPred, Where, LAuxCl)
	).

/* should no longer occurs since detected in normalize_cuts - to be removed
linearize1(fail, _, _, []) :-
	g_read(optim_fail, t), !.
*/
linearize1(P, AuxPred, Where, [Where + AltP]) :-
	copy_term((AuxPred :- P), AltP).




lst_var(X, V, V1) :-
	var(X), !,
	set_add(V, X, V1).

lst_var(P, V, V1) :-
	functor(P, _, N),
	lst_var_args(1, N, P, V, V1).



lst_var_args(I, N, P, V, V2) :-
	(   I =< N ->
	    arg(I, P, ArgP),
	    lst_var(ArgP, V, V1),
	    I1 is I + 1,
	    lst_var_args(I1, N, P, V1, V2)
	;   V2 = V
	).




        % Other predicate rewriting

pred_rewriting(fd_tell(X), T) :-                          % FD transformation
	test_c_call_allowed(fd_tell/1),
	pred_rewriting('$call_c'(X, [boolean]), T).

pred_rewriting(set_bip_name(Name, Arity), Pred1) :-
	g_read(inline, t),      % also if byte code since implies --no-inline
	(   atom(Name), integer(Arity) ->
	    CallC = '$call_c'('Pl_Set_Bip_Name_Untagged_2'(Name, Arity), [by_value])
	;
	    CallC = '$call_c'('Pl_Set_Bip_Name_2'(Name, Arity))
	),
	pred_rewriting(CallC, Pred1).

pred_rewriting(Pred, Pred1) :-                     % math define current bip
	g_read(inline, t),      % also if byte code since implies --no-inline
	g_read(fast_math, f),
	functor(Pred, F, 2),
	(   F = (is)
	;   math_cmp_functor_name(F, _)
	),					            % see code_gen.pl
	pred_rewriting(set_bip_name(F, 2), T),
	Pred1 = (T, Pred).

pred_rewriting(term_hash(Term, Hash), Pred1) :-
	g_read(inline, t),      % also if byte code since implies --no-inline
	catch(term_hash(Term, Hash1), _, fail), % if there is an error, do not inline !
	integer(Hash1), !,
	pred_rewriting(set_bip_name(term_hash, 2), T),
	pred_rewriting('$call_c'('Pl_Un_Integer_Check'(Hash1, Hash), [boolean]), T2),
	Pred1 = (T, T2).

pred_rewriting(term_hash(Term, Depth, Range, Hash), Pred1) :-
	g_read(inline, t),      % also if byte code since implies --no-inline
	catch(term_hash(Term, Depth, Range, Hash1), _, fail), % if there is an error, do not inline !
	integer(Hash1), !,
	pred_rewriting(set_bip_name(term_hash, 4), T),
	pred_rewriting('$call_c'('Pl_Un_Integer_Check'(Hash1, Hash), [boolean, by_value]), T2),
	Pred1 = (T, T2).

	/* The user should use: '$call_c'(F) or '$call_c'(F, LCOpt)
	 * LCOpt is a list possibly containing:
	 *   a Ret: either void, jump, boolean or ret(RetVar)
	 *   fast_call (use a fact call convention)
	 *   tagged (use tagged calls for atom, integers and F/N)
	 *   by_value (pass atom, numbers, F/N by value not by WamWord)
	 *   use_x_regs (the function can destroy any X register)
	 *
	 * At end of syn_sugar any '$call_c' becomes a '$call_c'/2.
	 * Backward compatibility: '$call_c_test'/1 and '$call_c_jump'/1 are
	 * kept for the moment...
	 */

pred_rewriting('$call_c'(F, LCOpt), '$call_c'(F, LCOpt1)) :-
	test_c_call_allowed('$call_c'/2),
	check_callable(F, 'C function name'),
	mk_no_internal_transf(LCOpt, LCOpt1).   % keep "as is"

pred_rewriting('$call_c'(F), T) :-		% shortcut version
	test_c_call_allowed('$call_c'/1),
	pred_rewriting('$call_c'(F, []), T).

pred_rewriting('$call_c_test'(F), T) :-		% backward compatibility
	test_c_call_allowed('$call_c_test'/1),
	pred_rewriting('$call_c'(F, [boolean]), T).

pred_rewriting('$call_c_jump'(F), T) :-		% backward compatibility
	test_c_call_allowed('$call_c_jump'/1),
	pred_rewriting('$call_c'(F, [jump]), T).

pred_rewriting(P, P).



test_c_call_allowed(_) :-
	g_read(call_c, t), !.

test_c_call_allowed(X) :-
	error('~q not allowed in this mode', [X]).




          % can be considered as inline (neither CP nor X regs to save)

not_dangerous_c_call([]).

not_dangerous_c_call([COpt|LCOpt]) :-
	COpt \== jump,
	COpt \== use_x_regs,
	not_dangerous_c_call(LCOpt).




add_wrapper_to_dyn_clause(Pred, N, Where + Cl, AuxName) :-
	init_aux_pred_name(Pred, N, AuxName, N),
	(   Cl = (Head :- Body) ->
	    head_wrapper(Head, AuxName, Head1),
	    Cl1 = (Head1 :- Body)
	;   head_wrapper(Cl, AuxName, Cl1)
	),
	assertz(buff_aux_pred(AuxName, N, [Where + Cl1])).


head_wrapper(Head, AuxName, Head1) :-
	Head =.. [_|LArgs],
	Head1 =.. [AuxName|LArgs].



	% meta_predicate rewriting

/* ignore until module support
meta_pred_rewriting(P1, P2) :-
	nonvar(P1),
	functor(P1, Pred, N),
	clause(meta_pred(Pred, N, MetaDecl), _), !,
	functor(P2, Pred, N),
	meta_pred_rewrite_args(1, N, P1, MetaDecl, P2).
*/
meta_pred_rewriting(P, P).




meta_pred_rewrite_args(I, N, P1, MetaDecl, P2) :-
	I =< N, !,
	arg(I, P1, A1),
	arg(I, P2, A2),
	arg(I, MetaDecl, Spec),
	meta_pred_rewrite_arg(Spec, A1, A2),
	I1 is I + 1,
	meta_pred_rewrite_args(I1, N, P1, MetaDecl, P2).

meta_pred_rewrite_args(_, _, _, _, _).




meta_pred_rewrite_arg(Spec, A, A) :-
	var(Spec), !.

meta_pred_rewrite_arg(:, A1, A2) :-
	!,
	meta_pred_rewrite_arg(0, A1, A2).

meta_pred_rewrite_arg(Spec, A1, '$mt'(Module, A1)) :-
	integer(Spec), !,
%	functor(A1, F, N), (F \== '$mt' ;  N \== 2), !, % do not nest meta_term args
	get_module_of_cur_pred(Module).

meta_pred_rewrite_arg(_, A, A).

/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : internal.pl                                                     *
 * Descr.: pass 2: internal format transformation                          *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


/*-------------------------------------------------------------------------*
 * predicate internal format: (I(t)=internal format of t)                  *
 *                                                                         *
 * I(p(Arg1,..., ArgN)): p(NoPred, Module, Pred/N, [I(Arg1), ..., I(ArgN)])*
 *                                                                         *
 * NoPred : predicate number = corresponding chunk number                  *
 *                                                                         *
 * Module: module qualification or module owner if export (a variable else)*
 *         used to qualify a call to a predicate (see code_gen.pl)         *
 *                                                                         *
 * Pred/N : predicate/arity                                                *
 *                                                                         *
 * I(Argi): internal format of the ith argument                            *
 *                                                                         *
 *    var : var(VarName, Info) with:                                       *
 *          VarName = x(NoX) temporary                                     *
 *                    (here NoX is unbound or = void if var is singleton)  *
 *                    y(NoY) permanent (NoY is assigned here)              *
 *          Info    = in_heap       : the var is stored in the heap        *
 *                    unsafe        : the var refers current environment   *
 *                    not_in_cur_env: the var does not reside in the       *
 *                                    current environment                  *
 *          (here Info is unbound)                                         *
 *                                                                         *
 *    atom []       : nil                                                  *
 *    atom (others) : atm(atom)                                            *
 *    integer       : int(integer)                                         *
 *    float         : flt(float)                                           *
 *    f(A1, ..., An): stc(f, n, [I(A1), ..., I(An)])  ([H|T] = '.'(H, T))  *
 *                                                                         *
 * NB: a true/0 in the body of a clause is removed.                        *
 *     variables are classified and permanent variables are assigned       *
 *     (temporary = x(_), permanent = y(i))                                *
 *-------------------------------------------------------------------------*/

internal_format(Head, Body, Head1, Body1, NbChunk, NbY) :-
	format_head(Head, DicoVar, Head1),
	format_body(Body, DicoVar, Body1, NbChunk),
	classif_vars(DicoVar, 0, NbY).




format_head(Head, DicoVar, Head1) :-
	g_read(module, Module),	% not really necessary since Module info in p(...) is never used
	format_pred(Module:Head, 0, DicoVar, Head1, _).




format_body(Body, DicoVar, Body1, NbChunk) :-
	format_body1(Body, 0, DicoVar, t, [], Body1, NbChunk, _).

format_body1((P, Q), NoPred, DicoVar, StartChunk, LNext, P1, NoPred2, StartChunk2) :-
	!,
	format_body1(P, NoPred, DicoVar, StartChunk, Q1, P1, NoPred1, StartChunk1),
	format_body1(Q, NoPred1, DicoVar, StartChunk1, LNext, Q1, NoPred2, StartChunk2).

format_body1(true, NoPred, _, StartChunk, LNext, LNext, NoPred, StartChunk) :-
	!.

format_body1(Pred, NoPred, DicoVar, StartChunk, LNext, [Pred1|LNext], NoPred1, StartChunk1) :-
	(   StartChunk = t ->
	    NoPred1 is NoPred + 1
	;   NoPred1 = NoPred
	),
	format_pred(Pred, NoPred1, DicoVar, Pred1, InlinePred),
	(   InlinePred = t ->
	    StartChunk1 = f
	;   StartChunk1 = t
	).



          % NB: a dangerous '$call_c' (e.g. with jump) is not considered as
          % inlined to enforce the end of its chunk. If something comes
          % after this '$call_c' an environment will be created (allocate)
          % to save CP (and X regs in Y regs if needed).
          % Other '$call_c' are considered as inlined.

format_pred(Module:Pred, NoPred, DicoVar, p(NoPred, Module, FN, ArgLst), InlinePred) :-
	!,
	format_pred(Pred, NoPred, DicoVar, p(NoPred, _, FN, ArgLst), InlinePred).

format_pred(Pred, NoPred, DicoVar, p(NoPred, Module, F/N, ArgLst1), InlinePred) :-
	functor(Pred, F, N),
	get_owner_module(F, N, Module),
	Pred =.. [_|ArgLst],
	format_arg_lst(ArgLst, NoPred, DicoVar, ArgLst1),
	(   (   inline_predicate(F, N)
            ;   F = '$call_c',
	        N = 2,
		ArgLst1 = [_FctName, LCOpt],  % no_internal_transf marker has been removed
	        not_dangerous_c_call(LCOpt)
	    ) ->
	    InlinePred = t
	;   InlinePred = f
	).




format_arg_lst([], _, _, []).

format_arg_lst([Arg|ArgLst], NoPred, DicoVar, [Arg1|ArgLst1]) :-
	format_arg(Arg, NoPred, DicoVar, Arg1), !,
	format_arg_lst(ArgLst, NoPred, DicoVar, ArgLst1).




format_arg(Var, NoPred, DicoVar, V) :-
	var(Var),
	add_var_to_dico(DicoVar, Var, NoPred, V).

format_arg(T, NoPred, DicoVar, T2) :-
	mk_no_internal_transf(T1, T), % has T the no_internal_transf marker ?
	(   ground(T1) ->
	    T2 = T1
	;   format_arg_only_var(T1, NoPred, DicoVar, T2)
	).

format_arg([], _, _, nil).

format_arg(A, _, _, atm(A)) :-
	atom(A).

format_arg(N, _, _, int(N)) :-
	integer(N).

format_arg(N, _, _, flt(N)) :-
	float(N).

format_arg(T, NoPred, DicoVar, stc(F, N, ArgLst1)) :-
	functor(T, F, N),
	T =.. [_|ArgLst],
	format_arg_lst(ArgLst, NoPred, DicoVar, ArgLst1).




	% as above but only variables are put in internal format (no_internal_transf)

format_arg_lst_only_var([], _, _, []).

format_arg_lst_only_var([Arg|ArgLst], NoPred, DicoVar, [Arg1|ArgLst1]) :-
	format_arg_only_var(Arg, NoPred, DicoVar, Arg1), !,
	format_arg_lst_only_var(ArgLst, NoPred, DicoVar, ArgLst1).




format_arg_only_var(Var, NoPred, DicoVar, V) :-
	var(Var),
	format_arg(Var, NoPred, DicoVar, V).

format_arg_only_var(T, _, _, T) :-
	atomic(T).

format_arg_only_var(T, NoPred, DicoVar, T1) :-
	functor(T, F, N),
	(   F = '.', N = 2 ->	% a list
	    format_arg_lst_only_var(T, NoPred, DicoVar, T1)
	;   T =.. [_|ArgLst],
	    format_arg_lst_only_var(ArgLst, NoPred, DicoVar, ArgLst1),
	    T1 =.. [F|ArgLst1]
	).




	/* Creates a term T1 equivalent to T marked as no_internal_transf
	 * The T1 ground subterms will not transformed in the internal format
	 * (vars will be transformed - used for '$call_c' with a RetVar).
	 * This can only by used for arguments of some inlined predicates.
	 *
	 * Mark is done with a special functor '$no_internal_transf$'/1.
	 * Use mk_no_internal_transf to create such a term (so this is
	 * the only location defining the marker term and for bootstrapping).
	 * Change the mark here if needed.
	 */

          % NB: do not use T1 = '$no_internal_transf$'(T) for bootstrapping.
mk_no_internal_transf(T, T1) :-
	functor(T1, '$no_internal_transf$', 1), % the only location the marker is defined/used
	arg(1, T1, T).




          % DicoVar=[ v(Var, NoPred1stOcc, Singleton, V), ... | EndVar ]
          %
          % Singleton = f or unbound variable
          % V = var(VarName, VarInfo)
          % VarName = x(_) or y(_)
          % Info is unbound

add_var_to_dico(DicoVar, Var, NoPred1stOcc, V) :-
	var(DicoVar), !,
	V = var(_, _),
	DicoVar = [v(Var, NoPred1stOcc, _, V)|_].

add_var_to_dico([v(Var1, NoPred1stOcc1, Singleton, V)|_], Var2, NoPred1stOcc2, V) :-
	Var1 == Var2, !,
	V = var(VarName, _),
	Singleton = f,
	(   var(VarName),
	    NoPred1stOcc1 \== NoPred1stOcc2,
	    NoPred1stOcc2 > 1 ->
	    VarName = y(_)
	;   true
	).

add_var_to_dico([_|DicoVar], Var, NoPred1stOcc, V) :-
	add_var_to_dico(DicoVar, Var, NoPred1stOcc, V).




classif_vars([], NbY, NbY) :-
	!.

classif_vars([v(_, _, Singleton, var(VarName, _))|DicoVar], Y, NbY) :-
	var(VarName), !,
	(   var(Singleton) ->
	    VarName = x(void)
	;   VarName = x(_)
	),
	classif_vars(DicoVar, Y, NbY).

classif_vars([v(_, _, _, var(y(Y), _))|DicoVar], Y, NbY) :-
	Y1 is Y + 1,
	classif_vars(DicoVar, Y1, NbY).




	% Inline predicates: inline_predicate(Pred,Arity)
	% all predicates defined here must have a corresponding clause
	% gen_inline_pred/5 in pass 3 describing their associated code

inline_predicate(Pred, Arity) :-
	g_read(inline, Inline),
	inline_predicate(Pred, Arity, Inline).




inline_predicate('$get_cut_level', 1, _).

inline_predicate('$get_current_choice', 1, _).

inline_predicate('$cut', 1, _).

inline_predicate('$soft_cut', 1, _).




inline_predicate(=, 2, _).

inline_predicate('$foreign_call_c', 1, _).


inline_predicate(var, 1, t).

inline_predicate(nonvar, 1, t).

inline_predicate(atom, 1, t).

inline_predicate(integer, 1, t).

inline_predicate(float, 1, t).

inline_predicate(number, 1, t).

inline_predicate(atomic, 1, t).

inline_predicate(compound, 1, t).

inline_predicate(callable, 1, t).

inline_predicate(ground, 1, t).

inline_predicate(is_list, 1, t).

inline_predicate(list, 1, t).

inline_predicate(partial_list, 1, t).

inline_predicate(list_or_partial_list, 1, t).


inline_predicate(fd_var, 1, t).

inline_predicate(non_fd_var, 1, t).

inline_predicate(generic_var, 1, t).

inline_predicate(non_generic_var, 1, t).




inline_predicate(functor, 3, t).

inline_predicate(arg, 3, t).

inline_predicate(compare, 3, t).

inline_predicate(=.., 2, t).



inline_predicate(==, 2, t).

inline_predicate(\==, 2, t).

inline_predicate(@<, 2, t).

inline_predicate(@=<, 2, t).

inline_predicate(@>, 2, t).

inline_predicate(@>=, 2, t).




inline_predicate(is, 2, t).

inline_predicate(=:=, 2, t).

inline_predicate(=\=, 2, t).

inline_predicate(<, 2, t).

inline_predicate(=<, 2, t).

inline_predicate(>, 2, t).

inline_predicate(>=, 2, t).




inline_predicate(g_assign, 2, t).

inline_predicate(g_assignb, 2, t).

inline_predicate(g_link, 2, t).

inline_predicate(g_read, 2, t).

inline_predicate(g_array_size, 2, t).

inline_predicate(g_inc, 1, t).

inline_predicate(g_inco, 2, t).

inline_predicate(g_inc, 2, t).

inline_predicate(g_inc, 3, t).

inline_predicate(g_dec, 1, t).

inline_predicate(g_deco, 2, t).

inline_predicate(g_dec, 2, t).

inline_predicate(g_dec, 3, t).

inline_predicate(g_set_bit, 2, t).

inline_predicate(g_reset_bit, 2, t).

inline_predicate(g_test_set_bit, 2, t).

inline_predicate(g_test_reset_bit, 2, t).


/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : code_gen.pl                                                     *
 * Descr.: pass 3: code generation                                         *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


code_generation(Head, Body, NbChunk, NbY, WamHead) :-
	g_assign(last_pred, f),
	g_assign(treat_body, f),
	generate_head(Head, NbChunk, NbY, WamBody, WamHead),
	g_assign(treat_body, t),
	generate_body(Body, NbChunk, WamBody).




generate_head(p(_, _, _/N, LArg), NbChunk, NbY, WamNext, WamHead) :-
	gen_list_integers(0, N, LReg),
	(   g_read(reorder, t) ->
	    reorder_head_arg_lst(LArg, LReg, LArg1, LReg1)
	;
	    LArg1 = LArg,
	    LReg1 = LReg
	),
	gen_unif_arg_lst(LArg1, LReg1, WamNext, WamLArg),
	(   NbChunk > 1 ->
	    WamHead = [allocate(NbY)|WamLArg]
	;
	    WamHead = WamLArg
	).




reorder_head_arg_lst(LArg, LReg, LArg1, LReg1) :-
	split_arg_lst(LArg, LReg, LArgK, LRegK, LArgS, LRegS, LArgT, LRegT),
	reverse(LArgT, LArgT1),
	reverse(LRegT, LRegT1),
	append(LArgK, LArgT1, LArgKT),
	append(LArgKT, LArgS, LArg1),
	append(LRegK, LRegT1, LRegKT),
	append(LRegKT, LRegS, LReg1).




generate_body([], _, [proceed]).

generate_body([p(NoPred, Module, Pred/N, LArg)|Body], NbChunk, WamPred) :-
	(   NoPred = NbChunk ->
	    g_assign(last_pred, t)
	;
	    true
	),
	generate_body1(Pred, N, Module, LArg, NoPred, Body, NbChunk, WamPred).


generate_body1(fail, 0, _, _, _, _, _, [fail]) :-
	!.

generate_body1('$call_c', 2, _, [Fct, LCOpt], NoPred, Body, NbChunk, WamArgs) :-
	!,
	(   Fct = atm(FctName), LStcArg = [] ->
	    true
	;
	    Fct = stc(FctName, _, LStcArg)
	),
	(   Body \== [], memberchk(jump, LCOpt) ->
	    LCOpt1 = [set_cp|LCOpt]
	;
	    LCOpt1 = LCOpt
        ),
	(   select(ret(var(VarName, _)), LCOpt1, LCOpt2) ->
	    LCOpt3 = [VarName|LCOpt2]
	;
	    LCOpt3 = LCOpt1
	),
	load_c_call_args(LCOpt, LStcArg, LValue, WamCallC1, WamArgs),
	WamCallCInst = call_c(FctName, LCOpt3, LValue),
	(   Body = [] ->
	    (   NoPred > 1 ->
	        WamCallC1 = [deallocate, WamCallCInst, proceed]
	    ;
		WamCallC1 = [WamCallCInst, proceed]
	    )
	;
	    WamCallC1 = [WamCallCInst|WamBody],
	    generate_body(Body, NbChunk, WamBody)
	).

generate_body1(Pred, N, _, LArg, NoPred, Body, NbChunk, WamPred) :-
	inline_predicate(Pred, N),
	!,
	gen_inline_pred(Pred, N, LArg, WamBody, WamPred), !,
	(   Body = [] ->
	    (   NoPred > 1 ->
	        WamBody = [deallocate, proceed]
	    ;
		WamBody = [proceed]
	    )
	;
	    generate_body(Body, NbChunk, WamBody)
	).

generate_body1(Pred, N, Module, LArg, NoPred, Body, NbChunk, WamLArg) :-
	gen_list_integers(0, N, LReg),
	(   g_read(reorder, t) ->
	    reorder_body_arg_lst(LArg, LReg, LArg1, LReg1)
	;
	    LArg1 = LArg,
	    LReg1 = LReg
	),
	gen_load_arg_lst(LArg1, LReg1, WamCallExecute, WamLArg),
	qualif_with_module(Module, Pred, N, MPredN),
	(   Body = [] ->
	    (   NoPred > 1 ->
	        WamCallExecute = [deallocate, execute(MPredN)]
	    ;
		WamCallExecute = [execute(MPredN)]
	    )
	;
	    WamCallExecute = [call(MPredN)|WamBody],
	    generate_body(Body, NbChunk, WamBody)
	).



qualif_with_module(Module, Pred, N, Module:Pred/N) :-
	nonvar(Module),
	Module \== system,
	Module \== user, !.

qualif_with_module(_, Pred, N, Pred/N).





reorder_body_arg_lst(LArg, LReg, LArg1, LReg1) :-
	split_arg_lst(LArg, LReg, LArgK, LRegK, LArgS, LRegS, LArgT, LRegT),
	append(LArgS, LArgT, LArgST),
	append(LArgST, LArgK, LArg1),
	append(LRegS, LRegT, LRegST),
	append(LRegST, LRegK, LReg1).




          % split LArg/LReg in:
          %       LArgK/LRegK: known elements (without temporaries)
          %       LArgS/LRegS: structures containing temporaries
          %       LArgT/LRegT: temporaries

split_arg_lst([], [], [], [], [], [], [], []).

split_arg_lst([Arg|LArg], [Reg|LReg], LArgK, LRegK, LArgS, LRegS, LArgT, LRegT) :-
	(   Arg = var(x(No), _),
	    No \== void,
	    LArgK = LArgK1,
	    LRegK = LRegK1,
	    LArgS = LArgS1,
	    LRegS = LRegS1,
	    LArgT = [Arg|LArgT1],
	    LRegT = [Reg|LRegT1]
	;
	    Arg = stc(_, _, LStcArg),
	    has_temporaries(LStcArg),
	    LArgK = LArgK1,
	    LRegK = LRegK1,
	    LArgS = [Arg|LArgS1],
	    LRegS = [Reg|LRegS1],
	    LArgT = LArgT1,
	    LRegT = LRegT1
	;
	    LArgK = [Arg|LArgK1],
	    LRegK = [Reg|LRegK1],
	    LArgS = LArgS1,
	    LRegS = LRegS1,
	    LArgT = LArgT1,
	    LRegT = LRegT1
	), !,
	split_arg_lst(LArg, LReg, LArgK1, LRegK1, LArgS1, LRegS1, LArgT1, LRegT1).




has_temporaries([Arg|LArg]) :-
	(   Arg = var(x(No), _),
	    No \== void
	;
	    Arg = stc(_, _, LStcArg),
	    has_temporaries(LStcArg)
	;
	    has_temporaries(LArg)
	), !.




	% gen_unif_arg_lst(LArg, LReg, WamNext, WamLArg)

gen_unif_arg_lst([], [], WamNext, WamNext).

gen_unif_arg_lst([Arg|LArg], [Reg|LReg], WamNext, WamArg) :-
	gen_unif_arg(Arg, Reg, WamLArg, WamArg),
	gen_unif_arg_lst(LArg, LReg, WamNext, WamLArg).




	% gen_unif_arg(Arg, Reg, WamNext, WamArg)

gen_unif_arg(var(VarName, Info), Reg, WamNext, WamArg) :-
	(   var(Info) ->
	    (   VarName == x(void) ->
	        WamArg = WamNext
	    ;
		(   g_read(treat_body, t), VarName = y(_) ->
		    Info = unsafe   % p :- A=B, dummy, A=1, q(B). needs a put_unsafe_value for B (y(1))
		;
		    Info = not_in_cur_env
		),
	        WamArg = [get_variable(VarName, Reg)|WamNext]
	    )
	;
	    WamArg = [get_value(VarName, Reg)|WamNext]
	).

gen_unif_arg(atm(A), Reg, WamNext, [get_atom(A, Reg)|WamNext]).

gen_unif_arg(int(N), Reg, WamNext, [get_integer(N, Reg)|WamNext]).

gen_unif_arg(flt(N), Reg, WamNext, [get_float(N, Reg)|WamNext]).

gen_unif_arg(nil, Reg, WamNext, [get_nil(Reg)|WamNext]).

gen_unif_arg(stc(F, N, LStcArg), Reg, WamNext, [WamInst|WamStcArg]) :-
	(   F = '.',
	    N = 2 ->
	    WamInst = get_list(Reg)
	;   WamInst = get_structure(F/N, Reg)
	),
	flat_stc_arg_lst(LStcArg, head, LStcArg1, LArgAux, LRegAux),
	gen_subterm_arg_lst(LStcArg1, WamArgAux, WamStcArg),
	gen_unif_arg_lst(LArgAux, LRegAux, WamNext, WamArgAux).




	% gen_load_arg_lst(LArg, LReg, WamNext, WamLArg)

gen_load_arg_lst([], [], WamNext, WamNext).

gen_load_arg_lst([Arg|LArg], [Reg|LReg], WamNext, WamArg) :-
	gen_load_arg(Arg, Reg, WamLArg, WamArg),
	gen_load_arg_lst(LArg, LReg, WamNext, WamLArg).




	% gen_load_arg(Arg, Reg, WamNext, WamArg)

gen_load_arg(var(VarName, Info), Reg, WamNext, WamCode) :-
	(   var(Info) ->
	    (   VarName == x(void) ->
	        WamInst = put_void(Reg)
	    ;
		(   VarName = x(_) ->
	            Info = in_heap
	        ;
		    Info = unsafe,
		    (   g_read(last_pred, t) -> % can occur for false y var by optim: p :- _=B, dummy, r(B).
			WamInstBis = put_unsafe_value(VarName, Reg)
		    ;
			true
		    )
	        ),
	        WamInst = put_variable(VarName, Reg)
	    )
	;
		    
	    Info = unsafe,
	    g_read(last_pred, t) ->
	    WamInst = put_unsafe_value(VarName, Reg)
	;
	    WamInst = put_value(VarName, Reg)
	),
	(   var(WamInstBis) ->
	    WamCode = [WamInst|WamNext]
	;
	    WamCode = [WamInst, WamInstBis|WamNext]
	).

gen_load_arg(atm(A), Reg, WamNext, [put_atom(A, Reg)|WamNext]).

gen_load_arg(int(N), Reg, WamNext, [put_integer(N, Reg)|WamNext]).

gen_load_arg(flt(N), Reg, WamNext, [put_float(N, Reg)|WamNext]).

gen_load_arg(nil, Reg, WamNext, [put_nil(Reg)|WamNext]).

gen_load_arg(stc('$mt', 2, [atm(Module), Goal]), Reg, WamNext, WamInst) :-
	!,
	gen_load_arg(Goal, Reg1, WamMT, WamInst),
	WamMT = [put_meta_term(Module, Reg1, Reg)|WamNext].


gen_load_arg(stc(F, N, LStcArg), Reg, WamNext, WamArgAux) :-
	(   F = '.',
	    N = 2 ->
	    WamInst = put_list(Reg)
	;
	    WamInst = put_structure(F/N, Reg)
	),
	flat_stc_arg_lst(LStcArg, body, LStcArg1, LArgAux, LRegAux),
	gen_load_arg_lst(LArgAux, LRegAux, [WamInst|WamStcArg], WamArgAux),
	gen_subterm_arg_lst(LStcArg1, WamNext, WamStcArg).




          % flat_stc_arg_lst(LStcArg, HB, LStcArg1, LArgAux, LRegAux)

flat_stc_arg_lst([], _, [], [], []).

flat_stc_arg_lst([StcArg|LStcArg], HB, [StcArg|LStcArg1], LArgAux, LRegAux) :-
	simple_stc_arg(StcArg), !,
	flat_stc_arg_lst(LStcArg, HB, LStcArg1, LArgAux, LRegAux).

flat_stc_arg_lst([StcArg], HB, [stc(F, N, LStcArg1)], LArgAux, LRegAux) :-
	g_read(opt_last_subterm, t),     % last subterm unif stc optimization
	StcArg = stc(F, N, LStcArg),
	( F \== '$mt' ; N \== 2 ), !,
	flat_stc_arg_lst(LStcArg, HB, LStcArg1, LArgAux, LRegAux).

flat_stc_arg_lst([StcArg|LStcArg], HB, [V|LStcArg1], [StcArg|LArgAux], [X|LRegAux]) :-
	(   HB = head ->
	    V = var(x(X), _)
	;
	    V = var(x(X), in_heap)
	),
	flat_stc_arg_lst(LStcArg, HB, LStcArg1, LArgAux, LRegAux).



simple_stc_arg(var(_, _)).

simple_stc_arg(atm(_)).

simple_stc_arg(int(_)).

simple_stc_arg(nil).




           % gen_subterm_arg_lst(LStcArg, WamNext, WamLStcArg)

gen_subterm_arg_lst([], WamNext, WamNext).

gen_subterm_arg_lst([Arg|LArg], WamNext, WamArg) :-
	gen_compte_void([Arg|LArg], 0, N, LArg1),
	(   N = 0 ->
	    gen_subterm_arg(Arg, WamLArg, WamArg),
	    gen_subterm_arg_lst(LArg, WamNext, WamLArg)
	;
	    WamArg = [unify_void(N)|WamLArg1],
	    gen_subterm_arg_lst(LArg1, WamNext, WamLArg1)
	).




gen_compte_void([var(x(No), _)|LArg], N, N2, LArg1) :-
	No == void, !,
	N1 is N + 1,
	gen_compte_void(LArg, N1, N2, LArg1).

gen_compte_void(LArg, N, N, LArg).




gen_subterm_arg(var(VarName, Info), WamNext, [WamInst|WamNext]) :-
	(   var(Info) ->
	    Info = in_heap,
	    WamInst = unify_variable(VarName)
	;
	    Info = in_heap ->
	    WamInst = unify_value(VarName)
	;
	    WamInst = unify_local_value(VarName)
	).

gen_subterm_arg(atm(A), WamNext, [unify_atom(A)|WamNext]).

gen_subterm_arg(int(N), WamNext, [unify_integer(N)|WamNext]).

gen_subterm_arg(nil, WamNext, [unify_nil|WamNext]).

gen_subterm_arg(stc(F, N, LStcArg), WamNext, [WamInst|WamLStcArg]) :-
	(   F = '.',
	    N = 2 ->
	    WamInst = unify_list
	;
	    WamInst = unify_structure(F/N)
	),
	gen_subterm_arg_lst(LStcArg, WamNext, WamLStcArg).




gen_list_integers(I, N, L) :-
	(   I < N ->
	    L = [I|L1],
	    I1 is I + 1,
	    gen_list_integers(I1, N, L1)
	;
	    L = []
	).




          % called at code emission

special_form(put_variable(x(X), X), put_void(X)).




dummy_instruction(get_variable(x(X), X), f).
dummy_instruction(put_value(x(X), X), f).




	% Inline predicate code generation:
	%      gen_inline_pred(Pred, Arity, LArg, WamNext, WamPred)
        %
	% the predicates defined here must have a corresponding clause
	% inline_predicate/2 (in pass 2).

:- discontiguous(gen_inline_pred/5).


	% Cut inline ('$get_cut_level'/1, '$get_current_choice'/1, '$cut'/1, '$soft_cut'/1)

gen_inline_pred('$get_cut_level', 1, [var(VarName, Info)], WamNext, WamNext) :-
	var(Info),
	VarName == x(void), !. % the cut level is not actually used (not needed)

gen_inline_pred('$get_cut_level', 1, [Arg], WamNext, WamArg) :-
	cur_pred(Pred, N),
	set_pred_flag(need_cut_level, Pred, N),
	gen_unif_arg(Arg, N, WamNext, WamArg).

gen_inline_pred('$get_current_choice', 1, [var(VarName, _)], WamNext, [WamInst|WamNext]) :-
	WamInst = get_current_choice(VarName).

gen_inline_pred('$cut', 1, [var(VarName, _)], WamNext, [WamInst|WamNext]) :-
	WamInst = cut(VarName).

gen_inline_pred('$soft_cut', 1, [var(VarName, _)], WamNext, [WamInst|WamNext]) :-
	WamInst = soft_cut(VarName).




	% Unification inline (=/2)

gen_inline_pred(=, 2, [Arg1, Arg2], WamNext, WamEqual) :-
	equal(Arg1, Arg2, WamNext, WamEqual), !.




equal(Arg1, Arg2, WamNext, WamNext) :-
	Arg1 == Arg2.

equal(var(x(Reg), Info), _, WamNext, WamNext) :-
        var(Info),              % is this test useful ? i do not think so. void ==> var(Info) ?
        Reg == void.

equal(_, var(x(Reg), Info), WamNext, WamNext) :-
        var(Info),              % is this test useful ? i do not think so
        Reg == void.

equal(var(VarName, Info), var(VarName, Info), WamNext, WamNext) :-
        var(Info).

equal(V1, Arg2, WamNext, WamEqual) :-
	V1 = var(VarName1, Info1),
	(   VarName1 = x(Reg1) ->
	    (   Reg1 == void ->
	        WamNext = WamEqual
	    ;
		inline_unif_reg_term(Info1, Reg1, Arg2, WamNext, WamEqual)
	    )
	;
	    gen_load_arg(V1, IReg, WamEqual1, WamEqual),
	    gen_unif_arg(Arg2, IReg, WamNext, WamEqual1)
	).

equal(Arg1, V2, WamNext, WamEqual) :-
	V2 = var(VarName2, Info2),
	(   VarName2 = x(Reg2) ->
	    (   Reg2 == void ->
	        WamNext = WamEqual
	    ;
		inline_unif_reg_term(Info2, Reg2, Arg1, WamNext, WamEqual)
	    )
	;
	    gen_load_arg(V2, IReg, WamEqual1, WamEqual),
	    gen_unif_arg(Arg1, IReg, WamNext, WamEqual1)
	).

equal(Arg1, var(x(Reg2), Info2), WamNext, WamEqual) :-
	inline_unif_reg_term(Info2, Reg2, Arg1, WamNext, WamEqual).

equal(stc(F, N, LStcArg1), stc(F, N, LStcArg2), WamNext, WamEqual) :-
	equal_lst(LStcArg1, LStcArg2, WamNext, WamEqual).

equal(_, _, WamNext, [fail|WamNext]) :-
	warn('explicit unification will fail', []).




equal_lst([], [], WamNext, WamNext).

equal_lst([Arg1|LArg1], [Arg2|LArg2], WamNext, WamEqual) :-
	equal(Arg1, Arg2, WamLArg, WamEqual),
	equal_lst(LArg1, LArg2, WamNext, WamLArg).




inline_unif_reg_term(Info, Reg, Arg, WamNext, WamUnif) :-
        (   var(Info) ->
            gen_load_arg(Arg, Reg, WamNext, WamUnif1),
            (   var(Info) -> % if Info=in_heap then Reg appeared in Arg thus we have an occurs check
                Info = in_heap, % like in p :- A = f(A), write(A).
                WamUnif = WamUnif1
            ;
                warn('explicit unification will fail due to cyclic term (occurs check)', []),
                WamUnif = [fail|WamNext]
            )
        ;
	    gen_unif_arg(Arg, Reg, WamNext, WamUnif)
        ).




	% Mathematical inlines (is/2, =:=/2, ...)
/* provisional... pb with allocator to reuse VN2 for VN1
gen_inline_pred(is, 2, [var(VN1, Info1), stc(+, 2, [var(VN2, Info2), int(1)])], WamNext, WamMath) :-
	var(Info1),
	!,
	(   var(Info2) ->
	    error('unbound variable in arithmetic expression', [])
	;   true
	),
	Info1 = not_in_cur_env,
	WamMath = [call_c('Math_X_Is_Inc_Y', [fast], [&,VN1, VN2])|WamNext].
*/
gen_inline_pred(is, 2, [Arg1, Arg2], WamNext, WamMath) :-
	load_math_expr(Arg2, Reg, WamUnif, WamMath), !,
	gen_unif_arg(Arg1, Reg, WamNext, WamUnif).



load_math_expr(var(VarName, Info), Reg, WamNext, WamMath) :-
	(   var(Info) ->
	    error('unbound variable in arithmetic expression', [])
	;   true
	),
	(   g_read(fast_math, t) ->
	    WamMath = [math_fast_load_value(VarName, Reg)|WamNext]
	;
	    WamMath = [math_load_value(VarName, Reg)|WamNext]
	).

load_math_expr(int(N), Reg, WamNext, WamMath) :-
	gen_load_arg(int(N), Reg, WamNext, WamMath).

load_math_expr(flt(N), Reg, WamNext, WamMath) :-
	gen_load_arg(flt(N), Reg, WamNext, WamMath).

load_math_expr(stc(F, N, LArg), Reg, WamNext, WamMath) :-
	load_math_expr1(F, N, LArg, Reg, WamNext, WamMath).

load_math_expr(atm(F), Reg, WamNext, WamMath) :-
	load_math_expr1(F, 0, [], Reg, WamNext, WamMath).

load_math_expr(X, _, _, _) :-
	error('unknown expression in arithmetic expression (~q)', [X]).


load_math_expr1('.', 2, [Arg, nil], Reg, WamNext, WamMath) :-
	load_math_expr(Arg, Reg, WamNext, WamMath).

load_math_expr1(+, 1, [Arg], Reg, WamNext, WamMath) :-
	load_math_expr(Arg, Reg, WamNext, WamMath).

load_math_expr1(+, 2, [Arg1, int(1)], Reg, WamNext, WamMath) :-
	load_math_expr1(inc, 1, [Arg1], Reg, WamNext, WamMath).

load_math_expr1(-, 2, [Arg1, int(1)], Reg, WamNext, WamMath) :-
	load_math_expr1(dec, 1, [Arg1], Reg, WamNext, WamMath).

load_math_expr1(F, N, LArg, Reg, WamNext, WamMath) :-
	(   g_read(fast_math, t) ->
	    fast_exp_functor_name(F, N, Name)
	;
	    math_exp_functor_name(F, N, Name)
	),
	load_math_arg_lst(LArg, LValue, WamInst, WamMath),
	WamInst = [call_c(Name, [fast_call,x(Reg)], LValue)|WamNext].

load_math_expr1(F, N, _, _, _, _) :-
	math_exp_functor_name(F, N, _),
	error('arithmetic operation not allowed in fast math (~q)', [F/N]).

load_math_expr1(F, N, _, _, _, _) :-
	error('unknown operation in arithmetic expression (~q)', [F/N]).




load_math_arg_lst([], [], WamNext, WamNext).

load_math_arg_lst([Arg|LArg], [x(Reg)|LReg], WamNext, WamMath) :-
	load_math_expr(Arg, Reg, WamLArg, WamMath),
	load_math_arg_lst(LArg, LReg, WamNext, WamLArg).




fast_exp_functor_name(-, 1, 'Pl_Fct_Fast_Neg').
fast_exp_functor_name(inc, 1, 'Pl_Fct_Fast_Inc').
fast_exp_functor_name(dec, 1, 'Pl_Fct_Fast_Dec').
fast_exp_functor_name(+, 2, 'Pl_Fct_Fast_Add').
fast_exp_functor_name(-, 2, 'Pl_Fct_Fast_Sub').
fast_exp_functor_name(*, 2, 'Pl_Fct_Fast_Mul').
fast_exp_functor_name(//, 2, 'Pl_Fct_Fast_Integer_Div').
fast_exp_functor_name(div, 2, 'Pl_Fct_Fast_Integer_Div2').
fast_exp_functor_name(rem, 2, 'Pl_Fct_Fast_Rem').
fast_exp_functor_name(mod, 2, 'Pl_Fct_Fast_Mod').
fast_exp_functor_name(/\, 2, 'Pl_Fct_Fast_And').
fast_exp_functor_name(\/, 2, 'Pl_Fct_Fast_Or').
fast_exp_functor_name(xor, 2, 'Pl_Fct_Fast_Xor').
fast_exp_functor_name(\, 1, 'Pl_Fct_Fast_Not').
fast_exp_functor_name(<<, 2, 'Pl_Fct_Fast_Shl').
fast_exp_functor_name(>>, 2, 'Pl_Fct_Fast_Shr').
fast_exp_functor_name(lsb, 1, 'Pl_Fct_Fast_LSB').
fast_exp_functor_name(msb, 1, 'Pl_Fct_Fast_MSB').
fast_exp_functor_name(popcount, 1, 'Pl_Fct_Fast_Popcount').
fast_exp_functor_name(abs, 1, 'Pl_Fct_Fast_Abs').
fast_exp_functor_name(sign, 1, 'Pl_Fct_Fast_Sign').
fast_exp_functor_name(gcd, 2, 'Pl_Fct_Fast_GCD').
fast_exp_functor_name(^, 2, 'Pl_Fct_Fast_IPow').



math_exp_functor_name(pi, 0, 'Pl_Fct_PI').
math_exp_functor_name(e, 0, 'Pl_Fct_E').
math_exp_functor_name(epsilon, 0, 'Pl_Fct_Epsilon').
/* +X is compiled as X (identity) */
math_exp_functor_name(-, 1, 'Pl_Fct_Neg').
math_exp_functor_name(inc, 1, 'Pl_Fct_Inc').
math_exp_functor_name(dec, 1, 'Pl_Fct_Dec').
math_exp_functor_name(+, 2, 'Pl_Fct_Add').
math_exp_functor_name(-, 2, 'Pl_Fct_Sub').
math_exp_functor_name(*, 2, 'Pl_Fct_Mul').
math_exp_functor_name(/, 2, 'Pl_Fct_Float_Div').
math_exp_functor_name(//, 2, 'Pl_Fct_Integer_Div').
math_exp_functor_name(div, 2, 'Pl_Fct_Integer_Div2').
math_exp_functor_name(rem, 2, 'Pl_Fct_Rem').
math_exp_functor_name(mod, 2, 'Pl_Fct_Mod').
math_exp_functor_name(/\, 2, 'Pl_Fct_And').
math_exp_functor_name(\/, 2, 'Pl_Fct_Or').
math_exp_functor_name(xor, 2, 'Pl_Fct_Xor').
math_exp_functor_name(\, 1, 'Pl_Fct_Not').
math_exp_functor_name(<<, 2, 'Pl_Fct_Shl').
math_exp_functor_name(>>, 2, 'Pl_Fct_Shr').
math_exp_functor_name(lsb, 1, 'Pl_Fct_LSB').
math_exp_functor_name(msb, 1, 'Pl_Fct_MSB').
math_exp_functor_name(popcount, 1, 'Pl_Fct_Popcount').
math_exp_functor_name(abs, 1, 'Pl_Fct_Abs').
math_exp_functor_name(sign, 1, 'Pl_Fct_Sign').
math_exp_functor_name(min, 2, 'Pl_Fct_Min').
math_exp_functor_name(max, 2, 'Pl_Fct_Max').
math_exp_functor_name(gcd, 2, 'Pl_Fct_GCD').
math_exp_functor_name(^, 2, 'Pl_Fct_IPow').
math_exp_functor_name(**, 2, 'Pl_Fct_Pow').
math_exp_functor_name(sqrt, 1, 'Pl_Fct_Sqrt').
math_exp_functor_name(tan, 1, 'Pl_Fct_Tan').
math_exp_functor_name(atan, 1, 'Pl_Fct_Atan').
math_exp_functor_name(atan2, 2, 'Pl_Fct_Atan2').
math_exp_functor_name(cos, 1, 'Pl_Fct_Cos').
math_exp_functor_name(acos, 1, 'Pl_Fct_Acos').
math_exp_functor_name(sin, 1, 'Pl_Fct_Sin').
math_exp_functor_name(asin, 1, 'Pl_Fct_Asin').
math_exp_functor_name(tanh, 1, 'Pl_Fct_Tanh').
math_exp_functor_name(atanh, 1, 'Pl_Fct_Atanh').
math_exp_functor_name(cosh, 1, 'Pl_Fct_Cosh').
math_exp_functor_name(acosh, 1, 'Pl_Fct_Acosh').
math_exp_functor_name(sinh, 1, 'Pl_Fct_Sinh').
math_exp_functor_name(asinh, 1, 'Pl_Fct_Asinh').
math_exp_functor_name(exp, 1, 'Pl_Fct_Exp').
math_exp_functor_name(log, 1, 'Pl_Fct_Log').
math_exp_functor_name(log10, 1, 'Pl_Fct_Log10').
math_exp_functor_name(log, 2, 'Pl_Fct_Log_Radix').
math_exp_functor_name(float, 1, 'Pl_Fct_Float').
math_exp_functor_name(ceiling, 1, 'Pl_Fct_Ceiling').
math_exp_functor_name(floor, 1, 'Pl_Fct_Floor').
math_exp_functor_name(round, 1, 'Pl_Fct_Round').
math_exp_functor_name(truncate, 1, 'Pl_Fct_Truncate').
math_exp_functor_name(float_fractional_part, 1, 'Pl_Fct_Float_Fract_Part').
math_exp_functor_name(float_integer_part, 1, 'Pl_Fct_Float_Integer_Part').


gen_inline_pred(F, 2, LArg, WamNext, WamMath) :-
	(   g_read(fast_math, t) ->
	    fast_cmp_functor_name(F, Name)
	;
	    math_cmp_functor_name(F, Name)
	),
	load_math_arg_lst(LArg, LValue, WamInst, WamMath),
	WamInst = [call_c(Name, [fast_call, boolean], LValue)|WamNext].



fast_cmp_functor_name(=:=, 'Pl_Blt_Fast_Eq').
fast_cmp_functor_name(=\=, 'Pl_Blt_Fast_Neq').
fast_cmp_functor_name(<, 'Pl_Blt_Fast_Lt').
fast_cmp_functor_name(=<, 'Pl_Blt_Fast_Lte').
fast_cmp_functor_name(>, 'Pl_Blt_Fast_Gt').
fast_cmp_functor_name(>=, 'Pl_Blt_Fast_Gte').

math_cmp_functor_name(=:=, 'Pl_Blt_Eq').
math_cmp_functor_name(=\=, 'Pl_Blt_Neq').
math_cmp_functor_name(<, 'Pl_Blt_Lt').
math_cmp_functor_name(=<, 'Pl_Blt_Lte').
math_cmp_functor_name(>, 'Pl_Blt_Gt').
math_cmp_functor_name(>=, 'Pl_Blt_Gte').




	% foreign C call

gen_inline_pred('$foreign_call_c', 1, [args(FctName, Return, BipPred, ChcSize, LType)], WamNext, WamInst) :-
	WamInst = [foreign_call_c(FctName, Return, BipPred, ChcSize, LType)|WamNext].




          % call_c/3 management predicates


load_c_call_args(LCOpt, LArg, LValue, WamNext, WamArg) :-
	memberchk(by_value, LCOpt),
	load_by_value_arg_lst(LArg, LValue, WamNext, WamArg), !.


load_c_call_args(_, LArg, LValue, WamNext, WamArg) :-
	load_by_reg_arg_lst(LArg, LValue, WamNext, WamArg), !.




load_by_reg_arg_lst([], [], WamNext, WamNext).

load_by_reg_arg_lst([Arg|LArg], [x(Reg)|LReg], WamNext, WamArg) :-
	gen_load_arg(Arg, Reg, WamLArg, WamArg),
	load_by_reg_arg_lst(LArg, LReg, WamNext, WamLArg).




load_by_value_arg_lst([], [], WamNext, WamNext).

load_by_value_arg_lst([Arg|LArg], [Value|LValue], WamNext, WamArg) :-
	load_by_value_arg(Arg, Value, WamLArg, WamArg),
	load_by_value_arg_lst(LArg, LValue, WamNext, WamLArg).


load_by_value_arg(atm(A), A, WamNext, WamNext).

load_by_value_arg(int(N), N, WamNext, WamNext).

load_by_value_arg(flt(N), N, WamNext, WamNext).

load_by_value_arg(nil, [], WamNext, WamNext).

load_by_value_arg(stc('/', 2, [atm(F), int(N)]), F/N, WamNext, WamNext).

load_by_value_arg(Arg, x(Reg), WamArg, WamNext) :-
	gen_load_arg(Arg, Reg, WamArg, WamNext).




          % Other inlines

gen_inline_pred(F, N, LArg, WamNext, WamCallC) :-
	c_fct_name(F, N, Name, RetType),
	(   RetType = bool ->
	    LCOpt = [fast_call, boolean]
	;
	    LCOpt = [fast_call]
	),
	load_c_call_args(LCOpt, LArg, LValue, WamInst, WamCallC),
	WamInst = [call_c(Name, LCOpt, LValue)|WamNext].



c_fct_name(var, 1, 'Pl_Blt_Var', bool).
c_fct_name(nonvar, 1, 'Pl_Blt_Non_Var', bool).
c_fct_name(atom, 1, 'Pl_Blt_Atom', bool).
c_fct_name(integer, 1, 'Pl_Blt_Integer', bool).
c_fct_name(float, 1, 'Pl_Blt_Float', bool).
c_fct_name(number, 1, 'Pl_Blt_Number', bool).
c_fct_name(atomic, 1, 'Pl_Blt_Atomic', bool).
c_fct_name(compound, 1, 'Pl_Blt_Compound', bool).
c_fct_name(callable, 1, 'Pl_Blt_Callable', bool).
c_fct_name(ground, 1, 'Pl_Blt_Ground', bool).
c_fct_name(is_list, 1, 'Pl_Blt_List', bool).
c_fct_name(list, 1, 'Pl_Blt_List', bool).
c_fct_name(partial_list, 1, 'Pl_Blt_Partial_List', bool).
c_fct_name(list_or_partial_list, 1, 'Pl_Blt_List_Or_Partial_List', bool).

c_fct_name(fd_var, 1, 'Pl_Blt_Fd_Var', bool).
c_fct_name(non_fd_var, 1, 'Pl_Blt_Non_Fd_Var', bool).
c_fct_name(generic_var, 1, 'Pl_Blt_Generic_Var', bool).
c_fct_name(non_generic_var, 1, 'Pl_Blt_Non_Generic_Var', bool).


c_fct_name(arg, 3, 'Pl_Blt_Arg', bool).
c_fct_name(functor, 3, 'Pl_Blt_Functor', bool).
c_fct_name(compare, 3, 'Pl_Blt_Compare', bool).
c_fct_name(=.., 2, 'Pl_Blt_Univ', bool).

c_fct_name(==, 2, 'Pl_Blt_Term_Eq', bool).
c_fct_name(\==, 2, 'Pl_Blt_Term_Neq', bool).
c_fct_name(@<, 2, 'Pl_Blt_Term_Lt', bool).
c_fct_name(@=<, 2, 'Pl_Blt_Term_Lte', bool).
c_fct_name(@>, 2, 'Pl_Blt_Term_Gt', bool).
c_fct_name(@>=, 2, 'Pl_Blt_Term_Gte', bool).

c_fct_name(g_assign, 2, 'Pl_Blt_G_Assign', void).
c_fct_name(g_assignb, 2, 'Pl_Blt_G_Assignb', void).
c_fct_name(g_link, 2, 'Pl_Blt_G_Link', void).
c_fct_name(g_read, 2, 'Pl_Blt_G_Read', bool).
c_fct_name(g_array_size, 2, 'Pl_Blt_G_Array_Size', bool).
c_fct_name(g_inc, 1, 'Pl_Blt_G_Inc', void).
c_fct_name(g_inco, 2, 'Pl_Blt_G_Inco', bool).
c_fct_name(g_inc, 2, 'Pl_Blt_G_Inc_2', bool).
c_fct_name(g_inc, 3, 'Pl_Blt_G_Inc_3', bool).
c_fct_name(g_dec, 1, 'Pl_Blt_G_Dec', void).
c_fct_name(g_deco, 2, 'Pl_Blt_G_Deco', bool).
c_fct_name(g_dec, 2, 'Pl_Blt_G_Dec_2', bool).
c_fct_name(g_dec, 3, 'Pl_Blt_G_Dec_3', bool).
c_fct_name(g_set_bit, 2, 'Pl_Blt_G_Set_Bit', void).
c_fct_name(g_reset_bit, 2, 'Pl_Blt_G_Reset_Bit', void).
c_fct_name(g_test_set_bit, 2, 'Pl_Blt_G_Test_Set_Bit', bool).
c_fct_name(g_test_reset_bit, 2, 'Pl_Blt_G_Test_Reset_Bit', bool).

/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : reg_alloc.pl                                                    *
 * Descr.: pass 4: register allocation                                     *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


/*-------------------------------------------------------------------------*
 * The main predicate is:                                                  *
 * allocate_registers(LInstW) ou allocate_registers(LInstW,MaxRegUsed):    *
 *    where LInstW is a list of instructions.                              *
 *    and MaxRegUsed is an integer corresponding to the greatest register  *
 *    used (-1 if none or n>=0 if reg0...regMaxRegUsed are used).          *
 *                                                                         *
 * Two predicates must be provided in addition to the allocater:           *
 *                                                                         *
 * codification(InstW, LCode):                                             *
 *    defines the action of InstW on the registers as a list LCode of codes*
 *    c(R1, R2) (copy R1 into R2), r(R) (read R) or w(R) (write R).        *
 *                                                                         *
 * alias_stop_instruction(InstW):                                          *
 *     true if InstW stop aliasing propagation.                            *
 *                                                                         *
 * Terminology:                                                            *
 *     Arg: Arg is an argument iff integer(Arg)                            *
 *     Tmp: Tmp is a temporary iff var(Tmp)                                *
 *     Reg: Reg is a register if it is either an argument or a temporary.  *
 *                                                                         *
 * This allocation proceeds in 3 steps:                                    *
 *                                                                         *
 *  1) computing aliases (i.e. list of same values at entry of each inst): *
 *     LAlias is a list of aliases (one for each instruction)              *
 *     LAlias = [Alias,...]                                                *
 *     The aliases (Alias) are represented as a set of same values (LSame) *
 *     Alias = [LSame,...].                                                *
 *     each LSame is a set of Regs (integers or variables)                 *
 *     eg Alias = [[1,2,X,Y],[3,Z,4]] means 1,2,X,Y are aliased, 3,Z,4 also*
 *                                                                         *
 *  2) computing the list of temporaries LTmp=[tmp(Tmp, Imposs, Wish),...] *
 *     where Imposs is a set of impossible values and Wish a set of wanted *
 *     values (to give rise to useless copy instructions).                 *
 *     The code is traversed in reverse order, computing at each time the  *
 *     set of Regs in life (InLife) (see PhD Thesis of Mats Carlsson).     *
 *                                                                         *
 *  3) Each Tmp in LTmp is assigned w.r.t. to Wish and Imposs in 2 steps:  *
 *                                                                         *
 *     a) from [tmp(Tmp, Imposs, Wish)|LTmp]:                              *
 *                                                                         *
 *        while there exists Tmpj in Wish and not in Imposs:               *
 *           let tmp(Tmpj, Impossj, Wishj) be the associated record in LTmp*
 *           Imposs := Imposs + Impossj and Wish := Wish + Wishj,          *
 *           LTmp := LTmp-tmp(Tmpj, Impossj, Wishj) (remove Tmpj from LTmp)*
 *           Tmpj = Tmp (unify them)                                       *
 *                                                                         *
 *        At the end of the loop:                                          *
 *        if there exists an integer k in Wish-Imposs then  (see NB below) *
 *           Tmp = k else replace tmp(Tmp, Imposs, Wish) in LTmp           *
 *                                                                         *
 *     b) for each Tmp remaining in LTmp assign a value w.r.t to Imposs    *
 *        by chosing the first integer not present in Imposs (after sort)  *
 *                                                                         *
 * NB: it seems, from the construction, that, in Wish, only remains        *
 * possible values so the compl(Wish, Imposs, AssignOK) would be useless,  *
 * but I have to check this in depth.                                      *
 *-------------------------------------------------------------------------*/

allocate_registers(LInstW) :-
	allocate_registers(LInstW, _).


allocate_registers(LInstW, MaxRegUsed) :-
	g_read(reg_opt, OptReg),
	(   OptReg > 0 ->
	    aliases(LInstW, [], LAlias)
	;   true
	),
	create_lst_tmp(LInstW, LAlias, _, LTmp),
	assign_lst_tmp(LTmp, MaxRegUsed).




          % Aliasing information creation

aliases([], _, []).

aliases([InstW|LInstW], Alias, [Alias|LAlias]) :-
	(   alias_stop_instruction(InstW) ->
	    Alias1 = []
	;   codification(InstW, LCode),
	    aliases1(LCode, Alias, Alias1)
	), !,
	aliases(LInstW, Alias1, LAlias).


aliases1([], Alias, Alias).

aliases1([Code|LCode], Alias, Alias3) :-
	(   Code = r(Reg),
	    Alias2 = Alias
	;   Code = w(Reg),
	    remove_aliases_of(Alias, Reg, Alias2)
	;   Code = c(Reg, Reg1),
	    remove_aliases_of(Alias, Reg1, Alias1),
	    add_alias(Alias1, Reg, Reg1, Alias2)
	), !,
	aliases1(LCode, Alias2, Alias3).




add_alias([], Reg, Reg1, [[Reg, Reg1]]).

add_alias([LSame|Alias], Reg, Reg1, [LSame1|Alias1]) :-
	(   set_elt(LSame, Reg) ->
	    set_add(LSame, Reg1, LSame1),
	    Alias1 = Alias
	;   LSame1 = LSame,
	    add_alias(Alias, Reg, Reg1, Alias1)
	).




find_aliases_of([LSame|Alias], Reg, LSame1) :-
	(   set_delete(LSame, Reg, LSame1) ->
	    true
	;   find_aliases_of(Alias, Reg, LSame1)
	).




remove_aliases_of([], _, []).

remove_aliases_of([LSame|Alias], Reg, Alias1) :-
	(   set_delete(LSame, Reg, LSame1) ->
	    (   (   LSame1 = []
	        ;   LSame1 = [_]
	        ) ->
	        Alias1 = Alias
	    ;   Alias1 = [LSame1|Alias]
	    )
	;   Alias1 = [LSame|Alias2],
	    remove_aliases_of(Alias, Reg, Alias2)
	).




          % Temporaries dictionnary creation (lifetime analysis)

create_lst_tmp([], [], [], []).

create_lst_tmp([InstW|LInstW], [Alias|LAlias], InLife1, LTmp1) :-
	create_lst_tmp(LInstW, LAlias, InLife, LTmp),
	codification(InstW, LCode), !,
	handle_lst_code(LCode, Alias, InLife, InLife1, LTmp, LTmp1).




handle_lst_code([], _, InLife, InLife, LTmp, LTmp).

handle_lst_code([Code|LCode], Alias, InLife, InLife2, LTmp, LTmp2) :-
	handle_lst_code(LCode, Alias, InLife, InLife1, LTmp, LTmp1),
	handle_one_code(Code, Alias, [], InLife1, InLife2, LTmp1, LTmp2).




handle_one_code(r(Reg), Alias, Wish, InLife, InLife1, LTmp, LTmp2) :-
	(   set_elt(InLife, Reg) ->
	    InLife1 = InLife,
	    (   var(Reg),
	        Wish \== [] ->
	        update_tmp(LTmp, Reg, [], Wish, LTmp2)
	    ;   LTmp2 = LTmp
	    )
	;   InLife1 = [Reg|InLife],
	    constraints(Reg, InLife, Alias, Cstr),
	    make_imposs(Cstr, [Reg], LTmp, LTmp1),
	    (   var(Reg) ->
	        update_tmp(LTmp1, Reg, Cstr, Wish, LTmp2)
	    ;   LTmp2 = LTmp1
	    )
	).

handle_one_code(w(Reg), Alias, Wish, InLife, InLife1, LTmp, LTmp2) :-
	(   set_delete(InLife, Reg, InLife1) ->
	    (   var(Reg),
	        Wish \== [] ->
	        update_tmp(LTmp, Reg, [], Wish, LTmp2)
	    ;   LTmp2 = LTmp
	    )
	;   InLife1 = InLife,
	    (   var(Reg) ->
	        constraints(Reg, InLife1, Alias, Cstr),
	        (   Wish \== [] ->
	            set_diff(Cstr, Wish, Cstr1)
	        ;   Cstr1 = Cstr
	        ),
	        make_imposs(Cstr1, [Reg], LTmp, LTmp1),
	        update_tmp(LTmp1, Reg, Cstr1, Wish, LTmp2)
	    ;   LTmp2 = LTmp
	    )
	).

handle_one_code(c(Reg, Reg1), Alias, _, InLife, InLife2, LTmp, LTmp2) :-
	handle_one_code(w(Reg1), Alias, [Reg], InLife, InLife1, LTmp, LTmp1),
	handle_one_code(r(Reg), Alias, [Reg1], InLife1, InLife2, LTmp1, LTmp2).




constraints(Reg, InLife, Alias, Cstr) :-
	(   g_read(reg_opt, 2),
	    find_aliases_of(Alias, Reg, LSame) ->
	    set_diff(InLife, LSame, Cstr)
	;   Cstr = InLife
	).




update_tmp([], Reg, Imposs, Wish, [tmp(Reg, Imposs, Wish)]).

update_tmp([Tmp|LTmp], Reg, Imposs, Wish, [Tmp1|LTmp1]) :-
	Tmp = tmp(Reg1, Imposs1, Wish1),
	(   Reg == Reg1 ->
	    set_union(Imposs, Imposs1, Imposs2),
	    set_union(Wish, Wish1, Wish2),
	    Tmp1 = tmp(Reg, Imposs2, Wish2),
	    LTmp1 = LTmp
	;   Tmp1 = Tmp,
	    update_tmp(LTmp, Reg, Imposs, Wish, LTmp1)
	).




remove_tmp([T|LTmp], Reg, Imposs, Wish, LTmp2) :-
	T = tmp(Reg1, Imposs1, Wish1),
	(   Reg == Reg1 ->
	    Imposs = Imposs1,
	    Wish = Wish1,
	    LTmp2 = LTmp
	;   LTmp2 = [T|LTmp1],
	    remove_tmp(LTmp, Reg, Imposs, Wish, LTmp1)
	).





make_imposs([], _, LTmp, LTmp).

make_imposs([Reg|Cstr], Imposs, LTmp, LTmp2) :-
	(   var(Reg) ->
	    update_tmp(LTmp, Reg, Imposs, [], LTmp1)
	;   LTmp1 = LTmp
	),
	make_imposs(Cstr, Imposs, LTmp1, LTmp2).




          % Register assignment

assign_lst_tmp(LTmp, MaxRegUsed) :-
	g_read(reg_opt, OptReg),
	(   OptReg = 2 ->
	    assign_wishes(LTmp, LTmp1)
	;   no_wish(LTmp, OptReg, LTmp1)
	),
	assign_values(LTmp1, -1, MaxRegUsed).




assign_wishes([], []).

assign_wishes([tmp(Tmp, Imposs, Wish)|LTmp], LTmp3) :-
	collapse_tmps(Wish, Imposs, LTmp, Tmp, Wish1, Imposs1, LTmp1),
	try_a_whish(Tmp, Imposs1, Wish1),
	(   var(Tmp) ->
	    LTmp3 = [tmp(Tmp, Imposs1)|LTmp2]       % no longer wish in tmp()
	;   LTmp3 = LTmp2
	),
	assign_wishes(LTmp1, LTmp2).




collapse_tmps([], Imposs, LTmp, _, [], Imposs, LTmp).

collapse_tmps([Reg|Wish], Imposs, LTmp, Tmp, Wish1, Imposs1, LTmp1) :-
	(   Reg == Tmp
	;   set_elt(Imposs, Reg)
	), !,
	collapse_tmps(Wish, Imposs, LTmp, Tmp, Wish1, Imposs1, LTmp1).

collapse_tmps([Arg|Wish], Imposs, LTmp, Tmp, [Arg|Wish1], Imposs1, LTmp1) :-
	integer(Arg), !,
	collapse_tmps(Wish, Imposs, LTmp, Tmp, Wish1, Imposs1, LTmp1).

collapse_tmps([Tmp1|Wish], Imposs, LTmp, Tmp, Wish3, Imposs3, LTmp2) :-
	remove_tmp(LTmp, Tmp1, Imposs1, Wish1, LTmp1),
	set_union(Imposs, Imposs1, Imposs2),
	set_union(Wish, Wish1, Wish2),
	Tmp = Tmp1,
	collapse_tmps(Wish2, Imposs2, LTmp1, Tmp, Wish3, Imposs3, LTmp2).




try_a_whish(Tmp, Imposs, Wish) :-
	set_diff(Wish, Imposs, [Tmp|_]), !.

try_a_whish(_, _, _).




no_wish([], _, []).

no_wish([tmp(Tmp, Imposs, Wish)|LTmp], OptReg, [tmp(Tmp, Imposs1)|LTmp1]) :-
	(   OptReg = 0 ->
	    set_union(Imposs, Wish, Imposs1)        % no optimizations at all
	;   Imposs1 = Imposs
	),                                           % for some optimizations
	no_wish(LTmp, OptReg, LTmp1).




assign_values([], MaxRegUsed, MaxRegUsed).

assign_values([tmp(Tmp, Imposs)|LTmp], MaxRegUsed, MaxRegUsed2) :-
	sort(Imposs, Imposs1),
	find_hole(Imposs1, 0, Tmp),
	(   Tmp > MaxRegUsed ->
	    MaxRegUsed1 = Tmp
	;   MaxRegUsed1 = MaxRegUsed
	),
	assign_values(LTmp, MaxRegUsed1, MaxRegUsed2).




find_hole([], Nb, Nb).

find_hole([Reg|Imposs], Nb, Nb1) :-
	var(Reg), !,
	find_hole(Imposs, Nb, Nb1).

find_hole([Reg|Imposs], Nb, Nb2) :-
	(   Reg > Nb ->
	    Nb2 = Nb                                             % hole found
	;   (   Reg == Nb ->
	        Nb1 is Nb + 1
	    ;   Nb1 = Nb
	    ),
	    find_hole(Imposs, Nb1, Nb2)
	).




          % Set handling (without unification)

set_add([], X, [X]).

set_add([Y|L], X, [Y|L]) :-
	X == Y, !.

set_add([Y|L], X, [Y|L1]) :-
	set_add(L, X, L1).




set_delete([Y|L], X, L) :-                      % set_delete(L,X,L1) fails if
	X == Y,                                      % X does not belong to L
	        !.

set_delete([Y|L], X, [Y|L1]) :-
	set_delete(L, X, L1).




set_elt([Y|_], X) :-
	X == Y, !.

set_elt([_|L], X) :-
	set_elt(L, X).




set_inter([], _, []).

set_inter([X|L1], L2, [X|L3]) :-
	set_elt(L2, X), !,
	set_inter(L1, L2, L3).

set_inter([_|L1], L2, L3) :-
	set_inter(L1, L2, L3).




set_union([], L2, L2).

set_union([X|L1], L2, L3) :-
	set_elt(L2, X), !,
	set_union(L1, L2, L3).

set_union([X|L1], L2, [X|L3]) :-
	set_union(L1, L2, L3).




set_diff([], _, []).

set_diff([X|L], L1, L3) :-
	(   set_elt(L1, X) ->
	    L3 = L2
	;   L3 = [X|L2]
	),
	set_diff(L, L1, L2).

/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : inst_codif.pl                                                   *
 * Descr.: instruction codification (needed for register allocation)       *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


          % alias stopping instructions

alias_stop_instruction(InstW) :-
	functor(InstW, F, _),
	(   F = call
	;   F = execute
        ;   F = call_c,
	    arg(2, InstW, LCOpt),
	    (memberchk(jump, LCOpt) ; memberchk(use_x_args, LCOpt))
	), !.




          % instruction codification

codification(WamInst, LCode) :-
	codif(WamInst, LCode), !.


codif(get_variable(x(Tmp), Arg), [c(Arg, Tmp)]).

codif(get_value(x(Tmp), Arg), [r(Tmp), r(Arg)]).

codif(get_variable(y(_), Arg), [r(Arg)]).

codif(get_value(y(_), Arg), [r(Arg)]).

codif(get_atom(_, Arg), [r(Arg)]).

codif(get_integer(_, Arg), [r(Arg)]).

codif(get_float(_, Arg), [r(Arg)]).

codif(get_nil(Arg), [r(Arg)]).

codif(get_list(Reg), [r(Reg)]).

codif(get_structure(_, Reg), [r(Reg)]).

codif(put_variable(x(Tmp), Arg), [w(Tmp), w(Arg)]).

codif(put_void(Arg), [w(Arg)]).

codif(put_value(x(Tmp), Arg), [c(Tmp, Arg)]).

codif(put_variable(y(_), Arg), [w(Arg)]).

codif(put_value(y(_), Arg), [w(Arg)]).

codif(put_unsafe_value(y(_), Arg), [w(Arg)]).

codif(put_atom(_, Arg), [w(Arg)]).

codif(put_integer(_, Arg), [w(Arg)]).

codif(put_float(_, Arg), [w(Arg)]).

codif(put_nil(Arg), [w(Arg)]).

codif(put_list(Reg), [w(Reg)]).

codif(put_structure(_, Reg), [w(Reg)]).

codif(put_meta_term(_, Reg1, Reg), [r(Reg1), w(Reg)]).

codif(math_load_value(x(Reg), Tmp), [r(Reg), w(Tmp)]).

codif(math_load_value(y(_), Tmp), [w(Tmp)]).

codif(math_fast_load_value(x(Reg), Tmp), [r(Reg), w(Tmp)]).

codif(math_fast_load_value(y(_), Tmp), [w(Tmp)]).

codif(unify_variable(x(Tmp)), [w(Tmp)]).

codif(unify_value(x(Tmp)), [r(Tmp)]).

codif(unify_local_value(x(Tmp)), [r(Tmp)]).

codif(call(T), LCode) :-
	( T = _/N ; T = _:_/N ), !,
	lst_r_for_call_execute(0, N, LCode).

codif(execute(T), LCode) :-
	( T = _/N ; T = _:_/N ), !,
	lst_r_for_call_execute(0, N, LCode).

codif(get_current_choice(x(Tmp)), [w(Tmp)]).

codif(cut(x(Tmp)), [r(Tmp)]).

codif(soft_cut(x(Tmp)), [r(Tmp)]).

codif(call_c(_, LCOpt, LReg), LCode) :-
	(   member(x(Tmp), LCOpt) ->
	    End = [w(Tmp)]
	;   End = []
        ),
	lst_rw_for_c_call(LReg, End, LCode).

codif(foreign_call_c(_, _, LReg, _), LCode) :-
	lst_rw_for_foreign_c_call(LReg, [], LCode).

	% instructions which use no temporaries

codif(_, []).




lst_r_for_call_execute(N, N, []).

lst_r_for_call_execute(I, N, [r(I)|L]) :-
	I1 is I + 1,
	lst_r_for_call_execute(I1, N, L).




lst_rw_for_foreign_c_call([], End, End).

lst_rw_for_foreign_c_call([Reg|LReg], End, [r(Reg)|LCode]) :-
	lst_rw_for_foreign_c_call(LReg, [w(Reg)|End], LCode).




lst_rw_for_c_call([], End, End).

lst_rw_for_c_call([x(Reg)|LReg], End, [r(Reg)|LCode]) :-
	!,
	lst_rw_for_c_call(LReg, [w(Reg)|End], LCode).

lst_rw_for_c_call([_|LReg], End, LCode) :-
	lst_rw_for_c_call(LReg, End, LCode).


/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : first_arg.pl                                                    *
 * Descr.: first argument detection                                        *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


find_first_arg([], var).

find_first_arg([WamInst|WamCode], FirstArg) :-
	(   defines_first_arg(WamInst, FirstArg)
	;   stopping_inst(WamInst),
	    FirstArg = var
	;   find_first_arg(WamCode, FirstArg)
	), !.




stopping_inst(call(_)).

stopping_inst(execute(_)).

stopping_inst(cut(_)).

stopping_inst(soft_cut(_)).

stopping_inst(WamInst) :-
	codification(WamInst, LCode),
	assign_x0(LCode).




assign_x0([Code|LCode]) :-
	(   Code = w(0)
	;   Code = c(R1, R2),
	    R1 \== R2,
	    R2 = 0
	;   assign_x0(LCode)
	).




defines_first_arg(get_atom(A, 0), atm(A)).

defines_first_arg(get_integer(N, 0), int(N)).

%defines_first_arg(get_float(N,0),flt(N)).            % no indexing on floats

defines_first_arg(get_nil(0), atm([])).

defines_first_arg(get_list(0), lst).

defines_first_arg(get_structure(F/N, 0), stc(F, N)).

/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : indexing.pl                                                     *
 * Descr.: indexing code generation                                        *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


/*-------------------------------------------------------------------------*
 * Level 1:                                                                *
 *                                                                         *
 * The clauses C1,...,Cn of a predicate Pred are split into groups         *
 * G0,...,Gm so that each group Gi:                                        *
 *                                                                         *
 *   a) contains only one clause whose 1st arg is a variable.              *
 *   b) contains only clauses whose 1st arg is not a variable.             *
 *                                                                         *
 * The following code is then produced:                                    *
 *                                                                         *
 *   L0: try_me_else(L1)                                                   *
 *       <code for G0>                                                     *
 *                                                                         *
 *   L1: retry_me_else(L2)                                                 *
 *       <code for G1>                                                     *
 *            :                                                            *
 *            :                                                            *
 *   Lm: trust_me_else_fail                                                *
 *       <code for Gm>                                                     *
 *                                                                         *
 * Level 2:                                                                *
 *                                                                         *
 * For a group Gi whose type is a), the <code for Gi> only contains the    *
 * code produced for the associated Ck clause.                             *
 * For a group Gi whose type is b), the <code for Gi> contains indexing    *
 * instructions for the level 2 to discriminate between atoms, integers    *
 * lists and structures as follows:                                        *
 *                                                                         *
 *            switch_on_term(LabVar,LabAtm,LabInt,LabLst,LabStc)           *
 *                                                                         *
 *   LabFail: fail                 if there is a LabXxx = LabFail          *
 *                                                                         *
 *   LabAtm : switch_on_atom(N,[(atm1,LabAtm1),...(atmN,LabAtmN)])       \ *
 *                                                                       | *
 *   LabAtmj: try(Adj1)                  \  if more than 1 clause has    | *
 *            retry(Adj2) if more than 2 |  atmj as 1st arg,             | *
 *              :                        |  else LabAtmj = Adj1          | *
 *            trust(Adjk)                /                               | *
 *                                 if there are atms, else LabAtm=fail   / *
 *   idem for switch_on_integer                                            *
 *                                                                         *
 *   LabLst : try(Adj1)                  \  if more than 1 clause has    | *
 *            retry(Adj2) if more than 2 |  [_|_] as 1st arg,            | *
 *              :                        |  else LabLst = Adj1           | *
 *            trust(Adjk)                /                               | *
 *                                 if there are lsts, else LabLst=fail   / *
 *                                                                         *
 *   LabStc : switch_on_structure(N,[(stc1,LabStc1),...(stcN,LabStcN)])  \ *
 *                                                                       | *
 *   LabStcj: try(Adj1)                  \  if more than 1 clause has    | *
 *            retry(Adj2) if more than 2 |  stcj as 1st arg,             | *
 *              :                        |  else LabStcj = Adj1          | *
 *            trust(Adjk)                /                               | *
 *                                 if there are stcs, else LabStc=fail   / *
 *                                                                         *
 *   LabVar:  try_me_else(LabVar2) if there are more than 1 clause in Gi,  *
 *   Ad1:     <code for clause 1>  else LabVar = Ad1                       *
 *                                                                         *
 *   LabVar2: retry_me_else(LabVar3)                                       *
 *   Ad2:     <code for clause 2>                                          *
 *                :                                                        *
 *                :                                                        *
 *   LabVarp: trust_me_else_fail                                           *
 *   Adp:     <code for clause p>                                          *
 *                                                                         *
 * LCC: [cl(Ad,FirstArg,WamCl), ...] list of compiled clauses for Pred.    *
 *                                                                         *
 *       Ad      : will contain (in level 2) the label associated to WamCl *
 *                 (initially Ad is an unbound variable).                  *
 *       FirstArg: the first argument of the source clause.                *
 *       WamCl   : [wam_inst, ...] clause wam code.                        *
 *                                                                         *
 * look_for_var partitions LCC in LCCBefore, CCVar and LCCAfter and detects*
 * the current case:                                                       *
 *                                                                         *
 *   1...) a variables has been found (thus level 1), sub-cases:           *
 *    11) LCCBefore<>[] and LCCAfter<>[]  12) LCCBefore<>[] and LCCAfter=[]*
 *    13) LCCBefore= [] and LCCAfter<>[]  14) LCCBefore= [] and LCCAfter=[]*
 *                                                                         *
 *   2) no variables (thus level 2).                                       *
 *                                                                         *
 * other used variables:                                                   *
 *                                                                         *
 * Lev1: has any try/retry/trust_me_else been generated for level 1 (t/f)? *
 * Atm : [atm=[Ad, ...], ...]                                              *
 * Int : [int=[Ad, ...], ...]                                              *
 * Lst : [Ad, ...]                                                         *
 * Stc : [f/n=[Ad, ...], ...]                                              *
 * List: Atm, Int, or Stc for general processings                          *
 *                                                                         *
 * Each label issued from the indexing phase is first referenced and later *
 * defined.                                                                *
 *-------------------------------------------------------------------------*/

indexing(LCC, WamCode1) :-
	indexing1(LCC, f, _, [_|WamCode]),       % ignore the unused label(0)
	cur_pred(Pred, N),
	(   test_pred_flag(need_cut_level, Pred, N) ->
	    N1 is N + 1,
	    WamCode1 = [pragma_arity(N1), get_current_choice(x(N))|WamCode]
	;   WamCode1 = WamCode
	),
	allocate_labels(WamCode1, 1, _).




indexing1(LCC, Lev1, Lab, [label(Lab)|WamCode]) :-
	look_for_var(LCC, Case, LCCBefore, CCVar, LCCAfter),
	Case \== 2, !, % GC for large database with many ground facts/clauses (e.g. wordnet)
	mk_indexing(Case, LCCBefore, CCVar, LCCAfter, Lev1, WamCode), !.

indexing1(LCC, Lev1, Lab, [label(Lab)|WamCode]) :-
	Case = 2,
	LCCBefore = LCC,
	LCCAfter = [],
	mk_indexing(Case, LCCBefore, _CCVar, LCCAfter, Lev1, WamCode), !.




look_for_var([], 2, [], _, []).

look_for_var([cl(Ad, var, WamCl)|LCC], Case, [], cl(Ad, var, WamCl), LCC) :-
	!,
	(   LCC = [] ->
	    Case = 14
	;   Case = 13
	).

look_for_var([CC|LCC], Case1, [CC|LCCBefore], CCVar, LCCAfter) :-
	look_for_var(LCC, Case, LCCBefore, CCVar, LCCAfter),
	(   Case = 13 ->
	    Case1 = 11
	;   Case = 14 ->
	    Case1 = 12
	;   Case1 = Case
	).




mk_indexing(11, LCCBefore, cl(_, _, WamCl), LCCAfter, Lev1, WamCode) :-
	(   Lev1 = f ->
	    TmRmTm = try_me_else(Lab)
	;   TmRmTm = retry_me_else(Lab)
	),
	mk_indexing(2, LCCBefore, _, _, f, WamBefore),
	indexing1(LCCAfter, t, Lab1, WamAfter),
	WamCode = [TmRmTm, WamBefore, label(Lab), retry_me_else(Lab1), WamCl|WamAfter].

mk_indexing(12, LCCBefore, cl(_, _, WamCl), _, Lev1, WamCode) :-
	(   Lev1 = f ->
	    TmRmTm = try_me_else(Lab)
	;   TmRmTm = retry_me_else(Lab)
	),
	mk_indexing(2, LCCBefore, _, _, f, WamBefore),
	WamCode = [TmRmTm, WamBefore, label(Lab), trust_me_else_fail|WamCl].

mk_indexing(13, _, cl(_, _, WamCl), LCCAfter, Lev1, WamCode) :-
	(   Lev1 = f ->
	    TmRmTm = try_me_else(Lab)
	;   TmRmTm = retry_me_else(Lab)
	),
	indexing1(LCCAfter, t, Lab, WamAfter),
	WamCode = [TmRmTm, WamCl|WamAfter].

mk_indexing(14, _, cl(_, _, WamCl), _, Lev1, WamCode) :-
	(   Lev1 = f ->
	    WamCode = WamCl
	;   WamCode = [trust_me_else_fail|WamCl]
	).

mk_indexing(2, LCC, _, _, Lev1, WamCode) :-
	(   Lev1 = f ->
	    WamCode = WamCode1
	;   WamCode = [trust_me_else_fail|WamCode1]
	),
	(   LCC = [_] ->              % no switch_on_term for only one clause
	    WamCode2 = [_|WamCode2Rest],               % remove useless label
	    WamCode1 = WamCode2Rest
	;   WamCode1 = [switch_on_term(LabVar, LabAtm, LabInt, LabLst, LabStc)|WamCode2]
	),
	WamCode2 = WamSwtAtm,
	split(LCC, Atm, Int, Lst, Stc), !,
	gen_switch(Atm, switch_on_atom, LabAtm, WamSwtInt, WamSwtAtm),
	gen_switch(Int, switch_on_integer, LabInt, WamLst, WamSwtInt),
	gen_list(Lst, LabLst, WamSwtStc, WamLst),
	gen_switch(Stc, switch_on_structure, LabStc, WamCode3, WamSwtStc),
	gen_insts(LCC, LabVar, WamCode3).




split(LCC, Atm1, Int1, Lst, Stc1) :-
	split1(LCC, Atm, Int, Lst, Stc),
	group_by_keys(Atm, Atm1),
	group_by_keys(Int, Int1),
	group_by_keys(Stc, Stc1).


split1([], [], [], [], []).

split1([cl(Ad, FirstArg, _)|LCC], Atm, Int, Lst, Stc) :-
	split2(FirstArg, Ad, AtmNext, IntNext, LstNext, StcNext, Atm, Int, Lst, Stc),
	split1(LCC, AtmNext, IntNext, LstNext, StcNext).
	

split2(atm(A), Ad, Atm, Int, Lst, Stc, [A-Ad|Atm], Int, Lst, Stc).

split2(int(N), Ad, Atm, Int, Lst, Stc, Atm, [N-Ad|Int], Lst, Stc).

split2(lst, Ad, Atm, Int, Lst, Stc, Atm, Int, [Ad|Lst], Stc).

split2(stc(F, N), Ad, Atm, Int, Lst, Stc, Atm, Int, Lst, [F/N-Ad|Stc]).




	% Prepare swich_on_atom/int/stc instructions:
	% from a list of pairs Key-Ad (of the form [K-Ad, ...]) group by (same) keys.
	% Returns a list of groups : to each different Key (K) associate a list of Ad (LAd).
	% Seems natural to return a list of K=LAd but we return [ LAd=K, ... ]
	% because we use an additional sort/1 to have elements sorted by Ad chronologically
	% to have in the WAM file, elements by order of apparition in the source file
	% This sort/1 can be removed, the only important order is inside LAd,
	% (should as in the source file) - we thus use a keysort.

group_by_keys(List, List1) :-
	keysort(List),
	group_by_keys1(List, List1),
	% this sort is optional: only to have swich_on_atom/int/stc
	% elements by order of apparition in the source file
	% if present, needs a list with LAd on the left wrt to key
	sort(List1). 



group_by_keys1([], []).

group_by_keys1([K-Ad|List], [[Ad|LAd]=K|List2]) :-
	group_by_keys2(List, K, LAd, List1),
	group_by_keys1(List1, List2).
	

group_by_keys2([K-Ad|List], K, [Ad|LAd], List1) :-
	!,
	group_by_keys2(List, K, LAd, List1).

group_by_keys2(List, _, [], List).




gen_switch([], _, fail, LNext, LNext) :-
	!.

    % if only 1 element with only 1 clause, no switch (remove if needed)

%gen_switch([_=[Ad]], _, Ad, LNext, LNext) :-
gen_switch([[Ad]=_], _, Ad, LNext, LNext) :-
	!.

    % if only 1 element with n clauses, no switch (remove if needed)
/*
%gen_switch([_=LAd], _, Lab, LNext, WamTRT) :-
gen_switch([LAd=_], _, Lab, LNext, WamTRT) :-
	!,
	gen_list(LAd, Lab, LNext, WamTRT).
*/
gen_switch(List, Ins, Lab, LNext, [label(Lab), SwtW|WamTRT]) :-
	create_switch_list(List, LSwt, LNext, WamTRT),
	SwtW =.. [Ins, LSwt].




create_switch_list([], [], LNext, LNext).

%create_switch_list([K=LAd|List], [(K, Lab)|LSwt], LNext, WamTRT) :-
create_switch_list([LAd=K|List], [(K, Lab)|LSwt], LNext, WamTRT) :-
	gen_list(LAd, Lab, WamTRT1, WamTRT),
	create_switch_list(List, LSwt, LNext, WamTRT1).




gen_list([], fail, LNext, LNext).

gen_list([Ad], Ad, LNext, LNext) :-                % only 1 Atmj, Lst or Stcj
	!.

gen_list([Ad|LAd], Lab, LNext, WamRT1) :-                              % 2..n
	WamRT1 = [label(Lab), try(Ad)|WamRT],
	gen_list1(LAd, LNext, WamRT).


gen_list1([Ad], LNext, [trust(Ad)|LNext]).

gen_list1([Ad|LAd], LNext, WamRT1) :-
	WamRT1 = [retry(Ad)|WamRT],
	gen_list1(LAd, LNext, WamRT).




gen_insts([cl(Ad, _, WamCl)], Ad, [label(Ad)|WamCl]) :-       % only 1 clause
	!.

gen_insts([cl(Ad, _, WamCl)|LCC], Lab, WamCode2) :-                    % 2..n
	gen_insts1(LCC, Lab1, WamCode),
	WamCode2 = [label(Lab), try_me_else(Lab1), label(Ad), WamCl|WamCode].



gen_insts1([cl(Ad, _, WamCl)], Lab, [label(Lab), trust_me_else_fail, label(Ad)|WamCl]) :-
	!.

gen_insts1([cl(Ad, _, WamCl)|LCC], Lab, WamCode2) :-
	gen_insts1(LCC, Lab1, WamCode),
	WamCode2 = [label(Lab), retry_me_else(Lab1), label(Ad), WamCl|WamCode].




allocate_labels([], N, N) :-
	!.

allocate_labels([WamInst1|WamInst2], N, N2) :-
	!,
	allocate_labels(WamInst1, N, N1),                  % for nested lists
	allocate_labels(WamInst2, N1, N2).

allocate_labels(label(N), N, N1) :-
	!,
	N1 is N + 1 .

allocate_labels(_, N, N).

/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : wam_emit.pl                                                     *
 * Descr.: code emission                                                   *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


/*-------------------------------------------------------------------------*
 * WAM Instructions                                                        *
 *                                                                         *
 * get_variable(V, A)                       put_variable(V, A)             *
 *                                          put_void(A)                    *
 * get_value(V, A)                          put_value(V, A)                *
 *                                          put_unsafe_value(y(Y), A)      *
 * get_atom(F, A)                           put_atom(F, A)                 *
 * get_integer(N, A)                        put_integer(N, A)              *
 * get_float(D, A)                          put_float(D, A)                *
 * get_nil(A)                               put_nil(A)                     *
 * get_list(A)                              put_list(A)                    *
 * get_structure(F/N, A)                    put_structure(F/N, A)          *
 *                                                                         *
 *                                          math_load_value(V, A)          *
 *                                          math_fast_load_value(V, A)     *
 *                                                                         *
 * unify_variable(V)                        allocate(N)                    *
 * unify_void(N)                            deallocate                     *
 * unify_value(V)                                                          *
 * unify_local_value(V)                     call(F/N)                      *
 * unify_atom(F)                            execute(F/N)                   *
 * unify_integer(N)                         proceed                        *
 * unify_nil                                fail                           *
 * unify_list           (only for the last subterm if it is a list)        *
 * unify_structure(F/N) (only for the last subterm if it is a structure)   *
 *                                                                         *
 * label(L)                                                                *
 *                                                                         *
 * switch_on_term(Lvar, Latm, Lint, Llst, Lstc)                            *
 * switch_on_atom([(F,L),...])                                             *
 * switch_on_integer([(N,L),...])                                          *
 * switch_on_structure([(F/N,L),...])                                      *
 *                                                                         *
 * try_me_else(L)                           try(L)                         *
 * retry_me_else(L)                         retry(L)                       *
 * trust_me_else_fail                       trust(L)                       *
 *                                                                         *
 * get_current_choice(V)                    pragma_arity(N) (for cut)      *
 * cut(V)                                                                  *
 * soft_cut(V)                                                             *
 *                                                                         *
 * call_c(F, [T,...], [W,...])                                             *
 *   F=FctName, T=option only these options are relevant:                  *
 *    - jump/boolean/V (jump at / test / move return value to x(X) or y(Y) *
 *    - set_cp (set CP before the call at the next instruction)            *
 *    - fast_call (use a fact call convention)                             *
 *    - tagged (use tagged calls for atoms, integers and F/N)              *
 *                                                                         *
 * foreign_call_c(F, T0, P/N, K, [(M1, T1),...])                           *
 *   F=FctName, T0=Return, P/N=BipName/BipArity, K=ChcSize                 *
 *   Mi=mode (in/out/in_out), Ti=type                                      *
 *                                                                         *
 * V      : x(X) or y(Y)                                                   *
 * X, Y   : integer >= 0                                                   *
 * A      : integer                                                        *
 * D      : float                                                          *
 * N, K   : integer                                                        *
 * F, T, M: atom                                                           *
 * W      : atom or integer or float or atom/integer or x(X)               *
 * L      : integer >= 1 (with no "holes") or 'fail' inside switch_on_term *
 *-------------------------------------------------------------------------*/

emit_code_init(WamFile, PlFile) :-
	emit_code_files(WamFile, PlFile, WamFile1),
	(   WamFile1 = user ->
	    current_output(Stream)
	;   open(WamFile1, write, Stream)
	),
	g_assign(streamwamfile, Stream),
	g_assign(cur_pl_file, ''),
	prolog_name(Name),
	prolog_version(Version),
	format(Stream, '% compiler: ~a ~a~n', [Name, Version]),
	format(Stream, '% file    : ~a~n', [PlFile]),
	g_read(wam_comment, Cmt),
	(   Cmt = '' ->
	    true
	;
	    format(Stream, '%           ~a~n', [Cmt])
	).




emit_code_files('', user, user) :-
	!.

emit_code_files('', PlFile, WamFile) :-
	!,
	decompose_file_name(PlFile, _, Prefix, Suffix),
	(   g_read(native_code, t) ->
	    WamSuffix = '.wam'
	;
	    WamSuffix = '.wbc'
	),
	(   '$prolog_file_suffix'(Suffix) ->
	    atom_concat(Prefix, WamSuffix, WamFile)
	;
	    atom_concat(Prefix, Suffix, WF),
	    atom_concat(WF, WamSuffix, WamFile)
	).

emit_code_files(WamFile, _, WamFile).

/*
:- if(\+ '$current_predicate_any'('$prolog_file_suffix'/1)).
'$prolog_file_suffix'('.pl').
'$prolog_file_suffix'('.pro').
'$prolog_file_suffix'('.prolog').
:- endif.
*/


emit_code_term(Bytes, Lines) :-
	g_read(streamwamfile, Stream),
	character_count(Stream, Bytes),
	line_count(Stream, Lines),
	close(Stream).




emit_code(Pred, N, PlFile, PlLine, WamCode) :-
	g_read(streamwamfile, Stream),
	emit_pred_start(Pred, N, PlFile, PlLine, Stream, _),
	emit_wam_code(WamCode, _, Stream),
	write(Stream, ']).'),
	nl(Stream).




emit_pred_start(Pred, 0, PlFile, PlLine, Stream, Type) :-
	(   Pred = '$exe_user',
	    Type = user
	;   Pred = '$exe_system',
	    Type = system
	), !,
	emit_file_name_if_needed(PlFile, Stream),
	format(Stream, '~n~ndirective(~d,~a,', [PlLine, Type]).

emit_pred_start(Pred, N, PlFile, PlLine, Stream, _) :-
	emit_file_name_if_needed(PlFile, Stream),
	(   test_pred_flag(dyn, Pred, N) ->
	    StaDyn = dynamic
	;   StaDyn = static
	),
	(   test_pred_flag(pub, Pred, N) ->
	    PubPriv = public
	;   PubPriv = private
	),
	(   test_pred_flag(multi, Pred, N) ->
	    MonoMulti = multifile
	;   MonoMulti = monofile
	),
	g_read(module, Module0),
	export_type(Pred, N, Module0, _Module, ExportBplBfd),
  		% MODULES: then add Module:Pred/N instead of Pred/N in the next line
	format(Stream, '~n~npredicate(~q,~d,~a,~a,~a,~a,',
	       [Pred/N, PlLine, StaDyn, PubPriv, MonoMulti, ExportBplBfd]).



export_type(Pred, _, Module, Module, local) :-
	'$aux_name'(Pred), !.

export_type(Pred, N, Module, Module, local) :-
	test_pred_flag(multi, Pred, N), !.

export_type(Pred, N, _, system, built_in) :-
	test_pred_flag(bpl, Pred, N), !.

export_type(Pred, N, _, system, built_in_fd) :-
	test_pred_flag(bfd, Pred, N), !.

export_type(Pred, N, system, system, built_in) :-  % an exported pred in system is a built_in - remove if wanted
	is_exported(Pred, N), !.

export_type(_, _, Module, Module, global) :-
	g_read(module_already_seen, f), !.

export_type(Pred, N, Module, Module, global) :-
	is_exported(Pred, N), !.

export_type(_, _, Module, Module, local).




emit_file_name_if_needed(PlFile, _) :-
	g_read(cur_pl_file, PlFile), !.

emit_file_name_if_needed(PlFile, Stream) :-
	format(Stream, '~n~nfile_name(~q).~n', [PlFile]),
	g_assign(cur_pl_file, PlFile).




emit_wam_code([], _, _).

emit_wam_code([WamInst|WamCode], First, Stream) :-
	emit_wam_code(WamInst, First, Stream),              % for nested code
	emit_wam_code(WamCode, First, Stream), !.

emit_wam_code(WamInst, First, Stream) :-
	special_form(WamInst, WamInst1),
	emit_wam_code(WamInst1, First, Stream).

emit_wam_code(WamInst, _, _) :-
	g_read(keep_void_inst, KeepVoidInst),
	dummy_instruction(WamInst, KeepVoidInst), !.

emit_wam_code(WamInst, First, Stream) :-
	(   var(First) ->
	    put_char(Stream, '['),
	    First = f
	;   put_char(Stream, ',')
	),
	nl(Stream),
	(   WamInst = label(_) ->
	    nl(Stream)
	;   %put_char(Stream, '\t')  % select this to emit tabs instead of spaces
	    write(Stream, '    ')
	),
	emit_one_inst(WamInst, Stream).




emit_one_inst(WamInst, Stream) :-
	atom(WamInst), !,
	writeq(Stream, WamInst).

emit_one_inst(WamInst, Stream) :-
	functor(WamInst, F, N),
	writeq(Stream, F),
	emit_args(0, N, WamInst, Stream),
	put_char(Stream, ')').


emit_args(N, N, _, _) :-
	!.

emit_args(I, N, WamInst, Stream) :-
	I1 is I + 1,
	(   I1 = 1 ->
	    put_char(Stream, '(')
	;   put_char(Stream, ',')
	),
	arg(I1, WamInst, A),
	emit_one_arg(A, Stream),
	emit_args(I1, N, WamInst, Stream).


emit_one_arg([X|L], Stream) :-
	length(L, N),		% split long lists
	N > 30, !,
	put_char(Stream, '['),
	line_position(Stream, P),
	write_term(Stream, X, [quoted(true), priority(999)]),
%	PrefixTab is P // 8,     % select this to emit tabs instead of spaces
%	PrefixSpc is P mod 8,
	PrefixTab = 0,
	PrefixSpc = P,
	emit_list(L, PrefixTab, PrefixSpc, Stream).

emit_one_arg(A, Stream) :-
	g_read(native_code, f),	    % if also wanted to .wam remove this line
	emit_one_f_n(A, Stream), !. % if fail breakthrough

emit_one_arg(A, Stream) :-
	writeq(Stream, A).


 /* this is added to fix a bug with consult/1. Pb with operators:
  *    :- op(500, xfx, edge).
  *    p(a edge b).
  *    :- op(0, xfx, edge).
  * will fail if edge is declared in the top-level before consult
  */

emit_one_f_n(M:P/N, Stream) :-
	format(Stream, '(~q):(~q)/~q', [M, P, N]).

emit_one_f_n(F/N, Stream) :-
	format(Stream, '(~q)/~q', [F, N]).




emit_list([], _, _, Stream) :-
	put_char(Stream, ']').

emit_list([X|L], PrefixTab, PrefixSpc, Stream) :-
	format(Stream, ',~n~*c~*c', [PrefixTab, 9, PrefixSpc, 32]), % changed 0' to 32 for emacs highlighting
	write_term(Stream, X, [quoted(true), priority(999)]),
	emit_list(L, PrefixTab, PrefixSpc, Stream).




emit_ensure_linked :-
	g_read(streamwamfile, Stream),
	retract(ensure_linked(Name, Arity)), !,
	format(Stream, '~n~nensure_linked([~q', [Name/Arity]),
	(   clause(ensure_linked(Name1, Arity1), _),
	    format(Stream, ',~q', [Name1/Arity1]),
	    fail
	;   true
	),
	write(Stream, ']).'),
	nl(Stream).

emit_ensure_linked.




bc_emit_code(Pred, N, PlFile, PlLine, LCompCl) :-
	g_read(streamwamfile, Stream),
	emit_pred_start(Pred, N, PlFile, PlLine, Stream, Type),
	(   nonvar(Type) ->
	    LCompCl = [bc((_ :- Body), _)],
	    bc_emit_prolog_term(Stream, Body),
	    format(Stream, ').~n', [])
	;   length(LCompCl, NbCl),
	    (   LCompCl = [bc('$$empty$$predicate$$clause$$', [proceed])] ->
	        NbCl1 = 0,
	        LCompCl1 = []
	    ;   NbCl1 = NbCl,
	        LCompCl1 = LCompCl
	    ),
	    format(Stream, '~d).~n', [NbCl1]),
	    bc_emit_lst_clause(LCompCl1, Stream)
	).




bc_emit_lst_clause([], _).

bc_emit_lst_clause([bc(Cl, WamCode)|LCompCl], Stream) :-
	format(Stream, '~n~nclause(', []),
	bc_emit_prolog_term(Stream, Cl),
	put_char(Stream, ','),
	emit_wam_code(WamCode, _, Stream),
	format(Stream, ']).~n', []),
	bc_emit_lst_clause(LCompCl, Stream).




bc_emit_prolog_term(Stream, Term) :- % create choice point for '$above'/1 write option
	'$get_current_B'(B),
	name_singleton_vars(Term),
	bind_variables(Term, [exclude([Term])]),
	write_term(Stream, Term, [numbervars(true), namevars(true), '$above'(B), ignore_ops(true), quoted(true)]),
	fail.

bc_emit_prolog_term(_, _).

/*-------------------------------------------------------------------------*
 * GNU Prolog                                                              *
 *                                                                         *
 * Part  : Prolog to WAM compiler                                          *
 * File  : pl2wam.pl                                                       *
 * Descr.: main file                                                       *
 * Author: Daniel Diaz                                                     *
 *                                                                         *
 * Copyright (C) 1999-2025 Daniel Diaz                                     *
 *                                                                         *
 * This file is part of GNU Prolog                                         *
 *                                                                         *
 * GNU Prolog is free software: you can redistribute it and/or             *
 * modify it under the terms of either:                                    *
 *                                                                         *
 *   - the GNU Lesser General Public License as published by the Free      *
 *     Software Foundation; either version 3 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or                                                                      *
 *                                                                         *
 *   - the GNU General Public License as published by the Free             *
 *     Software Foundation; either version 2 of the License, or (at your   *
 *     option) any later version.                                          *
 *                                                                         *
 * or both in parallel, as here.                                           *
 *                                                                         *
 * GNU Prolog is distributed in the hope that it will be useful,           *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU       *
 * General Public License for more details.                                *
 *                                                                         *
 * You should have received copies of the GNU General Public License and   *
 * the GNU Lesser General Public License along with this program.  If      *
 * not, see http://www.gnu.org/licenses/.                                  *
 *-------------------------------------------------------------------------*/


pl2wam(Arg) :-
	atom(Arg),
	Arg \== [], !,			% to call easily under the top-level
	pl2wam([Arg]).

pl2wam(LArg) :-
	catch(pl2wam1(LArg), Err, exception(Err)).




pl2wam1(LArg) :-
	read_file_init,		% inits before read_pl_file
	cmd_line_args(LArg, PlFile, WamFile, LInclude),
	prolog_file_name(PlFile, PlFile1),
	compile_msg_start(PlFile1),
	init_counters,
	emit_code_init(WamFile, PlFile1),
	compile_list_include(LInclude),
	compile_and_emit_file(PlFile1),
	emit_ensure_linked,
	read_file_term(InBytes, InLines),
	emit_code_term(OutBytes, OutLines),
	read_file_error_nb(ErrNb),
	(   ErrNb = 0 ->
	    display_counters,
	    compile_msg_end(PlFile1, InBytes, InLines, OutBytes, OutLines)
	;   format('~N\t~d error(s)~n', [ErrNb]),
	    abandon_exec
	).




compile_list_include(LInclude) :-
	member(PlFile, LInclude),
	compile_and_emit_file(PlFile),
	fail.

compile_list_include(_).




compile_and_emit_file(PlFile) :-
	read_file_init(PlFile),
	g_read(native_code, NativeCode),
	repeat,
	read_predicate(Pred, N, LSrcCl),
	add_counter(user_read_file, real_read_file),
	(   LSrcCl = [] ->	% [] at end of file
	    !
	;
	    read_file_error_nb(0),
	    compile_and_emit_pred(NativeCode, Pred, N, LSrcCl),
	    fail
	).




compile_and_emit_pred(t, Pred, N, LSrcCl) :-
	compile_emit_inits(Pred, N, LSrcCl, PlFile, PlLine),
	compile_lst_clause(LSrcCl, LCompCl),
	indexing(LCompCl, WamCode),
	add_counter(user_indexing, real_indexing),
	emit_code(Pred, N, PlFile, PlLine, WamCode),
	add_counter(user_wam_emit, real_wam_emit).

compile_and_emit_pred(f, Pred, N, LSrcCl) :-
	compile_emit_inits(Pred, N, LSrcCl, PlFile, PlLine),
	bc_compile_lst_clause(LSrcCl, LCompCl),
	bc_emit_code(Pred, N, PlFile, PlLine, LCompCl),
	add_counter(user_wam_emit, real_wam_emit).




compile_emit_inits(Pred, N, LSrcCl, PlFile1, PlLine) :-
	g_assign(cur_func, Pred),
	g_assign(cur_arity, N),
	LSrcCl = [[of(PlFile, _, _)|_] + (PlLine - _) + _|_],
	absolute_file_name(PlFile, PlFile1),
	syntactic_sugar_init_pred(Pred, N, PlFile1).




compile_lst_clause([], []).

compile_lst_clause([SrcCl|LSrcCl], [cl(_, FirstArg, WamCl)|LCC]) :-
	compile_clause(SrcCl, FirstArg, WamCl),
	compile_lst_clause(LSrcCl, LCC).




compile_clause(Where + Cl, FirstArg, WamCl) :-
	g_assign(where, Where),
	syntactic_sugar(Cl, Head, Body),
	add_counter(user_syn_sugar, real_syn_sugar),
	internal_format(Head, Body, Head1, Body1, NbChunk, NbY),
	add_counter(user_internal, real_internal),
	code_generation(Head1, Body1, NbChunk, NbY, WamCl),
	add_counter(user_code_gen, real_code_gen),
	allocate_registers(WamCl),
	add_counter(user_reg_alloc, real_reg_alloc),
	find_first_arg(WamCl, FirstArg),
	add_counter(user_first_arg, real_first_arg).




bc_compile_lst_clause([], []).

bc_compile_lst_clause([SrcCl|LSrcCl], [bc(Cl, WamCl)|LCC]) :-
	SrcCl = _ + Cl,
	compile_clause(SrcCl, _FirstArg, WamCl),
	bc_compile_lst_clause(LSrcCl, LCC).



compile_msg_start(_) :-
	g_read(compile_msg, f), !.

compile_msg_start(PlFile) :-
	(   g_read(native_code, t) ->
	    Type = 'native code'
	;   Type = 'byte code'
	),
	format('compiling ~a for ~a...~n', [PlFile, Type]),
	flush_output.




compile_msg_end(_, _, _, _, _) :-
	g_read(compile_msg, f), !.

compile_msg_end(PlFile, _InBytes, InLines, OutBytes, _OutLines) :-
	real_time(Time),
	format('~a compiled, ~d lines read - ~d bytes written, ~d ms~n', [PlFile, InLines, OutBytes, Time]).




cur_pred(Func, Arity) :-
	g_read(cur_func, Func),
	g_read(cur_arity, Arity).


cur_pred_without_aux(Func1, Arity1) :-
	cur_pred(Func, Arity),
	'$pred_without_aux'(Func, Arity, Func1, Arity1).




init_counters :-
	g_read(statistics, f), !.

init_counters :-
	g_assign(user_read_file, 0),
	g_assign(real_read_file, 0),
	g_assign(user_syn_sugar, 0),
	g_assign(real_syn_sugar, 0),
	g_assign(user_internal, 0),
	g_assign(real_internal, 0),
	g_assign(user_code_gen, 0),
	g_assign(real_code_gen, 0),
	g_assign(user_reg_alloc, 0),
	g_assign(real_reg_alloc, 0),
	g_assign(user_indexing, 0),
	g_assign(real_indexing, 0),
	g_assign(user_first_arg, 0),
	g_assign(real_first_arg, 0),
	g_assign(user_wam_emit, 0),
	g_assign(real_wam_emit, 0),
	last_times(_, _).




add_counter(_, _) :-
	g_read(statistics, f), !.

add_counter(UserCounter, RealCounter) :-
	last_times(User1, Real1),
	g_read(UserCounter, User2),
	g_read(RealCounter, Real2),
	User is User1 + User2,
	Real is Real1 + Real2,
	g_assign(UserCounter, User),
	g_assign(RealCounter, Real).




last_times(User, Real) :-
	statistics(real_time, [_, Real]),
	statistics(runtime, [_, User]).




display_counters :-
	g_read(statistics, f), !.

display_counters :-
	g_read(user_read_file, UReadFile),
	g_read(real_read_file, RReadFile),
	g_read(user_syn_sugar, USynSugar),
	g_read(real_syn_sugar, RSynSugar),
	g_read(user_internal, UInternal),
	g_read(real_internal, RInternal),
	g_read(user_code_gen, UCodeGen),
	g_read(real_code_gen, RCodeGen),
	g_read(user_reg_alloc, URegAlloc),
	g_read(real_reg_alloc, RRegAlloc),
	g_read(user_indexing, UIndexing),
	g_read(real_indexing, RIndexing),
	g_read(user_first_arg, UFirstArg),
	g_read(real_first_arg, RFirstArg),
	g_read(user_wam_emit, UWamEmit),
	g_read(real_wam_emit, RWamEmit),
	U is UReadFile + USynSugar + UInternal + UCodeGen + URegAlloc + UIndexing + UFirstArg + UWamEmit,
	R is RReadFile + RSynSugar + RInternal + RCodeGen + RRegAlloc + RIndexing + RFirstArg + RWamEmit,
	user_time(UTotal),
	real_time(RTotal),
	UMisc is UTotal - U,
	RMisc is RTotal - R,
	format('   Statistics (in ms)     user     real~n', []),
	format('   source reading     : ~%6d   ~%6d~n', [UReadFile, RReadFile]),
	format('   syntactic sugar    : ~%6d   ~%6d~n', [USynSugar, RSynSugar]),
	format('   internal format    : ~%6d   ~%6d~n', [UInternal, RInternal]),
	format('   code generation    : ~%6d   ~%6d~n', [UCodeGen, RCodeGen]),
	format('   register allocation: ~%6d   ~%6d~n', [URegAlloc, RRegAlloc]),
	format('   indexing           : ~%6d   ~%6d~n', [UIndexing, RIndexing]),
	format('   first arg computing: ~%6d   ~%6d~n', [UFirstArg, RFirstArg]),
	format('   code emission      : ~%6d   ~%6d~n', [UWamEmit, RWamEmit]),
	format('   other              : ~%6d   ~%6d~n', [UMisc, RMisc]),
	format('                Total : ~%6d   ~%6d~n', [UTotal, RTotal]).




          % Command-line options reading

cmd_line_args(LArg, PlFile, WamFile, LInclude) :-
	g_assign(plfile, ''),
	g_assign(wamfile, ''),
	g_assign(native_code, t),
	g_assign(wam_comment, ''),
	g_assign(susp_warn, t),
	g_assign(singl_warn, t),
	g_assign(redef_error, t),
	g_assign(foreign_only, f),
	g_assign(call_c, t),
	g_assign(inline, t),
	g_assign(optim_fail, t), % does not correspond to a command-line option (TODO ?)
	g_assign(reorder, t),
	g_assign(reg_opt, 2),
	g_assign(opt_last_subterm, t),
	g_assign(keep_void_inst, f),
	g_assign(fast_math, f),
	g_assign(statistics, f),
	g_assign(compile_msg, f),
	cmd_line_args(LArg, LInclude),
	g_read(plfile, PlFile),
	(   PlFile = '' ->
	    format('no input file~n', []),
	    abandon_exec
	;   true
	),
	g_read(wamfile, WamFile).




cmd_line_args([], []).

cmd_line_args([Arg|LArg], LInclude1) :-
	g_assign(include_file, ''),
	cmd_line_arg1(Arg, LArg, LArg1), !,
	g_read(include_file, IncludeFile),
	(   IncludeFile == '' ->
	    LInclude1 = LInclude
	;   LInclude1 = [IncludeFile|LInclude]
	),
	cmd_line_args(LArg1, LInclude).


cmd_line_arg1('-o', LArg, LArg1) :-
	cmd_line_arg1('--output', LArg, LArg1).

cmd_line_arg1('--output', LArg, LArg1) :-
	(   LArg = [WamFile|LArg1],
	    sub_atom(WamFile, 0, 1, _, Prefix),
	    Prefix \== (-)
	;   format('FILE missing after --output option~n', []),
	    abandon_exec
	),
	g_read(wamfile, WamFile0),
	(   WamFile0 = '' ->
	    true
	;   format('output file already specified (~a)~n', [WamFile0]),
	    abandon_exec
	),
	g_assign(wamfile, WamFile).

cmd_line_arg1('-i', LArg, LArg1) :-
	cmd_line_arg1('--include', LArg, LArg1).

cmd_line_arg1('--include', [File|LArg], LArg) :-
	prolog_file_name(File, PlFile),
	g_assign(include_file, PlFile).

cmd_line_arg1('-W', LArg, LArg1) :-
	cmd_line_arg1('--wam-for-native', LArg, LArg1).

cmd_line_arg1('--wam-for-native', LArg, LArg) :-
	g_assign(native_code, t).

cmd_line_arg1('-w', LArg, LArg1) :-
	cmd_line_arg1('--wam-for-byte-code', LArg, LArg1).

cmd_line_arg1('--wam-for-byte-code', LArg, LArg) :-
	g_assign(native_code, f),
	g_assign(inline, f),                              % force --no-inline
	g_assign(call_c, f).                              % force --no-call-c

cmd_line_arg1('--wam-comment', [Cmt|LArg], LArg) :-
	g_assign(wam_comment, Cmt).

cmd_line_arg1('--no-susp-warn', LArg, LArg) :-
	g_assign(susp_warn, f).

cmd_line_arg1('--no-singl-warn', LArg, LArg) :-
	g_assign(singl_warn, f).

cmd_line_arg1('--no-redef-error', LArg, LArg) :-
	g_assign(redef_error, f).

cmd_line_arg1('--foreign-only', LArg, LArg) :-
	g_assign(foreign_only, t).

cmd_line_arg1('--no-call-c', LArg, LArg) :-
	g_assign(call_c, f).

cmd_line_arg1('--no-inline', LArg, LArg) :-
	g_assign(inline, f).

cmd_line_arg1('--no-reorder', LArg, LArg) :-
	g_assign(reorder, f).

cmd_line_arg1('--no-reg-opt', LArg, LArg) :-
	g_assign(reg_opt, 0).

cmd_line_arg1('--min-reg-opt', LArg, LArg) :-
	g_assign(reg_opt, 1).

cmd_line_arg1('--no-opt-last-subterm', LArg, LArg) :-
	g_assign(opt_last_subterm, f).

cmd_line_arg1('--fast-math', LArg, LArg) :-
	g_assign(fast_math, t).

cmd_line_arg1('--keep-void-inst', LArg, LArg) :-
	g_assign(keep_void_inst, t).

cmd_line_arg1('--statistics', LArg, LArg) :-
	g_assign(statistics, t).

cmd_line_arg1('--compile-msg', LArg, LArg) :-
	g_assign(compile_msg, t).

cmd_line_arg1('--version', LArg, LArg) :-
	display_copying,
	stop.

cmd_line_arg1('-h', LArg, LArg1) :-
	cmd_line_arg1('--help', LArg, LArg1).

cmd_line_arg1('--help', LArg, LArg) :-
	(   h(L),
	    write(L),
	    nl,
	    fail
	;   nl,
	    write('Visit www.gprolog.org for more information.'),
	    nl,
	    stop
	).

cmd_line_arg1(Arg, _, _) :-
	sub_atom(Arg, 0, 1, _, -),
	format('unknown option ~a - try pl2wam --help~n', [Arg]),
	abandon_exec.

cmd_line_arg1(PlFile, LArg, LArg) :-
	g_read(plfile, PlFile0),
	(   PlFile0 = '' ->
	    true
	;   format('input file already specified (~a)~n', [PlFile0]),
	    abandon_exec
	),
	g_assign(plfile, PlFile).




          % Copying

display_copying :-
	prolog_name(Name),
	prolog_version(Version),
	prolog_copyright(Copyright),
	format('Prolog to Wam Compiler (~a) ~a~n', [Name, Version]),
	write(Copyright),
	nl, nl,
	format('~a comes with ABSOLUTELY NO WARRANTY.~n', [Name]),
	format('You may redistribute copies of ~a~n', [Name]),
	format('under the terms of the GNU Lesser General Public License~n', []),
	format('or of the terms of the GNU General Public License (or both in parallel)~n', []),
	format('For more information about these matters, see the files named COPYING.~n', []).




prolog_name('GNU Prolog').

prolog_version('1.6.0').

prolog_date('Sep 23 2026').

prolog_copyright('Copyright (C) 1999-2026 Daniel Diaz').




          % Help

h('Usage: pl2wam [OPTION...] FILE').
h('').
h('Options:').
h('  -o FILE, --output FILE      set output file name').
h('  -W, --wam-for-native        produce a WAM file for native code').
h('  -w, --wam-for-byte-code     produce a WAM file for byte-code (force --no-call-c)').
h('  -i FILE, --include FILE     include FILE at the beginning of the compilation').
h('  --wam-comment COMMENT       emit COMMENT as a comment in the WAM file').
h('  --no-susp-warn              do not show warnings for suspicious predicates').
h('  --no-singl-warn             do not show warnings for named singleton variables').
h('  --no-redef-error            do not show errors for built-in redefinitions').
h('  --foreign-only              only compile foreign/1-2 directives').
h('  --no-call-c                 do not allow the use of fd_tell, ''$call_c'',...').
h('  --no-inline                 do not inline predicates').
h('  --no-reorder                do not reorder predicate arguments').
h('  --no-reg-opt                do not optimize registers').
h('  --min-reg-opt               minimally optimize registers').
h('  --no-opt-last-subterm       do not optimize last subterm compilation').
h('  --fast-math                 fast mathematical mode (assume integer arithmetics)').
h('  --keep-void-inst            keep void instructions in the output file').
h('  --compile-msg               print a compile message').
h('  --statistics                print statistics information').
h('  --help                      print this help and exit').
h('  --version                   print version number and exit').
h('').
h('''user'' can be given as FILE for the standard input/output').




          % Starting directive

go :-
	argument_list(LArg),
	pl2wam(LArg).


          % SCRIP demo driver (edit 2): standard input to standard output

:- initialization(main).

main :-
	pl2wam([user, '-o', user]),
	halt.
