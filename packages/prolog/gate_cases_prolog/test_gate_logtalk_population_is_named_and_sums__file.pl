:- dynamic(gated_off/0).
:- if(true).
gated_on.
:- endif.
:- if(fail).
gated_off.
:- endif.
