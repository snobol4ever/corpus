program intparam(output);
var x: integer;
  function doubled(n: integer): integer;
  begin doubled := n + n end;
begin x := 7; writeln(doubled(x)) end.
