type
  PA = ^TA;
  TA = object
    i: Integer;
    constructor Init(a: Integer);
    destructor Done;
  end;
constructor TA.Init(a: Integer);
begin
  i := a;
end;
destructor TA.Done;
begin
  writeln('done ', i);
end;
var p: PA;
begin
  New(p, Init(7));
  writeln(p^.i);
  Dispose(p, Done);
end.
