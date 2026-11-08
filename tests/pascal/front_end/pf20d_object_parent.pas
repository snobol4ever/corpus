type
  TA = object
    i: Integer;
    procedure Show;
  end;
  TB = object(TA)
    j: Integer;
    procedure Show;
  end;
procedure TA.Show;
begin
  writeln('A ', i);
end;
procedure TB.Show;
begin
  writeln('B ', i, ' ', j);
end;
var a: TA; b: TB;
begin
  a.i := 1;
  b.i := 3;
  b.j := 4;
  a.Show;
  b.Show;
end.
