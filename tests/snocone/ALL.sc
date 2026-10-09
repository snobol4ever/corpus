/*------------------------------------------------------- 1 simple_output_153 */
OUTPUT = 'hello world';
/*------------------------------------------------------- 2 simple_output_173 */
for (i = 0; LT(i, 4); i = i + 1) { OUTPUT = i; }
/*------------------------------------------------------- 3 simple_output_174 */
OUTPUT = 'hello world';
/*------------------------------------------------------- 4 simple_output_176 */
OUTPUT = 2 + 3;
/*------------------------------------------------------- 5 simple_output_177 */
OUTPUT = 20 / 4;
/*------------------------------------------------------- 6 simple_output_178 */
OUTPUT = 6 * 7;
/*------------------------------------------------------- 7 simple_output_179 */
OUTPUT = 2 ^ 10;
/*------------------------------------------------------- 8 simple_output_180 */
OUTPUT = 2 + 3 * 4;
/*------------------------------------------------------- 9 simple_output_181 */
OUTPUT = 2 ^ 3 ^ 2;
/*------------------------------------------------------ 10 simple_output_182 */
OUTPUT = 10 - 4;
/*------------------------------------------------------ 11 simple_output_187 */
OUTPUT = REVERSE('abc');
/*------------------------------------------------------ 12 simple_output_188 */
OUTPUT = SUBSTR('abcdef', 2, 3);
/*------------------------------------------------------ 13 simple_output_189 */
OUTPUT = DIFFER('x', 'y') 'yes';
/*------------------------------------------------------ 14 simple_output_191 */
OUTPUT = IDENT('x', 'x') 'yes';
/*------------------------------------------------------ 15 simple_output_192 */
OUTPUT = LEQ('ab', 'ab') 'yes';
/*------------------------------------------------------ 16 simple_output_193 */
OUTPUT = LGT('b', 'a') 'yes';
/*------------------------------------------------------ 17 simple_output_194 */
OUTPUT = LLT('ab', 'ac') 'yes';
/*------------------------------------------------------ 18 simple_output_195 */
OUTPUT = LNE('a', 'b') 'yes';
/*------------------------------------------------------ 19 simple_output_196 */
OUTPUT = EQ(4, 4) 'yes';
/*------------------------------------------------------ 20 simple_output_197 */
OUTPUT = GE(5, 5) 'yes';
/*------------------------------------------------------ 21 simple_output_198 */
OUTPUT = GT(5, 3) 'yes';
/*------------------------------------------------------ 22 simple_output_199 */
OUTPUT = LE(3, 3) 'yes';
/*------------------------------------------------------ 23 simple_output_200 */
OUTPUT = LT(3, 5) 'yes';
/*------------------------------------------------------ 24 simple_output_201 */
OUTPUT = NE(3, 4) 'yes';
/*------------------------------------------------------ 25 simple_output_208 */
OUTPUT = 42;
/*------------------------------------------------------ 26 simple_output_209 */
OUTPUT = 3.5;
/*------------------------------------------------------ 27 simple_output_210 */
OUTPUT = "double";
/*------------------------------------------------------ 28 simple_output_211 */
OUTPUT = 'single';
/*------------------------------------------------------- 29 simple_output_88 */
OUTPUT = "hello"   " "   "world";
/*--------------------------------- 30 ladder__rung24_output_associated_write */
OUTPUT = 'first write to the predefined OUTPUT association';
OUTPUT = 'second write, same association, output accumulates by line';
/*------------------------------------------------------- 31 simple_output_10 */
// A01_empty_string.sc — output of empty string produces blank line
OUTPUT = '';
/*------------------------------------------------------ 32 simple_output_104 */
i = 2; j = 3;
OUTPUT = (LT(i, j) 'first', GT(i, j) 'second', 'third');
/*------------------------------------------------------- 33 simple_output_11 */
// A01_hello.sc — minimal output test
OUTPUT = 'hello world';
/*------------------------------------------------------- 34 simple_output_12 */
// A01_integer.sc — output integer literal
OUTPUT = 42;
/*------------------------------------------------------ 35 simple_output_134 */
// empty_string.sc - Output of null string produces blank line.
OUTPUT = '';
/*------------------------------------------------------ 36 simple_output_135 */
// hello.sc - Minimal output test.
OUTPUT = 'hello world';
/*------------------------------------------------------ 37 simple_output_137 */
// 001 - Output a string literal
OUTPUT = 'hello world';
/*------------------------------------------------------ 38 simple_output_138 */
// 002 - Output an integer literal
OUTPUT = 42;
/*------------------------------------------------------ 39 simple_output_139 */
// 003 - Output a real literal
OUTPUT = 3.14;
/*------------------------------------------------------- 40 simple_output_14 */
// A01_real.sc — output real literal
OUTPUT = 3.14;
/*------------------------------------------------------ 41 simple_output_140 */
// 004 - Output empty string produces blank line
OUTPUT = '';
/*------------------------------------------------------ 42 simple_output_142 */
// 007 - Uninitialized variable outputs empty line
OUTPUT = x;
/*------------------------------------------------------ 43 simple_output_143 */
// 008 - Double-quoted string literal
OUTPUT = "hello world";
/*------------------------------------------------------ 44 simple_output_154 */
x = 42;
OUTPUT = x;
/*------------------------------------------------------ 45 simple_output_157 */
OUTPUT = LT(5, 3) 'should-not-print';
OUTPUT = 'after';
/*------------------------------------------------------ 46 simple_output_165 */
greet: OUTPUT = 'first';
OUTPUT = 'second';
/*------------------------------------------------------ 47 simple_output_169 */
x = 2;
if (GT(x, 3)) { OUTPUT = 'big'; } else { OUTPUT = 'small'; }
/*------------------------------------------------------ 48 simple_output_170 */
x = 5;
if (EQ(x, 1)) { OUTPUT = 'one'; } else if (EQ(x, 5)) { OUTPUT = 'five'; } else { OUTPUT = 'other'; }
/*------------------------------------------------------ 49 simple_output_171 */
i = 1;
while (LE(i, 5)) { OUTPUT = i; i = i + 1; }
/*------------------------------------------------------ 50 simple_output_175 */
x = 42;
OUTPUT = x;
/*------------------------------------------------------ 51 simple_output_184 */
s = 'hello';
OUTPUT = (s ? 'hel') 'X';
/*------------------------------------------------------ 52 simple_output_190 */
OUTPUT = LT(5, 3) 'should-not-print';
OUTPUT = 'after';
/*------------------------------------------------------- 53 simple_output_20 */
// A03_add.sc — integer addition
OUTPUT = 1 + 2;
/*------------------------------------------------------ 54 simple_output_205 */
/* a block comment */
OUTPUT = 'after-block-comment';
/*------------------------------------------------------ 55 simple_output_206 */
// a line comment
OUTPUT = 'after-line-comment';
/*------------------------------------------------------- 56 simple_output_21 */
// A03_divide.sc — real division
OUTPUT = 10 / 4;
/*------------------------------------------------------- 57 simple_output_22 */
// A03_exponent.sc — exponentiation (^ operator in Snocone)
OUTPUT = 2 ^ 8;
/*------------------------------------------------------ 58 simple_output_229 */
i = 5; j = 3;
OUTPUT = (LT(i, j) 'first', GT(i, j) 'second', 'third');
/*------------------------------------------------------- 59 simple_output_23 */
// A03_multiply.sc — integer multiplication
OUTPUT = 6 * 7;
/*------------------------------------------------------ 60 simple_output_230 */
i = 3; j = 3;
OUTPUT = (LT(i, j) 'first', GT(i, j) 'second', 'third');
/*------------------------------------------------------- 61 simple_output_24 */
// A03_subtract.sc — integer subtraction
OUTPUT = 10 - 3;
/*------------------------------------------------------- 62 simple_output_26 */
// A04_concat_int.sc — concatenate integer and string
OUTPUT = 42   ' items';
/*------------------------------------------------------- 63 simple_output_27 */
// A04_concat_three.sc — concatenate three string literals
OUTPUT = 'a'   'b'   'c';
/*------------------------------------------------------- 64 simple_output_28 */
// A04_concat_two.sc — concatenate two string literals
OUTPUT = 'hello'   ' world';
/*------------------------------------------------------- 65 simple_output_32 */
// A06_substr.sc — SUBSTR extracts substring
OUTPUT = SUBSTR('hello world', 7, 5);
/*------------------------------------------------------- 66 simple_output_39 */
// A08_lpad.sc — LPAD pads string on left
OUTPUT = LPAD('hi', 6);
/*------------------------------------------------------- 67 simple_output_59 */
// empty_string.sc - Output of null string produces blank line.
OUTPUT = '';
/*------------------------------------------------------- 68 simple_output_60 */
// hello.sc - Minimal output test.
OUTPUT = 'hello world';
/*------------------------------------------------------- 69 simple_output_62 */
// 001 - Output a string literal
OUTPUT = 'hello world';
/*------------------------------------------------------- 70 simple_output_63 */
// 002 - Output an integer literal
OUTPUT = 42;
/*------------------------------------------------------- 71 simple_output_64 */
// 003 - Output a real literal
OUTPUT = 3.14;
/*------------------------------------------------------- 72 simple_output_65 */
// 004 - Output empty string produces blank line
OUTPUT = '';
/*------------------------------------------------------- 73 simple_output_67 */
// 007 - Uninitialized variable outputs empty line
OUTPUT = x;
/*------------------------------------------------------- 74 simple_output_68 */
// 008 - Double-quoted string literal
OUTPUT = "hello world";
/*------------------------------------------------------ 75 simple_output_127 */
// 009 - Assign string to variable, output it
x = 'hello';
OUTPUT = x;
/*------------------------------------------------------ 76 simple_output_128 */
// 010 - Assign integer to variable, output it
n = 42;
OUTPUT = n;
/*------------------------------------------------------ 77 simple_output_132 */
// 014 - Indirect assignment via dollar
$'x' = 'hello';
OUTPUT = x;
/*------------------------------------------------------ 78 simple_output_133 */
// 016 - Direct assignment to OUTPUT special variable
OUTPUT = 'alpha';
OUTPUT = 'beta';
/*------------------------------------------------------ 79 simple_output_156 */
a = 'foo';
b = 'bar';
OUTPUT = a b;
/*------------------------------------------------------ 80 simple_output_159 */
OUTPUT = 42;
OUTPUT = 'hello';
OUTPUT = "world";
/*------------------------------------------------------- 81 simple_output_16 */
// A02_assign_integer.sc — assign integer to variable, output it
n = 42;
OUTPUT = n;
/*------------------------------------------------------ 82 simple_output_162 */
x = 5;
OUTPUT = -x;
OUTPUT = -x + 10;
/*------------------------------------------------------ 83 simple_output_167 */
OUTPUT = 'before end';
goto END;
OUTPUT = 'never printed';
/*------------------------------------------------------ 84 simple_output_168 */
x = 5;
if (GT(x, 3)) { OUTPUT = 'big'; }
OUTPUT = 'done';
/*------------------------------------------------------ 85 simple_output_186 */
a = 'foo';
b = 'bar';
OUTPUT = a b;
/*------------------------------------------------------- 86 simple_output_19 */
// A02_assign_string.sc — assign string to variable, output it
x = 'hello';
OUTPUT = x;
/*-------------------------------------------------------- 87 simple_output_2 */
OUTPUT = 'hello';
OUTPUT = 'world';
OUTPUT = 42;
/*------------------------------------------------------ 88 simple_output_202 */
struct point { x, y }
p = point(3, 4);
OUTPUT = x(p);
/*------------------------------------------------------ 89 simple_output_203 */
struct pt2 { a, b }
q = pt2(7, 8);
OUTPUT = b(q);
/*------------------------------------------------------ 90 simple_output_213 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: while+continue over LT(i,5) skipping EQ(i,3); twin is the idiomatic SPITBOL goto form with a BARE trailing FIN label before END (rung13's proven side-effect-free fallback -- a trailing OUTPUT='' would emit a spurious blank line the .sc program does not) */
i = 0;
while (LT(i, 5)) { i = i + 1; if (EQ(i, 3)) { continue; } OUTPUT = i; }
/*------------------------------------------------------ 91 simple_output_221 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: factorial of 5 by self-call, report.md:730 'Procedures are recursive.' The twin branches to a base-case label when the predicate succeeds and falls through to the recursive arm otherwise. NOTE: this prose names the transfer operators instead of spelling them, because a twin comment is absorbed INTO the graded block and IS scanned by the feature-flag deriver. */
function fact(n) { if (LE(n, 1)) { fact = 1; return; } fact = n * fact(n - 1); return; }
OUTPUT = fact(5);
/*------------------------------------------------------ 92 simple_output_222 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: report.md:697-699, 'If a procedure is called with too few arguments, extra null strings are supplied as necessary.' The brackets around each parameter are load-bearing: without them a missing argument and an empty one are indistinguishable in the output. */
function f(x, y) { f = '[' x ']' '[' y ']'; return; }
OUTPUT = f('one');
/*------------------------------------------------------ 93 simple_output_223 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: report.md:700-701, 'If called with too many arguments, the extras are quietly ignored.' Two extra arguments are passed and only the first is used; 'quietly' is graded as much as 'ignored', since a diagnostic on the extras would move rc or stderr and red this witness. */
function f(x) { f = x; return; }
OUTPUT = f('a', 'b', 'c');
/*------------------------------------------------------- 94 simple_output_25 */
// A04_concat_assign.sc — concat on right side of assignment
x = 'foo'   'bar';
OUTPUT = x;
/*------------------------------------------------------- 95 simple_output_29 */
// A04_concat_var.sc — concatenate variable with string literal
x = 'hello';
OUTPUT = x   ' world';
/*------------------------------------------------------- 96 simple_output_52 */
// 009 - Assign string to variable, output it
x = 'hello';
OUTPUT = x;
/*------------------------------------------------------- 97 simple_output_53 */
// 010 - Assign integer to variable, output it
n = 42;
OUTPUT = n;
/*------------------------------------------------------- 98 simple_output_57 */
// 014 - Indirect assignment via dollar
$'x' = 'hello';
OUTPUT = x;
/*------------------------------------------------------- 99 simple_output_58 */
// 016 - Direct assignment to OUTPUT special variable
OUTPUT = 'alpha';
OUTPUT = 'beta';
/*------------------------------------------------------ 100 simple_output_91 */
N = 42;
OUTPUT = "value="   N;
OUTPUT = N   " things";
/*----------------------------------------------------- 101 simple_output_100 */
// B07_minus_assign: x -= n subtracts n from x
x = 20;
x -= 7;
OUTPUT = x;
/*----------------------------------------------------- 102 simple_output_101 */
// B07_plus_assign: x += n adds n to x
x = 10;
x += 5;
OUTPUT = x;
/*----------------------------------------------------- 103 simple_output_102 */
// B07_slash_assign: x /= n divides x by n
x = 100;
x /= 4;
OUTPUT = x;
/*----------------------------------------------------- 104 simple_output_103 */
// B07_star_assign: x *= n multiplies x by n
x = 6;
x *= 7;
OUTPUT = x;
/*----------------------------------------------------- 105 simple_output_122 */
// B11_comment_line: // comments are stripped before tokenisation
x = 42; // this is ignored
// entire line comment
OUTPUT = x; // trailing comment
/*----------------------------------------------------- 106 simple_output_129 */
// 011 - Chain assignment x=a, y=x, output y
x = 'alpha';
y = x;
OUTPUT = y;
/*------------------------------------------------------ 107 simple_output_13 */
// A01_multi.sc — multiple sequential output statements
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*----------------------------------------------------- 108 simple_output_130 */
// 012 - Assign null (empty right side)
x = 'something';
x = '';
OUTPUT = x;
/*----------------------------------------------------- 109 simple_output_131 */
// 013 - Overwrite variable, output second value
x = 'first';
x = 'second';
OUTPUT = x;
/*----------------------------------------------------- 110 simple_output_136 */
// multi.sc - Multiple sequential output statements.
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*----------------------------------------------------- 111 simple_output_141 */
// 005 - Multiple output statements produce multiple lines
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*------------------------------------------------------ 112 simple_output_15 */
// A02_assign_chain.sc — chain assignment x=a, y=x, output y
x = 'alpha';
y = x;
OUTPUT = y;
/*----------------------------------------------------- 113 simple_output_155 */
OUTPUT = 2 + 3;
OUTPUT = 10 - 4;
OUTPUT = 6 * 7;
OUTPUT = 20 / 4;
/*----------------------------------------------------- 114 simple_output_160 */
// leading line comment, produces no output
OUTPUT = 'before'; // trailing comment
/* a block comment */
OUTPUT = 'after';
/*----------------------------------------------------- 115 simple_output_161 */
x = 1;
X = 2;
OUTPUT = x;
OUTPUT = X;
/*------------------------------------------------------ 116 simple_output_17 */
// A02_assign_null.sc — assign null, output blank line
x = 'something';
x =;
OUTPUT = x;
/*----------------------------------------------------- 117 simple_output_172 */
i = 1;
do { OUTPUT = i; i = i + 1; } while (LE(i, 3));
i = 10;
do { OUTPUT = 'once'; } while (LT(i, 0));
/*------------------------------------------------------ 118 simple_output_18 */
// A02_assign_overwrite.sc — overwrite variable, output second value
x = 'first';
x = 'second';
OUTPUT = x;
/*----------------------------------------------------- 119 simple_output_204 */
struct pt3 { m, n }
r = pt3(1, 2);
m(r) = 99;
OUTPUT = m(r);
/*----------------------------------------------------- 120 simple_output_207 */
x = 1;
X = 2;
OUTPUT = x;
OUTPUT = X;
/*----------------------------------------------------- 121 simple_output_212 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: while+break over LT(i,10) with EQ(i,4) exit; twin is the idiomatic SPITBOL goto form (FIN label shares its line with the real OUTPUT='done' statement, per rung12/13 D5 fallback) */
i = 0;
while (LT(i, 10)) { i = i + 1; if (EQ(i, 4)) { break; } OUTPUT = i; }
OUTPUT = 'done';
/*----------------------------------------------------- 122 simple_output_216 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: a two-argument procedure whose result is delivered by assigning to the procedure's own name, called twice so the result cannot be a one-shot constant. The twin is the idiomatic SPITBOL declaration with a BARE trailing FIN label before END (rung13's proven side-effect-free fallback -- a trailing empty assignment would emit a blank line the .sc program does not). */
function add(a, b) { add = a + b; return; }
OUTPUT = add(3, 4);
OUTPUT = add(10, 20);
/*----------------------------------------------------- 123 simple_output_219 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: a procedure returning a NAME, so the call itself is an assignment target and storing through it writes the named variable. The prior-art ladder/prog/fn_nreturn.sc put an indirection operator in FRONT of that call and was carried for months as known bug D7; SPITBOL itself raises ERROR 239 on that shape, so D7 was a faulty test and never a scrip defect -- the call is already a name, and indirecting a name again is the error. */
function mkname() { mkname = .target; nreturn; }
mkname() = 'stored';
OUTPUT = target;
/*----------------------------------------------------- 124 simple_output_225 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SPITBOL has no augmented assignment; the twin is the desugaring x = x - e. OPERAND ORDER is what this ref grades: 10 reduced by 3 is 7, where the reversed reading would give -7, so a lowering that swapped the operands could not pass this ref even though it would still look like subtraction. */
x = 10;
x -= 3;
OUTPUT = x;
/*----------------------------------------------------- 125 simple_output_226 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SPITBOL has no augmented assignment; the twin is the desugaring x = x * e. Multiplication is commutative so operand order cannot be graded here, and what the ref distinguishes is the OPERATOR itself: on this input the five augmented forms give 20, 12, 8, 5 and 100 respectively, no two alike, so 20 can only be produced by multiplication. */
x = 10;
x *= 2;
OUTPUT = x;
/*----------------------------------------------------- 126 simple_output_227 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SPITBOL has no augmented assignment; the twin is the desugaring x = x / e. Two properties in one ref. Operand order (10 divided by 4 is 2, where the reversed reading gives 0) and INTEGER TRUNCATION (2, not 2.5) -- division here is integer division, so a lowering that promoted to a real would print 2.5 and red. The inputs were chosen so the quotient is inexact; an exact one would have graded neither property. */
x = 10;
x /= 4;
OUTPUT = x;
/*----------------------------------------------------- 127 simple_output_228 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SPITBOL has no augmented assignment; the twin is the desugaring x = x ^ e. Operand order is the whole point: 3 raised to 2 is 9 where the reversed reading gives 8, and those are precisely the two answers a wrong lowering would choose between. That SPITBOL accepts the same caret spelling as this dialect was verified directly against the oracle rather than assumed. */
x = 3;
x ^= 2;
OUTPUT = x;
/*----------------------------------------------------- 128 simple_output_231 */
i = 3; j = 3;
x = 'untouched';
x = (LT(i, j) 'first', GT(i, j) 'second');
OUTPUT = x;
/*------------------------------------------------------ 129 simple_output_42 */
// A10_capture_delete.sc — replace match with empty (deletion)
x = 'hello world';
x ? ' world' = '';
OUTPUT = x;
/*------------------------------------------------------ 130 simple_output_43 */
// A10_capture_replace.sc — pattern replacement (subject pat = replacement)
x = 'hello world';
x ? 'world' = 'there';
OUTPUT = x;
/*------------------------------------------------------ 131 simple_output_54 */
// 011 - Chain assignment x=a, y=x, output y
x = 'alpha';
y = x;
OUTPUT = y;
/*------------------------------------------------------ 132 simple_output_55 */
// 012 - Assign null (empty right side)
x = 'something';
x = '';
OUTPUT = x;
/*------------------------------------------------------ 133 simple_output_56 */
// 013 - Overwrite variable, output second value
x = 'first';
x = 'second';
OUTPUT = x;
/*------------------------------------------------------ 134 simple_output_61 */
// multi.sc - Multiple sequential output statements.
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*------------------------------------------------------ 135 simple_output_66 */
// 005 - Multiple output statements produce multiple lines
OUTPUT = 'line one';
OUTPUT = 'line two';
OUTPUT = 'line three';
/*------------------------------------------------------ 136 simple_output_81 */
// B03_for_basic.sc — basic for loop counts 1 to 3
for (i = 1; LE(i, 3); i = i + 1) {
    OUTPUT = i;
}
/*------------------------------------------------------ 137 simple_output_87 */
FIRST = "Hello";
LAST = "World";
FULL = FIRST   ", "   LAST   "!";
OUTPUT = FULL;
/*------------------------------------------------------ 138 simple_output_89 */
A = "foo";
B = "bar";
C = "baz";
OUTPUT = A   "-"   B   "-"   C;
/*------------------------------------------------------ 139 simple_output_90 */
X = "hello";
OUTPUT = ""   X;
OUTPUT = X   "";
OUTPUT = ""   "";
/*------------------------------------------------------ 140 simple_output_98 */
// B07_caret_assign: x ^= n raises x to power n
x = 3;
x ^= 4;
OUTPUT = x;
/*----------------------------------------------------- 141 simple_output_105 */
// B08_struct_basic: define struct, create instance, access fields
struct point { x, y }
p = point(3, 4);
OUTPUT = x(p);
OUTPUT = y(p);
/*----------------------------------------------------- 142 simple_output_163 */
count = 0;
count = ?(LT(2, 9)) count + 1;
OUTPUT = count;
count = ?(LT(9, 2)) count + 1;
OUTPUT = count;
/*----------------------------------------------------- 143 simple_output_166 */
n = 3;
loop: OUTPUT = n;
n = n - 1;
if (LT(0, n)) { goto loop; }
OUTPUT = 'done';
/*----------------------------------------------------- 144 simple_output_183 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SPITBOL has no chained assignment, so the twin is three separate assignments producing identical output */
a = b = c = 7;
OUTPUT = a;
OUTPUT = b;
OUTPUT = c;
/*----------------------------------------------------- 145 simple_output_185 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SNOBOL4 has no if-block, so the twin expresses the same branch with a goto label; the guarded assignment and the printed result are identical */
s = 'hello';
r = 'no';
if (s ? 'ell') { r = 'yes'; }
OUTPUT = r;
/*------------------------------------------------------ 146 simple_output_30 */
// A05_data_define.sc — DATA type: define, create, access fields
DATA('complex(real,imag)');
x = complex(3, -2);
OUTPUT = real(x);
OUTPUT = imag(x);
/*------------------------------------------------------ 147 simple_output_40 */
// A09_lexical.sc — Lexical string comparison builtins
if (LGT('b', 'a')) { OUTPUT = 'b > a'; }
if (LLT('a', 'b')) { OUTPUT = 'a < b'; }
if (LEQ('cat', 'cat')) { OUTPUT = 'cat = cat'; }
if (LNE('cat', 'dog')) { OUTPUT = 'cat != dog'; }
/*------------------------------------------------------ 148 simple_output_41 */
// A10_capture_conditional.sc — match succeeds, output result
x = 'hello';
if (x ? 'hello') {
    OUTPUT = 'found';
}
/*------------------------------------------------------ 149 simple_output_45 */
// A13_define_entry_label.sc — procedure with explicit name (bumpit)
function bumpit(v) {
    return v + 1;
}
OUTPUT = bumpit(41);
/*------------------------------------------------------- 150 simple_output_6 */
i = 1;
while (LE(i, 5)) {
    OUTPUT = i;
    i = i + 1;
}
/*------------------------------------------------------ 151 simple_output_73 */
// B01_if_true.sc — if condition true: body executes
x = 1;
if (EQ(x, 1)) {
    OUTPUT = 'yes';
}
/*------------------------------------------------------ 152 simple_output_84 */
// B03_for_false.sc — for condition false on entry: body skipped
for (i = 5; LE(i, 3); i = ADD(i, 1)) {
    OUTPUT = 'should not print';
}
OUTPUT = 'done';
/*------------------------------------------------------ 153 simple_output_86 */
// B03_for_step_expr.sc — step expression contains a parenthesized sub-expression
for (i = 1; LE(i, 3); i = (i + 1)) {
    OUTPUT = i;
}
OUTPUT = 'end';
/*------------------------------------------------------ 154 simple_output_93 */
// B06_not_fail_succeeds: ~expr when expr fails → condition true
x = "";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
}
/*----------------------------------------------------- 155 simple_output_121 */
/* B11_comment_block: block comments are stripped in pre-pass */
x = /* inline block */ 99;
/* multi
   line
   block */
