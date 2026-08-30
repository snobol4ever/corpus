% epilogue_gplc.pl -- halt after the kernel so the gplc-compiled binary does not fall into the
% interactive top level and print its banner to STDOUT after the answer. Appended by the harness the
% same way the prelude is prepended, so the KERNEL SOURCE stays byte-identical across every engine --
% the kernel is the thing being compared and must never be per-engine.
:- initialization(halt).
