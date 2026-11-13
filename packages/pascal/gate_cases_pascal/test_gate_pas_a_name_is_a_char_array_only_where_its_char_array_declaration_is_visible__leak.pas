program leak(output);
type sp = ^s;
     s = record str: packed array [1..4] of char; next: sp end;
     restr = packed array [1..4] of char;
var q: sp;
function strequri(a: restr; b: restr): boolean; begin strequri := a = b end;
procedure strassvr(var a: sp);
var lp, p: sp;
begin a := nil; lp := nil; new(p); p^.next := nil;
  if a = nil then a := p else lp^.next := p;
  writeln('a nil=', a = nil)
end;
begin
  new(q); strassvr(q); writeln(q = nil, ' ', strequri('abcd', 'abcd'), ' ', strequri('abcd', 'abce'))
end.
