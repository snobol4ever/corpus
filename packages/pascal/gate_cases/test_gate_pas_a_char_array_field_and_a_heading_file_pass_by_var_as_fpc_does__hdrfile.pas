program hdrfile(inputfile, outputfile);
var inputfile, outputfile: text; n, l, c: integer;
procedure init(var f, g: text); begin reset(f); rewrite(g) end;
procedure getc(var f: text; var k: integer);
begin if eof(f) then k := 0 else if eoln(f) then k := 1 else k := 2; if k <> 0 then get(f) end;
begin
  init(inputfile, outputfile); n := 0; l := 0; c := 0;
  repeat getc(inputfile, n); if n = 1 then l := l + 1; if n = 2 then c := c + 1 until n = 0;
  writeln(outputfile, 'lines ', l, ' chars ', c)
end.
