program tctl(output);
var g: boolean; n: integer;
function isok(x: integer): boolean;
begin isok := x > 2 end;
procedure one;
var r, f: boolean;
begin r := true; f := false; writeln(r, ' ', f); if isok(3) then writeln('ok3'); if not isok(1) then writeln('no1') end;
procedure two;
var r: real; f: integer;
begin r := 6.5; f := 3; writeln(r:8:3); writeln(f:1); f := f * 2 + 1; writeln(f); r := r * 2.0; writeln(r:6:2) end;
procedure fw(flag: boolean); forward;
procedure three(flag: integer);
begin writeln(flag + 1) end;
procedure fw;
begin if flag then writeln('flag true') else writeln('flag false'); writeln(flag) end;
procedure five;
var flag: integer;
begin flag := 41; writeln(flag + 1) end;
procedure four;
var b: integer;
  function inner(x: integer): boolean;
  var b: boolean;
  begin b := x > 0; inner := b end;
begin b := 5; writeln(b:1); if inner(2) then writeln('in true'); b := b + 1; writeln(b:1); writeln(inner(0)) end;
begin
  g := true; n := 4;
  one; two; three(4); fw(true); fw(false); five; four;
  writeln(g); writeln(n:1); if isok(n) then writeln('n ok')
end.
