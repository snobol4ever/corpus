program nestcount;
var g : integer;
  procedure counter;
  var c : integer;
    procedure bump;
    begin
      c := c + 1
    end;
  begin
    c := 0;
    bump;
    bump;
    bump;
    writeln(c)
  end;
begin
  counter
end.
