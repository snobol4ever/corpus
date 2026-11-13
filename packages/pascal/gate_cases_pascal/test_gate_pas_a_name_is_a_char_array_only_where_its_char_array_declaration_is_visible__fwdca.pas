program fwdca(output);
type alpha = packed array [1..4] of char;
procedure show(a: alpha; n: integer); forward;
function same(a, b: alpha): boolean; forward;
procedure show; begin writeln(a, ' ', n:1, ' ', a = 'abcd') end;
function same; begin same := a = b end;
begin
  show('abcd', 1); show('wxyz', 2); writeln(same('abcd', 'abcd'), ' ', same('abcd', 'abcx'))
end.
