{$mode objfpc}
program nm;
uses SysUtils, Classes;
const greeting = 'hello';
var a: array[1..5] of Integer; i, e: Integer; al: TAlignment; so: TStringSplitOptions; sr: TSearchRec;
begin
  writeln(stdout, 'to stdout'); writeln(ErrOutput, 'to stderr');
  writeln(low(greeting), ' ', high(greeting), ' ', greeting[1], ' ', ord(greeting[0]));
  writeln(low(a), ' ', high(a), ' ', length(a));
  for i := low(a) to high(a) do a[i] := i;
  {$I-} val('12x', e, i); {$I+} writeln(e, ' ', i, ' ', IOResult);
  al := taLeftJustify; so := TStringSplitOptions.ExcludeEmpty; writeln(ord(al), ' ', ord(so), ' ', faAnyFile);
  if FindFirst('*.nothing', faAnyFile, sr) = 0 then writeln('found') else writeln('none'); FindClose(sr);
end.
