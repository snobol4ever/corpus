{----------------------------------------------------------------------- 1 pb36}
(* PB-36: variant record initialization - same structure as pcom's display[] *)
program pb36(output);
type
  where = (blck, crec, vrec);
  disp = packed record
    fname: integer;
    flabel: integer;
    case occur: where of
      crec: (clev: integer; cdspl: integer);
      vrec: (vdspl: integer)
  end;
var
  d: array [0..2] of disp;
begin
  d[0].fname  := 0;
  d[0].flabel := 0;
  d[0].occur  := blck;
  d[1].fname  := 1;
  d[1].flabel := 0;
  d[1].occur  := blck;
  writeln(d[0].occur);
  writeln(d[1].occur)
end.
{----------------------------------------------------------------------- 2 pb38}
(* PB-38: test new() and pointer dereference - used heavily in pcom init *)
program pb38(output);
type
  nodeptr = ^node;
  node = record
    val: integer;
    next: nodeptr
  end;
var
  p: nodeptr;
  q: nodeptr;
begin
  new(p);
  p^.val := 42;
  p^.next := nil;
  new(q);
  q^.val := 99;
  q^.next := p;
  writeln(q^.val);
  writeln(q^.next^.val)
end.
{----------------------------------------------------------------------- 3 pb39}
(* pb39: element read of a BULK-assigned packed char array must work.
   Regression for arr_get packed-string fallback: bulk assign stores a plain
   string; arr_get previously FAILed for idx>=1, silently severing continuation
   (root cause of pcom.pas insymbol death, session 40). *)
program pb39(output);
var ch: char; src: packed array [1..10] of char; n: integer;
begin
  src := 'x.        ';
  ch := src[1];
  if ch = 'x' then writeln('E1ok');
  ch := src[2];
  if ch = '.' then writeln('E2ok');
  n := 0;
  repeat n := n + 1; ch := src[n]
  until ch = '.';
  writeln(n:1)
end.
