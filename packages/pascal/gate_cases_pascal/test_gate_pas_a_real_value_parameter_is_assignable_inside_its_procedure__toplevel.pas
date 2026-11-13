program toplevel(output);
procedure inner(w: real);
begin w := w - 0.125; writeln(w:6:3) end;
begin inner(0.5) end.
