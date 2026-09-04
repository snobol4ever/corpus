#---------------------------------------------------------------- 1 arith_divide
function main()
OUTPUT := 10 / 3
end
#-------------------------------------------------------------- 2 arith_exponent
function main()
OUTPUT := 2 ^ 3
end
#-------------------------------------------------------------- 3 arith_multiply
function main()
OUTPUT := 4 * 5
end
#-------------------------------------------------------- 4 arith_paren_grouping
function main()
OUTPUT := (2 + 3) * 4
end
#------------------------------------------------------------- 5 arith_remainder
function main()
OUTPUT := 10 % 3
end
#-------------------------------------------------------------- 6 arith_subtract
function main()
OUTPUT := 5 - 2
end
#----------------------------------------------------------- 7 arith_unary_minus
function main()
OUTPUT := -5
end
#--------------------------------------------------------------- 8 hello_integer
function main()
OUTPUT := 42
end
#------------------------------------------------------------------ 9 hello_real
function main()
OUTPUT := 3.5
end
#--------------------------------------------------------------- 10 hello_squote
function main()
OUTPUT := 'hello world'
end
#----------------------------------------------------------- 11 simple_assign_10
function main()
x := a ^ b
end
#----------------------------------------------------------- 12 simple_assign_11
function main()
if x = 1 then y := 10 else y := 20
end
#----------------------------------------------------------- 13 simple_assign_12
function main()
x := a % b
end
#----------------------------------------------------------- 14 simple_assign_13
function main()
case x of { 1: case y of { 2: z := 3 }; default: w }
end
#----------------------------------------------------------- 15 simple_assign_14
function main()
if x then if y then z := 1
end
#----------------------------------------------------------- 16 simple_assign_15
function main()
  x := a[i +: n]
end
#----------------------------------------------------------- 17 simple_assign_16
function main()
repeat y := y + 1
end
#----------------------------------------------------------- 18 simple_assign_17
function main()
x := a == b
end
#----------------------------------------------------------- 19 simple_assign_18
function main()
x := a ~== b
end
#----------------------------------------------------------- 20 simple_assign_20
function main()
x := a[1]
end
#----------------------------------------------------------- 21 simple_assign_22
function main()
unless x = 1 then y := 10
end
#----------------------------------------------------------- 22 simple_assign_23
function main()
until x = 1 do y := 1
end
#----------------------------------------------------------- 23 simple_assign_27
function main()
  x := 42
end
#----------------------------------------------------------- 24 simple_assign_29
function main()
  x := 'hello'
end
#------------------------------------------------------------ 25 simple_assign_3
function main()
x := r.field
end
#----------------------------------------------------------- 26 simple_assign_30
function main()
  x := y
end
#----------------------------------------------------------- 27 simple_assign_31
function main()
  x := f(a, b)
end
#----------------------------------------------------------- 28 simple_assign_38
function main()
  if x then y := 1
end
#----------------------------------------------------------- 29 simple_assign_40
function main()
  x := (a + b) * c
end
#----------------------------------------------------------- 30 simple_assign_42
function main()
  while x do y := 1
end
#------------------------------------------------------------ 31 simple_assign_7
function main()
x := +y
end
#------------------------------------------------------------ 32 simple_assign_8
function main()
case x of { 1: y := 1; 2: y := 2 }
end
#------------------------------------------------------------ 33 simple_assign_9
function main()
case x of { 1: y := 1; default: y := 0 }
end
#----------------------------------------------------------- 34 simple_output_10
function main()
OUTPUT := "hello world"
end
#----------------------------------------------------------- 35 simple_output_11
function main()
OUTPUT := 2 + 3
end
#----------------------------------------------------------- 36 simple_output_12
function main()
OUTPUT := 2 + 3 * 4
end
#----------------------------------------------------------- 37 simple_output_30
function main()
  OUTPUT := 'hello'
end
#----------------------------------------------------------- 38 simple_output_31
function main()
  if x then OUTPUT := 'yes'
end
#----------------------------------------------------------- 39 simple_output_32
function main()
  while x do OUTPUT := 'ok'
end
#------------------------------------------------------------ 40 simple_output_4
function main()
for i from 1 to 5 do OUTPUT := i
end
#------------------------------------------------------------ 41 simple_output_5
function main()
for i from 1 to 10 by 2 do OUTPUT := i
end
#----------------------------------------------------------- 42 simple_program_1
function main()
  x ? @pos
