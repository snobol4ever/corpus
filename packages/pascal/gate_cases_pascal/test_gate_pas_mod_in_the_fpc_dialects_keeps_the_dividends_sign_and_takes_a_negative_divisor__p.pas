{\$mode $md}
program $p;
var a, b: integer;
begin
  a := -7; b := 3;
  writeln(a mod b, ' ', a div b, ' ', 7 mod b, ' ', (-a) mod b);
  a := 7; b := -3;
  writeln(a mod b, ' ', a div b, ' ', (-a) mod b);
  a := -7; b := -3;
  writeln(a mod b, ' ', a div b)
end.
