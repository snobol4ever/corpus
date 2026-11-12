:- open('/dev/stdin', read, S), stream_property(S, position(P0)), writeln(P0), get_char(S, C), writeln(C), stream_property(S, position(P1)), writeln(P1),
   read_line_to_string(S, L), writeln(L), stream_property(S, position(P2)), writeln(P2), close(S).
