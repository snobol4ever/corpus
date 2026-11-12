program p;
uses utop, ubase, sysutils, math;
begin
  show(greeting);
  writeln(twice(5), ' ', thrice(5), ' ', ubase.twice(1));
  writeln(IntToStr(42) + '-' + UpperCase('ab') + Trim('  x  '), ' ', Max(3, 7), ' ', Power(2, 10):0:0);
end.
