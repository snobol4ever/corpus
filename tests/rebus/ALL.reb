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
#----------------------------------------------------------- 72 simple_output_13
function main()
x := 7
OUTPUT := x
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
#------------------------------------------------------------ 84 assign_exchange
function main()
OUTPUT := "before"
x := 1
y := 2
x :=: y
OUTPUT := x
OUTPUT := y
end
#----------------------------------------------------------- 90 simple_output_16
function main()
x := 1
if x = 1 then {
OUTPUT := "yes"
}
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
#---------------------------------------------------------- 106 simple_output_22
function try(n)
if n > 0 then return n
fail
end

function main()
if try(5) then OUTPUT := "yes" else OUTPUT := "no"
if try(-1) then OUTPUT := "yes" else OUTPUT := "no"
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
#--------------------------------------------------------- 129 assign_aug_concat
function main()
x := "ab"
x ||:= "cd"
OUTPUT := x
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
