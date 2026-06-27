program ub3;
  procedure p1;
  var a, sum : integer;
    procedure p2;
      procedure p3;
        procedure p4;
        var i, j : integer;
        begin
          for i := 1 to 30000 do
            for j := 1 to 8000 do
              sum := sum + a
        end;
      begin p4 end;
    begin p3 end;
  begin
    a := 1; sum := 0;
    p2;
    writeln(sum)
  end;
begin p1 end.
