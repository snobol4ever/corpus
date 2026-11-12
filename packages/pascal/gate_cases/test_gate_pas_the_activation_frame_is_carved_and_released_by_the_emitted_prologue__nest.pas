{$mode objfpc}
program nest(output);
var total: longint;
procedure l1(a1: longint; var r: longint);
  var v1: longint;
  procedure l2(a2: longint);
    var v2: longint;
    procedure l3(a3: longint);
      var v3: longint;
      procedure l4(a4: longint);
        var v4: longint;
        procedure l5(a5: longint);
          var v5: longint;
          procedure l6(a6: longint);
          begin
            r := r + a1 + v1 + a2 + v2 + a3 + v3 + a4 + v4 + a5 + v5 + a6;
            writeln('l6 ', r)
          end;
        begin v5 := 50; l6(6); l6(60) end;
      begin v4 := 40; l5(5) end;
    begin v3 := 30; l4(4) end;
  begin v2 := 20; l3(3) end;
begin v1 := 10; l2(2) end;
begin
  total := 0;
  l1(1, total); writeln(total);
  l1(100, total); writeln(total)
end.
