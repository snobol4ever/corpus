program rtlstr;
{$mode objfpc}
uses sysutils, strutils;
begin
  writeln(StrToIntDef('42', 7), ' ', StrToIntDef('4x2', 7), ' ', StrToIntDef('', -1), ' ', StrToIntDef(' -15', 0), ' ', StrToIntDef('$1F', 0));
  writeln(CompareText('abc', 'ABD') < 0, ' ', CompareText('Hello', 'hello'), ' ', SameText('Pascal', 'PASCAL'), ' ', SameText('a', 'b'), ' ', CompareText('abcd', 'ABC') > 0);
  writeln(QuotedStr('it''s'), ' ', QuotedStr(''), ' ', QuotedStr('x'));
  writeln(PosEx('a', 'banana', 3), ' ', PosEx('na', 'banana', 4), ' ', PosEx('z', 'banana', 1), ' ', PosEx('b', 'banana', 0));
  writeln(LeftStr('Pascal', 3), '|', RightStr('Pascal', 3), '|', MidStr('Pascal', 2, 3), '|', RightStr('ab', 5), '|', LeftStr('ab', 0), '|')
end.
