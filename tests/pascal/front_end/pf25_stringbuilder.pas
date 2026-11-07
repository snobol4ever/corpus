{$mode objfpc}
uses SysUtils;
var sb: TStringBuilder;
begin
  sb := TStringBuilder.Create;
  sb.Append(' ', 3);
  sb.Append('x');
  sb.Append('y', 2);
  sb.Append(42);
  sb.Append(',');
  writeln(sb.ToString());
  sb.Clear();
  writeln('[', sb.ToString(), ']');
  sb.Free();
end.
