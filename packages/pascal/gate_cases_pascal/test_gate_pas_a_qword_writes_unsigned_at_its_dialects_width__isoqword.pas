program isoqword(output);

var n: uint64; q: qword; i: integer;
begin
  n := 7140; q := 18446744073709551615; i := -3;
  writeln('Roots of ', n, ':', q, ' ', i, ' ', n:6, '|', q:22, '|');
  write(n); writeln
end.
