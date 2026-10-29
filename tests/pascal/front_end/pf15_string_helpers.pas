program pf15_string_helpers;
{$mode objfpc}{$h+}
uses SysUtils;
const
  Sample = 'one two  three';
  Csv = 'a,b;c,,d,';
var
  s, t, u: string;
  parts: TStringArray;
  i: Integer;
procedure Show(const a: TStringArray);
var k: Integer;
begin
  Write(Length(a), ':');
  for k := 0 to High(a) do Write('[', a[k], ']');
  WriteLn;
end;
begin
  s := 'x,y,z';
  parts := s.Split([',']);
  Show(parts);
  Show(Sample.Split([' ']));
  Show(Sample.Split([' '], TStringSplitOptions.ExcludeEmpty));
  Show(Csv.Split([',', ';']));
  Show(Csv.Split([',', ';'], TStringSplitOptions.ExcludeEmpty));
  Show(Csv.Split([','], TStringSplitOptions.ExcludeLastEmpty));
  Show(Csv.Split([','], 3));
  Show(Csv.Split([','], 2, TStringSplitOptions.ExcludeEmpty));
  Show(Sample.Split(['two', 'e']));
  t := '';
  Show(t.Split([',']));
  t := s + ',w';
  Show(t.Split([',']));
  t := 'p q r';
  for u in t.Split([' ']) do Write(u, '|');
  WriteLn;
  WriteLn(string.Join('-', parts));
  WriteLn(string.Join(', ', ['a', 'b', 'c']));
  WriteLn(string.Join('', s.Split([','])));
  WriteLn(string.Join('+', Sample.Split([' '], TStringSplitOptions.ExcludeEmpty)));
  i := Length(s.Split([',']));
  WriteLn(i);
end.
