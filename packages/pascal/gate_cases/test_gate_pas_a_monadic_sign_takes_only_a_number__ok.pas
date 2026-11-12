program signctl(output);
const k = 5; neg = -k;
var i: integer; r: real; c: char;
begin
  i := 7; r := 2.5; c := 'a';
  writeln(-i:1, ' ', +i:1, ' ', -r:5:2, ' ', +r:5:2, ' ', -ord(c):1, ' ', -(i + 1):1, ' ', +maxint:1, ' ', neg:1)
end.
