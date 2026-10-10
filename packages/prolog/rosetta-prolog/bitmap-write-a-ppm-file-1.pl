:- module(bitmapIO, [
   write_ppm_p6/2]).

:- use_module(library(lists)).

%write_ppm_p6(File,Bitmap)
write_ppm_p6(Filename,[[X,Y],Pixels]):-
   open(Filename,write,Output,[encoding(octet)]),
   %write p6 header
   writeln(Output, 'P6'),
   atomic_list_concat([X, Y], ' ', Dimensions),
   writeln(Output, Dimensions),
   writeln(Output, '255'),
   %write bytes
   maplist(maplist(maplist(put_byte(Output))),Pixels),
   close(Output).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines write_ppm_p6/2 and never calls it; the driver writes a 2x2 bitmap to a temporary file and prints the file's bytes.
:- initialization((tmp_file(ppm, F), write_ppm_p6(F, [[2, 2], [[[255, 0, 0], [0, 255, 0]], [[0, 0, 255], [255, 255, 255]]]]), read_file_to_codes(F, C, [type(binary)]), delete_file(F), format("~w~n", [C]))).
