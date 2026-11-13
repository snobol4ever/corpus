t :- assert(qq(a)), assert(qq(b)), assert(qq(c)), fail.
t :- findall(Y, qq(Y), L), write(L), nl.
