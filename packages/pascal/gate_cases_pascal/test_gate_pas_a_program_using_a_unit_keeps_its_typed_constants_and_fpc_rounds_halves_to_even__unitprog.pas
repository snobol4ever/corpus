program unitprog;
{$mode objfpc}
uses math, sysutils;
type
  bounty = record value: longint; weight, volume: real; tags: string end;
  tpair = record lo, hi: integer end;
const
  limit = 3;
  panacea: bounty = (value: 3000; weight: 0.3; volume: 0.025; tags: 'p');
  sack: bounty = (value: 7; weight: 25.0; volume: 0.25; tags: 'sack');
  span: tpair = (lo: 2; hi: limit * 2);
  names: array [1..limit] of string = ('a', 'bb', 'ccc');
var
  x: longint; r: real; i: integer;
begin
  x := round(min(sack.weight / panacea.weight, sack.volume / 0.025));
  r := sack.weight / panacea.weight;
  writeln(x, ' ', r:0:3, ' ', sack.value, ' ', sack.tags, ' ', panacea.tags, ' ', span.lo, ' ', span.hi);
  for i := 1 to limit do write(names[i], length(names[i]), ' ');
  writeln(max(span.lo, span.hi), ' ', min(0.5, r) :0:2, ' ', round(max(1.5, 2.25) * 10))
end.
