program xmac;
{$MODE MACPAS}
var trail: integer;
procedure outer(n: integer);
var tag: integer;
  procedure mid;
    procedure inner;
    begin
      trail := trail * 10 + n;
      if n = 2 then Exit(outer);
      if n = 3 then Exit(mid);
      trail := trail * 10 + 7
    end;
  begin
    inner;
    writeln('mid after inner, n=', n, ' trail=', trail);
    if n = 1 then outer(2);
    if n = 1 then outer(3);
    writeln('mid ends, n=', n)
  end;
begin
  tag := n * 11;
  mid;
  writeln('outer after mid, n=', n, ' tag=', tag, ' trail=', trail)
end;
begin
  trail := 0;
  outer(1);
  writeln('trail=', trail)
end.
