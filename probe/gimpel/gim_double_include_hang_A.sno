* gim_double_include_hang_A - the module a double include duplicates.
	DEFINE('DI_COUNT(S1,S2)FIRST,REST,P')
					:(DI_COUNT_END)
DI_COUNT	S2    LEN(1) . FIRST   REM . REST	:F(RETURN)
	P  =  POS(0)  BREAK(FIRST)  S2
DI_COUNT_1	S1    P  =  REST		:F(RETURN)
	DI_COUNT  =  DI_COUNT + 1		:(DI_COUNT_1)
DI_COUNT_END
