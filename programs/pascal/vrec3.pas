program vrec3;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
    structure = record
      size: integer;
      case form: integer of
        1: (rangetype: integer; min, max: valu);
        2: (nxtvar: integer; varval: valu)
    end;
    stp = ^structure;
var p: stp;
    fmin: integer;
begin
  new(p);
  with p^ do begin
    min.ival := 9;
    fmin := min.ival
  end;
  writeln(fmin)
end.
