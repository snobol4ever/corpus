{$mode objfpc}
program objm;
begin
{$ifdef fpc_objfpc} writeln('objfpc'); {$endif}
{$ifdef fpc_iso} writeln('iso'); {$else} writeln('not iso'); {$endif}
end.
