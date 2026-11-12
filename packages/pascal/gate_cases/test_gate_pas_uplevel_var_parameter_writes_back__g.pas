program upref;
type ctp = ^rec; rec = record idtype: integer end;
var g: integer;
procedure statement;
var lcp: ctp; n: integer;
  procedure searchid(k: integer; var fcp: ctp);
  begin new(fcp); fcp^.idtype := k end;
  procedure setn(var x: integer);
  begin x := 42 end;
  procedure forstatement;
  begin searchid(7, lcp); setn(n); writeln(lcp^.idtype, n) end;
begin lcp := nil; n := 0; forstatement; writeln(n) end;
begin statement end.