end
#---------------------------------------------------------- 43 simple_program_10
function main()
while x do if y then z
end
#---------------------------------------------------------- 44 simple_program_11
function main()
  x
end
#---------------------------------------------------------- 45 simple_program_12
function main()
  42
end
#---------------------------------------------------------- 46 simple_program_13
function main()
  'hello'
end
#---------------------------------------------------------- 47 simple_program_14
function main()
  f(a, b)
end
#---------------------------------------------------------- 48 simple_program_17
function main()
  x ? y
end
#---------------------------------------------------------- 49 simple_program_18
function main()
  x ? 5
end
#---------------------------------------------------------- 50 simple_program_19
function main()
  x ? "hello"
end
#----------------------------------------------------------- 51 simple_program_2
function main()
fail
end
#---------------------------------------------------------- 52 simple_program_21
function main()
  "abc" ? p
end
#---------------------------------------------------------- 53 simple_program_22
function main()
  "abc" ? "b"
end
#----------------------------------------------------------- 54 simple_program_3
function main()
stop
end
#----------------------------------------------------------- 55 simple_program_4
function main()
return
end
#----------------------------------------------------------- 56 simple_program_5
function f(x)
return x
end
#----------------------------------------------------------- 57 simple_program_6
function main()
x ? "a" <- "b"
end
#----------------------------------------------------------- 58 simple_program_7
function main()
x ?- "a"
end
#----------------------------------------------------------- 59 simple_program_8
function main()
    foo(1, 2,)
end
#------------------------------------------------------------ 60 simple_assign_2
function main()  # function comment
# this is a full-line comment
x := 1  # trailing
end
#----------------------------------------------------------- 61 simple_assign_21
function main()
x := a[1]
y := a[2, 3]
end
#----------------------------------------------------------- 62 simple_assign_24
function main()
  x := a + b
  y := a - b
end
#----------------------------------------------------------- 63 simple_assign_25
function main()
  x := a * b + c
  y := a + b * c
end
#----------------------------------------------------------- 64 simple_assign_26
function main()
  x := a * b
  y := a / b
end
#----------------------------------------------------------- 65 simple_assign_28
function main()
  x := 1
  y := 2
end
#----------------------------------------------------------- 66 simple_assign_32
function main()
  if a = b then x := 1
  if a ~= b then x := 2
end
#----------------------------------------------------------- 67 simple_assign_33
function main()
  if a < b then x := 1
  if a > b then x := 2
end
#----------------------------------------------------------- 68 simple_assign_39
function main()
  x := "hello"
  x ? "ell"
end
#------------------------------------------------------------ 69 simple_assign_4
function main()
local x, y;
x := 1
end
#----------------------------------------------------------- 70 simple_assign_41
function main()
  x := -a
  y := -1
end
#------------------------------------------------------------ 71 simple_assign_5
function main()
    x := 3.14
    y := 2.718
end
#----------------------------------------------------------- 72 simple_output_13
function main()
x := 7
OUTPUT := x
end
#---------------------------------------------------------- 73 simple_program_20
function main()
  x ? y
  a ? b
end
#---------------------------------------------------------- 74 simple_program_23
record marker()

function main()
end
#---------------------------------------------------------- 75 simple_program_24
record point(x)

function main()
end
#---------------------------------------------------------- 76 simple_program_25
record node(left, right, value)

function main()
end
#---------------------------------------------------------- 77 simple_program_26
record point(x, y)

function main()
end
#----------------------------------------------------------- 78 simple_program_9
function main()
    x ? .y
    .z
end
#------------------------------------------------------------- 79 assign_aug_add
function main()
x := 5
x +:= 3
OUTPUT := x
end
#------------------------------------------------------------- 80 assign_aug_sub
function main()
x := 5
x -:= 3
OUTPUT := x
end
#----------------------------------------------------------- 81 simple_output_14
function main()
x := 1
x := x + 9
OUTPUT := x
end
#----------------------------------------------------------- 82 simple_output_28
function main()
s := "hello world"
s ? "world" <- "there"
OUTPUT := s
end
#----------------------------------------------------------- 83 simple_output_29
function main()
s := "hello world"
s ? "xyz" <- "there"
OUTPUT := s
end
#-------------------------------------------------- 84 assign_exchange_undefined
function main()
OUTPUT := "before"
x := 1
y := 2
x :=: y
end
#----------------------------------------------------------- 85 simple_assign_34
function add(a, b)
  x := 1
