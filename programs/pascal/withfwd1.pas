program w1;
type valu = record case b: boolean of
        true: (ival: integer);
        false: (valp: integer)
     end;
     structform = (scalar, subrange);
     stp = ^ structure;
     structure = record
        size: integer;
        case form: structform of
          scalar: (fconst: integer);
          subrange: (rangetype: stp; min, max: valu)
     end;
var p: stp; fmin: integer;
procedure getbounds(fsp: stp; var fmn: integer);
begin
  fmn := 0;
  if fsp <> nil then
  with fsp^ do
    if form = subrange then fmn := min.ival
end;
begin
  new(p);
  p^.form := subrange;
  p^.min.ival := 77;
  getbounds(p, fmin);
  writeln(fmin)
end.
