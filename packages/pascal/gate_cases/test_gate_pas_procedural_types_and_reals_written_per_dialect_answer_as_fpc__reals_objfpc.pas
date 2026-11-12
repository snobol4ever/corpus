{$mode objfpc}
program rf3;
var r: real; i: integer; b: boolean; c: char;
begin r := -1.5; i := 42; b := true; c := 'z'; writeln(r); writeln(r:12); writeln(r:12:3); writeln(i:6, b:7, c:3, 'ab':4) end.
