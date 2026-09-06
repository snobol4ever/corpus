{------------------------------------------------------- 1 ladder__rung00_hello}
program rung00hello;
begin
  writeln('Hello, world!')
end.
{------------------------------------------------- 2 ladder__rung00_hello_multi}
program rung00hellomulti;
begin
  writeln('Hello, ', 'world!')
end.
{--------------------------------------------- 3 ladder__rung00_hello_paramlist}
program rung00helloparamlist(input, output);
begin
  writeln('Hello, world!')
end.
{--------------------------------------- 4 ladder__rung02_arithmetic_mixed_type}
program rung02arithmixed;
begin
  writeln((3 + 2.5):0:1)
end.
{----------------------------------------- 5 ladder__rung02_arithmetic_real_div}
program rung02arithrealdiv;
begin
  writeln((7 / 2):0:2)
end.
{--------------------------------------------------------- 6 program_writeln_12}
program m4wexpr;
begin
  writeln(2 + 3)
end.
{---------------------------------------------------------- 7 program_writeln_9}
program hello;
begin
  writeln('Hello World!')
end.
{------------------------------------------------- 8 ladder__rung00_hello_width}
program rung00hellowidth;
begin
  writeln('ab':5);
  writeln('abcdef':3)
end.
{------------------------------------------------- 9 ladder__rung00_hello_blank}
program rung00helloblank;
begin
  writeln('before');
  writeln;
  writeln('after')
end.
{----------------------------------------------- 10 parser__procedure_call_args}
program proccallargs;
procedure p(a, b: integer);
begin
end;
begin
  p(1, 2)
end.
{----------------------------------------------------- 11 parser__assign_simple}
program assignsimple;
var x: integer;
begin
  x := 5
end.
{------------------------------------------------------ 12 parser__if_then_else}
program ifthenelse;
var x: integer;
begin
  if x > 0 then
    x := 1
  else
    x := 2
end.
{-------------------------------------- 13 ladder__rung05_proc_func_multi_param}
program rung05procfuncmultiparam;

procedure combo(a, b: integer; c: real);
begin
  writeln(a + b);
  writeln(c:0:1)
end;

begin
  combo(3, 4, 2.5)
end.
{---------------------------------------------------------- 14 parser__for_loop}
program forloop;
var i: integer;
begin
  for i := 1 to 10 do
    i := i
end.
{-------------------------------------------------------- 15 program_writeln_11}
program m4asg;
var x : integer;
begin
  x := 5;
  writeln(x)
end.
{------------------------------------------------- 16 ladder__rung01_var_assign}
program rung01var;
var
  x: integer;
begin
  x := 7;
  writeln(x)
end.
{------------------------------------------- 17 ladder__rung01_var_assign_widen}
program rung01varwiden;
var
  r: real;
begin
  r := 5;
  writeln(r:0:1)
end.
{------------------------------------------- 18 ladder__rung02_arithmetic_unary}
program rung02arithunary;
var
  a: integer;
begin
  a := 5;
  writeln(-a);
  writeln(+a)
end.
{-------------------------------------------------------- 19 program_writeln_15}
program boolmix;
var a, b, c: boolean;
begin
  a := 1 < 2;
  b := 2 < 1;
  c := not a or b;
  if c then writeln(1) else writeln(0)
end.
{--------------------------------------------------------- 20 program_writeln_3}
program boolmix;
var a, b, c: boolean;
begin
  a := 1 < 2;
  b := 2 < 1;
  c := not a or b;
  if c then writeln(1) else writeln(0)
end.
{------------------------------------- 21 ladder__rung01_var_assign_multi_group}
program rung01varmultigroup;
var
  a: integer;
  b: Boolean;
begin
  a := 42;
  b := true;
  writeln(a);
  writeln(b)
end.
{-------------------------------------------------------- 22 program_writeln_10}
program m4arith;
var x, y : integer;
begin
  x := 2 + 3;
  writeln(x);
  y := x * 7;
  writeln(y);
  y := y - x;
  writeln(y)
end.
{------------------------------------- 23 ladder__rung01_var_assign_multi_ident}
program rung01varmultiident;
var
  x, y, z: integer;
begin
  x := 1;
  y := 2;
  z := 3;
  writeln(x);
  writeln(y);
  writeln(z)
end.
{---------------------------------------- 24 ladder__rung03_if_while_if_no_else}
program rung03ifwhileifnoelse;
var
  n: integer;
begin
  n := 5;
  if n > 3 then
    writeln('taken');
  n := 1;
  if n > 3 then
    writeln('not taken');
  writeln('done')
end.
{------------------------------------- 25 ladder__rung03_if_while_dangling_else}
program rung03ifwhiledangling;
var
  a, b: boolean;
begin
  a := true;
  b := false;
  if a then
    if b then
      writeln('inner-true')
    else
      writeln('inner-false');
  writeln('done')
end.
{--------------------------------------- 26 ladder__rung03_if_while_if_compound}
program rung03ifwhileifcompound;
var
  n: integer;
begin
  n := 7;
  if n > 3 then begin
    writeln('big');
    writeln(n)
  end else begin
    writeln('small');
    writeln(n)
  end
end.
{--------------------------------------------------------- 27 program_writeln_1}
program boolassign;
var b: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  b := i < j;
  if b then writeln(1) else writeln(0);
  b := i > j;
  if b then writeln(1) else writeln(0);
  b := i = j;
  if b then writeln(1) else writeln(0);
  b := i <> j;
  if b then writeln(1) else writeln(0);
  b := i <= j;
  if b then writeln(1) else writeln(0);
  b := i >= j;
  if b then writeln(1) else writeln(0)
end.
{-------------------------------------------------------- 28 program_writeln_13}
program boolassign;
var b: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  b := i < j;
  if b then writeln(1) else writeln(0);
  b := i > j;
  if b then writeln(1) else writeln(0);
  b := i = j;
  if b then writeln(1) else writeln(0);
  b := i <> j;
  if b then writeln(1) else writeln(0);
  b := i <= j;
  if b then writeln(1) else writeln(0);
  b := i >= j;
  if b then writeln(1) else writeln(0)
end.
{-------------------------------------------------------- 29 program_writeln_16}
program boolnot;
var a, b, c: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  a := i < j;
  b := not a;
  if b then writeln(1) else writeln(0);
  c := a and b;
  if c then writeln(1) else writeln(0);
  c := a or b;
  if c then writeln(1) else writeln(0);
  b := not (i = j);
  if b then writeln(1) else writeln(0);
  c := a and b or c;
  if c then writeln(1) else writeln(0);
  if not c then writeln(1) else writeln(0)
end.
{--------------------------------------------------------- 30 program_writeln_4}
program boolnot;
var a, b, c: boolean; i, j: integer;
begin
  i := 3;
  j := 5;
  a := i < j;
  b := not a;
  if b then writeln(1) else writeln(0);
  c := a and b;
  if c then writeln(1) else writeln(0);
  c := a or b;
  if c then writeln(1) else writeln(0);
  b := not (i = j);
  if b then writeln(1) else writeln(0);
  c := a and b or c;
  if c then writeln(1) else writeln(0);
  if not c then writeln(1) else writeln(0)
end.
{-------------------------------------------------------- 31 program_writeln_14}
program boolchain;
var a, b, c: boolean; i: integer;
begin
  i := 3;
  a := true;
  b := false;
  c := (i = 0) or b;
  if c then writeln(1) else writeln(0);
  c := not a or b;
  if c then writeln(1) else writeln(0);
  c := not a and b;
  if c then writeln(1) else writeln(0);
  c := not b and a;
  if c then writeln(1) else writeln(0);
  c := (i = 3) or b;
  if c then writeln(1) else writeln(0);
  c := (i = 3) and a;
  if c then writeln(1) else writeln(0);
  c := (i < 2) or (i > 2);
  if c then writeln(1) else writeln(0);
  c := (i > 0) and (i < 2);
  if c then writeln(1) else writeln(0)
end.
{--------------------------------------------------------- 32 program_writeln_2}
program boolchain;
var a, b, c: boolean; i: integer;
begin
  i := 3;
  a := true;
  b := false;
  c := (i = 0) or b;
  if c then writeln(1) else writeln(0);
  c := not a or b;
  if c then writeln(1) else writeln(0);
  c := not a and b;
  if c then writeln(1) else writeln(0);
  c := not b and a;
  if c then writeln(1) else writeln(0);
  c := (i = 3) or b;
  if c then writeln(1) else writeln(0);
  c := (i = 3) and a;
  if c then writeln(1) else writeln(0);
  c := (i < 2) or (i > 2);
  if c then writeln(1) else writeln(0);
  c := (i > 0) and (i < 2);
  if c then writeln(1) else writeln(0)
end.
{------------------------------------------------ 33 program_function_writeln_3}
program intparam(output);
var x: integer;
  function doubled(n: integer): integer;
  begin doubled := n + n end;
begin x := 7; writeln(doubled(x)) end.
{------------------------------------------------ 34 program_function_writeln_4}
program realparam(output);
var r: real;
  function half(x: real): real;
  begin half := x / 2.0 end;
begin r := 6.0; writeln(half(r):10:1) end.
{----------------------------------------- 35 ladder__rung02_arithmetic_div_neg}
program rung02arithdivneg;
var
  i: integer;
begin
  i := -7;
  writeln(i div 2)
end.
{----------------------------------------- 36 ladder__rung02_arithmetic_mod_neg}
program rung02arithmodneg;
var
  i: integer;
begin
  i := -7;
  writeln(i mod 2)
end.
{---------------------------------------- 37 ladder__rung04_for_repeat_for_zero}
program rung04forrepeatforzero;
var
  i: integer;
begin
  for i := 5 to 1 do
    writeln(i);
  writeln('done')
end.
{------------------------------------- 38 ladder__rung04_for_repeat_repeat_once}
program rung04forrepeatrepeatonce;
var
  i: integer;
begin
  i := 5;
  repeat
    writeln(i)
  until i = 5
end.
{------------------------------------------------ 39 program_function_writeln_1}
program flatnoarg;
var g : integer;
  function five : integer;
  begin
    five := 5
  end;
begin
  g := five + five;
  writeln(g)
end.
{------------------------------------------------ 40 program_function_writeln_5}
program flatnoarg;
var g : integer;
  function five : integer;
  begin
    five := 5
  end;
begin
  g := five + five;
  writeln(g)
end.
{-------------------------------------------------- 41 program_record_writeln_4}
program rec3;
var
  p : record x, y : integer end;
  q : record x, y : integer end;
begin
  p.x := 1; p.y := 2;
  q.x := p.y; q.y := p.x;
  writeln(q.x, q.y);
  writeln(p.x + q.x + p.y + q.y)
end.
{---------------------------------------- 42 ladder__rung03_if_while_while_zero}
program rung03ifwhilewhilezero;
var
  n: integer;
begin
  n := 0;
  while n > 0 do begin
    writeln('should not print');
    n := n - 1
  end;
  writeln('after')
end.
{------------------------------------ 43 ladder__rung04_for_repeat_for_compound}
program rung04forrepeatforcompound;
var
  i, sum: integer;
begin
  sum := 0;
  for i := 1 to 3 do
  begin
    sum := sum + i;
    writeln(sum)
  end
end.
{---------------------------------------------- 44 program_procedure_writeln_10}
program varparam;
var k : integer;
  procedure bump(var n : integer);
  begin
    n := n + 2
  end;
begin
  k := 5;
  bump(k);
  writeln(k)
end.
{----------------------------------------------- 45 program_procedure_writeln_4}
program varparam;
var k : integer;
  procedure bump(var n : integer);
  begin
    n := n + 2
  end;
begin
  k := 5;
  bump(k);
  writeln(k)
end.
{----------------------------------------------- 46 program_procedure_writeln_6}
program flat;
var x : integer;
  procedure p;
  begin
    x := x + 10
  end;
begin
  x := 5;
  p;
  writeln(x)
end.
{-------------------------------------------------- 47 program_repeat_writeln_1}
program ifnoelse(output);
var i: integer; flag: boolean;
begin
  i := 0;
  flag := true;
  repeat
    i := i + 1;
    if flag then flag := false
  until i >= 3;
  writeln('done i=', i:1)
end.
{------------------------------------------ 48 ladder__rung05_proc_func_forward}
program rung05procfuncforward;

procedure announce(n: integer); forward;

procedure announce;
begin
  writeln('n=', n)
end;

begin
  announce(42)
end.
{----------------------------------------------------- 49 program_for_writeln_1}
program char2;
var c : char;
    a, b : char;
begin
  a := 'a';
  b := 'z';
  if a < b then writeln('less');
  if a = 'a' then writeln('equal');
  if b > 'y' then writeln('greater');
  for c := 'A' to 'E' do
    writeln(c)
end.
{------------------------------------------------ 50 program_function_writeln_2}
program boolfn;
var r : boolean;
function big(n : integer) : boolean;
begin
  big := n > 10
end;
begin
  r := big(20);
  if r then writeln(1) else writeln(0);
  r := big(5);
  if r then writeln(1) else writeln(0)
end.
{----------------------------------------------- 51 program_procedure_writeln_1}
program aliastest;
var a : integer;
  procedure addto(var x, y : integer);
  begin
    x := x + 1;
    y := y + 10
  end;
begin
  a := 0;
  addto(a, a);
  writeln(a)
end.
{----------------------------------------------- 52 program_procedure_writeln_2}
program swaptest;
var a, b : integer;
  procedure swap(var x, y : integer);
  var t : integer;
  begin
    t := x; x := y; y := t
  end;
begin
  a := 3; b := 8;
  swap(a, b);
  writeln(a); writeln(b)
end.
{----------------------------------------------- 53 program_procedure_writeln_3}
program varmix;
var g : integer;
  procedure inc2(var r : integer; d : integer);
  begin
    r := r + d;
    d := d + 100
  end;
begin
  g := 1;
  inc2(g, 5);
  writeln(g)
end.
{----------------------------------------------- 54 program_procedure_writeln_7}
program aliastest;
var a : integer;
  procedure addto(var x, y : integer);
  begin
    x := x + 1;
    y := y + 10
  end;
begin
  a := 0;
  addto(a, a);
  writeln(a)
