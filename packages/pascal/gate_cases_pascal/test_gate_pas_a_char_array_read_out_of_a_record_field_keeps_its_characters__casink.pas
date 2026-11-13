program casink(output);
type alpha = packed array [1..8] of char;
     ptr = ^node;
     node = packed record name: alpha; link: ptr end;
var p, q: ptr; rw: array [1..3] of alpha; g: alpha;
procedure pv(s: alpha); begin writeln('value param [', s, ']') end;
begin
  new(p); p^.name := 'maxlevel'; new(q); q^.name := 'xxxxxxxx';
  q^.name := p^.name; writeln('field<-field [', q^.name, '] eq=', q^.name = p^.name);
  pv(p^.name);
  rw[2] := p^.name; writeln('row [', rw[2], '] eq=', rw[2] = p^.name);
  with q^ do begin name := 'charal  '; g := name end; writeln('with [', g, ']')
end.
