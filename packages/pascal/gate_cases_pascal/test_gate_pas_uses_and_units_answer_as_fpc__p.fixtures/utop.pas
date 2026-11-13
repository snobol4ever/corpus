unit utop;
interface
uses ubase;
function thrice(x: integer): integer;
implementation
function helper(x: integer): integer; begin helper := x * 3 end;
function thrice(x: integer): integer; begin thrice := helper(x) + twice(0) end;
initialization
  writeln('init top');
end.
