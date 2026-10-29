program pf17_procvars;
{$mode objfpc}
type
  TProc = procedure;
  TFn = function(x: Integer): Integer;
procedure hello;
begin
  writeln('hi');
end;
procedure bye;
begin
  writeln('bye');
end;
function dbl(x: Integer): Integer;
begin
  dbl := x * 2;
end;
function inc3(x: Integer): Integer;
begin
  inc3 := x + 3;
end;
procedure run(p: TProc);
begin
  p();
end;
var
  p, q: TProc;
  f: TFn;
begin
  p := @hello;
  p();
  q := @bye;
  q;
  run(p);
  run(q);
  f := @dbl;
  writeln(f(4));
  f := @inc3;
  writeln(f(4));
  if Assigned(p) then writeln('assigned');
  p := nil;
  if not Assigned(p) then writeln('nil');
  p := q;
  p();
end.
