{$mode fpc}
program mt;
uses math;
begin
  writeln(tan(0.5):0:12, ' ', arcsin(0.5):0:12, ' ', arccos(0.5):0:12, ' ', arctan2(1.0, 2.0):0:12);
  writeln(log2(10.0):0:12, ' ', logn(3.0, 81.0):0:12, ' ', hypot(3.0, 4.0):0:6, ' ', sinh(1.0):0:12, ' ', cosh(1.0):0:12, ' ', tanh(0.5):0:12);
  writeln(intpower(2.0, 10):0:1, ' ', intpower(2.0, -2):0:4, ' ', power(2.0, 0.5):0:12, ' ', degtorad(180.0):0:12, ' ', radtodeg(pi):0:6);
end.
