program sc(output);
var
  r: record a: integer; b: integer end;
  seen: integer;

procedure first;
var r: record case boolean of
          true:  (i: integer);
          false: (c: char)
       end;
begin
  r.i := 11;
  writeln('first ', r.i:1)
end;

procedure second;
var r: record r: real; n: integer end;
begin
  r.r := 2.5;
  r.n := 22;
  writeln('second ', r.r:6:2, ' ', r.n:1)
end;

procedure third;
var r: record a: char; b: char end;
begin
  r.a := 'x';
  r.b := 'y';
  writeln('third ', r.a, r.b)
end;

begin
  r.a := 1;
  r.b := 2;
  first;
  second;
  third;
  seen := r.a + r.b;
  writeln('outer ', r.a:1, ' ', r.b:1, ' sum ', seen:1)
end.
