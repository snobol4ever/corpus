(* PB-37: pcom init simulation - does 256-element init + char-indexed array work? *)
program pb37(output);
const
  ordminchar = 0;
  ordmaxchar = 255;
type
  chtp = (illegal, letter, number, special, chstrquo, chcolon, chperiod,
          chlt, chgt, chlparen, chspace);
var
  chartp: array [char] of chtp;
  ssy: array [char] of integer;
  i: integer;
  ch: char;
begin
  for i := ordminchar to ordmaxchar do chartp[chr(i)] := illegal;
  chartp['a'] := letter;
  chartp['b'] := letter;
  chartp['z'] := letter;
  chartp['0'] := number;
  chartp['9'] := number;
  chartp[' '] := chspace;
  chartp['.'] := chperiod;
  for i := ordminchar to ordmaxchar do ssy[chr(i)] := 0;
  ch := 'b';
  writeln(chartp[ch]);
  writeln(chartp['.']);
  writeln(chartp[' ']);
  writeln(chartp['x'])
end.
