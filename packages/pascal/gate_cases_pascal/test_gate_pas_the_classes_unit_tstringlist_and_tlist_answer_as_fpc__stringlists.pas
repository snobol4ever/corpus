program stringlists;
{$mode objfpc}
uses sysutils, classes;
function ByLength(List: TStringList; I1, I2: Integer): Integer;
begin
  Result := Length(List[I1]) - Length(List[I2])
end;
function Desc(Item1, Item2: Pointer): Integer;
begin
  Result := 0
end;
var
  s, t: TStringList; l: TList; a, b, c: integer; i, idx: integer; found: boolean;
begin
  s := TStringList.Create;
  s.Add('pear'); s.Add('fig'); s.Add('banana'); s.Add('kiwis'); s.Add('Zebra123'); s.Add('apple12');
  s.CustomSort(@ByLength);
  for i := 0 to s.Count - 1 do write(s[i], ' '); writeln;
  s.Sort; for i := 0 to s.Count - 1 do write(s[i], ' '); writeln;
  s.CaseSensitive := true; s.Sort; for i := 0 to s.Count - 1 do write(s[i], ' '); writeln;
  s.Exchange(0, 5); s.Move(1, 3); writeln(s.Text);
  s.Text := 'one' + #10 + 'two' + #13#10 + 'three' + #10; writeln(s.Count, ' ', s[2], ' ', s.IndexOf('two'));
  s.Clear;
  s.CommaText := 'a, "b c",d,,e'; writeln(s.Count, '|', s[1], '|', s[3], '|', s.CommaText, '|', s.DelimitedText);
  s.StrictDelimiter := true; s.Delimiter := ';'; s.DelimitedText := ' x ; y;z'; writeln(s.Count, '[', s[0], '][', s[1], ']');
  s.Clear; s.Values['k1'] := 'v1'; s.Values['k2'] := 'v2'; s.Values['k1'] := 'w'; writeln(s.Text, s.Values['k2'], s.Names[1], s.IndexOfName('k2'), s.ValueFromIndex[0]);
  s.Clear; s.Sorted := true; s.Duplicates := dupIgnore;
  s.Add('m'); s.Add('c'); s.Add('x'); s.Add('c'); found := s.Find('x', idx); writeln(s.Count, ' ', found, ' ', idx, ' ', s.IndexOf('m'), ' ', s.Text);
  t := TStringList.Create; t.Assign(s); t.Sorted := false; t.Add('end'); writeln(t.Count, ' ', t.Equals(s), ' ', s.Equals(s));
  try s[9] := 'q'; except on E: Exception do writeln('err ', E.Message) end;
  try writeln(t[7]) except on E: Exception do writeln('err ', E.Message) end;
  l := TList.Create;
  l.Add(@a); l.Add(@c); l.Insert(1, @b);
  writeln(l.Count, ' ', l.IndexOf(@b), ' ', l.IndexOf(@c), ' ', l.Remove(@a), ' ', l.Count, ' ', l.IndexOf(@a));
  l.Exchange(0, 1); writeln(l.IndexOf(@b), ' ', l.First = Pointer(@c), ' ', l.Last = Pointer(@b));
  l.Delete(0); l.Clear; writeln(l.Count);
  l.Free; t.Free; s.Free
end.
