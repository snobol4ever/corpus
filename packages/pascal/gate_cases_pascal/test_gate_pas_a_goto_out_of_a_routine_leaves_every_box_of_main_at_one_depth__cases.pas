program cases(output);
label 1;
var store: array [0..40] of integer; op, sp, mp, n: integer; running: boolean;
procedure errori; begin writeln('error at ', sp:1); goto 1 end;
function base(ld: integer): integer; begin base := mp + ld end;
begin
  sp := 0; mp := 3; n := 0; running := true;
  while running do begin
    n := n + 1;
    if n > 5 then op := 58 else if odd(n) then op := 11 else op := 4;
    case op of
      11: begin store[sp + 2] := base(n); store[sp + 3] := mp; sp := sp + 5 end;
      4: begin store[sp] := base(sp) + store[sp - 3]; sp := sp - 1 end;
      58: running := false
    end;
    if sp > 35 then errori
  end;
  writeln('sp=', sp:1, ' top=', store[sp]:1);
1:
  writeln('n=', n:1)
end.
