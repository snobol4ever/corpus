program alphacmp(output);
type alpha = packed array [1..8] of char;
var rw : array [1..5] of alpha;
    rsy: array [1..5] of integer;
    frw: array [1..3] of integer;
    id : alpha;
    sy : integer;

procedure lookup(k: integer);
  label 2;
  var i: integer;
begin
  for i := frw[k] to frw[k+1] - 1 do
    if rw[i] = id then
      begin sy := rsy[i]; goto 2 end;
  sy := 0;
2:
end;

begin
  rw[1] := 'do      '; rw[2] := 'if      '; rw[3] := 'of      ';
  rw[4] := 'end     '; rw[5] := 'for     ';
  rsy[1] := 2; rsy[2] := 1; rsy[3] := 3; rsy[4] := 7; rsy[5] := 8;
  frw[1] := 1; frw[2] := 1; frw[3] := 6;
  id[1] := 'd'; id[2] := 'o'; id[3] := ' '; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(2); writeln(sy);
  id[1] := 'e'; id[2] := 'n'; id[3] := 'd'; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(1); writeln(sy);
  id[1] := 'x'; id[2] := 'x'; id[3] := ' '; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(2); writeln(sy);
end.
