{$mode objfpc}
program grow(output);
var s: string;
begin
  s := 'hi';
  writeln(Length(s));
  SetLength(s, 9);
  writeln(Length(s))
end.
