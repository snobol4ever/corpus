program tconst(output);
const nest: array [0..1] of array [1..2] of integer = ((1, 2), (3, 4)); m: array [1..2] of array ['a'..'c'] of char = (('x', 'y', 'z'), ('p', 'q', 'r'));
var i: integer;
begin for i := 0 to 1 do write(nest[i][1], nest[i, 2]); writeln(' ', m[2]['b'], m[1, 'c']) end.
