{$mode objfpc}
program ovbasic;
function F(a: Integer): String; begin Result := 'int'; end;
function F(a: Double): String; begin Result := 'dbl'; end;
function F(a: String): String; begin Result := 'str'; end;
procedure P(a: Integer); begin writeln('P int ', a); end;
procedure P(a: Integer; b: Integer); begin writeln('P two ', a, ' ', b); end;
var i: Integer; d: Double; s: String;
begin
  i := 1; d := 2.5; s := 'x';
  writeln(F(i), ' ', F(d), ' ', F(s), ' ', F(3), ' ', F(1.5), ' ', F('lit'));
  P(1); P(1, 2);
end.
