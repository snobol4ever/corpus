program forward1(output);
  function iseven(n: integer): boolean; forward;
  function isodd(n: integer): boolean;
  begin
    if n = 0 then isodd := false
    else isodd := iseven(n - 1)
  end;
  function iseven(n: integer): boolean;
  begin
    if n = 0 then iseven := true
    else iseven := isodd(n - 1)
  end;
begin
  if iseven(6) then writeln('yes') else writeln('no');
  if isodd(7)  then writeln('yes') else writeln('no');
  if iseven(5) then writeln('yes') else writeln('no')
end.
