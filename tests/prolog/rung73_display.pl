%-------------------------------------------------------------- 1 rung73_display
:- initialization(main).
main :-
    display(1+2*3), nl,
    display((1+2)*3), nl,
    display([a,b,c]), nl,
    display('hello world'), nl,
    display('Foo'), nl,
    display('.'), nl,
    display(foo(bar(1),baz(2))), nl,
    display((a:-b,c)), nl,
    display(- 5), nl,
    T1 = f(X,Y,g(X,Z)), numbervars(T1, 0, _), display(T1), nl,
    T2 = [p,q|W], numbervars(T2, 0, _), display(T2), nl,
    display(user_output, hello(world)), nl,
    print(1+2*3), nl,
    print([a,b,c]), nl,
    print('hello world'), nl,
    print(foo(bar(1),baz(2))), nl,
    print(user_output, [x,y,z]), nl,
    write(done), nl,
    halt.