end.
{----------------------------------------------- 55 program_procedure_writeln_8}
program swaptest;
var a, b : integer;
  procedure swap(var x, y : integer);
  var t : integer;
  begin
    t := x; x := y; y := t
  end;
begin
  a := 3; b := 8;
  swap(a, b);
  writeln(a); writeln(b)
end.
{----------------------------------------------- 56 program_procedure_writeln_9}
program varmix;
var g : integer;
  procedure inc2(var r : integer; d : integer);
  begin
    r := r + d;
    d := d + 100
  end;
begin
  g := 1;
  inc2(g, 5);
  writeln(g)
end.
{--------------------------------------------------------- 57 program_writeln_6}
program charlit(output);
var c : char;
begin
  writeln('A');
  writeln('Z');
  writeln('a':3);
  writeln('0':5);
  c := 'M';
  if c = 'M' then writeln('Y') else writeln('N');
  writeln(ord('A'));
  writeln(ord('Z') - ord('A'))
end.
{---------------------------------------------------- 58 program_writeln_sqrt_1}
program realwidth(output);
var r : real;
begin
  r := sqrt(2.0);
  writeln(r:20);
  writeln(r:15);
  writeln(r:12);
  writeln(r:10);
  r := arctan(1.0);
  writeln(r:20);
  writeln(r:15)
end.
{--------------------------------------- 59 program_procedure_writeln_replace_1}
program boolarg;
var i, j: integer;
procedure show(b: boolean);
begin
  if b then writeln(1) else writeln(0)
end;
begin
  i := 3;
  j := 5;
  show(i < j);
  show(i > j);
  show(not (i = j))
end.
{--------------------------------------- 60 program_procedure_writeln_replace_2}
program boolarg;
var i, j: integer;
procedure show(b: boolean);
begin
  if b then writeln(1) else writeln(0)
end;
begin
  i := 3;
  j := 5;
  show(i < j);
  show(i > j);
  show(not (i = j))
end.
{--------------------------------------------------- 61 ladder__rung03_if_while}
program rung03ifwhile;
var
  n: integer;
begin
  n := 5;
  if n > 3 then
    writeln('big')
  else
    writeln('small');
  while n > 0 do begin
    writeln(n);
    n := n - 1
  end
end.
{--------------------------------------------------------- 62 program_writeln_8}
program constreal(output);
const
  pi = 3.14159265;
  msg = 'ok';
  limit = 100;
var r : real; i : integer;
begin
  r := pi;
  writeln(r);
  writeln(msg);
  i := limit;
  writeln(i);
  r := -pi;
  writeln(r)
end.
{---------------------------------------------------- 63 program_writeln_sqrt_2}
program stdlib2(output);
var r: real;
begin
  r := sqrt(2.0);
  writeln(r:20);
  r := sin(1.0);
  writeln(r:20);
  r := cos(0.0);
  writeln(r:20);
  r := exp(1.0);
  writeln(r:20);
  r := ln(1.0);
  writeln(r:20);
  r := arctan(1.0);
  writeln(r:20)
end.
{----------------------------------------------- 64 program_procedure_writeln_5}
program longcall(output);
var g: integer;
  procedure bump;
  begin g := g + 1 end;
begin
  g := 0;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  bump;
  writeln(g)
end.
{------------------------------------------------------- 65 parser__array_index}
program arrayindex;
var a: array[1..5] of integer;
begin
  a[3] := 7
end.
{-------------------------------------- 66 ladder__rung04_for_repeat_for_downto}
program rung04forrepeatfordownto;
var
  i: integer;
begin
  for i := 3 downto 1 do
    writeln(i)
end.
{----------------------------------------------------- 67 program_for_writeln_3}
program set3;
var i, n : integer;
begin
  n := 0;
  for i := 0 to 5 do if i in [] then n := n + 1;
  writeln(n)
end.
{------------------------------------------------------ 68 program_for_downto_1}
program downto1(output);
var i, s : integer;
begin
  s := 0;
  for i := 5 downto 1 do s := s + i;
  writeln(s);
  for i := 10 downto 5 do writeln(i)
end.
{------------------------------------------------------ 69 program_for_downto_3}
program downto1(output);
var i, s : integer;
begin
  s := 0;
  for i := 5 downto 1 do s := s + i;
  writeln(s);
  for i := 10 downto 5 do writeln(i)
end.
{----------------------------------------------------- 70 program_for_writeln_2}
program set2;
var i, n : integer;
begin
  n := 0;
  for i := 0 to 9 do
    if i in [1, 4, 6, 8] then n := n + 1;
  writeln(n)
end.
{--------------------------------------------- 71 program_for_writeln_replace_1}
program writenl(output);
var i : integer;
begin
  for i := 1 to 5 do
    write(i);
  writeln;
  write('hello');
  write(' ');
  writeln('world')
end.
{--------------------------------------------------------- 72 program_writeln_7}
program t;
var c : char; i : integer;
begin
  writeln(chr(112));
  writeln(chr(65), chr(66), chr(67));
  c := chr(88);
  writeln(c, c);
  i := ord(chr(90));
  writeln(i:1)
end.
{------------------------------------------------------ 73 program_for_downto_2}
program downto2(output);
var i, j, s : integer;
begin
  s := 0;
  for i := 3 downto 1 do
    for j := i downto 1 do
      s := s + j;
  writeln(s);
  for i := 4 downto 2 do
    writeln(i)
end.
{------------------------------------------------------ 74 program_for_downto_4}
program downto2(output);
var i, j, s : integer;
begin
  s := 0;
  for i := 3 downto 1 do
    for j := i downto 1 do
      s := s + j;
  writeln(s);
  for i := 4 downto 2 do
    writeln(i)
end.
{----------------------------------------------- 75 program_procedure_nested_19}
program t;
var glob : integer;
procedure setit(var nxt: integer);
begin glob := glob + 1; nxt := glob end;
procedure body;
  var seg : integer;
begin
  setit(seg);
  writeln('seg=', seg:1, ' glob=', glob:1)
end;
begin glob := 0; body end.
{------------------------------------------------ 76 program_procedure_nested_5}
program t;
var glob : integer;
procedure setit(var nxt: integer);
begin glob := glob + 1; nxt := glob end;
procedure body;
  var seg : integer;
begin
  setit(seg);
  writeln('seg=', seg:1, ' glob=', glob:1)
end;
begin glob := 0; body end.
{------------------------------------------------- 77 ladder__rung02_arithmetic}
program rung02arith;
var
  a, b: integer;
begin
  a := 6;
  b := 4;
  writeln(a + b);
  writeln(a - b);
  writeln(a * b);
  writeln(a div b);
  writeln(a mod b)
end.
{------------------------------------------------- 78 ladder__rung04_for_repeat}
program rung04forrepeat;
var
  i: integer;
begin
  for i := 1 to 3 do
    writeln(i);
  i := 3;
  repeat
    writeln(i);
    i := i - 1
  until i = 0
end.
{---------------------------------------------------- 79 ladder__rung07_records}
program rung07records;
type
  point = record
    x, y: integer
  end;
var
  p: point;
begin
  p.x := 3;
  p.y := 4;
  writeln(p.x + p.y)
end.
{----------------------------------------------- 80 program_procedure_nested_13}
program t(output);
var x: integer;
procedure noop; begin end;
procedure another; begin end;
begin
  x := 1;
  noop;
  x := x + 1;
  another;
  x := x + 1;
  writeln(x)
end.
{---------------------------------------------------- 81 program_set_subrange_1}
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
{--------------------------------------------------------- 82 program_writeln_5}
program char1;
var c : char;
    i : integer;
begin
  c := 'A';
  writeln(c);
  writeln(c:3);
  c := chr(66);
  writeln(c);
  i := ord(c);
  writeln(i)
end.
{-------------------------------------------------- 83 program_record_writeln_3}
program rec1;
type
  point = record
    x : integer;
    y : integer
  end;
var
  p : point;
begin
  p.x := 3;
  p.y := 4;
  writeln(p.x + p.y)
end.
{-------------------------------------------------------- 84 program_case_for_1}
program case1;
var i, r : integer;
begin
  for i := 1 to 5 do
  begin
    case i of
      1: r := 10;
      2, 3: r := 23;
      4: r := 40;
      5: r := 50
    end;
    writeln(r)
  end
end.
{------------------------------------------------------ 85 program_goto_label_1}
program goto1;
label 1, 2;
var i: integer;
begin
  i := 0;
1:
  i := i + 1;
  if i < 5 then goto 1;
  writeln(i);
  goto 2;
  writeln(999);
2:
  writeln(i + 10)
end.
{---------------------------------------------------- 86 program_writeln_sqrt_3}
program stdlib3(output);
var r: real; i: integer;
begin
  r := exp(0.0);
  writeln(r:20);
  r := arctan(0.0);
  writeln(r:20);
  r := sin(0.0);
  writeln(r:20);
  r := cos(1.0);
  writeln(r:20);
  i := trunc(sqrt(2.0));
  writeln(i)
end.
{------------------------------------------------- 87 program_function_nested_1}
program nestfunc;
var g : integer;
  function outer(n : integer) : integer;
  var base : integer;
    function inner(k : integer) : integer;
    begin
      inner := base + n + k
    end;
  begin
    base := 100;
    outer := inner(1) + inner(2)
  end;
begin
  writeln(outer(5))
end.
{------------------------------------------------- 88 program_function_nested_2}
program nestfunc;
var g : integer;
  function outer(n : integer) : integer;
  var base : integer;
    function inner(k : integer) : integer;
    begin
      inner := base + n + k
    end;
  begin
    base := 100;
    outer := inner(1) + inner(2)
  end;
begin
  writeln(outer(5))
end.
{----------------------------------------------- 89 program_procedure_nested_22}
program nestvar;
var x: integer;
procedure outer(var a: integer);
  procedure inner;
  begin
    a := a + 1
  end;
begin
  inner
end;
begin
  x := 10;
  outer(x);
  writeln(x)
end.
{------------------------------------------------ 90 program_procedure_nested_8}
program nestvar;
var x: integer;
procedure outer(var a: integer);
  procedure inner;
  begin
    a := a + 1
  end;
begin
  inner
end;
begin
  x := 10;
  outer(x);
  writeln(x)
end.
{-------------------------------------------------- 91 program_record_writeln_2}
program nestrec1;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
var g: outer;
begin
  g.x := 1;
  g.c.a := 42;
  g.c.b := 7;
  g.y := 99;
  writeln(g.x);
  writeln(g.c.a);
  writeln(g.c.b);
  writeln(g.y)
end.
{---------------------------------------- 92 ladder__rung05_proc_func_no_params}
program rung05procfuncnoparams;

procedure hello;
begin
  writeln('hello')
end;

function fortytwo: integer;
begin
  fortytwo := 42
end;

begin
  hello;
  writeln(fortytwo)
end.
{----------------------------------------------- 93 program_procedure_nested_11}
program varframe;
var g : integer;
  procedure bump(var n : integer);
  begin
    n := n + 100
  end;
  procedure outer(p : integer);
  begin
    bump(p);
    writeln(p)
  end;
begin
  g := 7;
  outer(g);
  writeln(g)
end.
{----------------------------------------------- 94 program_procedure_nested_12}
program vartrans;
var g : integer;
  procedure inner(var z : integer);
  begin
    z := z * 3
  end;
  procedure outer(var y : integer);
  begin
    y := y + 1;
    inner(y)
  end;
begin
  g := 4;
  outer(g);
  writeln(g)
end.
{----------------------------------------------- 95 program_procedure_nested_18}
program nestedtest;
var g : integer;
  procedure outer;
  var x : integer;
    procedure inner;
    begin
      x := x + 10
    end;
  begin
    x := 5;
    inner;
    writeln(x)
  end;
begin
  outer
end.
{----------------------------------------------- 96 program_procedure_nested_25}
program varframe;
var g : integer;
  procedure bump(var n : integer);
  begin
    n := n + 100
  end;
  procedure outer(p : integer);
  begin
    bump(p);
    writeln(p)
  end;
begin
  g := 7;
  outer(g);
  writeln(g)
end.
{----------------------------------------------- 97 program_procedure_nested_26}
program vartrans;
var g : integer;
  procedure inner(var z : integer);
  begin
    z := z * 3
  end;
  procedure outer(var y : integer);
  begin
    y := y + 1;
    inner(y)
  end;
begin
  g := 4;
  outer(g);
  writeln(g)
end.
{------------------------------------------------ 98 program_procedure_nested_4}
program nestedtest;
var g : integer;
  procedure outer;
  var x : integer;
    procedure inner;
    begin
      x := x + 10
    end;
  begin
    x := 5;
    inner;
    writeln(x)
  end;
begin
  outer
end.
{-------------------------------------------------- 99 program_repeat_writeln_2}
program repeat2(output);
var i, n : integer;
begin
  i := 1; n := 1;
  repeat
    n := n * i;
    i := i + 1
  until i > 5;
  writeln(n);
  i := 10;
  repeat
    write(i);
    i := i - 3
  until i < 1;
  writeln
end.
{---------------------------------------------- 100 program_procedure_nested_20}
program nestrec;
var g : integer;
  procedure outer(d : integer);
  var x : integer;
    procedure inner;
    begin
      x := x + 1
    end;
  begin
    x := d * 10;
    inner;
    if d > 1 then outer(d - 1);
    writeln(x)
  end;
begin
  outer(3)
end.
{----------------------------------------------- 101 program_procedure_nested_6}
program nestrec;
var g : integer;
  procedure outer(d : integer);
  var x : integer;
    procedure inner;
    begin
      x := x + 1
    end;
  begin
    x := d * 10;
    inner;
    if d > 1 then outer(d - 1);
    writeln(x)
  end;
begin
  outer(3)
end.
{---------------------------------------------- 102 program_procedure_nested_17}
program nestcount;
var g : integer;
  procedure counter;
  var c : integer;
    procedure bump;
    begin
      c := c + 1
    end;
  begin
    c := 0;
    bump;
    bump;
    bump;
    writeln(c)
  end;
begin
  counter
end.
{----------------------------------------------- 103 program_procedure_nested_3}
program nestcount;
var g : integer;
  procedure counter;
  var c : integer;
    procedure bump;
    begin
      c := c + 1
    end;
  begin
    c := 0;
    bump;
    bump;
    bump;
    writeln(c)
  end;
