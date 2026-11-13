program boolctl(output);
type flag = boolean; color = (red, green);
var f: flag; b: boolean; n: integer;
function ready: boolean; begin ready := n < 3 end;
procedure p; var b: color; begin b := green; if b = green then writeln('local enum compared') end;
begin
  f := true; b := false; n := 0;
  if f then writeln('alias true');
  if b then writeln('never') else writeln('plain false');
  while ready do n := n + 1;
  repeat n := n - 1 until not ready or (n < 0);
  if ready then writeln('ready ', n);
  p;
  if b then writeln('never') else writeln('global still boolean')
end.
