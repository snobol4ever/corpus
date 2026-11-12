main :- open('cs.txt', write, S), close(S),
        catch((current_output(S), write(succeeded)), error(E, _), (E = domain_error(stream, _) -> write(domain_error) ; write(E))), nl,
        open('cs.txt', read, S2), close(S2),
        catch((current_input(S2), write(succeeded)), error(E2, _), (E2 = domain_error(stream, _) -> write(domain_error) ; write(E2))), nl,
        catch((current_output(foo), write(succeeded)), error(E3, _), write(E3)), nl,
        current_output(O), ( current_output(O) -> write(live_ok) ; write(live_no) ), nl.
:- initialization(main).
