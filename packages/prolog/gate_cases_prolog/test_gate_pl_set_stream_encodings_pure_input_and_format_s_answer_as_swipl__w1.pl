:- use_module(library(lists)).
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
rt(Enc, Codes) :- atom_concat(f_, Enc, F), open(F, write, O, [encoding(Enc)]), format(O, '~s', [Codes]), close(O), open(F, read, I, [encoding(Enc)]), read_stream_codes(I, Back), close(I),
    open(F, read, B, [type(binary)]), read_bytes(B, Bytes), close(B), length(Bytes, NB), writeq(Enc-NB-(Back == Codes)), nl.
read_stream_codes(S, L) :- get_code(S, C), ( C == -1 -> L = [] ; L = [C|T], read_stream_codes(S, T) ).
read_bytes(S, L) :- get_byte(S, C), ( C == -1 -> L = [] ; L = [C|T], read_bytes(S, T) ).
main :- open(a, write, S), t(alias, (set_stream(S, alias(myout)), write(myout, hi), nl(myout))), t(tty, set_stream(user_output, tty(false))), t(buffer_size, set_stream(S, buffer_size(25))),
    t(buffer, set_stream(S, buffer(line))), t(eof_action, set_stream(S, eof_action(reset))), t(bad_prop, set_stream(S, foo(bar))), t(bad_eof, set_stream(S, eof_action(nope))), t(unbound, set_stream(S, _)),
    t(record_position, set_stream(S, record_position(true))), t(newline, set_stream(S, newline(posix))), close(S),
    open(a, read, R), t(read_back, (read_stream_codes(R, Cs), atom_codes(A, Cs), A == 'hi\n')), close(R),
    rt(octet, [104, 233, 255]), rt(iso_latin_1, [104, 233, 255]), rt(ascii, [104, 105]), rt(wchar_t, [104, 0x1F600]), rt(utf16le, [104, 0x1F600]), rt(utf8, [104, 0x1F600]),
    open(b, write, W), format(W, '~s', [[0x41]]), set_stream(W, encoding(utf16be)), format(W, '~s', [[0x42]]), close(W), open(b, read, BB, [type(binary)]), read_bytes(BB, BBy), close(BB), writeq(switch(BBy)), nl.
