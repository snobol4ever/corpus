:- system:set_prolog_flag(double_quotes,chars) .

strip_leading(INPUTz,OUTPUTz)
:-
prolog:phrase(strip_leading(OUTPUTz),INPUTz)
.

strip_trailing(INPUTz,OUTPUTz)
:-
prolog:phrase(strip_trailing(OUTPUTz),INPUTz)
.

strip_leading_and_trailing(INPUTz,OUTPUTz)
:-
prolog:phrase(strip_leading_and_trailing(OUTPUTz),INPUTz)
.

strip_leading(OUTPUTz)
-->
strip_leading_spacious ,
strip_leading_nonspacious(OUTPUTz)
.

strip_trailing(OUTPUTz)
-->
strip_trailing_nonspacious(OUTPUTz) ,
strip_trailing_spacious
.

strip_leading_and_trailing(OUTPUTz)
-->
strip_leading_spacious ,
strip_trailing_nonspacious(OUTPUTz) ,
strip_trailing_spacious
.

strip_leading_spacious
-->
[CHAR] ,
{ prolog:char_type(CHAR,space) } ,
! ,
strip_leading_spacious
.

strip_leading_spacious
-->
[]
.

strip_leading_nonspacious([OUTPUT|OUTPUTz])
-->
[OUTPUT] ,
! ,
strip_leading_nonspacious(OUTPUTz)
.

strip_leading_nonspacious([])
-->
[]
.

strip_trailing_nonspacious([OUTPUT|OUTPUTz])
-->
\+ strip_trailing_spacious ,
[OUTPUT] ,
! ,
strip_trailing_nonspacious(OUTPUTz)
.

strip_trailing_nonspacious([])
-->
[]
.

strip_trailing_spacious
-->
[CHAR] ,
{ prolog:char_type(CHAR,space) } ,
! ,
strip_trailing_spacious
.

strip_trailing_spacious
-->
\+ [_] % .i.e. at end-of-string .
.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines strip_leading/2, strip_trailing/2 and strip_leading_and_trailing/2 and never calls them; the driver strips one padded string all three ways, each bracketed.
:- initialization((S = "  \t Hello, World! \t  ", strip_leading(S, L), strip_trailing(S, T), strip_leading_and_trailing(S, B), format("[~s]~n[~s]~n[~s]~n[~s]~n", [S, L, T, B]))).
