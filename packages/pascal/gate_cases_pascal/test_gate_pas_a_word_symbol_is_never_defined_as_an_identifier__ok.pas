program wsctl(output);
type shade = (endpoint, dotted, format);
var nilcount, index, todo: integer; s: shade;
procedure setup(ofs: integer); begin nilcount := ofs; todo := ofs * 2 end;
begin
  setup(3); index := nilcount + todo; s := dotted;
  writeln('nilcount ', nilcount, ' todo ', todo, ' index ', index, ' shade ', ord(s))
end.
