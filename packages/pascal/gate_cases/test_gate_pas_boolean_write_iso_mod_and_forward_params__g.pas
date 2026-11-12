program g;
type flag = boolean;
var b: boolean; f: flag; i: integer;
function isbig(n: integer): boolean; forward;
procedure announce(n: integer; var k: integer); forward;
function isbig;
begin isbig := n > 100 end;
procedure announce;
begin writeln('n=', n); k := n + 1 end;
begin
  b := true; f := false; i := -7;
  writeln(b); writeln(f); writeln(true); writeln(false);
  writeln(b:8); writeln(b:1); writeln(b:0); write(b); writeln('|');
  writeln(i > 2); writeln(odd(i) and b); writeln(not b); writeln(isbig(101)); writeln(isbig(1) or b);
  writeln(i mod 2); writeln(i mod 3); writeln(-8 mod 3); writeln(8 mod 3); writeln(7 mod 2);
  announce(42, i); writeln(i)
end.
