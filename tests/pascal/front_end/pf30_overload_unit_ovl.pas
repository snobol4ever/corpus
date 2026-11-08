unit pf30_overload_unit_ovl;
{$mode delphi}
interface
function F(const a: string; b: boolean = False): string; overload;
procedure Q(const a: string); overload;
implementation
function F(const a: string; b: boolean): string;
begin
  if b then F := a + '!' else F := a;
end;
procedure Q(const a: string);
begin
  writeln('Q ', a);
end;
end.
