:- set_prolog_flag(double_quotes, $w).
t("\\x00\\").
t("a\\x00\\b").
t("\\u0000azAZ09").
:- initialization(main).
main :- $(body_for "$w"), halt.
