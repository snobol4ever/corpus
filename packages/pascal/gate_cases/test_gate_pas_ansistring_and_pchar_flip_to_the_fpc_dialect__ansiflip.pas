var s: AnsiString; p: PChar; i: LongInt;
begin
  s := 'abc'; i := 7;
  str(i:4, s); writeln(s, '|', i, '|', length(s));
  p := nil; writeln(p = nil)
end.
