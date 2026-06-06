program enum2;
type
  opkind = (lod, str, add, sub, mpi, dvi, ujp, fjp, stp);
  phase  = (parse, lower, emit);
var
  op: opkind;
  ph: phase;
  total: integer;

function encode(o: opkind): integer;
begin
  encode := ord(o) * 10
end;

procedure run(o: opkind; p: phase);
begin
  total := total + encode(o) + ord(p)
end;

begin
  total := 0;
  op := add;
  ph := lower;
  writeln(ord(op));
  writeln(ord(ph));
  run(sub, emit);
  writeln(total);
  for op := lod to fjp do
    if op = ujp then writeln(ord(op))
end.
