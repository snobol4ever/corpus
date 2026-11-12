program conv(output);
var bb: bytebool; wb: wordbool; lb: longbool;
begin
  bb := true; writeln(byte(bb)); writeln(word(bb)); writeln(longint(bb)); writeln(int64(bb));
  bb := false; writeln(byte(bb)); writeln(word(bb)); writeln(longint(bb)); writeln(int64(bb));
  wb := true; writeln(byte(wb)); writeln(word(wb)); writeln(longint(wb)); writeln(int64(wb));
  wb := false; writeln(byte(wb)); writeln(word(wb));
  lb := true; writeln(byte(lb)); writeln(word(lb)); writeln(longint(lb)); writeln(int64(lb));
  lb := false; writeln(longint(lb))
end.
