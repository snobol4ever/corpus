program vc(output);
type rec = record a: integer; b: real; c: char; flag: boolean end;
     inner = record p, q: integer end;
     outer = record name: integer; in1: inner; arr: array[1..3] of integer end;
     cs = array[1..5] of char;
var x: rec; y: array[1..4] of integer; o: outer; ao: array[1..2] of outer; m: array[1..3, 1..3] of integer; s: cs; r: array[1..3] of rec; i, j: integer; z: real;
procedure inc(var v: integer); begin v := v + 1 end;
procedure setx(var v: integer; n: integer); begin x.a := 100; v := v + n end;
procedure swap(var p, q: integer); var t: integer; begin t := p; p := q; q := t end;
procedure upc(var c: char); begin c := succ(c) end;
procedure half(var d: real); begin d := d / 2 end;
procedure tog(var f: boolean); begin f := not f end;
function bump(var v: integer): integer; begin v := v * 2; bump := v + 1 end;
procedure down(var v: integer; n: integer); begin if n > 0 then begin v := v + n; down(v, n - 1) end end;
procedure clr(var v: inner); begin v.p := 0; v.q := 0 end;
procedure ovr(var v: integer); begin y[2] := 55; v := v + 1; y[3] := y[3] + v end;
begin
  x.a := 1; x.b := 3.0; x.c := 'a'; x.flag := false;
  inc(x.a); writeln(x.a); setx(x.a, 5); writeln(x.a);
  half(x.b); writeln(x.b:0:2); tog(x.flag); writeln(x.flag);
  for i := 1 to 4 do y[i] := i * 10; swap(y[1], y[4]); writeln(y[1], ' ', y[4]); i := 2; inc(y[i + 1]); writeln(y[3]);
  o.name := 1; o.in1.p := 5; o.in1.q := 6; o.arr[2] := 20; inc(o.in1.q); inc(o.arr[2]); swap(o.in1.p, o.arr[2]); writeln(o.in1.p, ' ', o.in1.q, ' ', o.arr[2]);
  ao[2].in1.p := 9; inc(ao[2].in1.p); clr(ao[2].in1); inc(ao[2].arr[3]); writeln(ao[2].in1.p, ao[2].in1.q, ao[2].arr[3]);
  for i := 1 to 3 do for j := 1 to 3 do m[i, j] := i * 10 + j; inc(m[2, 3]); swap(m[1, 1], m[3, 3]); writeln(m[2, 3], ' ', m[1, 1], ' ', m[3, 3]);
  for i := 1 to 5 do s[i] := chr(ord('a') + i); upc(s[2]); upc(s[5]); writeln(s[1], s[2], s[3], s[4], s[5]);
  r[2].c := 'x'; upc(r[2].c); writeln(r[2].c);
  y[1] := 3; writeln(bump(y[1]), ' ', y[1]);
  y[2] := 0; down(y[2], 4); writeln(y[2]);
  y[3] := 1; ovr(y[1]); writeln(y[1], ' ', y[2], ' ', y[3]);
  y[1] := 1; y[2] := 2; i := 1; inc(y[y[i]]); writeln(y[1], y[2]);
  z := 1.5; r[3].b := 9.0; half(r[3].b); writeln(r[3].b:0:2)
end.
