:- use_module(library(pure_input)).
:- initialization(main).
rt(Enc, List) :- tmp_file(x, F), open(F, write, O, [encoding(Enc)]), format(O, '~s', [List]), close(O),
   open(F, read, In, [encoding(Enc), bom(false)]), set_stream(In, buffer_size(25)), stream_to_lazy_list(In, Lazy), ( List = Lazy -> R = ok ; R = bad ), close(In),
   open(F, read, I2, [encoding(Enc), bom(false)]), rd(I2, Back), close(I2), length(Back, NB), ( Back = [B1|_] -> true ; B1 = none ), writeq(Enc-R-NB-B1), nl.
rd(S, L) :- get_code(S, C), ( C == -1 -> L = [] ; L = [C|T], rd(S, T) ).
main :- forall(member(E, [ascii, octet, iso_latin_1, utf8, utf16be, utf16le, wchar_t]), rt(E, [104, 105, 106])).
