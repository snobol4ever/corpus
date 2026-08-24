(* PB-36: variant record initialization - same structure as pcom's display[] *)
program pb36(output);
type
  where = (blck, crec, vrec);
  disp = packed record
    fname: integer;
    flabel: integer;
    case occur: where of
      crec: (clev: integer; cdspl: integer);
      vrec: (vdspl: integer)
  end;
var
  d: array [0..2] of disp;
begin
  d[0].fname  := 0;
  d[0].flabel := 0;
  d[0].occur  := blck;
  d[1].fname  := 1;
  d[1].flabel := 0;
  d[1].occur  := blck;
  writeln(d[0].occur);
  writeln(d[1].occur)
end.
