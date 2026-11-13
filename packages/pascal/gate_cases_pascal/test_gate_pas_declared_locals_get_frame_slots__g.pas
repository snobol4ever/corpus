program declaredlocals;
var sy: integer;
procedure block;
var test: boolean; n: integer; c: char;
  procedure typ;
    procedure fieldlist;
    begin test := sy = 7; n := n + 5; c := 'q' end;
  begin fieldlist end;
  procedure report;
  begin if test then writeln('yes ', n, ' ', c) else writeln('no ', n, ' ', c) end;
begin n := 0; sy := 7; typ; report; sy := 8; typ; report end;
begin block end.
