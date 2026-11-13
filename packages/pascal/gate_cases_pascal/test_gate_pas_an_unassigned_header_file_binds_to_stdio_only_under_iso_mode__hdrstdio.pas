{$mode iso}
program hdrstdio(input, output, extra);
var
  extra : text;
begin
  rewrite(extra);
  writeln(extra, 'to stdout');
  close(extra);
  assign(extra, 'hdrstdio_extra.name.that.is.never.created');
  reset(extra);
  writeln('unreachable')
end.
