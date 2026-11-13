{$mode objfpc}
program rec(output);
type pn = ^node; node = record v: longint; nx: pn end;
var n, t: longint;
function ack(m, n: longint): longint;
begin
  if m = 0 then ack := n + 1
  else if n = 0 then ack := ack(m - 1, 1)
  else ack := ack(m - 1, ack(m, n - 1))
end;
function build(d: longint): pn;
var p: pn;
begin
  if d = 0 then build := nil
  else begin new(p); p^.v := d; p^.nx := build(d - 1); build := p end
end;
function sum(p: pn): longint;
begin if p = nil then sum := 0 else sum := p^.v + sum(p^.nx) end;
function isodd(k: longint): boolean; forward;
function iseven(k: longint): boolean;
begin if k = 0 then iseven := true else iseven := isodd(k - 1) end;
function isodd(k: longint): boolean;
begin if k = 0 then isodd := false else isodd := iseven(k - 1) end;
begin
  writeln(ack(2, 3), ' ', ack(3, 4));
  t := 0; n := 0;
  while n < 4000 do begin t := t + sum(build(60)); n := n + 1 end;
  writeln(t);
  if iseven(100) then writeln('even') else writeln('odd');
  if isodd(7) then writeln('odd7') else writeln('even7')
end.
