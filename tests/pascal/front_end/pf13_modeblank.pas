{$mode obj fpc}
program mb;
begin
{$ifdef FPC_OBJFPC}
  writeln('objfpc');
{$else}
  writeln('default');
{$endif}
{$ifdef FPC_DELPHI}
  writeln('delphi');
{$endif}
end.
