program withs(output);
type e1 = (a0, a1, a2);
     t = record case integer of 1: (f1: e1); 2: (f2: 0..2); end;
var v: t;
begin
  with v do begin
    f1 := a0; f2 := 2;
    if f1 = a2 then writeln('with ok') else writeln('with failed');
    f1 := a1;
    writeln(f2)
  end
end.
