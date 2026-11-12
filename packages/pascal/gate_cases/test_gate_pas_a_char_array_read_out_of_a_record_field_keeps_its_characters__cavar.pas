program cavar(output);
type alpha = packed array [1..8] of char;
     ptr = ^node;
     node = packed record name: alpha; link: ptr end;
     lrec = record tag: integer; name: alpha end;
var p, q: ptr; g: alpha; r: lrec;
procedure viaparam(fcp: ptr);
  var nam: alpha;
begin nam := fcp^.name; writeln('param  [', nam, '] lt=', nam < g, ' eq=', nam = fcp^.name) end;
procedure viawith;
  var nam: alpha;
begin with p^ do nam := name; writeln('with   [', nam, ']') end;
begin
  new(p); p^.name := 'maxlevel'; g := 'zzzzzzzz';
  g := p^.name; writeln('global [', g, ']');
  g := 'zzzzzzzz'; viaparam(p); viawith;
  r.tag := 7; r.name := 'charal  '; g := r.name; writeln('local  [', g, ']');
  new(q); q^.name := g; writeln('field<-var [', q^.name, ']')
end.
