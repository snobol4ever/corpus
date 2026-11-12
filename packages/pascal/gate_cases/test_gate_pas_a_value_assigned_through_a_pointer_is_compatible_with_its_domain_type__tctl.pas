program tctl(output);
type a = integer; pa = ^a; pc = ^char; pr = ^real; pb = ^boolean;
     rec = record n: integer; c: char end; prec = ^rec;
     later = ^item; item = record v: integer; nxt: later end;
var ip: pa; cp: pc; rp: pr; bp: pb; rr: prec; lp: later;
procedure inner;
type q = ^a;
var ip2: q;
begin new(ip2); ip2^ := 7; writeln(ip2^) end;
begin
  new(ip); ip^ := 5; writeln(ip^);
  new(cp); cp^ := 'x'; writeln(cp^);
  new(rp); rp^ := 2; writeln(rp^:5:1);
  new(bp); bp^ := true; writeln(bp^);
  new(rr); rr^.n := 3; rr^.c := 'z'; writeln(rr^.n, rr^.c);
  new(lp); lp^.v := 9; lp^.nxt := nil; writeln(lp^.v);
  inner
end.