begin
  counter
end.
{------------------------------------------------- 104 program_record_writeln_1}
program nestcheck;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
var g: outer;
    i: integer;
begin
  g.x := 10;
  g.c.a := 20;
  g.c.b := 30;
  g.y := 40;
  g.c.a := g.c.a + 1;
  g.c.b := g.c.b + 2;
  writeln(g.x);
  writeln(g.c.a);
  writeln(g.c.b);
  writeln(g.y)
end.
{---------------------------------------------- 105 program_procedure_nested_23}
program nestvar2;
var x: integer;
procedure outer(var a: integer);
  procedure middle;
    procedure inner;
    begin
      a := a * 2
    end;
  begin
    inner
  end;
begin
  middle
end;
begin
  x := 5;
  outer(x);
  writeln(x)
end.
{----------------------------------------------- 106 program_procedure_nested_9}
program nestvar2;
var x: integer;
procedure outer(var a: integer);
  procedure middle;
    procedure inner;
    begin
      a := a * 2
    end;
  begin
    inner
  end;
begin
  middle
end;
begin
  x := 5;
  outer(x);
  writeln(x)
end.
{---------------------------------------------- 107 program_procedure_nested_10}
program nestvar3;
var x, y: integer;
procedure swapvals(var a, b: integer);
  procedure doswap;
  var t: integer;
  begin
    t := a;
    a := b;
    b := t
  end;
begin
  doswap
end;
begin
  x := 3;
  y := 7;
  swapvals(x, y);
  writeln(x);
  writeln(y)
end.
{---------------------------------------------- 108 program_procedure_nested_24}
program nestvar3;
var x, y: integer;
procedure swapvals(var a, b: integer);
  procedure doswap;
  var t: integer;
  begin
    t := a;
    a := b;
    b := t
  end;
begin
  doswap
end;
begin
  x := 3;
  y := 7;
  swapvals(x, y);
  writeln(x);
  writeln(y)
end.
{---------------------------------------------- 109 program_procedure_nested_21}
program nestshadow;
var g : integer;
  procedure outer;
  var x : integer;
    procedure p2;
    begin
      x := x + 100
    end;
    procedure p1;
    var x : integer;
    begin
      x := 7;
      p2;
      writeln(x)
    end;
  begin
    x := 1;
    p1;
    writeln(x)
  end;
begin
  outer
end.
{----------------------------------------------- 110 program_procedure_nested_7}
program nestshadow;
var g : integer;
  procedure outer;
  var x : integer;
    procedure p2;
    begin
      x := x + 100
    end;
    procedure p1;
    var x : integer;
    begin
      x := 7;
      p2;
      writeln(x)
    end;
  begin
    x := 1;
    p1;
    writeln(x)
  end;
begin
  outer
end.
{---------------------------------------------- 111 program_procedure_nested_16}
program nest2;
var g : integer;
  procedure a;
  var x : integer;
    procedure b;
    var y : integer;
      procedure cc;
      begin
        x := x + 100;
        y := y + 10
      end;
    begin
      y := 5;
      cc;
      writeln(y)
    end;
  begin
    x := 1;
    b;
    writeln(x)
  end;
begin
  a
end.
{----------------------------------------------- 112 program_procedure_nested_2}
program nest2;
var g : integer;
  procedure a;
  var x : integer;
    procedure b;
    var y : integer;
      procedure cc;
      begin
        x := x + 100;
        y := y + 10
      end;
    begin
      y := 5;
      cc;
      writeln(y)
    end;
  begin
    x := 1;
    b;
    writeln(x)
  end;
begin
  a
end.
{----------------------------------------------- 113 program_procedure_nested_1}
program deep5;
var g: integer;
procedure p1;
var a: integer;
  procedure p2;
  var b: integer;
    procedure p3;
    var c: integer;
      procedure p4;
      var d: integer;
        procedure p5;
        begin
          a := a + 1;
          b := b + 2;
          c := c + 3;
          d := d + 4;
          g := a + b + c + d
        end;
      begin
        d := 40;
        p5;
        writeln(d)
      end;
    begin
      c := 30;
      p4;
      writeln(c)
    end;
  begin
    b := 20;
    p3;
    writeln(b)
  end;
begin
  a := 10;
  p2;
  writeln(a)
end;
begin
  g := 0;
  p1;
  writeln(g)
end.
{---------------------------------------------- 114 program_procedure_nested_15}
program deep5;
var g: integer;
procedure p1;
var a: integer;
  procedure p2;
  var b: integer;
    procedure p3;
    var c: integer;
      procedure p4;
      var d: integer;
        procedure p5;
        begin
          a := a + 1;
          b := b + 2;
          c := c + 3;
          d := d + 4;
          g := a + b + c + d
        end;
      begin
        d := 40;
        p5;
        writeln(d)
      end;
    begin
      c := 30;
      p4;
      writeln(c)
    end;
  begin
    b := 20;
    p3;
    writeln(b)
  end;
begin
  a := 10;
  p2;
  writeln(a)
end;
begin
  g := 0;
  p1;
  writeln(g)
end.
{---------------------------------------------- 115 program_procedure_nested_14}
program manyproc(output);
var g: integer;
  procedure p1; begin g := g + 1 end;
  procedure p2; begin g := g + 1 end;
  procedure p3; begin g := g + 1 end;
  procedure p4; begin g := g + 1 end;
  procedure p5; begin g := g + 1 end;
  procedure p6; begin g := g + 1 end;
  procedure p7; begin g := g + 1 end;
  procedure p8; begin g := g + 1 end;
  procedure p9; begin g := g + 1 end;
  procedure p10; begin g := g + 1 end;
  procedure p11; begin g := g + 1 end;
  procedure p12; begin g := g + 1 end;
  procedure p13; begin g := g + 1 end;
  procedure p14; begin g := g + 1 end;
  procedure p15; begin g := g + 1 end;
  procedure p16; begin g := g + 1 end;
  procedure p17; begin g := g + 1 end;
  procedure p18; begin g := g + 1 end;
  procedure p19; begin g := g + 1 end;
  procedure p20; begin g := g + 1 end;
  procedure p21; begin g := g + 1 end;
  procedure p22; begin g := g + 1 end;
  procedure p23; begin g := g + 1 end;
  procedure p24; begin g := g + 1 end;
  procedure p25; begin g := g + 1 end;
  procedure p26; begin g := g + 1 end;
  procedure p27; begin g := g + 1 end;
  procedure p28; begin g := g + 1 end;
  procedure p29; begin g := g + 1 end;
  procedure p30; begin g := g + 1 end;
  procedure p31; begin g := g + 1 end;
  procedure p32; begin g := g + 1 end;
  procedure p33; begin g := g + 1 end;
  procedure p34; begin g := g + 1 end;
  procedure p35; begin g := g + 1 end;
  procedure p36; begin g := g + 1 end;
  procedure p37; begin g := g + 1 end;
  procedure p38; begin g := g + 1 end;
  procedure p39; begin g := g + 1 end;
  procedure p40; begin g := g + 1 end;
  procedure p41; begin g := g + 1 end;
  procedure p42; begin g := g + 1 end;
  procedure p43; begin g := g + 1 end;
  procedure p44; begin g := g + 1 end;
  procedure p45; begin g := g + 1 end;
  procedure p46; begin g := g + 1 end;
  procedure p47; begin g := g + 1 end;
  procedure p48; begin g := g + 1 end;
  procedure p49; begin g := g + 1 end;
  procedure p50; begin g := g + 1 end;
  procedure p51; begin g := g + 1 end;
  procedure p52; begin g := g + 1 end;
  procedure p53; begin g := g + 1 end;
  procedure p54; begin g := g + 1 end;
  procedure p55; begin g := g + 1 end;
  procedure p56; begin g := g + 1 end;
  procedure p57; begin g := g + 1 end;
  procedure p58; begin g := g + 1 end;
  procedure p59; begin g := g + 1 end;
  procedure p60; begin g := g + 1 end;
  procedure p61; begin g := g + 1 end;
  procedure p62; begin g := g + 1 end;
  procedure p63; begin g := g + 1 end;
  procedure p64; begin g := g + 1 end;
  procedure p65; begin g := g + 1 end;
  procedure p66; begin g := g + 1 end;
  procedure p67; begin g := g + 1 end;
  procedure p68; begin g := g + 1 end;
  procedure p69; begin g := g + 1 end;
  procedure p70; begin g := g + 1 end;
begin
  g := 0;
  p1; p2; p3; p4; p5; p6; p7; p8; p9; p10;
  p11; p12; p13; p14; p15; p16; p17; p18; p19; p20;
  p21; p22; p23; p24; p25; p26; p27; p28; p29; p30;
  p31; p32; p33; p34; p35; p36; p37; p38; p39; p40;
  p41; p42; p43; p44; p45; p46; p47; p48; p49; p50;
  p51; p52; p53; p54; p55; p56; p57; p58; p59; p60;
  p61; p62; p63; p64; p65; p66; p67; p68; p69; p70;
  writeln(g)
end.
{---------------------------------------------- 116 program_procedure_record_11}
program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin f.a := 99 end;
begin g.a := 5; g.b := 0; c(g); writeln(g.a) end.
{----------------------------------------------- 117 program_procedure_record_4}
program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin f.a := 99 end;
begin g.a := 5; g.b := 0; c(g); writeln(g.a) end.
{--------------------------------------------------- 118 program_array_setlit_2}
program arr2d3;
var m: array[0..1, 0..1] of integer;
begin
  m[0,0] := 1; m[0,1] := 0;
  m[1,0] := 0; m[1,1] := 1;
  writeln(m[0,0]); writeln(m[0,1]);
  writeln(m[1,0]); writeln(m[1,1])
end.
{-------------------------------------------- 119 program_record_case_replace_2}
program vrec1;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
var v: valu;
begin
  v.ival := 42;
  writeln(v.ival)
end.
{------------------------------------------------ 120 program_function_record_1}
program recparam2;
type pair = record a: integer; b: integer end;
var r: pair;
function sum(p: pair): integer;
begin
  sum := p.a + p.b
end;
begin
  r.a := 10; r.b := 25;
  writeln(sum(r))
end.
{----------------------------------------------- 121 program_procedure_record_7}
program recparam;
type point = record x: integer; y: integer end;
var p: point;
procedure show(q: point);
begin
  writeln(q.x); writeln(q.y)
end;
begin
  p.x := 3; p.y := 7;
  show(p)
end.
{------------------------------------------------ 122 program_function_record_2}
program recparam3;
type vec2 = record x: integer; y: integer end;
var u, v: vec2;
function dot(a: vec2; b: vec2): integer;
begin
  dot := a.x * b.x + a.y * b.y
end;
begin
  u.x := 1; u.y := 2;
  v.x := 3; v.y := 4;
  writeln(dot(u, v))
end.
{---------------------------------------------- 123 program_procedure_record_10}
program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin
  f.a := 1;
  f := g
end;
begin
  g.a := 5; g.b := 0;
  c(g);
  writeln(g.a)
end.
{----------------------------------------------- 124 program_procedure_record_3}
program t;
type r = record a, b: integer end;
var g: r;
procedure c(var f: r);
begin
  f.a := 1;
  f := g
end;
begin
  g.a := 5; g.b := 0;
  c(g);
  writeln(g.a)
end.
{--------------------------------------------------- 125 program_array_setlit_1}
program boolidx;
var a : array[0..3] of boolean;
    i, j : integer;
begin
  i := 5; j := 3;
  a[0] := i > j;
  a[1] := i < j;
  a[2] := i = 5;
  a[3] := j <> 3;
  if a[0] then writeln(1) else writeln(0);
  if a[1] then writeln(1) else writeln(0);
  if a[2] then writeln(1) else writeln(0);
  if a[3] then writeln(1) else writeln(0)
end.
{--------------------------------------------------- 126 program_array_setlit_3}
program boolidx;
var a : array[0..3] of boolean;
    i, j : integer;
begin
  i := 5; j := 3;
  a[0] := i > j;
  a[1] := i < j;
  a[2] := i = 5;
  a[3] := j <> 3;
  if a[0] then writeln(1) else writeln(0);
  if a[1] then writeln(1) else writeln(0);
  if a[2] then writeln(1) else writeln(0);
  if a[3] then writeln(1) else writeln(0)
end.
{-------------------------------------------- 127 program_record_case_replace_4}
program vrec4;
type structure = record
      size: integer;
      case form: integer of
        1: (case scalkind: integer of
              5: (fconst: integer);
              6: ());
        2: (rangetype: integer; min: integer)
    end;
var s: structure;
begin
  s.min := 3;
  writeln(s.min)
end.
{-------------------------------------------------- 128 program_function_case_1}
program case2;
var r : integer;
function grade(n : integer) : integer;
begin
  case n div 10 of
    9, 10: grade := 4;
    8: grade := 3;
    7: grade := 2
  end
end;
begin
  r := grade(95); writeln(r);
  r := grade(83); writeln(r);
  r := grade(70); writeln(r)
end.
{---------------------------------------------- 129 program_procedure_forward_1}
program forward1;
var x: integer;
procedure second; forward;
procedure first;
begin
  second
end;
procedure second;
begin
  writeln(x)
end;
begin
  x := 42;
  first
end.
{---------------------------------------------- 130 program_procedure_forward_2}
program forward1;
var x: integer;
procedure second; forward;
procedure first;
begin
  second
end;
procedure second;
begin
  writeln(x)
end;
begin
  x := 42;
  first
end.
{----------------------------------------------- 131 program_procedure_record_1}
program aggloc2(output);
type rec = record typtr: integer; kind: integer end;
var gattr: rec; depth: integer;
  procedure selector;
    var lattr: rec;
  begin
    lattr := gattr;
    if depth < 2 then
      begin depth := depth + 1; gattr.typtr := 100 + depth; selector end;
    writeln(lattr.typtr)
  end;
begin
  gattr.typtr := 4; gattr.kind := 1; depth := 0;
  selector
