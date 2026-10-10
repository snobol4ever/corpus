squeeze_( [], _, [] ).
squeeze_( [A], _, [A] ).
squeeze_( [A,A|T], A, R ) :- squeeze_( [A|T], A, R ).
squeeze_( [A,A|T], B, [A|R] ) :- dif( A, B ), squeeze_( [A|T], B, R ).
squeeze_( [A,B|T], S, [A|R] ) :- dif( A, B ), squeeze_( [B|T], S, R ).

squeeze( Str, SqueezeChar, Collapsed ) :-
    string_chars( Str, Chars ),
    squeeze_( Chars, SqueezeChar, Result ),
    string_chars( Collapsed, Result ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines squeeze/3 and never calls it; the driver squeezes the task's strings on the task's characters and prints each with its length (<<< >>> in place of the task's guillemets).
:- initialization(forall(member(S-Ch, [""-' ', "\"If I were two-faced, would I be wearing this one?\" --- Abraham Lincoln "-'-', "..1111111111111111111111111111111111111111111111111111111111111117777888"-'7', "I never give 'em hell, I just tell the truth, and they think it's hell. "-'.', "                                                    --- Harry S Truman "-' ', "                                                    --- Harry S Truman "-'-', "                                                    --- Harry S Truman "-'r', "The better the 4-wheel drive, the further you'll be from help when ya get stuck!"-'e', "headmistressship"-'s']), (once(squeeze(S, Ch, Q)), string_length(S, LS), string_length(Q, LQ), format("squeeze '~w'~noriginal: <<<~w>>> (length ~d)~nsqueezed: <<<~w>>> (length ~d)~n", [Ch, S, LS, Q, LQ])))).
