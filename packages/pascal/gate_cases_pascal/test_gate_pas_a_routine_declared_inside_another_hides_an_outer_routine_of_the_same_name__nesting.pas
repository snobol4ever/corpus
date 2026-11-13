program nesting(output);
var t: integer;
procedure helper(n: integer);
begin t := t + n end;
function sq(n: integer): integer;
begin sq := n * n end;
procedure a;
  procedure helper(n: integer);
  begin t := t + 100 * n end;
  function sq(n: integer): integer;
  begin if n <= 1 then sq := 1 else sq := n + sq(n - 1) end;
begin helper(2); writeln(t, ' ', sq(4)) end;
procedure b;
  procedure helper(n: integer);
  begin t := t + 1000 * n end;
  procedure deeper;
    procedure helper(n: integer);
    begin t := t + 10000 * n end;
  begin helper(1) end;
begin helper(3); deeper; helper(1); writeln(t) end;
begin
  t := 0;
  helper(1); writeln(t, ' ', sq(3));
  a; b;
  helper(5); writeln(t, ' ', sq(5))
end.