end.
{----------------------------------------------- 132 program_procedure_record_8}
program aggloc2(output);
type rec = record typtr: integer; kind: integer end;
var gattr: rec; depth: integer;
  procedure selector;
    var lattr: rec;
  begin
    lattr := gattr;
    if depth < 2 then
      begin depth := depth + 1; gattr.typtr := 100 + depth; selector end;
    writeln(lattr.typtr)
  end;
begin
  gattr.typtr := 4; gattr.kind := 1; depth := 0;
  selector
end.
{-------------------------------------------------- 133 program_array_writeln_1}
program chararr3;
type chtp = (letter, number, special, other);
var chartp: array[char] of chtp;
    c: char;
begin
  chartp['a'] := letter;
  chartp['z'] := letter;
  chartp['0'] := number;
  chartp['9'] := number;
  chartp['+'] := special;
  writeln(ord(chartp['a']));
  writeln(ord(chartp['z']));
  writeln(ord(chartp['0']));
  writeln(ord(chartp['9']));
  writeln(ord(chartp['+']))
end.
{-------------------------------------------- 134 program_record_case_replace_3}
program vrec2;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
    structure = record
      size: integer;
      case form: integer of
        1: (rangetype: integer; min, max: valu);
        2: (nxtvar: integer; varval: valu)
    end;
var s: structure;
begin
  s.min.ival := 7;
  writeln(s.min.ival)
end.
{-------------------------------------------- 135 program_record_case_replace_1}
program varrec(output);
type
  shape = (circle, rect);
  figure = record
    case kind: shape of
      circle: (radius: integer);
      rect:   (width, height: integer)
    end;
var f: figure;
begin
  f.kind := circle;
  f.radius := 5;
  writeln(f.radius);
  f.kind := rect;
  f.width := 10; f.height := 4;
  writeln(f.width);
  writeln(f.height)
end.
{------------------------------------------------- 136 ladder__rung05_proc_func}
program rung05procfunc;
var
  r: integer;

procedure greet(name: integer);
begin
  writeln('n=', name)
end;

function square(x: integer): integer;
begin
  square := x * x
end;

begin
  greet(9);
  r := square(6);
  writeln(r)
end.
{------------------------------------------------------- 137 benchmark_uplevel3}
program ub3;
  procedure p1;
  var a, sum : integer;
    procedure p2;
      procedure p3;
        procedure p4;
        var i, j : integer;
        begin
          for i := 1 to 30000 do
            for j := 1 to 8000 do
              sum := sum + a
        end;
      begin p4 end;
    begin p3 end;
  begin
    a := 1; sum := 0;
    p2;
    writeln(sum)
  end;
begin p1 end.
{--------------------------------------------- 138 program_while_goto_replace_1}
program goto2;
label 1, 5;
var i, n, total: integer;
begin
  total := 0;
  n := 0;
1:
  n := n + 1;
  i := 0;
  while i < 10 do begin
    i := i + 1;
    total := total + 1;
    if (i = 3) and (n < 3) then goto 1;
    if total > 50 then goto 5
  end;
  writeln(n);
  writeln(total);
5:
  writeln(total * 100 + n)
end.
{--------------------------------------------- 139 program_while_goto_replace_2}
program goto2;
label 1, 5;
var i, n, total: integer;
begin
  total := 0;
  n := 0;
1:
  n := n + 1;
  i := 0;
  while i < 10 do begin
    i := i + 1;
    total := total + 1;
    if (i = 3) and (n < 3) then goto 1;
    if total > 50 then goto 5
  end;
  writeln(n);
  writeln(total);
5:
  writeln(total * 100 + n)
end.
{------------------------------------------------------ 140 ladder__rung11_case}
program rung11case;
var
  i: integer;
  c: char;
procedure classify(n: integer);
begin
  case n of
    1, 2, 3: writeln('low');
    4:       writeln('mid');
    5, 6:    writeln('high')
  end
end;
begin
  for i := 1 to 6 do
    classify(i);
  c := 'b';
  case c of
    'a': writeln('alpha');
    'b': writeln('bravo');
    'c': writeln('charlie')
  end
end.
{----------------------------------------------------- 141 program_record_for_1}
program rec2;
type
  rec = record
    a : integer;
    b : integer;
    c : integer
  end;
var
  r : rec;
  i : integer;
begin
  r.a := 10;
  r.b := r.a * 2;
  r.c := 0;
  for i := 1 to r.b do
    r.c := r.c + 1;
  if r.c > r.a then
    writeln(r.c)
  else
    writeln(r.a);
  writeln(r.a, r.b, r.c)
end.
{------------------------------------------------------- 142 benchmark_uplevel2}
program uplevelbench;
  procedure p1;
  var a, sum : integer;
    procedure p2;
      procedure p3;
      var i, j : integer;
      begin
        for i := 1 to 30000 do
          for j := 1 to 8000 do
            sum := sum + a
      end;
    begin
      p3
    end;
  begin
    a := 1;
    sum := 0;
    p2;
    writeln(sum)
  end;
begin
  p1
end.
{------------------------------------------- 143 program_function_for_replace_1}
(*$c+,d+,l-,t-*)
(* recursion on the p-machine: fact and fib *)
program recursion(output);
var
   k: integer;

function fact(n: integer): integer;
begin
   if n <= 1 then
      fact := 1
   else
      fact := n * fact(n - 1)
end;

function fib(n: integer): integer;
begin
   if n < 2 then
      fib := n
   else
      fib := fib(n - 1) + fib(n - 2)
end;

begin
   for k := 1 to 10 do
      writeln(k, fact(k), fib(k))
end.
{------------------------------------------- 144 program_function_for_replace_2}
(*$c+,d+,l-,t-*)
(* recursion on the p-machine: fact and fib *)
program recursion(output);
var
   k: integer;

function fact(n: integer): integer;
begin
   if n <= 1 then
      fact := 1
   else
      fact := n * fact(n - 1)
end;

function fib(n: integer): integer;
begin
   if n < 2 then
      fib := n
   else
      fib := fib(n - 1) + fib(n - 2)
end;

begin
   for k := 1 to 10 do
      writeln(k, fact(k), fib(k))
end.
{------------------------------------------------------ 145 program_array_for_4}
program enumarr(output);
type color = (red, green, blue);
var a: array[color] of integer;
    c: color;
begin
  a[red] := 10; a[green] := 20; a[blue] := 30;
  for c := red to blue do writeln(a[c])
end.
{--------------------------------------------------- 146 program_array_packed_2}
program aa2;
var m: array [0..3] of packed array [1..4] of char;
begin
  m[0] := ' abi';
  m[1] := ' abr';
  writeln(m[0]);
  writeln(m[1])
end.
{-------------------------------------------------------- 147 program_set_for_2}
program set5;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2] + [2, 3];
  n := 0;
  for i := 0 to 10 do if i in s then n := n + 1;
  writeln(n)
end.
{-------------------------------------------------------- 148 program_set_for_3}
program set6;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2, 3, 4] * [3, 4, 5, 6];
  n := 0;
  for i := 0 to 12 do if i in s then n := n + 1;
  writeln(n)
end.
{-------------------------------------------------------- 149 program_set_for_4}
program set7;
var s : set of 0..47; i, n : integer;
begin
  s := [1, 2, 3, 4] - [2, 4];
  n := 0;
  for i := 0 to 12 do if i in s then n := n + 1;
  writeln(n)
end.
{------------------------------------------------ 150 program_procedure_array_2}
program vparr(output);
var a: array[1..3] of integer; i: integer;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin
  a[1] := 7; a[2] := 8; a[3] := 9;
  i := 2;
  genlabel(a[i]);
  writeln(a[1]); writeln(a[2]); writeln(a[3])
end.
{------------------------------------------------ 151 program_procedure_array_5}
program vparr(output);
var a: array[1..3] of integer; i: integer;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin
  a[1] := 7; a[2] := 8; a[3] := 9;
  i := 2;
  genlabel(a[i]);
  writeln(a[1]); writeln(a[2]); writeln(a[3])
end.
{------------------------------------------------ 152 program_pointer_writeln_1}
program ptr1(output);
type
  ip = ^integer;
var
  p : ip;
begin
  new(p);
  p^ := 42;
  writeln(p^)
end.
{------------------------------------------------ 153 program_pointer_writeln_2}
program ptr2(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p); new(q);
  p^ := 10; q^ := 20;
  writeln(p^ + q^);
  p^ := p^ + 1;
  writeln(p^, q^)
end.
{------------------------------------------------ 154 program_pointer_writeln_5}
program ptr7(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p); new(q);
  p^ := 1; q^ := 1;
  if p = q then writeln(100) else writeln(200);
  q := p;
  if p = q then writeln(300) else writeln(400)
end.
{------------------------------------------------ 155 program_pointer_writeln_4}
program ptr6(output);
type ip = ^integer;
var p, q : ip;
begin
  new(p);
  p^ := 5;
  q := p;
  q^ := 99;
  writeln(p^);
  if p = q then writeln(1) else writeln(0)
end.
{-------------------------------------------------------- 156 program_set_for_1}
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
{----------------------------------------------- 157 program_procedure_record_2}
program rec_local_collision;
type rec = record f: integer end;
var g: integer;
procedure inner;
var lattr: rec;
begin lattr.f := 99 end;
procedure outer;
var lattr: rec;
begin lattr.f := 5; inner; writeln(lattr.f) end;
begin
  g := 0;
  outer
end.
{----------------------------------------------- 158 program_procedure_record_9}
program rec_local_collision;
type rec = record f: integer end;
var g: integer;
procedure inner;
var lattr: rec;
begin lattr.f := 99 end;
procedure outer;
var lattr: rec;
begin lattr.f := 5; inner; writeln(lattr.f) end;
begin
  g := 0;
  outer
end.
{------------------------------------------------------ 159 ladder__rung08_sets}
program rung08sets;
type
  digset = set of 0..9;
var
  s: digset;
begin
  s := [1, 3, 5, 7];
  if 3 in s then
    writeln('yes')
  else
    writeln('no');
  if 4 in s then
    writeln('yes')
  else
    writeln('no')
end.
{---------------------------------------------------- 160 program_record_with_1}
program with1;
type
  point = record
    x : integer;
    y : integer
  end;
var
  p : point;
  q : point;
begin
  p.x := 3; p.y := 4;
  with p do begin
    writeln(x);
    writeln(y);
    x := x + 10
  end;
  writeln(p.x)
end.
{---------------------------------------------------- 161 program_record_with_2}
program with2;
type
  point = record x : integer; y : integer end;
var
  p : point;
  q : point;
  g : integer;
begin
  p.x := 10; p.y := 20; g := 5;
  with p do begin
    writeln(x);
    writeln(y);
    x := x + g
  end;
  writeln(p.x);
  q.x := 1; q.y := 2;
  with q do begin
    x := x * 3;
    writeln(x)
  end
end.
{-------------------------------------------- 162 program_case_repeat_replace_1}
(* pb40: KNOWN FAIL (session 40) - no .ref on purpose; gate skips it.
   Lowering bug: inside a case arm, an if/else whose ELSE contains a loop,
   followed by a for-loop, wires the for's exit edge to the preceding IR_IF
   marker whose gamma points back at the for-init -> infinite re-init cycle
   (pcom insymbol rw-lookup spin). Expected output when fixed: 0
   See GOAL-PASCAL-BB.md session 40 notes; IR_IF handler returns gamma when
   reached via omega edge. Fix in lower_if continuation wiring or IR_IF. *)
program pb40(output);
var sy, t, k, i: integer;
begin
  sy := -1; t := 1; k := 0;
  case t of
    1:
      begin
        if k = 9 then k := 1
        else
          repeat k := k + 1 until k = 1;
        for i := 1 to 0 do sy := i;
        sy := 0
      end
  end;
  writeln(sy:1)
end.
{-------------------------------------------- 163 program_case_repeat_replace_2}
(* pb40: KNOWN FAIL (session 40) - no .ref on purpose; gate skips it.
   Lowering bug: inside a case arm, an if/else whose ELSE contains a loop,
   followed by a for-loop, wires the for's exit edge to the preceding IR_IF
   marker whose gamma points back at the for-init -> infinite re-init cycle
   (pcom insymbol rw-lookup spin). Expected output when fixed: 0
   See GOAL-PASCAL-BB.md session 40 notes; IR_IF handler returns gamma when
   reached via omega edge. Fix in lower_if continuation wiring or IR_IF. *)
program pb40(output);
var sy, t, k, i: integer;
begin
  sy := -1; t := 1; k := 0;
  case t of
    1:
      begin
        if k = 9 then k := 1
        else
          repeat k := k + 1 until k = 1;
        for i := 1 to 0 do sy := i;
        sy := 0
      end
  end;
  writeln(sy:1)
end.
{------------------------------------------------------- 164 program_case_for_2}
program enumtest;
type
  color = (red, green, blue);
  season = (spring, summer, fall, winter);
var
  c: color;
  s: season;
  i: integer;
begin
  c := green;
  s := fall;
  i := ord(c);
  writeln(i);
  if c = green then writeln(1) else writeln(0);
  writeln(ord(winter));
  for c := red to blue do
    writeln(ord(c));
  case s of
    spring: writeln(10);
    summer: writeln(20);
    fall:   writeln(30);
    winter: writeln(40)
  end
end.
{------------------------------------------------------ 165 program_array_for_7}
program subarr(output);
type range = 1..4;
var a: array[range] of integer;
    i: integer;
begin
  for i := 1 to 4 do a[i] := i * i;
  for i := 1 to 4 do writeln(a[i])
end.
{--------------------------------------------------- 166 program_array_packed_1}
program aa1;
type alpha = packed array [1..8] of char;
var a: array [1..3] of alpha;
begin
  a[1] := 'ab      ';
  a[2] := 'cd      ';
  writeln(a[1]);
  writeln(a[2])
end.
{------------------------------------------------ 167 program_pointer_writeln_3}
program ptr3(output);
type ip = ^integer;
var p : ip;
begin
  p := nil;
  if p = nil then writeln(1) else writeln(0);
  new(p);
  if p <> nil then writeln(2) else writeln(0)
end.
{--------------------------------------------------- 168 program_record_array_5}
program vrec8;
type r = record
      a: array [1..4] of integer;
      pval: integer
    end;
var c: r;
begin
  c.pval := 5;
  writeln(c.pval)
