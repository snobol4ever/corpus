program xiso(output);
var calls, k: integer;
procedure find(target: integer);
var i, j: integer;
begin
  calls := calls + 1;
  i := 0;
  while i < 5 do
  begin
    for j := 1 to 5 do
      if i * 10 + j = target then
      begin
        writeln('found ', target, ' at ', i, ',', j);
        exit
      end;
    i := i + 1
  end;
  writeln('no ', target)
end;
function firstdiv(n: integer): integer;
var d: integer;
begin
  firstdiv := n;
  for d := 2 to n - 1 do
    if n mod d = 0 then
    begin
      firstdiv := d;
      exit
    end
end;
function sign(x: integer): integer;
begin
  if x < 0 then exit(-1);
  if x = 0 then exit(0);
  sign := 1
end;
function depth(n: integer): integer;
begin
  depth := n;
  if n >= 4 then exit;
  depth := depth(n + 1) * 10 + n
end;
begin
  calls := 0;
  find(23); find(42); find(99);
  writeln('firstdiv ', firstdiv(91), ' ', firstdiv(97), ' ', firstdiv(4));
  writeln('sign ', sign(-7), ' ', sign(0), ' ', sign(12));
  writeln('depth ', depth(1));
  for k := 1 to 10 do
    if k = 3 then
    begin
      writeln('main exits at k=', k, ' calls=', calls);
      exit
    end;
  writeln('not reached')
end.
