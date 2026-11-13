main :- ( op(444, fy, baz), op(444, fy, quux), current_op(444, fy, Op), write(Op), op(0, fy, quux), fail ; true ), nl,
        ( op(445, fy, a1), op(445, fy, a2), op(445, fy, a3), current_op(445, fy, O2), write(O2), op(0, fy, a1), fail ; true ), nl.
:- initialization(main).
