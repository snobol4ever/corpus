program pf15_literal_receiver;
{$mode objfpc}{$h+}
uses SysUtils;
var s, t: string; parts: TStringArray; u: string;
begin
  s := 'x,y';
  parts := 'p q r'.Split([' ']);
  WriteLn(Length(parts), parts[2]);
  for u in (s + ',w').Split([',']) do Write(u, '|');
  WriteLn;
  WriteLn(string.Join('+', (s + ',z').Split([','])));
  WriteLn(Length((s + 'abc')), (3 + 4) * 2);
  t := ('a' + 'b');
  WriteLn(t);
end.
