:- initialization(main).
main :- catch(between(a,3,_), error(F1,_), (write(F1), nl)),
        catch(between(1,b,_), error(F2,_), (write(F2), nl)),
        catch(between(_,3,_), error(F3,_), (write(F3), nl)),
        catch(between(1,_,_), error(F4,_), (write(F4), nl)),
        catch(between(1,3,foo), error(F5,_), (write(F5), nl)).
