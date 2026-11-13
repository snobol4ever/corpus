program opens(output);
type TIntArray = array of integer; TRec = record k: integer; v: real end;
var st: array [5..8] of integer; dy: TIntArray; rs: array of TRec; i: integer;
function sum(const a: array of integer): integer; var k, t: integer; begin t := 0; for k := low(a) to high(a) do t := t + a[k]; sum := t end;
procedure show(a: array of integer); var k: integer; begin write(length(a), ':'); for k := 0 to high(a) do write(' ', a[k]); a[0] := -1; writeln end;
procedure bump(var a: array of integer); var k: integer; begin for k := 0 to high(a) do a[k] := a[k] + 100 end;
procedure fill(var a: TIntArray; n: integer); var k: integer; begin setlength(a, n); for k := 0 to n - 1 do a[k] := k end;
function total(const r: array of TRec): real; var k: integer; t: real; begin t := 0; for k := 0 to high(r) do t := t + r[k].v * r[k].k; total := t end;
begin
  for i := 5 to 8 do st[i] := i; writeln(sum(st)); show(st); writeln(st[5]); bump(st); writeln(st[5], ' ', st[8]);
  fill(dy, 4); writeln(sum(dy)); show(dy); bump(dy); writeln(dy[0], ' ', dy[3]);
  setlength(rs, 2); rs[0].k := 2; rs[0].v := 1.5; rs[1].k := 3; rs[1].v := 0.5; writeln(total(rs):0:2)
end.
