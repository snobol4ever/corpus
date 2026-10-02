% validation-only shim: GNU Prolog < 1.6.0 reads % as a format control; copied from adapters/gnu.pl
:- if((current_prolog_flag(version_data, gprolog(Major,Minor,Patch,_)), Major:Minor:Patch @< 1:6:0)).

	:- multifile('$logtalk#0.print_message_token#4'/5).
	:- dynamic('$logtalk#0.print_message_token#4'/5).

	% workaround non-standard format/3 predicate feature that uses "%"
	% as a format control sequence; changed to "~%" in version 1.6.0

	'$logtalk#0.print_message_token#4'(Stream, _, Format-Args, _, _) :-
		atom_codes(Format, FormatCodes),
		'$lgt_gnu_filter_format_codes'(FormatCodes, FilteredFormatCodes),
		format(Stream, FilteredFormatCodes, Args).

	'$lgt_gnu_filter_format_codes'([], []).
	'$lgt_gnu_filter_format_codes'([0'%| Codes], [0'%, 0'%| FilteredCodes]) :-
		!,
		'$lgt_gnu_filter_format_codes'(Codes, FilteredCodes).
	'$lgt_gnu_filter_format_codes'([Code| Codes], [Code| FilteredCodes]) :-
		!,
		'$lgt_gnu_filter_format_codes'(Codes, FilteredCodes).

:- endif.