end.
{--------------------------------------------------- 169 program_record_array_6}
program vrec9;
type r = record
      pval: integer;
      a: array [1..4] of integer
    end;
var c: r;
begin
  c.pval := 5;
  writeln(c.pval)
end.
{------------------------------------------------- 170 program_record_pointer_1}
program boolptr(output);
type rp = ^rec; rec = record f : boolean end;
var p : rp; i : integer;
begin
  i := 7;
  new(p);
  p^.f := i > 3;
  if p^.f then writeln(1) else writeln(0);
  p^.f := i < 3;
  if p^.f then writeln(1) else writeln(0)
end.
{------------------------------------------------ 171 program_record_pointer_11}
program boolptr(output);
type rp = ^rec; rec = record f : boolean end;
var p : rp; i : integer;
begin
  i := 7;
  new(p);
  p^.f := i > 3;
  if p^.f then writeln(1) else writeln(0);
  p^.f := i < 3;
  if p^.f then writeln(1) else writeln(0)
end.
{---------------------------------------------------- 172 ladder__rung06_arrays}
program rung06arrays;
var
  a: array[1..5] of integer;
  i, s: integer;
begin
  for i := 1 to 5 do
    a[i] := i * i;
  s := 0;
  for i := 1 to 5 do
    s := s + a[i];
  writeln(s)
end.
{------------------------------------------------- 173 program_record_pointer_2}
program disc(output);
type
  pp = ^prec;
  prec = record f: integer; ael, inx: pp end;
var arr, s1, s2: pp;
begin
  new(arr); new(s1); new(s2);
  s1^.f := 111; s2^.f := 222;
  arr^.ael := s1; arr^.inx := s2;
  writeln(arr^.ael^.f);
  writeln(arr^.inx^.f)
end.
{--------------------------------------------------- 174 ladder__rung09_strings}
program rung09strings;
type
  str3 = packed array[1..3] of char;
var
  a: str3;
begin
  a := 'foo';
  if a = 'foo' then
    writeln('eq')
  else
    writeln('ne');
  writeln(a)
end.
{------------------------------------------- 175 program_array_packed_replace_3}
program chararrvv(output);
type alpha = packed array[1..8] of char;
var a, b: alpha; n: integer;
begin
  a[1]:='w';a[2]:='r';a[3]:='i';a[4]:='t';a[5]:='e';a[6]:='l';a[7]:='n';a[8]:=' ';
  b[1]:='w';b[2]:='r';b[3]:='i';b[4]:='t';b[5]:='e';b[6]:='l';b[7]:='n';b[8]:=' ';
  n := 0;
  if a = b then n := n + 1;
  if a <> b then n := n + 2;
  b[3] := 'o';
  if a = b then n := n + 10;
  if a <> b then n := n + 20;
  writeln(n)
end.
{-------------------------------------------------- 176 program_writeln_trunc_1}
program stdlib1(input, output);
var i : integer;
begin
  i := -7;
  writeln(abs(i));
  i := 5;
  writeln(abs(i));
  writeln(trunc(3.9));
  writeln(trunc(-2.1));
  if odd(4) then writeln('yes') else writeln('no');
  if odd(7) then writeln('yes') else writeln('no');
  writeln(pred(10));
  writeln(succ(10))
end.
{------------------------------------------------------ 177 program_array_for_1}
program matmul;
var a, b, c: array[0..1, 0..1] of integer;
    i, j, k: integer;
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4;
  b[0,0] := 5; b[0,1] := 6; b[1,0] := 7; b[1,1] := 8;
  for i := 0 to 1 do
    for j := 0 to 1 do begin
      c[i,j] := 0;
      for k := 0 to 1 do
        c[i,j] := c[i,j] + a[i,k] * b[k,j]
    end;
  writeln(c[0,0]); writeln(c[0,1]);
  writeln(c[1,0]); writeln(c[1,1])
end.
{------------------------------------------------------ 178 program_array_for_8}
program matmul;
var a, b, c: array[0..1, 0..1] of integer;
    i, j, k: integer;
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4;
  b[0,0] := 5; b[0,1] := 6; b[1,0] := 7; b[1,1] := 8;
  for i := 0 to 1 do
    for j := 0 to 1 do begin
      c[i,j] := 0;
      for k := 0 to 1 do
        c[i,j] := c[i,j] + a[i,k] * b[k,j]
    end;
  writeln(c[0,0]); writeln(c[0,1]);
  writeln(c[1,0]); writeln(c[1,1])
end.
{------------------------------------------------- 179 program_record_pointer_6}
program nestpv;
type
  cell = record num: integer end;
  cellptr = ^cell;
  attr = record kind: integer; cval: cellptr end;
var gattr : attr;
    lvp : cellptr;
begin
  new(lvp);
  lvp^.num := 77;
  gattr.kind := 3;
  gattr.cval := lvp;
  writeln(gattr.kind);
  writeln(gattr.cval^.num)
end.
{------------------------------------------- 180 program_array_packed_replace_2}
program chararrord(output);
type alpha = packed array[1..8] of char;
var a, b: alpha; n: integer;
begin
  a[1]:='a';a[2]:='b';a[3]:='c';a[4]:=' ';a[5]:=' ';a[6]:=' ';a[7]:=' ';a[8]:=' ';
  b[1]:='a';b[2]:='b';b[3]:='d';b[4]:=' ';b[5]:=' ';b[6]:=' ';b[7]:=' ';b[8]:=' ';
  n := 0;
  if a < b then n := n + 1;
  if a <= b then n := n + 2;
  if b > a then n := n + 4;
  if a >= b then n := n + 8;
  if a < 'zzz     ' then n := n + 100;
  if a > 'aaa     ' then n := n + 200;
  if 'mmm     ' > a then n := n + 400;
  writeln(n)
end.
{------------------------------------------------------ 181 program_array_for_5}
program enumsubarr(output);
type
  season = (spring, summer, fall, winter);
  month = 1..12;
var
  days: array[season] of integer;
  counts: array[month] of integer;
  s: season;
  i: integer;
begin
  days[spring] := 91; days[summer] := 92;
  days[fall] := 91; days[winter] := 90;
  for s := spring to winter do writeln(days[s]);
  for i := 1 to 12 do counts[i] := i * 3;
  writeln(counts[1]);
  writeln(counts[12])
end.
{------------------------------------------------- 182 program_record_pointer_3}
program nestptr1;
type
  inner = record a, b: integer end;
  outer = record x: integer; c: inner; y: integer end;
  outerptr = ^outer;
var p: outerptr;
begin
  new(p);
  p^.x := 1;
  p^.c.a := 42;
  p^.c.b := 7;
  p^.y := 99;
  writeln(p^.x);
  writeln(p^.c.a);
  writeln(p^.c.b);
  writeln(p^.y)
end.
{------------------------------------------------- 183 program_record_pointer_7}
program nestpv2;
type
  cell = record num: integer end;
  cellptr = ^cell;
  valu = record ival: integer; valp: cellptr end;
  attr = record kind: integer; cval: valu end;
var gattr : attr;
    lvp : cellptr;
begin
  new(lvp);
  lvp^.num := 88;
  gattr.kind := 3;
  gattr.cval.ival := 42;
  gattr.cval.valp := lvp;
  writeln(gattr.kind);
  writeln(gattr.cval.ival);
  writeln(gattr.cval.valp^.num)
end.
{--------------------------------------------------- 184 program_array_packed_5}
program chararrcvc(output);
type alfa = packed array[1..4] of char;
var rw: array[1..3] of alfa;
    i, j, n: integer;
begin
  rw[1] := 'aaaa';
  rw[2] := 'bbbb';
  rw[3] := 'aaaa';
  i := 1; j := 2;
  n := 0;
  if rw[i] < rw[j] then n := n + 1;
  if rw[i] <= rw[j] then n := n + 2;
  if rw[j] > rw[i] then n := n + 4;
  if rw[i] >= rw[j] then n := n + 8;
  if rw[i] = rw[3] then n := n + 16;
  if rw[i] <> rw[j] then n := n + 32;
  writeln(n);
  i := 3; j := 1;
  if rw[i] = rw[j] then writeln('eq') else writeln('ne')
end.
{--------------------------------------------- 185 program_function_procedure_5}
program goto3;
var r: integer;

procedure cnt(k: integer);
label 1;
var c: integer;
begin
  c := 0;
1:
  c := c + 1;
  if c < k then goto 1;
  r := r + c
end;

function dbl(x: integer): integer;
label 1;
var s: integer;
begin
  s := 0;
1:
  s := s + x;
  x := x - 1;
  if x > 0 then goto 1;
  dbl := s
end;

begin
  r := 0;
  cnt(4);
  cnt(7);
  writeln(r);
  writeln(dbl(5))
end.
{---------------------------------------------- 186 program_procedure_record_12}
program vpfld(output);
type rec = record fld: integer; other: integer end; pr = ^rec;
var p: pr;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin new(p); p^.fld := 7; p^.other := 99; genlabel(p^.fld);
  writeln(p^.fld); writeln(p^.other) end.
{----------------------------------------------- 187 program_procedure_record_5}
program vpfld(output);
type rec = record fld: integer; other: integer end; pr = ^rec;
var p: pr;
  procedure genlabel(var nxtlab: integer); begin nxtlab := 42 end;
begin new(p); p^.fld := 7; p^.other := 99; genlabel(p^.fld);
  writeln(p^.fld); writeln(p^.other) end.
{--------------------------------------------------- 188 program_record_array_4}
program vrec7;
type constant = record
      rval: packed array [1..8] of char;
      pval: integer
    end;
var c: constant;
begin
  c.pval := 5;
  writeln(c.pval)
end.
{------------------------------------------------- 189 program_record_pointer_5}
program vrecfield;
type csp=^cc; cc=record slgth:integer end;
     valu=record case b:boolean of true:(ival:integer); false:(valp:csp) end;
     attr=record cval: valu end;
var g: attr; v: valu; lvp: csp;
begin new(lvp); lvp^.slgth:=99; v.valp:=lvp;
  writeln(v.valp^.slgth);
  g.cval := v;
  writeln(g.cval.valp^.slgth)
end.
{------------------------------------------------------ 190 program_array_for_2}
program arr2d;
var a: array[0..1, 0..2] of integer;
    i, j: integer;
begin
  a[0,0] := 1; a[0,1] := 2; a[0,2] := 3;
  a[1,0] := 4; a[1,1] := 5; a[1,2] := 6;
  for i := 0 to 1 do begin
    for j := 0 to 2 do begin
      write(a[i,j]); write(' ')
    end;
    writeln
  end
end.
{------------------------------------------------------ 191 program_array_for_3}
program arr2d2;
var b: array[0..2, 0..2] of integer;
    i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      b[i,j] := i * 3 + j;
  for i := 0 to 2 do begin
    for j := 0 to 2 do begin
      write(b[i,j]); write(' ')
    end;
    writeln
  end
end.
{------------------------------------------------------ 192 program_array_for_6}
program markrel;
var mark: array[0..2, 0..2] of integer;
    i, j: integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      if i = j then mark[i,j] := 1 else mark[i,j] := 0;
  for i := 0 to 2 do begin
    for j := 0 to 2 do begin
      write(mark[i,j]); write(' ')
    end;
    writeln
  end
end.
{------------------------------------------- 193 program_array_packed_replace_1}
program chararrlit(output);
type alpha = packed array[1..8] of char;
var id: alpha;
    n: integer;
begin
  id[1]:='w'; id[2]:='r'; id[3]:='i'; id[4]:='t'; id[5]:='e';
  id[6]:='l'; id[7]:='n'; id[8]:=' ';
  n := 0;
  if id = 'writeln ' then n := n + 1;
  if 'writeln ' = id then n := n + 10;
  if id <> 'readln  ' then n := n + 100;
  if id = 'readln  ' then n := n + 1000;
  writeln(n)
end.
{------------------------------------------------ 194 program_procedure_array_1}
program aa6;
var m: array [0..3] of packed array [1..4] of char;
procedure outer;
  procedure inner;
  begin
    m[0] := ' abi'; m[1] := ' abr'
  end;
begin
  inner
end;
begin
  outer;
  writeln(m[0]); writeln(m[1])
end.
{------------------------------------------------ 195 program_procedure_array_4}
program aa6;
var m: array [0..3] of packed array [1..4] of char;
procedure outer;
  procedure inner;
  begin
    m[0] := ' abi'; m[1] := ' abr'
  end;
begin
  inner
end;
begin
  outer;
  writeln(m[0]); writeln(m[1])
end.
{--------------------------------------------------- 196 program_record_array_3}
program recspan_copy(output);
type
  pt = record x: integer; y: integer end;
  vr = record case boolean of true: (vi: integer); false: (vb: boolean) end;
var
  a: array[1..3] of pt;
  v: array[1..3] of vr;
  i: integer;
begin
  a[1].x := 3; a[1].y := 4;
  a[2] := a[1];
  a[3] := a[2];
  writeln(a[2].x, a[2].y);
  writeln(a[3].x, a[3].y);
  v[1].vi := 42;
  v[2] := v[1];
  writeln(v[2].vi)
end.
{------------------------------------------------- 197 program_record_pointer_8}
program ptr4(output);
type
  link = ^node;
  node = record
           val : integer;
           next : link
         end;
var
  head, p : link;
begin
  new(head);
  head^.val := 1;
  new(p);
  p^.val := 2;
  p^.next := nil;
  head^.next := p;
  writeln(head^.val);
  writeln(head^.next^.val)
end.
{--------------------------------------------- 198 program_function_procedure_3}
program char3;
var c : char;
procedure printc(x : char);
begin
  writeln(x)
end;
function nextc(x : char) : char;
begin
  nextc := chr(ord(x) + 1)
end;
begin
  c := 'M';
  printc(c);
  printc(nextc(c));
  case c of
    'A','B','C': writeln('early');
    'M': writeln('mid');
    'Z': writeln('late')
  end
end.
{--------------------------------------------- 199 program_function_procedure_8}
program char3;
var c : char;
procedure printc(x : char);
begin
  writeln(x)
end;
function nextc(x : char) : char;
begin
  nextc := chr(ord(x) + 1)
