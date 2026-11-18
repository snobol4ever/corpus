```raku
sub TWICE($n) { $n * 2 }
sub SHOUT($s) { $s ~ '!' }
```

```pascal
{$mode objfpc}
program use;
function TWICE(n: integer): integer; external name 'TWICE';
function SHOUT(s: string): string; external name 'SHOUT';
begin
  writeln('twice ', TWICE(7));
  writeln('shout ', SHOUT('seven'))
end.
```
