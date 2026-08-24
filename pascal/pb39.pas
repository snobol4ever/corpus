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