end;
begin
  c := 'M';
  printc(c);
  printc(nextc(c));
  case c of
    'A','B','C': writeln('early');
    'M': writeln('mid');
    'Z': writeln('late')
  end
end.
{--------------------------------------------------------- 200 benchmark_towers}
(* PROVENANCE: Hennessy "Towers" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Towers of Hanoi,
   recursive move count (2^disks-1). P4-faithful transliteration.
   Repeat knob via stdin. *)
program towersbench;
const disks = 18;
var movesdone, reps, rep: integer;
procedure move(n, frm, via, dest: integer);
begin
  if n = 1 then movesdone := movesdone + 1
  else begin
    move(n - 1, frm, dest, via);
    movesdone := movesdone + 1;
    move(n - 1, via, frm, dest)
  end
end;
begin
  readln(reps);
  movesdone := 0;
  for rep := 1 to reps do begin
    movesdone := 0;
    move(disks, 1, 2, 3)
  end;
  writeln(movesdone)
end.
{---------------------------------------------- 201 program_array_for_replace_1}
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
{---------------------------------------------- 202 program_array_for_replace_2}
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
{--------------------------------------------- 203 program_function_procedure_4}
program enum2;
type
  opkind = (lod, str, add, sub, mpi, dvi, ujp, fjp, stp);
  phase  = (parse, lower, emit);
var
  op: opkind;
  ph: phase;
  total: integer;

function encode(o: opkind): integer;
begin
  encode := ord(o) * 10
end;

procedure run(o: opkind; p: phase);
begin
  total := total + encode(o) + ord(p)
end;

begin
  total := 0;
  op := add;
  ph := lower;
  writeln(ord(op));
  writeln(ord(ph));
  run(sub, emit);
  writeln(total);
  for op := lod to fjp do
    if op = ujp then writeln(ord(op))
end.
{--------------------------------------------- 204 program_function_procedure_9}
program enum2;
type
  opkind = (lod, str, add, sub, mpi, dvi, ujp, fjp, stp);
  phase  = (parse, lower, emit);
var
  op: opkind;
  ph: phase;
  total: integer;

function encode(o: opkind): integer;
begin
  encode := ord(o) * 10
end;

procedure run(o: opkind; p: phase);
begin
  total := total + encode(o) + ord(p)
end;

begin
  total := 0;
  op := add;
  ph := lower;
  writeln(ord(op));
  writeln(ord(ph));
  run(sub, emit);
  writeln(total);
  for op := lod to fjp do
    if op = ujp then writeln(ord(op))
end.
{--------------------------------------------------- 205 program_record_array_2}
program arrrec2;
type rec = record a, b: integer end;
var d: array[0..3] of rec;
begin
  with d[2] do begin a := 7; b := 9 end;
  writeln(d[2].a); writeln(d[2].b)
end.
{--------------------------------------------------- 206 program_record_array_1}
program arrrec2;
type rec = record a, b: integer end;
var d: array[0..3] of rec;
    i: integer;
begin
  for i := 0 to 3 do begin d[i].a := i * 10; d[i].b := i + 100 end;
  for i := 0 to 3 do writeln(d[i].a, d[i].b)
end.
{--------------------------------------------------- 207 program_array_packed_3}
program chararr1;
var s: packed array [1..8] of char;
    i: integer;
begin
  s[1] := 'h'; s[2] := 'e'; s[3] := 'l'; s[4] := 'l';
  s[5] := 'o'; s[6] := ' '; s[7] := ' '; s[8] := ' ';
  for i := 1 to 8 do write(s[i]);
  writeln
end.
{------------------------------------------------- 208 program_function_array_1}
program arrparam(output);
type vec = array[0..4] of integer;
var v: vec; i: integer;
  function sumvec(a: vec): integer;
  var j, s: integer;
  begin s := 0; for j := 0 to 4 do s := s + a[j]; sumvec := s end;
begin
  for i := 0 to 4 do v[i] := i + 1;
  writeln(sumvec(v))
end.
{------------------------------------------------- 209 program_function_array_3}
program arrparam(output);
type vec = array[0..4] of integer;
var v: vec; i: integer;
  function sumvec(a: vec): integer;
  var j, s: integer;
  begin s := 0; for j := 0 to 4 do s := s + a[j]; sumvec := s end;
begin
  for i := 0 to 4 do v[i] := i + 1;
  writeln(sumvec(v))
end.
{------------------------------------------- 210 program_record_array_replace_4}
program vrec6;
type constant = record case cclass: integer of
        1: (rval: packed array [1..8] of char);
        2: (pval: integer)
    end;
var c: constant;
begin
  c.pval := 5;
  writeln(c.pval)
end.
{------------------------------------------- 211 program_record_array_replace_3}
program vrec5;
type constant = record case cclass: integer of
        1: (rval: packed array [1..8] of char);
        2: (pval: integer);
        3: (slgth: integer;
            sval: packed array [1..8] of char)
    end;
var c: constant;
begin
  c.slgth := 5;
  writeln(c.slgth)
end.
{------------------------------------------------- 212 program_function_array_2}
program arr2dtype2;
type row = array[0..2] of integer;
var r: row; i: integer;
function sumrow(a: row): integer;
var j, s: integer;
begin
  s := 0;
  for j := 0 to 2 do s := s + a[j];
  sumrow := s
end;
begin
  for i := 0 to 2 do r[i] := i + 1;
  writeln(sumrow(r))
end.
{--------------------------------------------- 213 program_function_procedure_2}
program arr2dtype3;
type vec = array[0..3] of integer;
var v: vec; i: integer;
procedure fill(var a: vec);
begin
  a[0] := 10; a[1] := 20; a[2] := 30; a[3] := 40
end;
function get2(a: vec): integer;
begin
  get2 := a[2]
end;
begin
  fill(v);
  writeln(get2(v))
end.
{--------------------------------------------- 214 program_function_procedure_7}
program arr2dtype3;
type vec = array[0..3] of integer;
var v: vec; i: integer;
procedure fill(var a: vec);
begin
  a[0] := 10; a[1] := 20; a[2] := 30; a[3] := 40
end;
function get2(a: vec): integer;
begin
  get2 := a[2]
end;
begin
  fill(v);
  writeln(get2(v))
end.
{------------------------------------------------- 215 program_record_pointer_4}
program nestwith1;
type
  valu = record ival: integer; rval: integer end;
  node = record name: integer; values: valu; nxt: integer end;
  nodeptr = ^node;
var lcp: nodeptr;
begin
  new(lcp);
  lcp^.name := 10;
  with lcp^ do values.ival := 55;
  with lcp^ do values.rval := 77;
  writeln(lcp^.name);
  writeln(lcp^.values.ival);
  writeln(lcp^.values.rval)
end.
{------------------------------------------------ 216 program_record_pointer_10}
program with3;
type
  rp = ^rec;
  rec = record x : integer; y : integer end;
var
  p : rp;
begin
  new(p);
  p^.x := 10;
  p^.y := 20;
  with p^ do begin
    writeln(x);
    writeln(y);
    x := x + 5
  end;
  writeln(p^.x)
end.
{----------------------------------------- 217 program_record_pointer_replace_1}
(* PB-38: test new() and pointer dereference - used heavily in pcom init *)
program pb38(output);
type
  nodeptr = ^node;
  node = record
    val: integer;
    next: nodeptr
  end;
var
  p: nodeptr;
  q: nodeptr;
begin
  new(p);
  p^.val := 42;
  p^.next := nil;
  new(q);
  q^.val := 99;
  q^.next := p;
  writeln(q^.val);
  writeln(q^.next^.val)
