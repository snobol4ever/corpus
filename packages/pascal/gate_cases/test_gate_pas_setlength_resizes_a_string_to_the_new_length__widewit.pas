{$mode objfpc}{H+}
program widewit(output);
var w: WideString;
begin
  w := '123456';
  SetLength(w, 6);
  writeln(Length(w))
end.
