{$MODE ISO}
{$Q+}
program neg(input, output);
type halfword = 0..65535;
var a, b: halfword;
begin
  a := 4095; b := 4096; writeln('go');
  if abs(int(a+b-8192)) < 4096 then halt(0) else halt(1)
end.
