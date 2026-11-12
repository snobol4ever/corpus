unit ub;
interface
uses ua;
function f: integer;
function g: integer;
implementation
function f: integer; begin f := 20 + ua.f end;
function g: integer; begin g := f end;
end.
