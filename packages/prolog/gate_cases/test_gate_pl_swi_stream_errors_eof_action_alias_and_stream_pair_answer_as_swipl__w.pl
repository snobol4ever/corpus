:- use_module(library(lists)).
:- initialization((main1, main2)).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = err(E)), \+ \+ (numbervars(N-R, 0, _), write_term(N-R, [quoted(true), numbervars(true)]), nl).
main1 :- t(eof_dom, open('/dev/null', read, _, [eof_action(abc)])),
  t(eof2, setup_call_cleanup(open('/dev/null', read, In, [eof_action(error)]), (get_code(In, C1), get_code(In, C2), writeq(c(C1,C2))), close(In))),
  t(cur_in_bad, current_input(unlikely)),
  t(cur_out_closed, (open_null_stream(S), close(S), current_output(S))),
  t(input_is_not_output, (current_input(X), current_output(X))),
  t(reuse_alias, setup_call_cleanup((open_null_stream(S2), set_stream(S2, alias(a))), open(nonexisting, read, _, [alias(a)]), close(S2))),
  t(pair1, (stream_pair(user_input, I1, O1), writeq(I1-O1), nl)),
  t(pair2, (stream_pair(user_output, I2, O2), writeq(I2-O2), nl)),
  t(set_after_close, (open_null_stream(S3), close(S3), set_stream(S3, timeout(0)))),
  t(double_close, (open_null_stream(S4), close(S4), close(S4))).
main2 :- t(atom, current_input(unlikely)), t(int, current_input(1)), t(comp, current_input(f(x))), t(str, current_output("s")), t(user_input_as_output, current_output(user_input)), t(alias_in, current_input(user_input)), t(alias_out, current_output(user_output)),
  t(alias_out_for_input, current_input(user_output)), t(closed, (open_null_stream(S), close(S), current_input(S))), t(var, current_input(_)), t(good, (current_output(O), is_stream(O))),
  t(pair_out, (open_null_stream(S2), stream_pair(P, user_input, S2), stream_pair(P, I, O2), writeq(is(I, O2)), nl, close(P))),
  t(pair_plain_out, (stream_pair(user_output, I3, O3), writeq(I3-O3), nl)),
  t(pair_in_no_in, (open_null_stream(S4), stream_pair(P4, S4, user_input))).
