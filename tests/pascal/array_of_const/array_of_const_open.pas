program array_of_const_open;
{$mode objfpc}
uses SysUtils;
function Fmt(const f: string; const args: array of const): string;
begin
  Result := Format(f, args)
end;
function Fmt2(const f: string; const args: array of const): string;
begin
  Result := '<' + Fmt(f, args) + '>'
end;
procedure Count(const args: array of const);
begin
  writeln(High(args) - Low(args) + 1)
end;
begin
  writeln(Fmt('%d cells, %s', [42, 'ok']));
  writeln(Fmt2('%d blocks [%s]', [7, 'a b']));
  writeln(Fmt('none', []));
  Count([1, 'two', 3.0]);
  Count([])
end.
