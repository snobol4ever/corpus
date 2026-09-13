% prelude_yap.pl — self-timing hooks for the YAP rival arm. See prelude_swipl.pl for the design.
% ⛔ YAP'S WALL CLOCK IS MILLISECOND-QUANTIZED, AND THAT IS REPORTED, NOT HIDDEN.
%   statistics(walltime,[T,_]) yields integer milliseconds since start. Floor: 1 ms.
%   wall_us multiplies by 1000: a UNIT CONVERSION, NOT A PRECISION GAIN — exactly the gprolog
%   situation. The harness reports YAP's floor as 1 ms and must NOT present its work_us as
%   comparable-precision to SCRIP's or Trealla's.
wall_ms(T) :- statistics(walltime,[T,_]).
wall_us(T) :- statistics(walltime,[M,_]), T is M * 1000.
