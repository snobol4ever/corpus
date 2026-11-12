program anon(output);
var r: record k: integer; case integer of 1: (a: integer); 2: (b: 0..99); end;
begin
  r.k := 1; r.a := 0; r.b := 42;
  writeln(r.k, ' ', r.a);
  r.a := 17;
  writeln(r.b)
end.