end.
{------------------------------------------- 218 program_record_array_replace_2}
(* PB-36: variant record initialization - same structure as pcom's display[] *)
program pb36(output);
type
  where = (blck, crec, vrec);
  disp = packed record
    fname: integer;
    flabel: integer;
    case occur: where of
      crec: (clev: integer; cdspl: integer);
      vrec: (vdspl: integer)
  end;
var
  d: array [0..2] of disp;
begin
  d[0].fname  := 0;
  d[0].flabel := 0;
  d[0].occur  := blck;
  d[1].fname  := 1;
  d[1].flabel := 0;
  d[1].occur  := blck;
  writeln(d[0].occur);
  writeln(d[1].occur)
end.
{-------------------------------------------------- 219 ladder__rung10_pointers}
program rung10pointers;
type
  node = ^cell;
  cell = record
    val: integer;
    next: node
  end;
var
  a, b: node;
begin
  new(a);
  new(b);
  a^.val := 1;
  b^.val := 2;
  a^.next := b;
  b^.next := nil;
  writeln(a^.val);
  writeln(a^.next^.val);
  if a^.next = b then
    writeln('linked')
  else
    writeln('broken');
  if a = b then
    writeln('same')
  else
    writeln('distinct');
  if b^.next = nil then
    writeln('terminated')
  else
    writeln('dangling');
  dispose(b);
  dispose(a)
end.
{--------------------------------------------------- 220 program_array_packed_4}
program chararr2;
type alpha = packed array [1..8] of char;
var id: alpha;
    i: integer;
begin
  id[1] := 'p'; id[2] := 'a'; id[3] := 's'; id[4] := 'c';
  id[5] := 'a'; id[6] := 'l'; id[7] := ' '; id[8] := ' ';
  for i := 1 to 8 do write(id[i]);
  writeln
end.
{--------------------------------------------------- 221 program_array_packed_6}
(* pb39: element read of a BULK-assigned packed char array must work.
   Regression for arr_get packed-string fallback: bulk assign stores a plain
   string; arr_get previously FAILed for idx>=1, silently severing continuation
   (root cause of pcom.pas insymbol death, session 40). *)
program pb39(output);
var ch: char; src: packed array [1..10] of char; n: integer;
begin
  src := 'x.        ';
  ch := src[1];
  if ch = 'x' then writeln('E1ok');
  ch := src[2];
  if ch = '.' then writeln('E2ok');
  n := 0;
  repeat n := n + 1; ch := src[n]
  until ch = '.';
  writeln(n:1)
end.
{------------------------------------------------- 222 program_record_pointer_9}
program ptr5(output);
type link = ^node; node = record val : integer; next : link end;
var head, t, p : link; i : integer;
begin
  head := nil;
  for i := 1 to 3 do
  begin
    new(t);
    t^.val := i * 10;
    t^.next := head;
    head := t
  end;
  p := head;
  while p <> nil do
  begin
    writeln(p^.val);
    p := p^.next
  end
end.
{----------------------------------------- 223 program_record_pointer_replace_2}
program vrec3;
type valu = record case b: boolean of
      true: (ival: integer);
      false: (valp: integer)
    end;
    structure = record
      size: integer;
      case form: integer of
        1: (rangetype: integer; min, max: valu);
        2: (nxtvar: integer; varval: valu)
    end;
    stp = ^structure;
var p: stp;
    fmin: integer;
begin
  new(p);
  with p^ do begin
    min.ival := 9;
    fmin := min.ival
  end;
  writeln(fmin)
end.
{-------------------------------------------- 224 program_array_while_replace_1}
(*$c+,d+,l-,t-*)
(*
  Sieve of Eratosthenes. Displays primes less than 'n'.
  
  By Christophe Staiesse.
*)
program eratosthenessieve;
const
        n = 100;
var
        a: array[2..n] of boolean;
        i,j: integer;
begin
        for i := 2 to n do a[i] := true;
        i := 2;
        while sqr(i) <= n do begin
                if a[i] then begin
                        j := sqr(i);
                        while j <= n do begin
                                a[j] := false;
                                j := j+i; 
                        end;
                end;
                i := i +1;
        end;
        for i := 2 to n do
                if a[i] then writeln(i);
end.
{-------------------------------------------- 225 program_array_while_replace_2}
(*$c+,d+,l-,t-*)
(*
  Sieve of Eratosthenes. Displays primes less than 'n'.
  
  By Christophe Staiesse.
*)
program eratosthenessieve;
const
        n = 100;
var
        a: array[2..n] of boolean;
        i,j: integer;
begin
        for i := 2 to n do a[i] := true;
        i := 2;
        while sqr(i) <= n do begin
                if a[i] then begin
                        j := sqr(i);
                        while j <= n do begin
                                a[j] := false;
                                j := j+i; 
                        end;
                end;
                i := i +1;
        end;
        for i := 2 to n do
                if a[i] then writeln(i);
end.
{------------------------------------------ 226 program_procedure_set_replace_1}
(* PB-30: scaled flat stress of setofsys-global repeat/while conditions *)
(* 20 block-body cycles; procedures reference only params, no globals in nested *)
program pb30(output);
var
  sy        : integer;
  statbegsys: set of 0..47;
  funcprocsy: set of 0..47;
  ndecl     : integer;
  nstmt     : integer;
  ncycles   : integer;
  i         : integer;
procedure statement;
begin
  nstmt := nstmt + 1;
  sy := sy - 1
end;
procedure decl_step;
begin
  ndecl := ndecl + 1;
  sy := 0
end;
begin
  statbegsys := [31, 32, 33, 34, 35, 36, 37, 38];
  funcprocsy := [22, 24];
  ndecl := 0; nstmt := 0; ncycles := 0;
  for i := 1 to 20 do
    begin
      sy := 24;
      while sy in funcprocsy do decl_step;
      ncycles := ncycles + 1;
      sy := 36;
      repeat statement
      until not (sy in statbegsys)
    end;
  writeln(ndecl);
  writeln(nstmt);
  writeln(ncycles)
end.
{------------------------------------------ 227 program_procedure_set_replace_2}
(* PB-30: scaled flat stress of setofsys-global repeat/while conditions *)
(* 20 block-body cycles; procedures reference only params, no globals in nested *)
program pb30(output);
var
  sy        : integer;
  statbegsys: set of 0..47;
  funcprocsy: set of 0..47;
  ndecl     : integer;
  nstmt     : integer;
  ncycles   : integer;
  i         : integer;
procedure statement;
begin
  nstmt := nstmt + 1;
  sy := sy - 1
end;
procedure decl_step;
begin
  ndecl := ndecl + 1;
  sy := 0
end;
begin
  statbegsys := [31, 32, 33, 34, 35, 36, 37, 38];
  funcprocsy := [22, 24];
  ndecl := 0; nstmt := 0; ncycles := 0;
  for i := 1 to 20 do
    begin
      sy := 24;
      while sy in funcprocsy do decl_step;
      ncycles := ncycles + 1;
      sy := 36;
      repeat statement
      until not (sy in statbegsys)
    end;
  writeln(ndecl);
  writeln(nstmt);
  writeln(ncycles)
end.
{--------------------------------------------------------- 228 benchmark_queens}
(* PROVENANCE: Hennessy "Queens" / Wirth 8-queens — Stanford integer benchmark
   suite (John L. Hennessy, Stanford, c.1981; public domain). Backtracking,
   first solution; output = checksum sum(x[i]*i)=162 for [1,5,8,6,3,7,2,4].
   Diagonals offset to non-negative indices (P4-safe). Repeat knob via stdin. *)
program queensbench;
var a: array[1..8] of boolean;
    b: array[2..16] of boolean;
    c: array[0..14] of boolean;
    x: array[1..8] of integer;
    q: boolean;
    i, cksum, reps, rep: integer;
procedure place(i: integer; var q: boolean);
var j: integer;
begin
  j := 0; q := false;
  repeat
    j := j + 1; q := false;
    if a[j] and b[i + j] and c[i - j + 7] then begin
      x[i] := j;
      a[j] := false; b[i + j] := false; c[i - j + 7] := false;
      if i < 8 then begin
        place(i + 1, q);
        if not q then begin
          a[j] := true; b[i + j] := true; c[i - j + 7] := true
        end
      end else q := true
    end
  until q or (j = 8)
end;
begin
  readln(reps);
  cksum := 0;
  for rep := 1 to reps do begin
    for i := 1 to 8 do a[i] := true;
    for i := 2 to 16 do b[i] := true;
    for i := 0 to 14 do c[i] := true;
    q := false;
    place(1, q);
    cksum := 0;
    for i := 1 to 8 do cksum := cksum + x[i] * i
  end;
  writeln(cksum)
end.
{------------------------------------------- 229 program_record_array_replace_1}
program t;
type dt = (ci, cc);
     r = record case dt of
       ci: (vi: integer);
       cc: (vc: char)
     end;
var s: array[0..4] of r; i: integer;
begin
  s[0].vc := 'H'; s[1].vc := 'e'; s[2].vc := 'l'; s[3].vc := 'l'; s[4].vc := 'o';
  for i := 0 to 4 do write(s[i].vc);
  writeln
end.
{--------------------------------------------- 230 program_function_procedure_1}
program arr2dtype;
type mat = array[0..1, 0..1] of integer;
var m: mat; x: integer;
procedure setmat(var a: mat);
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4
end;
function summat(a: mat): integer;
var i, j, s: integer;
begin
  s := 0;
  for i := 0 to 1 do
    for j := 0 to 1 do
      s := s + a[i,j];
  summat := s
end;
begin
  setmat(m);
  x := summat(m);
  writeln(x)
end.
{--------------------------------------------- 231 program_function_procedure_6}
program arr2dtype;
type mat = array[0..1, 0..1] of integer;
var m: mat; x: integer;
procedure setmat(var a: mat);
begin
  a[0,0] := 1; a[0,1] := 2; a[1,0] := 3; a[1,1] := 4
end;
function summat(a: mat): integer;
var i, j, s: integer;
begin
  s := 0;
  for i := 0 to 1 do
    for j := 0 to 1 do
      s := s + a[i,j];
  summat := s
end;
begin
  setmat(m);
  x := summat(m);
  writeln(x)
end.
{---------------------------------------------------------- 232 benchmark_sieve}
(* PROVENANCE: Sieve of Eratosthenes (Byte-magazine sieve benchmark lineage).
   Public-domain algorithm. Benchmark form: counts primes < limit, repeat knob
   via stdin. SCRIP corpus PAS-BENCH. *)
program sievebench;
const limit = 8190;
var flags: array[0..8190] of boolean;
    reps, rep, i, k, count: integer;
begin
  readln(reps);
  count := 0;
  for rep := 1 to reps do begin
    count := 0;
    for i := 0 to limit do flags[i] := true;
    for i := 0 to limit do
      if flags[i] then begin
        k := i + i + 3;
        while i + k <= limit do begin
          flags[i + k] := false;
          k := k + i + i + 3
        end;
        count := count + 1
      end
  end;
  writeln(count)
end.
{----------------------------------------------- 233 program_procedure_record_6}
program ptr8(output);
type link = ^node; node = record val : integer; next : link end;
var head : link;

procedure printlist(p : link);
begin
  while p <> nil do
  begin
    writeln(p^.val);
    p := p^.next
  end
end;

procedure setval(p : link; v : integer);
begin
  p^.val := v
end;

begin
  new(head);
  head^.val := 1;
  new(head^.next);
  head^.next^.val := 2;
  head^.next^.next := nil;
  setval(head, 77);
  printlist(head)
end.
{--------------------------------------- 234 program_procedure_record_replace_1}
program w1;
type valu = record case b: boolean of
        true: (ival: integer);
        false: (valp: integer)
     end;
     structform = (scalar, subrange);
     stp = ^ structure;
     structure = record
        size: integer;
        case form: structform of
          scalar: (fconst: integer);
          subrange: (rangetype: stp; min, max: valu)
     end;
var p: stp; fmin: integer;
procedure getbounds(fsp: stp; var fmn: integer);
begin
  fmn := 0;
  if fsp <> nil then
  with fsp^ do
    if form = subrange then fmn := min.ival
end;
begin
  new(p);
  p^.form := subrange;
  p^.min.ival := 77;
  getbounds(p, fmin);
  writeln(fmin)
end.
{--------------------------------------- 235 program_procedure_record_replace_2}
program w1;
type valu = record case b: boolean of
        true: (ival: integer);
        false: (valp: integer)
     end;
     structform = (scalar, subrange);
     stp = ^ structure;
     structure = record
        size: integer;
        case form: structform of
          scalar: (fconst: integer);
          subrange: (rangetype: stp; min, max: valu)
     end;
var p: stp; fmin: integer;
procedure getbounds(fsp: stp; var fmn: integer);
begin
  fmn := 0;
  if fsp <> nil then
  with fsp^ do
    if form = subrange then fmn := min.ival
end;
begin
  new(p);
  p^.form := subrange;
  p^.min.ival := 77;
  getbounds(p, fmin);
  writeln(fmin)
end.
{------------------------------------------------ 236 program_procedure_array_3}
program alphacmp(output);
type alpha = packed array [1..8] of char;
var rw : array [1..5] of alpha;
    rsy: array [1..5] of integer;
    frw: array [1..3] of integer;
    id : alpha;
    sy : integer;

procedure lookup(k: integer);
  label 2;
  var i: integer;
begin
  for i := frw[k] to frw[k+1] - 1 do
    if rw[i] = id then
      begin sy := rsy[i]; goto 2 end;
  sy := 0;
2:
end;

begin
  rw[1] := 'do      '; rw[2] := 'if      '; rw[3] := 'of      ';
  rw[4] := 'end     '; rw[5] := 'for     ';
  rsy[1] := 2; rsy[2] := 1; rsy[3] := 3; rsy[4] := 7; rsy[5] := 8;
  frw[1] := 1; frw[2] := 1; frw[3] := 6;
  id[1] := 'd'; id[2] := 'o'; id[3] := ' '; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(2); writeln(sy);
  id[1] := 'e'; id[2] := 'n'; id[3] := 'd'; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(1); writeln(sy);
  id[1] := 'x'; id[2] := 'x'; id[3] := ' '; id[4] := ' ';
  id[5] := ' '; id[6] := ' '; id[7] := ' '; id[8] := ' ';
  lookup(2); writeln(sy);
end.
{---------------------------------------------------------- 237 benchmark_intmm}
(* PROVENANCE: Hennessy "Intmm" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). 40x40 integer
   matrix multiply. Algorithm/constants per llvm-test-suite Stanford C port
   (rowsize=40). Canonical RNG. Global matrices (avoids aggregate var-param);
   output = checksum sum of result matrix. Repeat knob via stdin. *)
program intmmbench;
const rowsize = 40;
var ima, imb, imr: array[1..40, 1..40] of integer;
    seed, i, j, k, s, cksum, reps, rep: integer;
begin
  readln(reps);
  cksum := 0;
  for rep := 1 to reps do begin
    seed := 74755;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        seed := (seed * 1309 + 13849) mod 65536;
        ima[i, j] := seed - (seed div 120) * 120 - 60
      end;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        seed := (seed * 1309 + 13849) mod 65536;
        imb[i, j] := seed - (seed div 120) * 120 - 60
      end;
    for i := 1 to rowsize do
      for j := 1 to rowsize do begin
        s := 0;
        for k := 1 to rowsize do s := s + ima[i, k] * imb[k, j];
        imr[i, j] := s
      end;
    cksum := 0;
    for i := 1 to rowsize do
      for j := 1 to rowsize do cksum := cksum + imr[i, j]
  end;
  writeln(cksum)
end.
{---------------------------------------- 238 program_procedure_array_replace_1}
{ Regression probe for the in-process binary emitter's forward-reference
  patch table (BB_PATCH_MAX). A single procedure with many statements leaves
  one pending forward-ref patch per statement (the chain jumps to the proc's
  gamma/omega ports, which resolve only at proc end). With the old cap of 512
  this overflowed at ~64 array-element assignments inside one proc: the proc's
  binary build returned NULL, its runtime fn went unregistered, and the call
  to it returned FAILDESCR -> the whole statement chain silently dropped.

  `fill` does exactly 64 such assignments inside a nested procedure (past the
  old 512-patch point), then the caller prints markers around the call.
  Correct output is SABE on one line; a regression (proc build overflow)
  prints only SA and drops the rest (fill never returns success). Must pass
  both --run (M3) and --compile (M4); M4 always worked since the assembler
  resolves labels with no patch table. }
program patchtable(output);
type colour = (red, green, blue, white);
var tab: array[char] of colour;
  procedure outer;
    procedure fill;
    begin
      tab['a'] := red;   tab['b'] := green; tab['c'] := blue;  tab['d'] := white;
      tab['e'] := red;   tab['f'] := green; tab['g'] := blue;  tab['h'] := white;
      tab['i'] := red;   tab['j'] := green; tab['k'] := blue;  tab['l'] := white;
      tab['m'] := red;   tab['n'] := green; tab['o'] := blue;  tab['p'] := white;
      tab['q'] := red;   tab['r'] := green; tab['s'] := blue;  tab['t'] := white;
      tab['u'] := red;   tab['v'] := green; tab['w'] := blue;  tab['x'] := white;
      tab['y'] := red;   tab['z'] := green; tab['0'] := blue;  tab['1'] := white;
      tab['2'] := red;   tab['3'] := green; tab['4'] := blue;  tab['5'] := white;
      tab['6'] := red;   tab['7'] := green; tab['8'] := blue;  tab['9'] := white;
      tab['A'] := red;   tab['B'] := green; tab['C'] := blue;  tab['D'] := white;
      tab['E'] := red;   tab['F'] := green; tab['G'] := blue;  tab['H'] := white;
      tab['I'] := red;   tab['J'] := green; tab['K'] := blue;  tab['L'] := white;
      tab['M'] := red;   tab['N'] := green; tab['O'] := blue;  tab['P'] := white;
      tab['Q'] := red;   tab['R'] := green; tab['S'] := blue;  tab['T'] := white;
      tab['U'] := red;   tab['V'] := green; tab['W'] := blue;  tab['X'] := white;
      tab['Y'] := red;   tab['Z'] := green; tab[' '] := blue;  tab['.'] := white
    end;
  begin
    write('A');
    fill;
    write('B')
  end;
begin
  write('S');
  outer;
  write('E');
  writeln
end.
{---------------------------------------- 239 program_procedure_array_replace_6}
{ Regression probe for the in-process binary emitter's forward-reference
  patch table (BB_PATCH_MAX). A single procedure with many statements leaves
  one pending forward-ref patch per statement (the chain jumps to the proc's
  gamma/omega ports, which resolve only at proc end). With the old cap of 512
  this overflowed at ~64 array-element assignments inside one proc: the proc's
  binary build returned NULL, its runtime fn went unregistered, and the call
  to it returned FAILDESCR -> the whole statement chain silently dropped.

  `fill` does exactly 64 such assignments inside a nested procedure (past the
  old 512-patch point), then the caller prints markers around the call.
  Correct output is SABE on one line; a regression (proc build overflow)
  prints only SA and drops the rest (fill never returns success). Must pass
  both --run (M3) and --compile (M4); M4 always worked since the assembler
  resolves labels with no patch table. }
program patchtable(output);
type colour = (red, green, blue, white);
var tab: array[char] of colour;
  procedure outer;
    procedure fill;
    begin
      tab['a'] := red;   tab['b'] := green; tab['c'] := blue;  tab['d'] := white;
      tab['e'] := red;   tab['f'] := green; tab['g'] := blue;  tab['h'] := white;
      tab['i'] := red;   tab['j'] := green; tab['k'] := blue;  tab['l'] := white;
      tab['m'] := red;   tab['n'] := green; tab['o'] := blue;  tab['p'] := white;
      tab['q'] := red;   tab['r'] := green; tab['s'] := blue;  tab['t'] := white;
      tab['u'] := red;   tab['v'] := green; tab['w'] := blue;  tab['x'] := white;
      tab['y'] := red;   tab['z'] := green; tab['0'] := blue;  tab['1'] := white;
      tab['2'] := red;   tab['3'] := green; tab['4'] := blue;  tab['5'] := white;
      tab['6'] := red;   tab['7'] := green; tab['8'] := blue;  tab['9'] := white;
      tab['A'] := red;   tab['B'] := green; tab['C'] := blue;  tab['D'] := white;
      tab['E'] := red;   tab['F'] := green; tab['G'] := blue;  tab['H'] := white;
      tab['I'] := red;   tab['J'] := green; tab['K'] := blue;  tab['L'] := white;
      tab['M'] := red;   tab['N'] := green; tab['O'] := blue;  tab['P'] := white;
      tab['Q'] := red;   tab['R'] := green; tab['S'] := blue;  tab['T'] := white;
      tab['U'] := red;   tab['V'] := green; tab['W'] := blue;  tab['X'] := white;
      tab['Y'] := red;   tab['Z'] := green; tab[' '] := blue;  tab['.'] := white
    end;
  begin
    write('A');
    fill;
    write('B')
  end;
