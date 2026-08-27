{----------------------------------------------------------------------- 1 set1}
program set1;
var
  s : set of 0..47;
  i, n : integer;
begin
  s := [2, 3, 5, 7];
  n := 0;
  for i := 0 to 10 do
    if i in s then
      n := n + 1;
  writeln(n)
end.
{----------------------------------------------------------------------- 2 set2}
program set2;
var i, n : integer;
begin
  n := 0;
  for i := 0 to 9 do
    if i in [1, 4, 6, 8] then n := n + 1;
  writeln(n)
end.
{----------------------------------------------------------------------- 3 set3}
program set3;
var i, n : integer;
begin
  n := 0;
  for i := 0 to 5 do if i in [] then n := n + 1;
  writeln(n)
end.
{----------------------------------------------------------------------- 4 set5}
program set5;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2] + [2, 3];
  n := 0;
  for i := 0 to 10 do if i in s then n := n + 1;
  writeln(n)
end.
{----------------------------------------------------------------------- 5 set6}
program set6;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2, 3, 4] * [3, 4, 5, 6];
  n := 0;
  for i := 0 to 12 do if i in s then n := n + 1;
  writeln(n)
end.
{----------------------------------------------------------------------- 6 set7}
program set7;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2, 3, 4] - [2, 4];
  n := 0;
  for i := 0 to 12 do if i in s then n := n + 1;
  writeln(n)
end.
{----------------------------------------------------------------------- 7 set8}
program set8;
var a, b : set of 0..47; r : integer;
begin
  a := [2, 3];
  b := [1, 2, 3, 4];
  r := 0;
  if a <= b then r := r + 1;
  if b >= a then r := r + 10;
  if a = [2, 3] then r := r + 100;
  if a <> b then r := r + 1000;
  writeln(r)
end.
