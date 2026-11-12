program tbool(output);
const star='*';
type shape=record case b: boolean of true:(r:integer); false:(g:char) end;
var s: shape;
begin s.b:=false; s.g:=star; writeln(s.g) end.
