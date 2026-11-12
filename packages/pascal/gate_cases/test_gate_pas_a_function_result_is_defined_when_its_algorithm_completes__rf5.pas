program rf5(output);
function f(n: integer): char; begin case n of 1: f := 'a'; 2: f := 'b' end end;
begin writeln('before'); writeln(f(1)); writeln(f(1)); writeln(f(2)) end.
