program pa;
var s: string;
begin
  s := paramstr(1);
  writeln(paramcount, ' ', s, ' ', paramstr(2), ' [', paramstr(3), ']')
end.
