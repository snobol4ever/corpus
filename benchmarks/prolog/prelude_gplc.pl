% prelude_gplc.pl — self-timing hooks for the GNU Prolog rival arm. See prelude_swipl.pl for the design.
% ⛔⭐ GNU PROLOG HAS NO SUB-MILLISECOND WALL CLOCK, AND THAT IS REPORTED, NOT HIDDEN.
%   wall_ms — real_time/1, integer milliseconds. Floor: 1 ms.
%   wall_us — real_time/1 * 1000. This is a UNIT CONVERSION, NOT A PRECISION GAIN: the value is still
%             quantized to 1000 us. It exists only so the kernel source stays byte-identical across
%             engines; the harness must report gprolog's floor as 1 ms and must NOT present its work_us
%             as comparable-precision to SCRIP's. Reporting a 1 ms floor honestly costs less than
%             defending a multiple built on three ticks.
wall_ms(T) :- real_time(T).
wall_us(T) :- real_time(M), T is M * 1000.
