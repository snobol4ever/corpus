{-------------------------------------------- 1 case-sensitivity-of-identifiers}
var
  dog: string;
begin
  dog := 'Benjamin';
  Dog := 'Samba';
  DOG := 'Bernie';
  Writeln('There is just one dog named ' + dog);
end.
{--------------------------------------------------- 2 compile-time-calculation}
const
  X = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1;

begin
  writeln(x);
end.
{--------------------------------------------------------- 3 hello-world-text-2}
program HelloWorld;
begin
  writeln('Hello World!');
end.
{---------------------------------------- 4 terminal-control-cursor-positioning}
uses CRT;

begin
  GotoXY(3,6);
  Write('Hello')
end.
