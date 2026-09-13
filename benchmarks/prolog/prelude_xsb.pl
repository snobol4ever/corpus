% prelude_xsb.pl — self-timing hooks for the XSB rival arm. See prelude_swipl.pl for the design.
% ⛔ XSB'S WALL CLOCK IS MILLISECOND-QUANTIZED, AND THAT IS REPORTED, NOT HIDDEN. Same shape as
%   prelude_yap.pl and prelude_gplc.pl: wall_us is a unit conversion of a 1 ms tick, never a
%   precision gain. Report the floor; a multiple built on three ticks is not defensible.
wall_ms(T) :- statistics(walltime,[T,_]).
wall_us(T) :- statistics(walltime,[M,_]), T is M * 1000.
