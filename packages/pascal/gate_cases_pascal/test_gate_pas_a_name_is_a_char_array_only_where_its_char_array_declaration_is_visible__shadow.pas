program shadow(output);
type alpha = packed array [1..4] of char;
     ip = ^integer;
var name: alpha;
procedure local;
var name: ip;
begin new(name); name^ := 7; name := nil; writeln('local nil=', name = nil) end;
procedure uses;
begin writeln('global=', name, ' eq=', name = 'wxyz') end;
begin
  name := 'wxyz'; local; uses; writeln(name)
end.
