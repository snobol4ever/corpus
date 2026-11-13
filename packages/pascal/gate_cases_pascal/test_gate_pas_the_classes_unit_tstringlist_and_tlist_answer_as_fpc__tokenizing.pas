program tokenizing;
{$mode objfpc}
uses sysutils, classes;
var t: TStringList; i: integer;
begin
  t := TStringList.Create;
  t.Delimiter := ',';
  t.DelimitedText := 'Hello,How,Are,You,Today';
  t.Delimiter := '.';
  writeln(Format('to: "%s"', [t.DelimitedText]), ' ', t.Count);
  t.Add('banana'); t.Add('Apple'); t.Add('cherry'); t.Add('apple');
  t.Sort;
  for i := 0 to t.Count - 1 do write(t[i], ';'); writeln;
  writeln(t.IndexOf('CHERRY'), ' ', t.IndexOf('zzz'));
  t.Append('tail'); t.Delete(0); t.Insert(1, 'mid'); writeln(t.Text);
  t.Sorted := true; t.Duplicates := dupIgnore; t.Add('mid'); t.Add('zed'); writeln(t.CommaText, ' ', t.Count);
  t.Free
end.
