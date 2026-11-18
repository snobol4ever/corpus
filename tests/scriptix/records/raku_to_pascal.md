```raku
class tree { has $.t; has $.v; has $.n; has $.c; }
our $ROOT = tree.new(t => 'plus', v => '+', n => 2, c => [tree.new(t => 'num', v => '1', n => 0), tree.new(t => 'num', v => '2', n => 0)]);
```

```pascal
{$mode objfpc}
program use;
type
  ptree = ^tree;
  tree = record t: string; v: string; n: integer; c: array[1..2] of ptree end;
var ROOT: ptree; external name 'ROOT';
    BACK: ptree; external name 'BACK';
    a, b: ptree;
begin
  writeln('root ', ROOT^.t, ' ', ROOT^.n);
  writeln('leaves ', ROOT^.c[1]^.v, ' ', ROOT^.c[2]^.v);
  new(a); a^.t := 'num'; a^.v := '3'; a^.n := 0; a^.c[1] := nil; a^.c[2] := nil;
  new(b); b^.t := 'num'; b^.v := '4'; b^.n := 0; b^.c[1] := nil; b^.c[2] := nil;
  new(BACK); BACK^.t := 'times'; BACK^.v := '*'; BACK^.n := 2; BACK^.c[1] := a; BACK^.c[2] := b
end.
```

```raku
our $BACK;
say "back {$BACK.t} {$BACK.n}";
say "back leaves {$BACK.c[0].v} {$BACK.c[1].v}";
```
