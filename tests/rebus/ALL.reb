#------------------------------------------------------------ 1 simple_assign_10
function main()
x := a ^ b
end
#------------------------------------------------------------ 2 simple_assign_11
function main()
if x = 1 then y := 10 else y := 20
end
#------------------------------------------------------------ 3 simple_assign_12
function main()
x := a % b
end
#------------------------------------------------------------ 4 simple_assign_13
function main()
case x of { 1: case y of { 2: z := 3 }; default: w }
end
#------------------------------------------------------------ 5 simple_assign_14
function main()
if x then if y then z := 1
end
#------------------------------------------------------------ 6 simple_assign_15
function main()
  x := a[i +: n]
end
#------------------------------------------------------------ 7 simple_assign_16
function main()
repeat y := y + 1
end
#------------------------------------------------------------ 8 simple_assign_17
function main()
x := a == b
end
#------------------------------------------------------------ 9 simple_assign_18
function main()
x := a ~== b
end
#----------------------------------------------------------- 10 simple_assign_20
function main()
x := a[1]
end
#----------------------------------------------------------- 11 simple_assign_22
function main()
unless x = 1 then y := 10
end
#----------------------------------------------------------- 12 simple_assign_23
function main()
until x = 1 do y := 1
end
#------------------------------------------------------------ 13 simple_assign_3
function main()
x := r.field
end
#------------------------------------------------------------ 14 simple_assign_7
function main()
x := +y
end
#------------------------------------------------------------ 15 simple_assign_8
function main()
case x of { 1: y := 1; 2: y := 2 }
end
#------------------------------------------------------------ 16 simple_assign_9
function main()
case x of { 1: y := 1; default: y := 0 }
end
#------------------------------------------------------------ 17 simple_output_4
function main()
for i from 1 to 5 do OUTPUT := i
end
#------------------------------------------------------------ 18 simple_output_5
function main()
for i from 1 to 10 by 2 do OUTPUT := i
end
#----------------------------------------------------------- 19 simple_program_1
function main()
  x ? @pos
end
#---------------------------------------------------------- 20 simple_program_10
function main()
while x do if y then z
end
#----------------------------------------------------------- 21 simple_program_2
function main()
fail
end
#----------------------------------------------------------- 22 simple_program_3
function main()
stop
end
#----------------------------------------------------------- 23 simple_program_4
function main()
return
end
#----------------------------------------------------------- 24 simple_program_5
function f(x)
return x
end
#----------------------------------------------------------- 25 simple_program_6
function main()
x ? "a" <- "b"
end
#----------------------------------------------------------- 26 simple_program_7
function main()
x ?- "a"
end
#----------------------------------------------------------- 27 simple_program_8
function main()
    foo(1, 2,)
end
#------------------------------------------------------------ 28 simple_assign_2
function main()  # function comment
# this is a full-line comment
x := 1  # trailing
end
#----------------------------------------------------------- 29 simple_assign_21
function main()
x := a[1]
y := a[2, 3]
end
#------------------------------------------------------------ 30 simple_assign_4
function main()
local x, y;
x := 1
end
#------------------------------------------------------------ 31 simple_assign_5
function main()
    x := 3.14
    y := 2.718
end
#----------------------------------------------------------- 32 simple_program_9
function main()
    x ? .y
    .z
end
#------------------------------------------------------------ 33 simple_assign_6
function main()
  x := ~y
  z := !w
  a := /b
  c := \d
end
#------------------------------------------------------------ 34 simple_output_1
function main()
{
OUTPUT := "a";
OUTPUT := "b";
}
end
#------------------------------------------------------------ 35 simple_output_2
function main()
if x then {
OUTPUT := "yes";
x := 2;
}
end
#------------------------------------------------------------ 36 simple_output_7
function main()
local x;
initial x := 0;
x := x + 1
OUTPUT := x
end
#------------------------------------------------------------ 37 simple_assign_1
function main()

x := 1

y := 2

end
#----------------------------------------------------------- 38 simple_assign_19
function push(s, v)
s.data[s.top +:= 1] := v
end

function main()
push(s, 1)
end
#------------------------------------------------------------ 39 simple_output_3
function fib(n)
if n <= 1 then return n
return fib(n - 1) + fib(n - 2)
end

function main()
OUTPUT := fib(7)
end
#------------------------------------------------------------ 40 simple_output_6
function check(n)
if n = 0 then return n
n
end

function main()
OUTPUT := check(5)
end
#------------------------------------------------------------ 41 simple_output_9
record Point(x, y)

function dist(p)
p.x * p.x + p.y * p.y
end

function main()
q := Point(3, 4)
OUTPUT := dist(q)
end
#------------------------------------------------------------ 42 simple_output_8
function abs(n)
if n < 0 then return 0 - n
return n
end

function max(a, b)
if a > b then return a
return b
end

function main()
x := abs(-5)
y := max(x, 3)
OUTPUT := y
end
#------------------------------------------------------------------ 43 capture_1
function main()
    x ? "hello" . y
end
#-------------------------------------------------------------- 44 imm_capture_1
function main()
    x ? "world" $ z
end
#----------------------------------------------------------------- 45 indirect_1
function main()
  x := $y
  z := $"name"
end
#------------------------------------------------------------------ 46 keyword_1
function main()
    &FULLSCAN := 1
    &ANCHOR := 0
end
#---------------------------------------------------------------------- 47 alt_1
function main()
  x +:= 1
  y -:= 2
  z ||:= "hi"
  a :=: b
end
#------------------------------------------------------------ 48 array_replace_1
record Stack(top, data)

function push(s, v)
s.data[s.top +:= 1] := v
end

function pop(s, v)
v := s.data[s.top]
s.top -:= 1
return v
end

function main()
local s;
initial s := Stack(0, ARRAY('1:100'));
push(s, 42)
push(s, 99)
OUTPUT := pop(s)
end
