program nilwr(output);
var p: ^integer;
begin
  writeln('before'); p := nil; p^ := 7; writeln('after')
end.
