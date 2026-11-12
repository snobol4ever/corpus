{$R-}
program big;
var a: Cardinal; b: QWord; c1, c2: QWord;
begin
  a := 1000000; b := 10000000000000000000;
  c1 := b div a; c2 := 10000000000000000000 div a;
  Write(c1, ' = ', c2, ': ');
  if (c1 <> c2) or (c2 <> 10000000000000) then Writeln('FAIL') else Writeln('OK')
end.
