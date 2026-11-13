{$mode objfpc}
program arr(output);
type small = 0..9; wide = 0..1000; neg = -5..5; vec = array[1..4] of longint;
var a: array[0..15] of longint; b: array[1..7] of byte; c: packed array[0..3] of char; d: array[1..3] of word;
    e: array[1..5] of small; f: array[0..3] of wide; g: array[1..6] of neg; v: vec; m: array[2..4] of array[1..5] of word;
    n: array[1..3] of vec; q: array[0..9] of boolean;
begin
  writeln(sizeof(a), ' ', sizeof(b), ' ', sizeof(c), ' ', sizeof(d), ' ', sizeof(e), ' ', sizeof(f), ' ', sizeof(g));
  writeln(sizeof(v), ' ', sizeof(vec), ' ', sizeof(m), ' ', sizeof(n), ' ', sizeof(q))
end.
