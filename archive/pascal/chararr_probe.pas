program chararr_probe(output);
type alpha = packed array[1..8] of char;
var id: alpha;
    k: integer;
begin
  k := 1;
  id[k] := 'w';
  id[2] := 'r';
  id[3] := 'i';
  id[4] := 't';
  id[5] := 'e';
  id[6] := 'l';
  id[7] := 'n';
  (* id[8] not set - should default to space *)
  if id = 'writeln ' then writeln('MATCH')
  else writeln('FAIL')
end.
