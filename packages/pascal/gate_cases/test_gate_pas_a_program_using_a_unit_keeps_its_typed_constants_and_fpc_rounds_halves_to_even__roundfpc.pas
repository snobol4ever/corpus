program roundfpc;
{$mode objfpc}
var r: real;
begin r := 0.5; write(round(r), ' '); r := 1.5; write(round(r), ' '); r := 2.5; write(round(r), ' '); r := 3.5; write(round(r), ' '); r := -2.5; write(round(r), ' '); r := -0.5; write(round(r), ' '); r := 22.5; write(round(r)); writeln end.
