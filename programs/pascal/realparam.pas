program realparam(output);
var r: real;
  function half(x: real): real;
  begin half := x / 2.0 end;
begin r := 6.0; writeln(half(r):10:1) end.
