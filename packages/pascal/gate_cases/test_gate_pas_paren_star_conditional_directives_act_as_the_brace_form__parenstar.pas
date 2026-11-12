program parenstar(output);
(*$DEFINE ALPHA*)
var i: integer;
begin
  i := 0;
  (*$IFDEF ALPHA*) i := i + 1; (*$ENDIF*)
  (*$IFDEF BETA*) i := i + 10; (* a comment inside *) (*$ELSE*) i := i + 100; (*$ENDIF*)
  (*$IFNDEF BETA*) i := i + 1000; (*$ENDIF*)
  {$IFDEF ALPHA} i := i + 10000; {$ENDIF}
  writeln(i)
end.
