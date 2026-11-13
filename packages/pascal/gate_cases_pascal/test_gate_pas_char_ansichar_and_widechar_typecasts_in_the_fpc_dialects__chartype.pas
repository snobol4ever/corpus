program chartype;
{$mode objfpc}
var i: integer; c: char; s: string;
begin i := 66; c := AnsiChar(i); s := 'x' + AnsiChar(67) + Char(68); writeln(c, s, ord(AnsiChar(70)), WideChar(71)) end.
