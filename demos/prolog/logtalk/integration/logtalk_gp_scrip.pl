:- initialization((
	set_prolog_flag(suspicious_warning, off),
	consult('$LOGTALKHOME/adapters/scrip.pl'),
	consult('$LOGTALKHOME/integration/gp145_format_shim.pl'),
	consult('$LOGTALKHOME/paths/paths.pl'),
	consult('$LOGTALKHOME/integration/logtalk_comp_gp.pl'),
	set_prolog_flag(suspicious_warning, on)
)).
