```pascal
{$mode objfpc}
program define;
type
  ptree = ^tree;
  tree = record t: string; v: string; n: integer; c: array[1..2] of ptree end;
var ROOT: ptree;
    a, b: ptree;
begin
  new(a); a^.t := 'num'; a^.v := '1'; a^.n := 0; a^.c[1] := nil; a^.c[2] := nil;
  new(b); b^.t := 'num'; b^.v := '2'; b^.n := 0; b^.c[1] := nil; b^.c[2] := nil;
  new(ROOT); ROOT^.t := 'plus'; ROOT^.v := '+'; ROOT^.n := 2; ROOT^.c[1] := a; ROOT^.c[2] := b
end.
```

```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT;
our $BACK;
say "root {$ROOT.t} {$ROOT.n}";
say "leaves {$ROOT.c[0].v} {$ROOT.c[1].v}";
$BACK = tree.new(t => 'times', v => '*', n => 2, c => [tree.new(t => 'num', v => '3', n => 0), tree.new(t => 'num', v => '4', n => 0)]);
```

```pascal
{$mode objfpc}
program final;
type
  ptree = ^tree;
  tree = record t: string; v: string; n: integer; c: array[1..2] of ptree end;
var BACK: ptree; external name 'BACK';
begin
  writeln('back ', BACK^.t, ' ', BACK^.n);
  writeln('back leaves ', BACK^.c[1]^.v, ' ', BACK^.c[2]^.v)
end.
```
