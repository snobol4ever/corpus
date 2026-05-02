% inner catch handles its own error; outer catch not triggered
risky :- throw(inner_err).

main :-
    catch(
        catch(risky, inner_err, write(inner_caught)),
        outer_err,
        write(outer_caught)
    ), nl.
