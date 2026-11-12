program nest(output);
var g, h: integer;
procedure bump(var v: integer); begin v := v + 1 end;
procedure outer(var p: integer; q: integer);
  var loc: integer;
  procedure inner; begin bump(p); bump(q); bump(loc) end;
  procedure deeper;
    procedure deepest; begin bump(p); p := p * 2 end;
  begin deepest end;
begin loc := 5; inner; deeper; writeln(p, q, loc) end;
function sum3(var a, b: integer): integer;
  function both: integer; begin bump(a); bump(b); both := a + b end;
begin sum3 := both end;
begin g := 1; outer(g, 10); writeln(g); g := 1; h := 2; writeln(sum3(g, h), g, h) end.
