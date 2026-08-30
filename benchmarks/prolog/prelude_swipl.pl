% prelude_swipl.pl — supply the self-timing hooks SCRIP has as builtins, for the SWI-Prolog rival arm.
% Loaded BEFORE the kernel (swipl -g true prelude_swipl.pl kernel.pl) so the kernel source is byte-identical
% across every engine — the kernel is the thing being compared and must not be per-engine.
% ⛔ PRECISION FLOORS DIFFER BY ENGINE AND ARE STATED, NEVER PAPERED OVER (Lon's basis ruling):
%   wall_ms — statistics(walltime, [Total|_]) is INTEGER MILLISECONDS. Floor: 1 ms.
%   wall_us — get_time/1 is a FLOAT epoch seconds, so microseconds are real here, not ms*1000.
% A multiple whose numerator is us-precise and whose denominator is ms-quantized is not a comparison;
% the harness prints each arm's floor beside its number so the reader can see which is which.
wall_ms(T) :- statistics(walltime, [T|_]).
wall_us(T) :- get_time(F), T is integer(F * 1000000).