end
function main()
  y := 2
end
#----------------------------------------------------------- 86 simple_assign_36
function id(x)
  y := 1
end
function main()
  z := 2
end
#----------------------------------------------------------- 87 simple_assign_37
function foo()
  42
end
function main()
  x := 1
end
#------------------------------------------------------------ 88 simple_assign_6
function main()
  x := ~y
  z := !w
  a := /b
  c := \d
end
#------------------------------------------------------------ 89 simple_output_1
function main()
{
OUTPUT := "a";
OUTPUT := "b";
}
end
#----------------------------------------------------------- 90 simple_output_16
function main()
x := 1
if x = 1 then {
OUTPUT := "yes"
}
end
#------------------------------------------------------------ 91 simple_output_2
function main()
if x then {
OUTPUT := "yes";
x := 2;
}
end
#------------------------------------------------------------ 92 simple_output_7
function main()
local x;
initial x := 0;
x := x + 1
OUTPUT := x
end
#---------------------------------------------------------- 93 simple_program_15
function foo()
  42
end
function main()
  foo()
end
#---------------------------------------------------------- 94 simple_program_27
record point(x, y)

record edge(a, b)

function main()
end
#------------------------------------------------------------ 95 simple_assign_1
function main()

x := 1

y := 2

end
#----------------------------------------------------------- 96 simple_assign_19
function push(s, v)
s.data[s.top +:= 1] := v
end

function main()
push(s, 1)
end
#----------------------------------------------------------- 97 simple_assign_35
function foo()
  1
end
function main()
  foo()
  x := 2
end
#----------------------------------------------------------- 98 simple_output_15
function main()
x := 0
if x = 1 then {
OUTPUT := "yes"
}
OUTPUT := "done"
end
#----------------------------------------------------------- 99 simple_output_19
function double(n)
return n * 2
end

function main()
OUTPUT := double(21)
end
#---------------------------------------------------------- 100 simple_output_20
function add(a, b)
return a + b
end

function main()
OUTPUT := add(15, 30)
end
#---------------------------------------------------------- 101 simple_output_23
record point(x, y)

function main()
p := point(3, 4)
OUTPUT := x(p)
OUTPUT := y(p)
end
#---------------------------------------------------------- 102 simple_output_27
function main()
x := 1
x := 2
x := 3
OUTPUT := x
OUTPUT := 99
end
#--------------------------------------------------------- 103 simple_program_28
record point(x, y)

function area()
end

function main()
end
#----------------------------------------------------------- 104 simple_output_3
function fib(n)
if n <= 1 then return n
return fib(n - 1) + fib(n - 2)
end

function main()
OUTPUT := fib(7)
end
#----------------------------------------------------------- 105 simple_output_6
function check(n)
if n = 0 then return n
n
end

function main()
OUTPUT := check(5)
end
#---------------------------------------------------------- 106 simple_output_22
function try(n)
if n > 0 then return n
fail
end

function main()
if try(5) then OUTPUT := "yes" else OUTPUT := "no"
if try(-1) then OUTPUT := "yes" else OUTPUT := "no"
end
#--------------------------------------------------------- 107 simple_program_16
function a()
  1
end
function b()
  2
end
function main()
  3
end
#---------------------------------------------------------- 108 simple_output_17
function main()
local n, count
n := 10
count := 0
while n > 0 do {
n := n - 2
count := count + 1
}
OUTPUT := count
end
#---------------------------------------------------------- 109 simple_output_18
function main()
local i, sum
i := 1
sum := 0
while i <= 5 do {
sum := sum + i
i := i + 1
}
OUTPUT := sum
end
#---------------------------------------------------------- 110 simple_output_21
function greet(silent)
if silent = 1 then return
OUTPUT := "hello"
return
end

function main()
greet(1)
greet(0)
end
#---------------------------------------------------------- 111 simple_output_24
record point(x, y)

