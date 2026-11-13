program places(output); // the heading
var x: integer; s: packed array [1..4] of char;
begin
  x := 6 // a comment inside an expression
    * 7; // and after a statement
  s := 'a//b'; { // inside a brace comment }
  writeln(x, ' ', s) (* // inside a paren comment *)
end.
