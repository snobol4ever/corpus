:- use_module(library(lists)).
:- initialization(main).
main :- format("~s|~n", [[104,233,255]]), format("~s|~n", [[104,128512]]), atom_codes(A, [104,233,128512]), format("~w|~n", [A]), open(o8, write, O), format(O, "~s", [[104,233,128512]]), close(O),
  open(o8, read, I, [type(binary)]), get_byte(I, B1), get_byte(I, B2), get_byte(I, B3), close(I), writeq([B1,B2,B3]), nl.
