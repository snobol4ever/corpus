{$mode obj fpc}
program mb;
var s: string;
begin
{$ifdef FPC_OBJFPC}
  writeln('objfpc');
{$else}
  writeln('default');
{$endif}
{$ifdef FPC_DELPHI}
  writeln('delphi');
{$endif}
  s := 'x';
  writeln(5, ' ', 1.5:0:1, ' ', s);
end.
