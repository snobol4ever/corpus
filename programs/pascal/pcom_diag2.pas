(* pcom_diag2: test call-like dispatch matching pcom's pattern *)
program pcom_diag2(output);
type
  setofsys = set of 0..63;
var
  lkey: integer;
  res: integer;
begin
  lkey := 12;
  res := 0;
  if not(lkey in [5,6,11,12]) then
    writeln('ERROR: should be in set');
  case lkey of
    1,2,3,4: res := 1;
    5,11: res := 5;
    6,12: res := 6;
    7: res := 7;
    8: res := 8;
    9: res := 9;
    10: res := 10;
    13: res := 13
  end;
  writeln(res)
end.
