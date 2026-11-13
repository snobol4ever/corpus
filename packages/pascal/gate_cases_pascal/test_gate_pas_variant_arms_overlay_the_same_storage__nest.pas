program nest(output);
type t = record
       case integer of
         1: (p: integer);
         2: (q: 0..9; case boolean of true: (u: integer); false: (w: 0..5));
     end;
var v: t;
begin
  v.p := 0; v.q := 8;
  writeln(v.p);
  v.u := 0; v.w := 3;
  writeln(v.u)
end.
