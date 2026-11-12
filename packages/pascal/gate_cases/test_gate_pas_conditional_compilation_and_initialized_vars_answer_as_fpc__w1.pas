program p(output);
{$ifdef fpc} var k: integer = 7; {$else} var k: integer; {$endif}
begin {$ifdef fpc} writeln('fpc ', k) {$else} k := 0; writeln(k) {$endif} end.
