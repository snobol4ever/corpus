{$mode macpas}
program mac;
{$setc ADAM := TRUE}
{$setc BERTIL := FALSE}
{$J-}
{$push}
{$J+}
{$pop}
begin
{$ifc ADAM <> TRUE} writeln('a bad'); {$elsec} writeln('a ok'); {$endc}
{$ifc BERTIL = FALSE} writeln('b ok'); {$elsec} writeln('b bad'); {$endc}
{$ifc undefined FPC_MACPAS} writeln('c bad'); {$elsec} writeln('c ok'); {$endc}
{$ifc option(J)} writeln('d bad'); {$elsec} writeln('d ok'); {$endc}
end.
