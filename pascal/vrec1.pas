program vrec1;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
var v: valu;
begin
  v.ival := 42;
  writeln(v.ival)
end.
