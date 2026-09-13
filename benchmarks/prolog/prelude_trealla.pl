% prelude_trealla.pl — self-timing hooks for the Trealla rival arm. See prelude_swipl.pl for the design.
% ⭐ TREALLA HAS A TRUE MICROSECOND CLOCK: get_time/1 returns float seconds, so wall_us is a real
%   microsecond value and NOT a unit conversion of a coarser tick (contrast prelude_gplc.pl, whose
%   1 ms floor must be reported as such). Trealla's work_us IS comparable-precision to SCRIP's.
wall_us(T) :- get_time(F), T is integer(F * 1000000).
wall_ms(T) :- get_time(F), T is integer(F * 1000).
