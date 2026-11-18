```rebus
record tree(t, v, n, c)
function main()
  K := ARRAY(2)
  K[1] := tree("num", "1", 0)
  K[2] := tree("num", "2", 0)
  ROOT := tree("plus", "+", 2, K)
end
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

```rebus
record tree(t, v, n, c)
function main()
  OUTPUT := "back " || t(BACK) || " " || n(BACK)
  K := c(BACK)
  OUTPUT := "back leaves " || v(K[1]) || " " || v(K[2])
end
```
