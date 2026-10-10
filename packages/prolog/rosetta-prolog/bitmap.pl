:- module(bitmap, [
   new_bitmap/3,
   fill_bitmap/3,
   get_pixel0/3,
   set_pixel0/4 ]).

:- use_module(library(lists)).

%-----------------------------------------------------------------------------%
% Convenience Predicates
replicate(Term,Times,L):-
   length(L,Times),
   maplist(=(Term),L).

replace0(N,OL,E,NL):-
   nth0(N,OL,_,TL),
   nth0(N,NL,E,TL).
%-----------------------------------------------------------------------------%
% Bitmap Utilities
%
% The Bitmap structure is a list with pixels kept in row major order:
% [dimensions-[X,Y],pixels-[[n11,n12...],[n21,n22...]]]

% In this code what exactly an RGB value is doesn't matter however
% in other bitmap tasks it is assumed to be a list [R,G,B] where
% each is an int between 0 and 255, in code:
rgb_pixel(RGB):-
   length(RGB,3),
   maplist(integer,RGB),
   maplist(between(0,255),RGB).

%new_bitmap(Bitmap,Dimensions,RGB)
new_bitmap([[X,Y],Pixels],[X,Y],RGB) :-
   replicate(RGB,X,Row),
   replicate(Row,Y,Pixels).

%fill_bitmap(New_Bitmap,Bitmap,RGB)
fill_bitmap(New_Bitmap,[[X,Y],_],RGB) :-
   new_bitmap(New_Bitmap,[X,Y],RGB).

%here get and set use 0 based indexing
%get_pixel0(Bitmap,Coordinates,RGB)
get_pixel0([[_DimX,_DimY],Pixels],[X,Y],RGB) :-
   nth0(Y,Pixels,Row),
   nth0(X,Row,RGB).

%set_pixel0(New Bitmap, Bitmap, Coordinates, RGB)
set_pixel0([[DimX,DimY],New_Pixels],[[DimX,DimY],Pixels],[X,Y],RGB) :-
   nth0(Y,Pixels,Row),
   replace0(X,Row,RGB,New_Row),
   replace0(Y,Pixels,New_Row,New_Pixels).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this file is the module bitmap (new_bitmap/3, fill_bitmap/3, get_pixel0/3, set_pixel0/4) that bitmap-write-a-ppm-file-2 and bitmap-bresenhams-line-algorithm load with use_module(bitmap), so its driver runs only when bitmap.pl is the program run with its declared argument demo (bitmap.argv) and is silent when another program loads it; it creates a 4x3 bitmap, fills it, sets a pixel and reads it back.
:- initialization((current_prolog_flag(argv, Av), memberchk(demo, Av) -> new_bitmap(B0, [4, 3], [0, 0, 0]), format("new 4x3 black: ~w~n", [B0]), fill_bitmap(B1, B0, [255, 255, 255]), format("filled white: ~w~n", [B1]), set_pixel0(B2, B1, [1, 2], [255, 0, 0]), format("pixel (1,2) set red: ~w~n", [B2]), get_pixel0(B2, [1, 2], P), format("pixel (1,2): ~w~n", [P]) ; true)).
