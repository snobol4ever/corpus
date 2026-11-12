{$mode macpas}
program empty(output);
type tr = record end;
     tp = packed record i: tr; end;
var e: tr; p: tp; a: array[0..15] of tp; pa: packed array[0..15] of tp; b: array[1..3] of tr;
begin
  pack(a, 0, pa);
  writeln(sizeof(tr), ' ', sizeof(e), ' ', sizeof(tp), ' ', sizeof(p), ' ', sizeof(a), ' ', sizeof(pa), ' ', sizeof(b))
end.
