program arrparam(output);
type vec = array[0..4] of integer;
var v: vec; i: integer;
  function sumvec(a: vec): integer;
  var j, s: integer;
  begin s := 0; for j := 0 to 4 do s := s + a[j]; sumvec := s end;
begin
  for i := 0 to 4 do v[i] := i + 1;
  writeln(sumvec(v))
end.
