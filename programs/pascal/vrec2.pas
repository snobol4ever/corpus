program vrec2;
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
var s: structure;
begin
  s.min.ival := 7;
  writeln(s.min.ival)
end.
