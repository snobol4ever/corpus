program vrec4;
type structure = record
      size: integer;
      case form: integer of
        1: (case scalkind: integer of
              5: (fconst: integer);
              6: ());
        2: (rangetype: integer; min: integer)
    end;
var s: structure;
begin
  s.min := 3;
  writeln(s.min)
end.
