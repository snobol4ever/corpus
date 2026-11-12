unit ubase;
interface
const greeting = 'hello';
function twice(x: integer): integer;
procedure show(s: string);
implementation
function helper(x: integer): integer; begin helper := x * 2 end;
function twice(x: integer): integer; begin twice := helper(x) end;
procedure show(s: string); begin writeln('base: ', s) end;
initialization
  writeln('init base');
finalization
  writeln('fini base');
end.
