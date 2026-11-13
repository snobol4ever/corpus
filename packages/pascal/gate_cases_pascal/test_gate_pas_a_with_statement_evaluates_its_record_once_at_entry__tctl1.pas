program tctl1(output);
type rp = ^rec;
     rec = record n: integer; next: rp end;
var head, p: rp; a: array[1..3] of rec; i: integer;
begin
  new(head); head^.n := 1; new(head^.next); head^.next^.n := 2; head^.next^.next := nil;
  p := head;
  with p^ do begin p := next; writeln(n); n := 10; writeln(p^.n) end;
  writeln(head^.n, ' ', head^.next^.n);
  a[1].n := 7; a[2].n := 8; i := 1;
  with a[i] do begin i := 2; writeln(n); n := 5 end;
  writeln(a[1].n, ' ', a[2].n);
  p := head;
  with p^, next^ do begin p := nil; writeln(n) end;
  p := head;
  with p^ do begin p := nil; n := 99 end;
  writeln(head^.n)
end.
