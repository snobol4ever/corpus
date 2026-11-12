:- writeln(m1).
:- ensure_loaded(h).
:- initialization(writeln(m_init)).
:- initialization((hp(X), writeln(m_hp(X)))).
