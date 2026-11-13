:- writeln(h1).
hp(1).
:- initialization(writeln(h_init)).
:- initialization((hp(X), writeln(hp(X)))).
