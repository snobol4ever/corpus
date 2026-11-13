program typedfile;
type byte = 0..255; bytfil = packed file of byte;
     rec = record k: integer; c: char end;
var fi: file of integer; fb: bytfil; fr: file of rec;
    i, n, s: integer; b: byte; r: rec;
begin
  rewrite(fi); for i := 1 to 5 do write(fi, i * i);
  reset(fi); s := 0; n := 0;
  while not eof(fi) do begin read(fi, i); s := s + i; n := n + 1 end;
  writeln(n, s);
  rewrite(fb); for i := 250 to 255 do begin fb^ := i; put(fb) end;
  reset(fb); n := 0; s := 0;
  while not eof(fb) do begin b := fb^; get(fb); s := s + b; n := n + 1 end;
  writeln(n, s);
  rewrite(fr); r.k := 7; r.c := 'q'; write(fr, r); r.k := 9; r.c := 'z'; write(fr, r);
  reset(fr); read(fr, r); writeln(r.k, ' ', r.c); read(fr, r); writeln(r.k, ' ', r.c);
  if eof(fr) then writeln('eof ok') else writeln('eof bad')
end.