function main()
p := point(3, 4)
q := point(10, 20)
OUTPUT := x(p)
OUTPUT := x(q)
OUTPUT := y(p)
OUTPUT := y(q)
end
#---------------------------------------------------------- 112 simple_output_26
function try(n)
if n > 0 then return n
fail
end

function main()
OUTPUT := "start"
OUTPUT := try(-1)
OUTPUT := "end"
end
#----------------------------------------------------------- 113 simple_output_9
record Point(x, y)

function dist(p)
p.x * p.x + p.y * p.y
end

function main()
q := Point(3, 4)
OUTPUT := dist(q)
end
#----------------------------------------------------------- 114 simple_output_8
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
#--------------------------------------------------------------------- 115 alt_2
function main()
  r := "a" | "b" | "c"
end
#--------------------------------------------------------------------- 116 alt_3
function main()
  x := y | z
end
#--------------------------------------------------------------------- 117 alt_4
function main()
  a | b | c
end
#--------------------------------------------------------------------- 118 alt_5
function main()
  x | y
end
#--------------------------------------------------------------------- 119 alt_6
function main()
  x ? "a" | y
end
#--------------------------------------------------------------------- 120 alt_7
function main()
  x ? "a" | "b" | "c"
end
#--------------------------------------------------------------------- 121 alt_8
function main()
  x ? y | z
end
#--------------------------------------------------------------------- 122 alt_9
function main()
  x := a || b
end
#----------------------------------------------------------------- 123 capture_1
function main()
    x ? "hello" . y
end
#------------------------------------------------------------- 124 imm_capture_1
function main()
    x ? "world" $ z
end
#------------------------------------------------------------- 125 alt_replace_1
function main()
if "cat" ? ("cat" | "category") then OUTPUT := "matched" else OUTPUT := "no match"
if "category" ? ("cat" | "category") then OUTPUT := "matched" else OUTPUT := "no match"
end
#------------------------------------------------------------- 126 alt_replace_2
function main()
if "banana" ? ("apple" | "banana" | "cherry") then OUTPUT := "matched" else OUTPUT := "no match"
if "kiwi" ? ("apple" | "banana" | "cherry") then OUTPUT := "matched" else OUTPUT := "no match"
end
#---------------------------------------------------------------- 127 indirect_1
function main()
  x := $y
  z := $"name"
end
#----------------------------------------------------------------- 128 keyword_1
function main()
    &FULLSCAN := 1
    &ANCHOR := 0
end
#--------------------------------------------------------- 129 assign_aug_concat
function main()
x := "ab"
x ||:= "cd"
OUTPUT := x
end
#--------------------------------------------------------------------- 130 alt_1
function main()
  x +:= 1
  y -:= 2
  z ||:= "hi"
  a :=: b
end
#----------------------------------------------------------- 131 array_replace_1
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
#------------------------------------------------------------- 132 len_capture_2
function main()
"hello world" ? (LEN(5) . w)
OUTPUT := w
end
#------------------------------------------------------- 133 break_rem_capture_1
function main()
"key=value" ? (BREAK("=") . k & "=" & REM . v)
OUTPUT := k
OUTPUT := v
end
#------------------------------------------------------- 134 break_rem_capture_2
function main()
s := "key=value"
s ? (BREAK("=") . k & "=" & REM . v) <- (k & ":" & v)
OUTPUT := s
end
#----------------------------------------------------------- 135 arb_break_rem_1
function main()
"foo(bar)baz" ? (BREAK("(") . pre & "(" & ARB . inner & ")" & REM . post)
OUTPUT := pre
OUTPUT := inner
OUTPUT := post
end
#---------------------------------------------------- 136 simple_output_25 XFAIL
record point(x, y)

function main()
OUTPUT := "before"
OUTPUT := x(5)
end
#------------------------------------------------------- 137 alt_replace_3 XFAIL
function main()
OUTPUT := "before"
if (1 | 2 | 3) = 2 then OUTPUT := "matched"
end
#--------------------------------------------------------------- 138 len_1 XFAIL
function main()
OUTPUT := "before"
s := "hello"
s ? LEN("abc") <- "X"
OUTPUT := s
end
#------------------------------------------------------- 139 len_capture_1 XFAIL
function main()
OUTPUT := "before"
"hello" ? (LEN("abc") . w)
OUTPUT := w
end
