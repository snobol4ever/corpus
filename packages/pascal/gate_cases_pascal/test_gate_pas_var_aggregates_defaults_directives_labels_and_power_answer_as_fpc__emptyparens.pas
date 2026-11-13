program ep(output);
procedure p(); begin writeln('p') end;
function f(): integer; begin f := 3 end;
begin p(); writeln(f()) end.
