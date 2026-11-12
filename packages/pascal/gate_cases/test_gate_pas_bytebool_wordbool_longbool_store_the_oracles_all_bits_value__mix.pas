program mix(output);
var b: boolean; bb: bytebool; wb: wordbool; lb: longbool;
begin
  wb := true; b := wb; writeln(b);
  wb := false; b := wb; writeln(b);
  lb := true; bb := lb; writeln(bb); writeln(byte(bb));
  b := false; lb := b; writeln(lb); writeln(longint(lb));
  wb := true; writeln(wb); writeln(not wb);
  wb := false; writeln(wb); writeln(not wb)
end.
