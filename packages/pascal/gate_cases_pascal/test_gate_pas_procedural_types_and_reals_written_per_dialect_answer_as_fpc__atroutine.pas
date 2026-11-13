{$mode fpc}
program pt2;
type TFun = function(t: real): real;
function sq(t: real): real; begin sq := t * t end;
function apply(f: TFun; x: real): real; begin apply := f(x) end;
begin writeln(apply(@sq, 3.0):0:2) end.
