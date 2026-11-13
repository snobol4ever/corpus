program tenum(output);
const star='*';
type color=(red,green,blue);
  shape=record case k: color of red:(r:integer); green,blue:(g:char) end;
var s: shape;
begin s.k:=green; s.g:=star; writeln(s.g) end.
