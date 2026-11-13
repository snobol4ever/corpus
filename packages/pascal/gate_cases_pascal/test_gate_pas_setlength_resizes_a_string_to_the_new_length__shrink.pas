{$mode objfpc}
program shrink(output);
var s: string;
begin
  s := 'hello world';
  SetLength(s, 5);
  writeln(s);
  writeln(Length(s))
end.