OUTPUT = x;
/*----------------------------------------------------- 156 simple_output_158 */
struct point { x, y }
p = point(3, 4);
OUTPUT = x(p);
OUTPUT = y(p);
x(p) = 99;
OUTPUT = x(p);
/*----------------------------------------------------- 157 simple_output_164 */
x = 'before';
x = ~LT(9, 2) 'changed';
OUTPUT = x;
y = 'before2';
y = ~LT(2, 9) 'changed2';
OUTPUT = y;
/*----------------------------------------------------- 158 simple_output_217 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: report.md:707-716's OWN worked example, which the paper states prints 5 and then 1. A nominated local is saved and nulled on entry and restored on return, so the callee g sees the local 5 while f is active and the restored global 1 afterwards -- dynamic scoping, graded by observing it from a SECOND procedure rather than from f itself. The twin nominates the same local after the closing parenthesis of the prototype, which is where SPITBOL has always taken them. */
a = 1;
function f() a { a = 5; g(); return; }
function g() { OUTPUT = a; return; }
f();
g();
/*----------------------------------------------------- 159 simple_output_218 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: a procedure that succeeds for a positive argument and fails otherwise. The failing call must NOT overwrite x, which keeps 'untouched' -- that is the load-bearing part, proving the failure propagated out to the assignment rather than the call merely returning an empty result. The twin reaches the reserved fail-return label when its predicate fails. */
function pick(n) { if (GT(n, 0)) { pick = 'pos'; return; } freturn; }
OUTPUT = pick(5);
x = 'untouched';
x = pick(-1);
OUTPUT = x;
/*----------------------------------------------------- 160 simple_output_224 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SPITBOL has no augmented assignment, so the twin is the desugaring this dialect declares, x = x + e, and a disagreement would have been a real red rather than a ref to adjust. It is applied TWICE on purpose: one application proves only that something was added, while two prove the variable is UPDATED IN PLACE and accumulates (15 then 20) instead of being recomputed from its initial value each time. */
x = 10;
x += 5;
OUTPUT = x;
x += 5;
OUTPUT = x;
/*------------------------------------------------------- 161 simple_output_3 */
x = 'hello';
y = 42;
OUTPUT = x;
OUTPUT = y;
z = x;
OUTPUT = z;
/*------------------------------------------------------ 162 simple_output_33 */
// A07_differ.sc — DIFFER succeeds when strings differ
if (DIFFER('abc', 'xyz')) {
    OUTPUT = 'different';
} else {
    OUTPUT = 'same';
}
/*------------------------------------------------------ 163 simple_output_49 */
// A13_define_simple_return.sc — simple function: double a number
function double(s) {
    return 2 * s;
}
OUTPUT = double(5);
OUTPUT = double(21);
/*------------------------------------------------------- 164 simple_output_5 */
x = 10;
if (GT(x, 5)) OUTPUT = 'big'; else OUTPUT = 'small';
if (LT(x, 5)) OUTPUT = 'small'; else OUTPUT = 'big';
y = 3;
if (EQ(y, 3)) OUTPUT = 'three';
if (EQ(y, 4)) OUTPUT = 'four'; else OUTPUT = 'not four';
/*------------------------------------------------------ 165 simple_output_50 */
// A13_define_two_args.sc — function with two arguments
function add(a, b) {
    return a + b;
}
OUTPUT = add(3, 4);
OUTPUT = add(10, 32);
/*------------------------------------------------------ 166 simple_output_72 */
// B01_if_false.sc — if condition false: body skipped
x = 2;
if (EQ(x, 1)) {
    OUTPUT = 'yes';
}
OUTPUT = 'done';
/*------------------------------------------------------ 167 simple_output_75 */
// B02_do_while.sc — do-while body executes at least once even if condition false
i = 5;
do {
    OUTPUT = 'ran';
    i = i + 1;
} while (LE(i, 3));
/*------------------------------------------------------ 168 simple_output_77 */
// B02_while_basic.sc — while loop runs expected number of times
i = 1;
while (LE(i, 3)) {
    OUTPUT = i;
    i = i + 1;
}
/*------------------------------------------------------ 169 simple_output_80 */
// B02_while_false.sc — while condition false on entry: body skipped
i = 5;
while (LE(i, 3)) {
    OUTPUT = 'should not print';
}
OUTPUT = 'done';
/*------------------------------------------------------ 170 simple_output_99 */
// B07_compound_chain: multiple compound assigns in sequence
x = 2;
x += 3;
x *= 4;
x -= 2;
OUTPUT = x;
/*----------------------------------------------------- 171 simple_output_106 */
// B08_struct_field_set: assign to struct fields
struct rect { width, height }
r = rect(10, 5);
OUTPUT = width(r);
width(r) = 20;
OUTPUT = width(r);
OUTPUT = height(r);
/*----------------------------------------------------- 172 simple_output_126 */
// replacement conditional on a numeric comparison
x = 10;
s = "the answer";
if (EQ(x, 10)) {
    s ? "answer" = "question";
}
OUTPUT = s;
/*------------------------------------------------------ 173 simple_output_31 */
// A05_data_field_set.sc — DATA type: set field after creation
DATA('point(x,y)');
p = point(10, 20);
OUTPUT = x(p);
OUTPUT = y(p);
x(p) = 99;
OUTPUT = x(p);
/*------------------------------------------------------ 174 simple_output_44 */
// A12_pat_literal.sc — literal pattern match
x = 'hello world';
if (x ? 'hello') {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*------------------------------------------------------- 175 simple_output_7 */
sum = 0;
i = 1;
while (LE(i, 10)) {
    sum = sum + i;
    i = i + 1;
}
OUTPUT = sum;
/*------------------------------------------------------ 176 simple_output_70 */
// B01_if_else_false.sc — if/else: false branch taken
x = 'world';
if (IDENT(x, 'hello')) {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*------------------------------------------------------ 177 simple_output_71 */
// B01_if_else_true.sc — if/else: true branch taken
x = 'hello';
if (IDENT(x, 'hello')) {
    OUTPUT = 'matched';
} else {
    OUTPUT = 'no match';
}
/*------------------------------------------------------ 178 simple_output_83 */
// B03_for_continue.sc — continue skips rest of body; step still runs
for (i = 1; LE(i, 5); i = i + 1) {
    if (EQ(i, 3)) {
        continue;
    }
    OUTPUT = i;
}
/*------------------------------------------------------ 179 simple_output_94 */
// B06_not_query_combined: ~~x double negation — cancels out, takes true branch
x = "hello";
if (~~DIFFER(x, "")) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*------------------------------------------------------ 180 simple_output_95 */
// B06_not_succeed_fails: ~expr when expr succeeds → condition false
x = "hello";
if (~DIFFER(x, "")) {
    OUTPUT = "empty";
} else {
    OUTPUT = "not empty";
}
/*------------------------------------------------------ 181 simple_output_96 */
// B06_query_empty: ?x fails when x is empty
x = "";
if (?x) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*------------------------------------------------------ 182 simple_output_97 */
// B06_query_nonempty: ?x succeeds when x is non-empty (DIFFER from "")
x = "hello";
if (?x) {
    OUTPUT = "has value";
} else {
    OUTPUT = "no value";
}
/*----------------------------------------------------- 183 simple_output_107 */
// B08_struct_proc: struct created inside procedure
struct pair { first, second }
function make_pair(a, b) {
    return pair(a, b);
}
p = make_pair("hello", "world");
OUTPUT = first(p);
OUTPUT = second(p);
/*----------------------------------------------------- 184 simple_output_108 */
// B08_struct_two_types: two distinct struct types coexist
struct point { x, y }
struct interval { lo, hi }
p = point(3, 4);
iv = interval(1, 10);
OUTPUT = x(p);
OUTPUT = lo(iv);
OUTPUT = hi(iv);
/*----------------------------------------------------- 185 simple_output_123 */
// line comment at top
/* block at top */
a = 1; // trailing
b = /* mid-expr */ 2;
/* block
   spanning
   lines */
OUTPUT = a + b; // should print 3
/*----------------------------------------------------- 186 simple_output_215 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: switch(x) with x=9 matching NO case, so the default arm runs; same IDENT-chain lowering and same ESAC no-fall-through encoding as the switch_case form. Trailing OUTPUT='after' proves resumption after the switch. */
x = 9;
switch (x) {
  case 1: { OUTPUT = 'one'; }
  case 2: { OUTPUT = 'two'; }
  default: { OUTPUT = 'fell-through'; }
}
OUTPUT = 'after';
/*----------------------------------------------------- 187 simple_output_220 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: report.md:684-691's OWN flagship procedure example, gcd, written with the language's own `procedure` keyword. TWO DIALECT NOTES. (1) SCRIP's lexer once mapped only `function`, making `procedure` a hard parse error -- the Class A gap of FINDING-2026-09-03-seat12 -- and it is implemented now; this witness is what keeps it implemented. (2) Koenig's body spells the remainder operator, which this dialect REMOVED and reserves for operator synonyms, so the loop here is the subtractive gcd and needs no remainder at all. */
procedure gcd(m, n) {
  while (NE(m, n)) { if (GT(m, n)) { m = m - n; } else { n = n - m; } }
  gcd = m;
  return;
}
OUTPUT = gcd(9, 6);
OUTPUT = gcd(12, 18);
/*------------------------------------------------------- 188 simple_output_4 */
OUTPUT = 3 + 4;
OUTPUT = 10 - 3;
OUTPUT = 6 * 7;
OUTPUT = 20 / 4;
OUTPUT = 2 ^ 8;
x = 5;
OUTPUT = x + x;
OUTPUT = x * 3;
/*------------------------------------------------------- 189 simple_output_8 */
function square(n) {
    return n * n;
}
function cube(n) {
    return n * square(n);
}
OUTPUT = square(7);
OUTPUT = cube(3);
/*------------------------------------------------------ 190 simple_output_82 */
// B03_for_break.sc — break exits for loop early
for (i = 1; LE(i, 10); i = i + 1) {
    if (EQ(i, 4)) {
        break;
    }
    OUTPUT = i;
}
OUTPUT = 'done';
/*----------------------------------------------------- 191 simple_output_214 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: switch(x) with x=2 matching the MIDDLE of three cases plus a default. The twin is the IDENT-chain lowering ARCH-LANGUAGES.md:657 names, with every case arm jumping to the ESAC label to encode the 'no fall-through; implicit break at end of each case' rule at ARCH-LANGUAGES.md:629. The trailing OUTPUT='after' is load-bearing: it proves control resumes AFTER the switch and did not fall into default. NOTE: this prose deliberately avoids spelling the success-goto operator, because a twin-equivalence comment is absorbed into the graded block and IS scanned by the feature-flag deriver. */
x = 2;
switch (x) {
  case 1: { OUTPUT = 'one'; }
  case 2: { OUTPUT = 'two'; }
  case 3: { OUTPUT = 'three'; }
  default: { OUTPUT = 'other'; }
}
OUTPUT = 'after';
/*------------------------------------------------------ 192 simple_output_48 */
// A13_define_recursive_fib.sc — recursive Fibonacci
function fib(n) {
    if (LE(n, 1)) { return n; }
    return fib(n - 1) + fib(n - 2);
}
OUTPUT = fib(0);
OUTPUT = fib(1);
OUTPUT = fib(6);
OUTPUT = fib(10);
/*------------------------------------------------------ 193 simple_output_51 */
// A13_define_locals.sc — function with local variable
function swap(a, b) tmp {
    tmp = a;
    a = b;
    b = tmp;
    OUTPUT = a   ' '   b;
    return;
}
swap('hello', 'world');
/*------------------------------------------------------ 194 simple_output_85 */
// B03_for_nested_break.sc — break exits only innermost for loop
for (i = 1; LE(i, 3); i = i + 1) {
    for (j = 1; LE(j, 3); j = j + 1) {
        if (EQ(j, 2)) {
            break;
        }
        OUTPUT = i   '-'   j;
    }
}
/*----------------------------------------------------- 195 simple_output_145 */
// fibonacci.sc — recursive Fibonacci (SC-13)
procedure Fib(n) {
    if (LE(n, 1)) { Fib = n; return; }
    Fib = Fib(n - 1) + Fib(n - 2);
}
OUTPUT = Fib(0);
OUTPUT = Fib(1);
OUTPUT = Fib(2);
OUTPUT = Fib(5);
OUTPUT = Fib(10);
/*------------------------------------------------------ 196 simple_output_37 */
// A07_lt_le_ge.sc — LT, LE, GE comparisons
if (LT(3, 5)) {
    OUTPUT = '3 < 5';
}
if (LE(5, 5)) {
    OUTPUT = '5 <= 5';
}
if (GE(7, 5)) {
    OUTPUT = '7 >= 5';
}
/*------------------------------------------------------ 197 simple_output_78 */
// B02_while_break.sc — break exits while loop early
i = 1;
while (LE(i, 10)) {
    if (EQ(i, 3)) {
        break;
    }
    OUTPUT = i;
    i = i + 1;
}
OUTPUT = 'done';
/*------------------------------------------------------ 198 simple_output_79 */
// B02_while_continue.sc — continue skips rest of body; loop continues
i = 1;
while (LE(i, 5)) {
    if (EQ(i, 3)) {
        i = i + 1;
        continue;
    }
    OUTPUT = i;
    i = i + 1;
}
/*------------------------------------------------------- 199 simple_output_1 */
function count_down(n) {
    total = 0;
    i = n;
    while (GT(i, 0)) {
        total = total + i;
        i = i - 1;
    }
    return total;
}
OUTPUT = count_down(10);
OUTPUT = count_down(5);
/*------------------------------------------------------ 200 simple_output_34 */
// A07_gt.sc — GT numeric comparison
if (GT(5, 3)) {
    OUTPUT = '5 > 3';
} else {
    OUTPUT = 'wrong';
}
if (GT(3, 5)) {
    OUTPUT = 'wrong';
} else {
    OUTPUT = '3 not > 5';
}
/*------------------------------------------------------ 201 simple_output_35 */
// A07_ident.sc — IDENT succeeds when strings are equal
if (IDENT('abc', 'abc')) {
    OUTPUT = 'equal';
} else {
    OUTPUT = 'not equal';
}
if (IDENT('abc', 'xyz')) {
    OUTPUT = 'equal';
} else {
    OUTPUT = 'not equal';
}
/*------------------------------------------------------ 202 simple_output_36 */
// A07_integer_test.sc — INTEGER succeeds on numeric string, fails on alpha
if (INTEGER('42')) {
    OUTPUT = 'numeric';
} else {
    OUTPUT = 'not numeric';
}
if (INTEGER('abc')) {
    OUTPUT = 'numeric';
} else {
    OUTPUT = 'not numeric';
}
/*------------------------------------------------------ 203 simple_output_38 */
// A08_eq_ne.sc — EQ and NE numeric equality
if (EQ(42, 42)) {
    OUTPUT = '42 = 42';
} else {
    OUTPUT = 'wrong';
}
if (NE(42, 99)) {
    OUTPUT = '42 != 99';
} else {
    OUTPUT = 'wrong';
}
/*------------------------------------------------------ 204 simple_output_47 */
// A13_define_loop_call.sc — function called in loop, concat results
function bump(v) {
    return v + 1;
}
s = '';
j = 0;
while (LT(j, 5)) {
    s = s   bump(2 * j);
    j = j + 1;
}
OUTPUT = s;
/*------------------------------------------------------ 205 simple_output_74 */
// B01_nested_if.sc — nested if/else
x = 2;
if (EQ(x, 1)) {
    OUTPUT = 'one';
} else {
    if (EQ(x, 2)) {
        OUTPUT = 'two';
    } else {
        OUTPUT = 'other';
    }
}
/*----------------------------------------------------- 206 simple_output_149 */
// nested_while_in_function_multi_inner.sc -- regression witness, snocone-nested-while-in-function-segv.
// Same shape as nested_while_in_function.sc but the inner while runs 3 iterations per outer pass
// instead of 1, exercising the inner loop's own back-edge repeatedly before the outer-tail transition.
function S5(n, x, i, j, acc) {
    acc = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 3)) { acc = acc + j; j = j + 1; }
        i = i + 1; }
    S5 = acc; return;
}
OUTPUT = S5(4);
/*----------------------------------------------------- 207 simple_output_150 */
// nested_while_in_function_multistmt_tail.sc -- regression witness, snocone-nested-while-in-function-segv.
// Two statements (not one) follow the inner while inside the outer body, checking that only the
// first trailing statement needs its own fresh depth-planning head -- the second must chain from it.
function S5(n, x, i, j, y) {
    x = 0; i = 1; y = 0;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 1)) { x = x + 1; j = j + 1; }
        i = i + 1;
        y = y + 10; }
    S5 = x + y; return;
}
OUTPUT = S5(3);
/*------------------------------------------------------ 208 simple_output_76 */
// B02_nested_break.sc — break exits only innermost loop; outer continues
i = 1;
while (LE(i, 3)) {
    j = 1;
    while (LE(j, 3)) {
        if (EQ(j, 2)) {
            break;
        }
        OUTPUT = i   '-'   j;
        j = j + 1;
    }
    i = i + 1;
}
/*----------------------------------------------------- 209 simple_output_125 */
// use numeric comparison as pattern subject (EQ succeeds/fails as pattern)
a = 5;
b = 5;
if (EQ(a, b)) {
    OUTPUT = "match";
} else {
    OUTPUT = "no match";
}
c = 3;
if (EQ(a, c)) {
    OUTPUT = "match";
} else {
    OUTPUT = "no match";
}
/*------------------------------------------------------ 210 simple_output_46 */
// A13_define_freturn.sc — function fails via freturn, caller handles :F
function ispos(x) {
    if (GT(x, 0)) { return; } else { freturn; }
}
if (ispos(5)) {
    OUTPUT = 'positive';
} else {
    OUTPUT = 'wrong';
}
if (ispos(-3)) {
    OUTPUT = 'wrong';
} else {
    OUTPUT = 'not positive';
}
/*----------------------------------------------------- 211 simple_output_115 */
// B10_num_eq: EQ() succeeds when values are numerically equal
// (was "==" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 7;
b = 7;
if (EQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
a = 3;
if (EQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
/*----------------------------------------------------- 212 simple_output_117 */
// B10_num_gt: GT() succeeds when left > right
// (was ">" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 10;
b = 3;
if (GT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
a = 1;
if (GT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
/*----------------------------------------------------- 213 simple_output_119 */
// B10_num_lt: LT() succeeds when left < right
// (was "<" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 2;
b = 8;
if (LT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
a = 10;
if (LT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
/*----------------------------------------------------- 214 simple_output_120 */
// B10_num_ne: NE() succeeds when values differ
// (was "!=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 4;
b = 9;
if (NE(a, b)) {
    OUTPUT = "not equal";
} else {
    OUTPUT = "equal";
}
a = 9;
if (NE(a, b)) {
    OUTPUT = "not equal";
} else {
    OUTPUT = "equal";
}
/*----------------------------------------------------- 215 simple_output_109 */
// B09_str_eq: LEQ() succeeds when strings are lexicographically equal
// (was ":==:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "apple";
if (LEQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
a = "apple";
b = "banana";
if (LEQ(a, b)) {
    OUTPUT = "equal";
} else {
    OUTPUT = "not equal";
}
/*----------------------------------------------------- 216 simple_output_111 */
// B09_str_gt: LGT() succeeds when left > right lexicographically
// (was ":>:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "zebra";
b = "apple";
if (LGT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
a = "apple";
b = "zebra";
if (LGT(a, b)) {
    OUTPUT = "greater";
} else {
    OUTPUT = "not greater";
}
/*----------------------------------------------------- 217 simple_output_113 */
// B09_str_lt: LLT() succeeds when left < right lexicographically
// (was ":<:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LLT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
a = "banana";
b = "apple";
if (LLT(a, b)) {
    OUTPUT = "less";
} else {
    OUTPUT = "not less";
}
/*----------------------------------------------------- 218 simple_output_114 */
// B09_str_ne: LNE() succeeds when strings are not equal
// (was ":!=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LNE(a, b)) {
    OUTPUT = "different";
} else {
    OUTPUT = "same";
}
a = "same";
b = "same";
if (LNE(a, b)) {
    OUTPUT = "different";
} else {
    OUTPUT = "same";
}
/*----------------------------------------------------- 219 simple_output_146 */
// nested_while_in_function.sc -- PROBE, minimal repro.
// A `while` loop nested inside another `while` loop, both inside a Snocone
// FUNCTION body, SIGSEGVs on the function's own return/gamma-exit path in
// both --run and --compile (gdb: null-pointer dereference chasing a stale
// fixed-stack-offset continuation at S5_gamma+100, rcx=0 at the fault).
// The identical structure at TOP LEVEL (outside any function) does not
// crash -- see postoffice task snocone-nested-while-in-function-segv.
function S5(n, x, i, j) {
    x = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 1)) { x = j; j = j + 1; }
        i = i + 1; }
    S5 = x; return;
}
OUTPUT = S5(3);
/*------------------------------------------------------- 220 simple_output_9 */
function max(a, b) {
    if (GE(a, b)) return a;
    return b;
}
function min(a, b) {
    if (LE(a, b)) return a;
    return b;
}
function abs_val(n) {
    if (GE(n, 0)) return n;
    return 0 - n;
}
OUTPUT = max(3, 7);
OUTPUT = min(3, 7);
OUTPUT = abs_val(0 - 5);
OUTPUT = max(abs_val(0 - 3), abs_val(0 - 8));
/*----------------------------------------------------- 221 simple_output_148 */
// nested_while_in_function_3deep.sc -- KNOWN-OPEN witness, three levels of while nesting in a function.
// SIGSEGVs as of 2026-08-27 (task snocone-triple-nested-while-baseline-drift): the fix for the 2-level
// case (snocone-nested-while-in-function-segv) does not generalize -- a freshly-planned "trailing
// statement after a nested loop" run is unconditionally baselined at local depth 0, which is only
// correct when nothing that run reaches later needs a different, non-zero baseline. Do not expect
// this file to pass without that follow-up landing first.
function S5(n, x, i, j, k, acc) {
    acc = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        while (LT(j, 2)) {
            k = 0;
            while (LT(k, 2)) { acc = acc + 1; k = k + 1; }
            j = j + 1; }
        i = i + 1; }
    S5 = acc; return;
}
OUTPUT = S5(3);
/*----------------------------------------------------- 222 simple_output_147 */
// nested_while_in_function_1deep_control.sc -- CONTROL sibling for the SEGV probe
// in this same directory (nested_while_in_function.sc). Same function shape (S5(n,x,i,j),
// same body statements: j=0; x=j; j=j+1; i=i+1), but the inner `while(LT(j,1)) {...}` wrapper
// is removed -- the same three statements run unconditionally once per outer iteration instead
// of via a nested loop. This does NOT crash (both --run and --compile), confirming the defect
// is specifically about a `while` nested inside a `while` (not about the statements themselves,
// not about iteration count of a single loop -- this one iterates the SAME 3 outer times).
// Used for ASM-DIFF-FIRST: compiling both this file and the sibling .sc with --compile and
// diffing the emitted .s isolates exactly what a second level of loop nesting changes in the
// generated stack accounting. See postoffice task snocone-nested-while-in-function-segv
// for the full bisection trail and confirmed root-cause mechanism.
function S5(n, x, i, j) {
    x = 0; i = 1;
    while (LE(i, n)) {
        j = 0;
        x = j; j = j + 1;
        i = i + 1; }
    S5 = x; return;
}
OUTPUT = S5(3);
/*----------------------------------------------------- 223 simple_output_152 */
/* test_for.sc — for loop lowering test
 * Ref generated from equivalent SNOBOL4 under SPITBOL oracle.
 */

/* Test 1: count 1..5 */
for (i = 1; LE(i, 5); i = i + 1) {
    OUTPUT = i;
}

/* Test 2: count down 10..1 */
for (i = 10; GE(i, 1); i = i - 1) {
    OUTPUT = i;
}

/* Test 3: step by 2, sum 0+2+4+6+8 = 20 */
s = 0;
for (i = 0; LE(i, 8); i = i + 2) {
    s = s + i;
}
OUTPUT = s;
/*----------------------------------------------------- 224 simple_output_116 */
// B10_num_ge: GE() succeeds when left >= right
// (was ">=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 5;
b = 5;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = 8;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = 2;
if (GE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
/*----------------------------------------------------- 225 simple_output_118 */
// B10_num_le: LE() succeeds when left <= right
// (was "<=" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = 5;
b = 5;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = 3;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = 7;
if (LE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
/*----------------------------------------------------- 226 simple_output_110 */
// B09_str_ge: LGE() succeeds when left >= right lexicographically
// (was ":>=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "zebra";
b = "apple";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = "dog";
b = "dog";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
a = "apple";
b = "zebra";
if (LGE(a, b)) {
    OUTPUT = "ge";
} else {
    OUTPUT = "not ge";
}
/*----------------------------------------------------- 227 simple_output_112 */
// B09_str_le: LLE() succeeds when left <= right lexicographically
// (was ":<=:" sugar; removed 2026-08-24 pending Lon's ruling, see snocone-relop-parse-regression)
a = "apple";
b = "banana";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = "cat";
b = "cat";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
a = "zebra";
b = "apple";
if (LLE(a, b)) {
    OUTPUT = "le";
} else {
    OUTPUT = "not le";
}
/*----------------------------------------------------- 228 simple_output_144 */
// literals.sc - String and numeric literal coercion.
// Tests: null string, integer/real OUTPUT coercion, string concat,
//        arithmetic precedence, single- and double-quoted literals.
OUTPUT = '';
OUTPUT = "";
OUTPUT = "Hello World!";
OUTPUT = 0;
OUTPUT = 1;
OUTPUT = -1;
OUTPUT = 1.0;
OUTPUT = '1';
OUTPUT = '1';
OUTPUT = '1.0';
OUTPUT = "I'm here";
OUTPUT = '"Quote of the day"';
OUTPUT = '' + '';
OUTPUT = '' + 1;
OUTPUT = 1 + '';
OUTPUT = ('', '');
OUTPUT = ('', 'Z');
OUTPUT = ('A', '');
OUTPUT = ('A', 'Z');
OUTPUT = 1 + 2;
OUTPUT = 1 + 2 * 3;
OUTPUT = (1 + 2) * 3;
OUTPUT = 1 + (2 * 3);
/*------------------------------------------------------ 229 simple_output_69 */
// literals.sc - String and numeric literal coercion.
// Tests: null string, integer/real OUTPUT coercion, string concat,
//        arithmetic precedence, single- and double-quoted literals.
OUTPUT = '';
OUTPUT = "";
OUTPUT = "Hello World!";
OUTPUT = 0;
OUTPUT = 1;
OUTPUT = -1;
OUTPUT = 1.0;
OUTPUT = '1';
OUTPUT = '1';
OUTPUT = '1.0';
OUTPUT = "I'm here";
OUTPUT = '"Quote of the day"';
OUTPUT = '' + '';
OUTPUT = '' + 1;
OUTPUT = 1 + '';
OUTPUT = ('', '');
OUTPUT = ('', 'Z');
OUTPUT = ('A', '');
OUTPUT = ('A', 'Z');
OUTPUT = 1 + 2;
OUTPUT = 1 + 2 * 3;
OUTPUT = (1 + 2) * 3;
OUTPUT = 1 + (2 * 3);
/*----------------------------------------------------- 230 simple_output_151 */
/* test_break_return.sc — break / return / freturn / nreturn test (SC-6)
 *
 * Each construct is exercised inside a while-loop body, working around a
 * known pre-existing limitation where consecutive top-level OUTPUT statements
 * only emit the last value under --run.
 *
 * Ref: 1 2 3 14 12 "nreturn ok"
 */

/* Test 1: break stops loop at i=4 (prints 1, 2, 3) */
i = 1;
while (LE(i, 10)) {
    if (EQ(i, 4)) { break; }
    OUTPUT = i;
    i = i + 1;
}

/* Test 2: return with value — Double(7) = 14 */
procedure Double(n) { Double = n + n; return; }
j = 1;
while (EQ(j, 1)) {
    r = Double(7);
    OUTPUT = r;
    j = j + 1;
}

/* Test 3: freturn — MayFail(4) = 12, freturn path not triggered */
procedure MayFail(n) {
    if (EQ(n, 0)) { freturn; }
    MayFail = n * 3;
    return;
}
k = 1;
while (EQ(k, 1)) {
    r3 = MayFail(4);
    OUTPUT = r3;
    k = k + 1;
}

/* Test 4: nreturn — NullFn returns null (empty string) */
procedure NullFn(n) { nreturn; }
m = 1;
while (EQ(m, 1)) {
    r4 = NullFn(5);
    if (IDENT(r4, "")) { OUTPUT = "nreturn ok"; }
    m = m + 1;
}
/*---------------------------------------------------------------- 231 dupl_1 */
OUTPUT = DUPL('ab', 3);
/*------------------------------------------------------------- 232 replace_1 */
OUTPUT = REPLACE('abc', 'b', 'X');
/*---------------------------------------------------------------- 233 size_3 */
OUTPUT = SIZE('hello');
/*--------------------------------------------------------------- 234 array_6 */
a = ARRAY(3, 'z');
OUTPUT = a[2];
/*-------------------------------------------------------- 235 dupl_replace_1 */
// A06_dupl.sc — DUPL repeats string N times
OUTPUT = DUPL('ab', 3);
/*----------------------------------------------------- 236 replace_replace_1 */
// A06_replace.sc — REPLACE translates characters
OUTPUT = REPLACE('hello', 'aeiou', 'AEIOU');
/*---------------------------------------------------------------- 237 size_2 */
OUTPUT = SIZE('hello');
OUTPUT = REVERSE('abc');
/*-------------------------------------------------------- 238 size_replace_1 */
// A06_size.sc — SIZE returns string length
OUTPUT = SIZE('hello');
/*--------------------------------------------------------------- 239 array_2 */
a = ARRAY('3:5');
a[4] = 'lb';
OUTPUT = a[4];
/*--------------------------------------------------------------- 240 array_3 */
a = ARRAY(3);
a[1] = 'x';
OUTPUT = a[1];
/*--------------------------------------------------------------- 241 array_4 */
a = ARRAY(2);
a[2] = 'v';
OUTPUT = a[2];
/*--------------------------------------------------------------- 242 array_5 */
a = ARRAY(2);
a[1] = 'r';
OUTPUT = a[1];
/*--------------------------------------------------------------- 243 array_7 */
a = ARRAY('2,2');
a[2,1] = 'm';
OUTPUT = a[2,1];
/*------------------------------------------------------------- 244 capture_1 */
s = 'abXcdX';
s ? BREAKX('X') . t 'Xc';
OUTPUT = t;
/*------------ 245 ladder__rung22_datatype_function_name_operator_yields_name */
x = 'hi';
OUTPUT = DATATYPE(.x);
OUTPUT = DATATYPE(x);
/*----------------------------------------------------------------- 246 len_1 */
s = 'hello';
s ? LEN(2) @p;
OUTPUT = p;
/*--------------------------------------------------------------- 247 table_2 */
t = TABLE();
t['k'] = 'v';
OUTPUT = t['k'];
/*--------------------------------------------------------------- 248 table_3 */
t = TABLE();
t['a'] = 'A';
OUTPUT = t['a'];
/*--------------------------------------------------------------- 249 table_4 */
t = TABLE();
t['b'] = 'B';
OUTPUT = t['b'];
/*--------------------------------------------------------------- 250 table_5 */
t = TABLE();
t['key'] = 'nonint';
OUTPUT = t['key'];
/*------------------------------------------------------------ 251 datatype_1 */
x = '5';
OUTPUT = DATATYPE(x);
OUTPUT = DATATYPE(+x);
OUTPUT = +x + 1;
/*------------------------------------------------------------ 252 indirect_1 */
// 015 - Indirect assignment via variable holding name
v = 'x';
$v = 'world';
OUTPUT = x;
/*------------------------------------------------------------ 253 indirect_2 */
// 015 - Indirect assignment via variable holding name
v = 'x';
$v = 'world';
OUTPUT = x;
/*- 254 ladder__rung04_builtin_string_functions_size_of_a_control_character_string */
x = CHAR(1);
OUTPUT = SIZE(x);
OUTPUT = SIZE(x x);
OUTPUT = SIZE('a' CHAR(1) 'b');
/*--------------------------------------------------------------- 255 table_1 */
t = TABLE();
t['k1'] = 'v1'; t['k2'] = 'v2';
OUTPUT = t['k1'];
OUTPUT = t['k2'];
/*--------------------------------------------------------------- 256 array_1 */
a = ARRAY(3);
a[1] = 'x'; a[2] = 'y'; a[3] = 'z';
OUTPUT = a[1];
OUTPUT = a[2];
OUTPUT = a[3];
/*---------------------------------------------------- 257 datatype_replace_1 */
// B08_struct_datatype: DATATYPE of struct instance
struct color { r, g, b }
c = color(255, 128, 0);
OUTPUT = DATATYPE(c);
OUTPUT = r(c);
/*------------------------------------------------------- 258 fence_replace_1 */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SNOBOL4 has no if-block, so the twin expresses the same branch with a goto label; the guarded assignment and the printed result are identical */
s = 'xxabc';
r = 'no';
if (s ? FENCE 'abc') { r = 'yes'; }
OUTPUT = r;
/*------------------------------------------------------------ 259 indirect_3 */
name = 'foo';
foo = 'initial';
OUTPUT = $name;
$name = 'updated';
OUTPUT = foo;
/*---------------------------------------------------------------- 260 size_1 */
a = 'hello';
b = ' world';
c = a b;
OUTPUT = c;
OUTPUT = SIZE(c);
/*- 261 ladder__rung23_keyword_and_system_variables_stlimit_halts_a_loop_body */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: &STLIMIT must halt a runaway loop whose trips are INSIDE a structured body, which is the dangerous direction -- before CEO-727 this ran to completion and
   printed 'after' at rc=0 while the oracle's twin halts at ERROR 244. The declared rc=1 in ALL.wantrc is half the witness: stdout alone cannot tell a halt from a silent completion. */
&STLIMIT = 20;
n = 0;
OUTPUT = 'before';
while (LT(n, 100000)) { n = n + 1; }
OUTPUT = 'after';
/*------------------------------------------------------ 262 simple_output_92 */
// B05_alt_both_fail: both alternatives fail, match fails
S = "hello";
if (S ? (("xyz" | "abc"))) {
    OUTPUT = "matched";
} else {
    OUTPUT = "no match";
}
/*------------------------------------------------------- 263 array_replace_1 */
// A05_array_create.sc — create array, set and get elements
arr = ARRAY(5);
arr[1] = 'first';
arr[3] = 'third';
arr[5] = 'fifth';
OUTPUT = arr[1];
OUTPUT = arr[3];
OUTPUT = arr[5];
/*----------------------------------------------------- 264 capture_replace_5 */
// string comparison guards a pattern operation
s = "hello";
t = "hello";
if (LEQ(s, t)) {
    if (s ? "ell" . m) {
        OUTPUT = m;
    }
}
/*----------------------------------------------------- 265 keyword_replace_2 */
// A09_stno.sc — &STNO increments per statement
x = 1;
x = 2;
if (GT(&STNO, 1)) {
    OUTPUT = 'stno ok';
} else {
    OUTPUT = 'wrong';
}
/*------------- 266 ladder__rung23_keyword_and_system_variables_anchor_toggle */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: SNOBOL4 has no if-block; the twin expresses the same two guarded assignments with goto labels, and both print the same two lines */
s = 'hello';
&ANCHOR = 0;
r = 'no'; if (s ? 'ell') { r = 'yes'; }
OUTPUT = r;
&ANCHOR = 1;
r = 'no'; if (s ? 'ell') { r = 'yes'; }
OUTPUT = r;
/*------------- 267 ladder__rung23_keyword_and_system_variables_stcount_query */
a = &STCOUNT;
x = 1;
OUTPUT = &STCOUNT - a;
b = &STCOUNT;
y = 1;
z = 2;
w = 3;
OUTPUT = &STCOUNT - b;
/*------------------------------------------------------- 268 table_replace_1 */
// A05_table.sc — create table, set and get keyed values
t = TABLE();
t['name'] = 'Alice';
t['age'] = 30;
t['lang'] = 'SNOBOL4';
OUTPUT = t['name'];
OUTPUT = t['age'];
OUTPUT = t['lang'];
/*------------------------------------------------------- 269 array_replace_2 */
// A05_array_loop.sc — fill array in while loop, read back
arr = ARRAY(5);
i = 1;
while (LE(i, 5)) {
    arr[i] = i * i;
    i = i + 1;
}
i = 1;
while (LE(i, 5)) {
    OUTPUT = arr[i];
    i = i + 1;
}
/*----------------------------------------------------- 270 keyword_replace_1 */
// A09_anchor.sc — &ANCHOR=1 forces match at position 0
&ANCHOR = 1;
x = 'hello world';
if (x ? 'hello') {
    OUTPUT = 'anchored match ok';
} else {
    OUTPUT = 'wrong';
}
if (x ? 'world') {
    OUTPUT = 'should not reach';
} else {
    OUTPUT = 'anchor prevented mid-string match';
}
/*---------------------------------------------------- 271 indirect_replace_1 */
// nreturn_after_indirect_assign.sc -- PROBE, minimal repro.
// A function that sets its own return-slot to .dummy, then performs an
// INDIRECT assignment ($name = expression), then nreturns -- the caller
// (in ordinary value context, r = f(...)) incorrectly receives the
// indirectly-assigned VALUE instead of .dummy's dereferenced (empty)
// value. This is the exact shape of beauty/match.inc's canonical `assign`
// helper. See postoffice task snocone-nreturn-after-indirect-assign-wrong-value.
function setter(name, expression) {
    setter = .dummy;
    $name = expression;
    nreturn;
}
r = setter('d', 'val');
OUTPUT = "[" r "]";
/*-- 272 ladder__rung23_keyword_and_system_variables_stcount_counts_loop_body */
/* TWIN IS AN EQUIVALENCE, NOT A TRANSLITERATION: the ref is cut from the oracle running the SPITBOL twin, a goto loop over the same two trip counts. The witness reads &STCOUNT around a 3-trip and an 8-trip
   loop of IDENTICAL top-level shape and compares the two deltas, so the per-iteration count is isolated from the top-level overhead and no magic statement number is pinned -- the Snocone report calls the
   count 'only approximate' because it counts SNOBOL4 statements, so the property to pin is that a loop body counts AT ALL, never an exact total. Before CEO-727 both deltas were equal and this printed the
   'not counted' arm in BOTH modes: statement hooks were minted per TOP-LEVEL statement only, so a structured body's statements were never counted. */
a = &STCOUNT;
i = 0;
while (LT(i, 3)) { i = i + 1; }
b = &STCOUNT;
j = 0;
while (LT(j, 8)) { j = j + 1; }
c = &STCOUNT;
if (GT((c - b) - (b - a), 0)) {
    OUTPUT = 'loop body counted';
} else {
    OUTPUT = 'loop body not counted';
}
/*-------------------------------------------------------- 273 size_replace_2 */
// palindrome.sc — string reverse + palindrome check (SC-14)
procedure Reverse(s, r, c, i) {
    r = ''; i = SIZE(s);
    while (GT(i, 0)) { c = SUBSTR(s, i, 1); r = r c; i = i - 1; }
    Reverse = r;
}
procedure IsPalindrome(s) {
    if (IDENT(s, Reverse(s))) { return; } else { freturn; }
}

OUTPUT = Reverse('hello');
OUTPUT = Reverse('abcba');
if (IsPalindrome('racecar'))  { OUTPUT = 'PASS: racecar'; }  else { OUTPUT = 'FAIL: racecar'; }
if (IsPalindrome('hello'))    { OUTPUT = 'FAIL: hello'; }    else { OUTPUT = 'PASS: hello not palindrome'; }
if (IsPalindrome('abcba'))    { OUTPUT = 'PASS: abcba'; }    else { OUTPUT = 'FAIL: abcba'; }
if (IsPalindrome('a'))        { OUTPUT = 'PASS: single'; }   else { OUTPUT = 'FAIL: single'; }
if (IsPalindrome(''))         { OUTPUT = 'PASS: empty'; }    else { OUTPUT = 'FAIL: empty'; }
/*------------------------------------------------------- 274 array_replace_3 */
// quicksort.sc — recursive quicksort (SC-16)
// Note: Snocone arrays pass by reference (descriptor sharing), so in-place sort works.
// Validated by checking sorted output directly.

procedure QSort(arr, lo, hi, pivot, i, j, tmp) {
    if (GE(lo, hi)) { return; }
    pivot = arr[lo + REMDR(hi - lo, 2)];
    i = lo; j = hi;
    while (LE(i, j)) {
        while (LT(arr[i], pivot)) { i = i + 1; }
        while (GT(arr[j], pivot)) { j = j - 1; }
        if (LE(i, j)) {
            tmp = arr[i]; arr[i] = arr[j]; arr[j] = tmp;
            i = i + 1; j = j - 1;
        }
    }
    QSort(arr, lo, j);
    QSort(arr, i, hi);
}

a = ARRAY(8);
a[1] = 5; a[2] = 3; a[3] = 8; a[4] = 1;
a[5] = 9; a[6] = 2; a[7] = 7; a[8] = 4;
QSort(a, 1, 8);
i = 1;
while (LE(i, 8)) { OUTPUT = a[i]; i = i + 1; }
/*------------------------------------------------------- 275 defer_replace_1 */
/* test_while.sc — while loop lowering test
 * Ref generated from equivalent SNOBOL4 under SPITBOL.
 */

/* Test 1: count 1..5 */
i = 1;
while (LE(i, 5)) {
    OUTPUT = i;
    i = i + 1;
}

/* Test 2: sum 1..10 */
s = 0;
j = 1;
while (LE(j, 10)) {
    s = s + j;
    j = j + 1;
}
OUTPUT = s;

/* Test 3: nested 3x3, print i*j */
i = 1;
while (LE(i, 3)) {
    j = 1;
    while (LE(j, 3)) {
        OUTPUT = i * j;
        j = j + 1;
    }
    i = i + 1;
}
/*----------------------------------------------------- 276 keyword_replace_3 */
// driver.sc — test driver for counter.sc (Snocone)
// Oracle: compare to beauty_counter_driver.ref

struct link_counter { next, value }
xTrace = 0;

function InitCounter() { $'#N' = ''; return; }
function PushCounter() { $'#N' = link_counter($'#N', 0); PushCounter = .dummy; nreturn; }
function IncCounter()  { value($'#N') = value($'#N') + 1; IncCounter = .dummy; nreturn; }
function DecCounter()  { value($'#N') = value($'#N') - 1; DecCounter = .dummy; nreturn; }
function PopCounter() {
    if (DIFFER($'#N')) { $'#N' = next($'#N'); PopCounter = .dummy; nreturn; }
    else { freturn; }
}
function TopCounter() {
    if (DIFFER($'#N')) { TopCounter = value($'#N'); return; }
    else { freturn; }
}

&STLIMIT = 1000000;
InitCounter();

// 1: push and increment 3 times, top = 3
PushCounter();
IncCounter(); IncCounter(); IncCounter();
if (IDENT(TopCounter(), 3)) { OUTPUT = 'PASS: 1 push/inc/top = 3'; } else { OUTPUT = 'FAIL: 1 push/inc/top'; }

// 2: nested push, inc once, top = 1
PushCounter();
IncCounter();
if (IDENT(TopCounter(), 1)) { OUTPUT = 'PASS: 2 nested top = 1'; } else { OUTPUT = 'FAIL: 2 nested top'; }

// 3: pop restores outer (top = 3)
PopCounter();
if (IDENT(TopCounter(), 3)) { OUTPUT = 'PASS: 3 pop restore = 3'; } else { OUTPUT = 'FAIL: 3 pop restore'; }

// 4: pop outer, stack empty → PopCounter fails
PopCounter();
if (~PopCounter()) { OUTPUT = 'PASS: 4 empty pop fails'; } else { OUTPUT = 'FAIL: 4 empty pop'; }

// 5: TopCounter on empty stack fails
if (~TopCounter()) { OUTPUT = 'PASS: 5 empty top fails'; } else { OUTPUT = 'FAIL: 5 empty top'; }
/*------------------------------------------------------------ 277 trim_alt_1 */
OUTPUT = TRIM('hi   ') '|';
/*-------------------------------------------------------- 278 size_keyword_1 */
// 006 - SIZE of &ALPHABET
OUTPUT = SIZE(&ALPHABET);
/*-------------------------------------------------------- 279 size_keyword_2 */
// 006 - SIZE of &ALPHABET
OUTPUT = SIZE(&ALPHABET);
/*--------------------------------------------------- 280 trim_size_replace_1 */
// A06_trim.sc — TRIM removes trailing spaces
OUTPUT = SIZE(TRIM('hello   '));
/*--------------------------------------------------------- 281 any_capture_1 */
s = 'xyz';
s ? ANY('xy') . t;
OUTPUT = t;
/*--------------------------------------------------------- 282 arb_capture_1 */
s = 'abc';
s ? ARB . t 'c';
OUTPUT = t;
/*------------------------------------------------------- 283 arbno_capture_1 */
s = 'ababX';
s ? ARBNO('ab') . t 'X';
OUTPUT = t;
/*--------------------------------------------------------- 284 bal_capture_1 */
s = '(a+b)';
s ? BAL . t;
OUTPUT = t;
/*------------------------------------------------------- 285 break_capture_1 */
s = 'ab=cd';
s ? BREAK('=') . t;
OUTPUT = t;
/*--------------------------------------------------------- 286 capture_alt_1 */
s = 'cat';
s ? ('dog' | 'cat') . t;
OUTPUT = t;
/*--------------------------------------------------------- 287 capture_alt_2 */
s = 'ab';
s ? ('a' FAIL | 'ab') . t;
OUTPUT = t;
/*--------------------------------------------------------- 288 len_capture_1 */
s = 'hello';
s ? LEN(3) . t;
OUTPUT = t;
/*--------------------------------------------------------- 289 len_capture_2 */
s = 'abc';
s ? LEN(2) . t;
OUTPUT = t;
/*----------------------------------------------------- 290 len_imm_capture_1 */
s = 'abc';
s ? LEN(1) $ t LEN(1);
OUTPUT = t;
/*------------------------------------------------------ 291 notany_capture_1 */
s = 'xyz';
s ? NOTANY('y') . t;
OUTPUT = t;
/*--------------------------------------------- 292 replace_keyword_replace_1 */
// A09_reverse_ucase.sc — REVERSE + case keywords
OUTPUT = REVERSE('hello');
OUTPUT = REPLACE('hello', &LCASE, &UCASE);
/*-------------------------------------------------------- 293 rtab_capture_1 */
s = 'hello';
s ? RTAB(2) . t;
OUTPUT = t;
/*-------------------------------------------------------- 294 span_capture_1 */
s = 'aaa123';
s ? SPAN('a') . t;
OUTPUT = t;
/*--------------------------------------------------------- 295 tab_capture_1 */
s = 'hello';
s ? TAB(3) . t;
OUTPUT = t;
/*----------------------------------------------------------- 296 abort_alt_1 */
s = 'abc';
OUTPUT = 'before';
s ? ('x' | ABORT) 'c';
OUTPUT = 'after';
/*--------------------------------------------------- 297 dupl_size_replace_1 */
// A09_dupl_size.sc — DUPL + SIZE combination
x = DUPL('abc', 4);
OUTPUT = SIZE(x);
OUTPUT = x;
/*----------- 298 ladder__rung23_keyword_and_system_variables_code_exit_value */
&CODE = 9;
OUTPUT = "first";
&CODE = 4;
OUTPUT = "second";
/*------------------------------------------------ 299 size_keyword_replace_1 */
// A08_alphabet.sc — &ALPHABET and &UCASE &LCASE keywords
OUTPUT = SIZE(&ALPHABET);
OUTPUT = SIZE(&UCASE);
OUTPUT = SIZE(&LCASE);
/*----------------------------------------------------- 300 capture_replace_1 */
// B05_alt_assign: alternation result captured and assigned
S = "testing";
if (S ? (("xyz" | "test")) . RESULT) {
    OUTPUT = RESULT;
}
/*----------------------------------------------------- 301 capture_replace_2 */
// B05_alt_chain: three-way alternation, third arm matches
S = "world";
if (S ? (("foo" | "bar" | "wor")) . M) {
    OUTPUT = M;
}
/*----------------------------------------------------- 302 capture_replace_3 */
// B05_alt_left_wins: left alternative matches, right not tried
S = "hello";
if (S ? (("hel" | "xyz")) . M) {
    OUTPUT = M;
}
/*----------------------------------------------------- 303 capture_replace_4 */
// B05_alt_right_fallback: left fails, right succeeds
S = "hello";
if (S ? (("xyz" | "ell")) . M) {
    OUTPUT = M;
}
/*--------------------------------------------------- 304 datatype_indirect_1 */
target = 'original';
p = .target;
OUTPUT = DATATYPE(p);
$p = 'changed';
OUTPUT = target;
/*------------------------------------------------- 305 len_capture_replace_1 */
// A11_capture_dot.sc — immediate capture with dot (.)
x = 'hello world';
if (x ? LEN(5) . v) {
    OUTPUT = v;
}
/*--------------------------------------------- 306 len_imm_capture_replace_1 */
// A11_capture_dollar.sc — deferred capture with dollar ($)
x = 'hello world';
if (x ? LEN(5) $ v) {
    OUTPUT = v;
}
/*------------------------------------------------ 307 span_capture_replace_2 */
// pattern in if with capture
s = "hello world";
if (s ? SPAN("abcdefghijklmnopqrstuvwxyz") . word) {
    OUTPUT = word;
}
/*--------------------------------------------- 308 replace_keyword_replace_2 */
// A13_define_in_pattern.sc — function call used as value
function upcase(s) {
    return REPLACE(s, &LCASE, &UCASE);
}
OUTPUT = upcase('hello');
OUTPUT = upcase('world');
/*------------------------------------------------- 309 any_capture_replace_1 */
// A12_pat_any.sc — ANY matches one character from set
x = 'hello';
if (x ? ANY('aeiou') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no vowel';
}
/*----------------------------------------------- 310 break_capture_replace_1 */
// A12_pat_break.sc — BREAK matches up to (not including) char in set
x = 'hello world';
if (x ? BREAK(' ') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no space';
}
/*------------------------------------------------- 311 len_capture_replace_2 */
// A12_pat_len.sc — LEN matches exactly N characters
x = 'abcdef';
if (x ? LEN(3) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*---------------------------------------------- 312 notany_capture_replace_1 */
// A12_pat_notany.sc — NOTANY matches one char NOT in set
x = 'hello';
if (x ? NOTANY('aeiou') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'all vowels';
}
/*------------------------------------------------- 313 pos_capture_replace_1 */
// A11_capture_loop.sc — capture inside loop (LOOP/DONE → while + break)
x = 'aaa';
n = 0;
while (x ? POS(n)   'a' . v) {
    OUTPUT = v;
    n = n + 1;
}
/*------------------------------------------------ 314 rtab_capture_replace_1 */
// A12_pat_rtab.sc — RTAB leaves N chars from right
x = 'abcdef';
if (x ? RTAB(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*------------------------------------------------ 315 span_capture_replace_1 */
// A12_pat_span.sc — SPAN matches longest run of chars in set
x = '12345abc';
if (x ? SPAN('0123456789') . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'no digits';
}
/*------------------------------------------------ 316 span_capture_replace_3 */
// capture a digit string and compare its numeric value
s = "42 things";
if (s ? SPAN("0123456789") . num) {
    if (EQ(num, 42)) {
        OUTPUT = "forty-two";
    }
}
/*-------------------------------------------------- 317 table_size_replace_1 */
// wordcount.sc — word counting (SC-15)
// Splits on spaces using SUBSTR, counts words into a TABLE

procedure SplitWords(text, words, i, sz, w, c) {
    words = TABLE();
    sz = SIZE(text);
    i = 1; w = '';
    while (LE(i, sz)) {
        c = SUBSTR(text, i, 1);
        if (IDENT(c, ' ')) {
            if (DIFFER(w, '')) { words[w] = words[w] + 1; w = ''; }
        } else {
            w = w c;
        }
        i = i + 1;
    }
    if (DIFFER(w, '')) { words[w] = words[w] + 1; }
    SplitWords = words;
}

wc = SplitWords('the cat sat on the mat the cat');
OUTPUT = 'the=' wc['the'];
OUTPUT = 'cat=' wc['cat'];
OUTPUT = 'sat=' wc['sat'];
OUTPUT = 'on='  wc['on'];
OUTPUT = 'mat=' wc['mat'];
/*----------------------------------------------- 318 array_keyword_replace_1 */
// driver.sc — test driver for tree.sc (Snocone)
struct tree { t, v, n, c }

function MakeLeaf(type, val) { MakeLeaf = tree(type, val, 0, ''); return; }
function MakeNode(type, val, nc, kids) { MakeNode = tree(type, val, nc, kids); return; }

&STLIMIT = 1000000;

// 1: MakeLeaf creates node with correct t, v, n=0
leaf = MakeLeaf('Id', 'foo');
if (IDENT(t(leaf), 'Id')   IDENT(v(leaf), 'foo')   IDENT(n(leaf), 0)) {
    OUTPUT = 'PASS: 1 MakeLeaf t/v/n';
} else {
    OUTPUT = 'FAIL: 1 MakeLeaf t/v/n';
}

// 2: MakeNode with 2 children
ch1 = MakeLeaf('Id', 'x');
ch2 = MakeLeaf('Integer', '42');
kids = ARRAY('1:2');
kids[1] = ch1;
kids[2] = ch2;
nd = MakeNode('BinOp', '+', 2, kids);
if (IDENT(t(nd),'BinOp')   IDENT(n(nd),2)   IDENT(t(c(nd)[1]),'Id')   IDENT(t(c(nd)[2]),'Integer')) {
    OUTPUT = 'PASS: 2 MakeNode with children';
} else {
    OUTPUT = 'FAIL: 2 MakeNode with children';
}

// 3: DIFFER guard on real node
if (DIFFER(leaf)) { OUTPUT = 'PASS: 3 DIFFER guard'; } else { OUTPUT = 'FAIL: 3 DIFFER guard'; }

// 4: field update
leaf2 = MakeLeaf('X', 'y');
t(leaf2) = 'Label';
v(leaf2) = 'done';
if (IDENT(t(leaf2),'Label')   IDENT(v(leaf2),'done')) {
    OUTPUT = 'PASS: 4 field update';
} else {
    OUTPUT = 'FAIL: 4 field update';
}
/*------------------------------------------------ 319 trim_keyword_replace_1 */
// A15_lib_math.sc — numeric utility functions: max, min, abs, sign, gcd, lcm
// Snocone translation of crosscheck/library/test_math.sno + lib/math.sno
&TRIM = 1;

function max(a, b) {
    if (LT(a, b)) { return b; }
    return a;
}
function min(a, b) {
    if (GT(a, b)) { return b; }
    return a;
}
function abs(n) {
    if (LT(n, 0)) { return -n; }
    return n;
}
function sign(n) {
    if (LT(n, 0)) { return -1; }
    if (GT(n, 0)) { return 1; }
    return 0;
}
function gcd(a, b) r {
    while (DIFFER(b, 0)) {
        r = REMDR(a, b);
        a = b;
        b = r;
    }
    return a;
}
function lcm(a, b) g {
    g = gcd(a, b);
    return (a / g) * b;
}

OUTPUT = max(3, 7);
OUTPUT = min(3, 7);
OUTPUT = max(3.5, 2.1);
OUTPUT = min(3.5, 2.1);
OUTPUT = abs(-42);
OUTPUT = sign(0);
OUTPUT = sign(5);
OUTPUT = sign(-3);
OUTPUT = gcd(12, 8);
OUTPUT = gcd(100, 75);
OUTPUT = lcm(4, 6);
/*-------------------------------------------- 320 indirect_keyword_replace_1 */
// driver.sc — test driver for stack.sc (Snocone)
struct link { next, value }
xTrace = 0;

function InitStack() { $'@S' = ''; return; }
function Push(x) {
    $'@S' = link($'@S', x);
    if (IDENT(x, '')) { Push = .value($'@S'); nreturn; }
    else { Push = .dummy; nreturn; }
}
function Pop(var) {
    if (~DIFFER($'@S')) { freturn; }
    if (IDENT(var, '')) { Pop = value($'@S'); $'@S' = next($'@S'); return; }
    else { $var = value($'@S'); $'@S' = next($'@S'); Pop = .dummy; nreturn; }
}
function Top() {
    if (~DIFFER($'@S')) { freturn; }
    Top = .value($'@S');
    nreturn;
}

&STLIMIT = 1000000;
InitStack();

Push(42);
if (IDENT(Top(), 42)) { OUTPUT = 'PASS: 1 push/top = 42'; } else { OUTPUT = 'FAIL: 1 push/top'; }

InitStack();
Push(10); Push(20); Push(30);
if (IDENT(Top(), 30)) { OUTPUT = 'PASS: 2 top of 3 = 30'; } else { OUTPUT = 'FAIL: 2 top of 3'; }

Pop('dummy');
if (IDENT(Top(), 20)) { OUTPUT = 'PASS: 3 pop restores 20'; } else { OUTPUT = 'FAIL: 3 pop restores'; }

InitStack();
Push(99);
Pop('result');
if (IDENT(result, 99)) { OUTPUT = 'PASS: 4 Pop(var) = 99'; } else { OUTPUT = 'FAIL: 4 Pop(var)'; }

InitStack();
if (~Pop('dummy')) { OUTPUT = 'PASS: 5 empty pop fails'; } else { OUTPUT = 'FAIL: 5 empty pop'; }

InitStack();
if (~Top()) { OUTPUT = 'PASS: 6 empty top fails'; } else { OUTPUT = 'FAIL: 6 empty top'; }

InitStack();
Push('a'); Push('b'); Push('c');
Pop('v1'); Pop('v2'); Pop('v3');
if (IDENT(v1,'c')   IDENT(v2,'b')   IDENT(v3,'a')) { OUTPUT = 'PASS: 7 nested pop order a/b/c'; } else { OUTPUT = 'FAIL: 7 pop order'; }
/*----------------------------------------------- 321 table_keyword_replace_1 */
// driver.sc — test driver for arith.sc

function ISqrt(n, i) {
    i = 0; while (LE((i + 1) * (i + 1), n)) { i = i + 1; } ISqrt = i; return;
}
function Fibonacci(n, a, b, t, i) {
    if (LE(n, 0)) { Fibonacci = 0; return; }
    if (EQ(n, 1)) { Fibonacci = 1; return; }
    a = 0; b = 1; i = 1;
    while (LT(i, n)) { i = i + 1; t = b; b = a + b; a = t; }
    Fibonacci = b; return;
}
function GCD(a, b, t) {
    while (DIFFER(b, 0)) { t = b; b = REMDR(a, b); a = t; }
    GCD = a; return;
}
function Factorial(n, acc, i) {
    acc = 1; i = 0;
    while (LT(i, n)) { i = i + 1; acc = acc * i; }
    Factorial = acc; return;
}
function IsPrime(n, i, lim) {
    if (LE(n, 1)) { freturn; }
    if (EQ(n, 2)) { return; }
    if (IDENT(REMDR(n, 2), 0)) { freturn; }
    lim = ISqrt(n); i = 1;
    while (1) { i = i + 2; if (GT(i, lim)) { break; }
        if (IDENT(REMDR(n, i), 0)) { freturn; } }
    return;
}
function Sieve(n, arr, i, j) {
    arr = TABLE(); i = 2;
    while (LE(i, n)) { arr[i] = 1; i = i + 1; }
    i = 2;
    while (LE(i * i, n)) {
        if (IDENT(arr[i], 1)) { j = i * i;
            while (LE(j, n)) { arr[j] = 0; j = j + i; } }
        i = i + 1; }
    Sieve = arr; return;
}

&STLIMIT = 10000000;
if (EQ(Fibonacci(10), 55))    { OUTPUT = 'PASS: 1 Fibonacci(10)=55'; }  else { OUTPUT = 'FAIL: 1'; }
if (EQ(Fibonacci(0), 0))      { OUTPUT = 'PASS: 2 Fibonacci(0)=0'; }    else { OUTPUT = 'FAIL: 2'; }
if (EQ(Fibonacci(1), 1))      { OUTPUT = 'PASS: 3 Fibonacci(1)=1'; }    else { OUTPUT = 'FAIL: 3'; }
if (EQ(Fibonacci(20), 6765))  { OUTPUT = 'PASS: 4 Fibonacci(20)=6765'; } else { OUTPUT = 'FAIL: 4 '   Fibonacci(20); }
if (EQ(GCD(48, 18), 6))       { OUTPUT = 'PASS: 5 GCD(48,18)=6'; }      else { OUTPUT = 'FAIL: 5'; }
if (EQ(GCD(100, 75), 25))     { OUTPUT = 'PASS: 6 GCD(100,75)=25'; }    else { OUTPUT = 'FAIL: 6'; }
if (EQ(GCD(7, 13), 1))        { OUTPUT = 'PASS: 7 GCD(7,13)=1'; }       else { OUTPUT = 'FAIL: 7'; }
if (EQ(Factorial(5), 120))    { OUTPUT = 'PASS: 8 Factorial(5)=120'; }   else { OUTPUT = 'FAIL: 8'; }
if (EQ(Factorial(0), 1))      { OUTPUT = 'PASS: 9 Factorial(0)=1'; }     else { OUTPUT = 'FAIL: 9'; }
if (EQ(Factorial(10), 3628800)) { OUTPUT = 'PASS: 10 Factorial(10)'; }  else { OUTPUT = 'FAIL: 10 '   Factorial(10); }
if (IsPrime(2))               { OUTPUT = 'PASS: 11 IsPrime(2)'; }         else { OUTPUT = 'FAIL: 11'; }
if (IsPrime(17))              { OUTPUT = 'PASS: 12 IsPrime(17)'; }        else { OUTPUT = 'FAIL: 12'; }
if (~IsPrime(1))              { OUTPUT = 'PASS: 13 ~IsPrime(1)'; }        else { OUTPUT = 'FAIL: 13'; }
if (~IsPrime(15))             { OUTPUT = 'PASS: 14 ~IsPrime(15)'; }       else { OUTPUT = 'FAIL: 14'; }
if (~IsPrime(100))            { OUTPUT = 'PASS: 15 ~IsPrime(100)'; }      else { OUTPUT = 'FAIL: 15'; }
primes = Sieve(20);
if (IDENT(primes[2],1)   IDENT(primes[3],1)   IDENT(primes[4],0)   IDENT(primes[17],1)   IDENT(primes[15],0)) {
    OUTPUT = 'PASS: 16 Sieve(20)';
} else { OUTPUT = 'FAIL: 16 Sieve'; }
if (EQ(ISqrt(15), 3))         { OUTPUT = 'PASS: 17 ISqrt(15)=3'; }       else { OUTPUT = 'FAIL: 17'; }
if (EQ(ISqrt(16), 4))         { OUTPUT = 'PASS: 18 ISqrt(16)=4'; }       else { OUTPUT = 'FAIL: 18'; }
/*----------------------------------------------------- 322 len_rem_capture_1 */
s = 'abcd';
s ? LEN(2) REM . t;
OUTPUT = t;
/*----------------------------------------------------- 323 pos_len_capture_1 */
s = 'hello';
s ? POS(0) LEN(2) . t;
OUTPUT = t;
/*---------------------------------------------------- 324 rpos_len_capture_1 */
s = 'hello';
s ? LEN(3) . t RPOS(2);
OUTPUT = t;
/*--------------------------------------------------- 325 break_rem_capture_1 */
s = 'key=value';
s ? BREAK('=') . k '=' REM . v;
OUTPUT = k;
OUTPUT = v;
/*------------------------------------ 326 datatype_replace_keyword_replace_1 */
// A08_datatype.sc — DATATYPE returns type name of value
OUTPUT = REPLACE(DATATYPE('hello'), &LCASE, &UCASE);
OUTPUT = REPLACE(DATATYPE(42),      &LCASE, &UCASE);
OUTPUT = REPLACE(DATATYPE(3.14),    &LCASE, &UCASE);
/*------------ 327 ladder__rung23_keyword_and_system_variables_maxlngth_query */
OUTPUT = &MAXLNGTH;
&MAXLNGTH = 5000;
OUTPUT = &MAXLNGTH;
OUTPUT = SIZE(DUPL('a', 4000));
/*------------------------------------------------- 328 eval_datatype_defer_1 */
x = 1;
d = *x;
OUTPUT = DATATYPE(d);
x = 99;
OUTPUT = EVAL(d);
/*------------------------------------------- 329 break_len_capture_replace_1 */
// pattern match inside for loop body
words = "cat dog fox";
for (i = 1; LE(i, 3); i = i + 1) {
    if (words ? BREAK(" ") . w   LEN(1)) {
        OUTPUT = w;
    }
}
/*--------------------------------------------- 330 pos_len_capture_replace_1 */
// A12_pat_pos.sc — POS anchors match at cursor position
x = 'hello';
if (x ? POS(0)   LEN(3) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*-------------------------------------------- 331 rpos_len_capture_replace_1 */
// A12_pat_rpos.sc — RPOS anchors match from right
x = 'hello';
if (x ? RPOS(2)   LEN(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*--------------------------------------------- 332 tab_len_capture_replace_1 */
// A12_pat_tab.sc — TAB advances cursor to column position
x = 'abcdef';
if (x ? TAB(3)   LEN(2) . v) {
    OUTPUT = v;
} else {
    OUTPUT = 'fail';
}
/*------------------------------------------- 333 trim_size_keyword_replace_1 */
// A14_arith_loop_fileinfo.sc — count chars and lines from stdin
// Snocone translation of crosscheck/arith/fileinfo.sno
// Tests: while (INPUT), SIZE(), integer accumulation, EOF termination
&TRIM = 1;
chars = 0;
lines = 0;
while (line = INPUT) {
    chars = chars + SIZE(line);
    lines = lines + 1;
}
OUTPUT = chars   ' characters, '   lines   ' lines read';
/*-------------------------------------- 334 array_datatype_keyword_replace_1 */
// driver.sc — test driver for XDump.sc (Snocone)
// XDump output goes to OUTPUT — capture and verify

function XDump(object, nm, i, iMax, iMin, objArr, objField, objKey, objKeyNm,
                               objProto, objType, objVal) {
    objType = DATATYPE(object);
    if (IDENT(objType, 'INTEGER')) { OUTPUT = nm ' = ' object; return; }
    if (IDENT(objType, 'REAL')) { OUTPUT = nm ' = ' object; return; }
    if (IDENT(objType, 'STRING')) { OUTPUT = nm " = '" object "'"; return; }
    if (IDENT(objType, 'ARRAY')) {
        objProto = PROTOTYPE(object);
        OUTPUT = nm " = ARRAY['" objProto "']";
        return;
    }
    OUTPUT = nm ' = ' objType '()';
    return;
}

digits = '0123456789';
&STLIMIT = 1000000;

// 1: integer
XDump(42, 'x');

// 2: string
XDump('hello', 'y');

// 3: array
arr = ARRAY('1:3');
XDump(arr, 'a');
/*---------------------------------------- 335 convert_size_keyword_replace_1 */
// driver.sc — test driver for roman.sc
function Roman(n, s, i, len, d, place, ones, fives, tens, result) {
    s = CONVERT(n, 'STRING'); len = SIZE(s); result = ''; i = 0;
    while (LT(i, len)) {
        i = i + 1; d = CONVERT(SUBSTR(s, i, 1), 'INTEGER'); place = len - i;
        if (EQ(place, 0)) { ones = 'I'; fives = 'V'; tens = 'X'; }
        if (EQ(place, 1)) { ones = 'X'; fives = 'L'; tens = 'C'; }
        if (EQ(place, 2)) { ones = 'C'; fives = 'D'; tens = 'M'; }
        if (EQ(place, 3)) { ones = 'M'; fives = '';  tens = '';  }
        if (EQ(d, 1)) { result = result   ones; }
        else if (EQ(d, 2)) { result = result   ones   ones; }
        else if (EQ(d, 3)) { result = result   ones   ones   ones; }
        else if (EQ(d, 4)) { result = result   ones   fives; }
        else if (EQ(d, 5)) { result = result   fives; }
        else if (EQ(d, 6)) { result = result   fives   ones; }
        else if (EQ(d, 7)) { result = result   fives   ones   ones; }
        else if (EQ(d, 8)) { result = result   fives   ones   ones   ones; }
        else if (EQ(d, 9)) { result = result   ones   tens; }
    }
    Roman = result; return;
}
&STLIMIT = 1000000;
if (IDENT(Roman(1),    'I'))         { OUTPUT = 'PASS: 1 Roman(1)=I'; }         else { OUTPUT = 'FAIL: 1 '   Roman(1); }
if (IDENT(Roman(4),    'IV'))        { OUTPUT = 'PASS: 2 Roman(4)=IV'; }        else { OUTPUT = 'FAIL: 2'; }
if (IDENT(Roman(9),    'IX'))        { OUTPUT = 'PASS: 3 Roman(9)=IX'; }        else { OUTPUT = 'FAIL: 3'; }
if (IDENT(Roman(14),   'XIV'))       { OUTPUT = 'PASS: 4 Roman(14)=XIV'; }      else { OUTPUT = 'FAIL: 4 '   Roman(14); }
if (IDENT(Roman(42),   'XLII'))      { OUTPUT = 'PASS: 5 Roman(42)=XLII'; }     else { OUTPUT = 'FAIL: 5'; }
if (IDENT(Roman(400),  'CD'))        { OUTPUT = 'PASS: 6 Roman(400)=CD'; }      else { OUTPUT = 'FAIL: 6'; }
if (IDENT(Roman(1776), 'MDCCLXXVI')) { OUTPUT = 'PASS: 7 Roman(1776)=MDCCLXXVI'; } else { OUTPUT = 'FAIL: 7'; }
if (IDENT(Roman(1999), 'MCMXCIX'))   { OUTPUT = 'PASS: 8 Roman(1999)=MCMXCIX'; } else { OUTPUT = 'FAIL: 8'; }
if (IDENT(Roman(2024), 'MMXXIV'))    { OUTPUT = 'PASS: 9 Roman(2024)=MMXXIV'; }  else { OUTPUT = 'FAIL: 9'; }
if (IDENT(Roman(3999), 'MMMCMXCIX')){ OUTPUT = 'PASS: 10 Roman(3999)=MMMCMXCIX'; } else { OUTPUT = 'FAIL: 10'; }
/*---------------------------------------- 336 trim_replace_keyword_replace_1 */
// A15_lib_case.sc — case conversion: lwr, upr, cap, icase pattern
// Snocone translation of crosscheck/library/test_case.sno + lib/case.sno
&TRIM = 1;

function lwr(s) {
    return REPLACE(s, &UCASE, &LCASE);
}
function upr(s) {
    return REPLACE(s, &LCASE, &UCASE);
}
function cap(s) {
    return REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE)   REPLACE(SUBSTR(s, 2), &UCASE, &LCASE);
}
// icase(subject, pattern): succeed if subject matches pattern case-insensitively
function icase(subject, pat) {
    if (IDENT(lwr(subject), lwr(pat))) { return; } else { freturn; }
}

OUTPUT = lwr('HELLO WORLD');
OUTPUT = upr('hello world');
OUTPUT = cap('hELLO wORLD');

if (icase('Hello', 'hello')) {
    OUTPUT = 'ok: icase hello';
}
if (icase('HELLO', 'hello')) {
    OUTPUT = 'ok: icase HELLO';
}
if (icase('HeLLo', 'hello')) {
    OUTPUT = 'ok: icase HeLLo';
}
if (icase('world', 'hello')) {
    OUTPUT = 'fail: icase matched wrong string';
} else {
    OUTPUT = 'no match ok';
}
/*-------------------------------------- 337 datatype_defer_keyword_replace_1 */
// driver.sc — test driver for semantic.sc (Snocone)
struct link_counter { next, value }
xTrace = 0;
epsilon = '';

function InitCounter() { $'#N' = ''; return; }
function PushCounter() { $'#N' = link_counter($'#N', 0); PushCounter = .dummy; nreturn; }
function IncCounter()  { value($'#N') = value($'#N') + 1; IncCounter = .dummy; nreturn; }
function DecCounter()  { value($'#N') = value($'#N') - 1; DecCounter = .dummy; nreturn; }
function PopCounter() {
    if (DIFFER($'#N')) { $'#N' = next($'#N'); PopCounter = .dummy; nreturn; } else { freturn; }
}
function TopCounter() {
    if (DIFFER($'#N')) { TopCounter = value($'#N'); return; } else { freturn; }
}

function nPush() { nPush = epsilon . *PushCounter(); return; }
function nInc()  { nInc  = epsilon . *IncCounter();  return; }
function nDec()  { nDec  = epsilon . *DecCounter();  return; }
function nTop()  { nTop  = TopCounter(); return; }
function nPop()  { nPop  = epsilon . *PopCounter();  return; }

&STLIMIT = 1000000;
InitCounter();

if (IDENT(DATATYPE(nPush()), 'PATTERN')) { OUTPUT = 'PASS: 1 nPush=PATTERN'; } else { OUTPUT = 'FAIL: 1'; }
if (IDENT(DATATYPE(nInc()),  'PATTERN')) { OUTPUT = 'PASS: 2 nInc=PATTERN';  } else { OUTPUT = 'FAIL: 2'; }
if (IDENT(DATATYPE(nPop()),  'PATTERN')) { OUTPUT = 'PASS: 3 nPop=PATTERN';  } else { OUTPUT = 'FAIL: 3'; }

if ('' ? nPush()) { } else { OUTPUT = 'FAIL: 4 nPush match'; }
if (EQ(nTop(), 0)) { OUTPUT = 'PASS: 4 nPush match; nTop=0'; } else { OUTPUT = 'FAIL: 4 nTop='   nTop(); }

if ('' ? nInc()) { } else { OUTPUT = 'FAIL: 5'; }
if (EQ(nTop(), 1)) { OUTPUT = 'PASS: 5 nInc match; nTop=1'; } else { OUTPUT = 'FAIL: 5'; }

if ('' ? nInc()) { } else { OUTPUT = 'FAIL: 6'; }
if (EQ(nTop(), 2)) { OUTPUT = 'PASS: 6 nInc x2; nTop=2'; } else { OUTPUT = 'FAIL: 6'; }

if ('' ? nPush()) { } else { OUTPUT = 'FAIL: 7'; }
if (EQ(nTop(), 0)) { OUTPUT = 'PASS: 7 nested nPush; nTop=0'; } else { OUTPUT = 'FAIL: 7'; }

v = nTop();
if (IDENT(DATATYPE(v), 'INTEGER')) { OUTPUT = 'PASS: 8 nTop INTEGER'; } else { OUTPUT = 'FAIL: 8 '   DATATYPE(v); }
/*------------------------------------------ 338 table_size_keyword_replace_1 */
// driver.sc — test driver for strings.sc

function Reverse(s, i, n, out) {
    n = SIZE(s); out = ''; i = n + 1;
    while (GT(i, 1)) { i = i - 1; out = out   SUBSTR(s, i, 1); }
    Reverse = out; return;
}
function TrimLeft(s, i, n, ch, found) {
    n = SIZE(s); i = 0; found = 0;
    while (LT(i, n)) { i = i + 1; ch = SUBSTR(s, i, 1);
        if (DIFFER(ch, ' ')   DIFFER(ch, CHAR(9))) { found = 1; break; } }
    if (IDENT(found, 0)) { TrimLeft = ''; } else { TrimLeft = SUBSTR(s, i); }
    return;
}
function TrimRight(s, i, n, ch, found) {
    n = SIZE(s); i = n + 1; found = 0;
    while (GT(i, 1)) { i = i - 1; ch = SUBSTR(s, i, 1);
        if (DIFFER(ch, ' ')   DIFFER(ch, CHAR(9))) { found = 1; break; } }
    if (IDENT(found, 0)) { TrimRight = ''; } else { TrimRight = SUBSTR(s, 1, i); }
    return;
}
function Trim(s) { Trim = TrimLeft(TrimRight(s)); return; }
function StartsWith(s, prefix) {
    if (IDENT(SUBSTR(s, 1, SIZE(prefix)), prefix)) { return; } else { freturn; }
}
function EndsWith(s, suffix, n, sn) {
    n = SIZE(s); sn = SIZE(suffix); if (GT(sn, n)) { freturn; }
    if (IDENT(SUBSTR(s, n - sn + 1, sn), suffix)) { return; } else { freturn; }
}
function Split(s, sep, i, n, slen, out_n, start, arr) {
    n = SIZE(s); slen = SIZE(sep); out_n = 0;
    arr = TABLE(); i = 1; start = 1;
    while (LE(i, n)) {
        if (IDENT(SUBSTR(s, i, slen), sep)) {
            out_n = out_n + 1; arr[out_n] = SUBSTR(s, start, i - start);
            i = i + slen; start = i;
        } else { i = i + 1; }
    }
    out_n = out_n + 1; arr[out_n] = SUBSTR(s, start, n - start + 1);
    arr[0] = out_n; Split = arr; return;
}
function Join(arr, sep, i, n, out) {
    n = arr[0]; out = ''; i = 0;
    while (LT(i, n)) { i = i + 1;
        if (GT(i, 1)) { out = out   sep; }
        out = out   arr[i]; }
    Join = out; return;
}

&STLIMIT = 1000000;
if (IDENT(Reverse('hello'), 'olleh'))    { OUTPUT = 'PASS: 1 Reverse'; }        else { OUTPUT = 'FAIL: 1 Reverse'; }
if (IDENT(Reverse(''), ''))              { OUTPUT = 'PASS: 2 Reverse empty'; }   else { OUTPUT = 'FAIL: 2 Reverse empty'; }
if (IDENT(TrimLeft('   hi'), 'hi'))      { OUTPUT = 'PASS: 3 TrimLeft'; }        else { OUTPUT = 'FAIL: 3 TrimLeft'; }
if (IDENT(TrimLeft('hi'), 'hi'))         { OUTPUT = 'PASS: 4 TrimLeft noop'; }   else { OUTPUT = 'FAIL: 4 TrimLeft noop'; }
if (IDENT(TrimLeft('   '), ''))          { OUTPUT = 'PASS: 5 TrimLeft all'; }    else { OUTPUT = 'FAIL: 5 TrimLeft all'; }
if (IDENT(TrimRight('hi   '), 'hi'))     { OUTPUT = 'PASS: 6 TrimRight'; }       else { OUTPUT = 'FAIL: 6 TrimRight'; }
if (IDENT(Trim('  hi  '), 'hi'))         { OUTPUT = 'PASS: 7 Trim'; }            else { OUTPUT = 'FAIL: 7 Trim'; }
if (IDENT(Trim('   '), ''))              { OUTPUT = 'PASS: 8 Trim all'; }        else { OUTPUT = 'FAIL: 8 Trim all'; }
if (StartsWith('hello', 'hel'))          { OUTPUT = 'PASS: 9 StartsWith hit'; }  else { OUTPUT = 'FAIL: 9 StartsWith hit'; }
if (~StartsWith('hello', 'xyz'))         { OUTPUT = 'PASS: 10 StartsWith miss'; } else { OUTPUT = 'FAIL: 10 StartsWith miss'; }
if (EndsWith('hello', 'llo'))            { OUTPUT = 'PASS: 11 EndsWith hit'; }   else { OUTPUT = 'FAIL: 11 EndsWith hit'; }
if (~EndsWith('hello', 'xyz'))           { OUTPUT = 'PASS: 12 EndsWith miss'; }  else { OUTPUT = 'FAIL: 12 EndsWith miss'; }
t = Split('a,b,c', ',');
if (IDENT(t[1],'a')   IDENT(t[2],'b')   IDENT(t[3],'c')   EQ(t[0],3)) { OUTPUT = 'PASS: 13 Split'; } else { OUTPUT = 'FAIL: 13 Split'; }
if (IDENT(Join(t, '-'), 'a-b-c'))        { OUTPUT = 'PASS: 14 Join'; }           else { OUTPUT = 'FAIL: 14 Join'; }
t2 = Split('hello', ',');
if (EQ(t2[0], 1)   IDENT(t2[1], 'hello')) { OUTPUT = 'PASS: 15 Split no-sep'; } else { OUTPUT = 'FAIL: 15 Split no-sep'; }
/*-------------------------------------- 339 array_indirect_keyword_replace_1 */
// driver.sc — test driver for ShiftReduce.sc (Snocone)
struct tree { t, v, n, c }
struct link { next, value }
xTrace = 0;

function InitStack() { $'@S' = ''; return; }
function Push(x) {
    $'@S' = link($'@S', x);
    if (IDENT(x, '')) { Push = .value($'@S'); nreturn; }
    else { Push = .dummy; nreturn; }
}
function Pop(var) {
    if (~DIFFER($'@S')) { freturn; }
    if (IDENT(var, '')) { Pop = value($'@S'); $'@S' = next($'@S'); return; }
    else { $var = value($'@S'); $'@S' = next($'@S'); Pop = .dummy; nreturn; }
}
function Top() {
    if (~DIFFER($'@S')) { freturn; }
    Top = .value($'@S'); nreturn;
}

function Shift(t, v) {
    s_ = tree(t, v, 0, '');
    Push(s_);
    if (IDENT(v, '')) { Shift = .v(s_); nreturn; }
    else { Shift = .dummy; nreturn; }
}
function Reduce(t, n, c, i, r) {
    Reduce = .dummy;
    if (GE(n, 1)) { c = ARRAY('1:'   n); } else { c = ''; }
    i = n + 1;
    while (GT(i, 1)) { i = i - 1; c[i] = Pop(''); }
    r = tree(t, '', n, c);
    Push(r);
    nreturn;
}

&STLIMIT = 1000000;

// 1: Shift leaf
InitStack();
Shift('Id', 'foo');
nd = Top();
if (IDENT(t(nd),'Id')   IDENT(v(nd),'foo')) { OUTPUT = 'PASS: 1 Shift leaf'; } else { OUTPUT = 'FAIL: 1'; }

// 2: Shift two + Reduce(2)
InitStack();
Shift('Id', 'x'); Shift('Int', '42');
Reduce('BinOp', 2);
nd = Top();
if (IDENT(t(nd),'BinOp')   IDENT(n(nd),2)   IDENT(t(c(nd)[1]),'Id')   IDENT(t(c(nd)[2]),'Int')) {
    OUTPUT = 'PASS: 2 Reduce 2 children';
} else { OUTPUT = 'FAIL: 2'; }

// 3: Reduce(0)
InitStack();
Reduce('Epsilon', 0);
nd = Top();
if (IDENT(t(nd),'Epsilon')   IDENT(n(nd),0)) { OUTPUT = 'PASS: 3 Reduce 0 children'; } else { OUTPUT = 'FAIL: 3'; }

// 4: Shift empty value
InitStack();
Shift('Keyword', '');
nd = Top();
if (IDENT(t(nd),'Keyword')   IDENT(v(nd),'')) { OUTPUT = 'PASS: 4 Shift empty value'; } else { OUTPUT = 'FAIL: 4'; }

// 5: Shift 3, Reduce(3) — correct child order
InitStack();
Shift('A','a'); Shift('B','b'); Shift('C','c');
Reduce('List', 3);
nd = Top();
if (IDENT(n(nd),3)   IDENT(t(c(nd)[1]),'A')   IDENT(t(c(nd)[2]),'B')   IDENT(t(c(nd)[3]),'C')) {
    OUTPUT = 'PASS: 5 Reduce 3 children order';
} else { OUTPUT = 'FAIL: 5'; }
/*- 340 ladder__rung23_keyword_and_system_variables_keyword_value_operator_ampersand */
OUTPUT = DATATYPE(&ANCHOR);
OUTPUT = DATATYPE(&ALPHABET);
OUTPUT = DATATYPE(&ABORT);
OUTPUT = SIZE(&ALPHABET);
/*----------------------------------------------- 341 break_len_rem_replace_1 */
// A11_capture_multiple.sc — multiple captures in one pattern
x = 'John Smith';
if (x ? BREAK(' ') . first   LEN(1)   REM . last) {
    OUTPUT = first   ' / '   last;
}
/*------------ 342 ladder__rung22_datatype_function_uppercase_type_name_query */
t = TABLE();
a = ARRAY('3');
p = LEN(1);
OUTPUT = DATATYPE('hello');
OUTPUT = DATATYPE(42);
OUTPUT = DATATYPE(3.14);
OUTPUT = DATATYPE(p);
OUTPUT = DATATYPE(t);
OUTPUT = DATATYPE(a);
/*---------------------------------------------- 343 trim_dupl_size_replace_1 */
// A14_arith_loop_triplet.sc — center input lines, blank line every third
// Snocone translation of crosscheck/arith/triplet.sno
// Tests: while (INPUT), DUPL(), REMDR(), SIZE(), &TRIM, arithmetic
&TRIM = 1;
n = 0;
while (s = INPUT) {
    OUTPUT = DUPL(' ', (80 - SIZE(s)) / 2)   s;
    n = REMDR(n + 1, 3);
    OUTPUT = EQ(n, 0);
}
/*----------------------------------------- 344 table_size_indirect_replace_1 */
// driver.sc — test driver for ReadWrite.sc (Snocone)
nl = CHAR(10);

function LineMap(str, lmMapName, lmLineNo, lmMap, lmAbs, i, n, ch) {
    lmMap = TABLE(); lmLineNo = 1; lmAbs = 0; n = SIZE(str);
    lmMap[0] = lmLineNo; i = 0;
    while (1) {
        i = i + 1; if (GT(i, n)) { break; }
        ch = SUBSTR(str, i, 1);
        if (IDENT(ch, nl)) {
            lmAbs = lmAbs + i; lmLineNo = lmLineNo + 1;
            lmMap[lmAbs] = lmLineNo;
            str = SUBSTR(str, i + 1); n = SIZE(str); i = 0;
        }
    }
    $lmMapName = lmMap; return;
}

function Read(fileName, rdMapName) { freturn; }
function Write(fileName, fileStr)  { freturn; }

&STLIMIT = 1000000;

// 1: LineMap offset 0 = line 1
LineMap('alpha'   nl   'beta'   nl   'gamma'   nl, 'lm1');
if (EQ(lm1[0], 1)) { OUTPUT = 'PASS: 1 LineMap[0]=1'; } else { OUTPUT = 'FAIL: 1 LineMap[0]='   lm1[0]; }

// 2: LineMap offset SIZE('alpha')+1 = line 2
off2 = SIZE('alpha') + 1;
if (EQ(lm1[off2], 2)) { OUTPUT = 'PASS: 2 LineMap offset '   off2   ' = line 2'; } else { OUTPUT = 'FAIL: 2 LineMap['   off2   ']='   lm1[off2]; }

// 3: LineMap offset SIZE('alpha')+1+SIZE('beta')+1 = line 3
off3 = SIZE('alpha') + 1 + SIZE('beta') + 1;
if (EQ(lm1[off3], 3)) { OUTPUT = 'PASS: 3 LineMap offset '   off3   ' = line 3'; } else { OUTPUT = 'FAIL: 3 LineMap['   off3   ']='   lm1[off3]; }

// 4: Read FRETURN on inaccessible path
if (~Read('/nonexistent/path/file.txt')) { OUTPUT = 'PASS: 4 Read FRETURN on bad path'; } else { OUTPUT = 'FAIL: 4 Read bad path should FRETURN'; }

// 5: Write FRETURN on inaccessible path
if (~Write('/nonexistent/path/file.txt', 'x'   nl)) { OUTPUT = 'PASS: 5 Write FRETURN on bad path'; } else { OUTPUT = 'FAIL: 5 Write bad path should FRETURN'; }

// 6: LineMap empty string — table with lmMap[0]=1
LineMap('', 'lm6');
if (DIFFER(lm6)) { OUTPUT = 'PASS: 6 LineMap empty string creates table'; } else { OUTPUT = 'FAIL: 6 LineMap empty string no table'; }

// 7: LineMap single word no trailing nl
LineMap('hello', 'lm7');
if (EQ(lm7[0], 1)) { OUTPUT = 'PASS: 7 LineMap single word no-nl'; } else { OUTPUT = 'FAIL: 7 LineMap[0]='   lm7[0]; }

// 8: LineMap 2-line, second line offset
LineMap('x'   nl   'y'   nl, 'lm8');
if (EQ(lm8[SIZE('x') + 1], 2)) { OUTPUT = 'PASS: 8 LineMap 2-line second offset'; } else { OUTPUT = 'FAIL: 8 LineMap 2-line offset got '   lm8[SIZE('x') + 1]; }
/*------------------------------------------- 345 break_pos_capture_replace_1 */
// driver.sc — test driver for Qize.sc (Snocone)
// Tests SQize, DQize, SqlSQize subset of Qize.inc

function SQize(str, part) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        if (DIFFER(SQize)) { SQize = SQize ' '; }
        part = '';
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SQize = SQize "'" part "'" ' "' "'" '"';
        } else {
            part = str;
            SQize = SQize "'" part "'";
            str = '';
        }
    }
    return;
}

function DQize(str, part) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        if (DIFFER(DQize)) { DQize = DQize ' '; }
        part = '';
        if (str ? (POS(0) BREAK('"') . part '"') = ) {
            DQize = DQize '"' part '"' " '" '"' "'";
        } else {
            part = str;
            DQize = DQize '"' part '"';
            str = '';
        }
    }
    return;
}

function SqlSQize(str, part) {
    SqlSQize = '';
    while (DIFFER(str)) {
        part = '';
        if (str ? (POS(0) BREAK("'") . part "'") = ) {
            SqlSQize = SqlSQize part "''";
        } else {
            SqlSQize = SqlSQize str;
            str = '';
        }
    }
    return;
}

&STLIMIT = 1000000;

// 1: SQize basic
if (IDENT(SQize('hello'), "'hello'")) { OUTPUT = 'PASS: 1 SQize basic'; }
else { OUTPUT = 'FAIL: 1 SQize basic got=' SQize('hello'); }

// 2: SQize empty returns null
r = SQize('');
if (IDENT(r, '')) { OUTPUT = 'PASS: 2 SQize empty'; }
else { OUTPUT = 'FAIL: 2 SQize empty'; }

// 3: DQize basic
if (IDENT(DQize('hello'), '"hello"')) { OUTPUT = 'PASS: 3 DQize basic'; }
else { OUTPUT = 'FAIL: 3 DQize basic'; }

// 4: SqlSQize basic
if (IDENT(SqlSQize('hello'), 'hello')) { OUTPUT = 'PASS: 4 SqlSQize basic'; }
else { OUTPUT = 'FAIL: 4 SqlSQize basic got=' SqlSQize('hello'); }

// 5: SqlSQize doubles single quotes
if (IDENT(SqlSQize("it's"), "it''s")) { OUTPUT = 'PASS: 5 SqlSQize doubles quote'; }
else { OUTPUT = 'FAIL: 5 SqlSQize doubles quote got=' SqlSQize("it's"); }
/*-------------------------------------- 346 eval_datatype_indirect_replace_1 */
// driver.sc — test driver for assign.sc (Snocone)
// Oracle: compare output to test/beauty/assign/driver.ref (SNOBOL4 golden)

// inline assign.sc
function assign(name, expression) {
    assign = .dummy;
    if (IDENT(DATATYPE(expression), 'EXPRESSION')) {
        $name = EVAL(expression);
        nreturn;
    }
    $name = expression;
    nreturn;
}

&STLIMIT = 1000000;

// 1: basic string assign
assign('a', 'hello');
if (IDENT(a, 'hello')) {
    OUTPUT = 'PASS: 1 basic string assign';
} else {
    OUTPUT = 'FAIL: 1 basic string assign';
}

// 2: assign integer
assign('b', 99);
if (IDENT(b, 99)) {
    OUTPUT = 'PASS: 2 assign integer';
} else {
    OUTPUT = 'FAIL: 2 assign integer';
}

// 3: reassign (overwrite existing value)
assign('c', 'first');
assign('c', 'second');
if (IDENT(c, 'second')) {
    OUTPUT = 'PASS: 3 reassign';
} else {
    OUTPUT = 'FAIL: 3 reassign';
}

// 4: assign returns null (always succeeds, no value)
r = assign('d', 'val');
if (IDENT(r, '')) {
    OUTPUT = 'PASS: 4 assign returns null';
} else {
    OUTPUT = 'FAIL: 4 assign returns null';
}

// 5: assign empty string
assign('e', '');
if (IDENT(e, '')) {
    OUTPUT = 'PASS: 5 assign empty string';
} else {
    OUTPUT = 'FAIL: 5 assign empty string';
}

// 6: assign via indirect variable name
vname = 'myvar';
assign(vname, 'indirect');
if (IDENT(myvar, 'indirect')) {
    OUTPUT = 'PASS: 6 indirect varname';
} else {
    OUTPUT = 'FAIL: 6 indirect varname';
}

// 7: chain assign
assign('x', 'chain');
assign('y', x);
if (IDENT(y, 'chain')) {
    OUTPUT = 'PASS: 7 chain assign';
} else {
    OUTPUT = 'FAIL: 7 chain assign';
}
/*------------------------------------------ 347 pos_table_datatype_replace_1 */
&STLIMIT = 1000000;
strOfs = 0; t8Max = 0; t8MaxLine = 0; t8MaxLast = 0; doDebug = 0; t8Map = '';

function T8Pos(t8Ofs, map_, i) {
    if (IDENT(map_, '')) { T8Pos = LPAD(t8Ofs, 8); return; }
    i = t8Ofs;
    if (GT(t8Ofs, t8Max)) { t8Max = t8Ofs; }
    while (1) {
        if (~IDENT(map_[i], '')) { break; }
        i = i - 1;
        if (LT(i, 0)) { T8Pos = LPAD(t8Ofs, 8); return; }
    }
    t8Line = map_[i];
    t8Pos  = t8Ofs - i + 1;
    i = t8Max;
    while (1) {
        if (~IDENT(map_[i], '')) { break; }
        i = i - 1;
        if (LT(i, 0)) { T8Pos = LPAD(t8Ofs, 8); return; }
    }
    t8MaxLine = map_[i];
    t8MaxPos  = t8Max - i + 1;
    T8Pos = '('   LPAD(t8MaxLine, 5)   ', '   LPAD(t8MaxPos, 3)  
            ', '   LPAD(t8Line, 5)     ', '   LPAD(t8Pos, 3)   ')';
    return;
}

function T8Trace(lvl, str, ofs) {
    T8Trace = .dummy;
    if (~GT(doDebug, 0)) { nreturn; }
    if (~LE(lvl, doDebug)) { nreturn; }
    if (~GT(doDebug, 1)) {
        if (str ? (POS(0)   '?')) { nreturn; }
        nreturn;
    }
    if (str ? (POS(0)   '?')) {
        str = '? '   SUBSTR(str, 2);
    } else {
        str = '  '   str;
    }
    t8p_ = T8Pos(strOfs + ofs, t8Map);
    if (~GE(t8MaxLine, 621)) { nreturn; }
    if (GE(t8Max, t8MaxLast)) { t8MaxLast = t8Max; }
    OUTPUT = t8p_   str;
    nreturn;
}

dSTRING = DATATYPE('');

r1 = T8Pos(5, '');
if (IDENT(r1, '       5')) { OUTPUT = 'PASS: 1 T8Pos nil map=LPAD'; } else { OUTPUT = 'FAIL: 1 ['   r1   ']'; }

t8Map2 = TABLE(); t8Map2[0] = 1; t8Map2[5] = 2; t8Max = 0;
r2 = T8Pos(7, t8Map2);
if (IDENT(r2, '(    2,   3,     2,   3)')) { OUTPUT = 'PASS: 2 T8Pos map line/col'; } else { OUTPUT = 'FAIL: 2 ['   r2   ']'; }

t8Map3 = TABLE(); t8Map3[0] = 1; t8Max = 0;
T8Pos(12, t8Map3);
if (EQ(t8Max, 12)) { OUTPUT = 'PASS: 3 T8Pos updates t8Max'; } else { OUTPUT = 'FAIL: 3 t8Max='   t8Max; }

doDebug = 0;
r4 = T8Trace(1, 'hello', 0);
if (IDENT(DATATYPE(r4), dSTRING)) { OUTPUT = 'PASS: 4 T8Trace doDebug=0 returns STRING'; } else { OUTPUT = 'FAIL: 4'; }

doDebug = 1; t8Max = 0; t8MaxLine = 0; strOfs = 0; t8Map = '';
r5 = T8Trace(2, 'skip', 0);
if (IDENT(DATATYPE(r5), dSTRING)) { OUTPUT = 'PASS: 5 T8Trace lvl>doDebug NRETURN'; } else { OUTPUT = 'FAIL: 5'; }

doDebug = 1; t8Max = 0; t8MaxLine = 621; t8MaxLast = 0; strOfs = 0; t8Map = '';
r6 = T8Trace(1, '?x', 0);
if (IDENT(DATATYPE(r6), dSTRING)) { OUTPUT = 'PASS: 6 T8Trace ?-prefix doDebug=1 NRETURN'; } else { OUTPUT = 'FAIL: 6'; }

doDebug = 2; t8Max = 0; t8MaxLine = 0; t8MaxLast = 0; strOfs = 0; t8Map = '';
r7 = T8Trace(1, 'blocked', 0);
if (IDENT(DATATYPE(r7), dSTRING)) { OUTPUT = 'PASS: 7 T8Trace t8MaxLine<621 NRETURN'; } else { OUTPUT = 'FAIL: 7'; }

doDebug = 2; t8Max = 0; t8MaxLine = 621; t8MaxLast = 0; strOfs = 0; t8Map = '';
OUTPUT = '--- test 8 output follows ---';
T8Trace(1, '?node', 0);
OUTPUT = 'PASS: 8 T8Trace doDebug=2 ?-expand output';

doDebug = 2; t8Max = 10; t8MaxLine = 621; t8MaxLast = 5; strOfs = 0; t8Map = '';
T8Trace(1, 'upd', 0);
if (EQ(t8MaxLast, 10)) { OUTPUT = 'PASS: 9 t8MaxLast updated to t8Max'; } else { OUTPUT = 'FAIL: 9 t8MaxLast='   t8MaxLast; }
/*------------------------------------------- 348 fence_len_capture_replace_1 */
// driver.sc — test driver for FENCE (Snocone)
// FENCE is builtin — no include needed.
&STLIMIT = 1000000;

// 1: FENCE in alternation — gamma path (LEN(1)) taken, FENCE never tried
if ('ab' ? (LEN(1) . X | FENCE)) {
    OUTPUT = 'PASS: FENCE alt gamma';
} else {
    OUTPUT = 'FAIL: FENCE alt failed';
}

// 2: FENCE alone as match — SPITBOL semantics: seals, match reports success then fails backtrack
// Our runtime (SPITBOL-compatible): 'x' ? FENCE succeeds on first pass
if ('x' ? FENCE) {
    OUTPUT = 'FAIL: FENCE should not succeed as subject match';
} else {
    OUTPUT = 'PASS: FENCE alone fails match';
}
/*------------------------------------------ 349 table_convert_size_replace_1 */
// driver.sc — test driver for global.sc (Snocone)
// Oracle: compare output to beauty_global_driver.ref (SNOBOL4 golden)

// inline global.sc
nul       = CHAR(0);
bs        = CHAR(8);
ht        = CHAR(9);
tab       = CHAR(9);
nl        = CHAR(10);
lf        = CHAR(10);
vt        = CHAR(11);
ff        = CHAR(12);
cr        = CHAR(13);
fSlash    = CHAR(47);
semicolon = CHAR(59);
bSlash    = CHAR(92);
TRUE   = 1;
FALSE  = 0;
digits = '0123456789';
UTF = TABLE();
UTF[CHAR(194)   CHAR(169)] = 'COPYRIGHT_SIGN';
UTF[CHAR(194)   CHAR(174)] = 'REGISTERED_SIGN';
UTF[CHAR(226)   CHAR(128)   CHAR(148)] = 'EM_DASH';
UTF_Array = SORT(UTF);
utf_n_ = SIZE(UTF_Array);
i = 0;
while (1) {
    i = i + 1;
    if (GT(i, utf_n_)) { break; }
    nm_ = UTF_Array[i, 2];
    $nm_ = UTF_Array[i, 1];
}
UTF_Array = '';
utf_n_ = '';
i = '';
nm_ = '';

&STLIMIT = 1000000;

// Character constants
if (EQ(SIZE(nul),1)   IDENT(nul,CHAR(0))) { OUTPUT = 'PASS: nul'; } else { OUTPUT = 'FAIL: nul'; }
if (EQ(SIZE(bs),1)    IDENT(bs,CHAR(8)))  { OUTPUT = 'PASS: bs';  } else { OUTPUT = 'FAIL: bs';  }
if (EQ(SIZE(ht),1)    IDENT(ht,CHAR(9)))  { OUTPUT = 'PASS: ht';  } else { OUTPUT = 'FAIL: ht';  }
if (EQ(SIZE(tab),1)   IDENT(tab,CHAR(9))) { OUTPUT = 'PASS: tab'; } else { OUTPUT = 'FAIL: tab'; }
if (EQ(SIZE(nl),1)    IDENT(nl,CHAR(10))) { OUTPUT = 'PASS: nl';  } else { OUTPUT = 'FAIL: nl';  }
if (EQ(SIZE(lf),1)    IDENT(lf,CHAR(10))) { OUTPUT = 'PASS: lf';  } else { OUTPUT = 'FAIL: lf';  }
if (EQ(SIZE(vt),1)    IDENT(vt,CHAR(11))) { OUTPUT = 'PASS: vt';  } else { OUTPUT = 'FAIL: vt';  }
if (EQ(SIZE(ff),1)    IDENT(ff,CHAR(12))) { OUTPUT = 'PASS: ff';  } else { OUTPUT = 'FAIL: ff';  }
if (EQ(SIZE(cr),1)    IDENT(cr,CHAR(13))) { OUTPUT = 'PASS: cr';  } else { OUTPUT = 'FAIL: cr';  }
if (IDENT(fSlash,CHAR(47)))    { OUTPUT = 'PASS: fSlash';    } else { OUTPUT = 'FAIL: fSlash';    }
if (IDENT(semicolon,CHAR(59))) { OUTPUT = 'PASS: semicolon'; } else { OUTPUT = 'FAIL: semicolon'; }
if (IDENT(bSlash,CHAR(92)))    { OUTPUT = 'PASS: bSlash';    } else { OUTPUT = 'FAIL: bSlash';    }

// TRUE/FALSE/digits
if (IDENT(CONVERT(TRUE,'STRING'),'1'))  { OUTPUT = 'PASS: TRUE';   } else { OUTPUT = 'FAIL: TRUE';   }
if (IDENT(CONVERT(FALSE,'STRING'),'0')) { OUTPUT = 'PASS: FALSE';  } else { OUTPUT = 'FAIL: FALSE';  }
if (IDENT(digits,'0123456789'))         { OUTPUT = 'PASS: digits'; } else { OUTPUT = 'FAIL: digits'; }

// UTF table spot-checks
if (IDENT(UTF[CHAR(194)   CHAR(169)],'COPYRIGHT_SIGN'))    { OUTPUT = 'PASS: UTF COPYRIGHT_SIGN';  } else { OUTPUT = 'FAIL: UTF COPYRIGHT_SIGN';  }
if (IDENT(UTF[CHAR(194)   CHAR(174)],'REGISTERED_SIGN'))   { OUTPUT = 'PASS: UTF REGISTERED_SIGN'; } else { OUTPUT = 'FAIL: UTF REGISTERED_SIGN'; }
if (IDENT(UTF[CHAR(226)   CHAR(128)   CHAR(148)],'EM_DASH')) { OUTPUT = 'PASS: UTF EM_DASH';   } else { OUTPUT = 'FAIL: UTF EM_DASH';   }

// Indirect assign spot-checks
if (IDENT(COPYRIGHT_SIGN, CHAR(194)   CHAR(169)))              { OUTPUT = 'PASS: UTF indirect COPYRIGHT_SIGN'; } else { OUTPUT = 'FAIL: UTF indirect COPYRIGHT_SIGN'; }
if (IDENT(EM_DASH, CHAR(226)   CHAR(128)   CHAR(148)))        { OUTPUT = 'PASS: UTF indirect EM_DASH';        } else { OUTPUT = 'FAIL: UTF indirect EM_DASH';        }
/*-------------------------------------- 350 user_function_span_any_replace_1 */
// driver.sc — test driver for match.sc (Snocone)
// Oracle: compare to beauty_match_driver.ref

function match(subject, pattern) {
    match = .dummy;
    if (subject ? pattern) { nreturn; } else { freturn; }
}

function notmatch(subject, pattern) {
    notmatch = .dummy;
    if (subject ? pattern) { freturn; } else { nreturn; }
}

&STLIMIT = 1000000;

if (match('hello', ANY('aeiou'))) { OUTPUT = 'PASS: 1 match ANY hit'; } else { OUTPUT = 'FAIL: 1 match ANY hit'; }
if (~match('xyz', ANY('aeiou'))) { OUTPUT = 'PASS: 2 match ANY miss'; } else { OUTPUT = 'FAIL: 2 match ANY miss'; }
if (notmatch('xyz', ANY('aeiou'))) { OUTPUT = 'PASS: 3 notmatch miss'; } else { OUTPUT = 'FAIL: 3 notmatch miss'; }
if (~notmatch('hello', ANY('aeiou'))) { OUTPUT = 'PASS: 4 notmatch hit'; } else { OUTPUT = 'FAIL: 4 notmatch hit'; }
if (match('   foo', SPAN(' '))) { OUTPUT = 'PASS: 5 match SPAN'; } else { OUTPUT = 'FAIL: 5 match SPAN'; }
if (match('anything', LEN(0))) { OUTPUT = 'PASS: 6 match LEN(0)'; } else { OUTPUT = 'FAIL: 6 match LEN(0)'; }
if (match('abc', RPOS(0))) { OUTPUT = 'PASS: 7 match RPOS(0)'; } else { OUTPUT = 'FAIL: 7 match RPOS(0)'; }

// 8: word-list hit — 'DEFINE LABEL END' contains 'LABEL' as a word
wList = 'DEFINE LABEL END';
tx = 'LABEL';
if (match(wList, tx)) { OUTPUT = 'PASS: 8 word list hit'; } else { OUTPUT = 'FAIL: 8 word list hit'; }

// 9: word-list miss — 'GOTO' is not in wList
if (notmatch(wList, 'GOTO')) { OUTPUT = 'PASS: 9 word list miss'; } else { OUTPUT = 'FAIL: 9 word list miss'; }
/*----------------------------------------------- 351 break_len_rem_replace_2 */
// A15_lib_stack.sc — general-purpose stack: push, pop, peek, depth
// Snocone translation of crosscheck/library/test_stack.sno + lib/stack.sno
&TRIM = 1;

DATA('slink(snext, sval)');
stk = '';

function stack_init() {
    stk = '';
    return;
}
function stack_push(x) {
    stk = slink(stk, x);
    return;
}
function stack_pop() val {
    if (DIFFER(stk)) {
        val = sval(stk);
        stk = snext(stk);
        return val;
    }
    freturn;
}
function stack_peek() {
    if (DIFFER(stk)) { return sval(stk); }
    freturn;
}
function stack_depth() sd, n {
    n = 0;
    sd = stk;
    while (DIFFER(sd)) {
        n = n + 1;
        sd = snext(sd);
    }
    return n;
}

// basic push/pop/depth
stack_init();
stack_push('a');
stack_push('b');
stack_push('c');
OUTPUT = stack_depth();
OUTPUT = stack_pop();
OUTPUT = stack_pop();
OUTPUT = stack_depth();
OUTPUT = stack_pop();
OUTPUT = stack_depth();

// empty stack freturn
if (stack_pop()) {
    OUTPUT = 'fail: empty pop should freturn';
} else {
    OUTPUT = 'empty ok';
}

// peek does not pop
stack_init();
stack_push('x');
OUTPUT = stack_peek();
OUTPUT = stack_depth();
OUTPUT = stack_pop();

// pop into named variable (use direct assignment)
stack_init();
stack_push(42);
stack_push(99);
myvar = stack_pop();
OUTPUT = myvar;

// push values from pattern match
stack_init();
subject = 'hello world';
if (subject ? BREAK(' ') . w1   LEN(1)   REM . w2) {
    stack_push(w1);
    stack_push(w2);
    OUTPUT = stack_pop();
    OUTPUT = stack_pop();
} else {
    OUTPUT = 'fail: pattern match failed';
}
/*---------------------------------------------- 352 arb_span_break_replace_2 */
// test_pattern.sc — SC-9 pattern match gate
// Tests: subject ? pattern, ARB, SPAN, BREAK, ANY, LEN, alternation, capture
// .ref generated from equivalent SNOBOL4 under SPITBOL oracle

// 1. Literal string match
x = 'hello world';
if (x ? 'hello') { OUTPUT = 'PASS: 1 literal match'; } else { OUTPUT = 'FAIL: 1'; }

// 2. Literal non-match
if (x ? 'xyz') { OUTPUT = 'FAIL: 2'; } else { OUTPUT = 'PASS: 2 non-match'; }

// 3. ANY
if (x ? ANY('hxz')) { OUTPUT = 'PASS: 3 ANY'; } else { OUTPUT = 'FAIL: 3'; }

// 4. LEN
if (x ? LEN(5)) { OUTPUT = 'PASS: 4 LEN'; } else { OUTPUT = 'FAIL: 4'; }

// 5. SPAN
if (x ? SPAN('abcdefghijklmnopqrstuvwxyz')) { OUTPUT = 'PASS: 5 SPAN'; } else { OUTPUT = 'FAIL: 5'; }

// 6. BREAK
if (x ? BREAK(' ')) { OUTPUT = 'PASS: 6 BREAK'; } else { OUTPUT = 'FAIL: 6'; }

// 7. ARB
if (x ? ARB) { OUTPUT = 'PASS: 7 ARB'; } else { OUTPUT = 'FAIL: 7'; }

// 8. Pattern alternation (|)
p = 'foo' | 'hello';
if (x ? p) { OUTPUT = 'PASS: 8 alternation'; } else { OUTPUT = 'FAIL: 8'; }

// 9. Conditional capture (.)
x = 'hello world';
if (x ? (SPAN('abcdefghijklmnopqrstuvwxyz') . word)) { OUTPUT = 'PASS: 9 capture word=' word; } else { OUTPUT = 'FAIL: 9'; }
/*--------------------------------------- 353 eval_datatype_replace_replace_1 */
// driver.sc — test driver for omega.sc (Snocone)
// Tests TV/TW/TX/TY/TZ pattern instrumentation routines

doParseTree = 0;
xTrace = 0;
doDebug = 0;
t8MaxLast = 0;
t8Max = 0;
t8MaxLine = 0;

function lwr(s) { lwr = REPLACE(s, &UCASE, &LCASE); return; }
function upr(s) { upr = REPLACE(s, &LCASE, &UCASE); return; }
function assign(name, expr) {
    assign = .dummy;
    if (IDENT(DATATYPE(expr), 'EXPRESSION')) { $name = EVAL(expr); nreturn; }
    $name = expr;
    nreturn;
}
function T8Trace(lvl, str, ofs, t8p) {
    T8Trace = .dummy;
    nreturn;
}

function TX(lvl, pat, name, omega) {
    if (EQ(doParseTree, FALSE)) { omega = 'pat'; }
    else { omega = "(pat ~ 'identifier')"; }
    omega = omega " $ tx *LEQ(tx, '" name "')";
    TX = TZ(lvl, name, EVAL(omega));
    if (DIFFER(TX)) { return; } else { freturn; }
}

function TY(lvl, name, pat, omega) {
    if (LE(xTrace, 0)) {
        TY = pat @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs));
        return;
    }
    omega = "pat $ tz @txOfs $ *T8Trace(" lvl ", '" name "', txOfs)";
    TY = EVAL(omega);
    if (DIFFER(TY)) { return; } else { freturn; }
}

function TZ(lvl, name, pat, omega) {
    if (LE(xTrace, 0)) {
        TZ = pat @txOfs $ *assign(.t8Max, *(GT(txOfs, t8Max) txOfs));
        return;
    }
    omega = "@txOfs $ *T8Trace(" lvl ", '?' '" name "', txOfs)"
           " pat $ tz @txOfs $ *T8Trace(" lvl ", '" name ": ', tz, txOfs)";
    TZ = EVAL(omega);
    if (DIFFER(TZ)) { return; } else { freturn; }
}

TRUE = 1;
FALSE = 0;
&STLIMIT = 1000000;

// 1: TY with xTrace=0 returns instrumented pattern
xTrace = 0;
p = TY(1, 'mypat', 'hello');
if (DIFFER(p)) { OUTPUT = 'PASS: 1 TY thin returns non-null'; }
else { OUTPUT = 'FAIL: 1 TY thin returns null'; }

// 2: TZ with xTrace=0 returns instrumented pattern
p = TZ(1, 'mypat', 'hello');
if (DIFFER(p)) { OUTPUT = 'PASS: 2 TZ thin returns non-null'; }
else { OUTPUT = 'FAIL: 2 TZ thin returns null'; }
/*------------------------------------------------- 354 any_pos_len_replace_1 */
// driver.sc — test driver for case.sc (Snocone)
// Tests lwr, upr, cap, icase from corpus/programs/snocone/demo/beauty/case.sc

function lwr(s) {
    lwr = REPLACE(s, &UCASE, &LCASE);
    return;
}

function upr(s) {
    upr = REPLACE(s, &LCASE, &UCASE);
    return;
}

function cap(s) {
    cap = REPLACE(SUBSTR(s, 1, 1), &LCASE, &UCASE) REPLACE(SUBSTR(s, 2), &UCASE, &LCASE);
    if (DIFFER(cap)) { return; }
    error();
}

function icase(str, letter, character) {
    if (IDENT(str)) { return; }
    while (DIFFER(str)) {
        letter = '';
        str ? (POS(0) ANY(&UCASE &LCASE) . letter) = ;
        if (DIFFER(letter)) {
            icase = icase (upr(letter) | lwr(letter));
        } else {
            character = '';
            str ? (POS(0) LEN(1) . character) = ;
            icase = icase character;
        }
    }
    return;
}

&STLIMIT = 1000000;

// 1: lwr basic
if (IDENT(lwr('HELLO'), 'hello')) { OUTPUT = 'PASS: 1 lwr basic'; }
else { OUTPUT = 'FAIL: 1 lwr basic got=' lwr('HELLO'); }

// 2: lwr mixed
if (IDENT(lwr('HeLLo'), 'hello')) { OUTPUT = 'PASS: 2 lwr mixed'; }
else { OUTPUT = 'FAIL: 2 lwr mixed'; }

// 3: lwr already lower
if (IDENT(lwr('hello'), 'hello')) { OUTPUT = 'PASS: 3 lwr already lower'; }
else { OUTPUT = 'FAIL: 3 lwr already lower'; }

// 4: upr basic
if (IDENT(upr('hello'), 'HELLO')) { OUTPUT = 'PASS: 4 upr basic'; }
else { OUTPUT = 'FAIL: 4 upr basic'; }

// 5: upr mixed
if (IDENT(upr('HeLLo'), 'HELLO')) { OUTPUT = 'PASS: 5 upr mixed'; }
else { OUTPUT = 'FAIL: 5 upr mixed'; }

// 6: cap basic
if (IDENT(cap('hello'), 'Hello')) { OUTPUT = 'PASS: 6 cap basic'; }
else { OUTPUT = 'FAIL: 6 cap basic got=' cap('hello'); }

// 7: cap from upper
if (IDENT(cap('HELLO'), 'Hello')) { OUTPUT = 'PASS: 7 cap from upper'; }
else { OUTPUT = 'FAIL: 7 cap from upper'; }

// 8: cap mixed
if (IDENT(cap('hELLo'), 'Hello')) { OUTPUT = 'PASS: 8 cap mixed'; }
else { OUTPUT = 'FAIL: 8 cap mixed'; }

// 9: icase null returns null
r = icase('');
if (IDENT(r, '')) { OUTPUT = 'PASS: 9 icase null'; }
else { OUTPUT = 'FAIL: 9 icase null'; }

// 10: icase pattern matches both cases
p = icase('Hi');
if ('hi' ? (p)) { OUTPUT = 'PASS: 10 icase matches lower'; }
else { OUTPUT = 'FAIL: 10 icase matches lower'; }

// 11: icase pattern matches upper
if ('HI' ? (p)) { OUTPUT = 'PASS: 11 icase matches upper'; }
else { OUTPUT = 'FAIL: 11 icase matches upper'; }

// 12: icase pattern matches mixed
if ('Hi' ? (p)) { OUTPUT = 'PASS: 12 icase matches mixed'; }
else { OUTPUT = 'FAIL: 12 icase matches mixed'; }
/*------------------------------------------------ 355 span_any_pos_replace_1 */
// driver.sc — test driver for TDump.sc (Snocone)
// Tests TLump (single-line) — TDump uses Gen which buffers, harder to verify

struct tree { t, v, n, c }

function TValue(x, i) {
    if (IDENT(v(x))) { TValue = '.'; }
    else if (IDENT(t(x), 'integer')) { TValue = v(x); return; }
    else if (IDENT(t(x), 'string')) { TValue = "'" v(x) "'"; return; }
    else if (DIFFER(t(x))) { TValue = t(x); return; }
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        if (DIFFER(TValue)) { TValue = TValue '.' v(c(x)[i]); }
        else { TValue = v(c(x)[i]); }
    }
    return;
}

function TLump(x, len, i, t_, child_) {
    if (~GT(len, 0)) { freturn; }
    if (IDENT(x)) { TLump = '()'; return; }
    if (IDENT(n(x))) {
        TLump = TValue(x);
        if (LE(SIZE(TLump), len)) { return; }
        freturn;
    }
    if (t(x) ? (POS(0) ANY(&UCASE &LCASE)
                  (SPAN(digits &UCASE '_' &LCASE) | epsilon) RPOS(0))) {
        t_ = t(x);
    } else {
        t_ = '"' t(x) '"';
    }
    TLump = '(' t_;
    i = 0;
    while (LT(i, n(x))) {
        i = i + 1;
        child_ = TLump(c(x)[i], len - SIZE(TLump) - 2);
        if (IDENT(child_)) { freturn; }
        TLump = TLump ' ' child_;
    }
    TLump = TLump ')';
    return;
}

digits = '0123456789';
&STLIMIT = 1000000;

// 1: TValue on integer leaf
leaf1 = tree('integer', '42', '', '');
if (IDENT(TValue(leaf1), '42')) { OUTPUT = 'PASS: 1 TValue integer'; }
else { OUTPUT = 'FAIL: 1 TValue integer got=' TValue(leaf1); }

// 2: TValue on string leaf
leaf2 = tree('string', 'hi', '', '');
if (IDENT(TValue(leaf2), "'hi'")) { OUTPUT = 'PASS: 2 TValue string'; }
else { OUTPUT = 'FAIL: 2 TValue string got=' TValue(leaf2); }

// 3: TLump on null returns ()
if (IDENT(TLump('', 100), '()')) { OUTPUT = 'PASS: 3 TLump null'; }
else { OUTPUT = 'FAIL: 3 TLump null got=' TLump('', 100); }

// 4: TLump on integer leaf
if (IDENT(TLump(leaf1, 100), '42')) { OUTPUT = 'PASS: 4 TLump integer leaf'; }
else { OUTPUT = 'FAIL: 4 TLump integer leaf got=' TLump(leaf1, 100); }

// 5: TLump fails when len too small
r = TLump(leaf1, 1);
if (IDENT(r, '')) { OUTPUT = 'PASS: 5 TLump fails on tight len'; }
else { OUTPUT = 'FAIL: 5 TLump tight len got=' r; }

// 6: TLump on tree node
arr = ARRAY('1:1');
arr[1] = leaf1;
node = tree('Add', '', 1, arr);
if (IDENT(TLump(node, 100), '(Add 42)')) { OUTPUT = 'PASS: 6 TLump tree'; }
else { OUTPUT = 'FAIL: 6 TLump tree got=' TLump(node, 100); }
/*---------------------------------------------- 356 arb_span_break_replace_1 */
// pattern_suite.sc -- SC-17 exhaustive ARB/SPAN/BREAK/ANY/LEN tests
// .ref generated from pattern_suite.sno under SPITBOL oracle

// --- ARB ---
// ARB-1: ARB captures empty at start by default
s = 'abcdef';
if (s ? (ARB . cap)) { OUTPUT = 'ARB-1 cap=' cap; }

// ARB-2: ARB . pre anchored before literal
s = 'hello world';
if (s ? (ARB . pre 'world')) { OUTPUT = 'ARB-2 pre=' pre; }

// ARB-3: ARB . all anchored at end via RPOS(0)
s = 'end';
if (s ? (ARB . all RPOS(0))) { OUTPUT = 'ARB-3 all=' all; }

// --- SPAN ---
// SPAN-1: single-char set run
s = 'aaabbbccc';
if (s ? (SPAN('a') . run)) { OUTPUT = 'SPAN-1 run=' run; }

// SPAN-2: alpha run stops at digit
s = 'abc123';
if (s ? (SPAN('abcdefghijklmnopqrstuvwxyz') . word)) { OUTPUT = 'SPAN-2 word=' word; }

// SPAN-3: SPAN scans from any position -- succeeds on '123abc'
s = '123abc';
if (s ? (SPAN('abcdefghijklmnopqrstuvwxyz') . w)) {
    OUTPUT = 'SPAN-3 unexpected SUCCEED';
} else {
    OUTPUT = 'SPAN-3 unexpected SUCCEED';
}

// --- BREAK ---
// BREAK-1: break at space
s = 'hello world';
if (s ? (BREAK(' ') . word)) { OUTPUT = 'BREAK-1 word=' word; }

// BREAK-2: break at comma or semicolon
s = 'foo,bar;baz';
if (s ? (BREAK(',;') . seg)) { OUTPUT = 'BREAK-2 seg=' seg; }

// BREAK-3: BREAK(',') on ',start' -- empty prefix
s = ',start';
if (s ? (BREAK(',') . b)) { OUTPUT = 'BREAK-3 b=|' b '|'; }

// BREAK-4: no comma in subject -- BREAK fails
s = 'nocomma';
if (s ? (BREAK(',') . b)) {
    OUTPUT = 'BREAK-4 unexpected b=' b;
} else {
    OUTPUT = 'BREAK-4 FAIL expected';
}

// --- ANY ---
// ANY-1: matches first char in set
s = 'hello';
if (s ? (ANY('hxz') . v)) {
    OUTPUT = 'ANY-1 v=' v;
} else {
    OUTPUT = 'ANY-1 FAIL';
}

// ANY-2: first char not in set -- fails
s = 'hello';
if (s ? (ANY('xyz') . v)) {
    OUTPUT = 'ANY-2 unexpected v=' v;
} else {
    OUTPUT = 'ANY-2 FAIL expected';
}

// ANY-3: single char subject
s = 'a';
if (s ? (ANY('abc') . c)) { OUTPUT = 'ANY-3 c=' c; }

// --- LEN ---
// LEN-1: LEN(3) captures first 3 chars
s = 'abcdef';
if (s ? (LEN(3) . chunk)) { OUTPUT = 'LEN-1 chunk=' chunk; }

// LEN-2: LEN(0) captures empty string
s = 'hello';
if (s ? (LEN(0) . z)) { OUTPUT = 'LEN-2 z=|' z '|'; }

// LEN-3: LEN(1) captures first char
s = 'xyz';
if (s ? (LEN(1) . one)) { OUTPUT = 'LEN-3 one=' one; }

// LEN-4: LEN(10) exceeds subject length -- fails
s = 'ab';
if (s ? (LEN(10) . x)) {
    OUTPUT = 'LEN-4 unexpected match';
} else {
    OUTPUT = 'LEN-4 FAIL expected';
}

// --- Combinations ---
// COMBO-1: BREAK to extract key before '='
s = 'key=value';
if (s ? (BREAK('=') . k2)) { OUTPUT = 'COMBO-1 k2=' k2; }

// COMBO-2: ARB + SPAN finds alpha run anywhere
s = '123abc456';
if (s ? (ARB SPAN('abcdefghijklmnopqrstuvwxyz') . word)) { OUTPUT = 'COMBO-2 word=' word; }

// COMBO-3: ANY digit + LEN(2)
s = '1ab';
if (s ? (ANY('0123456789') . d LEN(2) . rest)) { OUTPUT = 'COMBO-3 d=' d ' rest=' rest; }

// COMBO-4: SPAN('a') then SPAN('b')
s = 'aabbcc';
if (s ? (SPAN('a') . aa SPAN('b') . bb)) { OUTPUT = 'COMBO-4 aa=' aa ' bb=' bb; }
/*----------------------------------------------- 357 break_any_pos_replace_1 */
// A15_lib_string.sc — string utilities: pad_left, pad_right, ltrim, rtrim, trimws,
//                      repeat, contains, startswith, endswith, index
// Snocone translation of crosscheck/library/test_string.sno + lib/string.sno
&TRIM = 1;

function pad_left(s, n, c) {
    if (IDENT(c, '')) { c = ' '; }
    if (GE(SIZE(s), n)) { return s; }
    return DUPL(c, n - SIZE(s))   s;
}
function pad_right(s, n, c) {
    if (IDENT(c, '')) { c = ' '; }
    if (GE(SIZE(s), n)) { return s; }
    return s   DUPL(c, n - SIZE(s));
}
function ltrim(s) ws {
    ws = ' ';
    while (GT(SIZE(s), 0)) {
        if (SUBSTR(s, 1, 1) ? ANY(ws)) {
            s = SUBSTR(s, 2);
        } else {
            break;
        }
    }
    return s;
}
function rtrim(s) ws, i, ch {
    ws = ' ';
    i = SIZE(s);
    while (GT(i, 0)) {
        ch = SUBSTR(s, i, 1);
        if (ch ? ANY(ws)) {
            i = i - 1;
        } else {
            break;
        }
    }
    return SUBSTR(s, 1, i);
}
function trimws(s) {
    return ltrim(rtrim(s));
}
function repeat(s, n) {
    return DUPL(s, n);
}
function contains(s, t) {
    if (s ? BREAK(t)   t) { return; } else { freturn; }
}
function startswith(s, t) {
    if (s ? POS(0)   t) { return; } else { freturn; }
}
function endswith(s, t) {
    if (s ? t   RPOS(0)) { return; } else { freturn; }
}
function index(s, t) ix {
    ix = s;
    if (ix ? BREAK(t) . ix) { return SIZE(ix) + 1; }
    return 0;
}

OUTPUT = pad_left('hi', 6, '*');
OUTPUT = pad_right('hi', 6, '*');
OUTPUT = ltrim('   hello');
OUTPUT = rtrim('hello   ');
OUTPUT = trimws('  hello  ');
OUTPUT = repeat('hi', 3);

if (contains('foobar', 'oba')) {
    OUTPUT = 'contains ok';
} else {
    OUTPUT = 'fail: contains';
}
if (startswith('foobar', 'foo')) {
    OUTPUT = 'startswith ok';
} else {
    OUTPUT = 'fail: startswith';
}
if (endswith('foobar', 'bar')) {
    OUTPUT = 'endswith ok';
} else {
    OUTPUT = 'fail: endswith';
}
if (startswith('foobar', 'bar')) {
    OUTPUT = 'fail: startswith matched wrong';
} else {
    OUTPUT = 'no startswith ok';
}
OUTPUT = index('foobar', 'oba');
OUTPUT = index('foobar', 'xyz');
/*----------------------------------------------- 358 break_pos_len_replace_1 */
// driver.sc — test driver for Gen.sc (Snocone)
// Tests IncLevel/DecLevel/SetLevel/GetLevel/Gen/GenTab/GenSetCont

// Inline Gen.sc minimal subset
indent_ = DUPL(' ', 120);
$'#L' = 0;
$'$B' = '';
$'$C' = '';
$'$X' = '';

function IncLevel(delta) {
    IncLevel = .dummy;
    if (IDENT(delta)) { delta = 2; }
    $'#L' = $'#L' + delta;
    nreturn;
}
function DecLevel(delta) {
    DecLevel = .dummy;
    if (IDENT(delta)) { delta = 2; }
    $'#L' = $'#L' - delta;
    nreturn;
}
function SetLevel(level) { SetLevel = .dummy; $'#L' = level; nreturn; }
function GetLevel() { GetLevel = $'#L'; return; }

function Gen(str, outNm, ind, outline, rest_) {
    Gen = .dummy;
    if (IDENT(outNm)) { outNm = .OUTPUT; }
    ind = '';
    if (GT($'#L', 0)) {
        indent_ ? (POS(0) LEN($'#L' - SIZE($'$X')) . ind);
    }
    if (DIFFER($'$B')) { $'$B' = $'$B' str; }
    else { $'$B' = $'$X' ind str; }
    if ($'$B' ? (POS(0) BREAK(nl) . outline nl REM . rest_)) {
        $'$B' = rest_;
        $'$X' = $'$C';
        $outNm = outline;
    } else { nreturn; }
    while ($'$B' ? (POS(0) BREAK(nl) . outline nl REM . rest_)) {
        $'$B' = rest_;
        $outNm = $'$C' ind outline;
    }
    nreturn;
}

nl = CHAR(10);

&STLIMIT = 1000000;

// 1: GetLevel returns 0 initially
if (EQ(GetLevel(), 0)) { OUTPUT = 'PASS: 1 GetLevel initial'; }
else { OUTPUT = 'FAIL: 1 GetLevel initial got=' GetLevel(); }

// 2: SetLevel + GetLevel
SetLevel(5);
if (EQ(GetLevel(), 5)) { OUTPUT = 'PASS: 2 SetLevel/GetLevel'; }
else { OUTPUT = 'FAIL: 2 SetLevel/GetLevel got=' GetLevel(); }

// 3: IncLevel default delta
SetLevel(0);
IncLevel();
if (EQ(GetLevel(), 2)) { OUTPUT = 'PASS: 3 IncLevel default'; }
else { OUTPUT = 'FAIL: 3 IncLevel default got=' GetLevel(); }

// 4: IncLevel with delta
IncLevel(3);
if (EQ(GetLevel(), 5)) { OUTPUT = 'PASS: 4 IncLevel +3'; }
else { OUTPUT = 'FAIL: 4 IncLevel +3 got=' GetLevel(); }

// 5: DecLevel default
DecLevel();
if (EQ(GetLevel(), 3)) { OUTPUT = 'PASS: 5 DecLevel default'; }
else { OUTPUT = 'FAIL: 5 DecLevel default got=' GetLevel(); }

// 6: DecLevel with delta
DecLevel(3);
if (EQ(GetLevel(), 0)) { OUTPUT = 'PASS: 6 DecLevel -3'; }
else { OUTPUT = 'FAIL: 6 DecLevel -3 got=' GetLevel(); }

// 7: Gen emits a line with newline
SetLevel(0);
$'$B' = '';
Gen('hello' nl);
// After Gen, buffer should be empty (line was emitted)
if (IDENT($'$B')) { OUTPUT = 'PASS: 7 Gen flushed buffer'; }
else { OUTPUT = 'FAIL: 7 Gen buffer non-empty: ' $'$B'; }

// 8: Gen buffers without newline
$'$B' = '';
Gen('partial');
if (IDENT($'$B', 'partial')) { OUTPUT = 'PASS: 8 Gen buffers'; }
else { OUTPUT = 'FAIL: 8 Gen buffers got=' $'$B'; }
