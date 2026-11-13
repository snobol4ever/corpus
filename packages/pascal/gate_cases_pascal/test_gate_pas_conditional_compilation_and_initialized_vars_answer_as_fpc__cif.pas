program cif(output);
const version = 3; flt = 2.5;
begin
{$if FPC_FULLVERSION >= 30200} writeln('a yes'); {$else} writeln('a no'); {$endif}
{$if fpc_version = 3} writeln('b yes'); {$else} writeln('b no'); {$endif}
{$if defined(fpc) and not defined(windows)} writeln('c yes'); {$else} writeln('c no'); {$endif}
{$if version >= 2} writeln('d yes'); {$else} writeln('d no'); {$endif}
{$if declared(flt)} writeln('e yes'); {$else} writeln('e no'); {$endif}
{$if not defined(fpc) or (fpc_fullversion < 20600)} writeln('f yes'); {$else} writeln('f no'); {$endif}
{$ifdef fpc}{$ifndef unix} writeln('g1'); {$else} writeln('g2'); {$endif}{$else} writeln('g3'); {$endif}
{$define mine}{$ifdef MINE} writeln('h yes'); {$endif}{$undef mine}{$ifdef mine} writeln('h bad'); {$endif}
{$if defined(cpu64) or defined(cpu32)} writeln('i yes'); {$elseif defined(cpu16)} writeln('i16'); {$else} writeln('i no'); {$endif}
{$ifdef fpc_iso} writeln('j iso'); {$endif}
{$macro on}{$define flt2 := 1e+2}{$if flt2 < 99} writeln('k bad'); {$else} writeln('k yes'); {$endif}
end.
