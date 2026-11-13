program hdrargs(input, output, prd, prr);
var prd, prr: text; c: char;
begin
  rewrite(prr);
  writeln(prr, 'to prr');
  writeln('to output');
  reset(prd);
  while not eof(prd) do begin read(prd, c); write(c) end;
  writeln('done')
end.