begin
  write('S');
  outer;
  write('E');
  writeln
end.
{------------------------------------------ 240 program_record_packed_replace_1}
program mir3(output);
type
  sf = (scalar,subrange,pointer,arrays);
  stp = ^structure;
  valu = record case intval: boolean of true:(ival:integer); false:(valp:integer) end;
  structure = packed record
                marked: boolean; size: integer;
                case form: sf of
                  subrange: (rangetype: stp; min,max: valu);
                  arrays:   (aeltype,inxtype: stp)
              end;
var lsp: stp; lvalu: valu;
begin
  new(lsp); lsp^.form := subrange;
  lvalu.ival := 7;
  with lsp^ do begin rangetype := nil; min := lvalu end;
  writeln(ord(lsp^.form));
  writeln(lsp^.min.ival)
end.
{----------------------------------------------------------- 241 benchmark_perm}
(* PROVENANCE: Hennessy "Perm" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Recursive permutation
   generation; output = pctr (call count), correct value 43300 (=5*P(7), P(7)=8660).
   FRONTIER: SCRIP currently returns 635 — a recursive call inside a FOR loop
   clobbers the loop control variable (not allocated per-activation). See
   GOAL-PASCAL-BB.md PAS-FOR-RECURSE. Repeat knob via stdin. *)
program permbench;
const permrange = 7;
var permarray: array[1..7] of integer;
    pctr, i, reps, rep: integer;
procedure swap(var a, b: integer);
var t: integer;
begin t := a; a := b; b := t end;
procedure permute(n: integer);
var k: integer;
begin
  pctr := pctr + 1;
  if n <> 1 then begin
    permute(n - 1);
    for k := n - 1 downto 1 do begin
      swap(permarray[n], permarray[k]);
      permute(n - 1);
      swap(permarray[n], permarray[k])
    end
  end
end;
begin
  readln(reps);
  pctr := 0;
  for rep := 1 to reps do begin
    pctr := 0;
    for i := 1 to permrange do permarray[i] := i;
    for i := 1 to 5 do permute(permrange)
  end;
  writeln(pctr)
end.
{--------------------------------------------------------- 242 benchmark_bubble}
(* PROVENANCE: Hennessy "Bubble" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; long-circulated, public domain).
   Algorithm/constants per llvm-test-suite Stanford C port
   (github.com/llvm/llvm-test-suite SingleSource/Benchmarks/Stanford).
   Canonical RNG seed=(seed*1309+13849) mod 65536, seed0=74755.
   P4-faithful transliteration. Repeat knob via stdin. *)
program bubblebench;
const srtelements = 500;
var sortlist: array[1..500] of integer;
    seed, biggest, littlest, top, i, temp, reps, rep: integer;
begin
  readln(reps);
  biggest := 0; littlest := 0;
  for rep := 1 to reps do begin
    seed := 74755; biggest := 0; littlest := 0;
    for i := 1 to srtelements do begin
      seed := (seed * 1309 + 13849) mod 65536;
      temp := seed;
      sortlist[i] := temp - (temp div 100000) * 100000 - 50000;
      if sortlist[i] > biggest then biggest := sortlist[i]
      else if sortlist[i] < littlest then littlest := sortlist[i]
    end;
    top := srtelements;
    while top > 1 do begin
      i := 1;
      while i < top do begin
        if sortlist[i] > sortlist[i + 1] then begin
          temp := sortlist[i]; sortlist[i] := sortlist[i + 1]; sortlist[i + 1] := temp
        end;
        i := i + 1
      end;
      top := top - 1
    end
  end;
  writeln(sortlist[1]);
  writeln(sortlist[srtelements])
end.
{---------------------------------------- 243 program_procedure_array_replace_3}
(* PB-32: minimal programme->block->body chain, no decls
   mirrors pcom token flow for "program x; begin end." 
   token stream: period(progsy-done)->beginsy->endsy->period *)
program pb32(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 6 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim;
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      insymbol;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim;
    if (sy <> period_v) and not (sy in blockbegsys) then
      sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  (* token stream: beginsy(31), endsy(39), period(14) *)
  tokens[0]   := 31;
  tokens[1]   := 31;
  tokens[2]   := 39;
  tokens[3]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts)
end.
{---------------------------------------- 244 program_procedure_array_replace_8}
(* PB-32: minimal programme->block->body chain, no decls
   mirrors pcom token flow for "program x; begin end." 
   token stream: period(progsy-done)->beginsy->endsy->period *)
program pb32(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 6 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim;
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      insymbol;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim;
    if (sy <> period_v) and not (sy in blockbegsys) then
      sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  (* token stream: beginsy(31), endsy(39), period(14) *)
  tokens[0]   := 31;
  tokens[1]   := 31;
  tokens[2]   := 39;
  tokens[3]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts)
end.
{--------------------------------------- 245 program_procedure_array_replace_10}
(* PB-34: Test complex repeat-until with eof()-like sentinel
   Simulates block()'s outer repeat: until (sy in statbegsys) or done
   where "done" is an integer boolean flag (like eof check)
   AND block's body repeat: until (sy=fsy) or (sy in blockbegsys) or done *)
program pb34(output);
var
  sy         : integer;
  test       : boolean;
  done       : integer;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    begin sy := tokens[tok_idx]; done := 0 end
  else
    begin sy := period_v; done := 1 end
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do insymbol;
    if sy <> beginsy_v then
      begin sy := period_v; done := 1 end
  until (sy in statbegsys) or (done = 1);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if (sy <> period_v) and not (sy in blockbegsys) then
      begin sy := period_v; done := 1 end
  until (sy = period_v) or (sy in blockbegsys) or (done = 1)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  done        := 0;
  (* token stream: beginsy(31), endsy(39), period(14) - same as pb33 *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until (sy = period_v) or (done = 1);
  writeln(ncycles);
  writeln(nstmts)
end.
{---------------------------------------- 246 program_procedure_array_replace_5}
(* PB-34: Test complex repeat-until with eof()-like sentinel
   Simulates block()'s outer repeat: until (sy in statbegsys) or done
   where "done" is an integer boolean flag (like eof check)
   AND block's body repeat: until (sy=fsy) or (sy in blockbegsys) or done *)
program pb34(output);
var
  sy         : integer;
  test       : boolean;
  done       : integer;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    begin sy := tokens[tok_idx]; done := 0 end
  else
    begin sy := period_v; done := 1 end
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do insymbol;
    if sy <> beginsy_v then
      begin sy := period_v; done := 1 end
  until (sy in statbegsys) or (done = 1);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if (sy <> period_v) and not (sy in blockbegsys) then
      begin sy := period_v; done := 1 end
  until (sy = period_v) or (sy in blockbegsys) or (done = 1)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  done        := 0;
  (* token stream: beginsy(31), endsy(39), period(14) - same as pb33 *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until (sy = period_v) or (done = 1);
  writeln(ncycles);
  writeln(nstmts)
end.
{---------------------------------------- 247 program_procedure_array_replace_4}
(* PB-33: exact "program x; begin end." chain
   When block_sim is called: sy=beginsy(31)
   insymbol -> sy=endsy(39)
   body: statement_sim(sy=39): 39 not in statbegsys, 39<>ident(0) -> NO-OP
   inner until: not(39 in statbegsys) -> exit immediately
   test=39<>13=true -> until test exits immediately
   if sy=endsy: insymbol -> sy=period(14)
   block body-repeat: sy=period=fsy -> EXIT
   programme: sy=period -> EXIT
*)
program pb33(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 5 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim;
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      insymbol;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim;
    if (sy <> period_v) and not (sy in blockbegsys) then
      sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  (* token stream for "begin end.": beginsy(31), endsy(39), period(14) *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts)
end.
{---------------------------------------- 248 program_procedure_array_replace_9}
(* PB-33: exact "program x; begin end." chain
   When block_sim is called: sy=beginsy(31)
   insymbol -> sy=endsy(39)
   body: statement_sim(sy=39): 39 not in statbegsys, 39<>ident(0) -> NO-OP
   inner until: not(39 in statbegsys) -> exit immediately
   test=39<>13=true -> until test exits immediately
   if sy=endsy: insymbol -> sy=period(14)
   block body-repeat: sy=period=fsy -> EXIT
   programme: sy=period -> EXIT
*)
program pb33(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..7] of integer;
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 5 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
procedure body_sim;
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      insymbol;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim;
    if (sy <> period_v) and not (sy in blockbegsys) then
      sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  (* token stream for "begin end.": beginsy(31), endsy(39), period(14) *)
  tokens[0]   := 31;
  tokens[1]   := 39;
  tokens[2]   := 14;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts)
end.
{---------------------------------------- 249 program_procedure_array_replace_2}
(* PB-31: full programme->block->body->statement chain simulation
   mirrors pcom token flow for "program hello; begin writeln(...) end." *)
program pb31(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  ndecls     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..15] of integer;
(*--------------------------------------------------------------------*)
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
(*--------------------------------------------------------------------*)
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
(*--------------------------------------------------------------------*)
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
(*--------------------------------------------------------------------*)
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      begin
        ndecls := ndecls + 1;
        insymbol
      end;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if sy <> period_v then
      if not (sy in blockbegsys) then
        sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
(*--------------------------------------------------------------------*)
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  ndecls      := 0;
  (* token stream: funcsy(22), beginsy(31), ident(0), endsy(39), period(14) *)
  tokens[0]   := 22;
  tokens[1]   := 22;
  tokens[2]   := 31;
  tokens[3]   := 0;
  tokens[4]   := 39;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts);
  writeln(ndecls)
end.
{---------------------------------------- 250 program_procedure_array_replace_7}
(* PB-31: full programme->block->body->statement chain simulation
   mirrors pcom token flow for "program hello; begin writeln(...) end." *)
program pb31(output);
var
  sy         : integer;
  test       : boolean;
  ncycles    : integer;
  nstmts     : integer;
  ndecls     : integer;
  statbegsys : set of 0..47;
  blockbegsys: set of 0..47;
  funcprocsy : set of 0..47;
  ident_v    : integer;
  period_v   : integer;
  semicolon_v: integer;
  beginsy_v  : integer;
  endsy_v    : integer;
  tok_idx    : integer;
  tokens     : array [0..15] of integer;
(*--------------------------------------------------------------------*)
procedure insymbol;
begin
  tok_idx := tok_idx + 1;
  if tok_idx <= 4 then
    sy := tokens[tok_idx]
  else
    sy := period_v
end;
(*--------------------------------------------------------------------*)
procedure statement_sim;
begin
  if (sy in statbegsys) or (sy = ident_v) then
    begin
      nstmts := nstmts + 1;
      insymbol
    end
end;
(*--------------------------------------------------------------------*)
procedure body_sim(fsy: integer);
begin
  repeat
    repeat statement_sim
    until not (sy in statbegsys);
    test := sy <> semicolon_v;
    if not test then insymbol
  until test;
  if sy = endsy_v then insymbol
end;
(*--------------------------------------------------------------------*)
procedure block_sim;
begin
  repeat
    while sy in funcprocsy do
      begin
        ndecls := ndecls + 1;
        insymbol
      end;
    if sy <> beginsy_v then
      sy := period_v
  until (sy in statbegsys) or (sy = period_v);
  if sy = beginsy_v then insymbol;
  repeat body_sim(period_v);
    if sy <> period_v then
      if not (sy in blockbegsys) then
        sy := period_v
  until (sy = period_v) or (sy in blockbegsys)
end;
(*--------------------------------------------------------------------*)
begin
  ident_v     := 0;
  semicolon_v := 13;
  period_v    := 14;
  beginsy_v   := 31;
  endsy_v     := 39;
  statbegsys  := [31, 32, 33, 34, 35, 36, 37, 38];
  blockbegsys := [18, 19, 20, 21, 22, 24, 31];
  funcprocsy  := [22, 24];
  ncycles     := 0;
  nstmts      := 0;
  ndecls      := 0;
  (* token stream: funcsy(22), beginsy(31), ident(0), endsy(39), period(14) *)
  tokens[0]   := 22;
  tokens[1]   := 22;
  tokens[2]   := 31;
  tokens[3]   := 0;
  tokens[4]   := 39;
  tok_idx     := 0;
  sy          := tokens[0];
  repeat
    block_sim;
    ncycles := ncycles + 1
  until sy = period_v;
  writeln(ncycles);
  writeln(nstmts);
  writeln(ndecls)
end.
{---------------------------------------------------------- 251 benchmark_quick}
(* PROVENANCE: Hennessy "Quick" — Stanford integer benchmark suite
   (John L. Hennessy, Stanford, c.1981; public domain). Hoare quicksort.
   Algorithm/constants per llvm-test-suite Stanford C port. Canonical RNG.
   P4-faithful transliteration. Repeat knob via stdin. *)
program quickbench;
const srtelements = 500;
var sortlist: array[1..500] of integer;
    seed, biggest, littlest, i, temp, reps, rep: integer;
procedure qsort(l, r: integer);
var ii, jj, x, w: integer;
begin
  ii := l; jj := r;
  x := sortlist[(l + r) div 2];
  repeat
    while sortlist[ii] < x do ii := ii + 1;
    while x < sortlist[jj] do jj := jj - 1;
    if ii <= jj then begin
      w := sortlist[ii]; sortlist[ii] := sortlist[jj]; sortlist[jj] := w;
      ii := ii + 1; jj := jj - 1
    end
  until ii > jj;
  if l < jj then qsort(l, jj);
  if ii < r then qsort(ii, r)
end;
begin
  readln(reps);
  for rep := 1 to reps do begin
    seed := 74755; biggest := 0; littlest := 0;
    for i := 1 to srtelements do begin
      seed := (seed * 1309 + 13849) mod 65536;
      temp := seed;
      sortlist[i] := temp - (temp div 100000) * 100000 - 50000;
      if sortlist[i] > biggest then biggest := sortlist[i]
      else if sortlist[i] < littlest then littlest := sortlist[i]
    end;
    qsort(1, srtelements)
  end;
  writeln(sortlist[1]);
  writeln(sortlist[srtelements])
end.
