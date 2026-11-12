:- dynamic(portray/1).
portray(_) :- throw(portray_fired).
:- initialization(main).
main :- catch(print(baz(3)), E, (write(caught_print(E)), nl)),
	catch(format("~p", [qux(4)]), E2, (write(caught_format(E2)), nl)), halt.
