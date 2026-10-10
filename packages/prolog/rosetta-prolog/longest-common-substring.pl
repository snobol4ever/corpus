common_sublist(A, B, M) :-
	append(_, Ma, A),
	append(M, _, Ma),
	append(_, Mb, B),
	append(M, _, Mb).	

longest_list([], L, _, L).
longest_list([L|Ls], LongestList, LongestLength, Result) :-	
	length(L, Len),
	Len >= LongestLength -> longest_list(Ls, L, Len, Result)
	; longest_list(Ls, LongestList, LongestLength, Result).
	
longest_substring(A, B, Result) :-
	string_chars(A, AChars),
	string_chars(B, BChars),
	findall(SubString, (
		dif(SubString, []), common_sublist(AChars, BChars, SubString)
	), AllSubstrings),
	longest_list(AllSubstrings, [], 0, LongestSubString),
	string_chars(Result, LongestSubString).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines longest_substring/3 and never calls it; the driver prints the longest common substring of the task's two strings thisisatest and testing123testing.
:- initialization(forall(member(A-B, ["thisisatest"-"testing123testing"]), (longest_substring(A, B, S), format("~w~n", [S])))).
