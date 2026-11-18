# benchmarksgame_fpc -- the Benchmarks Game in Free Pascal

The 24 Free Pascal programs of the Computer Language Benchmarks Game, run at the game's own test sizes (ALL.args: binarytrees 10, fannkuchredux 7,
fasta 1000, mandelbrot 200, nbody 1000, pidigits 30, spectralnorm 100; regexredux and revcomp read the game's input files on stdin, ALL.stdin).
Cut twice on fpc 3.2.2 (the grader 2026-11-18; Lon: "Go mine all you can from the web-sites and events you mention.").

THE LIBRARIES (Lon 2026-11-18: "Is PasMP written in Pascal? If so, get it."): PasMP.pas (Benjamin Rosseaux, https://github.com/BeRo1985/pasmp d58e2e6, zlib) and
mtprocs.pas, mtpcpu.pas, mtputils.pas (Lazarus components/multithreadprocs, Mattias Gaertner, modified LGPL) stand beside the programs in the root, where
fpc finds a unit; with them 9 programs compile that did not. Still refused by fpc 3.2.2: fasta_6 (an operator on PGene) and regexredux_1 (it links libpcre).
