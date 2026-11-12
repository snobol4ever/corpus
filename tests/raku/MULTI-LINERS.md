## parse_census__bare_module

```Raku
module A { } say "hi";
```

## parser__atom_int

```Raku
42;
```

## parser__atom_str

```Raku
"hello";
```

## parser__spurt_file

```Raku
spurt("/tmp/out.txt", "hello");
```

## parser_coverage__stmt_ctrl_CATCH_free

```Raku
CATCH { say "caught"; }
```

## parser_coverage__stmt_ctrl_CONTROL

```Raku
CONTROL { say "control"; }
```

## parser_coverage__stmt_ctrl_QUIT

```Raku
QUIT { say "quit"; }
```

## parser_coverage__stmt_ctrl_import

```Raku
import MyModule;
```

## parser_coverage__stmt_ctrl_need

```Raku
need Foo::Bar;
```

## parser_coverage__stmt_ctrl_no

```Raku
no strict;
```

## parser_coverage__stmt_ctrl_require

```Raku
require Some::Module;
```

## parser_coverage__stmt_ctrl_use

```Raku
use v6;
```

## ladder__rung00_hello_print_no_newline

```Raku
print "no newline";
say "end";
```

```stdout
no newlineend
```

## ladder__rung025_kw_nan_nan_sign

```Raku
say NaN.sign;
say NaN.sign.WHAT;
```

```stdout
NaN
(Num)
```

## ladder__rung026_lit_radix_call_big

```Raku
say :16("ffffffffffffffffffff");
say :36("zzzzzzzzzzzzzzzz");
```

```stdout
1208925819614629174706175
7958661109946400884391935
```

## ladder__rung026_lit_radix_fraction_type

```Raku
say :16<ff.8>.WHAT;
say :3<1.1>.WHAT;
```

```stdout
(Rat)
(Rat)
```

## ladder__rung026_lit_radix_fraction_underscore

```Raku
say :16<f_f.f_f>;
say :10<1_0.0_5>.nude;
```

```stdout
255.996094
(201 20)
```

## ladder__rung026_lit_radix_scale_big

```Raku
say :16<ffffffffffffffffff*2**4>;
say :16<ffffffffffffffffff.8>;
```

```stdout
75557863725914323419120
4722366482869645213695.5
```

## ladder__rung027_quote_q_adverb_order

```Raku
say Q:q:b/a\\b\tc/;
say Q:b:q/a\\b\tc/;
```

```stdout
a\b	c
a\b	c
```

## ladder__rung027_quote_q_b_adverb

```Raku
say Q:b/a\tb\\c\x41/;
say Q:b/x\"y\|z\ w/;
```

```stdout
a	b\cA
x"y|z w
```

## ladder__rung027_quote_q_negated_adverb

```Raku
say Q:b:!b/a\nb/;
say Q:qq:!b/a\nb/;
```

```stdout
a\nb
a\nb
```

## ladder__rung027_quote_q_q_adverb

```Raku
say Q:q/a\\b a\/b a\tb/;
say Q:q{a\{b\}c};
```

```stdout
a\b a/b a\tb
a{b}c
```

## ladder__rung027_quote_q_q_adverb_unicode

```Raku
say Q:q«a\»b\«c»;
say Q:q<a\>b>;
```

```stdout
a»b«c
a>b
```

## ladder__rung027_quote_q_spaced_adverbs

```Raku
say Q :qq /a\tb/;
say Q :w /a b/.elems;
```

```stdout
a	b
2
```

## ladder__rung028_quote_qq_escape_octal

```Raku
say qq/\o101\o[102,103]/;
say qq/a\o40b/;
```

```stdout
ABC
a b
```

## ladder__rung029_quote_qw_backslash_stays_or_collapses

```Raku
say qw<a\\b c>.raku;
say qw<a\ b c>.raku;
```

```stdout
("a\\b", "c")
("a\\", "b", "c")
```

## ladder__rung029_quote_qw_delimiter_comma

```Raku
say qw,a b,.raku;
say qw,,.elems;
```

```stdout
("a", "b")
0
```

## ladder__rung029_quote_qw_delimiter_semicolon

```Raku
say qw;a b;.raku;
say qw ; c d ;.raku;
```

```stdout
("a", "b")
("c", "d")
```

## ladder__rung029_quote_qw_doubled_brackets

```Raku
say qw<<a b>>.raku;
say qw{{a b}}.raku;
```

```stdout
("a", "b")
("a", "b")
```

## ladder__rung029_quote_qw_empty_body

```Raku
say qw<>.elems;
say qw{ }.elems;
```

```stdout
0
0
```

## ladder__rung029_quote_qw_escaped_closer

```Raku
say qw<a\>b c>.raku;
say qw/a\/b c/.raku;
```

```stdout
("a>b", "c")
("a/b", "c")
```

## ladder__rung029_quote_qw_escaped_doubled_delimiter

```Raku
say qw<<a\>>b c>>.raku;
say qw{{a\{{b c}}.raku;
```

```stdout
("a>>b", "c")
("a\{\{b", "c")
```

## ladder__rung029_quote_qw_escaped_multibyte_delimiter

```Raku
say qw«a\»b c».raku;
say qw｢a\｣b｣.raku;
```

```stdout
("a»b", "c")
"a｣b"
```

## ladder__rung029_quote_qw_escaped_opener

```Raku
say qw<a\<b c>.raku;
say qw[a\[b c].raku;
```

```stdout
("a<b", "c")
("a[b", "c")
```

## ladder__rung029_quote_qw_integer_words_are_str

```Raku
say qw<1 2>[1].WHAT;
say qw<0x10 1e3>.raku;
```

```stdout
(Str)
("0x10", "1e3")
```

## ladder__rung029_quote_qw_nested_brackets

```Raku
say qw{a {b c} d}.raku;
say qw[a [b c] d].raku;
```

```stdout
("a", "\{b", "c}", "d")
("a", "[b", "c]", "d")
```

## ladder__rung029_quote_qw_single_word_is_str

```Raku
say qw<a>.WHAT;
say qw<1>.WHAT;
```

```stdout
(Str)
(Str)
```

## ladder__rung029_quote_qw_spaced_opener

```Raku
say qw <a b>.raku;
say qw {c d}.raku;
```

```stdout
("a", "b")
("c", "d")
```

## ladder__rung029_quote_qw_words_decimal_is_str

```Raku
say qw<1.5>.WHAT;
say qw<1.50>;
```

```stdout
(Str)
1.50
```

## ladder__rung029_quote_qw_words_fraction_is_str

```Raku
say qw<1/2>.WHAT;
say qw[3/4].raku;
```

```stdout
(Str)
"3/4"
```

## ladder__rung029_quote_qw_words_signed_decimal_is_str

```Raku
say qw<-1.5>.raku;
say qw< +1.5 >.raku;
```

```stdout
"-1.5"
"+1.5"
```

## ladder__rung02_arithmetic_is_prime_coerces_a_string_a_num_and_a_rat

```Raku
say "2.0".is-prime, " ", "2.1".is-prime, " ", "-4.0".is-prime, " ", 7e0.is-prime, " ", 6.5.is-prime, " ", 3.0.is-prime;
say "".is-prime, " ", "5".is-prime;
```

```stdout
True False False True False True
False True
```

## ladder__rung02_arithmetic_is_prime_decides_a_bignum_and_a_full_width_integer

```Raku
say 45724385972894572891.is-prime, " ", (2**127 - 1).is-prime, " ", 32416187773.is-prime;
say 1000000007.is-prime, " ", 18446744073709551557.is-prime, " ", 9223372036854775783.is-prime;
```

```stdout
False True True
True True True
```

## ladder__rung02_arithmetic_negative_operands

```Raku
say -7 % 2;
say -7 div 2;
```

```stdout
1
-4
```

## ladder__rung03_strings_a_decoded_dollar_in_a_double_quoted_string_is_literal

```Raku
say "\c[DOLLAR SIGN]\c[LATIN SMALL LETTER I]";
say "a\x[24]i b";
```

```stdout
$i
a$i b
```

## ladder__rung06_control_begin_enter_and_leave_phasers_run_inside_an_eval_string

```Raku
use MONKEY-SEE-NO-EVAL; EVAL q{ BEGIN { say "y" } }; EVAL q{ ENTER { say "e" }; say "x" };
EVAL q{ LEAVE { say "l" }; say "m" }; say "z";
```

```stdout
y
e
x
m
l
z
```

## ladder__rung07_subs_a_subset_name_is_a_term_with_its_own_name

```Raku
subset EvenNum of Int where * %% 2;
say EvenNum.^name;
```

```stdout
EvenNum
```

## ladder__rung13_classes_a_package_name_is_a_term_with_its_own_name

```Raku
package Pk { }
say Pk.^name;
```

```stdout
Pk
```

## ladder__rung13_classes_an_enum_name_is_a_term_with_its_own_name

```Raku
enum Colors <red green blue>;
say Colors.^name;
```

```stdout
Colors
```

## ladder__rung13_classes_an_enum_takes_a_parenthesised_list

```Raku
enum Day (:Sun(1), "Mon", "Tue");
say Mon + Tue + Sun;
```

```stdout
6
```

## ladder__rung16_bool_a_plan_that_no_test_ran_reports_the_mismatch_on_standard_output

```Raku
use Test;
plan 2;
```

```stdout
1..2
# You planned 2 tests, but ran 0
```

## ladder__rung17_compare_the_container_identity_operator_answers_a_boolean_and_cmp_ok_takes_it

```Raku
say Mu =:= Mu, " ", 1 =:= 2, " ", "a" =:= "a", " ", (5 !=:= 6);
use Test; cmp-ok Mu, "=:=", Mu, "cmp-ok takes =:=";
```

```stdout
True False True True
ok 1 - cmp-ok takes =:=
```

## simple_assign_44

```Raku
constant PI = 3;
say PI;
```

```stdout
3
```

## simple_assign_45

```Raku
constant N = 10;
say N + 5;
```

```stdout
15
```

## simple_program_12

```Raku
say 3 + 7/2;
say 7/2 - 2;
```

```stdout
6.5
1.5
```

## simple_program_22

```Raku
say 1;;
say 2;
```

```stdout
1
2
```

## simple_program_38

```Raku
print 4.0;
say "";
```

```stdout
4
```

## ladder__rung01_variables_the_finish_pod_variable_holds_the_text_after_the_marker

```Raku
say $=finish.chars;
=finish
abc
```

```stdout
4
```

## ladder__rung026_lit_radix_bigint

```Raku
say 0xFFFFFFFFFFFFFFFFFFFF + 1;
say :16<10000000000000000>;
say :36<zzzzzzzzzzzzzz>;
```

```stdout
1208925819614629174706176
18446744073709551616
6140942214464815497215
```

## ladder__rung026_lit_radix_bracket_list

```Raku
say :16[1,2,3];
say :60[1,30,0];
say :16[255,1];
```

```stdout
291
5400
4081
```

## ladder__rung026_lit_radix_call_colon

```Raku
say :10(":16<ff>");
say :10(":2<1.1>");
say :10(":36<zz>");
```

```stdout
255
1.5
1295
```

## ladder__rung026_lit_radix_call_underscore

```Raku
say :16("f_f");
say :16("0x_ff");
say :10("0xff_ff");
```

```stdout
255
255
65535
```

## ladder__rung026_lit_radix_fraction_nude

```Raku
say :16<ff.8>.nude;
say :3<1.1>.nude;
say :2<0.1>.nude;
```

```stdout
(511 2)
(4 3)
(1 2)
```

## ladder__rung026_lit_radix_fraction_zero_is_int

```Raku
say :16<1.0>.WHAT;
say :2<1.00>.WHAT;
say :16<1.80>.nude;
```

```stdout
(Int)
(Int)
(3 2)
```

## ladder__rung026_lit_radix_scale_type

```Raku
say :10<12*10**2>.WHAT;
say :2<1.1*2**3>.WHAT;
say :2<1.1*2**3>.nude;
```

```stdout
(Int)
(Rat)
(12 1)
```

## ladder__rung026_lit_radix_types

```Raku
say :16<ff>.WHAT;
say 0x1F.WHAT;
say :16[1,2,3].WHAT;
```

```stdout
(Int)
(Int)
(Int)
```

## ladder__rung027_quote_q_c_b_escapes

```Raku
say Q:c:b/{uc "z"}/;
say Q:c:b/\{uc "z"}/;
say Q:c:b/\\{uc "z"}/;
```

```stdout
Z
{uc "z"}
\Z
```

## ladder__rung027_quote_q_plain_brackets

```Raku
say Q{a{b}c};
say Q[a[b]c];
say Q<a<b>c>;
```

```stdout
a{b}c
a[b]c
a<b>c
```

## ladder__rung027_quote_q_plain_unicode_delimiters

```Raku
say Q«abc»;
say Q「abc」;
say Q｢a\nb｣;
```

```stdout
abc
abc
a\nb
```

## ladder__rung028_quote_qq_adverb_f

```Raku
say Q:f:b/&uc("z")/;
say Q:f:b/\&uc("z")/;
say Q:f:b/\\&uc("z")/;
```

```stdout
Z
&uc("z")
\Z
```

## ladder__rung029_quote_qw_other_delimiters

```Raku
say qw|a b|.raku;
say qw!c d!.raku;
say qw/e f/.raku;
```

```stdout
("a", "b")
("c", "d")
("e", "f")
```

## ladder__rung029_quote_qw_whitespace_separators

```Raku
say qw<a	b
c>.raku;
say qw<  d  e  >.raku;
```

```stdout
("a", "b", "c")
("d", "e")
```

## ladder__rung03_strings_a_q_to_heredoc_is_its_lines_with_the_terminators_indent_removed

```Raku
say q:to/E/.chars;
  abc
  E
```

```stdout
4
```

## ladder__rung03_strings_a_qq_to_heredoc_interpolates_a_closure

```Raku
say qq:to/E/.chars;
  a{1+1}c
  E
```

```stdout
4
```

## ladder__rung06_control_a_vertical_tab_form_feed_next_line_or_line_separator_ends_a_block_statement

```Raku
use MONKEY-SEE-NO-EVAL;
say EVAL("\{ 1 \} \x0b \{ 2 \}").raku; say EVAL("\{ 1 \} \x0c \{ 3 \}").raku; say EVAL("\{ 1 \} \x85 \{ 4 \}").raku;
say EVAL("\{ 1 \} \x2028 \{ 5 \}").raku; say EVAL("\{ 1 \} \x2029 \{ 6 \}").raku; say EVAL("1 \x2028 + 6").raku;
```

```stdout
2
3
4
5
6
7
```

## ladder__rung16_bool_relops_so

```Raku
say so(1);
say so(0);
say so(1 == 1);
```

```stdout
True
False
True
```

## simple_program_10

```Raku
say "before";
say 1/0;
say "after";
```

```stdout
before
```

## simple_program_13

```Raku
say 7/2;
say 10/4;
say -7/2;
```

```stdout
3.5
2.5
-3.5
```

## simple_program_36

```Raku
say 3.5;
say 10/4;
say -7/2;
```

```stdout
3.5
2.5
-3.5
```

## core__rc02_numeric_subs

```Raku
say sinh(0), " ", cosh(0), " ", tanh(0), " ", asinh(0), " ", acosh(1), " ", atanh(0);
say floor(2.7), " ", ceiling(2.2), " ", round(2.5), " ", truncate(-2.7), " ", sign(-3);
say log2(8), " ", atan2(0, 1), " ", is-prime(7), " ", is-prime(8);
say sec(0), " ", asin(0), " ", acos(1), " ", cotan(1).round(0.001), " ", cosec(1).round(0.001);
```

```stdout
0 1 0 0 0 0
2 3 3 -2 -1
3 0 True False
1 0 0 0.642 1.188
```

## ladder__rung025_kw_nan_nan_eqv

```Raku
say NaN eqv NaN;
say NaN eqv -NaN;
say NaN !eqv NaN;
say 0e0 eqv -0e0;
```

```stdout
True
True
False
False
```

## ladder__rung026_lit_radix_arithmetic

```Raku
say :16<ff> + 1;
say -:16<ff>;
say 0xff + 0b11 * 0o7;
say :16<ff> == 255;
```

```stdout
256
-255
276
True
```

## ladder__rung026_lit_radix_call_fraction

```Raku
say :16("ff.8");
say :16("ff.8").WHAT;
say :10("12.5");
say :16("ff*16**2");
```

```stdout
255.5
(Rat)
12.5
65280
```

## ladder__rung026_lit_radix_call_string

```Raku
say :16("ff");
say :2("101");
say :36("zz");
say :16("FFACD5FE");
```

```stdout
255
5
1295
4289517054
```

## ladder__rung026_lit_radix_fraction_print

```Raku
say :16<ff.8>;
say :16<ff.ff>;
say :3<1.1>;
say :36<z.z>;
```

```stdout
255.5
255.996094
1.333333
35.972222
```

## ladder__rung026_lit_radix_scale

```Raku
say :16<1.8*16**2>;
say :10<12*10**2>;
say :16<ff*2**2>;
say :16<ff*16**1>;
```

```stdout
384
1200
1020
4080
```

## ladder__rung026_lit_radix_underscores

```Raku
say 0xdead_beef;
say 0b1_0_1;
say :16<dead_beef>;
say :2<1_0_1>;
```

```stdout
3735928559
5
3735928559
5
```

## ladder__rung027_quote_q_b_delimiters

```Raku
say Q:b[\{meow}];
say Q:b[\]];
say Q:b♥\♥♥;
say Q:b[\|];
```

```stdout
{meow}
]
♥
|
```

## ladder__rung028_quote_qq_guard_bracket_delimiters

```Raku
say qq{a{1+1}b};
say qq[a{ "x" }b];
say qq<a<b>c>;
say qq«a«b»c»;
```

```stdout
a{1+1}b
axb
a<b>c
a«b»c
```

## ladder__rung03_strings_hex_escapes

```Raku
say "\x41\x[42,43]";
say "\x[0044]";
say "a\x[e9]b";
say "\x263A";
```

```stdout
ABC
D
aéb
☺
```

## simple_program_11

```Raku
say 8/2;
say 6/3;
say 9/3;
say 10/2;
```

```stdout
4
2
3
5
```

## ladder__rung026_lit_radix_call_prefix

```Raku
say :10("0xff");
say :10("0b11");
say :8("0x17");
say :16("0b11");
say :16("0d11");
```

```stdout
255
3
23
2833
3345
```

## ladder__rung026_lit_radix_colon_integer

```Raku
say :16<ff>;
say :16<FF>;
say :8<777>;
say :2<1010>;
say :36<Zz>;
```

```stdout
255
255
511
10
1295
```

## ladder__rung026_lit_radix_integer_prefixes

```Raku
say 0x1F;
say 0o17;
say 0b101;
say 0d42;
say 0xFF + 1;
```

```stdout
31
15
5
42
256
```

## ladder__rung16_bool_relops_tap_ok_argument

```Raku
use Test;
plan 3;
ok 1 == 1, "relop";
ok True, "bool";
ok 1 <=> 2, "order";
```

```stdout
1..3
ok 1 - relop
ok 2 - bool
ok 3 - order
```

## ladder__rung17_compare_ops_is_approx_tolerance

```Raku
use Test;
plan 3;
is-approx(3.14159265e0, pi, "pi to eight places");
is-approx(1e-7, 0, "near zero uses an absolute tolerance");
is-approx(3.1e0, 3.2e0, 0.2e0, "an explicit absolute tolerance");
```

```stdout
1..3
ok 1 - pi to eight places
ok 2 - near zero uses an absolute tolerance
ok 3 - an explicit absolute tolerance
```

## ladder__rung025_kw_nan_nan_coercion_args

```Raku
say Num(-Inf);
say Num(1);
say Num("1.5");
say Str(-Inf);
say Int(5.5e0);
say Rat(0.5e0);
```

```stdout
-Inf
1
1.5
-Inf
5
0.5
```

## ladder__rung025_kw_nan_nan_coercion_call

```Raku
say Num(NaN);
say Num(Inf);
say Str(Inf);
say Str(NaN);
say Bool(NaN);
say Bool(Inf);
```

```stdout
NaN
Inf
Inf
NaN
True
True
```

## ladder__rung026_lit_radix_prefix_override

```Raku
say :10<0xff>;
say :2<0b11>;
say :8<0o17>;
say :16<0b11>;
say :36<0d11>;
say :2<0x11>;
```

```stdout
255
3
15
3
11
17
```

## ladder__rung01_variables_program_and_file_name_the_source_file_in_both_modes

```Raku
say $*PROGRAM.extension;
say $*PROGRAM-NAME.ends-with(".raku");
say $?FILE.ends-with(".raku");
say $?FILE.starts-with("/");
say $*PROGRAM.WHAT;
say $*PROGRAM.parent.add("data.json").basename;
say $*PROGRAM.Str eq $*PROGRAM-NAME;
```

```stdout
raku
True
True
True
(Path)
data.json
True
```

## ladder__rung03_strings_control_escapes

```Raku
print "ab\bc|\n";
say "x\ry".chars;
say "\e".ord;
say "\a".ord;
say "\f".ord;
say "\rz".ord;
say "\b".ord;
```

```stdout
abc|
3
27
7
12
13
8
```

## roast_causes__rc10_div_and_mod_read_a_bool_operand_as_its_number

```Raku
say 7 div True;
say 7 mod True;
say 3 mod True;
say True div 2;
say 9 % True;
say 7 div 2;
say 7 mod 3;
```

```stdout
7
0
0
0
0
3
1
```

## ladder__rung024_kw_inf_inf_string_compare

```Raku
say Inf eq "Inf";
say "Inf" eq Inf;
say Inf ne "Inf";
say Inf lt "J";
say 3e0 eq "3";
say 1e20 eq "1e+20";
say 0.1e0 + 0.2e0 eq "0.3";
say 1.5e0 eq "1.5";
```

```stdout
True
True
False
True
True
True
False
True
```

## ladder__rung13_classes_new_on_a_builtin_type_int_num_str_array_list_hash_builds_its_value

```Raku
say Int.new(5);
say Int.new;
say Str.new.raku;
say Num.new(2);
say Array.new(1,2,3);
say Hash.new.raku;
say List.new(1,2);
say Rat.new(1,2);
```

```stdout
5
0
""
2
[1 2 3]
{}
(1 2)
0.5
```

## ladder__rung024_kw_inf_inf_comparison

```Raku
say Inf == Inf;
say Inf == -Inf;
say Inf > 5;
say -Inf < 5;
say Inf <=> 5;
say 5 <=> Inf;
say Inf <=> Inf;
say Inf === Inf;
say Inf eqv Inf;
```

```stdout
True
False
True
True
More
Less
Same
True
True
```

## ladder__rung025_kw_nan_nan_arithmetic

```Raku
say NaN + 1;
say NaN - 1;
say NaN * 2;
say NaN / 2;
say NaN ** 2;
say NaN ** 0;
say 1 ** NaN;
say NaN % 2;
say -NaN;
```

```stdout
NaN
NaN
NaN
NaN
NaN
1
1
NaN
NaN
```

## ladder__rung025_kw_nan_nan_rounding

```Raku
say NaN.abs;
say NaN.floor;
say NaN.ceiling;
say NaN.round;
say NaN.truncate;
say NaN.sqrt;
say NaN.log;
say NaN.exp;
say NaN.sin;
```

```stdout
NaN
NaN
NaN
NaN
NaN
NaN
NaN
NaN
NaN
```

## ladder__rung025_kw_nan_nan_string_compare

```Raku
say NaN eq NaN;
say NaN ne NaN;
say NaN lt NaN;
say "NaN" == NaN;
say "Inf" == Inf;
say "NaN" + 1;
say +"NaN";
say "NaN".Num;
say <NaN>.Num;
```

```stdout
True
False
False
False
True
NaN
NaN
NaN
NaN
```

## ladder__rung024_kw_inf_inf_conversions

```Raku
say Inf;
say -Inf;
say Inf.WHAT;
say Inf.raku;
say Inf.gist;
say Inf.Str;
say Inf.Num;
say Inf.Bool;
say Inf.defined;
say Inf.Rat.raku;
```

```stdout
Inf
-Inf
(Num)
Inf
Inf
Inf
Inf
True
True
<1/0>
```

## ladder__rung025_kw_nan_nan_comparison

```Raku
say NaN == NaN;
say NaN != NaN;
say NaN < 1;
say NaN > 1;
say NaN <= 1;
say NaN >= 1;
say 1 < NaN;
say Inf <=> Inf;
say 1 <=> 2;
say 2e0 <=> 1e0;
```

```stdout
False
True
False
False
False
False
False
Same
Less
More
```

## ladder__rung024_kw_inf_inf_arithmetic

```Raku
say Inf + 1;
say Inf - 1;
say Inf * 2;
say Inf * -2;
say Inf / 2;
say 1 / Inf;
say Inf + Inf;
say Inf - Inf;
say Inf * 0;
say Inf % 3;
say 5 % Inf;
```

```stdout
Inf
Inf
Inf
-Inf
Inf
0
Inf
NaN
NaN
NaN
NaN
```

## ladder__rung02_arithmetic_a_rational_compares_and_calculates_with_a_numeric_string

```Raku
say 1.2 == " 1.2";
say -1.2 == " -1.2";
say 1.5 == "1.5";
say 1.5 < "2";
say 1.5 > "2";
say 1.5 <=> "2";
say "2" == 2.0;
say 6/5 != "1.2";
say 1.5 + "2";
say 0.5 * "4";
say 3 + " -1";
say 2.5 <= " 2.5 ";
```

```stdout
True
True
True
True
False
Less
True
False
3.5
2
2
True
```

## setting__test_module

```Raku
use Test;
plan 14;
ok 1 == 1, 'ok takes a relop';
ok 1 <=> 2, 'ok takes an Order';
nok 0, 'nok takes a false value';
is 2 + 2, 4, 'is compares the strings';
is(1 <=> 1, Order::Same, 'is stringifies an Order');
pass 'pass';
dies-ok { die "boom" }, 'dies-ok sees a death';
lives-ok { 42 }, 'lives-ok sees a life';
is-deeply [1, 2, 3], [1, 2, 3], 'is-deeply';
subtest 'a subtest with a plan', {
    plan 2;
    ok True, 'inner ok';
    is 'x', 'x', 'inner is';
};
subtest 'a subtest named by a pair' => { plan 1; pass 'in the pair' };
throws-like { die "zap" }, X::AdHoc, 'throws-like with a matcher', message => 'zap';
throws-like { 1 }, X::AdHoc, 'throws-like on code that lives';
throws-like { die "q" }, X::AdHoc;
```

```stdout
1..14
ok 1 - ok takes a relop
ok 2 - ok takes an Order
ok 3 - nok takes a false value
ok 4 - is compares the strings
ok 5 - is stringifies an Order
ok 6 - pass
ok 7 - dies-ok sees a death
ok 8 - lives-ok sees a life
ok 9 - is-deeply
# Subtest: a subtest with a plan
    1..2
    ok 1 - inner ok
    ok 2 - inner is
ok 10 - a subtest with a plan
# Subtest: a subtest named by a pair
    1..1
    ok 1 - in the pair
ok 11 - a subtest named by a pair
# Subtest: throws-like with a matcher
    1..3
    ok 1 - code dies
    ok 2 - right exception type (X::AdHoc)
    ok 3 - .message matches zap
ok 12 - throws-like with a matcher
# Subtest: throws-like on code that lives
    1..2
    not ok 1 - code dies
    ok 2 - # SKIP Code did not die, can not check exception
not ok 13 - throws-like on code that lives
# Subtest: did we throws-like X::AdHoc?
    1..2
    ok 1 - code dies
    ok 2 - right exception type (X::AdHoc)
ok 14 - did we throws-like X::AdHoc?
```

## parser__assign_bare

```Raku
$x = 5;
```

## parser__atom_array

```Raku
@a;
```

## parser__atom_hash

```Raku
%h;
```

## parser__atom_scalar

```Raku
$x;
```

## parser__bare_ident_arg

```Raku
say(x);
```

## parser__call_expr

```Raku
say(add(1, 2));
```

## parser__print_stderr

```Raku
print($*STDERR, "error");
```

## parser__say_stdout

```Raku
say($*STDOUT, "hello");
```

## parser__say_var

```Raku
say $x;
```

## parser__try_catch

```Raku
try { die "oops"; } CATCH { say "caught"; }
```

## parser__try_catch_lower

```Raku
try { die "boom"; } catch { say "handled"; }
```

## parser_coverage__stmt_ctrl_whenever

```Raku
whenever $signal { say "got it"; }
```

## parser_coverage__stmt_ctrl_without

```Raku
without ($x) { say "no x"; }
```

## parser_coverage__stmt_pfx_CLOSE

```Raku
CLOSE { say("close"); }
```

## parser_coverage__stmt_pfx_eager

```Raku
eager @a;
```

## parser_coverage__stmt_pfx_hyper

```Raku
hyper @a;
```

## parser_coverage__stmt_pfx_lazy

```Raku
lazy @a;
```

## parser_coverage__stmt_pfx_race

```Raku
race @a;
```

## parser_coverage__stmt_pfx_supply

```Raku
supply { say("emit"); }
```

## say_16

```Raku
{ say(1); }; say(2);
```

```stdout
1
2
```

## say_17

```Raku
{ say(1); say(2); }
```

```stdout
1
2
```

## say_62

```Raku
 say(3 < 9); say(5 < 9); 
```

```stdout
True
True
```

## ladder__rung01_variables_no_strict_declares_a_hash_that_is_only_read

```Raku
no strict;
say %h<zz>.gist;
```

```stdout
(Any)
```

## ladder__rung01_variables_no_strict_declares_an_array_that_is_only_read_inside_a_block

```Raku
no strict;
{ say @arr.elems }
```

```stdout
0
```

## ladder__rung027_quote_q_plain_spaced

```Raku
say Q {a b};
say Q /$x\n/;
```

```stdout
a b
$x\n
```

## ladder__rung027_quote_q_w_adverb

```Raku
say Q:w/a  b\tc/.join("|");
say Q:w//.elems;
```

```stdout
a|b\tc
0
```

## ladder__rung027_quote_q_w_adverb_backslash

```Raku
say Q:w:b/a\tb c/.elems;
say Q:q:w/a\\b c/.join("|");
```

```stdout
3
a\b|c
```

## ladder__rung028_quote_qq_call_dot

```Raku
sub f { 7 }
say qq/&f.()/;
```

```stdout
7
```

## ladder__rung028_quote_qq_call_parens

```Raku
sub f { 7 }
say qq/&f()/;
```

```stdout
7
```

## ladder__rung029_quote_qw_user_sub_beats_quote_word

```Raku
sub qw { 7 }
say qw, 1;
```

```stdout
71
```

## ladder__rung05_hashes_a_pair_with_a_pair_key_parenthesizes_the_key_in_gist_and_raku

```Raku
say ((1 => 2) => 3).raku;
say ((1 => 2) => 3).gist;
```

```stdout
(1 => 2) => 3
(1 => 2) => 3
```

## ladder__rung07_subs_a_sigilless_parameter_takes_a_literal_argument

```Raku
sub f(\x) { x + 1 }
say f(4);
```

```stdout
5
```

## ladder__rung07_subs_a_sigilless_plus_parameter_is_a_term_in_the_body

```Raku
sub g(+a) { a.elems }
say g(1, 2);
```

```stdout
2
```

## ladder__rung07_subs_implicit_return_bare_literal_tail

```Raku
sub seven() { 7; }
say seven();
```

```stdout
7
```

## ladder__rung10_given_empty_is_undefined_so_orelse_and_the_dor_operator_skip_it_and_andthen_yields_it

```Raku
say (Empty orelse "foo"), (Empty // 9), Empty.defined;
say (Str andthen .uc orelse "foo"), (Nil andthen "x" orelse Nil orelse "bar"), (() orelse 1).raku;
```

```stdout
foo9False
foobar()
```

## ladder__rung15_blocks_a_builtin_routine_reference_is_passed_to_a_code_parameter

```Raku
sub f(&g) { g("x") }
say f(&uc);
```

```stdout
X
```

## ladder__rung16_bool_relops_a_chained_numeric_relop_counts_a_list_returning_method_call

```Raku
say 1 < (1, 2, 3).grep(* > 1) < 5;
say 2 < (1, 2, 3).grep(* > 1) < 5;
```

```stdout
True
False
```

## ladder__rung16_bool_relops_a_list_returning_method_call_is_counted_in_a_numeric_relop

```Raku
say 1 < (1, 2, 3).grep(* > 1);
say 3 < (1, 2, 3).grep(* > 1);
```

```stdout
True
False
```

## say_90

```Raku
say("hello");
say(42);
```

```stdout
hello
42
```

## simple_assign_46

```Raku
my constant GREETING = "hello";
say GREETING;
```

```stdout
hello
```

## simple_assign_47

```Raku
my constant K = 3;
say K * K;
```

```stdout
9
```

## simple_assign_48

```Raku
constant $E = 2;
say $E;
```

```stdout
2
```

## sub_26

```Raku
sub t() { 42 }
say t();
```

```stdout
42
```

## sub_30

```Raku
sub greet() { "hi" }
say greet();
```

```stdout
hi
```

## ladder__rung16_bool_relops_string

```Raku
say ("a" eq "a");
say ("a" ne "a");
say ("a" lt "b");
```

```stdout
True
False
True
```

## ladder__rung17_compare_ops

```Raku
say (3 <=> 1);
say (1 <=> 3);
say (2 <=> 2);
```

```stdout
More
Less
Same
```

## ladder__rung17_compare_ops_cmp

```Raku
say (10 cmp 9);
say (1 cmp 2);
say ("b" cmp "b");
```

```stdout
More
Less
Same
```

## ladder__rung17_compare_ops_leg

```Raku
say ("abc" leg "abd");
say ("b" leg "a");
say ("x" leg "x");
```

```stdout
Less
More
Same
```

## ladder__rung17_compare_ops_numeric

```Raku
say ((1 <=> 3) == -1);
say ((2 <=> 2) == 0);
say ((5 <=> 2) == 1);
```

```stdout
True
True
True
```

## simple_assign_49

```Raku
constant A = "a";
constant B = "b";
say A ~ B;
```

```stdout
ab
```

## ladder__rung023_kw_nil_nil_in_list

```Raku
say (1, Nil, 2).raku;
say (Nil,).raku;
say (Nil, Nil).raku;
say (1, Nil, 2).sum;
```

```stdout
(1, Nil, 2)
(Nil,)
(Nil, Nil)
3
```

## ladder__rung02_arithmetic_e_and_tau_terms

```Raku
say e;
say tau;
say (e * 2).round;
say tau / 2 == pi;
```

```stdout
2.718281828459045
6.283185307179586
5
True
```

## ladder__rung12_exceptions_no_catch

```Raku
try {
    die "swallowed";
}
say "after";
```

```stdout
after
```

## ladder__rung16_bool_relops

```Raku
say (1 == 1);
say (1 < 2);
say (2 <= 1);
say (1 != 1);
```

```stdout
True
True
False
False
```

## say_63

```Raku
say 4.0;
say (7/2)*2;
say 2.5+1.5;
say -3.0;
```

```stdout
4
7
4
-3
```

## ladder__rung11_junctions_operator

```Raku
if 1|2|3 == 2 {
    say "yes";
} else {
    say "no";
}
```

```stdout
yes
```

## ladder__rung024_kw_inf_inf_negative_zero

```Raku
say -1e0 / Inf;
say (-1e0 / Inf).raku;
say -0e0;
say 0e0 * -1;
say (-0e0).Str;
say 0e0;
```

```stdout
-0
-0e0
-0
-0
-0
0
```

## ladder__rung07_subs_lowercase_main_is_an_ordinary_sub

```Raku
sub main() {
    say "in main";
}
say "top";
main();
say "end";
```

```stdout
top
in main
end
```

## ladder__rung12_exceptions

```Raku
try {
    die "boom";
    CATCH {
        default { say "caught"; }
    }
}
```

```stdout
caught
```

## ladder__rung12_exceptions_die_message

```Raku
try {
    die "custom message";
    CATCH {
        default { say .message; }
    }
}
```

```stdout
custom message
```

## ladder__rung025_kw_nan_nan_signed_values

```Raku
say Inf.sign;
say (-Inf).sign;
say 0e0.sign;
say (-0e0).sign;
say 5e0.sign;
say (-5e0).sign;
say 5.sign;
```

```stdout
1
-1
0
0
1
-1
1
```

## ladder__rung024_kw_inf_inf_power

```Raku
say Inf ** 2;
say Inf ** 0;
say (-Inf) ** 3;
say (-Inf) ** 2;
say 2 ** Inf;
say 0 ** Inf;
say 1 ** Inf;
say Inf ** Inf;
```

```stdout
Inf
1
-Inf
Inf
Inf
0
1
Inf
```

## ladder__rung025_kw_nan_nan_order

```Raku
say NaN <=> NaN;
say NaN <=> 1;
say 1 <=> NaN;
say NaN <=> Inf;
say Inf <=> NaN;
say (NaN <=> 1).defined;
say (NaN <=> 1).WHAT;
say (NaN <=> NaN) === Nil;
```

```stdout
Nil
Nil
Nil
Nil
Nil
False
Nil
True
```

## ladder__rung024_kw_inf_inf_rounding

```Raku
say Inf.floor;
say (-Inf).floor;
say Inf.ceiling;
say Inf.round;
say Inf.truncate;
say Inf.floor.WHAT;
say Inf.floor + 1;
say NaN.floor;
say NaN.round;
```

```stdout
Inf
-Inf
Inf
Inf
Inf
(Num)
Inf
NaN
NaN
```

## ladder__rung025_kw_nan_nan_conversions

```Raku
say NaN.Str;
say NaN.Num;
say NaN.Numeric;
say NaN.Bool;
say NaN.gist;
say NaN.raku;
say (-NaN).raku;
say NaN.WHAT;
say NaN.Int.WHAT;
say NaN.Rat.WHAT;
```

```stdout
NaN
NaN
NaN
True
NaN
NaN
NaN
(Num)
(Failure)
(Rat)
```

## ladder__rung14_roles_does_ok_asks_the_does_method

```Raku
use Test;
plan 5;
role R { }
role Q { }
class C does R { }
does-ok C.new, R, "an instance does its role";
does-ok C, R, "a class does its role";
does-ok 5, Int, "an Int does Int";
does-ok C.new, C, "an instance does its class";
does-ok "x", Str, "a Str does Str";
```

```stdout
1..5
ok 1 - an instance does its role
ok 2 - a class does its role
ok 3 - an Int does Int
ok 4 - an instance does its class
ok 5 - a Str does Str
```

## rewrite__rr10_test

```Raku
use Test;
ok 1, "ok";
is 2, 2, "is";
is-deeply [1, 2], [1, 2], "deep";
throws-like { die "boom" }, Exception, message => /boom/;
dies-ok { die "x" }, "dies";
lives-ok { 1 }, "lives";
subtest "sub", { plan 1; ok 1 };
isa-ok 1, Int;
cmp-ok 1, '<', 2;
done-testing;
```

```stdout
ok 1 - ok
ok 2 - is
ok 3 - deep
# Subtest: did we throws-like Exception?
    1..3
    ok 1 - code dies
    ok 2 - right exception type (Exception)
    ok 3 - .message matches /boom/
ok 4 - did we throws-like Exception?
ok 5 - dies
ok 6 - lives
# Subtest: sub
    1..1
    ok 1 - 
ok 7 - sub
ok 8 - The object is-a 'Int'
ok 9 - 
1..9
```

## ladder__rung025_kw_nan_nan_is_nan

```Raku
say NaN.isNaN;
say Inf.isNaN;
say (-Inf).isNaN;
say 0e0.isNaN;
say 1.isNaN;
say (2**70).isNaN;
say 1e300.isNaN;
say Rat.new(0,0).isNaN;
say Rat.new(1,0).isNaN;
say (NaN + 1).isNaN;
say (Inf - Inf).isNaN;
say (Inf * 0).isNaN;
```

```stdout
True
False
False
False
False
False
False
True
False
True
True
True
```

## rewrite__rr02_pod

```Raku
=begin pod
=head1 Title

Some text here.
=end pod
#| A documented sub
sub doc { 1 }
say $=pod.elems;
say $=pod[0].contents.elems;
say $=pod[0].contents[0].^name, " ", $=pod[0].contents[0].contents[0].contents[0];
say $=pod[0].contents[1].contents[0];
say $=pod[1].^name;
say &doc.WHY;
```

```stdout
2
2
Pod::Heading Title
Some text here.
Pod::Block::Declarator
A documented sub
```

## ladder__rung03_strings_trans_takes_several_pairs_tr_style_strings_with_ranges_and_the_c_d_s_adverbs

```Raku
say "bookkeeper".trans(:s, 'a..z' => 'a..z');
say "bookkeeper".trans(:d, 'ok' => '');
say 'ABC123DEF456GHI'.trans(:c, 'A..Z' => 'x');
say 'ABC111DEF222GHI'.trans(:s, '0..9' => 'x');
say 'ABC111DEF222GHI'.trans(:c, :s, 'A..Z' => 'x');
say 'ABC111DEF222GHI'.trans(:c, :d, 'A..Z' => '');
say 'ABC123DEF456GHI'.trans('A..Z' => 'x');
say "ABC".trans( ('A'=>'a'), ('B'=>'b'), ('C'=>'c') );
say "ABC-DEF".trans(("- AB..Z" => "_ a..z"));
say "hello world".trans('a'..'y' => 'b'..'z');
say "hello".trans(<l o> => <L 0>);
say "a-b".trans('-' => '+');
say "hello".trans('l' => 'L', 'o' => '0');
say "Hello World".trans('A..Z' => 'a..z');
say "abc".trans('a..c' => 'x');
say "abc".trans('a..c' => 'x', :d);
say "aabbcc".trans(:s, 'a..c' => 'a..c');
```

```stdout
bokeper
beeper
ABCxxxDEFxxxGHI
ABCxDEFxGHI
ABCxDEFxGHI
ABCDEFGHI
xxx123xxx456xxx
abc
abc_def
ifmmp xpsme
heLL0
a+b
heLL0
hello world
xxx
x
abc
```

## ladder__rung02_arithmetic_rat_exact_with_big_numerators_and_the_64_bit_denominator_limit

```Raku
say 100000000000000000000/3;
say (100000000000000000000/3) * 3;
say (100000000000000000000/3).WHAT;
say 1/3 + 100000000000000000000;
say (1/3 + 100000000000000000000).WHAT;
say (100000000000000000000/3).numerator;
say (100000000000000000000/3).denominator;
say 1/18446744073709551615;
say (1/18446744073709551615).WHAT;
say 1/18446744073709551616;
say (1/18446744073709551616).WHAT;
say (1/4294967296) * (1/4294967296);
say ((1/4294967296) * (1/4294967296)).WHAT;
say (1/4294967295) * (1/4294967297);
say 0.9999996;
say 0.99999949;
say 1.9999996;
say 123456789.123456789;
say 1/123457;
say 1/1000000;
say 1/1048576;
say (1/1048576).raku;
say (3/8).raku;
say (0.1).raku;
say (-1/3).raku;
say (5/1).raku;
say (-5/2).raku;
say (1/3).FatRat;
say (1/3).FatRat.raku;
say (1/3).FatRat.WHAT;
say FatRat.new(1, 3) + 1/6;
say (FatRat.new(1, 3) + 1/6).WHAT;
say FatRat.new(1, 3) * FatRat.new(1, 3);
say (1/3) * FatRat.new(1, 3);
say FatRat.new(1, 18446744073709551616);
say FatRat.new(1, 18446744073709551616) * 2;
say 5.Rat;
say 5.Rat.WHAT;
say 0.1e0.Rat;
say 0.3333333e0.Rat;
say "0.5".Rat;
say "3/4".Rat;
say 0.1 + 0.2 == 0.3;
say 0.1e0 + 0.2e0 == 0.3e0;
say 1.5.Int;
say -1.5.Int;
say 2 ** -2;
say (1/2) ** 10;
```

```stdout
33333333333333333333.333333
100000000000000000000
(Rat)
100000000000000000000.333333
(Rat)
100000000000000000000
3
0.000000000000000000054
(Rat)
5.421010862427522e-20
(Num)
5.421010862427522e-20
(Num)
0.000000000000000000054
0.9999996
0.99999949
1.9999996
123456789.123456789
0.0000081
0.000001
0.00000095
0.00000095367431640625
0.375
0.1
<-1/3>
5.0
-2.5
0.333333
FatRat.new(1, 3)
(FatRat)
0.5
(FatRat)
0.111111
0.111111
0.00000000000000000005421011
0.0000000000000000001084202
5
(Rat)
0.1
0.333333
0.5
0.75
True
False
1
-1
0.25
0.000977
```

## ladder__rung01_variables_a_list_declaration_in_a_block_is_that_blocks_variables

```Raku
my ($a, $b) = 1, 2; { my ($a, $c) = 3, 4; say "$a $c" }; say "$a $b";
```

```stdout
3 4
1 2
```

## ladder__rung15_blocks_a_bare_blocks_own_my_variable_is_not_the_enclosing_variable

```Raku
my $a = 1; { my $a = 2; say $a }; say $a;
```

```stdout
2
1
```

## ladder__rung15_blocks_a_string_eval_reads_the_blocks_own_variable

```Raku
my $a = 1; { my $a = 2; say EVAL q[$a] }; say $a;
```

```stdout
2
1
```

## parser__arith_add

```Raku
my $x = 1 + 2;
```

## parser__arith_chain

```Raku
my $x = 1 + 2 + 3;
```

## parser__arith_mul

```Raku
my $x = 6 * 7;
```

## parser__arith_prec

```Raku
my $x = 1 + 2 * 3;
```

## parser__decl_array

```Raku
my @a = 7;
```

## parser__decl_hash

```Raku
my %h = 9;
```

## parser__decl_scalar_int

```Raku
my $x = 5;
```

## parser__decl_scalar_str

```Raku
my $s = "hello";
```

## parser_coverage__stmt_ctrl_foreach

```Raku
foreach @items -> $item { say $item; }
```

## say_die_1

```Raku
 say("before"); die("boom"); say("after"); 
```

```stdout
before
```

## simple_assign_26

```Raku
 my $b = { say 9; }; $b(); $b(); 
```

```stdout
9
9
```

## simple_assign_29

```Raku
 my $a = { say 1; }; my $b = { say 2; }; $b(); $a(); 
```

```stdout
2
1
```

## array_12

```Raku
my @a = (10,20,30);
say @a[*].elems;
```

```stdout
3
```

## array_13

```Raku
my @e = ();
say @e[*].elems;
```

```stdout
0
```

## array_16

```Raku
my @a = (10,20,30);
say @a[*].sum;
```

```stdout
60
```

## array_17

```Raku
my @a = 3, 1, 2;
say @a.first;
```

```stdout
3
```

## array_18

```Raku
my @a = 5, 6, 7;
say @a.keys.elems;
```

```stdout
3
```

## array_19

```Raku
my @a = 3, 1, 2;
say @a.max;
```

```stdout
3
```

## array_20

```Raku
my @a = 3, 1, 2;
say @a.min;
```

```stdout
1
```

## array_21

```Raku
my @s = "cherry", "apple", "banana";
say @s.min;
```

```stdout
apple
```

## array_24

```Raku
my @a = 3, 1, 2;
say @a.reverse;
```

```stdout
(2 1 3)
```

## array_25

```Raku
my @a = 3, 1, 2;
say @a.sort.first;
```

```stdout
1
```

## array_26

```Raku
my @a = 3, 1, 2;
say @a.sort;
```

```stdout
(1 2 3)
```

## array_27

```Raku
my @s = "banana", "apple", "cherry";
say @s.sort;
```

```stdout
(apple banana cherry)
```

## array_28

```Raku
my @b = 3, 1, 2, 1;
say @b.unique;
```

```stdout
(3 1 2)
```

## array_29

```Raku
my @n = 10, 20, 30;
say @n.values.sum;
```

```stdout
60
```

## array_34

```Raku
my @a = 10,20,30,40,50;
say @a[0,2].elems;
```

```stdout
2
```

## array_35

```Raku
my @a = 1, 2, 3, 4;
say [+] @a;
```

```stdout
10
```

## array_36

```Raku
my @m = 1.5, 2.5, 2.5;
say [+] @m;
```

```stdout
6.5
```

## array_38

```Raku
my @a = 1,2,3,4,5;
say @a[2];
```

```stdout
3
```

## array_41

```Raku
my @a = 1,2,3,;
say @a.elems;
```

```stdout
3
```

## array_42

```Raku
my @a = 10,20,30,40;
say @a[*-(1+2)];
```

```stdout
20
```

## array_43

```Raku
my @a = 10,20,30,40;
say @a[*-4];
```

```stdout
10
```

## array_44

```Raku
my @a = 10,20,30;
say @a[*-1] + @a[*-2];
```

```stdout
50
```

## array_46

```Raku
my @a = 10,20,30,40;
say @a[*-1];
```

```stdout
40
```

## array_47

```Raku
my @a = 10,20,30,40;
say @a[1];
```

```stdout
20
```

## array_48

```Raku
my @a = 10,20,30,40;
say @a[*-2];
```

```stdout
30
```

## array_49

```Raku
my @s = "x","y","z";
say @s[*-1];
```

```stdout
z
```

## class_method_1

```Raku
class C { method go() { 42 } }
say C.new.go();
```

```stdout
42
```

## class_say_1

```Raku
class Cat { }
 say(Cat.^name); 
```

```stdout
Cat
```

## class_say_2

```Raku
class Cat { }
 say(Cat.WHAT()); 
```

```stdout
(Cat)
```

## hash_13

```Raku
my %h = (y => 9, x => 4);
say %h{"x"};
```

```stdout
4
```

## hash_4

```Raku
my %h = one => 10, two => 20, three => 30;
say %h.keys.elems;
```

```stdout
3
```

## hash_5

```Raku
my %h = a => 1, b => 2, c => 3;
say %h.kv.elems;
```

```stdout
6
```

## ladder__rung01_variables_a_state_array_keeps_its_elements_between_calls

```Raku
sub a { state @l; @l.push(1); @l.elems }
say a(); say a();
```

```stdout
1
2
```

## ladder__rung01_variables_a_state_declaration_may_initialize_from_another_state_declaration

```Raku
sub f { state $a = state $b = 42; $a + $b }
say f();
```

```stdout
84
```

## ladder__rung01_variables_a_state_variable_keeps_its_value_between_calls

```Raku
sub c { state $c = 10; $c += 5; $c }
say c(); say c();
```

```stdout
15
20
```

## ladder__rung01_variables_type_constrained

```Raku
my Int $x = 5;
say $x;
```

```stdout
5
```

## ladder__rung021_quote_lt_gt_ideographic_space

```Raku
my @w = <a　b>;
say @w.elems;
```

```stdout
2
```

## ladder__rung021_quote_lt_gt_no_break_space_joins

```Raku
my @w = <a b>;
say @w.elems;
```

```stdout
1
```

## ladder__rung021_quote_lt_gt_non_ascii_word_stays_whole

```Raku
my @w = <aƅb c>;
say @w.elems;
```

```stdout
2
```

## ladder__rung025_kw_nan_nan_smartmatch

```Raku
say NaN ~~ NaN;
say NaN !~~ NaN;
```

```stdout
True
False
```

## ladder__rung027_quote_q_b_adverb_raw

```Raku
my $x = 5;
say Q:b/a$x {$x}\n/;
```

```stdout
a$x {$x}

```

## ladder__rung027_quote_q_c_adverb

```Raku
my $x = 5;
say Q:c/a$x {$x + 1}/;
```

```stdout
a$x 6
```

## ladder__rung027_quote_q_qq_adverb

```Raku
my $x = 5;
say Q:qq/a$x\tb {$x + 1}/;
```

```stdout
a5	b 6
```

## ladder__rung028_quote_qq_array_slice

```Raku
my @a = 1, 2, 3;
say qq/@a[0,1]/;
```

```stdout
1 2
```

## ladder__rung028_quote_qq_call_args

```Raku
sub f($a) { $a * 2 }
say qq/&f(4) &f(2 + 3)/;
```

```stdout
8 10
```

## ladder__rung028_quote_qq_guard_scalars

```Raku
my $x = 5;
say qq/$x $x.chars() $x-1/;
```

```stdout
5 1 5-1
```

## ladder__rung028_quote_qq_hash_angle

```Raku
my %h = a => 1, b => 2;
say qq/%h<a> %h<b>/;
```

```stdout
1 2
```

## ladder__rung028_quote_qq_hash_brace

```Raku
my %h = a => 1;
say qq/%h{"a"} %h{'a'}/;
```

```stdout
1 1
```

## ladder__rung028_quote_qq_scalar_array_subscript

```Raku
my $a = [1, 2, 3];
say qq/$a[1] $a[2]/;
```

```stdout
2 3
```

## ladder__rung028_quote_qq_scalar_hash_subscript

```Raku
my $h = { a => 1 };
say qq/$h<a> $h{"a"}/;
```

```stdout
1 1
```

## ladder__rung02_arith_a_list_returning_method_call_is_counted_in_arithmetic

```Raku
say (1, 2, 3).grep(* > 1) + 10;
say 3 * (1, 2, 3).grep(* > 1);
```

```stdout
12
6
```

## ladder__rung02_arithmetic_a_list_operand_is_its_element_count

```Raku
say 2 * (1, 2, 3), " ", (1, 2, 3) + 2;
my @a; say 3 * (@a = 4, 5);
```

```stdout
6 5
6
```

## ladder__rung02_arithmetic_the_atomic_postfix_increments_an_atomicint

```Raku
my atomicint $i = 0; $i⚛++; $i⚛++;
say $i;
```

```stdout
2
```

## ladder__rung04_arrays_a_slip_new_is_a_slip_that_flattens_into_a_list

```Raku
say Slip.new(1, 2).raku, Slip.new(5).raku, (|(3, 4)).raku;
my @y = 41, (False ?? 42 !! Slip.new()), 43; say @y.raku;
```

```stdout
slip(1, 2)slip(5,)slip(3, 4)
[41, 43]
```

## ladder__rung04_arrays_join_with_no_arguments_or_one_argument_is_the_empty_string

```Raku
say join().raku, " ", join("-").raku, " ", join("-", 1).raku, " ", join(1, 2, 3).raku;
say (join ).raku;
```

```stdout
"" "" "1" "213"
""
```

## ladder__rung04_arrays_negative_index

```Raku
my @a = (1, 2, 3);
say @a[*-1];
```

```stdout
3
```

## ladder__rung04_arrays_out_of_bounds

```Raku
my @a = (1, 2, 3);
say @a[10].raku;
```

```stdout
Any
```

## ladder__rung04_arrays_splice_removes_replaces_and_returns_the_removed_elements

```Raku
my @a = 1,2,3,4,5; say @a.splice(1, 2).raku, @a.raku; @a.splice(1, 0, 9, 8); say @a.raku;
say splice(@a, 0, 1).raku, @a.raku, " ", @a.splice(2).raku, @a.raku, " ", @a.splice.raku, @a.raku;
```

```stdout
[2, 3][1, 4, 5]
[1, 9, 8, 4, 5]
[1][9, 8, 4, 5] [4, 5][9, 8] [9, 8][]
```

## ladder__rung04_arrays_the_delete_adverb_returns_the_element_and_shortens_the_array

```Raku
my @a = <a b c>;
say @a[2]:delete, @a.elems;
```

```stdout
c2
```

## ladder__rung04_arrays_the_exists_adverb_answers_whether_an_element_is_there

```Raku
my @a = <a b c>;
say @a[1]:exists, @a[5]:exists;
```

```stdout
TrueFalse
```

## ladder__rung04_arrays_the_k_adverb_on_a_slice_answers_the_indices

```Raku
my @a = <a b c>;
say @a[1, 2]:k;
```

```stdout
(1 2)
```

## ladder__rung04_arrays_the_kv_adverb_answers_the_index_and_the_element

```Raku
my @a = <a b c>;
say @a[1]:kv;
```

```stdout
(1 b)
```

## ladder__rung04_arrays_the_p_adverb_on_a_slice_answers_index_pairs

```Raku
my @a = <a b c>;
say @a[0, 1]:p;
```

```stdout
(0 => a 1 => b)
```

## ladder__rung05_hashes_a_brace_with_a_pair_first_and_plain_elements_after_is_a_hash

```Raku
my $h = { a => 1, "b", 2 };
say $h.WHAT; say $h<b>;
```

```stdout
(Hash)
2
```

## ladder__rung05_hashes_a_percent_sigil_before_a_scalar_is_the_hash_it_holds

```Raku
my $h = { a => 1, b => 2 };
say %$h.elems;
```

```stdout
2
```

## ladder__rung05_hashes_antipairs_returns_a_seq_of_swapped_pairs_without_flattening

```Raku
use Test; my %h = a => 'b', c => 'd';
isa-ok %h.antipairs, Seq, 'a Seq'; is-deeply %h.antipairs.sort.list, (b => 'a', d => 'c'), 'swapped'; my %g = a => <b c>, d => 'e'; is-deeply %g.antipairs.sort.list, (<b c> => 'a', e => 'd'), 'list values stay one key'; done-testing;
```

```stdout
ok 1 - a Seq
ok 2 - swapped
ok 3 - list values stay one key
1..3
```

## ladder__rung05_hashes_invert_returns_a_seq_of_value_key_pairs

```Raku
use Test; my %h = a => 'b', c => 'd', e => <x y>;
isa-ok %h.invert, Seq, 'invert is a Seq'; is-deeply %h.invert.sort.list, (b => 'a', d => 'c', x => 'e', y => 'e'), 'sorted pairs'; done-testing;
```

```stdout
ok 1 - invert is a Seq
ok 2 - sorted pairs
1..2
```

## ladder__rung05_hashes_missing_key

```Raku
my %h = (a => 1);
say %h{'z'}.raku;
```

```stdout
Any
```

## ladder__rung05_hashes_the_kv_adverb_answers_the_key_and_the_value

```Raku
my %h = a => 1, b => 2;
say %h<a>:kv;
```

```stdout
(a 1)
```

## ladder__rung05_hashes_the_p_adverb_answers_the_pair

```Raku
my %h = a => 1, b => 2;
say %h<b>:p;
```

```stdout
b => 2
```

## ladder__rung06_control_ternary

```Raku
my $x = 5;
say $x > 3 ?? "big" !! "small";
```

```stdout
big
```

## ladder__rung06_control_until

```Raku
my $i = 0;
until ($i >= 3) { say $i; $i = $i + 1; }
```

```stdout
0
1
2
```

## ladder__rung07_subs_a_dot_ampersand_call_passes_the_invocant_as_the_first_argument_of_the_sub

```Raku
sub add($a, $b = 10) { $a + $b }
say 5.&add, " ", 5.&add(1);
```

```stdout
15 6
```

## ladder__rung07_subs_a_dot_ampersand_call_runs_a_code_variable_or_a_scalar_holding_code

```Raku
my &twice = -> $n { $n * 2 }; my $code = -> $n, $m { $n - $m };
say 4.&twice, " ", 10.&$code(3);
```

```stdout
8 7
```

## ladder__rung07_subs_a_magical_routine_call_recurses_into_the_enclosing_named_sub

```Raku
sub fact(Int $n) { $n < 2 ?? 1 !! $n * &?ROUTINE($n - 1) }
say fact(5);
```

```stdout
120
```

## ladder__rung07_subs_a_named_parameter_may_bind_a_different_variable_than_its_key

```Raku
sub f(:key($desc)) { $desc }
say f(key => 7);
```

```stdout
7
```

## ladder__rung07_subs_a_plus_array_parameter_takes_several_arguments

```Raku
sub f(+@a) { @a.elems }
say f(1, 2);
```

```stdout
2
```

## ladder__rung07_subs_a_type_capture_in_a_signature_names_the_argument_type

```Raku
sub tname(::T $v) { T.^name }
say tname(42);
```

```stdout
Int
```

## ladder__rung07_subs_an_anonymous_scalar_parameter_with_a_subsignature_unpacks_a_pair

```Raku
sub h(Pair $ (:key($d), :value($v))) { "$d=$v" }
say h("x" => 5);
```

```stdout
x=5
```

## ladder__rung07_subs_implicit_return

```Raku
sub double($x) { $x * 2 }
say double(5);
```

```stdout
10
```

## ladder__rung07_subs_implicit_return_trailing_semicolon

```Raku
sub double($x) { $x * 2; }
say double(5);
```

```stdout
10
```

## ladder__rung08_for_last_from_an_inner_until_leaves_a_labelled_until_in_parentheses

```Raku
my $d = 0; (L2: until False { until False { $d++; last L2 } });
say $d;
```

```stdout
1
```

## ladder__rung09_regex_a_pair_on_the_right_of_a_smartmatch_calls_the_method_it_names_on_the_left_operand

```Raku
say "/".IO ~~ :d; say "/".IO ~~ :f; say "/".IO ~~ :!f; say "/".IO !~~ :e;
say "/no/such/witness/path".IO ~~ :e; say "/no/such/witness/path".IO !~~ :e; say 5 ~~ :defined; say Int ~~ :defined;
```

```stdout
True
False
True
False
False
True
True
False
```

## ladder__rung09_string_methods_trim_methods_on_an_io_path

```Raku
my $p = ' foo '.IO;
say trim($p).raku, $p.trim.raku, trim-leading($p).raku, $p.trim-leading.raku, trim-trailing($p).raku, $p.trim-trailing.raku;
```

```stdout
"foo""foo""foo ""foo "" foo"" foo"
```

## ladder__rung10_given_when_a_given_or_with_modifier_leaves_the_outer_topic_unchanged

```Raku
$_ = 10; say "a $_" given 13; say $_; say "b $_" with 7; say $_;
{ say "blk $_" } given 5; say $_;
```

```stdout
a 13
10
b 7
10
blk 5
10
```

## ladder__rung13_classes_a_method_with_a_type_capture_invocant_binds_the_capture_to_the_class

```Raku
class A { method me(::T $:) { T } }
say A.new.me.raku;
```

```stdout
A
```

## ladder__rung13_classes_a_user_str_method_answers_on_the_type_object

```Raku
class D { method Str { 'dd' } }
say D.Str, " ", (class { method Str { 'foo' } }).Str, " ", D.new.Str;
```

```stdout
dd foo dd
```

## ladder__rung13_classes_the_compile_time_variable_class_names_the_enclosing_class

```Raku
class Foo { method m { $?CLASS.^name } }
say Foo.m;
```

```stdout
Foo
```

## ladder__rung15_blocks

```Raku
my $b = { 1 };
say $b();
```

```stdout
1
```

## ladder__rung15_blocks_a_builtin_routine_reference_is_a_closure

```Raku
my $as = &lc;
say $as("ABC");
```

```stdout
abc
```

## ladder__rung15_blocks_a_closures_own_my_variable_is_not_the_outer_variable_another_closure_reads

```Raku
my $x = 7; my $g = { $x }; my $f = { my $x = 1; $x };
say $f(), $g();
```

```stdout
17
```

## ladder__rung15_blocks_first

```Raku
my @n = (1, 2, 3, 4);
say @n.first({ $^a == 4 });
```

```stdout
4
```

## ladder__rung15_blocks_placeholders

```Raku
my $add = { $^a + $^b };
say $add(2, 3);
```

```stdout
5
```

## ladder__rung15_blocks_pointy

```Raku
my $p = -> $x { $x * 2 };
say $p(5);
```

```stdout
10
```

## ladder__rung15_blocks_topic

```Raku
my $b = { $_ * 2 };
say $b(5);
```

```stdout
10
```

## ladder__rung16_bool_relops_numeric_equality_counts_a_list_returning_method_call

```Raku
say (1, 2, 3).grep(* > 1) == 2;
say 2 == (1, 2, 3).grep(* > 1);
```

```stdout
True
True
```

## ladder__rung18_two_arg_block_reduce_add

```Raku
my @n = (1,2,3);
say @n.reduce({ $^a + $^b });
```

```stdout
6
```

## ladder__rung18_two_arg_block_reduce_mul

```Raku
my @n = (1,2,3,4);
say @n.reduce({ $^a * $^b });
```

```stdout
24
```

## ladder__rung19_block_a_sub_reads_its_own_topic

```Raku
sub topic { $_.gist }
say topic();
```

```stdout
(Any)
```

## ladder__rung19_block_an_empty_do_block_is_an_undefined_value

```Raku
my $a = do { };
say $a.defined;
```

```stdout
False
```

## ladder__rung19_block_methcall_sub_body

```Raku
sub f($x) { $x.uc }
say f("ab");
```

```stdout
AB
```

## ladder__rung19_block_the_grep_listop_takes_a_type_name_as_its_matcher

```Raku
my @l = 1, "a", 2, "b", 3;
say grep Int, @l; say grep Str, @l;
```

```stdout
(1 2 3)
(a b)
```

## ladder__rung20_paren_group

```Raku
sub f($a) { ($a).Str }
say f(3);
```

```stdout
3
```

## ladder__rung20_paren_group_stmt

```Raku
my $x = 5;
($x).say;
```

```stdout
5
```

## multi_3

```Raku
multi bar($x) { $x + 1 }
say bar(7);
```

```stdout
8
```

## parser_coverage__stmt_pfx_sink

```Raku
my $x = 1;
sink $x;
```

## say_29

```Raku
grammar G { rule TOP { "a" | "b" } }
 say(G.parse("a")); 
```

```stdout
｢a｣
```

## say_30

```Raku
grammar G { rule TOP { "a" | "b" } }
 say(G.parse("b")); 
```

```stdout
｢b｣
```

## say_31

```Raku
grammar G { rule TOP { <digit> | <alpha> } }
 say(G.parse("x")); 
```

```stdout
｢x｣
 alpha => ｢x｣
```

## say_32

```Raku
grammar G { rule TOP { <digit> | <alpha> } }
 say(G.parse("5")); 
```

```stdout
｢5｣
 digit => ｢5｣
```

## say_33

```Raku
grammar G { rule TOP { <alnum> } }
 say(G.parse("7")); 
```

```stdout
｢7｣
 alnum => ｢7｣
```

## say_34

```Raku
grammar G { rule TOP { <alpha> } }
 say(G.parse("a")); 
```

```stdout
｢a｣
 alpha => ｢a｣
```

## say_35

```Raku
grammar G { rule TOP { <digit> } }
 say(G.parse("5")); 
```

```stdout
｢5｣
 digit => ｢5｣
```

## say_36

```Raku
grammar G { rule TOP { <lower> } }
 say(G.parse("z")); 
```

```stdout
｢z｣
 lower => ｢z｣
```

## say_37

```Raku
grammar G { rule TOP { <upper> } }
 say(G.parse("A")); 
```

```stdout
｢A｣
 upper => ｢A｣
```

## say_38

```Raku
grammar G { rule TOP { <xdigit> } }
 say(G.parse("f")); 
```

```stdout
｢f｣
 xdigit => ｢f｣
```

## say_39

```Raku
grammar G { rule TOP { "abc" } }
 say(G.parse("abc")); 
```

```stdout
｢abc｣
```

## say_40

```Raku
grammar G { rule TOP { "x" } }
 say(G.parse("x")); 
```

```stdout
｢x｣
```

## say_41

```Raku
grammar G { rule TOP { "a b" } }
 say(G.parse("a b")); 
```

```stdout
｢a b｣
```

## say_42

```Raku
grammar G { rule TOP { <digit> "z" } }
 say(G.parse("9z")); 
```

```stdout
Nil
```

## say_43

```Raku
grammar G { rule TOP { <digit> <alpha> } }
 say(G.parse("5x")); 
```

```stdout
Nil
```

## say_44

```Raku
grammar G { rule TOP { "a" <digit> } }
 say(G.parse("a1")); 
```

```stdout
Nil
```

## say_45

```Raku
grammar G { rule TOP { <digit> <lower> <upper> } }
 say(G.parse("3aB")); 
```

```stdout
Nil
```

## say_46

```Raku
grammar G { rule TOP { <alpha>+ } }
 say(G.parse("abc")); 
```

```stdout
｢abc｣
 alpha => ｢a｣
 alpha => ｢b｣
 alpha => ｢c｣
```

## say_47

```Raku
grammar G { rule TOP { <digit>+ } }
 say(G.parse("123")); 
```

```stdout
｢123｣
 digit => ｢1｣
 digit => ｢2｣
 digit => ｢3｣
```

## say_48

```Raku
grammar G { rule TOP { <digit> <space> <digit> } }
 say(G.parse("1 2")); 
```

```stdout
Nil
```

## say_49

```Raku
grammar G { rule TOP { <upper> <lower>+ } }
 say(G.parse("Hello")); 
```

```stdout
Nil
```

## say_50

```Raku
grammar G { rule TOP { "hello" } }
 say(G.parse("hello")); 
```

```stdout
｢hello｣
```

## say_try_1

```Raku
    try { say('ok'); }; CATCH { say('never'); };
    say('after');
```

```stdout
ok
after
```

## simple_assign_101

```Raku
my $b = 5;
say $b ** 2;
```

```stdout
25
```

## simple_assign_112

```Raku
my $x = 10; my $y = 3;
say $x % $y;
```

```stdout
1
```

## simple_assign_113

```Raku
my $x = 10; my $y = 3;
say $x * $y;
```

```stdout
30
```

## simple_assign_123

```Raku
my $d = 42;
{ say "def" with $d }
```

```stdout
def
```

## simple_assign_38

```Raku
my $n = 66;
say chr($n);
```

```stdout
B
```

## simple_assign_51

```Raku
my $x = 0;
say $x // "oops";
```

```stdout
0
```

## simple_assign_54

```Raku
my ($a, $b) = (10, 20);
say $a + $b;
```

```stdout
30
```

## simple_assign_55

```Raku
my ($x, $y) = "foo", "bar";
say $y;
```

```stdout
bar
```

## simple_assign_56

```Raku
my ($a, $b, $c) = 1, 2, 3;
say $c;
```

```stdout
3
```

## simple_assign_70

```Raku
my $x = (42,);
say $x;
```

```stdout
(42)
```

## simple_assign_71

```Raku
my $x = (1,2,3);
say $x;
```

```stdout
(1 2 3)
```

## simple_assign_73

```Raku
my $s = "hello";
say $s.chars;
```

```stdout
5
```

## simple_assign_74

```Raku
my $x = 5;
say "yes" with $x;
```

```stdout
yes
```

## simple_assign_76

```Raku
my $x = 42;
say $_ with $x;
```

```stdout
42
```

## simple_assign_77

```Raku
my $x = 0;
say "z" with $x;
```

```stdout
z
```

## simple_assign_85

```Raku
my $i = 0;
until $i >= 3 { say $i; $i = $i + 1 }
```

```stdout
0
1
2
```

## simple_assign_87

```Raku
my $c = "z";
say $c.ord;
```

```stdout
122
```

## simple_program_26

```Raku
my $y;
say "gone" without $y;
```

```stdout
gone
```

## simple_program_9

```Raku
my $x;
say $x // "default";
```

```stdout
default
```

## sub_12

```Raku
sub f(:$x) { say $x.defined; }
f();
```

```stdout
False
```

## sub_13

```Raku
sub f(:$x = 5) { say $x; }
f();
```

```stdout
5
```

## sub_15

```Raku
sub f(:$q, :$x) { say $x; }
f(q => 1, x => 4);
```

```stdout
4
```

## sub_27

```Raku
sub sq($n) { $n * $n }
say sq(4) + 4;
```

```stdout
20
```

## sub_29

```Raku
sub add($a,$b) { $a + $b }
say add(3,4);
```

```stdout
7
```

## sub_33

```Raku
sub announce($x) { say "got $x" }
announce(42);
```

```stdout
got 42
```

## sub_34

```Raku
sub sq($n) { $n * $n }
say sq(5);
```

```stdout
25
```

## sub_array_12

```Raku
sub f(*@r) { say @r.elems; }
f();
```

```stdout
0
```

## sub_array_13

```Raku
sub f(*@r) { say @r.elems; }
f(10,20,30);
```

```stdout
3
```

## sub_array_17

```Raku
sub f(*@r) { say @r; }
f("x","y","z");
```

```stdout
[x y z]
```

## sub_array_18

```Raku
sub f(*@r) { say @r[2]; }
f(1,2,3);
```

```stdout
3
```

## sub_array_7

```Raku
sub f(**@r) { say @r.elems; }
f(10,20,30);
```

```stdout
3
```

## sub_hash_2

```Raku
sub collides(*%h) { say %h{'h'}; }
collides(h => 42);
```

```stdout
42
```

## sub_hash_5

```Raku
sub only(*%h) { say %h.elems; }
only(a => 1, b => 2, c => 3);
```

```stdout
3
```

## sub_hash_6

```Raku
sub only(*%h) { say %h.elems; }
only();
```

```stdout
0
```

## sub_hash_8

```Raku
sub f(*%h) { say %h{'z'}; }
f(z => 4, w => 5);
```

```stdout
4
```

## test_interp_leading_var

```Raku
my $x = "world";
say "$x there";
```

```stdout
world there
```

## test_interp_only_var

```Raku
my $x = "hi";
say "$x";
```

```stdout
hi
```

## test_interp_simple

```Raku
my $name = "world";
say "hello $name";
```

```stdout
hello world
```

## test_interp_trailing_lit

```Raku
my $a = "foo";
say "val=$a!";
```

```stdout
val=foo!
```

## test_print_basic

```Raku
my $x = "hello";
print "$x\n";
```

```stdout
hello
```

## array_14

```Raku
my @n = (1,2,3,4);
say [*] @n;
say [+] @n;
```

```stdout
24
10
```

## array_15

```Raku
my @a = (10,20,30);
say @a[*-1];
say @a[*-2];
```

```stdout
30
20
```

## array_22

```Raku
my @b = 1,2,3;
@b = (1+2);
say @b.elems;
```

```stdout
1
```

## array_23

```Raku
my @a = 1,2,3;
@a = 9;
say @a.elems;
```

```stdout
1
```

## array_33

```Raku
my @a = (10,20,30);
say @a[*-1];
say @a[*-2];
```

```stdout
30
20
```

## ladder__rung01_variables_multiple_declaration

```Raku
my ($a, $b) = (1, 2);
say $a;
say $b;
```

```stdout
1
2
```

## ladder__rung01_variables_no_initializer

```Raku
my $x;
$x = 5;
say $x;
```

```stdout
5
```

## ladder__rung026_lit_radix_fraction_identity

```Raku
say :16<ff.8> === 255.5;
say :16<ff.8> eqv 255.5;
say :16<ff.8> ~~ Rat;
```

```stdout
True
True
True
```

## ladder__rung027_quote_q_plain_symmetric

```Raku
say Q/a\\b$x/;
say Q|a{1}b|;
say Q!a@b!;
```

```stdout
a\\b$x
a{1}b
a@b
```

## ladder__rung05_hashes

```Raku
my %h = a => 1, b => 2;
say %h{'a'};
say %h{'b'};
```

```stdout
1
2
```

## ladder__rung05_hashes_keys_values

```Raku
my %h = (a => 1, b => 2);
say %h.keys.sort;
say %h.values.sort;
```

```stdout
(a b)
(1 2)
```

## ladder__rung07_subs_a_bare_make_temp_dir_is_a_call_without_arguments

```Raku
use lib "/home/resources/roast-master/packages/Test-Helpers/lib"; use Test::Util;
my $d = make-temp-dir; my $e = make-temp-dir();
say $d.d, " ", $d.e, " ", $d.f, " ", ($d.Str ne $e.Str)
```

```stdout
True True False True
```

## ladder__rung09_string_methods

```Raku
my $s = "Raku";
say $s.uc;
say $s.chars;
```

```stdout
RAKU
4
```

## ladder__rung10_given_when_basic_match

```Raku
given 5 {
    when 5 { say "matched"; }
}
```

```stdout
matched
```

## ladder__rung13_classes_an_attributive_named_parameter_binds_the_attribute_in_build

```Raku
class A { has $.x; has $.y; submethod BUILD(:$!x, :$!y) { } }
class B { has $.x; submethod BUILD(Int :$!x) { } }
say A.new(x => 1, y => 2).x, A.new(x => 3, y => 4).y, B.new(x => 5).x;
```

```stdout
145
```

## ladder__rung14_roles_the_compile_time_variable_role_names_the_enclosing_role

```Raku
role R { method n { $?ROLE.^name } }
class K does R { }
say K.n;
```

```stdout
R
```

## ladder__rung16_bool_relops_interpolated

```Raku
my $b = 3 > 1;
my $c = 3 < 1;
say "b=$b c=$c";
```

```stdout
b=True c=False
```

## simple_assign_103

```Raku
my $n = 5;
--$n;
say $n;
```

```stdout
4
```

## simple_assign_104

```Raku
my $n = 5;
++$n;
say $n;
```

```stdout
6
```

## simple_assign_25

```Raku
my $s = 1;
$s = 2;
say $s;
```

```stdout
2
```

## simple_assign_39

```Raku
my $x = 5;
$x += 3;
say $x;
```

```stdout
8
```

## simple_assign_41

```Raku
my $x = 24;
$x /= 6;
say $x;
```

```stdout
4
```

## simple_assign_42

```Raku
my $x = 6;
$x *= 4;
say $x;
```

```stdout
24
```

## simple_assign_43

```Raku
my $x = 7;
$x -= 4;
say $x;
```

```stdout
3
```

## simple_assign_52

```Raku
my ($a, $b) = 1, 2, 3;
say $a;
say $b;
```

```stdout
1
2
```

## simple_assign_53

```Raku
my ($a, $b, $c) = 1, 2;
say $a;
say $b;
```

```stdout
1
2
```

## simple_assign_57

```Raku
my ($a, $b) = 3, 7;
say $a;
say $b;
```

```stdout
3
7
```

## simple_assign_58

```Raku
my $h = 7/2;
say $h*2 == 7 ?? 7 !! 0;
say $h*2;
```

```stdout
7
7
```

## simple_assign_78

```Raku
my $x = 3;
say "nope" without $x;
say "end";
```

```stdout
end
```

## simple_assign_97

```Raku
my $i = 0;
$i = $i + 1 until $i >= 3;
say $i;
```

```stdout
3
```

## simple_program_25

```Raku
my $y;
say "nope" with $y;
say "end";
```

```stdout
end
```

## test_interp_multi_var

```Raku
my $a = "foo";
my $b = "bar";
say "start $a middle $b end";
```

```stdout
start foo middle bar end
```

## test_print_expr

```Raku
my $a = 1;
my $b = 2;
print $a + $b;
```

```stdout
3
```

## array_32

```Raku
my @a = (10,20,30);
say @a[0];
say @a[2];
say @a[1] + 5;
```

```stdout
10
30
25
```

## array_replace_3

```Raku
my @a = (1,2,3);
say "A";
say @a[99];
say "B";
```

```stdout
A
(Any)
B
```

## array_replace_4

```Raku
my @a = (10,20,30);
say "before";
say @a[3];
say "after";
```

```stdout
before
(Any)
after
```

## exceptions__ex11_rk_numeric_conversion_dies

```Raku
# ex11 -- a C conversion inside an operator raises: 'abc' + 1 is X::Str::Numeric, uncaught, so Rakudo prints what came before, speaks once on stderr and exits 1 (SCRIP at fe4714842 fails the statement silently and goes on: the protocol's P2 raise, P3 omega test and P5 root voice for Raku; DESIGN-PLAN exceptions, the cto 2026-10-29)
say 'before';
say 'abc' + 1;
say 'never';
```

```stdout
before
```

## junction_say_6

```Raku
    say(any(1, 2, 3));
    say(all('a', 'b'));
    say(none(10, 20));
    say(one('x', 'y'));
```

```stdout
any(1, 2, 3)
all(a, b)
none(10, 20)
one(x, y)
```

## ladder__rung01_variables

```Raku
my $name = "Raku";
my $n = 42;
say $name;
say $n;
```

```stdout
Raku
42
```

## ladder__rung027_quote_q_a_b_escapes

```Raku
my @foo = <a b>;
say Q:a:b/@foo[]/;
say Q:a:b/\@foo[]/;
say Q:a:b/\\@foo[]/;
```

```stdout
a b
@foo[]
\a b
```

## ladder__rung027_quote_q_s_b_escapes

```Raku
my $foo = 42;
say Q:s:b[$foo];
say Q:s:b[\$foo];
say Q:s:b[\\$foo];
```

```stdout
42
$foo
\42
```

## ladder__rung028_quote_qq_adverb_h

```Raku
my %foo = a => 42;
say Q:h:b/%foo<a>/;
say Q:h:b/\%foo<a>/;
say Q:h:b/\\%foo<a>/;
```

```stdout
42
%foo<a>
\42
```

## ladder__rung04_arrays

```Raku
my @arr = (1, 2, 3);
say @arr[0];
say @arr[2];
say @arr.elems;
```

```stdout
1
3
3
```

## ladder__rung04_arrays_flatten_past_128_elements

```Raku
my @a = 1 xx 200;
my @l = @a.Slip, 5;
say @l.elems;
say @l[199] + @l[200];
```

```stdout
201
6
```

## ladder__rung05_hashes_exists_delete

```Raku
my %h = (a => 1);
say %h{'a'}:exists;
%h{'a'}:delete;
say %h{'a'}:exists;
```

```stdout
True
False
```

## ladder__rung10_given_when_default_case

```Raku
given 99 {
    when 1 { say "one"; }
    default { say "other"; }
}
```

```stdout
other
```

## ladder__rung10_given_when_no_match_falls_through

```Raku
given 99 {
    when 1 { say "one"; }
}
say "after";
```

```stdout
after
```

## ladder__rung17_compare_ops_in_a_boolean_context

```Raku
say ((1 <=> 2) ?? "T" !! "F");
say ((2 <=> 2) ?? "T" !! "F");
say (("a" cmp "b") ?? "T" !! "F");
if (3 <=> 3) { say "y" } else { say "n" }
```

```stdout
T
F
T
n
```

## ladder__rung17_compare_ops_variable

```Raku
my $o = (5 <=> 2);
say $o;
my $p = ("a" leg "b");
say $p;
```

```stdout
More
Less
```

## parse_census__qto_heredoc

```Raku
my $x = q:to'END';
hi
END
say $x;
```

## roast_causes__rc05_infix_precedence_traits_are_applied

```Raku
{ sub infix:<mean>($a, $b) { ($a + $b) / 2 }; say 10 mean 4 * 5; }
{ sub infix:<mean>($a, $b) is tighter(&infix:<*>) { ($a + $b) / 2 }; say 10 mean 4 * 5; }
{ sub infix:<mul2>($a, $b) is equiv(&infix:<*>) { $a * $b }; say 2 + 3 mul2 4; }
{ sub infix:<lo>($a, $b) is looser(&infix:<+>) { $a * $b }; say 1 + 2 lo 3; }
```

```stdout
15
35
14
9
```

## simple_assign_109

```Raku
my $n = 7;
repeat {
    say $n;
} until $n > 0;
```

```stdout
7
```

## simple_assign_50

```Raku
my $a = "ok";
my $b;
say $a // "nope";
say $b // "fallback";
```

```stdout
ok
fallback
```

## simple_assign_59

```Raku
my $a = 5; my $b = 2;
say $a/$b;
my $c = 8; my $d = 2;
say $c/$d;
```

```stdout
2.5
4
```

## simple_assign_75

```Raku
my $x = 7;
my $r = 0;
$r = $_ with $x;
say $r;
```

```stdout
7
```

## simple_assign_79

```Raku
my $y;
my $r = 0;
$r = 9 without $y;
say $r;
```

```stdout
9
```

## simple_assign_86

```Raku
my ($a, $b, $c) = 3, 7;
say $a;
say $b;
say "end";
```

```stdout
3
7
end
```

## core__rc03_string_subs

```Raku
my $s = "  Hello World  ";
say lc($s.trim), "|", uc("abc"), "|", tc("abc"), "|", tclc("aBC"), "|", fc("ABC");
say chomp("x\n"), "|", chop("abc"), "|", flip("abc"), "|", wordcase("hello world");
say trim-leading($s), "|", trim-trailing($s), "|", substr("abcdef", 2, 3), "|", index("abcabc", "c"), "|", rindex("abcabc", "c");
say ords("AB"), "|", samecase("hello", "AbCd");
```

```stdout
hello world|ABC|Abc|Abc|abc
x|ab|cba|Hello World
Hello World  |  Hello World|cde|2|5
(65 66)|HeLlo
```

## ladder__rung023_kw_nil_nil_hash_element_reset

```Raku
my %h = a => 1;
%h<a> = Nil;
say %h<a>.WHAT;
say %h<a> === Any;
say %h<a>.defined;
```

```stdout
(Any)
True
False
```

## ladder__rung03_strings_a_heredoc_terminator_indent_counts_tab_stops_of_eight_columns

```Raku
my $q = qq:to/END/;
        	line one
	        line two
		END
say $q.raku;
```

```stdout
"line one\nline two\n"
```

## ladder__rung04_arrays_push_pop

```Raku
my @a = (1, 2);
@a.push(3);
say @a;
@a.pop;
say @a;
```

```stdout
[1 2 3]
[1 2]
```

## ladder__rung10_given_when_multiple_when

```Raku
given 2 {
    when 1 { say "one"; }
    when 2 { say "two"; }
    when 3 { say "three"; }
}
```

```stdout
two
```

## ladder__rung11_junctions

```Raku
if any(1,2,3) == 2 {
    say "yes";
} else {
    say "no";
}
```

```stdout
yes
```

## ladder__rung11_junctions_all

```Raku
if all(1,2,3) > 0 {
    say "yes";
} else {
    say "no";
}
```

```stdout
yes
```

## ladder__rung11_junctions_none

```Raku
if none(1,2,3) == 5 {
    say "yes";
} else {
    say "no";
}
```

```stdout
yes
```

## ladder__rung11_junctions_one

```Raku
if one(1,2,3) == 2 {
    say "yes";
} else {
    say "no";
}
```

```stdout
yes
```

## roast_causes__rc09_a_user_candidate_on_a_builtin_infix_is_dispatched

```Raku
enum A <e1 e2>;
multi infix:<< - >>(e1, e2) { return "AWW" };
say e1 - e2;
say 5 - 2;
say 1.5 - 1;
```

```stdout
AWW
3
0.5
```

## simple_assign_108

```Raku
my $j = 10;
repeat {
    $j = $j + 1;
    say $j;
} until $j >= 12;
```

```stdout
11
12
```

## simple_assign_90

```Raku
my $i = 3;
$i--;
say $i;
$i--;
say $i;
```

```stdout
2
1
```

## simple_assign_94

```Raku
my $i = 0;
$i++;
say $i;
$i++;
say $i;
```

```stdout
1
2
```

## ladder__rung023_kw_nil_nil_in_array

```Raku
say [Nil, 1].raku;
say [1, Nil, 3].raku;
my @a = 1, Nil, 3;
say @a.raku;
my @b = (Nil, "a");
say @b.raku;
```

```stdout
[Any, 1]
[1, Any, 3]
[1, Any, 3]
[Any, "a"]
```

## ladder__rung025_kw_nan_nan_identity

```Raku
say NaN === NaN;
say NaN === -NaN;
say NaN !=== NaN;
say 0e0 === -0e0;
my $x = NaN;
say $x === $x;
```

```stdout
True
True
False
False
True
```

## ladder__rung027_quote_q_adverb_long_names

```Raku
my $x = 5;
say Q:double/a$x\t/;
say Q:single/a$x\t/;
say Q:scalar/a$x\t/;
say Q:backslash/a$x\t/;
say Q:words/a b/.elems;
```

```stdout
a5	
a$x\t
a5\t
a$x	
2
```

## ladder__rung02_arithmetic

```Raku
my $a = 7;
my $b = 3;
say $a + $b;
say $a - $b;
say $a * $b;
say $a % $b;
```

```stdout
10
4
21
1
```

## roast_causes__rc06_samecase_reads_the_case_of_each_pattern_char

```Raku
my Str $a = 'Just another Raku hacker';
say $a.samecase('XXXXXXXXXXXXXXXXXXXXXXXXX');
say $a.samecase('äääääääääääääääääääääääää');
say 'Ab'.samecase('äÄ');
say 'abc'.samecase('Ä');
say $a;
```

```stdout
JUST ANOTHER RAKU HACKER
just another raku hacker
aB
ABC
Just another Raku hacker
```

## core__rc01_core_subs

```Raku
my @a = 1, 1, 2, 3, 3, 3, 4;
say squish(@a);
say unique(@a);
say permutations(3).elems;
say combinations(4, 2).elems;
say sech(0), " ", cotanh(1).round(0.001), " ", cosech(1).round(0.001);
say lines("a\nb\nc").elems;
```

```stdout
(1 2 3 4)
(1 2 3 4)
6
6
1 1.313 0.851
3
```

## ladder__rung02_int_promotes_past_int64

```Raku
my $m = -9223372036854775807 - 1;
say -$m;
say $m * -1;
say $m - 1;
my $p = 9223372036854775807;
say $p + 1;
say $p * 2;
```

```stdout
9223372036854775808
9223372036854775808
-9223372036854775809
9223372036854775808
18446744073709551614
```

## ladder__rung023_kw_nil_fresh_scalar_compare

```Raku
my $x;
say $x < 5;
say $x == 0;
say $x <=> 1;
my $a;
my $b = 5;
say $a < $b;
say $b > $a;
```

```stdout
True
True
Less
True
True
```

## ladder__rung023_kw_nil_nil_typed_scalar_reset

```Raku
my Int $i = 5;
$i = Nil;
say $i.WHAT;
say $i.raku;
say $i === Int;
my Str $s = Nil;
say $s.WHAT;
say $s === Str;
```

```stdout
(Int)
Int
True
(Str)
True
```

## ladder__rung024_kw_inf_inf_fmt

```Raku
say Inf.fmt("%f");
say Inf.fmt("%e");
say Inf.fmt("%g");
say (-Inf).fmt("%f");
say Inf.fmt("%5s");
say 3.14159.fmt("%.2f");
say 42.fmt("%05d");
say 255.fmt("%x");
```

```stdout
Inf
Inf
Inf
-Inf
  Inf
3.14
00042
ff
```

## ladder__rung03_strings_like_and_unlike_match_the_string_an_instance_with_its_own_str_gives

```Raku
use Test;
plan 5;
class Foo { method Str { 'bar' } }
like Foo.new, /bar/, 'an instance with its own Str is matched through it';
unlike Foo.new, /baz/, 'and unlike reads the same string';
like 42, /42/, 'an Int';
unlike 42, /43/, 'an Int, unlike';
like 3.5, /^ 3 '.' 5 $/, 'a Rat';
```

```stdout
1..5
ok 1 - an instance with its own Str is matched through it
ok 2 - and unlike reads the same string
ok 3 - an Int
ok 4 - an Int, unlike
ok 5 - a Rat
```

## ladder__rung023_kw_nil_fresh_scalar_is_any

```Raku
my $x;
say $x;
say $x.WHAT;
say $x.raku;
say $x.defined;
my Int $i;
say $i;
say $i.WHAT;
say $i.raku;
```

```stdout
(Any)
(Any)
Any
False
(Int)
(Int)
Int
```

## ladder__rung07_subs_a_named_placeholder_is_a_named_parameter

```Raku
sub greet { say "hello " ~ $:name }
greet(:name<world>);
sub diff { say $:big - $:small }
diff(:small(2), :big(10));
sub scaled { say $^x * $:by }
scaled(4, :by(3));
use isms <Perl5>;
sub cap { say $:F + 1 }
cap(:F(41));
```

```stdout
hello world
8
12
42
```

## token_1

```Raku
# rk_grammar_dotws — G3-2: non-capturing subrule <.name> (here <.ws>). No Match tree yet, so <.name>
# expands like <name>; the point is the syntax + a user-defined ws token mediating inter-atom space.
grammar G {
    token ws  { \s }
    token a   { foo }
    token b   { bar }
    token TOP { <a> <.ws> <b> }
}
say G.parse("foo bar");
say G.parse("foobar");
```

```stdout
｢foo bar｣
 a => ｢foo｣
 b => ｢bar｣
Nil
```

## ladder__rung024_kw_inf_inf_parse

```Raku
say ∞;
say -∞;
say "Inf".Num;
say +"Inf";
say "-Inf".Num;
my $x = Inf;
$x++;
say $x;
my $y = -Inf;
$y--;
say $y;
```

```stdout
Inf
-Inf
Inf
Inf
-Inf
Inf
-Inf
```

## sub_say_4

```Raku
# rk_arith.raku — integer arithmetic, operator precedence
sub main() {
    say(1 + 2);
    say(10 - 3);
    say(4 * 5);
    say(15 / 3);
    say(2 + 3 * 4);
    say((2 + 3) * 4);
    say(10 % 3);
}
main();
```

```stdout
3
7
20
5
14
20
1
```

## ladder__rung025_kw_nan_nan_distinct_values

```Raku
say 1e0 === 1;
say 1e0 eqv 1;
say Inf === -Inf;
say Inf === Inf;
say 0e0 == -0e0;
say -0e0 === -0e0;
say NaN ~~ Inf;
say Inf ~~ NaN;
say 1e0 ~~ NaN;
say NaN ~~ 1e0;
say NaN ~~ Num;
say NaN ~~ Numeric;
```

```stdout
False
False
False
True
True
True
False
False
False
False
True
True
```

## token_regex_1

```Raku
# rk_grammar_rule_sigspace — G3-2: `rule` :sigspace. Whitespace between atoms in a `rule` body becomes
# optional whitespace (\s*); `token`/`regex` strip it. So `rule TOP { <a> <b> }` matches with or without
# spaces; the token subrules stay strict. Match -> matched text; no match -> Nil (empty).
grammar G {
    token a   { foo }
    token b   { bar }
    rule  TOP { <a> <b> }
}
say G.parse("foo bar");
say G.parse("foobar");
say G.parse("foo   bar");
say G.parse("foo baz");
```

```stdout
｢foo bar｣
 a => ｢foo｣
 b => ｢bar｣
Nil
｢foo   bar｣
 a => ｢foo｣
 b => ｢bar｣
Nil
```

## ladder__rung09_regex_the_subst_method_takes_x_with_a_count_a_range_or_a_star_and_nth

```Raku
say "a b c d".subst(/\w/, "x", :x(1));
say "a b c d".subst(/\w/, "x", :x(2));
say "a b c d".subst(/\w/, "x", :x(3));
say "a b c d".subst(/\w/, "x", :x(4));
say "a b c d".subst(/\w/, "x", :x(5));
say "a b c d".subst(/\w/, "x", :x(*));
say "a b c d".subst(/\w/, "x", :x(2..3));
say "a b c d".subst(/\w/, "x", :x(5..6));
say "a b c d".subst(/\w/, "x", :nth(2));
say "a b c d".subst(/\w/, "x", :nth(4));
say "a a a a".subst("a", "x", :x(2));
say "a a a a".subst("a", "x", :nth(3));
say "a a a a".subst("a", "x", :g);
say "a b c d".subst(/\w/, { $/.uc }, :x(2));
```

```stdout
x b c d
x x c d
x x x d
x x x x
a b c d
x x x x
x x x d
a b c d
a x c d
a b c x
x x a a
a a x a
x x x x
A B c d
```

## scrip_test_rk_grammar_subrule

```Raku
# rk_grammar_subrule — G3-2 first milestone: <subrule> references compose via registry expansion.
# Single subrule, concatenation <a><b>, and alternation-in-subrule grouping (foo|bar). token = ws
# insignificant, anchored whole-string. Match -> matched text; no match -> Nil (stringifies empty).
grammar Greet {
    token hi  { hello }
    token TOP { <hi> }
}
say Greet.parse("hello");
say Greet.parse("nope");
grammar Seq {
    token a   { foo }
    token b   { bar }
    token TOP { <a> <b> }
}
say Seq.parse("foobar");
say Seq.parse("fooqux");
grammar Alt {
    token x   { cat | dog }
    token TOP { <x> s }
}
say Alt.parse("cats");
say Alt.parse("dogs");
say Alt.parse("fishs");
```

```stdout
｢hello｣
 hi => ｢hello｣
Nil
｢foobar｣
 a => ｢foo｣
 b => ｢bar｣
Nil
｢cats｣
 x => ｢cat｣
｢dogs｣
 x => ｢dog｣
Nil
```

## ladder__rung02_arithmetic_rat_literals_division_stringification_and_methods

```Raku
say 0.1 + 0.2;
say (0.1 + 0.2).WHAT;
say 1.0.WHAT;
say 1e0.WHAT;
say 1_000.5.WHAT;
say .5.WHAT;
say (6/3).WHAT;
say 6/3;
say (1/3).raku;
say (1/3);
say (2/4).raku;
say (3/1).raku;
say (-7/2).raku;
say 0.0000001.raku;
say 100000000000000000000/3;
say (100000000000000000000/3).WHAT;
say 1/100000000000000000000;
say (1/100000000000000000000).WHAT;
say 4 ** -2;
say (4 ** -2).WHAT;
say (2/3) ** 2;
say (2/3) ** -2;
say 0 ** 0;
say (0.5) ** 2;
say 0.5 ** 0.5;
say 2 ** 0.5;
say (1/3).floor, (7/2).ceiling, (7/2).round, (-7/2).round, (5/2).round;
say (7/2).Int, (-7/2).Int, (7/2).truncate;
say (1/3).numerator, (1/3).denominator;
say (1/3).nude;
say (1/3) <=> (1/2);
say (1/3) == (2/6);
say 0.5 == 1/2;
say 0.1 + 0.2 == 0.3;
say 1/3 + 1;
say (1/3) * 3;
say ((1/3) * 3).WHAT;
say 1/3 + 0.5e0;
say (1/3 + 0.5e0).WHAT;
say abs(-1/3);
say sqrt(1/4);
say (1/4).sqrt;
say -(1/3);
say 3 * (1/3);
say (1/3) / (1/3);
say 7 % (3/2);
say (7/2) % 2;
say 10 / 4;
say 10 %% 4;
say (1/3).Str;
say (1/3).gist;
say 1/3 ~ "";
say (1/3).Rat;
say (1/3).Bool;
say (0/3).Bool;
say ?(0.0);
say so 0.0;
say 0.0 ?? "t" !! "f";
say 1.5.floor;
say 1.5.round;
say 2.5.round;
say -1.5.round;
say 0.5.round;
say 1.25.round(0.1);
say 3.14159.round(0.01);
say 12345.6789.round(0.01);
say 12345.6789.round(100);
say (1/3).round(0.01);
say 1.23456789.Str;
say 123456789012345.6789;
say 0.000001;
say 0.0000001;
say 1e-7;
say 1.0;
say 10.0;
say 100.50;
say -0.5;
```

```stdout
0.3
(Rat)
(Rat)
(Num)
(Rat)
(Rat)
(Rat)
2
<1/3>
0.333333
0.5
3.0
-3.5
0.0000001
33333333333333333333.333333
(Rat)
1e-20
(Num)
0.0625
(Rat)
0.444444
2.25
1
0.25
0.7071067811865476
1.4142135623730951
044-33
3-33
13
(1 3)
Less
True
True
True
1.333333
1
(Rat)
0.8333333333333333
(Num)
0.333333
0.5
0.5
-0.333333
1
1
1
1.5
2.5
False
0.333333
0.333333
0.333333
0.333333
True
False
False
False
f
1
2
3
-2
1
1.3
3.14
12345.68
12300
0.33
1.23456789
123456789012345.6789
0.000001
0.0000001
1e-07
1
10
100.5
-0.5
```

## for_2

```Raku
for ^5 -> $i { say $i }
```

```stdout
0
1
2
3
4
```

## for_3

```Raku
for ^3 { say $_ }
```

```stdout
0
1
2
```

## ladder__rung06_control_a_declaration_with_a_statement_modifier_is_the_enclosing_blocks_variable

```Raku
my $x = 1; { my $x = 9 if True; say $x }; say $x;
```

```stdout
9
1
```

## ladder__rung06_control_an_if_bodys_own_my_variable_is_not_the_enclosing_variable

```Raku
my $a = 1; if True { my $a = 3; say $a }; say $a;
```

```stdout
3
1
```

## ladder__rung08_for_a_c_style_loop_bodys_own_my_variable_is_not_the_enclosing_variable

```Raku
my $m = 50; loop (my $i = 0; $i < 2; $i++) { my $m = $i + 1; say $m }; say $m;
```

```stdout
1
2
50
```

## ladder__rung08_for_a_pair_pattern_pointy_signature_binds_key_and_value

```Raku
for (1 => 'one', 2 => 'two') -> (:key($n), :value($w)) { say "$n:$w" }
```

```stdout
1:one
2:two
```

## ladder__rung10_given_a_given_bodys_own_my_variable_is_not_the_enclosing_variable

```Raku
my $g = 1; given 5 { my $g = $_ + 1; say $g }; say $g;
```

```stdout
6
1
```

## ladder__rung15_blocks_a_block_inside_a_sub_has_its_own_my_variable

```Raku
sub f { my $a = 7; { my $a = 8; say $a }; say $a }; f();
```

```stdout
8
7
```

## loop_replace_1

```Raku
loop (my $i = 0; $i < 3; $i++) { say $i; }
```

```stdout
0
1
2
```

## loop_replace_2

```Raku
loop (my $i = 3; $i > 0; $i--) { say $i; }
```

```stdout
3
2
1
```

## say_26

```Raku
 my $x = 5; my $u; say($x.defined); say($u.defined); 
```

```stdout
True
False
```

## simple_assign_27

```Raku
 my $b = { return 3; }; say $b() + $b(); 
```

## array_37

```Raku
my @w = "a", "b", "c";
say [~] @w;
```

```stdout
abc
```

## array_45

```Raku
my @a = 10,20,30;
if @a[*-1] > 25 { say "big" }
```

```stdout
big
```

## array_say_9

```Raku
    my @a = (1, 2, 3);
    say(@a);
```

```stdout
[1 2 3]
```

## class_method_2

```Raku
class C { method go() { return 42 } }
say C.new.go;
```

```stdout
42
```

## hash_15

```Raku
my $x = 10; my %h = (a => 5);
say $x * %h{'a'};
```

```stdout
50
```

## join_array_1

```Raku
my @a = (10,20,30);
say @a[*].join(",");
```

```stdout
10,20,30
```

## join_array_10

```Raku
my @s = "a","b","c","d";
say @s[3,1].join("-");
```

```stdout
d-b
```

## join_array_11

```Raku
my @a = 10,20,30,40,50;
say @a[0,2,4].join(",");
```

```stdout
10,30,50
```

## join_array_12

```Raku
my @a = 10,20,30,40,50;
say @a[1,3].join(",");
```

```stdout
20,40
```

## join_array_14

```Raku
my @a = 1,2,3,;
say @a.join(",");
```

```stdout
1,2,3
```

## join_array_15

```Raku
my @b = (4,5,6,);
say @b.join(",");
```

```stdout
4,5,6
```

## join_array_17

```Raku
my @c = 1,2,3;
say @c[0,2,].join(",");
```

```stdout
1,3
```

## join_array_2

```Raku
my @a = (7);
say @a[*].join(",");
```

```stdout
7
```

## join_array_3

```Raku
my @a = "p", "q", "r";
say @a.keys.join(",");
```

```stdout
0,1,2
```

## join_array_7

```Raku
my @a = "p", "q", "r";
say @a.values.join(",");
```

```stdout
p,q,r
```

## join_array_8

```Raku
my @a = 10,20,30,40,50;
say @a[2,0].join(",");
```

```stdout
30,10
```

## join_array_9

```Raku
my @a = 10,20,30;
say @a[0,0,0].join(",");
```

```stdout
10,10,10
```

## join_hash_1

```Raku
my %h = a => 1, b => 2, c => 3;
say %h.keys.sort.join(",");
```

```stdout
a,b,c
```

## join_hash_2

```Raku
my %h = a => 1, b => 2, c => 3;
say %h.pairs.sort.join(" ");
```

```stdout
a	1 b	2 c	3
```

## join_hash_3

```Raku
my %h = a => 1, b => 2, c => 3;
say %h.values.sort.join(",");
```

```stdout
1,2,3
```

## ladder__rung01_variables_a_declarator_bind_takes_the_whole_comma_list

```Raku
my $e := 2, 3, 5; my @f := 1, 2;
say $e.raku, " ", @f.raku, " ", $e.elems;
```

```stdout
(2, 3, 5) (1, 2) 3
```

## ladder__rung027_quote_q_a_adverb

```Raku
my @a = 1, 2;
say Q:a/@a[] @a $a/;
```

```stdout
1 2 @a $a
```

## ladder__rung027_quote_q_plain_raw

```Raku
say Q{$x @y %z &f {1+1} \n \\};
say Q{};
```

```stdout
$x @y %z &f {1+1} \n \\

```

## ladder__rung027_quote_q_s_adverb

```Raku
my $x = 5;
say Q:s/a$x\n{$x}/;
```

```stdout
a5\n{5}
```

## ladder__rung027_quote_q_s_adverb_backslash

```Raku
my $x = 5;
say Q:s/a\$x a\\$x/;
```

```stdout
a\5 a\\5
```

## ladder__rung028_quote_qq_array_range

```Raku
my @a = 1, 2, 3;
say qq/@a[1..2] @a[*-1]/;
```

```stdout
2 3 3
```

## ladder__rung04_arrays_an_itemized_array_is_one_element_of_a_slurpy_a_join_and_a_flat

```Raku
sub f(*@x) { @x.elems }; say f(1, $[2, 3]), f($[1, 2, 3]), f(|$[1, 2]), " ", join("|", $["a", "b"]), " ", join("|", ["a", "b"]);
say $[1, 2].raku, " ", (1, $[2, 3]).flat.elems, " ", [1, $[2, 3]].elems, " ", (1, $[2, 3], 4).elems;
```

```stdout
212 a b a|b
$[1, 2] 2 2 3
```

## ladder__rung04_arrays_slice

```Raku
my @a = (1, 2, 3, 4, 5);
say @a[1..3];
```

```stdout
(2 3 4)
```

## ladder__rung06_control_a_while_bodys_own_my_variable_is_not_the_enclosing_variable

```Raku
my $t = 100; my $c = 0;
while $c < 2 { my $t = $c * 10; say $t; $c++ }; say $t;
```

```stdout
0
10
100
```

## ladder__rung06_control_an_if_statement_in_parentheses_gives_its_value

```Raku
my $c = 1; my $v = (if $c { 10 } else { 20 });
say $v;
```

```stdout
10
```

## ladder__rung06_control_unless

```Raku
my $x = 5;
unless ($x > 10) { say "small"; }
```

```stdout
small
```

## ladder__rung07_subs_a_hash_parameter_with_a_subsignature_unpacks_its_named_items

```Raku
sub k(%h (:$left, :$right)) { "$left $right" }
say k({ left => 1, right => 2 });
```

```stdout
1 2
```

## ladder__rung07_subs_a_multi_candidate_typed_array_hash_callable_or_positional_is_chosen_by_the_argument

```Raku
multi g(Array $a) { "A" }; multi g(Hash $h) { "H" }; multi g(Callable $c) { "C" }; multi g(Positional $p) { "P" }; multi g($x) { "S" }
say g([1]), g({ a => 1 }), g({ 1 }), g(3), g((1, 2)), g(1..3);
```

```stdout
AHCSPP
```

## ladder__rung07_subs_a_subs_own_my_variable_is_not_the_file_variable_another_sub_reads

```Raku
my $x = 7; sub f { my $x = 5; $x }; sub g { $x };
say f(), g();
```

```stdout
57
```

## ladder__rung08_for_a_loop_header_declares_two_variables

```Raku
my $s = ""; loop (my $a = 1, my $b = 2; $a < 5; $a++, $b++) { $s = "$a $b"; }
say $s;
```

```stdout
4 5
```

## ladder__rung08_for_a_pointy_block_parameter_with_a_subsignature_unpacks_each_pair

```Raku
for a => 1, b => 2 -> Pair $p (:$key, :$value) { print "$key$value," }
say "";
```

```stdout
a1,b2,
```

## ladder__rung08_for_a_while_statement_in_parentheses_runs

```Raku
my $n = 0; (while $n < 5 { $n++ });
say $n;
```

```stdout
5
```

## ladder__rung08_for_last_from_an_inner_loop_leaves_a_labelled_loop_in_parentheses

```Raku
my $e = 0; (L5: loop { loop { $e++; last L5 } });
say $e;
```

```stdout
1
```

## ladder__rung08_for_last_from_an_inner_while_leaves_a_labelled_while_in_parentheses

```Raku
my $c = 0; (L1: while True { while True { $c++; last L1 } });
say $c;
```

```stdout
1
```

## ladder__rung09_regex_a_bare_regex_in_a_condition_matches_the_topic

```Raku
$_ = "foo bar qux"; say so /baz/; say so /bar/;
say /baz/ ?? "yes" !! "no"; say "unless" unless /baz/; if /bar/ { say "if" }
```

```stdout
False
True
no
unless
if
```

## ladder__rung10_smartmatch_a_bag_matches_only_an_equal_bag

```Raku
say (bag <a b c>) ~~ (bag <a b c>);
say (bag <b c>) ~~ (bag <a b c>);
```

```stdout
True
False
```

## ladder__rung10_smartmatch_a_quantity_that_differs_does_not_match

```Raku
say (bag <a b c>) ~~ (bag <a b c c>);
say (mix <a b>) ~~ (mix <a b b>);
```

```stdout
False
False
```

## ladder__rung10_smartmatch_a_set_matches_only_an_equal_set

```Raku
say (set <a b c>) ~~ (set <a b c>);
say (set <b c>) ~~ (set <a b c>);
```

```stdout
True
False
```

## ladder__rung10_smartmatch_the_topic_is_coerced_to_the_matchers_family

```Raku
say "a" ~~ (set <a>);
say (bag <a a>) ~~ (set <a>);
```

```stdout
True
True
```

## ladder__rung13_classes_a_method_whose_invocant_is_named_dollar_underscore_reads_it_as_the_topic

```Raku
class Foo { method echo { "echo" }; method topic ($_: ) { .echo } }
say Foo.new.topic;
```

```stdout
echo
```

## ladder__rung13_classes_a_method_with_a_definite_type_invocant_keeps_the_parameters

```Raku
class A { method me(A:D: $y) { $y } }
say A.new.me(8);
```

```stdout
8
```

## ladder__rung13_classes_named_arguments_of_a_method_call_bind_by_name

```Raku
class F { method m(:$x) { $x }; method n(:$x, :$y) { "$x-$y" }; method o($a, :$x) { "$a/$x" } }
say F.new.m(x => 4), F.new.m(:x(5)), F.new.n(:y(1), :x(2)), F.new.o(9, :x(3)), F.new.o(9, x => 3);
```

```stdout
452-19/39/3
```

## ladder__rung15_blocks_anon_sub

```Raku
my $f = sub { 1 };
say $f();
```

```stdout
1
```

## ladder__rung15_blocks_anon_sub_with_arg

```Raku
my $f = sub ($arg) { 1 + $arg };
say $f(3);
```

```stdout
4
```

## ladder__rung15_blocks_fail_is_an_assignment_rhs

```Raku
sub fl { my $e = fail 42; 7 }
say fl().WHAT;
```

```stdout
(Failure)
```

## ladder__rung15_blocks_failure_new_is_a_failure_value_not_a_failing_statement

```Raku
{ my $f = Failure.new; say "in ", $f.WHAT.gist, " ", $f.defined }
sub g { my $f = Failure.new("boom"); $f.exception.message }; say g();
```

```stdout
in (Failure) False
boom
```

## ladder__rung18_two_arg_block

```Raku
my @n = (3,1,2);
say @n.sort({ $^b <=> $^a });
```

```stdout
(3 2 1)
```

## ladder__rung18_two_arg_block_reduce_concat

```Raku
my @w = ("a","bb","c");
say @w.reduce({ $^a ~ $^b });
```

```stdout
abbc
```

## ladder__rung18_two_arg_block_sort_string

```Raku
my @w = ("pear","fig","kiwi");
say @w.sort({ $^b leg $^a });
```

```stdout
(pear kiwi fig)
```

## ladder__rung19_block_methcall_sort_by_key

```Raku
my @w = <aa b ccc>;
say @w.sort({ $^a.chars <=> $^b.chars });
```

```stdout
(b aa ccc)
```

## multi_2

```Raku
multi foo(Int $x) { return $x * 10; }
say foo(3);
```

```stdout
30
```

## parser__bare_ident_expr

```Raku
my $r = foo + 1;
say($r);
```

## parser__handle_stderr

```Raku
my $e = $*STDERR;
say($e);
```

## parser__handle_stdin

```Raku
my $line = $*STDIN;
say($line);
```

## parser__handle_stdout

```Raku
my $x = $*STDOUT;
say($x);
```

## parser__nested_call_arith

```Raku
my $x = add(foo(), bar()) + 1;
say($x);
```

## parser__nested_calls

```Raku
my $n = length(trim($s));
say($n);
```

## parser__slurp_file

```Raku
my $content = slurp("/tmp/test.txt");
say($content);
```

## parser__triple_nested_call

```Raku
my $r = abs(int(sqrt($x)));
say($r);
```

## parser__try_die_msg

```Raku
my $msg = "bad";
try { die $msg; } CATCH { say "error"; }
```

## range_array_1

```Raku
my @a = 1..5;
say @a.elems;
```

```stdout
5
```

## range_array_11

```Raku
my @a = 1,2,3,4,5;
say @a[2..4].sum;
```

```stdout
12
```

## range_array_12

```Raku
my @r = 1..5;
say @r[*-1];
```

```stdout
5
```

## range_array_2

```Raku
my @a = 5..1;
say @a.elems;
```

```stdout
0
```

## range_array_3

```Raku
my @e = 1..^4;
say @e.elems;
```

```stdout
3
```

## range_array_4

```Raku
my @a = 1..5;
say @a.max;
```

```stdout
5
```

## range_array_5

```Raku
my @a = 1..5;
say @a.min;
```

```stdout
1
```

## range_array_6

```Raku
my @a = 1..5;
say [+] @a;
```

```stdout
15
```

## range_array_7

```Raku
my @a = 1..5;
say [*] @a;
```

```stdout
120
```

## range_array_8

```Raku
my @a = 3..3;
say @a.elems;
```

```stdout
1
```

## range_array_9

```Raku
my @a = 1..5;
say @a.sum;
```

```stdout
15
```

## range_array_replace_1

```Raku
my Int @a = 1..4;
say @a.sum;
```

```stdout
10
```

## say_13

```Raku
    my $x = 6 * 7;
    say($x);
```

```stdout
42
```

## say_66

```Raku
my $x = 2;
say(1, $x, 3+4);
```

```stdout
127
```

## say_91

```Raku
    my $x = 99;
    say($x);
```

```stdout
99
```

## say_replace_21

```Raku
my $x = 4; my $y = 9;
say ($x < $y);
```

```stdout
True
```

## say_try_die_1

```Raku
    try { die('boom'); CATCH { say('caught'); } }
    say('after');
```

```stdout
caught
```

## say_try_die_4

```Raku
    try { die('boom'); say('inside-after'); }
    say('after');
```

```stdout
after
```

## simple_assign_120

```Raku
my $x = 5;
{ say "big" if $x > 3 }
```

```stdout
big
```

## simple_assign_121

```Raku
my $x = 1;
{ say "hi" unless $x }; say $x;
```

```stdout
1
```

## simple_assign_122

```Raku
my $x = 0;
{ say "hi" unless $x }
```

```stdout
hi
```

## simple_assign_30

```Raku
my $x = 5;
if ($x > 3) { say "big" }
```

```stdout
big
```

## simple_assign_31

```Raku
my $x = 5;
if 10 > $x > 1 { say "gt" }
```

```stdout
gt
```

## simple_assign_32

```Raku
my $x = 5;
if 1 < $x < 10 { say "in" }
```

```stdout
in
```

## simple_assign_33

```Raku
my $x = 1;
if 1 <= $x < 10 { say "in" }
```

```stdout
in
```

## simple_assign_34

```Raku
my $a = 5;
if 1 < $a == 5 { say "m" }
```

```stdout
m
```

## simple_assign_35

```Raku
my $x = 50;
if 1 < $x < 10 { say "bad" } else { say "out" }
```

```stdout
out
```

## simple_assign_36

```Raku
my $x = 1;
if 1 < $x < 10 { say "bad" } else { say "out" }
```

```stdout
out
```

## simple_assign_37

```Raku
my $x = 5;
unless 1 < $x < 3 { say "fires" }
```

```stdout
fires
```

## simple_assign_60

```Raku
my $n = 8;
if $n %% 2 { say "even" } else { say "odd" }
```

```stdout
even
```

## simple_assign_61

```Raku
my $n = 7;
if $n %% 2 { say "even" } else { say "odd" }
```

```stdout
odd
```

## simple_assign_72

```Raku
my $i = 0;
until $i >= 10 { last if $i >= 2; say $i; $i = $i + 1 }
```

```stdout
0
1
```

## simple_assign_81

```Raku
my $x = 2;
if $x == 1 { say "one" } else { if $x == 2 { say "two" } else { say "other" } }
```

```stdout
two
```

## simple_assign_82

```Raku
my $x = 5;
if $x > 3 { say "big" }
```

```stdout
big
```

## simple_assign_83

```Raku
my $x = 2;
if $x > 3 { say "big" } else { say "small" }
```

```stdout
small
```

## simple_assign_84

```Raku
my $x = 2;
unless $x > 5 { say "not big" }
```

```stdout
not big
```

## simple_assign_88

```Raku
my $x = 5;
if ($x > 3) { say "big"; }
```

```stdout
big
```

## simple_assign_91

```Raku
my $x = 1;
say "big" if $x > 3; say $x > 3;
```

```stdout
False
```

## simple_assign_93

```Raku
my $x = 5;
say "big" if $x > 3;
```

```stdout
big
```

## simple_assign_95

```Raku
my $ok = 1;
print "hi" if $ok == 1;
```

```stdout
hi
```

## simple_assign_96

```Raku
my $x = 2;
say "small" unless $x > 3;
```

```stdout
small
```

## sub_14

```Raku
sub greet(:$name) { say "Hello " ~ $name; }
greet(name => "Bob");
```

```stdout
Hello Bob
```

## sub_23

```Raku
sub f() { say "hi"; return }
f();
```

```stdout
hi
```

## sub_25

```Raku
sub f() { return 5 }
say f();
```

```stdout
5
```

## sub_28

```Raku
sub gen { my $x = 5; $x * 2 }
say gen();
```

```stdout
10
```

## sub_31

```Raku
sub t { return 42; }
say t();
```

```stdout
42
```

## sub_35

```Raku
sub five() { return 5; };
say five();
```

```stdout
5
```

## sub_37

```Raku
sub f($x) { say "big" if $x > 3 }
f(5);
```

```stdout
big
```

## sub_7

```Raku
sub g() { say 7; }
 my $b = { g(); }; $b(); 
```

```stdout
7
```

## sub_8

```Raku
my sub inc($n) { $n + 1 }
say inc(9);
```

```stdout
10
```

## sub_array_15

```Raku
sub f($a, *@r) { say [+] @r; }
f(0, 1,2,3,4);
```

```stdout
10
```

## sub_array_16

```Raku
sub f($a, *@r) { say @r; }
f(1,2,3);
```

```stdout
[2 3]
```

## sub_array_2

```Raku
sub f($a, *@r) { say @r.elems; }
f(1);
```

```stdout
0
```

## sub_array_6

```Raku
sub f($a, **@r) { say @r.elems; }
f(1);
```

```stdout
0
```

## sub_array_8

```Raku
sub f($a, **@r) { say @r; }
f(1,2,3);
```

```stdout
[2 3]
```

## sub_hash_7

```Raku
sub mixed($p, :$n, *%rest) { say $p; }
mixed(7, n => 9, z => 4);
```

```stdout
7
```

## sub_say_10

```Raku
sub f(Int $x) { say($x); }
 f(42); 
```

```stdout
42
```

## sub_say_11

```Raku
sub f(Str $s) { say($s); }
 f("hi"); 
```

```stdout
hi
```

## sub_say_9

```Raku
sub f(Int $x) { say($x); }
 f(7); f("x"); say("after"); 
```

## test_lines_file

```Raku
my @lines = lines("/tmp/test.txt");
say(@lines);
```

```stdout
[/tmp/test.txt]
```

## test_stmt_ctrl_loop_three

```Raku
my $i = 0;
loop ($i = 0; $i < 3; $i = $i + 1) { say $i; }
```

```stdout
0
1
2
```

## test_stmt_pfx_do

```Raku
my $x = 1;
do { say($x); };
```

```stdout
1
```

## while_4

```Raku
my $i = 0;
while $i < 3 { say $i; $i = $i + 1 }
```

```stdout
0
1
2
```

## while_replace_1

```Raku
my $i = 0;
while ($i < 3) { say $i; $i = $i + 1 }
```

```stdout
0
1
2
```

## array_50

```Raku
my @a = 10,20,30,40;
my $n = 2;
say @a[*-$n];
```

```stdout
30
```

## array_replace_2

```Raku
my @a = (10,20,30);
my $x = @a[7];
say "after";
```

```stdout
after
```

## array_say_replace_2

```Raku
my @a = 1, 2, 3, 4;
my @b = 5, 6, 9;
say ([+] @a) + ([+] @b);
```

```stdout
30
```

## given_1

```Raku
my $r = 0;
$r = $_ given 9;
say $r;
```

```stdout
9
```

## join_array_16

```Raku
my @a = 1;
@a = 8,9,;
say @a.join(",");
```

```stdout
8,9
```

## join_array_4

```Raku
my @a = 1,2,3;
@a = 4,5,6;
say @a.join(",");
```

```stdout
4,5,6
```

## join_array_5

```Raku
my @a = 1,2,3;
@a = (7,8,9);
say @a.join(",");
```

```stdout
7,8,9
```

## join_array_6

```Raku
my @a = 1;
@a = 5 xx 3;
say @a.join(",");
```

```stdout
5,5,5
```

## ladder__rung028_quote_qq_guard_array_index

```Raku
my @a = 1, 2, 3;
my $i = 1;
say qq/@a[1] @a[$i] @a[] @a[$i + 1]/;
```

```stdout
2 2 1 2 3 3
```

## ladder__rung028_quote_qq_guard_escaped_sigils

```Raku
my $x = 5;
my @a = 1, 2;
say qq/a\$x a\\$x a\@a[] \@a/;
```

```stdout
a$x a\5 a@a[] @a
```

## ladder__rung07_subs_a_sigilless_parameter_aliases_a_variable_argument

```Raku
my $v = 10; sub h(\z) { z = 99 }
h($v);
say $v;
```

```stdout
99
```

## ladder__rung16_bool_relops_numeric_context

```Raku
say (3 > 1) + 1;
my $b = 5 < 9;
say $b + 0;
```

```stdout
2
1
```

## ladder__rung20_paren_group_list

```Raku
my $x = 5;
my $y = 6;
($x, $y).join("-").say;
```

```stdout
5-6
```

## multi_1

```Raku
multi describe(Int $x) { return "a"; }
multi describe(Str $x) { return "b"; }
print describe(1), describe("y");
```

```stdout
ab
```

## multi_sub_1

```Raku
multi sub f(Int $a) { say "int"; }
multi sub f(Str $a) { say "str"; }
f(7);
```

```stdout
int
```

## say_54

```Raku
my $x = ();
say('A');
say('B');
```

```stdout
A
B
```

## say_try_die_3

```Raku
    say('pre');
    try { die('a'); }; CATCH { die('fatal-in-handler'); };
    say('unreached');
```

```stdout
pre
unreached
```

## simple_assign_107

```Raku
my $x = 4; my $y = 9;
if ($x < $y) { say "ct" } else { say "cf" }
if (4 < 9) { say "lt" } else { say "lf" }
```

```stdout
ct
lt
```

## simple_assign_119

```Raku
my $x = 10;
{ $x = $x + 1 if $x > 5 }
say $x;
```

```stdout
11
```

## simple_assign_40

```Raku
my $s = "hello";
$s ~= " world";
say $s;
```

```stdout
hello world
```

## simple_assign_80

```Raku
my $a = 1;
my $b = 0;
if $a == 1 { if $b == 1 { say "both" } else { say "a-only" } }
```

```stdout
a-only
```

## sub_array_3

```Raku
sub f(*@r) { say @r.elems; }
my @a = (1,2,3);
f(@a);
```

```stdout
3
```

## test_stmt_pfx_ENTER

```Raku
my $x = 1;
ENTER { say("enter"); }
say($x);
```

```stdout
enter
1
```

## test_stmt_pfx_KEEP

```Raku
my $x = 1;
KEEP { say("keep"); }
say($x);
```

```stdout
1
```

## test_stmt_pfx_LEAVE

```Raku
my $x = 1;
LEAVE { say("leave"); }
say($x);
```

```stdout
1
leave
```

## test_stmt_pfx_POST

```Raku
my $x = 5;
POST { say("post"); }
say($x);
```

```stdout
5
post
```

## test_stmt_pfx_PRE

```Raku
my $x = 5;
PRE { say("pre"); }
say($x);
```

```stdout
pre
5
```

## test_stmt_pfx_TEMP

```Raku
my $x = 1;
TEMP { say("temp"); }
say($x);
```

```stdout
1
```

## test_stmt_pfx_UNDO

```Raku
my $x = 1;
UNDO { say("undo"); }
say($x);
```

```stdout
1
undo
```

## while_5

```Raku
my $i = 0;
$i = $i + 1 while $i < 3;
say $i;
```

```stdout
3
```

## array_say_3

```Raku
    my @a = (10, 20, 30);
    say(elems(@a));
    my @e = '';
    say(elems(@e));
```

```stdout
3
1
```

## array_say_6

```Raku
    my @a = (3, 1, 2);
    say(@a[1]);
    my @b = (10, 3, 20);
    say(@b[1]);
```

```stdout
1
3
```

## ladder__rung021_quote_lt_gt_newline

```Raku
my @w = <a
b
c>;
say @w.join("|");
```

```stdout
a|b|c
```

## ladder__rung026_lit_radix_call_variable

```Raku
my $s = "ff";
say :16($s) + 1;
say :16("f" ~ "f");
say :16(~"ff");
```

```stdout
256
255
255
```

## ladder__rung03_strings

```Raku
my $s = "Hello";
my $t = $s ~ ", world!";
say $t;
say "value: $s";
```

```stdout
Hello, world!
value: Hello
```

## ladder__rung04_arrays_slip_method_flattens_into_the_list

```Raku
my @b = 5, 4;
my @l = @b.Slip, 9;
say @l.elems;
say @l.join(",");
```

```stdout
3
5,4,9
```

## rewrite__rr11_eval

```Raku
use MONKEY-SEE-NO-EVAL;
say EVAL "1 + 2";
my $x = 5; say EVAL '$x * 2';
my $code = 'sub { $^a + 1 }'; my &f = EVAL $code; say f(41);
```

```stdout
3
10
42
```

## roast_causes__rc08_a_keyword_followed_by_a_paren_is_a_call

```Raku
my ($x);
sub my($a) { $a + 17 }
$x = 5;
say my($x);
```

```stdout
22
```

## while_9

```Raku
my $k = 5;
repeat {
    say $k;
} while $k > 100;
```

```stdout
5
```

## array_say_5

```Raku
    my @a = (1, 2, 3);
    my @r = reverse(@a);
    say(@r[0]);
    say(@r[1]);
    say(@r[2]);
```

```stdout
3
2
1
```

## ladder__rung04_arrays_a_method_call_after_whitespace_or_a_newline_applies_to_the_whole_term

```Raku
my @a = 3, 1, 2;
my @b = @a
    .sort
    .reverse;
say @b, " ", ^3 .map(* * 2), " ", -5 .abs, " ", 1 + 2 .succ, " ", "ab" .uc, " ", (1, 2, 3) .elems;
```

```stdout
[3 2 1] (0 2 4) 5 4 AB 3
```

## ladder__rung07_subs_tail_if_false_returns_to_the_caller

```Raku
sub g($p) { if $p < 0 { say "neg"; } }
sub h($p) { g($p); say "back ", $p; }
h(104);
h(3);
h(-1);
```

```stdout
back 104
back 3
neg
back -1
```

## ladder__rung07_subs_user_circumfix_with_constant_delimiters_and_unicode_brackets

```Raku
my constant $x = "µ @";
sub circumfix:<<$x>>($) { 42 }
say 'defined';
sub circumfix:<⌊ ⌋>($e) { $e.floor }
say ⌊3.7⌋;
```

```stdout
defined
3
```

## ladder__rung09_regex_the_subst_method_with_x_zero_replaces_nothing

```Raku
say "a b c d".subst(/\w/, "x", :x(0));
say "a a a a".subst("a", "x", :x(0));
my $s = "q r";
say $s.subst(/\w/, "z", :x(0));
say $s;
```

```stdout
a b c d
a a a a
q r
q r
```

## ladder__rung10_given_when_when_with_range

```Raku
given 5 {
    when 1..3 { say "low"; }
    when 4..6 { say "mid"; }
    default { say "high"; }
}
```

```stdout
mid
```

## ladder__rung12_exceptions_fail

```Raku
sub f {
    fail "oops";
}
my $r = f();
say $r.defined;
```

```stdout
False
```

## ladder__rung13_classes_semicolon_between_members

```Raku
class C { has $.x; method f() { 1 }; method g() { 2 }; }
role R { method r() { "r" }; }
class D does R { ; }
say C.new.f + C.new.g;
say D.new.r;
```

```stdout
3
r
```

## token_say_1

```Raku
grammar G {
    token w   { \w+ }
    rule  TOP { "[" <w> "]" }
}
say(G.parse("[abc]"));
```

```stdout
｢[abc]｣
 w => ｢abc｣
```

## token_say_4

```Raku
grammar G {
    token TOP { \d+ }
}

    say(G.parse("12345"));
```

```stdout
｢12345｣
```

## while_8

```Raku
my $i = 0;
repeat {
    $i = $i + 1;
    say $i;
} while $i < 3;
```

```stdout
1
2
3
```

## benchmark_rc-man-or-boy-test

```Raku
sub A ($k is copy, $x1, $x2, $x3, $x4, $x5) {
    my $B := { A(--$k, $B, $x1, $x2, $x3, $x4) };
    $k <= 0 ?? $x4() + $x5() !! $B();
}

say A(10, {1}, {-1}, {-1}, {1}, {0});
```

```stdout
-67
```

## core__rc04_list_subs

```Raku
my %h = a => 1, b => 2;
my @l = 10, 20, 30;
say keys(%h).sort, "|", values(%h).sort, "|", kv(%h).elems, "|", pairs(%h).elems;
say elems(@l), "|", end(@l);
splice(@l, 1, 1, 99);
say @l;
```

```stdout
(a b)|(1 2)|4|2
3|2
[10 99 30]
```

## ladder__rung04_arrays_num_element_keeps_its_precision

```Raku
my @a = (2e0/3, 0.1e0 + 0.2e0, 7);
say @a[0];
say "e @a[1]";
say @a[0] * 3;
my ($x, $y) = (2500e0/3, 1e0/3);
say "$x $y";
```

```stdout
0.6666666666666666
e 0.30000000000000004
2
833.3333333333334 0.3333333333333333
```

## ladder__rung12_exceptions_specific_type

```Raku
try {
    die X::AdHoc.new(payload => "typed");
    CATCH {
        when X::AdHoc { say "adhoc: " ~ .payload; }
    }
}
```

```stdout
adhoc: typed
```

## simple_assign_92

```Raku
my $x = 10;
my $y = 0;
$y = 99 if $x > 5;
say $y;
$y = 7 if $x > 50;
say $y;
```

```stdout
99
99
```

## token_say_3

```Raku
grammar G {
    token word { \w+ }
    rule TOP { <word> }
}

    say(G.parse("hello"));
```

```stdout
｢hello｣
 word => ｢hello｣
```

## hash_say_5

```Raku
    my %h;
    %h<lang> = 'Raku';
    %h<vers> = '6';
    say(%h<lang>);
    say(%h<vers>);
    %h<lang>:delete;
    say(%h<lang>:exists);
```

```stdout
Raku
6
False
```

## ladder__rung03_strings_num_stringifies_round_trip

```Raku
my $x = 0.1e0 + 0.2e0;
say "x=$x";
say ~$x;
say $x.Str;
say $x ~ "|" ~ 2e0/3;
my $b = 1 < 2;
say "b=$b";
```

```stdout
x=0.30000000000000004
0.30000000000000004
0.30000000000000004
0.30000000000000004|0.6666666666666666
b=True
```

## ladder__rung04_arrays_rotate_takes_its_count_from_a_string_or_a_rational

```Raku
my @a = <a b c d e>;
say ~@a.rotate("2");
say ~@a.rotate(2.5);
say ~@a.rotate(-1);
say ~@a.rotate("-2");
say ~@a.rotate;
say ~@a.rotate(7);
```

```stdout
c d e a b
c d e a b
e a b c d
d e a b c
b c d e a
c d e a b
```

## token_say_2

```Raku
grammar G {
    token num  { \d+ }
    token word { \w+ }
    rule TOP { <num> <word> }
}

    say(G.parse("12abc"));
```

```stdout
Nil
```

## ladder__rung023_kw_nil_fresh_scalar_defined_or

```Raku
my $x;
say $x // "dflt";
say $x.defined;
say $x.so;
say "[" ~ $x ~ "]";
say +$x;
my $y = Nil;
say $y // "alt";
```

```stdout
dflt
False
False
[]
0
alt
```

## ladder__rung023_kw_nil_nil_scalar_reset

```Raku
my $x = Nil;
say $x.WHAT;
say $x.raku;
say $x === Any;
$x = 3;
$x = Nil;
say $x.raku;
say (my $y = Nil).WHAT;
```

```stdout
(Any)
Any
True
Any
(Any)
```

## ladder__rung09_regex_a_method_call_on_the_topic_on_the_right_of_a_smartmatch_is_made_on_the_left_operand

```Raku
say so 'AA' ~~ .uc;
say so 'ab' ~~ .uc;
say so 'ab' ~~ .substr(0);
say so 'ab' ~~ .substr(1);
$_ = 'zz';
say so 'b' ~~ .substr(1);
say $_;
say "end";
```

```stdout
True
False
True
False
False
zz
end
```

## ladder__rung13_classes_an_enum_value_named_like_a_builtin_term_shadows_it

```Raku
enum Cell <Empty Tree Burning>;
my @g = Empty, Tree, Empty, Burning;
say @g.elems;
say +@g[0], +@g[1], +@g[3];
say Empty == 0;
say (Empty, Tree).elems;
my @row = [ flat (Tree, Empty) xx 2 ];
say @row.elems;
```

```stdout
4
012
True
2
4
```

## say_51

```Raku
    my %h;
    %h{'name'} = 'Alice';
    %h{'age'} = '30';
    say(%h{'name'});
    %h{'age'} = '31';
    say(%h{'age'});
    say(%h{'name'}:exists);
    say(%h{'missing'}:exists);
```

```stdout
Alice
31
True
False
```

## scrip_test_rk_grammar_parse

```Raku
# rk_grammar_parse — G3-1: Grammar.parse($s) runs the TOP rule (anchored, whole-string).
# Match -> the matched text; no match -> Nil (stringifies empty). token = ratchet, ws insignificant.
grammar Greeting { token TOP { hello } }
say Greeting.parse("hello");
say Greeting.parse("hi");
grammar Digits { token TOP { \d+ } }
say Digits.parse("12345");
say Digits.parse("12a45");
```

```stdout
｢hello｣
Nil
｢12345｣
Nil
```

## ladder__rung023_kw_nil_nil_literal_raku

```Raku
say Nil;
say Nil.gist;
say Nil.raku;
say Nil.perl;
sub bare { return }
say bare().raku;
sub empty { }
say empty().raku;
say empty() === Nil;
```

```stdout
Nil
Nil
Nil
Nil
Nil
Nil
True
```

## ladder__rung024_kw_inf_num_scalar_raku

```Raku
say 3e0.raku;
say 1.5e0.raku;
say 0e0.raku;
say (1e0 / 3).raku;
say 5.raku;
say 1.5.raku;
my $x = 2e0;
say $x.raku;
say [1e0, 2.5e0].raku;
```

```stdout
3e0
1.5e0
0e0
0.3333333333333333e0
5
1.5
2e0
[1e0, 2.5e0]
```

## ladder__rung03_strings_an_escaped_sigil_in_a_double_quoted_string_is_a_literal_dollar_or_at

```Raku
my $x = 5; my @a = 1, 2;
say "\$";
say "\$x";
say "\\$x";
say "a\@b";
say "cost: \$5 and $x";
say "{1 + 1}\$ {$x}";
say "\@a and @a[]";
say "plain";
```

```stdout
$
$x
\5
a@b
cost: $5 and 5
2$ 5
@a and 1 2
plain
```

## scrip_test_rk_join

```Raku
# rk_join.raku — RK-BB-5.2: join() as a list Seq consumer
sub main() {
    say(join(",", 1, 2, 3));
    say(join("-", "a", "b", "c"));
    say(join("", 4, 5, 6));
    # compose with reverse: join the reversed list
    say(join(",", reverse(1, 2, 3)));
}
main();
```

```stdout
1,2,3
a-b-c
456
3,2,1
```

## ladder__rung09_string_methods_sub_forms_and_chomp_crlf

```Raku
say tc("hello world");
say tclc("hELLO");
say fc("MiXeD");
say chop("abc");
say wordcase("the quick brown fox");
say "[" ~ trim-leading("  pad  ") ~ "]";
say "[" ~ trim-trailing("  pad  ") ~ "]";
my $crlf = "line" ~ chr(13) ~ chr(10);
say "[" ~ chomp($crlf) ~ "]";
say "[" ~ $crlf.chomp ~ "]";
```

```stdout
Hello world
Hello
mixed
ab
The Quick Brown Fox
[pad  ]
[  pad]
[line]
[line]
```

## ladder__rung07_subs_a_module_declared_in_a_bare_block_registers_its_subs_for_the_qualified_call

```Raku
{
    package Foo { our sub bar { 'r' } }
    say Foo::bar();
}
{
    module Baz {
        sub helper { 'h' }
        our sub run { helper() ~ '!' }
    }
    say Baz::run;
    say Baz::run();
}
```

```stdout
r
h!
h!
```

## ladder__rung13_classes_eval_of_a_class_name_or_its_literal_is_the_class_type_object

```Raku
class Foo { }
my class Bar { }
say EVAL('Foo').WHAT.gist;
say EVAL('Bar').WHAT.gist;
say EVAL('Int').WHAT.gist;
say EVAL('Foo') === Foo;
say EVAL('Str') === Str;
say EVAL('::Foo') === Foo;
say ::Foo === Foo;
say EVAL('Foo.new').WHAT.gist;
my $v = 7; say EVAL('$v');
say EVAL('1+2');
```

```stdout
(Foo)
(Bar)
(Int)
True
True
True
True
(Foo)
7
3
```

## say_19

```Raku
    my $a = (1 > 2);
    say($a);
    my $b = (3 > 1);
    say($b);
    my $c = (5 == 6);
    say($c);
    my $d = (7 != 8);
    say($d);
    my $e = (2 <= 1);
    say($e);
    my $f = (10 >= 9);
    say($f);
```

```stdout
False
True
False
True
False
True
```

## ladder__rung02_arithmetic_rat_counts_and_tolerances_in_the_test_module_plan_skip_is_approx

```Raku
use Test;
my @info = 1 .. 12;
plan @info/3 + 7/1;
ok 1, "one";
ok 1, "two";
ok 1, "three";
ok 1, "four";
ok 1, "five";
ok 1, "six";
skip "skipped", 2;
is-approx 1/3, 0.333, 0.01;
is-approx 22/7, 3.14159, :rel-tol(0.01);
is-approx 22/7, 3.14159, 0.01, "positional tolerance";
```

```stdout
1..11
ok 1 - one
ok 2 - two
ok 3 - three
ok 4 - four
ok 5 - five
ok 6 - six
ok 7 - # SKIP skipped
ok 8 - # SKIP skipped
ok 9 - 
ok 10 - 
ok 11 - positional tolerance
```

## scrip_test_rk_stdio39

```Raku
# rk_stdio39.raku — RK-39: $*STDIN $*STDOUT $*STDERR handles

sub main() {
    # $*STDOUT is handle index 1 — print/say to it
    print($*STDOUT, "stdout ok\n");
    say($*STDOUT, 'say stdout ok');

    # $*STDERR is handle index 2
    print($*STDERR, "stderr ok\n");

    say('rk_stdio39 ok');
}
main();
```

## ladder__rung04_arrays_a_collection_type_object_called_with_one_argument_coerces_it

```Raku
say Bag(<a b a>).elems;
say Set(<a b a>).elems;
say SetHash(<a b a>).elems;
say BagHash(<a b a>).elems;
say Mix(<a b a>).elems;
say Array(1..3).elems;
say List(1..3).elems;
say Bag(<a b a>){"a"};
say Int("42") + 1;
say Str(42).chars;
my $bh = BagHash(<x y x z x>);
say $bh{"x"};
$bh{"y"} = 5;
say $bh{"y"};
```

```stdout
2
2
2
2
2
3
3
2
43
2
3
5
```

## benchmark_string-escape

```Raku
use v6;
# ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
# The bracket encloses the WORK ONLY -- not startup, not the write. Published multiples are work-on-work;
# startup/finish OVERHEAD is a separate per-engine number the harness derives as (external total - work).
# ⛔ TIMESTAMPS GO TO STDERR (note) SO stdout STAYS BYTE-COMPARABLE and string-escape.ref still verifies unchanged.
# ⭐ BOTH UNITS ON PURPOSE (see prelude_rakudo.rakumod): work_us is the measurement, work_ms is the cross-check.
# wall_us()/wall_ms() are SCRIP builtins; the Rakudo arm gets them from prelude_rakudo.rakumod via -M, so
# this file is byte-identical on every engine. Mirrors corpus/benchmarks/prolog/bench/fib.pl.
my $t0 = wall_us(); my $m0 = wall_ms();
my $d = "\n" x 1000;
my $s = $d.trans(   ['"',  '\\',   "\b", "\f", "\n", "\r", "\t"]
                 => ['\"', '\\\\', '\b', '\f', '\n', '\r', '\t']);
my $t1 = wall_us(); my $m1 = wall_ms();
say $s.chars;
note("BENCH kernel=string-escape work_us=" ~ ($t1 - $t0) ~ " work_ms=" ~ ($m1 - $m0));
```

```stdout
2000
```

## ladder__rung023_kw_nil_fresh_scalar_numeric

```Raku
my $n;
$n++;
say $n;
my $s;
$s += 5;
say $s;
my $t;
$t ~= "ab";
say $t;
my Int $i;
$i += 2;
say $i;
my $d;
$d--;
say $d;
```

```stdout
1
5
ab
2
-1
```

## ladder__rung03_strings_the_method_assign_form_with_no_space_stores_the_result_back_in_the_variable

```Raku
my $t = "abc";
$t.=uc;
say $t;
my $v = "hello world";
$v.=subst("world", "there");
say $v;
my @a = 3, 1, 2;
@a.=sort;
say @a;
my $n = 5;
$n.=Str;
say $n.WHAT;
my $u = "abc";
$u .= uc;
say $u;
```

```stdout
ABC
hello there
[1 2 3]
(Str)
ABC
```

## ladder__rung02_arithmetic_modulo_and_div_of_a_big_integer_are_exact_and_floored

```Raku
my $x = 123456789012345678901234567890;
say $x % 97;
say $x div 97;
say (-$x) % 97;
say (-$x) div 97;
say $x % -97;
say $x div -97;
say 2804985923338703271682399481743033703427656749129565173066 % 256;
say (2**100) % 1000;
say (2**100) div 1000;
say 5 % (2**70);
say (-5) % (2**70);
say 5 div (2**70);
say (-5) div (2**70);
say (2**70) % (2**70);
say (2**70 + 1) % (2**70);
```

```stdout
52
1272750402189130710322005854
45
-1272750402189130710322005855
-45
-1272750402189130710322005855
74
376
1267650600228229401496703205
5
1180591620717411303419
0
-1
0
1
```

## simple_assign_24

```Raku
# rk_typed_vars.raku — RK-19: typed variable declarations
# Type annotations are parsed and silently discarded (no enforcement yet).

my Int $x = 42;
my Str $s = "hello";
my Num $f = 3e0;
my Bool $b = True;

say $x;
say $s;
say $f;
say $b;

# Typed vars participate normally in expressions
my Int $y = $x + 8;
say $y;

my Str $t = $s ~ " world";
say $t;

# Uninitialized typed var (should work, binds to empty string)
my Int $z;
say "ok";
```

```stdout
42
hello
3
True
50
hello world
ok
```

## hash_say_replace_2

```Raku
# RK-17: Hash full support — keys/values/pairs/exists/delete

my %h = 0;
%h<x> = 'hello';

# exists / not-exists
say(exists %h<x>);
say(exists %h<y>);

# keys/values/pairs — single entry, deterministic
say(hash_keys(%h));
say(hash_values(%h));
say(hash_pairs(%h));

# delete then re-check
delete %h<x>;
say(exists %h<x>);

# two keys, delete one, check both
%h<a> = '1';
%h<b> = '2';
delete %h<a>;
say(exists %h<a>);
say(exists %h<b>);
say(hash_get(%h, 'b'));
```

```stdout
True
False
(x)
(hello)
(x => hello)
False
False
True
2
```

## for_range_12

```Raku
{ say $_ for 1..3 }
```

```stdout
1
2
3
```

## for_range_2

```Raku
for 1..3 -> $v { say $v }
```

```stdout
1
2
3
```

## for_range_5

```Raku
for 1..2 -> $i { for 1..2 -> $j { say $i * $j } }
```

```stdout
1
2
2
4
```

## for_range_7

```Raku
say $_ for 1..3;
```

```stdout
1
2
3
```

## for_range_8

```Raku
for 0 ..^ 5 -> $i { say $i }
```

```stdout
0
1
2
3
4
```

## for_range_9

```Raku
for 1 ..^ 4 -> $x { say $x }
```

```stdout
1
2
3
```

## for_say_1

```Raku
for 1,2,3 -> $x { say($x); }
```

```stdout
1
2
3
```

## for_say_2

```Raku
for "x","y","z" -> $s { say($s); }
```

```stdout
x
y
z
```

## for_say_3

```Raku
for 1,2,3 { say($_); }
```

```stdout
1
2
3
```

## for_say_5

```Raku
for (1,2,3) -> $x { say($x); }
```

```stdout
1
2
3
```

## for_say_6

```Raku
for ("a","b","c") -> $s { say($s); }
```

```stdout
a
b
c
```

## for_say_7

```Raku
for (1,2,3) { say($_); }
```

```stdout
1
2
3
```

## for_say_8

```Raku
for <a b c> -> $x { say($x); }
```

```stdout
a
b
c
```

## ladder__rung08_for_loop

```Raku
for 1..3 -> $i { say $i; }
```

```stdout
1
2
3
```

## ladder__rung08_for_loop_nested_for

```Raku
for 1..2 -> $i { for 1..2 -> $j { say "$i,$j"; } }
```

```stdout
1,1
1,2
2,1
2,2
```

## loop_replace_3

```Raku
loop (my $i = 0; $i < 10; $i++) { last if $i == 3; say $i; }
```

```stdout
0
1
2
```

## loop_replace_4

```Raku
loop (my $i = 0; $i < 4; $i++) { next if $i == 1; say $i; }
```

```stdout
0
2
3
```

## class_method_3

```Raku
class C { method m($x) { say "hi" unless $x } }
C.new.m(0);
```

```stdout
hi
```

## class_method_say_5

```Raku
class Clock { method tick() { return "t"; } }
 say(Clock.^methods); 
```

```stdout
(tick POPULATE)
```

## class_method_say_6

```Raku
class C { method say() { return 7 } }
say C.new.say;
```

```stdout
7
```

## for_range_6

```Raku
for 65..69 -> $i { print chr($i) }
say "";
```

```stdout
ABCDE
```

## for_say_4

```Raku
for () -> $x { say($x); }
say('done');
```

```stdout
done
```

## given_replace_1

```Raku
my $x = 7;
say "val is " ~ $_ given $x;
```

```stdout
val is 7
```

## join_range_array_2

```Raku
my @r = 1..5;
say @r[0,2,4].join(",");
```

```stdout
1,3,5
```

## join_range_array_3

```Raku
my @a = 10,20,30,40,50;
say @a[1..2].join(",");
```

```stdout
20,30
```

## join_range_array_4

```Raku
my @a = 1..4;
say @a.join(",");
```

```stdout
1,2,3,4
```

## join_range_array_5

```Raku
my @r = 10..20;
say @r[2..5].join(",");
```

```stdout
12,13,14,15
```

## join_range_array_6

```Raku
my @a = 1,2,3,4,5;
say @a[1..^4].join(",");
```

```stdout
2,3,4
```

## join_range_array_7

```Raku
my @a = 1,2,3,4,5;
say @a[0..2].join(",");
```

```stdout
1,2,3
```

## join_range_array_8

```Raku
my @a = 1,2,3,4,5;
say @a[1..3].join(",");
```

```stdout
2,3,4
```

## join_range_array_9

```Raku
my @a = 1,2,3,4,5;
say @a[2..2].join(",");
```

```stdout
3
```

## ladder__rung029_quote_qw_no_interpolation

```Raku
my $x = 5;
say qw<$x @y %z>.raku;
```

```stdout
("\$x", "\@y", "\%z")
```

## ladder__rung02_arith_prefix_plus_counts_a_scalar_or_hash_element_that_holds_an_array_or_hash

```Raku
my @a = <a b c>; my %g = (x => 1, y => 2); my %h; %h<k> = @a; %h<m> = %g; my $s = @a; my $t = %g;
say +$s, " ", +$t, " ", +%h, " ", +%h<k>, " ", +%h<m>, " ", +@a, " ", +"5";
```

```stdout
3 2 2 3 2 3 5
```

## ladder__rung04_arrays_a_hole_in_an_array_is_the_empty_string_in_str_join_and_interpolation_but_any_in_gist

```Raku
my @o; @o[2] = "x";
say ~@o; say @o.join("-"); say "[@o[]]"; say @o.gist;
```

```stdout
  x
--x
[  x]
[(Any) (Any) x]
```

## ladder__rung04_arrays_the_numeric_methods_of_an_array_a_list_and_a_hash_answer_the_element_count

```Raku
my @l = 1, 2, 3; my %h = a => 1, b => 2; my $x = @l;
say @l.Numeric, " ", $x.Int, " ", %h.Numeric, " ", %h.Int, " ", (4, 5).Real, " ", @l.Num;
```

```stdout
3 3 2 2 2 3
```

## ladder__rung05_hashes_a_hash_assignment_as_the_last_statement_of_a_block_is_kept

```Raku
my %h0 = a => 1, b => 2; my %x; my %y; my %z;
{ %x = %h0 }; sub f { %y = %h0 }; f(); if 1 { %z = %h0 }; say +%x, " ", +%y, " ", +%z;
```

```stdout
2 2 2
```

## ladder__rung06_control_a_with_or_without_modifier_inside_parentheses_yields_empty_when_it_does_not_hold

```Raku
my $n = Nil; my @x = 41, (42 with $n), 43; my @y = 41, (42 without $n), 43; say @x.raku, @y.raku;
say (8 with 3).raku, (8 without 3).raku; $_ = 10; say (.abs with -3), $_;
```

```stdout
[41, 43][41, 42, 43]
8Empty
310
```

## ladder__rung06_control_elsif_chain

```Raku
my $x = 2;
if ($x == 1) { say "one"; } elsif ($x == 2) { say "two"; } else { say "other"; }
```

```stdout
two
```

## ladder__rung07_subs

```Raku
sub add($a, $b) { return $a + $b; }
say add(3, 4);
```

```stdout
7
```

## ladder__rung07_subs_a_multi_candidate_with_an_untyped_sigil_parameter_is_chosen_by_the_argument

```Raku
multi f(&t) { "c" }; multi f(%t) { "h" }; multi f(@t) { "a" }; multi f($t) { "s" }
say f({ 1 }), f({ a => 1 }), f([1]), f(3);
```

```stdout
chas
```

## ladder__rung07_subs_a_slurpy_array_before_a_slurpy_hash_takes_every_positional

```Raku
sub f($z, *@p, *%n) { say "$z ", @p.raku, " ", %n.raku }
f(1, 2, 3); f(1, :a(4), 2, 3); f(1);
```

```stdout
1 [2, 3] {}
1 [2, 3] {:a(4)}
1 [] {}
```

## ladder__rung08_for_a_labelled_while_in_parentheses_leaves_on_last

```Raku
my $m = 0; (L: while $m < 5 { $m++; last L if $m == 3 });
say $m;
```

```stdout
3
```

## ladder__rung08_for_redo_in_a_while_restarts_the_body_without_testing_the_condition

```Raku
my $i = 0; my $r = 0; while $i < 3 { $i++; $r++; redo if $r == 2 }
say "$i $r";
```

```stdout
3 3
```

## ladder__rung09_regex_a_unicode_general_category_assertion_matches_by_short_or_long_name

```Raku
say (".a-" ~~ /<:Letter>/).Str, " ", (".a-" ~~ /<:!Letter>/).Str, " ", ("Ab1" ~~ /<:Lu><:Ll><:Nd>/).Str, " ", ("x" ~~ /<+:Lu>/).so;
say ("a1" ~~ /<:UppercaseLetter>/).so, " ", ("\x[E9]b" ~~ /<:Ll>+/).Str, " ", ("1 2" ~~ /<:Z>/).from, " ", ("a-b" ~~ /<:Pd>/).from;
```

```stdout
a . Ab1 False
False éb 1 1
```

## ladder__rung10_smartmatch_the_right_side_is_evaluated_with_the_topic_set_to_the_left_and_restored_after

```Raku
$_ = 42; my $x; "abc" ~~ ($x = "q$_"); say $x, " ", $_;
"defg" !~~ ($x = $_); say $x, " ", $_;
```

```stdout
qabc 42
defg 42
```

## ladder__rung12_exceptions_a_unit_scoped_sub_in_an_eval_throws_x_unitscope_invalid

```Raku
use MONKEY-SEE-NO-EVAL; try EVAL "sub foo;"; say $!.^name, " ", $!.message.lines.elems, " ", $!.message.contains("MAIN sub");
say $! ~~ X::Syntax, " ", $! ~~ X::Comp, " ", $! ~~ X::UnitScope::Invalid, " ", $! ~~ X::AdHoc;
```

```stdout
X::UnitScope::Invalid 3 True
True True True False
```

## ladder__rung13_classes_a_method_invocant_named_other_than_self_binds_the_object_and_keeps_the_parameters

```Raku
class Foo { method echo { "echo" }; method m ($x: $y) { $x.echo ~ $y } }
say Foo.new.m("z");
```

```stdout
echoz
```

## ladder__rung13_classes_a_method_invocant_named_self_keeps_the_parameters

```Raku
class Foo { method echo { "echo" }; method m ($self: $y) { $self.echo ~ $y } }
say Foo.new.m("z");
```

```stdout
echoz
```

## ladder__rung13_classes_a_parameter_subsignature_reads_an_objects_accessors

```Raku
class N { has $.left = 4 }; sub o($x (:$left)) { $left }
say o(N.new);
```

```stdout
4
```

## ladder__rung15_blocks_an_anonymous_method_reads_self

```Raku
my $m2 = method ($x) { "got $x " ~ self.^name };
say "ok";
```

```stdout
ok
```

## ladder__rung15_blocks_grep

```Raku
my @n = (1, 2, 3, 4);
say @n.grep({ $_ > 2 });
```

```stdout
(3 4)
```

## ladder__rung15_blocks_map

```Raku
my @n = (1, 2, 3, 4);
say @n.map({ $_ * 2 });
```

```stdout
(2 4 6 8)
```

## ladder__rung19_block_a_grep_block_that_is_a_bare_regex_matches_each_element

```Raku
my @l = <abc xyz bca>;
say @l.grep({ /a/ }).join(","); say @l.grep({ /z/ }).elems; say @l.grep({ /q/ }).elems;
```

```stdout
abc,bca
1
0
```

## ladder__rung19_block_the_grep_method_takes_a_regex_as_its_matcher

```Raku
my @l = <abc xyz bca>;
say @l.grep(/a/).join(","); say @l.grep(/q/).elems; say @l.grep(/^x/).join(",");
```

```stdout
abc,bca
0
xyz
```

## loop_2

```Raku
my $i = 0;
loop { last if $i >= 3; say $i; $i = $i + 1 }
```

```stdout
0
1
2
```

## loop_3

```Raku
my $i = 0;
loop { $i = $i + 1; say $i; last if $i >= 3 }
```

```stdout
1
2
3
```

## parser__try_nested

```Raku
my $x = 1;
if ($x == 1) { try { say "try"; } CATCH { say "catch"; } }
```

## roast_causes__rc12_batch_of_zero_is_out_of_range

```Raku
say (try { (^10).batch(0); "lived" }) // "died";
say (^5).batch(2).map(*.join(",")).join(" ");
```

```stdout
died
0,1 2,3 4
```

## say_89

```Raku
    my $s = 'ab' ~ 'cd';
    say($s);
```

```stdout
abcd
```

## say_replace_18

```Raku
role Point { has $.x; }
 my $p = Point.new(x => 5); say($p.x); 
```

```stdout
5
```

## say_try_die_2

```Raku
    try { die('boom'); }; CATCH { say($_); };
    say('after');
```

```stdout
after
```

## simple_assign_62

```Raku
my $x = 5;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } elsif $x == 5 { say "e" } else { say "z" }
```

```stdout
e
```

## simple_assign_63

```Raku
my $x = 9;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } else { say "c" }
```

```stdout
c
```

## simple_assign_64

```Raku
my $x = 2;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } else { say "c" }
```

```stdout
b
```

## simple_assign_65

```Raku
my $x = 1;
if $x == 1 { say "a" } elsif $x == 2 { say "b" }
```

```stdout
a
```

## simple_assign_66

```Raku
my $x = 2;
if ($x == 1) { say "a" } elsif ($x == 2) { say "b" } else { say "c" }
```

```stdout
b
```

## sub_10

```Raku
my sub answer() { return 42; }
say answer();
```

```stdout
42
```

## sub_16

```Raku
sub h($a, $b = $a * 2) { return $a + $b }
say h(3);
```

```stdout
9
```

## sub_17

```Raku
sub f($x = 5) { return $x }
say f();
```

```stdout
5
```

## sub_20

```Raku
sub s2($a = "hi") { return $a }
say s2();
```

```stdout
hi
```

## sub_21

```Raku
sub f($x = 5) { return $x }
say f(9);
```

```stdout
9
```

## sub_22

```Raku
sub f($x = 5) { return $x }
say f(0);
```

```stdout
0
```

## sub_32

```Raku
sub add($a,$b) { return $a + $b; }
say add(3,4);
```

```stdout
7
```

## sub_38

```Raku
sub f($x,$y) { return $x+$y }
say f(3,4,);
```

```stdout
7
```

## sub_9

```Raku
my sub greet($name) { say "hi " ~ $name; }
greet("world");
```

```stdout
hi world
```

## sub_array_1

```Raku
sub f($a, *@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
```

```stdout
1|2
```

## sub_array_10

```Raku
sub f($a, **@r) { say @r[0] ~ "|" ~ @r[1]; }
f(0,8,9);
```

```stdout
8|9
```

## sub_array_11

```Raku
sub f($a, *@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
```

```stdout
1|2
```

## sub_array_5

```Raku
sub f($a, **@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
```

```stdout
1|2
```

## sub_hash_1

```Raku
sub f($a, *%h) { say $a ~ "|" ~ %h.elems; }
f(1, x => 2, y => 3);
```

```stdout
1|2
```

## sub_hash_3

```Raku
sub mixed($p, :$n, *%rest) { say $n ~ "|" ~ %rest.elems; }
mixed(7, n => 9, z => 4, w => 5);
```

```stdout
9|2
```

## sub_hash_4

```Raku
sub f($a, *%h) { say $a ~ "|" ~ %h.elems; }
f(5);
```

```stdout
5|0
```

## sub_say_12

```Raku
sub takes(Int:D $n) { say("int " ~ $n); }
 takes(5); takes("x"); say("after"); 
```

```stdout
int 5
```

## sub_say_7

```Raku
sub greet(Str:D $name) { say("hi " ~ $name); }
 greet("Tom"); 
```

```stdout
hi Tom
```

## sub_say_8

```Raku
sub want(Str:U $x) { say("ok"); }
 my $u; want($u); want("v"); say("after"); 
```

## test_if_basic

```Raku
my $c = 1;
if ($c) { say($c); }
```

```stdout
1
```

## test_if_cmp_eq

```Raku
my $n = 42;
if ($n == 42) { say($n); }
```

```stdout
42
```

## test_if_else

```Raku
my $x = 5;
if ($x < 10) { say($x); } else { say(0); }
```

```stdout
5
```

## test_while_basic

```Raku
my $i = 0;
while ($i < 3) { say($i); $i = $i + 1; }
```

```stdout
0
1
2
```

## while_1

```Raku
my $o = 0;
while $o < 2 { my $i = 0; while $i < 5 { last if $i >= 2; say "$o-$i"; $i = $i + 1 }; $o = $o + 1 }
```

```stdout
0-0
0-1
1-0
1-1
```

## while_2

```Raku
my $i = 0;
while $i < 10 { last if $i >= 3; say $i; $i = $i + 1 }
```

```stdout
0
1
2
```

## while_3

```Raku
my $i = 0;
while $i < 4 { $i = $i + 1; next if $i == 2; say $i }
```

```stdout
1
3
4
```

## class_method_replace_10

```Raku
class C { method sq($n) { $n * $n } }
my $o = C.new;
say $o.sq(6);
```

```stdout
36
```

## class_method_replace_11

```Raku
class C { method calc($n) { my $t = $n + 1; $t * 2 } }
my $o = C.new;
say $o.calc(4);
```

```stdout
10
```

## class_method_replace_14

```Raku
class C { method answer { 42 } }
my $o = C.new;
say $o.answer();
```

```stdout
42
```

## class_method_replace_6

```Raku
class C { method go() { 7 } }
my $x = C.new.go();
say $x;
```

```stdout
7
```

## class_method_replace_7

```Raku
class C { method f() { self }; method g() { 3 } }
my $o = C.new;
say $o.f().g();
```

```stdout
3
```

## class_replace_1

```Raku
class P { has $.x; }
my $p = P.new(x => 9);
say $p.x;
```

```stdout
9
```

## class_replace_2

```Raku
class C { has $.x; has $.y; }
my $c = C.new(y => 9, x => 4);
say $c.x;
```

```stdout
4
```

## class_say_replace_23

```Raku
class Animal { }
class Dog is Animal { }
 my $d = Dog.new(); say($d.isa(Animal)); say($d.isa(Dog)); 
```

```stdout
True
True
```

## given_2

```Raku
my $c = "";
$c = $c ~ "x" given 1;
say $c;
```

```stdout
x
```

## join_array_13

```Raku
my @a = 10,20,30,40,50;
my $i = 1;
say @a[$i,3].join(",");
```

```stdout
20,40
```

## join_range_array_1

```Raku
my @a = 9;
@a = 1..4;
say @a.join(",");
```

```stdout
1,2,3,4
```

## ladder__rung07_subs_optional_params

```Raku
sub inc($x, $by = 1) { return $x + $by; }
say inc(5);
say inc(5, 2);
```

```stdout
6
7
```

## multi_sub_say_4

```Raku
multi sub combine(Int $a, Int $b) { say("int+int"); }
multi sub combine(Str $a, Str $b) { say("str+str"); }
 combine(1, 2); combine("a", "b"); 
```

```stdout
int+int
str+str
```

## multi_sub_say_6

```Raku
multi sub f(Int $x) { say("specific int"); }
multi sub f($x) { say("fallback"); }
 f(5); f("str"); 
```

```stdout
specific int
fallback
```

## say_52

```Raku
    my $x = 3;
    if ($x == (1 | 2 | 3)) { say('pipe'); }
    if ($x == (3 & 3 & 3)) { say('amp'); }
```

```stdout
pipe
amp
```

## say_try_die_8

```Raku
    try { die('a'); CATCH { default { say($_.message); } } }
    try { say('b'); CATCH { default { say('no'); } } }
    say('after');
```

```stdout
a
b
after
```

## sub_19

```Raku
sub g($a, $b = 2) { return $a + $b }
say g(1);
say g(1,10);
```

```stdout
3
11
```

## sub_array_14

```Raku
my @x = 1, 2;
sub f($a, *@r) { say @r.elems; }
f(0, @x, 9);
```

```stdout
3
```

## sub_array_4

```Raku
sub f($a, *@r) { say @r.elems; }
my @a = (1,2); my @b = (3,4,5);
f(0, @a, @b);
```

```stdout
5
```

## test_while_incr

```Raku
my $i = 0;
while ($i < 5) { $i = $i + 1; }
say($i);
```

```stdout
5
```

## class_say_replace_22

```Raku
class Animal { }
class Dog is Animal { }
class Cat is Animal { }
 my $d = Dog.new(); say($d.isa(Animal)); say($d.isa(Cat)); 
```

```stdout
True
False
```

## class_say_replace_25

```Raku
class Animal { }
class Mammal is Animal { }
class Dog is Mammal { }
 my $d = Dog.new(); say($d.^name); say($d.^parents); 
```

```stdout
Dog
((Mammal) (Animal))
```

## for_say_10

```Raku
    for grep { $_ % 2 == 0 }, gather { take(1); take(2); take(3); take(4); } -> $v {
        say($v);
    }
    say('done');
```

```stdout
2
4
done
```

## for_say_11

```Raku
    for map { $_ * 2 }, gather { take(1); take(2); take(3); } -> $v {
        say($v);
    }
    say('done');
```

```stdout
2
4
6
done
```

## for_say_9

```Raku
    for gather { take(10); take(20); take(30); } -> $v {
        say($v);
    }
    say('done');
```

```stdout
10
20
30
done
```

## ladder__rung01_variables_undefine_makes_a_scalar_an_array_or_a_hash_empty

```Raku
my $x = 5; undefine($x); say $x.defined, " ", $x.raku;
my @a = 1,2; undefine(@a); say @a.elems;
my %h = a => 1; undefine(%h); say %h.elems;
my $y = "s"; undefine $y; say $y.defined;
```

```stdout
False Any
0
0
False
```

## ladder__rung028_quote_qq_guard_bare_names

```Raku
my %h = a => 1;
my @a = 1, 2;
sub f { 7 }
say qq/%h @a &f/;
```

```stdout
%h @a &f
```

## ladder__rung06_control

```Raku
my $x = 5;
if ($x > 3) { say "big"; } else { say "small"; }
my $i = 0;
while ($i < 3) { say $i; $i = $i + 1; }
```

```stdout
big
0
1
2
```

## range_array_10

```Raku
my $lo = 2;
my $hi = 6;
my @a = $lo..$hi;
say @a.sum;
```

```stdout
20
```

## rewrite__rr01_names

```Raku
my \a = 5; constant C = 7; my $x = a + C; say $x;
my @arr = 1, 2, 3; say @arr.elems;
sub f(::T $v) { T.^name }
say f(42);
```

```stdout
12
3
Int
```

## say_53

```Raku
    my $x = 50;
    if ($x == (50 & (50 | 60)))  { say('all-wraps-any'); }
    if ($x == (10 | (50 & 60)))  { say('nest-miss-BAD'); }
    if ($x == ((50 | 60) & 50))  { say('any-first-in-all'); }
```

```stdout
all-wraps-any
any-first-in-all
```

## sub_18

```Raku
sub plain($z) { return $z }
say plain(6);
sub t(Int $n) { return $n }
say t(4);
```

```stdout
6
4
```

## while_say_1

```Raku
    my $i = 1;
    while ($i <= 3) {
        say($i);
        $i = $i + 1;
    }
```

```stdout
1
2
3
```

## ladder__rung16_bool_relops_logical_or_in_a_condition

```Raku
my $a = 3;
if $a == 1 || $a == 3 { say "hit" } else { say "miss" }
if $a == 1 || $a == 2 { say "hit" } else { say "miss" }
my $i = 0;
while $i < 2 || $i == 5 { $i++ }
say $i;
```

```stdout
hit
miss
2
```

## roast_causes__rc04_paren_semilist_keeps_every_statement

```Raku
my @a = 2, 4;
say $(my @c = @a; @c.push(9); @c);
say $(my $x = 5; $x + 1);
my @d = @a;
say (@d»++; @d).elems;
say $(my @e = @a; @e»++; @e);
```

```stdout
[2 4 9]
6
2
[3 5]
```

## say_23

```Raku
    if (True)  { say('t'); } else { say('f'); }
    if (False) { say('t'); } else { say('f'); }
    my $x = 1;
    if ($x) { say('t'); } else { say('f'); }
    my $y = 0;
    if ($y) { say('t'); } else { say('f'); }
```

```stdout
t
f
t
f
```

## sort_array_say_1

```Raku
    my @a = (5, 3, 9, 1);
    my @s = sort(@a);
    say(@s[0]);
    say(@s[1]);
    say(@s[2]);
    say(@s[3]);
```

```stdout
1
3
5
9
```

## while_6

```Raku
my $i = 0;
repeat {
    $i = $i + 1;
    last if $i == 3;
    say $i;
} while $i < 10;
```

```stdout
1
2
```

## while_7

```Raku
my $i = 0;
repeat {
    $i = $i + 1;
    next if $i == 2;
    say $i;
} while $i < 4;
```

```stdout
1
3
4
```

## ladder__rung024_kw_inf_inf_smartmatch

```Raku
say Inf ~~ Inf;
say -Inf ~~ -Inf;
say Inf ~~ -Inf;
say 5 ~~ Inf;
say Inf ~~ Num;
my $a = Inf;
say $a ~~ Inf;
say $a ~~ $a;
```

```stdout
True
True
False
False
True
True
True
```

## ladder__rung024_kw_inf_inf_to_int_failure

```Raku
say Inf.Int.WHAT;
say (-Inf).Int.WHAT;
say NaN.Int.WHAT;
say Inf.Int.defined;
say Inf.Int // "dflt";
try { Inf.Int; CATCH { default { say .message; say .^name } } }
my $f = Inf.Int;
say $f.exception.message;
```

```stdout
(Failure)
(Failure)
(Failure)
False
dflt
Cannot convert Inf to Int
X::Numeric::CannotConvert
Cannot convert Inf to Int
```

## ladder__rung13_classes_public_attribute

```Raku
class Point {
    has $.x is rw;
    has $.y is rw;
}
my $p = Point.new(x => 3, y => 4);
say $p.x;
say $p.y;
$p.x = 10;
say $p.x;
```

```stdout
3
4
10
```

## ladder__rung04_arrays_an_empty_array_is_an_array_a_sub_can_push_onto_and_its_max_is_minus_inf

```Raku
sub fill(@a, $v) { @a.push($v) }
my @e;
fill(@e, 5);
fill(@e, 6);
say @e;
my @n;
say @n.raku;
say @n.^name;
say @n.defined;
say @n // "default";
say @n.max, " ", @n.min;
```

```stdout
[5 6]
[]
Array
True
[]
-Inf Inf
```

## ladder__rung07_subs_a_sigilless_parameter_is_assignable_and_writes_back_to_its_argument

```Raku
sub set-to-eight(\x) { x = 8 }
my $w = 1;
set-to-eight($w);
say $w;
sub twice(\c) { c++; c++ }
my $k = 5;
twice($k);
say $k;
my @a = 1, 2;
set-to-eight(@a[1]);
say @a;
```

```stdout
8
7
[1 8]
```

## ladder__rung16_bool_relops_logical_or_and_answer_an_operand

```Raku
my $x = 0 || 5;
say $x;
my $y = 7 || 5;
say $y;
say 2 && 3;
say 0 && 3;
say "" || "dflt";
my $b = { $_ == 1 || $_ == 3 };
say $b(3);
say $b(2);
say (1, 2, 3, 4, 5).grep({ $_ > 1 && $_ < 4 });
```

```stdout
5
7
3
0
dflt
True
False
(2 3)
```

## ladder__rung023_kw_nil_nil_empty_block_values

```Raku
sub empty_sub {}
sub empty_do { do {} }
sub empty_branch_true { if 1 {} else { 1; } }
sub empty_branch_false { if 0 { 1; } else {} }
sub bare_return { return; }
say empty_sub() === Nil;
say empty_do() === Nil;
say empty_branch_true() === Nil;
say empty_branch_false() === Nil;
say bare_return() === Nil;
say Nil.defined;
say Nil.so;
```

```stdout
True
True
True
True
True
False
False
```

## ladder__rung09_regex_a_hash_on_the_right_of_a_smartmatch_tests_its_keys_a_regex_on_the_left_tests_each_key

```Raku
my %h = (moep => "foo", bar => "baz");
say so "moep" ~~ %h;
say so "bar" ~~ %h;
say so "foo" ~~ %h;
say so "ugh" ~~ %h;
say so /oep/ ~~ %h;
say so /bar/ ~~ %h;
say so /ugh/ ~~ %h;
say so /foo/ ~~ %h;
my %n = (5 => 1);
say so 5 ~~ %n;
say so 6 ~~ %n;
```

```stdout
True
True
False
False
True
True
False
False
True
False
```

## rewrite__rr04_roles

```Raku
role Cnt { my $n = 0; method inc { ++$n } }
my class A does Cnt { }
my class B does Cnt { }
say A.inc; say A.inc; say B.inc;
role Cnt2[::T] { my $m = 0; method inc2 { ++$m } }
my class C does Cnt2[Int] { }
my class D does Cnt2[Str] { }
my class E does Cnt2[Int] { }
say C.inc2; say C.inc2; say D.inc2; say E.inc2;
my $v = 5 but role { method tag { "tagged" } };
say $v.tag; say $v + 1;
my $w = "s"; $w does role { method hi { "hi" } }; say $w.hi;
```

```stdout
1
2
1
1
2
1
1
tagged
6
hi
```

## array_say_4

```Raku
    my @nums;
    push(@nums, 1);
    push(@nums, 2);
    push(@nums, 3);
    say(elems(@nums));
    say(@nums[0]);
    say(@nums[2]);
    @nums[1] = 99;
    say(@nums[1]);
    push(@nums, 7);
    my $p = pop(@nums);
    say($p);
    say(elems(@nums));
```

```stdout
3
1
3
99
7
3
```

## ladder__rung04_arrays_scalar_container_subscripts

```Raku
my $r = [1, 2, 3];
say $r[1];
$r[0] = 9;
say $r[0];
my %h = a => 1, b => 2;
my $h = %h;
say $h{"a"};
say $h<b>;
say $h<c>:exists;
$h<c> = 3;
say $h<c>;
my $i = 1;
my $n = 5;
say $i < $n;
if $i { say "block" }
```

```stdout
2
9
1
2
False
3
True
block
```

## scrip_test_rk_re32

```Raku
# rk_re32.raku — RK-32: NFA compilation gate
# Verifies NFA builds for target patterns and reports state counts.
# Execution (matching) is tested in RK-33.

sub main() {
    # The NFA state count is printed by the raku_nfa_compile builtin.
    # Each call prints:  NFA:<pattern>:states=N
    raku_nfa_compile('\d+');
    raku_nfa_compile('[a-z]+');
    raku_nfa_compile('a|b');
    raku_nfa_compile('.*');
    raku_nfa_compile('^x$');
    say('rk_re32 ok');
}
main();
```

## ladder__rung03_strings_an_array_interpolates_in_a_double_quoted_string_only_when_a_subscript_or_a_call_follows

```Raku
my @a = 1, 2, 3;
my @b-c = 4, 5;
my %h = x => 1;
say "plain @a end";
say "email x@a.net";
say "zen @a[] end";
say "idx @a[1] end";
say "hy @b-c[] end";
say "hy2 @b-c end";
say "hash %h end";
say "pct %x end";
say "undecl @nope end";
say "x @a.join(',') y";
say "e @a.elems end";
say "e2 @a.elems() end";
say "s @a[1].Str end";
```

```stdout
plain @a end
email x@a.net
zen 1 2 3 end
idx 2 end
hy 4 5 end
hy2 @b-c end
hash %h end
pct %x end
undecl @nope end
x 1,2,3 y
e @a.elems end
e2 3 end
s 2.Str end
```

## ladder__rung14_roles_a_parametric_role_binds_its_parameters_in_its_methods

```Raku
role Scaled[$factor] {
    method scale($x) { $x * $factor }
}
class Double does Scaled[2] { }
class Triple does Scaled[3] { }
say Double.new.scale(5);
say Triple.new.scale(5);
role Tagged[$tag, $sep] {
    method tagged($s) { $tag ~ $sep ~ $s }
}
class Note does Tagged["note", ": "] { }
say Note.new.tagged("hi");
role Typed[::T] {
    method kind { T.^name }
}
class IntBox does Typed[Int] { }
say IntBox.new.kind;
```

```stdout
10
15
note: hi
Int
```

## benchmark_pi-sequential-iteration

```Raku
# pi_sequential_iteration.rb port

use v6;

my \SCALE = 1000000;

if SCALE == 0 {
    say "0";
    exit 0;
}

my $delta = 1.0 / SCALE;
my $sum = 0.0;
my Int $i = 1;

while ( $i <=  SCALE ) {
  my $x = ( $i - 0.5 ) * $delta;
  $sum += 1.0 / ( 1.0 + $x * $x );
  $i++;
}

my $pi = 4.0 * $delta * $sum;
say $pi;

# vim: set ft=perl6
```

```stdout
3.141592653589764
```

## hash_say_replace_3

```Raku
# RK-15: Hash operations — set/get/exists/keys/values, sigil syntax

# Basic set and get
my %h;
%h{'name'} = 'Alice';
%h{'age'} = '30';
%h{'city'} = 'Portland';

say(%h{'name'});
say(%h{'age'});
say(%h{'city'});

# exists
say(%h{'name'}:exists);
say(%h{'missing'}:exists);

# update existing key
%h{'age'} = '31';
say(%h{'age'});

# sigil syntax: %h<key> and %h{$k}
my %h2;
%h2<lang> = 'Raku';
%h2<vers> = '6';
say(%h2<lang>);
say(%h2<vers>);
my $k = 'lang';
say(%h2{$k});
```

```stdout
Alice
30
Portland
True
False
31
Raku
6
Raku
```

## ladder__rung07_subs_a_multi_sub_is_chosen_by_its_named_parameters_and_a_nullary_loses_to_an_optional_named

```Raku
multi earth (:$me!)                 { "me $me" }
multi earth (:$him!)                { "him $him" }
multi earth (:$me!, :$him!)         { "me $me him $him" }
multi earth ($me)                   { "pos $me" }
multi earth ($me, :$you!)           { "pos $me you $you" }
multi earth ($me, $you)             { "pos $me pos $you" }
say earth(me => 1);
say earth(him => 2);
say earth(him => 2, me => 1);
say earth('b');
say earth('b', you => 4);
say earth('d', 'e');
multi f($x, :$verbose) { "one $x" ~ ($verbose ?? " v" !! "") }
multi f($x, $y) { "two $x $y" }
say f(1);
say f(1, :verbose);
say f(1, 2);
multi g(Int $n, :$k = 3) { "int $n $k" }
multi g(Str $s, :$k = 4) { "str $s $k" }
say g(5);
say g("a", k => 9);
say g(7, :k(2));
multi catch(*@all)             { 1 }
multi catch(*@all, :$really!)  { 2 }
say catch(0, 5);
say catch(0, 5, :!really);
multi zero()       { 'no args' }
multi zero(:$foo!) { 'named' }
say zero();
say zero(foo => 1);
multi optname()      { 'no args' }
multi optname(:$bar) { 'optional named' }
say optname();
say optname(bar => 1);
```

```stdout
me 1
him 2
me 1 him 2
pos b
pos b you 4
pos d pos e
one 1
one 1 v
two 1 2
int 5 3
str a 9
int 7 2
1
2
no args
named
optional named
optional named
```

## ladder__rung02_arithmetic_rat_rounding_comparison_sums_and_mixed_operands

```Raku
say 0.5 ** 0;
say 1.5 ** 2;
say (-1/2) ** 3;
say (1/4) ** 0.5;
say (1/4) ** (1/2);
say 10 ** 20;
say 10 ** -20;
say (10 ** -20).WHAT;
say 7 ** -1;
say -7 % 3.5;
say 7.5 % -2;
say -7.5 % 2;
say 1/7 % 1/3;
say (-7/2).floor;
say (-7/2).ceiling;
say (-7/2).round;
say (-5/2).round;
say (5/2).round;
say (-1/3).round;
say 7.123.round(0.1);
say 7.18.round(0.25);
say 7.123.round(1);
say -7.123.round(0.05);
say (1/3).abs;
say (-1/3).abs;
say (-1/3).sign;
say 0.0.sign;
say (1/3).Num;
say (1/3).Num.WHAT;
say (2/3) * 1.5e0;
say 1.5e0 * (2/3);
say (1/3) + 0.5e0;
say 3.14 * 2;
say 3.14 * 2.5e0;
say 1/3 == 0.333333;
say 1/3 == 1/3;
say 1/3 < 1/2;
say 1/3 > 0.3;
say 1/2 <= 0.5;
say 22/7 > 3.14159;
say (1/3) <=> (1/3 + 1/1000000);
say [1/3, 1/4, 1/5].sum;
say [1/3, 1/4, 1/5].sum.WHAT;
say ([+] 1/3, 1/4, 1/5);
say ([*] 1/3, 3/1);
say (1..5).map({ 1/$_ }).sum;
say (1..10).map({ 1/$_ }).sum;
say (1..30).map({ 1/$_ }).sum;
say (1..30).map({ 1/$_ }).sum.WHAT;
say (1..50).map({ 1/$_ }).sum;
say (1..50).map({ 1/$_ }).sum.WHAT;
say 0.1 * 3;
say 0.1 * 3 == 0.3;
say 1 - 0.9;
say 100 * 1.1;
say 1.1 ** 2;
say 1.1 ** 10;
say 3 / 4 * 4;
say 1 / 3 * 3;
say (1 / 3 * 3).WHAT;
say 1 / 0.25;
say 6 / 4;
say 6 / -4;
say -6 / 4;
say 0 / 5;
say 0 / 5.5;
say 0.0 + 0;
say (0.0 + 0).WHAT;
say -0.0;
say 1e0 / 3;
say 22 / 7;
say 355 / 113;
say 1000000 / 3;
say 1000000000000 / 3;
say 1 / 1000000007;
say 123456789 / 1000;
say 100 / 3;
say 2 / 3;
```

```stdout
1
2.25
-0.125
0.5
0.5
100000000000000000000
1e-20
(Num)
0.142857
0
-0.5
0.5
0.047619
-4
-3
-3
-2
3
0
7.1
7.25
7
-7.1
0.333333
0.333333
-1
0
0.3333333333333333
(Num)
1
1
0.8333333333333333
6.28
7.8500000000000005
False
True
True
True
True
True
Less
0.783333
(Rat)
0.783333
1
2.283333
2.928968
3.99498713092039
(Rat)
4.499205338329424
(Num)
0.3
True
0.1
110
1.21
2.5937424601
3
1
(Rat)
4
1.5
-1.5
-1.5
0
0
0
(Rat)
0
0.3333333333333333
3.142857
3.141593
333333.333333
333333333333.333333
0.000000001
123456.789
33.333333
0.666667
```

## for_range_3

```Raku
for 1..2 -> $i { if ($i == 1) { say "one" } else { say "two" } }
```

```stdout
one
two
```

## for_range_4

```Raku
for 1..2 { my $x = 5; say $x }
```

```stdout
5
5
```

## for_range_say_3

```Raku
for 1..3 -> $v { say($v) }
```

```stdout
1
2
3
```

## for_range_say_4

```Raku
 for 1..3 -> $v { say($v); }; say('done'); 
```

```stdout
1
2
3
done
```

## ladder__rung08_for_a_for_bodys_own_my_variable_is_not_the_enclosing_variable

```Raku
my $a = 1; for 1..2 -> $i { my $a = 10 + $i; say $a }; say $a;
```

```stdout
11
12
1
```

## ladder__rung08_for_a_pointy_block_parameter_is_not_the_enclosing_variable_of_the_same_name

```Raku
my $i = 5; for 1..2 -> $i { say $i }; say $i;
```

```stdout
1
2
5
```

## class_say_replace_1

```Raku
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); say($p.x()); 
```

```stdout
3
```

## class_say_replace_10

```Raku
class Cfg { has Int $.limit = 100; }
 my $c = Cfg.new(); say($c.limit); 
```

```stdout
100
```

## class_say_replace_12

```Raku
class Point { has $.x; has $.y; submethod BUILD(:$x, :$y) { $!x = $x * 2; $!y = $y; } }
 my $p = Point.new(x => 5, y => 10); say($p.x); say($p.y); 
```

```stdout
10
10
```

## class_say_replace_13

```Raku
class R { has $.id is required; submethod BUILD(:$id) { $!id = $id; } }
 my $r = R.new(id => 42); say($r.id); 
```

```stdout
42
```

## class_say_replace_14

```Raku
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); my $q = $p.clone(); say($q.x); say($q.y); 
```

```stdout
3
4
```

## class_say_replace_16

```Raku
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); my $r = $p.clone(y => 99); say($r.x); say($r.y); say($p.y); 
```

```stdout
3
99
4
```

## class_say_replace_18

```Raku
class Q { has $.x; }
 my $q = Q.new(x => 1); $q.x = 5; say("unreached"); 
```

## class_say_replace_19

```Raku
class P { has $.x is rw; }
 my $p = P.new(x => 1); $p.x = 5; say($p.x); 
```

```stdout
5
```

## class_say_replace_2

```Raku
class Box { has $.v = 42; }
 my $b = Box.new(); say($b.v); 
```

```stdout
42
```

## class_say_replace_20

```Raku
class Box { has Int $.v is rw; }
 my $b = Box.new(v => 1); $b.v = 99; say($b.v); 
```

```stdout
99
```

## class_say_replace_21

```Raku
class Empty { has $.x; }
 my $e = Empty.new(x => 1); say($e); 
```

```stdout
Empty.new(x => 1)
```

## class_say_replace_24

```Raku
class Dog { has $.name; }
 my $d = Dog.new(name => "Rex"); say($d.^name); 
```

```stdout
Dog
```

## class_say_replace_28

```Raku
class Point { has $.x; }
 my $p = Point.new(x => 1); say($p.WHAT); 
```

```stdout
(Point)
```

## class_say_replace_3

```Raku
class Box { has $.v = 42; }
 my $b = Box.new(v => 7); say($b.v); 
```

```stdout
7
```

## class_say_replace_4

```Raku
class Greeter { has $.greeting = "hello"; }
 my $g = Greeter.new(); say($g.greeting); 
```

```stdout
hello
```

## class_say_replace_5

```Raku
class Config { has %.opts; }
 my $c = Config.new(); my $h = $c.opts; say($h{'x'}:exists); 
```

```stdout
False
```

## class_say_replace_6

```Raku
class Point { has $.x is required; has $.y; }
 my $p = Point.new(y => 9); say("unreached"); 
```

## class_say_replace_7

```Raku
class Point { has $.x is required; has $.y; }
 my $p = Point.new(x => 7, y => 9); say($p.x); 
```

```stdout
7
```

## class_say_replace_8

```Raku
class Box { has Int $.w is required; }
 my $b = Box.new(w => 12); say($b.w); 
```

```stdout
12
```

## class_say_replace_9

```Raku
class Point { has Int $.x; has Int $.y; }
 my $p = Point.new(x => 3, y => 4); say($p.x); 
```

```stdout
3
```

## for_range_10

```Raku
my $n = 3;
for 0 ..^ $n -> $i { say $i }
```

```stdout
0
1
2
```

## for_range_say_5

```Raku
for 1..3 -> $v { say($v); }
say('done');
```

```stdout
1
2
3
done
```

## junction_say_5

```Raku
    my $s = 'b';
    if ($s eq any('a', 'b')) { say('str-hit'); }
```

```stdout
str-hit
```

## ladder__rung06_control_a_parenthesized_if_or_unless_is_the_value_of_the_branch_taken_or_empty

```Raku
say (if 0 { 1 } else { 2 }), " ", (if 1 { 7 }).^name, " ", (unless 1 { 2 }).^name, " ", (if 0 { 1 }).raku;
my @l = (if 1 { 7 } else { 8 }), 3; say @l.raku, " ", (if 0 { 1 } else { 2 }) + 5;
```

```stdout
2 Int Slip Empty
[7, 3] 7
```

## ladder__rung06_control_a_placeholder_block_with_a_statement_modifier_gets_the_condition_value

```Raku
my $a = 0; { $a = $^x } if 100; say $a; { $a = $^x } given 69; say $a;
{ $a = $^x } unless 0; say $a; { $a = $^x } with 7; say $a;
```

```stdout
100
69
0
7
```

## ladder__rung06_control_a_ternary_branch_that_is_a_block_ending_in_return_leaves_the_sub

```Raku
sub f($x) { my $s = $x ?? "yes" !! do { return "bail" }; "got $s" }
say f(1), f(0);
```

```stdout
got yesbail
```

## ladder__rung06_control_an_eager_prefix_on_a_gather_runs_it_to_the_end

```Raku
my $c = 0; my $t = eager gather { for 1 .. 5 { $c++; take $_ } }; say $t[0];
say $c;
```

```stdout
1
5
```

## ladder__rung06_control_an_if_modifier_inside_parentheses_yields_empty_when_false

```Raku
my $answer = 0; my @x = 41, (42 if $answer), 43; my @y = 41, (42 unless $answer), 43;
my $y = (3 if 0); say @x.raku, " ", @y.raku, " ", $y.raku, " ", (7 unless 1).raku;
```

```stdout
[41, 43] [41, 42, 43] Empty Empty
```

## ladder__rung07_subs_a_nested_sub_shadows_a_top_level_sub_of_the_same_name_inside_its_enclosing_sub

```Raku
sub helper($x) { return "top:" ~ $x }
sub a() { sub helper($x) { return "a:" ~ $x }; say helper(1) }; a(); say helper(2);
```

```stdout
a:1
top:2
```

## ladder__rung07_subs_an_array_parameter_with_a_subsignature_unpacks_its_elements

```Raku
sub n(@a [$f, *@r]) { "$f:" ~ @r.join(",") }
say n([1, 2, 3]);
```

```stdout
1:2,3
```

## ladder__rung07_subs_named_params

```Raku
sub greet(:$name) { return "hi " ~ $name; }
say greet(name => "Bob");
```

```stdout
hi Bob
```

## ladder__rung07_subs_two_subs_may_each_declare_a_nested_sub_of_the_same_name

```Raku
sub a() { sub inner($x) { return "a:" ~ $x }; say inner(1) }; sub b() { sub inner($x) { return "b:" ~ $x }; say inner(2) }
a(); b(); a(); b();
```

```stdout
a:1
b:2
a:1
b:2
```

## ladder__rung08_for_a_for_statement_in_parentheses_runs

```Raku
my $t = 0; (for 1..3 { $t += $_ });
say $t;
```

```stdout
6
```

## ladder__rung08_for_a_for_statement_modifier_restores_the_outer_topic_when_it_ends

```Raku
$_ = "q"; my $c = 0;
$c++ for 1..3; say $_, " ", $c;
```

```stdout
q 3
```

## ladder__rung08_for_loop_for_over_array

```Raku
my @a = (10, 20, 30);
for @a -> $x { say $x; }
```

```stdout
10
20
30
```

## ladder__rung08_for_loop_for_with_index

```Raku
my @a = ("a", "b");
for @a.kv -> $i, $v { say "$i:$v"; }
```

```stdout
0:a
1:b
```

## ladder__rung08_for_redo_with_a_label_from_an_inner_loop_restarts_the_outer_loop

```Raku
my $t = ""; my $p = 0; my $y = 0; A: while $p++ < 2 { $t ~= "A$p "; B: while $y++ < 2 { $t ~= "B$y "; redo A if $y == 1 && $p == 1; last A } }
say $t;
```

```stdout
A1 B1 A1 B2 
```

## ladder__rung08_for_redo_with_a_label_restarts_a_c_style_loop_body

```Raku
my $s = ""; my $again = 1; CL: loop (my $i = 0; $i < 3; $i++) { $s ~= "i$i "; if $i == 1 && $again { $again = 0; redo CL } }
say $s;
```

```stdout
i0 i1 i1 i2 
```

## ladder__rung08_for_redo_with_a_label_restarts_a_repeat_body

```Raku
my $k = 0; my $z = 0; my $u = ""; RW: repeat { $k++; $u ~= "k$k "; redo RW if $k == 2 && !$z++ } while $k < 3;
say $u;
```

```stdout
k1 k2 k3 
```

## ladder__rung09_a_quantified_captures_list_responds_to_builtin_list_methods

```Raku
my $m = "aaa" ~~ /$<x>=(a)+/;
say $<x>.elems;
```

```stdout
3
```

## ladder__rung09_a_quantified_named_bracket_group_stays_a_single_match

```Raku
my $m = "aaa" ~~ /$<x>=[a]+/;
say $<x>;
```

```stdout
｢aaa｣
```

## ladder__rung09_named_bracket_group_binds_to_the_whole_group

```Raku
my $m = "a" ~~ /$<x>=[a]/;
say $<x>;
```

```stdout
｢a｣
```

## ladder__rung09_quantified_named_capture_pluralizes_to_a_list

```Raku
my $m = "aaa" ~~ /$<x>=(a)+/;
say $<x>;
```

```stdout
[｢a｣ ｢a｣ ｢a｣]
```

## ladder__rung09_regex_a_class_match_never_starts_inside_a_multibyte_character

```Raku
say ("\x2028" ~~ /\N/).so, " ", ("\x2028\x20AC" ~~ /<-[\x20AC]>/).so, " ", ("a\x20AC" ~~ /<-[a]>/).from;
say ("\x20AC\x20AC" ~~ /<[a..z]>/).so, " ", ("\x20AC!" ~~ /<[!]>/).from, " ", ("\x2029\x2029" ~~ /\N/).so;
```

```stdout
False True 1
False 1 False
```

## ladder__rung10_given_when_a_code_topic_smartmatched_against_a_number_is_false

```Raku
my $g = sub { 1 }; my $h = { 1 };
say $g ~~ 3, " ", $h ~~ 3.5, " ", 3 ~~ $g
```

```stdout
False False True
```

## ladder__rung10_smartmatch_an_array_against_a_hash_is_true_when_any_element_is_a_key

```Raku
my %h = (a => "b", c => Mu);
say (["a"] ~~ %h), (["c", "d"] ~~ %h), (["e"] ~~ %h), (() ~~ %h);
```

```stdout
TrueTrueFalseFalse
```

## ladder__rung10_smartmatch_two_distinct_objects_do_not_match_each_other_but_an_object_matches_itself

```Raku
class C {}; my $a = C.new; my $b = C.new;
say $a ~~ $a, " ", $a ~~ $b, " ", $a !~~ $b, " ", $a !~~ $a;
```

```stdout
True False True False
```

## ladder__rung13_classes_a_method_invocant_with_a_type_is_checked_against_the_object

```Raku
class A { method x(Int $a:) { 42 } }
say (try A.new.x) // "died";
```

```stdout
died
```

## ladder__rung13_classes_a_method_slurpy_array_takes_every_positional_argument

```Raku
class K { method m(*@x) { @x.raku }; method n($a, *@x) { "$a " ~ @x.raku } }
say K.new.m(1, 2), K.new.m(), K.new.n(5, 1, 2), K.new.m(7);
```

```stdout
[1, 2][]5 [1, 2][7]
```

## ladder__rung13_classes_a_multi_method_with_a_slurpy_is_chosen_by_the_leading_argument_types

```Raku
class C { multi method l(Int $a, *@r) { "int" }; multi method l(Str $a, *@r) { "str" } }
say C.new.l(1, 2), C.new.l("a"), C.new.l(3, 4, 5);
```

```stdout
intstrint
```

## ladder__rung13_classes_a_parenthesised_has_declares_each_attribute

```Raku
class C { has ($a, $b); method set { $a = 3; $b = 4 }; method sum { $a + $b } }
my $c = C.new; $c.set; say $c.sum;
```

```stdout
7
```

## ladder__rung15_blocks_next_is_an_assignment_rhs

```Raku
for 1..3 { my $n = next; say 7 }
say "done";
```

```stdout
done
```

## ladder__rung15_blocks_return_is_an_assignment_rhs

```Raku
sub rt { my $r = return 5; 7 }
say rt();
```

```stdout
5
```

## ladder__rung19_block_a_for_over_a_parenthesised_map_of_a_sort

```Raku
my @array = <3 1 2>;
for (map { $_ * 2 }, sort @array) -> $e { say $e }
```

```stdout
2
4
6
```

## ladder__rung19_block_a_sub_called_in_a_for_reads_its_own_topic

```Raku
sub topic { $_.gist }
for 1..2 { say topic() }
```

```stdout
(Any)
(Any)
```

## ladder__rung19_block_the_grep_listop_takes_a_regex_as_its_matcher

```Raku
my @l = <abc xyz bca>;
say (grep /a/, @l).join(","); say grep(/y/, @l).join(","); say (grep /q/, @l).elems;
```

```stdout
abc,bca
xyz
0
```

## method_say_replace_1

```Raku
role Speaks { method talk() { return "hello"; } }
 my $s = Speaks.new(); say($s.talk()); 
```

```stdout
hello
```

## multi_sub_array_3

```Raku
multi sub f($a, **@r) { say "L:" ~ @r.elems; }
f(1,2,3,4);
```

```stdout
L:3
```

## multi_sub_array_4

```Raku
multi sub f($a, *@r) { say "V:" ~ @r.elems; }
f(1,2,3);
```

```stdout
V:2
```

## say_replace_10

```Raku
grammar G { rule TOP { "abc" } }
 my $r = G.parse("abcd"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_11

```Raku
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("xx"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_12

```Raku
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("55"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_13

```Raku
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("5"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_14

```Raku
grammar G { rule TOP { <digit> <lower> <upper> } }
 my $r = G.parse("3XB"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_15

```Raku
grammar G { rule TOP { <digit>+ } }
 my $r = G.parse("abc"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_16

```Raku
grammar G { rule TOP { "a.b" } }
 my $r = G.parse("axb"); if ($r) { say("BAD"); } else { say("OK"); } 
```

```stdout
OK
```

## say_replace_17

```Raku
grammar G { rule TOP { "hello" } }
 my $r = G.parse("world"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_3

```Raku
grammar G { rule TOP { "a" | "b" } }
 my $r = G.parse("c"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_4

```Raku
grammar G { rule TOP { <alpha> } }
 my $r = G.parse("1"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_5

```Raku
grammar G { rule TOP { <digit> } }
 my $r = G.parse("x"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_6

```Raku
grammar G { rule TOP { <space> } }
 my $r = G.parse(" "); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
Y
```

## say_replace_7

```Raku
grammar G { rule TOP { <digit> } }
 my $r = G.parse("55"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_8

```Raku
grammar G { rule TOP { <upper> } }
 my $r = G.parse("a"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## say_replace_9

```Raku
grammar G { rule TOP { <xdigit> } }
 my $r = G.parse("g"); if ($r) { say("Y"); } else { say("N"); } 
```

```stdout
N
```

## sub_11

```Raku
my sub sq($x) { return $x * $x; }
say sq(5);
```

```stdout
25
```

## sub_say_6

```Raku
sub greet(Str:D $name) { say("hi " ~ $name); }
 greet("Tom"); my $u; greet($u); say("after"); 
```

```stdout
hi Tom
```

## builtin_table__bt03_raku_loop

```Raku
my $n = 0;
for 1..200000 { $n = $n + "abcdef".chars; }
say $n;
```

```stdout
1200000
```

## class_method_replace_12

```Raku
class Point { has $.x; has $.y; method sum { $!x + $!y } }
my $p = Point.new(x => 3, y => 4);
say $p.sum;
```

```stdout
7
```

## class_method_replace_13

```Raku
class C { method greet { return "hi"; } }
my $o = C.new;
say $o.greet();
```

```stdout
hi
```

## class_method_replace_15

```Raku
class C { has $.v; method show() { say $.v } }
my $o = C.new(v => 7);
$o.show();
```

```stdout
7
```

## class_method_replace_17

```Raku
class C { method g() { return 7 } }
my $o = C.new;
say $o.g();
```

```stdout
7
```

## class_method_replace_2

```Raku
class Cfg { method keys() { return "custom-keys"; } }
my $c = Cfg.new;
say $c.keys;
```

```stdout
custom-keys
```

## class_method_replace_20

```Raku
class Dog { method speak() { return "woof"; } }
my $d = Dog.new;
say $d.speak();
```

```stdout
woof
```

## class_method_replace_3

```Raku
class C { method go() { say "g" } }
my $o = C.new;
$o.go() if 1;
```

```stdout
g
```

## class_method_replace_4

```Raku
class C { method n($x) { say $x } }
my $o = C.new;
$o.n(9) if 1;
```

```stdout
9
```

## class_method_replace_5

```Raku
class C { method answer() { return 42; } }
my $o = C.new;
say $o.answer;
```

```stdout
42
```

## class_method_replace_8

```Raku
class C { method return() { return 3 } }
my $o = C.new;
say $o.return();
```

```stdout
3
```

## class_method_replace_9

```Raku
class C { method take() { return 5 } }
my $o = C.new;
say $o.take;
```

```stdout
5
```

## class_method_say_replace_18

```Raku
role Barker { method bark() { say("woof"); } }
class Dog does Barker { }
 my $d = Dog.new(); say($d.does(Barker)); say($d.isa(Dog)); 
```

```stdout
True
True
```

## class_say_replace_15

```Raku
class Animal { has $.name; has $.legs; }
class Dog is Animal { has $.breed; }
 my $d = Dog.new(name => "Rex", legs => 4, breed => "Lab"); my $c = $d.clone(breed => "Pug"); say($c.name); say($c.legs); say($c.breed); 
```

```stdout
Rex
4
Pug
```

## class_say_replace_26

```Raku
class Animal { has $.name; }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.name); 
```

```stdout
Rex
```

## class_say_replace_27

```Raku
role HasId { has $.id; }
class Widget does HasId { }
 my $w = Widget.new(id => 42); say($w.id); 
```

```stdout
42
```

## class_say_replace_29

```Raku
class Animal { has $.name; }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.WHAT); 
```

```stdout
(Dog)
```

## for_range_1

```Raku
my $x = 0;
for 1..3 -> $v { $x = $x + $v }
say $x;
```

```stdout
6
```

## for_range_11

```Raku
my $t = 0;
for 1..3 -> $x { $t = $t + $x; }
say $t;
```

```stdout
6
```

## junction_say_1

```Raku
    my $x = 3;
    if ($x == all(3, 3, 3)) { say('all-hit'); }
    if ($x == all(3, 3, 4)) { say('all-miss-BAD'); }
```

```stdout
all-hit
```

## junction_say_2

```Raku
    my $x = 3;
    if ($x == any(1, 2, 3)) { say('any-hit'); }
    if ($x == any(7, 8, 9)) { say('any-miss-BAD'); }
```

```stdout
any-hit
```

## junction_say_3

```Raku
    my $x = 3;
    if ($x == none(7, 8, 9)) { say('none-hit'); }
    if ($x == none(1, 3, 5)) { say('none-miss-BAD'); }
```

```stdout
none-hit
```

## junction_say_4

```Raku
    my $x = 3;
    if ($x == one(1, 3, 5)) { say('one-hit'); }
    if ($x == one(3, 3, 5)) { say('one-miss-BAD'); }
```

```stdout
one-hit
```

## ladder__rung06_control_a_given_statement_modifier_inside_parentheses_topicalizes_its_expression

```Raku
my @list = 1, 2, 3, 4, 5;
say (.[0] + .[1] + .[2] given @list), " ", (.elems given @list), " ", (.[1] given @list);
my $x = (.[1] + 10 given @list); say $x, " ", (.uc given "ab"), " ", ($_ given 7);
```

```stdout
6 5 2
12 AB 7
```

## multi_sub_array_2

```Raku
multi sub f($a, *@r) { say "V:" ~ @r.elems; }
multi sub f($a) { say "S"; }
f(1);
```

```stdout
S
```

## multi_sub_say_1

```Raku
multi sub greet($a) { say("one: " ~ $a); }
multi sub greet($a, $b) { say("two: " ~ $a ~ "," ~ $b); }
 greet("x"); greet("y", "z"); 
```

```stdout
one: x
two: y,z
```

## multi_sub_say_5

```Raku
multi sub describe(Int $x) { say("integer " ~ $x); }
multi sub describe(Str $x) { say("string " ~ $x); }
 describe(42); describe("hello"); 
```

```stdout
integer 42
string hello
```

## sub_24

```Raku
sub f($x) { if $x { return 1 } else { return 2 } }
say f(0);
say f(1);
```

```stdout
2
1
```

## sub_36

```Raku
sub boom() { say "BOOM"; return 9; }
sub safe() { return 5; }
my $x = 1 ?? safe() !! boom(); say $x;
```

```stdout
5
```

## class_method_replace_16

```Raku
class C { method m($v = 42) { return $v } }
my $o = C.new;
say $o.m();
say $o.m(8);
```

```stdout
42
8
```

## class_method_say_replace_35

```Raku
class A { method TWEAK() { say("A"); } }
class B is A { method TWEAK() { say("B"); } }
class C is B { method TWEAK() { say("C"); } }
 my $c = C.new(); 
```

```stdout
A
B
C
```

## for_range_say_6

```Raku
    for grep { $_ > 2 }, 1..5 -> $v {
        say($v);
    }
    say('done');
```

```stdout
3
4
5
done
```

## for_range_say_7

```Raku
    for map { $_ * 2 }, 1..3 -> $v {
        say($v);
    }
    say('done');
```

```stdout
2
4
6
done
```

## join_range_array_10

```Raku
my @a = 1,2,3,4,5;
my $lo = 1;
my $hi = 3;
say @a[$lo..$hi].join(",");
```

```stdout
2,3,4
```

## ladder__rung07_subs_multi_dispatch

```Raku
multi sub area($side) { return $side * $side; }
multi sub area($w, $h) { return $w * $h; }
say area(4);
say area(3, 5);
```

```stdout
16
15
```

## sub_say_try_1

```Raku
sub boomer() { die('deep'); say('sub-after'); };

    try { boomer(); say('body-after'); }; CATCH { say($_); };
    say('after');
```

```stdout
after
```

## test_stmt_pfx_FIRST

```Raku
for 1..3 -> $i {
    FIRST { say("first"); }
    say($i);
}
```

```stdout
first
1
2
3
```

## test_stmt_pfx_LAST

```Raku
for 1..3 -> $i {
    LAST { say("last"); }
    say($i);
}
```

```stdout
1
2
3
last
```

## test_stmt_pfx_NEXT

```Raku
for 1..3 -> $i {
    NEXT { say("next"); }
    say($i);
}
```

```stdout
1
next
2
next
3
next
```

## ladder__rung19_block_methcall_on_a_range

```Raku
say (1..9).grep({ $_ %% 3 });
say (1..4).map({ $_ * 2 });
say (1..4).elems;
say (^4).sum;
say [+] (1..999).grep({ $_ % 3 == 0 || $_ % 5 == 0 });
```

```stdout
(3 6 9)
(2 4 6 8)
4
6
233168
```

## say_try_die_5

```Raku
    try {
        try { die('a'); }; CATCH { die('b'); };
        say('unreached');
    }; CATCH { say('outer:' ~ $_); };
    say('after');
```

```stdout
unreached
after
```

## test_nested_if_while

```Raku
my $i = 0;
if ($i == 0) {
    while ($i < 3) { $i = $i + 1; }
}
say($i);
```

```stdout
3
```

## ladder__rung13_classes

```Raku
class Greeter {
    method greet {
        return "hello";
    }
}
my $g = Greeter.new;
say $g.greet;
```

```stdout
hello
```

## ladder__rung13_classes_named_arg_constructor

```Raku
class Sum {
    has $.a;
    has $.b;
    method total { $!a + $!b }
}
my $s = Sum.new(:a(39), :b(3));
say $s.total;
```

```stdout
42
```

## ladder__rung14_roles_smartmatch

```Raku
role Flyer { }
class Bird does Flyer { }
class Fish { }
my $b = Bird.new;
my $f = Fish.new;
say $b ~~ Flyer;
say $f ~~ Flyer;
```

```stdout
True
False
```

## say_try_die_7

```Raku
    try {
        try { die('inner'); CATCH { default { say('in:' ~ $_); } } }
        say('mid');
        die('outer');
        CATCH { default { say('out:' ~ $_); } }
    }
    say('after');
```

```stdout
in:inner
mid
out:outer
after
```

## ladder__rung14_roles

```Raku
role Greeter {
    method greet {
        return "hi from role";
    }
}
class Widget does Greeter { }
my $w = Widget.new;
say $w.greet;
```

```stdout
hi from role
```

## ladder__rung14_roles_override

```Raku
role Greeter {
    method greet { return "role hello" }
}
class Special does Greeter {
    method greet { return "class hello" }
}
my $s = Special.new;
say $s.greet;
```

```stdout
class hello
```

## sub_for_say_1

```Raku
# rk_gather.raku — RK-21: gather/take as BB_PUMP coroutine
sub main() {
    for gather { take(10); take(20); take(30); } -> $v {
        say($v);
    }
    say('done');
}
main();
```

```stdout
10
20
30
done
```

## ladder__rung15_blocks_reduce_with_a_block_of_three_or_more_parameters_takes_that_many_items_a_step

```Raku
my @array = 1..9;
say (@array.reduce: { $^a + $^b * $^c });
say reduce { $^a + $^b * $^c }, 1..9;
say (1, 2, 3, 4).reduce: { $^a ~ $^b ~ $^c ~ $^d };
say (1..5).reduce: { $^a + $^b * $^c };
say (1..6).reduce: { $^a + $^b };
say (1..4).reduce: { $^a * $^b };
my @w = <a b c d e>;
say @w.reduce: { $^a ~ "-" ~ $^b ~ $^c };
```

```stdout
141
141
1234
27
21
24
a-bc-de
```

## ladder__rung06_control_with_orwith_and_without_test_definedness_and_bind_the_topic

```Raku
sub describe($v) {
    with $v { return "defined: $_" }
    "undefined";
}
say describe(0);
say describe(Any);
my $missing;
my $backup = "fallback";
with $missing { say "first $_" } orwith $backup { say "second $_" } else { say "neither" }
without $missing { say "missing is undefined" }
```

```stdout
defined: 0
undefined
second fallback
missing is undefined
```

## ladder__rung07_subs_an_array_parameter_assigned_to_a_scalar_or_chosen_by_a_ternary

```Raku
sub f(@a) { my $x = @a; $x.elems }
sub g(@a) { my $x; $x = @a; $x.elems }
sub k(@a, @b) { !@a ?? @b !! @a }
sub m(@a, @b) { @a.elems ?? @a !! @b }
say f([1,2,3]);
say g([1,2]);
say k([], [1,2]).join(",");
say k([3], [1,2]).join(",");
say m([], [7,8]).join(",");
say m([4,5,6], [7,8]).join(",");
```

```stdout
3
2
1,2
3
7,8
4,5,6
```

## ladder__rung08_for_a_destructuring_signature_takes_types_smileys_and_traits

```Raku
for (1, 2), (3, 4) -> (Int $a, $b) {
    say $a * 10 + $b;
}
for ("left", 7), ("right", 9) -> (Str:D $side, Int:D $n) {
    say "$side=$n";
}
my %h = k => "v";
for ("one", %h), ("two", %h) -> ($label, %m is raw) {
    say $label, ":", %m<k>;
}
```

```stdout
12
34
left=7
right=9
one:v
two:v
```

## ladder__rung09_regex_the_subst_method_takes_a_closure_replacement_a_pointy_block_and_g_on_a_string_needle

```Raku
my $s = "a-b-c-d";
say $s.subst("-", "+");
say $s.subst("-", "+", :g);
say $s.subst(/<[a..c]>/, { $/.uc });
say $s.subst(/<[a..c]>/, { $/.uc }, :g);
say $s.subst(/(<[a..c]>)/, { "[$0]" }, :g);
say $s.subst(/<[a..c]>/, -> $m { $m.uc ~ "!" }, :g);
say $s.subst("b", { "B" });
say "ab12".subst(/(\d)(\d)/, -> $m { $m[1] ~ $m[0] });
say $s;
```

```stdout
a+b-c-d
a+b+c+d
A-b-c-d
A-B-C-d
[a]-[b]-[c]-d
A!-B!-C!-d
a-B-c-d
ab21
a-b-c-d
```

## ladder__rung14_roles_attributes

```Raku
role Counter {
    has $.count is rw = 0;
    method inc { $!count++ }
}
class Thing does Counter { }
my $t = Thing.new;
$t.inc;
$t.inc;
$t.inc;
say $t.count;
```

```stdout
3
```

## ladder__rung14_roles_composition

```Raku
role Flyer {
    method fly { return "flying" }
}
role Swimmer {
    method swim { return "swimming" }
}
class Duck does Flyer does Swimmer { }
my $d = Duck.new;
say $d.fly;
say $d.swim;
```

```stdout
flying
swimming
```

## ladder__rung02_arithmetic_a_division_by_zero_builds_a_zero_denominator_rat_as_rakudo_does

```Raku
my $r = 1/0;
say $r.^name;
say $r.nude;
say $r.Num;
say (-3/0).Num;
say (0/0).Num;
say $r.numerator, " ", $r.denominator;
say (try { ~$r } // "died");
say (1/0 == Inf);
say (5/0 > 10**30);
say (-7/0).nude;
```

```stdout
Rat
(1 0)
Inf
-Inf
NaN
1 0
died
True
True
(-1 0)
```

## ladder__rung13_classes_private_attribute

```Raku
class Counter {
    has $!count;
    method init { $!count = 0 }
    method inc { $!count++ }
    method get { $!count }
}
my $c = Counter.new;
$c.init;
$c.inc;
$c.inc;
say $c.get;
```

```stdout
2
```

## builtin_table__bt13_raku_user_sub_shadows_builtin

```Raku
sub chars($s) { return "mine:" ~ $s }
sub uc($s) { return "upper:" ~ $s }
say chars("abc");
say "abc".chars;
say uc("abc");
say "abc".uc;
{
    sub flip($s) { return "flipped:" ~ $s }
    say flip("ab");
    say "ab".flip;
}
say flip("cd");
```

```stdout
mine:abc
3
upper:abc
ABC
flipped:ab
ba
dc
```

## ladder__rung04_arrays_an_array_literal_of_one_iterable_argument_spreads_it_the_single_argument_rule

```Raku
my @r = 1, 2;
say [ @r ];
say [ [1, 2] ];
say [ (1, 2) ];
my $x = (1, 2);
say [ $x ];
sub f { my @a = 3, 4; @a }
say [ f() ];
say [ 7 ];
say [ (^3).map({ $_ * 2 }) ];
say [ flat (1, 2), (3, 4) ];
say [ "a" ].elems;
```

```stdout
[1 2]
[1 2]
[1 2]
[(1 2)]
[3 4]
[7]
[0 2 4]
[1 2 3 4]
1
```

## ladder__rung09_string_methods_raku_regex_classes_and_captures

```Raku
say "hello" ~~ /<[a..z]>+/ ?? "lower" !! "none";
say "999" ~~ /<-[0..9]>/ ?? "nondigit" !! "all digits";
if "John Smith, 42" ~~ /$<first>=(<[A..Z]><[a..z]>+) ' ' (<[A..Za..z]>+) ',' \s* (\d+)/ {
    say $<first>;
    say $0;
    say $1;
    say $2;
}
if "ab12" ~~ /[a | b]+ (\d+)   # a group that captures nothing
             / {
    say $0;
}
```

```stdout
lower
all digits
｢John｣
｢Smith｣
｢42｣
Nil
｢12｣
```

## sub_say_replace_1

```Raku
# rk_junction_nest.raku — RK-BB-4d part 1: mixed-flavor NESTED junctions.
# Self-delimiting EOT terminator lets the collapse skip a nested junction as
# one opaque span instead of truncating at its first SOH (the old SOH-leak).
sub main() {
    my $x = 50;
    if ($x == (10 & (50 | 60 | 70))) { say('shouldnt-A'); }
    if ($x == (50 & (50 | 60)))      { say('all-wraps-any'); }   # ⇒ all-wraps-any
    if ($x == (10 | (50 & 50 & 50))) { say('any-wraps-all'); }   # ⇒ any-wraps-all
    if ($x == (10 | (50 & 60)))      { say('shouldnt-D'); }
    if ($x == ((50 | 60) & 50))      { say('any-first-in-all'); } # ⇒ any-first-in-all
}
main();
```

```stdout
all-wraps-any
any-wraps-all
any-first-in-all
```

## ladder__rung04_arrays_a_non_literal_left_of_xx_is_a_thunk_evaluated_once_per_repetition

```Raku
my $n = 0;
say ($n++) xx 3;
my @rows = [ $n++, $n++ ] xx 2;
say @rows;
@rows[0][0] = 99;
say @rows;
my $seed = 1;
sub draw { $seed = ($seed * 7 + 3) % 11; $seed }
say (draw() < 6 ?? 'lo' !! 'hi') xx 5;
say 7 xx 3;
my @e = [] xx 2;
@e[0].push(1);
say @e;
```

```stdout
(0 1 2)
[[3 4] [5 6]]
[[99 4] [5 6]]
(hi hi hi lo hi)
(7 7 7)
[[1] []]
```

## ladder__rung19_block_methcall_sort_by_a_two_arg_comparator_block_past_64_elements

```Raku
my @a = (1..70).reverse.Array;
my @s = @a.sort({ $^x <=> $^y });
say @s.elems;
say @s[0], " ", @s[69];
my @r = @a.sort({ $^y <=> $^x });
say @r[0], " ", @r[69];
my @w = <banana apple cherry date>;
say @w.sort({ $^x cmp $^y });
my @t = (3, 1, 2, 1, 3, 2);
say @t.sort({ $^y <=> $^x });
say ().sort({ $^x <=> $^y });
my @b = (5,);
say @b.sort({ $^x <=> $^y });
```

```stdout
70
1 70
70 1
(apple banana cherry date)
(3 3 2 2 1 1)
()
(5)
```

## sub_say_5

```Raku
# rk_vars.raku — my declarations, assignment, re-assignment
sub main() {
    my $x = 10;
    say($x);
    $x = $x + 5;
    say($x);
    my $y = $x * 2;
    say($y);
    my $s = 'start';
    $s = $s ~ '!';
    say($s);
}
main();
```

```stdout
10
15
30
start!
```

## benchmark_spinner

```Raku
sub MAIN(Int $h = 64, Int $w = 64, Int $spins = 64) {
    my @spinner = < | / - \\ >;

    for ^$h {
        for ^$w {
            print ".";
            for ^$spins {
                print "\b@spinner[$_ % @spinner]";
            }
            print "\b.";
        }
        print ".\n";
    }
}
```

```stdout
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
.|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\|/-\..
```

## ladder__rung15_blocks_a_my_declaration_without_a_value_keeps_what_a_begin_check_init_or_enter_phaser_stored

```Raku
my $hist;
my @log;
my %seen;
my ($p, $q);
my $kept = 7;
my $reset = 1;
BEGIN { $hist ~= 'begin '; @log.push('b'); %seen<b> = 1; $p = 3; $reset = 9 }
CHECK { $hist ~= 'check '; $q = 4 }
INIT { $hist ~= 'init ' }
ENTER { $hist ~= 'enter ' }
say $hist;
say @log.elems, ' ', %seen<b>, ' ', $p, ' ', $q;
say $kept;
say $reset;
say "end";
```

```stdout
begin check init enter 
1 1 3 4
7
1
end
```

## ladder__rung07_subs_a_literal_passed_to_an_is_rw_parameter_throws_x_parameter_rw

```Raku
sub incr($a is rw) { $a++ }
try { incr(19) };
say $!.defined;
say $!.^name;
say $!.message;
my $v = 5;
incr($v);
say $v;
try { incr("x") };
say $!.^name;
sub noop($a is rw) { 1 }
try { noop(3) };
say $!.^name;
my @a = 1, 2;
incr(@a[0]);
say @a[0];
say "end";
```

```stdout
True
X::Parameter::RW
Parameter '$a' expects a writable container (variable) as an argument,
but got '19' (Int) as a value without a container.
6
X::Parameter::RW
X::Parameter::RW
2
end
```

## ladder__rung02_arithmetic_rat_smartmatch_truthiness_function_forms_and_type_checks

```Raku
my $r = 1/3;
say abs(-$r);
say sqrt(1/4);
say ?(0.0);
say so 0.0;
say !0.0;
say (not 0.0);
say 0.0 ?? "t" !! "f";
say 0.5 ?? "t" !! "f";
say floor(7/2);
say ceiling(7/2);
say round(7/2);
say "x" x (5/2);
say (1,2,3,4)[7/4];
say 1.5.WHAT.^name;
say 1.5 ~~ Rat;
say 1.5 ~~ Numeric;
say 1.5 ~~ Real;
say 1.5 ~~ Int;
say 1.5.isa(Rat);
```

```stdout
0.333333
0.5
False
False
True
True
f
t
3
4
4
xx
2
Rat
True
True
True
False
True
```

## ladder__rung07_subs_a_sub_declared_in_a_module_is_called_and_referenced_by_its_qualified_name_and_through_our

```Raku
module M {
    our sub hello($x) { "hi $x" }
}
module N {
    our sub bye($x) { "bye $x" }
}
say M::hello("c");
say N::bye("d");
say &M::hello("b");
my $f = &M::hello;
say $f("a");
my $g = &N::bye;
say $g("z");
say M::hello("c") ~ " " ~ N::bye("d");
my $n = 3;
{
    my $n = 7;
    our sub grtz { $n++ }
}
say &OUR::grtz();
say &OUR::grtz();
```

```stdout
hi c
bye d
hi b
hi a
bye z
hi c bye d
7
8
```

## ladder__rung14_roles_a_role_body_lexical_and_a_type_capture_as_the_target_of_new_are_read_by_its_methods

```Raku
role Plain {
    my $v = 5;
    method vv { $v }
}
my class P does Plain { }
say P.vv;
role Gen[::T] {
    my T $v .= new;
    my $n = 0;
    method vv { self.^name ~ ":" ~ $v.raku }
    method mk { T.new.raku }
    method inc { ++$n }
}
my class CInt does Gen[Int] { }
my class CStr does Gen[Str] { }
say CInt.vv;
say CStr.vv;
say CInt.mk;
say CStr.mk;
say CInt.inc;
say CInt.inc;
say CStr.inc;
```

```stdout
5
CInt:0
CStr:""
0
""
1
2
1
```

## sub_range_say_replace_1

```Raku
# rk_interp.raku — RK-12: string interpolation in double-quoted strings
# $var inside "..." is expanded to the variable's value at runtime.
# The lexer emits LIT_INTERP_STR; the lowerer splits on $ident boundaries
# and builds an AST_CAT chain. Single-quoted strings remain literal.

sub titled($name, $title) {
    say("$title $name");
}

sub main() {
    my $lang = 'Raku';
    my $ver = 6;
    say("language: $lang");
    say("version: $ver");
    my $a = 'hello';
    my $b = 'world';
    say("$a $b");
    titled('Jones', 'Dr');
    say("no interp here");
    say("prefix $lang suffix");
}
main();
```

```stdout
language: Raku
version: 6
hello world
Dr Jones
no interp here
prefix Raku suffix
```

## ladder__rung12_exceptions_a_die_in_the_condition_of_if_or_unless_aborts_the_statement

```Raku
try { if (die "x") { say "then" } else { say "else" } };
say "after one";
try { unless (die "x") { say "body" } };
say "after two";
my $f = 1;
try { unless (die "x") { $f = 3 } };
say $f;
my $g = 1;
try { if (die "x") { $g = 3 } else { $g = 4 } };
say $g;
my $h = 1;
try { $h = 3 unless die "x"; };
say $h;
my $i = 1;
try { say "a" if die "x"; $i = 2 };
say $i;
my $j = 1;
try { if (0 || die "y") { $j = 5 } else { $j = 6 } };
say $j;
my $k = 0;
if ($k == 0) { say "zero" } else { say "nonzero" }
unless ($k) { say "falsy" }
say "ok" if $k == 0;
```

```stdout
after one
after two
1
1
1
1
1
zero
falsy
ok
```

## benchmark_rc-dragon-curve

```Raku
say "<?xml version='1.0' encoding='utf-8' standalone='no'?>
<!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN'
'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
<svg width='100%' height='100%' version='1.1'
xmlns='http://www.w3.org/2000/svg'>";

my $order = 6; # akin to number of recursion steps
my $d_size = 1000; # size in pixels
my $turn_angle = pi/2; # turn angle of each segment, 90 degrees for the canonical dragon

my $angle = pi - ($order * (pi/4)); # starting angle
my $len = ($d_size/1.5) / sqrt(2)**$order; # size of each segment
my ($x, $y) = ($d_size*5/6, $d_size*1/3); # starting point

for 0..2**$order-1 -> $i {
    # find which side to turn based on the iteration
    $angle += ((($i +& -$i) +< 1) +& $i) ?? -$turn_angle !! $turn_angle;

    my ($dx, $dy) = ($x + $len * $angle.sin, $y - $len * $angle.cos);
    say "<line x1='$x' y1='$y' x2='$dx' y2='$dy' style='stroke:rgb(0,0,0);stroke-width:1'/>";
    ($x, $y) = ($dx, $dy);
}

say "</svg>";
```

```stdout
<?xml version='1.0' encoding='utf-8' standalone='no'?>
<!DOCTYPE svg PUBLIC '-//W3C//DTD SVG 1.1//EN'
'http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd'>
<svg width='100%' height='100%' version='1.1'
xmlns='http://www.w3.org/2000/svg'>
<line x1='833.333333' y1='333.333333' x2='833.3333333333334' y2='250.00000000000003' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='833.3333333333334' y1='250.00000000000003' x2='916.6666666666666' y2='250.00000000000003' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='916.6666666666666' y1='250.00000000000003' x2='916.6666666666666' y2='333.3333333333333' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='916.6666666666666' y1='333.3333333333333' x2='999.9999999999999' y2='333.3333333333333' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='999.9999999999999' y1='333.3333333333333' x2='999.9999999999999' y2='416.66666666666663' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='999.9999999999999' y1='416.66666666666663' x2='916.6666666666666' y2='416.66666666666663' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='916.6666666666666' y1='416.66666666666663' x2='916.6666666666666' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='916.6666666666666' y1='499.9999999999999' x2='999.9999999999999' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='999.9999999999999' y1='499.9999999999999' x2='999.9999999999999' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='999.9999999999999' y1='583.3333333333331' x2='916.6666666666666' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='916.6666666666666' y1='583.3333333333331' x2='916.6666666666666' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='916.6666666666666' y1='499.9999999999999' x2='833.3333333333334' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='833.3333333333334' y1='499.9999999999999' x2='833.3333333333334' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='833.3333333333334' y1='583.3333333333331' x2='750.0000000000001' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='750.0000000000001' y1='583.3333333333331' x2='750.0000000000001' y2='666.6666666666664' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='750.0000000000001' y1='666.6666666666664' x2='833.3333333333334' y2='666.6666666666664' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='833.3333333333334' y1='666.6666666666664' x2='833.3333333333334' y2='749.9999999999997' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='833.3333333333334' y1='749.9999999999997' x2='750.0000000000001' y2='749.9999999999997' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='750.0000000000001' y1='749.9999999999997' x2='750.0000000000001' y2='666.6666666666664' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='750.0000000000001' y1='666.6666666666664' x2='666.6666666666669' y2='666.6666666666664' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='666.6666666666669' y1='666.6666666666664' x2='666.6666666666669' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='666.6666666666669' y1='583.3333333333331' x2='750.0000000000001' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='750.0000000000001' y1='583.3333333333331' x2='750.0000000000001' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='750.0000000000001' y1='499.9999999999999' x2='666.6666666666669' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='666.6666666666669' y1='499.9999999999999' x2='666.6666666666669' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='666.6666666666669' y1='583.3333333333331' x2='583.3333333333336' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='583.3333333333336' y1='583.3333333333331' x2='583.3333333333336' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='583.3333333333336' y1='499.9999999999999' x2='500.00000000000034' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='500.00000000000034' y1='499.9999999999999' x2='500.00000000000034' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='500.00000000000034' y1='583.3333333333331' x2='416.6666666666671' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666671' y1='583.3333333333331' x2='416.6666666666671' y2='666.6666666666664' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666671' y1='666.6666666666664' x2='500.00000000000034' y2='666.6666666666664' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='500.00000000000034' y1='666.6666666666664' x2='500.00000000000034' y2='749.9999999999997' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='500.00000000000034' y1='749.9999999999997' x2='416.6666666666671' y2='749.9999999999997' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666671' y1='749.9999999999997' x2='416.6666666666671' y2='666.6666666666664' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666671' y1='666.6666666666664' x2='333.3333333333338' y2='666.6666666666664' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='333.3333333333338' y1='666.6666666666664' x2='333.3333333333338' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='333.3333333333338' y1='583.3333333333331' x2='416.6666666666671' y2='583.3333333333331' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666671' y1='583.3333333333331' x2='416.6666666666671' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666671' y1='499.9999999999999' x2='333.3333333333338' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='333.3333333333338' y1='499.9999999999999' x2='333.3333333333338' y2='416.66666666666663' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='333.3333333333338' y1='416.66666666666663' x2='416.6666666666671' y2='416.66666666666663' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666671' y1='416.66666666666663' x2='416.66666666666714' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.66666666666714' y1='499.9999999999999' x2='500.00000000000045' y2='499.9999999999999' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='500.00000000000045' y1='499.9999999999999' x2='500.00000000000045' y2='416.66666666666663' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='500.00000000000045' y1='416.66666666666663' x2='583.3333333333337' y2='416.66666666666663' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='583.3333333333337' y1='416.66666666666663' x2='583.3333333333337' y2='333.33333333333337' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='583.3333333333337' y1='333.33333333333337' x2='500.00000000000045' y2='333.33333333333337' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='500.00000000000045' y1='333.33333333333337' x2='500.00000000000045' y2='416.66666666666663' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='500.00000000000045' y1='416.66666666666663' x2='416.6666666666672' y2='416.66666666666663' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666672' y1='416.66666666666663' x2='416.6666666666672' y2='333.33333333333337' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666672' y1='333.33333333333337' x2='333.33333333333394' y2='333.33333333333337' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='333.33333333333394' y1='333.33333333333337' x2='333.33333333333394' y2='250.00000000000009' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='333.33333333333394' y1='250.00000000000009' x2='416.6666666666672' y2='250.00000000000006' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666672' y1='250.00000000000006' x2='416.6666666666672' y2='166.66666666666677' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='416.6666666666672' y1='166.66666666666677' x2='333.33333333333394' y2='166.6666666666668' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='333.33333333333394' y1='166.6666666666668' x2='333.33333333333394' y2='250.00000000000009' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='333.33333333333394' y1='250.00000000000009' x2='250.00000000000065' y2='250.0000000000001' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='250.00000000000065' y1='250.0000000000001' x2='250.00000000000063' y2='166.66666666666683' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='250.00000000000063' y1='166.66666666666683' x2='166.66666666666734' y2='166.66666666666686' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='166.66666666666734' y1='166.66666666666686' x2='166.66666666666734' y2='250.00000000000014' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='166.66666666666734' y1='250.00000000000014' x2='83.33333333333405' y2='250.00000000000017' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='83.33333333333405' y1='250.00000000000017' x2='83.33333333333407' y2='333.3333333333335' style='stroke:rgb(0,0,0);stroke-width:1'/>
<line x1='83.33333333333407' y1='333.3333333333335' x2='166.66666666666737' y2='333.3333333333335' style='stroke:rgb(0,0,0);stroke-width:1'/>
</svg>
```

## ladder__rung07_subs_a_multi_family_constrained_by_subsets_and_where_clauses_dispatches

```Raku
subset Even of Int where { $_ % 2 == 0 };
subset Odd of Int where { $_ % 2 == 1 };
multi sub kind(Even $y) { 'Even' }
multi sub kind(Odd $y) { 'Odd' }
say kind(3);
say kind(4);
multi sub mmd(Even $x) { 'Even' }
multi sub mmd(Int $x) { 'Int' }
say mmd(4);
say mmd(3);
multi foo($foo where { $_ eq "foo" }) { $foo }
say foo("foo");
say (try { foo("bar") }).defined ?? "no die" !! "died";
multi sub g(Int $n where * < 0) { "neg" }
multi sub g(Int $n where * > 0) { "pos" }
multi sub g(Int $n) { "zero" }
say g(-5);
say g(5);
say g(0);
multi sub two(Even $a, Odd $b) { "even-odd" }
multi sub two(Odd $a, Even $b) { "odd-even" }
multi sub two($a, $b) { "other" }
say two(2, 3);
say two(3, 2);
say two(2, 2);
```

```stdout
Odd
Even
Even
Int
foo
died
neg
pos
zero
even-odd
odd-even
other
```

## sub_array_say_replace_1

```Raku
# rk_arrays.raku — RK-14: array operations
# Arrays stored as \x01-separated strings in normal DESCR_t slots.
# push/pop/elems/arr_get as builtins; @arr[$i] = val via arr_set builtin.

sub main() {
    my @nums;
    push(@nums, 1);
    push(@nums, 2);
    push(@nums, 3);
    say(elems(@nums));
    say(@nums[0]);
    say(@nums[2]);
    @nums[1] = 99;
    say(@nums[1]);
    my $p = pop(@nums);
    say($p);
    say(elems(@nums));

    my @words;
    push(@words, 'hello');
    push(@words, 'world');
    say(@words[0]);
    say(@words[1]);
    say(elems(@words));
}
main();
```

```stdout
3
1
3
99
3
2
hello
world
2
```

## scrip_test_rk_str22

```Raku
# rk_str22.raku — RK-22: substr/index/rindex/uc/lc/trim/chars
sub main() {
    my $s = 'Hello, World!';

    # substr: 0-based
    say(substr($s, 0, 5));
    say(substr($s, 7, 5));
    say(substr($s, 7));

    # index: 0-based, -1 if not found
    say(index($s, 'World'));
    say(index($s, 'xyz'));
    say(index($s, 'l'));

    # rindex: last occurrence, 0-based
    say(rindex($s, 'l'));
    say(rindex($s, 'xyz'));

    # uc / lc
    say(uc('hello'));
    say(lc('WORLD'));

    # trim: strip both ends
    my $padded = '  hello  ';
    say(trim($padded));

    # chars / length
    say(chars('hello'));
}
main();
```

```stdout
Hello
World
World!
7
Nil
2
10
Nil
HELLO
world
hello
5
```

## class_array_say_replace_1

```Raku
class Stack { has @.items; }
 my $s = Stack.new(); my @e = $s.items; say(@e.elems); 
```

```stdout
0
```

## class_array_say_replace_3

```Raku
class Stack { has @.items; }
 my @v = 10, 20, 30; my $t = Stack.new(items => @v); my @i = $t.items; say(@i.elems); say(arr_get(@i, 1)); 
```

```stdout
3
20
```

## class_hash_say_replace_1

```Raku
class Config { has %.opts; }
 my %seed = ''; hash_set(%seed, 'lang', 'Raku'); my $d = Config.new(opts => %seed); my $h2 = $d.opts; say(hash_get($h2, 'lang')); 
```

```stdout
Raku
```

## class_method_say_replace_10

```Raku
class Q { has $.m; has $.n; method BUILD(:$m, :$n) { $!m = $m; $!n = $n; } }
 my $q = Q.new(m => 7, n => 8); say($q.m); say($q.n); 
```

```stdout
7
8
```

## class_method_say_replace_55

```Raku
class Box { has $.w; has $.area; method TWEAK() { $!area = $!w * $!w; } }
 my $b = Box.new(w => 5); say($b.area); 
```

```stdout
25
```

## class_method_say_replace_56

```Raku
class Widget { has $.id; method TWEAK() { say("tweaked"); } }
 my $w = Widget.new(id => 1); say("done"); 
```

```stdout
tweaked
done
```

## class_say_replace_11

```Raku
class C { has $.x; has $.y; submethod BUILD(:$x) { $!x = $x; } }
 my $c = C.new(x => 1, y => 99); say($c.x); say("[" ~ $c.y ~ "]"); 
```

```stdout
1
[]
```

## for_array_say_3

```Raku
my @a = 10,20,30;
for @a -> $v { say($v); }
```

```stdout
10
20
30
```

## for_array_say_5

```Raku
my @a = 7,8,9;
for @a { say($_); }
```

```stdout
7
8
9
```

## ladder__rung04_arrays_a_negative_index_returns_a_failure_that_stays_a_failure_when_indexed_again

```Raku
my @a = 1, 2, 3; my $i = -2; my $x = @a[$i]; my $y = @a[$i][0]; my @b = map { @a[1 - $_][0] }, 0 .. 3;
say $x.WHAT, " ", ($x ~~ Failure), " ", $y.WHAT, " ", @b[3].WHAT, " ", @b[0].WHAT, " ", @a[7].WHAT, " ", $x.exception.^name;
```

```stdout
(Failure) True (Failure) (Failure) (Int) (Any) X::OutOfRange
```

## ladder__rung05_hashes_a_range_written_as_a_pair_value_stays_a_range

```Raku
my $p = "a" => 1..10; say $p.value.WHAT, " ", $p.value.elems;
say ("a" => 5) ~~ $p, " ", ("a" => 50) ~~ $p;
```

```stdout
(Range) 10
True False
```

## ladder__rung06_control_the_take_method_of_a_value_inside_a_gather_takes_it

```Raku
my @r = gather { 5.take; (6).take(); for 7, 8 { .take }; "x".take }; say @r;
say gather { for ^3 { .take if $_ > 0 } }.elems;
```

```stdout
[5 6 7 8 x]
2
```

## ladder__rung07_subs_a_bare_call_reaches_the_nearest_lexical_sub_when_two_blocks_declare_the_same_name

```Raku
{ my $n = 0; my sub foo { $n++ }; foo for ^2; say $n }
{ sub foo($c) { say "foo $c"; foo($c - 1) if $c > 1 }; foo(2) }
```

```stdout
2
foo 2
foo 1
```

## ladder__rung07_subs_a_subs_loop_variable_is_not_the_file_variable_another_sub_reads

```Raku
my $i = 100; sub f { my $t = 0; for 1..3 -> $i { $t += $i }; $t }; sub g { $i };
say f(), g();
```

```stdout
6100
```

## ladder__rung08_for_a_label_is_a_term_in_its_scope

```Raku
sub f { L: for 1..2 { my $l = L } }
say "ok";
```

```stdout
ok
```

## ladder__rung08_for_a_label_names_a_for_loop_with_several_loop_variables

```Raku
my @ans; L: for ^6 -> $x, $a { next L if $a == 1; @ans.push: $a }
say @ans;
```

```stdout
[3 5]
```

## ladder__rung08_for_redo_with_a_label_restarts_the_labelled_for_body

```Raku
my $n = 0; my $r = 0; FOO: for 1..2 { $r++; redo FOO if $n++ < 1 }
say $r;
```

```stdout
3
```

## class_array_say_replace_2

```Raku
class Base { has @.log; }
class Derived is Base { has $.id; }
 my $d = Derived.new(id => 7); my @l = $d.log; say(@l.elems); 
```

```stdout
0
```

## class_method_grep_replace_1

```Raku
class C { method grep() { return 8 } }
my $o = C.new;
say $o.grep();
```

```stdout
8
```

## class_method_map_replace_1

```Raku
class C { method map($x) { return $x + 1 } }
my $o = C.new;
say $o.map(4);
```

```stdout
5
```

## class_method_range_replace_6

```Raku
role R { method needed() {...} }
class C does R { }
 my $c = C.new(); say("made"); 
```

## class_method_replace_18

```Raku
class Sayer { has $.t; method go() { say $!t } }
my $s = Sayer.new(t => "done");
if True { $s.go() }
```

```stdout
done
```

## class_method_replace_19

```Raku
class C { has $.x; method greet() { return 3; } }
my $o = C.new;
say $o.greet();
```

```stdout
3
```

## class_method_say_replace_20

```Raku
class Base { has $.x is rw; }
class Sub is Base { method bump() { self.x = self.x + 5; } }
 my $s = Sub.new(x => 10); $s.x = 20; say($s.x);
```

```stdout
20
```

## class_method_say_replace_29

```Raku
role Greet { method hello() { return "hi"; } }
class Svc does Greet { method fetch() { return "ok"; } }
 my $s = Svc.new(); say($s.^methods); 
```

```stdout
(fetch hello POPULATE)
```

## class_method_say_replace_51

```Raku
role R { method who() { return "role"; } }
class C does R { method who() { return "class"; } }
 my $c = C.new(); say($c.who()); 
```

```stdout
class
```

## class_method_say_replace_9

```Raku
class A { has $.a; submethod BUILD(:$a) { say("buildA"); $!a = $a; } }
class B is A { has $.b; submethod BUILD(:$b) { say("buildB"); $!b = $b; }; method TWEAK() { say("tweakB"); } }
 my $o = B.new(a => 1, b => 2); say($o.a); say($o.b); 
```

```stdout
buildA
buildB
tweakB
1
2
```

## class_method_sort_replace_2

```Raku
class C { method sort() { return 99 } }
my $o = C.new;
say $o.sort;
```

```stdout
99
```

## for_range_array_1

```Raku
my @a = 0 xx 3;
for 0..2 -> $i { @a[$i] = $i * 10 }
say @a[0]; say @a[1]; say @a[2];
```

```stdout
0
10
20
```

## for_range_hash_1

```Raku
my %h;
for 1..2 -> $i { %h{$i} = $i * 100 }
say %h{1}; say %h{2};
```

```stdout
100
200
```

## ladder__rung06_control_unless_with_else_elsif_or_orwith_is_x_syntax_unlesselse_with_its_keyword

```Raku
use MONKEY-SEE-NO-EVAL;
for <else elsif orwith> -> $k { try { EVAL "unless 1 \{\} $k 1 \{\}" }; print $!.^name, ":", $!.keyword, " " }
say "";
```

```stdout
X::Syntax::UnlessElse:else X::Syntax::UnlessElse:elsif X::Syntax::UnlessElse:orwith 
```

## multi_sub_say_2

```Raku
multi sub process(Int:D $x) { say("defined int: " ~ $x); }
multi sub process($x) { say("other"); }
 process(42); my $u; process($u); 
```

```stdout
defined int: 42
other
```

## say_try_die_6

```Raku
    my $n = 2;
    try { if ($n > 1) { die('cond'); }; say('no'); }; CATCH { say($_); };
    say('after');
```

```stdout
after
```

## sub_array_9

```Raku
sub a($x, *@r)  { return @r.elems; }
sub b($x, **@r) { return @r.elems; }
say a(0,1,2,3) ~ "|" ~ b(0,1,2,3);
```

```stdout
3|3
```

## class_method_say_replace_31

```Raku
class Greeter { method hello() { return "hi"; } }
class Farewell { method bye() { return "bye"; } }
class Both is Greeter is Farewell { }
 my $b = Both.new(); say($b.hello()); say($b.bye()); 
```

```stdout
hi
bye
```

## class_method_say_replace_33

```Raku
class A { method who() { return "A"; } }
class B is A { }
class C is B { }
 my $c = C.new(); say($c.who()); 
```

```stdout
A
```

## class_method_say_replace_34

```Raku
class A { method who() { return "A"; } }
class B is A { method who() { return "B"; } }
class C is B { }
 my $c = C.new(); say($c.who()); 
```

```stdout
B
```

## class_method_say_replace_47

```Raku
class Base { method who() { return "base"; } }
role R { method who() { return "role"; } }
class C is Base does R { }
 my $c = C.new(); say($c.who()); 
```

```stdout
role
```

## class_method_say_replace_48

```Raku
role A { method m() { return "a"; } }
role B { method m() { return "b"; } }
class C does A does B { method m() { return "C"; } }
 my $c = C.new(); say($c.m()); 
```

```stdout
C
```

## class_method_say_replace_49

```Raku
role A { method m() { return "a"; } }
role B { method m() { return "b"; } }
class C does A does B { }
 my $c = C.new(); say($c.m()); 
```

## class_method_say_replace_52

```Raku
role A { method foo() { return "f"; } }
role B { method bar() { return "b"; } }
class C does A does B { }
 my $c = C.new(); say($c.foo()); say($c.bar()); 
```

```stdout
f
b
```

## class_sub_say_replace_1

```Raku
class Animal { has $.n; }
class Dog is Animal { }
sub describe(Animal $a) { say($a.n); }
 my $d = Dog.new(n => 5); describe($d); 
```

```stdout
5
```

## core__rc05_value_call_returned_closure

```Raku
sub make($n) { -> $x { $x + $n } }
say make(5)(10);
my @fs = (1..3).map(-> $n { -> $x { $x * $n } });
say @fs.map({ $_(10) });
```

```stdout
15
(10 20 30)
```

## for_array_say_4

```Raku
my @a = 1,2,3;
my $s = 0;
for @a -> $v { $s = $s + $v; }
say($s);
```

```stdout
6
```

## class_method_say_replace_17

```Raku
class A { method greet() { return "A"; } }
class B is A { method greet() { return "B"; } }
class C is A { method greet() { return "C"; } }
class D is B is C { }
 my $d = D.new(); say($d.greet()); 
```

```stdout
B
```

## class_multi_sub_replace_1

```Raku
class Animal { }
class Dog is Animal { }
multi sub describe(Animal $a) { say("an animal"); }
multi sub describe(Dog $d) { say("a dog"); }
 my $d = Dog.new(); describe($d); 
```

```stdout
a dog
```

## class_say_replace_17

```Raku
class A { has $.base; }
class B is A { }
class C is A { has $.mid; }
class D is B is C { }
 my $d = D.new(base => "X", mid => "Y"); say($d.base ~ $d.mid); 
```

```stdout
XY
```

## for_range_array_replace_1

```Raku
my @a = (1,2,3);
for 0..4 -> $i {
    say @a[$i];
}
say "done";
```

```stdout
1
2
3
(Any)
(Any)
done
```

## rewrite__rr12_concurrency

```Raku
my $p = start { 42 }; say await $p;
my $c = Channel.new; $c.send(7); say $c.receive;
my @got; Supply.from-list(1, 2, 3).tap({ @got.push($_) }); say @got;
react { whenever Supply.from-list(1..2) { say "w$_" } }
my @ps = (^3).map({ start { $_ * 2 } }); await Promise.allof(@ps); say @ps.map(*.result).join(",");
```

```stdout
42
7
[1 2 3]
w1
w2
0,2,4
```

## ladder__rung07_subs_a_core_routine_written_without_arguments_is_a_call

```Raku
my $r = slip;
say $r.elems;
say [slip].elems;
say "ok" if [] ~~ [slip];
try { await };
say "after";
```

```stdout
0
0
ok
after
```

## roast_causes__rc07_pairs_values_are_the_elements_containers

```Raku
my @array = 17, 23, 42;
for @array.pairs -> $pair { $pair.value += 100 }
say @array;
my %h = a => 1, b => 2;
for %h.pairs -> $p { $p.value = 7 }
say %h.sort;
```

```stdout
[117 123 142]
(a => 7 b => 7)
```

## token_say_replace_1

```Raku
grammar G {
    token TOP { \d+ }
}

    my $r = G.parse("abc");
    if ($r) { say("matched"); } else { say("nomatch"); }
```

```stdout
nomatch
```

## class_method_sort_replace_1

```Raku
class Widget {
    method sort() { return "custom-sort"; }
    method reverse() { return "custom-rev"; }
}
my $w = Widget.new;
say $w.sort;
say $w.reverse;
```

```stdout
custom-sort
custom-rev
```

## ladder__rung04_arrays_a_seq_over_an_infinite_range_is_lazy_and_says_dots

```Raku
my $evens = (1..*).map({ $_ * 2 });
say $evens.is-lazy;
say $evens.head(4);
say (1..*).map({ $_ * 3 }).first({ $_ > 10 });
say (0, (1..*).grep({ $_ %% 5 }));
say (1..4).map({ $_ + 1 }).is-lazy;
say (1..*).map({ $_ });
```

```stdout
True
(2 4 6 8)
12
(0 (...))
False
(...)
```

## ladder__rung04_arrays_an_array_is_one_mutable_object_an_element_store_writes_it_in_place_for_every_name_that_holds_it

```Raku
my @a = 1,2,3; my @b := @a; @a[0] = 5; say @b;
my $r = @a; $r[1] = 7; say @a;
my @c = @a; @c[2] = 0; say @a;
sub f(@x) { @x[0] = 99 }; f(@a); say @a;
for ^2 { my @l = 1,2; @l[0]++; say @l }
my @n = [1,2],[3,4]; my @o = @n; @o[0][0] = 50; say @n;
my @p; @p[3] = 1; say @p.elems; @a.push(4); say @b;
```

```stdout
[5 2 3]
[5 7 3]
[5 7 3]
[99 7 3]
[2 2]
[2 2]
[[50 2] [3 4]]
4
[99 7 3 4]
```

## ladder__rung024_kw_inf_inf_range

```Raku
say (1..Inf).WHAT;
say (1..Inf).first(* > 5);
say (1..Inf).head(3);
say (1..Inf)[5];
for 1..Inf { say $_; last if $_ >= 3 }
say (-Inf..0).min;
say 5 min Inf;
say 5 max Inf;
```

```stdout
(Range)
6
(1 2 3)
6
1
2
3
-Inf
5
Inf
```

## ladder__rung13_classes_a_class_literal_written_with_leading_colons_is_the_class_type_object

```Raku
class Foo {}
my $t1 = ::Foo;
say $t1.^name;
say $t1 ~~ Foo;
say ($t1 === Foo);
my $x = Foo;
say $x === ::Foo;
say ::Foo.^name;
```

```stdout
Foo
True
True
True
Foo
```

## core__rc06_value_call_forms

```Raku
my @subs = { $_ * 2 }, -> $x { $x + 1 }, sub ($y) { $y - 1 };
say @subs[0](10), " ", @subs[1](10), " ", @subs[2](10);
my $f = { $^a ~ $^b };
say $f("x", "y");
say { $_ + 100 }(5);
my &g = &say;
my $h = -> { 7 };
say $h.();
say (sub { 42 })();
```

```stdout
20 11 9
xy
105
7
42
```

## ladder__rung15_blocks_a_list_holding_a_lazy_gather_renders_after_its_seq_is_reified_not_during

```Raku
sub row($n) { ("row" ~ $n, gather for ^60 -> $i { take "cell-" ~ $n ~ "-" ~ $i }) }
my $total = 0;
for ^200 -> $n {
    my $s = row($n).Str;
    $total += $s.chars;
}
say $total;
say row(7).raku.chars;
say row(3)[1][59];
```

```stdout
136490
784
cell-3-59
```

## rewrite__rr03_containers

```Raku
my $a = 1; my $b := $a; $b = 2; say $a;
sub incr($x is rw) { $x++ }; incr($a); say $a;
say VAR($a).^name;
my @l = 1, 2; my $c = 9; @l[0] := $c; $c = 10; say @l[0];
my $ro := 5; try { $ro = 6; CATCH { default { say "ro" } } };
say $ro;
my %h; %h<k> = 1; my $hv := %h<k>; $hv = 2; say %h<k>;
say my $*z.VAR.dynamic;
my @q; say @q.VAR.name;
```

```stdout
2
3
Scalar
10
ro
5
2
True
@q
```

## ladder__rung08_for_a_pointy_block_body_resumes_the_range_at_its_own_depth_each_pass

```Raku
for 1..3 -> $x { print $x }
say "";
my @a = 4, 5, 6;
for @a -> $v { print $v * 2, " " }
say "";
my $s = 0;
for 1..10 -> $i { $s = $s + $i }
say $s;
for <p q r> { print $_, "." }
say "";
```

```stdout
123
8 10 12 
55
p.q.r.
```

## benchmark_divide-and-conquer

```Raku
my \SCALE = 10;
my \FANOUT = 2;

sub divide-and-conquer($n, $depth) {
    say "$depth: $n" if 0;
    $depth <= 0 ?? $n !! [+] await do for ^FANOUT {
        start { divide-and-conquer($n / FANOUT, $depth - 1) }
    }
}

say divide-and-conquer(1.0, SCALE);
```

```stdout
1
```

## ladder__rung08_for_a_rw_loop_variable_and_the_topic_write_back_to_the_array_and_is_copy_does_not

```Raku
my @a = 1, 2, 3, 4;
for @a -> $x is rw { $x *= 10 }
say @a;
for @a <-> $x { next if $x == 20; $x += 1 }
say @a;
$_++ for @a;
say @a;
for @a { $_ = $_ * 2 if $_ > 30 }
say @a;
for @a -> $x is copy { $x = 0 }
say @a;
```

```stdout
[10 20 30 40]
[11 20 31 41]
[12 21 32 42]
[12 21 64 84]
[12 21 64 84]
```

## ladder__rung04_arrays_in_numeric_context_count_their_elements

```Raku
my @a = 7, 8, 9;
my $i = 0;
while $i < @a { $i++ }
say $i;
say @a + 1;
say 10 - @a;
say 5 % @a;
say -@a;
say @a == 3;
my @s = <a b c>;
for ^4 { print "@s[$_ % @s]" }
print "\n";
```

```stdout
3
4
7
2
-3
True
abca
```

## ladder__rung07_subs_an_is_rw_parameter_writes_back_to_a_scalar_or_an_element_argument

```Raku
sub bump($n is rw) { $n += 1 }
my $c = 0;
bump($c) for ^3;
say $c;
my @a = 10, 20, 30;
bump(@a[1]);
say @a;
sub swap($x is rw, $y is rw) { my $t = $x; $x = $y; $y = $t }
my $p = "left";
my $q = "right";
swap($p, $q);
say "$p $q";
```

```stdout
3
[10 21 30]
right left
```

## roast_causes__rc02_colonpair_angle_named

```Raku
my $r = try { EVAL("1", :lang<Perl5>) };
say $r.defined;
say EVAL("2 + 3", :lang<Raku>);
say EVAL("4", :lang<perl6>);
try { EVAL("1", :lang<Foo>) };
say $!.^name;
say $!.message;
sub g(*@a, *%h) { say %h.raku; say @a.raku }
g(1, :x<y>);
g(:x<y>, 2);
sub f($a, :$lang) { say $lang.raku }
f(:lang<P>, 1);
```

```stdout
False
5
4
X::Eval::NoSuchLang
No compiler available for language 'Foo'
{:x("y")}
[1]
{:x("y")}
[2]
"P"
```

## sub_say_replace_2

```Raku
# rk_strings.raku — string concat, eq/ne, single/double quoted literals
sub main() {
    my $a = 'hello';
    my $b = 'world';
    say($a ~ ' ' ~ $b);
    if ($a eq 'hello') { say('eq literal ok'); }
    if ($a eq $b) { say('WRONG'); } else { say('ne vars ok'); }
    my $c = $a ~ $b;
    say($c);
    if ($c eq 'helloworld') { say('concat eq ok'); }
}
main();
```

```stdout
hello world
eq literal ok
ne vars ok
helloworld
concat eq ok
```

## ladder__rung01_variables_compound_assignment_and_element_increment

```Raku
my $x; $x //= 5; say $x;
my $z = 10; $z %= 4; say $z;
my $w = "ab"; $w x= 2; say $w;
my $v = 0; $v ||= 9; say $v;
my $u = 7; $u div= 2; say $u;
my $t = 5; $t min= 3; say $t;
my $s = 1; $s += 4; $s ~= "!"; say $s;
my @b = 1,2; @b[0] += 5; @b[1] *= 10; say @b.join(",");
my @c; ++@c[2]; ++@c[2]; @c[1]++; say @c[2], " ", @c[1];
my @d; @d[1] //= 7; @d[0] = 3; @d[0] //= 9; say @d.join(",");
my %h; %h<a> += 2; %h<a>++; ++%h<b>; say %h<a>, " ", %h<b>;
my @e = 5; my $old = @e[0]++; say $old, " ", @e[0]; my $new = ++@e[0]; say $new;
my @f = 1,2,3; @f[1] -= 1; @f[2]--; say @f.join(",");
```

```stdout
5
2
abab
9
3
3
5!
6,20
2 1
3,7
3 1
5 6
7
1,1,2
```

## sub_while_say_replace_1

```Raku
# rk_control.raku — if/else, while, nested conditions
sub main() {
    my $x = 3;
    if ($x == 3) { say('three'); } else { say('not three'); }
    if ($x == 5) { say('five');  } else { say('not five');  }
    my $i = 1;
    while ($i <= 4) {
        say($i);
        $i = $i + 1;
    }
    if ($x > 1) { say('gt one'); }
    if ($x < 10) { say('lt ten'); }
}
main();
```

```stdout
three
not five
1
2
3
4
gt one
lt ten
```

## ladder__rung12_exceptions_try_yields_a_code_value_call_and_a_sub_whose_last_statement_is_a_try_returns_it

```Raku
my $f = -> $x { $x + 1 };
my $r = try { $f(2) };
say $r;
my $g = -> $x { die "boom" };
my $q = try { $g(1) };
say $q.defined;
sub t($h) { try { $h(2) } }
say t(-> $x { $x * 3 });
sub u() { try { say "in"; 6 } }
say u();
class K { method m($h) { try { $h(4) } } }
say K.new.m(-> $x { $x + 1 });
sub e() { try { die "boom" }; 7 }
say e();
say "end";
```

```stdout
3
False
6
in
6
5
7
end
```

## ladder__rung13_classes_nqp_create_and_bindattr

```Raku
use nqp;
class P {
    has num $.x;
    has $.tag;
    method new(num $x) {
        my P $self := nqp::create(self);
        nqp::bindattr_n($self, P, '$!x', $x);
        nqp::bindattr($self, P, '$!tag', "p" ~ $x);
        $self;
    }
}
my $p = P.new(1.5e0);
my $q = P.new(2.25e0);
say $q.x + $p.x;
say $p.tag;
```

```stdout
3.75
p1.5
```

## ladder__rung04_arrays_hash_of_a_list_flattens_it_and_an_odd_number_of_elements_throws_x_hash_store_oddnumber

```Raku
say hash(1, 2).raku;
say hash((1, 2)).raku;
say hash(1, 2, 3, 4).elems;
my @a = 1, 2, 3, 4;
say hash(@a).elems;
say hash(@a){3};
say hash(a => 1, b => 2).elems;
say (1, 2).hash.raku;
my $r = try { hash(<1 2 3>) };
say $!.^name;
try { my %h = <1 2 3>; }
say $!.^name;
my %ok = <a 1 b 2>;
say %ok<a>;
say %ok<b>;
say "end";
```

```stdout
{"1" => 2}
{"1" => 2}
2
2
4
2
{"1" => 2}
X::Hash::Store::OddNumber
X::Hash::Store::OddNumber
1
2
end
```

## ladder__rung12_exceptions_a_method_a_string_lacks_throws_x_method_notfound

```Raku
# a method the receiver lacks throws X::Method::NotFound, inside and outside a try
class Point { has $.x = 1 }
try { say "abc".pop; CATCH { default { say .^name } } }
try { say 42.pop; CATCH { default { say .^name; say .message } } }
try { say 4.2e0.keys-of; CATCH { default { say .^name } } }
try { say Point.new.y; CATCH { default { say .^name } } }
my $r = try "abc".pop;
say $r.defined;
try {
    "abc".pop;
    say "not reached inside the try";
    CATCH { default { say "caught, the rest of the block skipped" } }
}
say "before the uncaught call";
"abc".pop;
say "not reached after the uncaught call";
```

```stdout
X::Method::NotFound
X::Method::NotFound
No such method 'pop' for invocant of type 'Int'
X::Method::NotFound
X::Method::NotFound
False
caught, the rest of the block skipped
before the uncaught call
```

## ladder__rung05_hashes_a_colon_pair_used_as_a_value_is_a_pair_in_a_hash_a_list_and_a_scalar

```Raku
my %h = :v(3);
say %h;
my %g = :w<x>;
say %g;
my %k = :b;
say %k;
my %n = :!b;
say %n;
my @a = :a, :c(2);
say @a;
my $p = :q(5);
say $p.key, " ", $p.value;
sub f(:$v, :$b) { say "$v $b" }
f(:v(4), :b);
my %m = a => 1;
say %m<a>:exists;
say (1,2,3).first(* > 1, :k);
```

```stdout
{v => 3}
{w => x}
{b => True}
{b => False}
[a => True c => 2]
q 5
4 True
True
1
```

## ladder__rung13_classes_a_forward_declared_class_stub_gives_way_to_the_full_class_and_typed_attributes_stay_attributes

```Raku
class Foo {...}
class Bar {
    has Foo $.f;
    has $.n = 2;
    method n2 { $!n * 2 }
}
class Foo {
    has $.x = 5;
    has Foo $.y;
    my $k = 3;
    method k { $k }
}
class A { }
say Foo.new.x;
say Foo.new.k;
say Bar.new.n2;
say Bar.new(f => Foo.new).f.x;
```

```stdout
5
3
4
5
```

## rewrite__rr08_dispatch

```Raku
multi f(Int $x) { "int" }
multi f(Str $x) { "str" }
multi f(Int $x where * > 100) { "big" }
say f(1); say f("a"); say f(500);
multi g($a, :$n = 2) { $a * $n }
say g(3); say g(3, :n(4));
proto h(|) { "<" ~ {*} ~ ">" }
multi h(Int) { "i" }
say h(1);
sub untyped($x) { $x.uc }
say untyped("ab");
sub untyped2($x) { $x.elems }
say untyped2([1, 2, 3]);
my $o = 3; say $o.^name; say 3.can("abs") ?? "can" !! "cannot";
sub c(Int() $n) { $n + 1 }
say c("41");
try { f(1.5); CATCH { default { say .^name } } }
```

```stdout
int
str
big
6
12
<i>
AB
3
Int
can
42
X::Multi::NoMatch
```

## sub_junction_say_replace_1

```Raku
# rk_junction_prec.raku — RK-BB-4d junction precedence + edges.
# Junction infix |/& binds TIGHTER than comparison (real Raku semantics),
# so `$x == 1|2|5` parses as `$x == any(1,2,5)`. Also exercises var
# round-trip, string-relop collapse, and mixed-flavor nesting.
sub main() {
    my $x = 5;
    if ($x == 1 | 2 | 5)  { say('unparen-any'); }    # ⇒ unparen-any
    if ($x == 1 | 2 | 3)  { say('shouldnt-1'); }
    if ($x == 5 & 5 & 5)  { say('unparen-all'); }    # ⇒ unparen-all
    my $j = any(2, 5, 8);
    if ($x == $j)         { say('var-roundtrip'); }  # ⇒ var-roundtrip
    my $s = 'b';
    if ($s eq any('a','b')) { say('str-collapse'); } # ⇒ str-collapse
    if ($x == any(1, all(5, 5))) { say('mixed-nest'); } # ⇒ mixed-nest
    my $y = 4;
    if ($y == none(1, (2 | 3))) { say('none-nest'); }   # ⇒ none-nest
}
main();
```

```stdout
unparen-any
unparen-all
var-roundtrip
str-collapse
mixed-nest
none-nest
```

## ladder__rung03_strings_the_method_assign_form_inside_an_expression_stores_and_yields_the_new_value

```Raku
my Str $a = "ab";
say ($a .= flip);
say $a;
my $c = "ab";
sub f($x) { $x }
say f($c .= flip);
say $c;
my $d = "ab";
my $e = ($d .= uc);
say $e;
say $d;
my @s = 3, 1, 2;
say (@s .= sort);
say @s;
my $g = "ab";
say $g .= flip;
my $h = "mid";
say "pre" ~ ($h .= uc) ~ "post";
say $h;
```

```stdout
ba
ba
ba
ba
AB
AB
[1 2 3]
[1 2 3]
ba
preMIDpost
MID
```

## ladder__rung04_arrays_push_unshift_append_prepend_splice_shift_and_pop_on_a_number_die_and_push_of_an_array_literal_lives

```Raku
use MONKEY-SEE-NO-EVAL;
my $q = 42;
my $r = try { $q.push(3); 1 };
say "push on a scalar var: ", $r.defined ?? "no die" !! $!.^name;
say $q;
for 'unshift(3)', 'append(3)', 'prepend(3)', 'shift', 'pop', 'splice(0, 1)' -> $m {
    my $v = try { EVAL "42.$m"; 1 };
    say "42.$m: ", $v.defined ?? "no die" !! $!.^name;
}
my @a = 1, 2;
push(@a, 3);
@a.unshift(0);
say @a.raku;
say @a.shift, " ", @a.pop;
push([]);
say "pushed nothing";
my $lives = try { push([1]); 1 };
say $lives;
say "end";
```

```stdout
push on a scalar var: X::Multi::NoMatch
42
42.unshift(3): X::Multi::NoMatch
42.append(3): X::Multi::NoMatch
42.prepend(3): X::Multi::NoMatch
42.shift: X::Method::NotFound
42.pop: X::Method::NotFound
42.splice(0, 1): X::Multi::NoMatch
[0, 1, 2, 3]
0 3
pushed nothing
1
end
```

## ladder__rung01_variables_a_coercion_type_on_a_variable_or_a_parameter_converts_the_value_it_is_given

```Raku
my Num(Str) $n = "2.5";
say $n.WHAT.gist, " ", $n;
my Rat(Str) $r = "0.25";
say $r.WHAT.gist, " ", $r;
my Bool(Any) $b = 5;
say $b.WHAT.gist, " ", $b;
my Int() $i = "12";
$i = "99";
say $i.WHAT.gist, " ", $i + 1;
my Str() $s = 3.5;
say $s.WHAT.gist, " ", $s;
$s = 10;
say $s.WHAT.gist, " ", $s;
sub f(Str(Int) $x) { $x.WHAT.gist ~ ":" ~ $x }
say f(42);
sub g(Int(Str) $x, $y) { ($x + $y).raku }
say g("40", 2);
sub h(Num() $x) { $x.WHAT.gist }
say h("7");
say h(7);
my $m = "abc" ~~ /b/;
my Str(Match) $sm = $m;
say $sm.WHAT.gist, " ", $sm;
say $sm ~~ Str;
```

```stdout
(Num) 2.5
(Rat) 0.25
(Bool) True
(Int) 100
(Str) 3.5
(Str) 10
(Str):42
42
(Num)
(Num)
(Str) b
True
```

## when_while_replace_1

```Raku
# rk_unless_until.raku — RK-20: unless, until
# repeat deferred to when 'last' is available

# unless: body runs when condition is false
my Int $x = 5;
unless ($x == 10) {
    say "not ten";
}

# unless with else: else branch taken when condition is true
if ($x == 5) {
    say "five";
} else {
    say "wrong";
}

# until: loops while condition is false, stops when true
my Int $i = 0;
until ($i >= 3) {
    say $i;
    $i = $i + 1;
}

say "done";
```

```stdout
not ten
five
0
1
2
done
```

## ladder__rung02_arithmetic_power_assigned_and_compound_assigned

```Raku
my $x = 3;
my $y = $x ** 3;
say $y;
$x **= 2;
say $x;
my $n = -2;
my $m = $n ** 3;
say $m;
my $e = 4;
my $z = $x ** $e;
say $z;
my $big = 2 ** 70;
say $big;
my @a = (1, 2, 3);
my $s = 2 ** @a.elems;
say $s;
my $f = 2 ** 0.5;
say $f;
my $q = 9 ** 0.5;
say $q;
my $w = 5;
$w **= 3;
say $w;
sub sq($v) { my $r = $v ** 2; return $r; }
say sq(12);
say sq(-7);
```

```stdout
27
9
-8
6561
1180591620717411303424
8
1.4142135623730951
3
125
144
49
```

## sub_for_say_replace_1

```Raku
# rk_fileio38.raku — RK-38/RK-56: open/close/slurp/lines + spurt

sub main() {
    my $path = '/tmp/rk38_test.txt';

    # RK-56: spurt writes file
    spurt($path, "line one\nline two\nline three\n");

    # slurp by path
    my $content = slurp($path);
    say($content);

    # open handle + slurp + close
    my $fh = open($path, ':r');
    my $c2 = slurp($fh);
    close($fh);
    say('slurp fh ok');

    # lines by path
    for lines($path) -> $line {
        say($line);
    }

    say('rk_fileio38 ok');
}
main();
```

```stdout
line one
line two
line three

slurp fh ok
/tmp/rk38_test.txt
rk_fileio38 ok
```

## ladder__rung13_classes_an_rw_accessor_takes_compound_assignment_and_increment_and_a_readonly_one_dies

```Raku
class Foo { has $.a is rw = 1; has $.b is rw = 10; has @.l is rw; has $.ro = 7 }
my $o = Foo.new;
$o.a = 5;
say $o.a;
$o.a += 2;
say $o.a;
$o.a++;
say $o.a;
++$o.a;
say $o.a;
$o.b--;
say $o.b;
$o.a *= 2;
say $o.a;
$o.a ~= "x";
say $o.a;
$o.l.push(1, 2);
say $o.l.elems;
my $r = try { $o.ro = 1; "lived" } // "died";
say $r;
my $s = try { $o.ro++; "lived" } // "died";
say $s;
say $o.ro;
my $y = $o.b++;
say $y;
say $o.b;
my $z = ++$o.b;
say $z;
```

```stdout
5
7
8
9
9
18
18x
2
died
died
7
9
10
11
```

## sub_say_try_replace_1

```Raku
# rk_try_catch25.raku — RK-25: try/CATCH/die exception handling
sub might_die($x) {
    if ($x == 0) { die('zero error'); }
    say($x);
}

sub main() {
    # try with no CATCH — body succeeds
    try { might_die(42); }

    # try that swallows a die
    try { might_die(0); }
    say('after swallowed die');

    # try with CATCH block — handler fires
    try {
        die('test error');
        CATCH { default { say('caught in handler'); } }
    }

    # try with CATCH — success path (handler should NOT fire)
    try {
        might_die(7);
        CATCH { default { say('WRONG'); } }
    }

    # die inside sub, caught by outer try
    try { might_die(0); }
    say('outer catch ok');
}
main();
```

```stdout
42
after swallowed die
caught in handler
7
outer catch ok
```

## scrip_test_rk_given

```Raku
# rk_given.raku — RK-13: given/when scalar smart-match
# given $x { when val { } ... default { } } lowers to nested AST_IF chain.
# Numeric when: AST_EQ comparison. String when: AST_LEQ comparison.

sub day_type($d) {
    given $d {
        when 1 { say('Mon: weekday'); }
        when 2 { say('Tue: weekday'); }
        when 6 { say('Sat: weekend'); }
        when 7 { say('Sun: weekend'); }
        default { say('weekday');     }
    }
}

sub season($s) {
    given $s {
        when 'spring' { say('warm');  }
        when 'summer' { say('hot');   }
        when 'autumn' { say('cool');  }
        when 'winter' { say('cold');  }
        default       { say('unknown'); }
    }
}

sub main() {
    day_type(1);
    day_type(6);
    day_type(3);
    season('summer');
    season('winter');
    season('monsoon');
}
main();
```

```stdout
Mon: weekday
Sat: weekend
weekday
hot
cold
unknown
```

## ladder__rung02_arithmetic_fatrat_keeps_every_digit

```Raku
my $r = FatRat.new(0, 1);
for 1 .. 40 { $r += 1 / $_ }
say $r.raku;
say $r;
say $r.WHAT;
say $r.numerator;
say $r.denominator;
say $r.Num;
say $r.Rat.WHAT;
my $q = FatRat.new(1, 3) * FatRat.new(1, 3);
say $q;
say $q.raku;
say $q.nude;
say $q + 1;
say ($q + 1).WHAT;
say $q * 3;
say $q - $q;
say $q == FatRat.new(1, 9);
say $q < 1/2;
say FatRat.new(10, 4).raku;
say FatRat.new(-10, 4).raku;
say FatRat.new(1, 18446744073709551616) * 2;
say (FatRat.new(1, 18446744073709551616) * 2).denominator;
my $s = FatRat.new(1, 7);
say $s * $s * $s * $s * $s;
say ($s ** 10).raku;
say $s.floor, $s.ceiling, $s.round;
say (1/7).FatRat.raku;
say 0.25.FatRat.raku;
say 5.FatRat.raku;
say FatRat.new(5, 1);
say 1/3 + FatRat.new(1, 3);
say (1/3 + FatRat.new(1, 3)).WHAT;
say 1e0 * FatRat.new(1, 4);
say (1e0 * FatRat.new(1, 4)).WHAT;
```

```stdout
FatRat.new(2078178381193813, 485721041551200)
4.278543038936375986517
(FatRat)
2078178381193813
485721041551200
4.278543038936376
(Rat)
0.111111
FatRat.new(1, 9)
(1 9)
1.111111
(FatRat)
0.333333
0
True
True
FatRat.new(5, 2)
FatRat.new(-5, 2)
0.0000000000000000001084202
9223372036854775808
0.000059
FatRat.new(1, 282475249)
010
FatRat.new(1, 7)
FatRat.new(1, 4)
FatRat.new(5, 1)
5
0.666667
(FatRat)
0.25
(Num)
```

## class_method_say_replace_19

```Raku
class Counter { has $.n; method add($k) { return Counter.new(n => $.n + $k); } }
 my $c = Counter.new(n => 10); $c .= add(5); say($c.n); 
```

```stdout
15
```

## class_method_say_replace_3

```Raku
class Box { has $.v; method v() { return $!v + 100; } }
 my $b = Box.new(v => 5); say($b.v()); 
```

```stdout
105
```

## class_method_say_replace_30

```Raku
class Temperature { has $.celsius; method new($c) { return self.bless(celsius => $c); } }
 my $t = Temperature.new(37); say($t.celsius); 
```

```stdout
37
```

## class_method_say_replace_37

```Raku
class Stack { has @!items; method size() { return 1; } }
 my $s = Stack.new(); say($s.items); 
```

## class_method_say_replace_38

```Raku
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.code()); 
```

## class_method_say_replace_39

```Raku
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.code); 
```

## class_method_say_replace_42

```Raku
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.reveal()); 
```

```stdout
(Any)
```

## class_method_say_replace_45

```Raku
class Cfg { has %!opts; method ok() { return 1; } }
 my $c = Cfg.new(); say($c.opts); 
```

## class_method_say_replace_5

```Raku
class Counter { has $.n; method bump() { $!n = $!n + 1; }; method val() { return $!n; } }
 my $c = Counter.new(n => 0); $c.bump(); $c.bump(); $c.bump(); say($c.val()); 
```

```stdout
3
```

## class_method_say_replace_57

```Raku
class C { has $.x; method make($v) { return self.bless(x => $v); } }
 my $o = C.make(9); say($o.x); 
```

```stdout
9
```

## class_method_say_replace_8

```Raku
class T { has $.c; method mk() { return self.bless(c => 9); } }
 my $t = T.mk(); say($t.c); 
```

```stdout
9
```

## for_range_say_8

```Raku
    try { for 1..3 -> $i { say($i); die('lp'); } }; CATCH { say($_); };
    say('after');
```

```stdout
1
after
```

## ladder__rung02_arithmetic_div_and_modulo_by_zero_return_a_failure

```Raku
my $a = 12 div 0; my $b = 12 % 0; say $a.WHAT.gist, $b.WHAT.gist, " ", $a.defined, " ", $a.exception.^name;
my @x; try (push @x, .abs with 12 div $_) for 0..4; say @x.raku;
```

```stdout
(Failure)(Failure) False X::Numeric::DivideByZero
[12, 6, 4, 3]
```

## ladder__rung06_control_a_bare_block_with_a_statement_modifier_is_run_by_it

```Raku
my $n = 0; { $n += $_ } for 1..3;
{ $n += 10 } if $n == 6; { $n += 100 } unless $n == 6; say $n;
```

```stdout
116
```

## ladder__rung10_given_when_a_dot_call_on_the_topic_is_a_call_of_the_topic

```Raku
my $t = sub { True }; my $f = sub { False };
say ($t ~~ .()).raku, " ", ($f ~~ .()).raku; given sub ($x) { $x * 2 } { say .(4) }
```

```stdout
Bool::True Bool::False
8
```

## sub_for_array_2

```Raku
sub f(*@r) { my $o = ""; for @r -> $x { $o = $o ~ $x ~ " "; }; say $o.trim; };
f("a","b");
```

```stdout
a b
```

## class_method_for_replace_1

```Raku
class C { method go() { say "g" } }
my $o = C.new;
$o.go() for 1..2;
```

```stdout
g
g
```

## class_method_multi_replace_1

```Raku
class C { multi method sort(Int $x) { return $x * 10 } }
my $o = C.new;
say $o.sort(4);
```

```stdout
40
```

## class_method_range_replace_4

```Raku
role R { method needed() {...} }
class C does R { method needed() { return 7; } }
 my $c = C.new(); say($c.needed()); 
```

```stdout
7
```

## class_method_say_replace_11

```Raku
class A { method g() { return "A"; } }
class B is A { method g() { return "B+" ~ callsame(); } }
 my $b = B.new(); say($b.g()); 
```

```stdout
B+A
```

## class_method_say_replace_13

```Raku
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { return "B:" ~ $n ~ "/" ~ callwith(99); } }
 my $b = B.new(); say($b.g(5)); 
```

```stdout
B:5/A:99
```

## class_method_say_replace_14

```Raku
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { my $m = $n + 10; return "B:" ~ $n ~ "/" ~ callwith($m); } }
 my $b = B.new(); say($b.g(5)); 
```

```stdout
B:5/A:15
```

## class_method_say_replace_2

```Raku
class Animal { has $.name; }
class Dog is Animal { method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.name()); 
```

```stdout
Rex
```

## class_method_say_replace_23

```Raku
class Engine { method start() { return "vroom"; }; method stop() { return "halt"; } }
class Car { has $.engine handles <start stop>; has $.name; }
 my $e = Engine.new(); my $c = Car.new(engine => $e, name => "tesla"); say($c.start()); say($c.stop()); say($c.name); 
```

```stdout
vroom
halt
tesla
```

## class_method_say_replace_26

```Raku
class Adder { method add($n) { return $n + 100; } }
class Wrap { has $.impl handles <add>; }
 my $a = Adder.new(); my $w = Wrap.new(impl => $a); say($w.add(5)); 
```

```stdout
105
```

## class_method_say_replace_27

```Raku
class Animal { has $.name; }
class Dog is Animal { method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.name); 
```

```stdout
Rex
```

## class_method_say_replace_28

```Raku
class Animal { has $.name; method legs() { return 4; } }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.legs()); 
```

```stdout
4
```

## class_method_say_replace_36

```Raku
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { return "B+" ~ nextsame(); } }
 my $b = B.new(); say($b.g(7)); 
```

```stdout
A:7
```

## class_method_say_replace_4

```Raku
class Animal { has $.legs = 4; }
class Dog is Animal { method describe() { return $.legs; } }
 my $d = Dog.new(); say($d.describe());
```

```stdout
4
```

## class_method_say_replace_40

```Raku
class Base { has $!secret; method peek() { return $!secret; } }
class Derived is Base { }
 my $d = Derived.new(secret => 5); say($d.secret()); 
```

## class_method_say_replace_41

```Raku
class Base { has $!secret; method peek() { return $!secret; } }
class Derived is Base { }
 my $d = Derived.new(secret => 5); say($d.peek()); 
```

```stdout
(Any)
```

## class_method_say_replace_50

```Raku
role Greet { method hello() { return "hi"; } }
class Dog does Greet { has $.name; }
 my $d = Dog.new(name => "Rex"); say($d.hello()); 
```

```stdout
hi
```

## class_method_say_replace_6

```Raku
class Base { has $.id is required; }
class Sub is Base { method who() { return $.id; } }
 my $s = Sub.new(); say($s.who());
```

```stdout

```

## class_method_say_replace_7

```Raku
class Base { has $.id is required; }
class Sub is Base { method who() { return $.id; } }
 my $s = Sub.new(id => 5); say($s.who());
```

```stdout
5
```

## class_method_sub_replace_1

```Raku
class Base { has $.x; method TWEAK() { say("base-tweak"); } }
class Sub is Base { has $.y; method TWEAK() { say("sub-tweak"); } }
 my $s = Sub.new(x => 1, y => 2); 
```

```stdout
base-tweak
sub-tweak
```

## multi_sub_array_1

```Raku
multi sub f($a, *@r) { return "V:" ~ @r.elems; }
multi sub f($a) { return "S"; }
say f(1) ~ "|" ~ f(1,2,3);
```

```stdout
S|V:2
```

## multi_sub_say_3

```Raku
multi sub init(Str:U $x) { say("uninitialized"); }
multi sub init(Str $x) { say("has value: " ~ $x); }
 my $u; init($u); 
```

## class_method_range_replace_5

```Raku
role Need { method act() {...} }
role Give { method act() { return "ok"; } }
class C does Need does Give { }
 my $c = C.new(); say($c.act()); 
```

```stdout
ok
```

## class_method_say_replace_12

```Raku
class A { method g() { return "A"; } }
class B is A { method g() { return "B+" ~ callsame(); } }
class C is B { method g() { return "C+" ~ callsame(); } }
 my $c = C.new(); say($c.g()); 
```

```stdout
C+B+A
```

## class_method_say_replace_24

```Raku
class Engine { method go() { return "GO"; } }
class Vehicle { has $.engine handles <go>; }
class Truck is Vehicle { }
 my $e = Engine.new(); my $t = Truck.new(engine => $e); say($t.go()); 
```

```stdout
GO
```

## class_method_say_replace_25

```Raku
class L { method left() { return "LL"; } }
class R { method right() { return "RR"; } }
class Pair { has $.l handles <left>; has $.r handles <right>; }
 my $ll = L.new(); my $rr = R.new(); my $p = Pair.new(l => $ll, r => $rr); say($p.left()); say($p.right()); 
```

```stdout
LL
RR
```

## class_method_say_replace_32

```Raku
class A { has $.name; }
class B is A { }
class C is B { method tag() { return "C"; } }
 my $c = C.new(name => "Rex"); say($c.name); 
```

```stdout
Rex
```

## ladder__rung08_for_next_in_a_for_over_a_range_continues_with_the_next_element

```Raku
my $s = ""; for 1..4 { next if $_ == 2; $s ~= $_ }; say $s;
my $t = ""; for 1..4 { next if $_ == 2; $t ~= "x" }; say $t;
my $c = 0; for 1..3 { for 1..3 { next if $_ == 2; $c++ } }; say $c;
my $u = ""; for 1..4 { last if $_ == 3; $u ~= $_ }; say $u;
```

```stdout
134
xxx
6
12
```

## class_method_multi_replace_2

```Raku
class Calc {
    multi method add(Int $a) { return $a; }
    multi method add(Int $a, Int $b) { return $a + $b; }
}
 my $c = Calc.new(); say($c.add(5)); say($c.add(3, 4)); 
```

```stdout
5
7
```

## class_method_say_replace_16

```Raku
class A { method greet() { return "A"; } }
class B is A { method greet() { return "B>" ~ callsame(); } }
class C is A { method greet() { return "C>" ~ callsame(); } }
class D is B is C { }
 my $d = D.new(); say($d.greet()); 
```

```stdout
B>C>A
```

## while_say_try_1

```Raku
    my $i = 0;
    try {
        while ($i < 5) { $i = $i + 1; say($i); if ($i == 2) { die('w'); } }
    }; CATCH { say($_); };
    say('after');
```

```stdout
1
2
after
```

## core__rc08_named_flatten

```Raku
sub f(:$a, :$b = 0, *%rest) { "a=$a b=$b rest={%rest.keys.sort}" }
say f(a => 1);
say f(:a(2), :b(3), :c(4));
my %args = a => 9, b => 8;
say f(|%args);
say (1..2).map({ f(a => $_) });
```

```stdout
a=1 b=0 rest=
a=2 b=3 rest=c
a=9 b=8 rest=
(a=1 b=0 rest= a=2 b=0 rest=)
```

## ladder__rung19_block_methcall_grep_and_map_listops

```Raku
for grep { $_ > 2 }, 1..5 -> $v { say $v }
my @g = grep { $_ %% 2 }, 1..8;
say @g;
my @a = 4, 5, 6;
say grep { $_ != 5 }, @a;
say (map { $_ * 10 }, @a).elems;
```

```stdout
3
4
5
[2 4 6 8]
(4 6)
3
```

## class_method_multi_replace_4

```Raku
class Animal { }
class Dog is Animal { }
class Handler {
    multi method greet(Animal $a) { return "an animal"; }
    multi method greet(Dog $d) { return "a dog"; }
}
 my $h = Handler.new(); my $d = Dog.new(); say($h.greet($d)); 
```

```stdout
a dog
```

## core__rc12_sort_reduce_forms

```Raku
my @w = <pear apple fig>;
say @w.sort({ $^a.chars <=> $^b.chars || $^a cmp $^b });
say @w.sort(*.chars);
say @w.sort(-> $a, $b { $b cmp $a });
say @w.map({ .comb.sort({ $^b cmp $^a }).join });
say (1..5).reduce({ $^a * $^b }), " ", (1..5).reduce(-> $a, $b { $a - $b });
say ((1, 2), (3, 4)).map({ .reduce({ $^a + $^b }) });
```

```stdout
(fig pear apple)
(fig pear apple)
(pear fig apple)
(rpea pplea igf)
120 -13
(3 7)
```

## ladder__rung04_arrays_cross_zip_flat_and_unpacking

```Raku
my $k = 0;
for flat(1 .. 3 X 1 .. 2) -> $i, $j { $k += $i * 10 + $j; say "$i $j" }
say $k;
for (1 .. 2 X 1 .. 2) -> ($i, $j) { say "p $i $j" }
for 1..4 -> $a, $b { say "$a,$b" }
my @z = flat((1,2) Z (3,4));
say @z.join(",");
for (1,2 X 3,4) -> ($a, $b) { say "c $a $b" }
for 1 .. 2 X 7 -> ($a, $b) { say "q $a $b" }
```

```stdout
1 1
1 2
2 1
2 2
3 1
3 2
129
p 1 1
p 1 2
p 2 1
p 2 2
1,2
3,4
1,3,2,4
c 1 3
c 1 4
c 2 3
c 2 4
q 1 7
q 2 7
```

## ladder__rung15_blocks_map_grep_first_named_sub_and_n_arity_blocks

```Raku
sub dbl($x) { $x * 2 }
sub odd($x) { $x % 2 }
my @a = 1, 2, 3, 4, 5, 6;
say @a.map(&dbl);
say @a.grep(&odd);
say @a.first(&dbl);
say @a.map(-> $x, $y { $x + $y });
say @a.map({ $^a * $^b });
say @a.map(-> $x, $y, $z { "$x$y$z" }).join(",");
```

```stdout
(2 4 6 8 10 12)
(1 3 5)
1
(3 7 11)
(2 12 30)
123,456
```

## ladder__rung13_classes_inheritance

```Raku
class Animal {
    method speak { return "..." }
    method describe { return "I say " ~ self.speak }
}
class Dog is Animal {
    method speak { return "Woof" }
}
my $d = Dog.new;
say $d.speak;
say $d.describe;
```

```stdout
Woof
I say Woof
```

## ladder__rung16_bool_bool_pick_and_bool_roll_are_a_coin

```Raku
my %s;
%s{Bool.pick}++ for ^200;
say %s.keys.sort;
say Bool.pick ~~ Bool;
say Bool.pick(2).sort;
say Bool.pick(5).elems;
say Bool.roll ~~ Bool;
say Bool.roll(5).elems;
my %r;
%r{$_}++ for Bool.roll(200);
say %r.keys.sort;
```

```stdout
(False True)
True
(False True)
2
True
5
(False True)
```

## sub_for_range_replace_2

```Raku
# rk_range_for.raku — RAKU-BB RK-BB-1: lazy inclusive range `for 1..5 -> $i`
# Drives the shared BB_TO_BY generator via SM_BB_SWITCH(SM_BBSW_RK_GEN).
sub main() {
    my $sum = 0;
    for 1..5 -> $i {
        say($i);
        $sum = $sum + $i;
    }
    say($sum);
}
main();
```

```stdout
1
2
3
4
5
15
```

## builtin_table__bt12_raku_indirect_name

```Raku
my $m = "chars";
say "abcd"."$m"();
$m = "uc";
say "abcd"."$m"();
my $f = &::("uc");
say $f("xyz");
say &::("chars")("hello");
my @names = <flip uc lc>;
for @names -> $n { say "AbC"."$n"() }
sub mysub($x) { "mysub:" ~ $x }
say &::("mysub")("q");
my $s = "mysub";
say &::($s)("r");
```

```stdout
4
ABCD
XYZ
5
CbA
ABC
abc
mysub:q
mysub:r
```

## roast_causes__rc11_a_positional_does_not_index_by_key

```Raku
my $ref = [42];
say (try { $ref<0>; "lived" }) // "died";
say $!.message;
my @a = 1, 2;
say (try { @a{0}; "lived" }) // "died";
say (try { (1, 2)<0>; "lived" }) // "died";
say $!.message;
my $rg = 1..3;
say (try { $rg<a>; "lived" }) // "died";
say $!.message;
my %h = a => 1;
say %h<a>;
say $ref[0];
```

```stdout
died
Type Array does not support associative indexing.
died
died
Type List does not support associative indexing.
died
Type Range does not support associative indexing.
1
42
```

## ladder__rung09_regex_a_smartmatch_against_a_code_value_held_in_a_hash_element_or_a_variable_calls_it

```Raku
my %h = a => -> $p { $p > 3 }, b => 5, c => /x/;
say 7 ~~ %h<a>;
say 2 ~~ %h<a>;
say 5 ~~ %h<b>;
say 6 ~~ %h<b>;
say ("axb" ~~ %h<c>).so;
my $f = -> $x { $x eq "k" };
say "k" ~~ $f;
say "z" ~~ $f;
my $r = /q/;
say ("aqb" ~~ $r).so;
my $n = 5;
say 5 ~~ $n;
my @a = -> $x { $x > 0 }, 9;
say 1 ~~ @a[0];
say 9 ~~ @a[1];
```

```stdout
True
False
True
False
True
True
False
True
True
True
True
```

## scrip_test_rk_unique_sum

```Raku
# rk_unique_sum.raku — RK-BB-5.1: unique() and sum() as list Seq consumers
sub main() {
    # unique: dedup preserving first occurrence
    for unique(1, 2, 2, 3, 3, 3, 1) -> $i { say($i); }

    # unique into an array, then iterate (strings)
    my @u = unique('a', 'b', 'a', 'c', 'b');
    for @u -> $x { say($x); }

    # sum: integer fold
    say(sum(1, 2, 3, 4, 5));

    # sum: real fold (mixed int/real promotes to real)
    say(sum(1.5, 2.5, 3));
}
main();
```

```stdout
1
2
3
a
b
c
15
7
```

## ladder__rung13_classes_a_typed_declaration_with_dot_assign_calls_the_type_and_a_colon_variable_pair_is_a_named_pair

```Raku
class A { has $.x }
my A $a .= new(x => 3);
say $a.x;
class B { has $.v; method new($v) { self.bless(:$v) } }
my B $b .= new(7);
say $b.v;
class C { method mk { C.new } }
my C $c .= mk;
say $c.^name;
sub f(:$v) { say $v }
my $v = 3;
f(:$v);
my %h = :$v;
say %h;
my $kk = 9;
my $p = :$kk;
say $p;
```

```stdout
3
7
C
3
{v => 3}
kk => 9
```

## sub_for_array_1

```Raku
# rk_reverse.raku — RK-BB-5.0: reverse() as an eager-drain Seq consumer
sub main() {
    # reverse a literal list, iterated directly
    for reverse(3, 5, 7) -> $i { say($i); }

    # reverse into an array, then iterate
    my @r = reverse(10, 20, 30, 40);
    for @r -> $x { say($x); }

    # reverse a single-element list is a no-op
    for reverse(99) -> $y { say($y); }

    # reverse of strings preserves element order reversal
    my @w = reverse('apple', 'banana', 'cherry');
    for @w -> $s { say($s); }
}
main();
```

```stdout
7
5
3
40
30
20
10
99
cherry
banana
apple
```

## ladder__rung03_strings_the_q_family_quotes_build_their_text

```Raku
my $x = 7;
say q[abc];
say q["];
say q[nested [brackets] stay];
say q[esc \] and \\ and \n];
say qq[x=$x sum={1+1} tab:\there];
say qq{braces {$x * 2} too};
say q<angle $x>;
say Q[raw \n $x {1+1}];
say qq|pipe $x|;
say q«unicode»;
say q[a] ~ qq[$x] ~ Q[c];
say qw<a b c>.elems;
my @w = qw[x y z];
say @w.join("-");
for qw{p q} { print $_, " " }
say "";
my $sep = $x > 5 ?? q["] !! q['];
say $sep;
```

```stdout
abc
"
nested [brackets] stay
esc ] and \ and \n
x=7 sum=2 tab:	here
braces {7 * 2} too
angle $x
raw \n $x {1+1}
pipe 7
unicode
a7c
3
x-y-z
p q 
"
```

## ladder__rung13_classes_a_dollar_bang_or_dollar_dot_attribute_interpolates_in_a_string

```Raku
class Counter {
    has $.count = 5;
    has $.step-size = 2;
    has Str $.label is rw = "ticks";
    method plain { "$!count" }
    method accessor { "$.count" }
    method both { "count=$!count step=$!step-size;" }
    method labelled { "$!label: $.count by $.step-size" }
    method escaped { "\$!count is " ~ $!count }
}
my $c = Counter.new;
say $c.plain;
say $c.accessor;
say $c.both;
$c.label = "total";
say $c.labelled;
say $c.escaped;
try { die "oops" };
say "error variable: $!";
```

```stdout
5
5
count=5 step=2;
total: 5 by 2
$!count is 5
error variable: oops
```

## ladder__rung09_regex_substitution_and_transliteration_agree_with_rakudo

```Raku
my $s = "hello world";
$s ~~ s/world/there/;
say $s;
$_ = "aXbXc"; s/X/-/; say $_;
$_ = "aXbXc"; s:g/X/-/; say $_;
$_ = "a1b22c"; s:g/(\d+)/<$0>/; say $_;
$_ = "abc"; my $t = S/b/B/; say $t, " ", $_;
$_ = "aaa"; s:2nd/a/b/; say $_;
$_ = "foo bar"; s/(\w+) (\w+)/$1 $0/; say $_;
my $str = "x1y2"; $str ~~ s:g/\d/{ $/ * 2 }/; say $str;
my $u = "abc";
if $u ~~ s/b/X/ { say "subst ok: $u" }
if $u ~~ s/zzz/X/ { say "no" } else { say "no subst" }
$_ = "hello"; tr/a..z/A..Z/; say $_;
$_ = "hello"; say TR/el/ip/; say $_;
$_ = "hello"; say TR:d/el//;
$_ = "hello"; say TR:c/el/X/;
$_ = "aabbcc"; say TR:s/a..c/a..c/;
$_ = "hello"; my $n = TR/lo/x/; say $n;
my $v = "hello"; $v ~~ tr/l/L/; say $v;
```

```stdout
hello there
a-bXc
a-b-c
a<1>b<22>c
aBc abc
aba
o fo bar
x2y4
subst ok: aXc
no subst
HELLO
hippo
hello
ho
XellX
abc
hexxx
heLLo
```

## ladder__rung13_classes_an_attribute_array_element_is_assigned_in_place_inside_a_method_and_its_loops

```Raku
class F {
    has @!nb;
    has @!g;
    method go {
        @!nb[0] = 5;
        @!nb[2] = 7;
        say @!nb;
        my $c = 0;
        for 1, 2 { $c++; @!nb[1] = $c; }
        say $c;
        say @!nb;
        @!g = [1, 2], [3, 4];
        @!g[1][0] = 30;
        say @!g;
        for ^2 -> $i { @!g[$i][1] = $i * 10 }
        say @!g;
        say "done";
    }
}
F.new.go;
```

```stdout
[5 (Any) 7]
2
[5 2 7]
[[1 2] [30 4]]
[[1 0] [30 10]]
done
```

## ladder__rung01_variables_a_typed_variable_that_a_block_or_closure_changes_is_the_same_variable

```Raku
use Test;
plan 5;
my Int $n = 5;
lives-ok { $n++ }, "a block increments a typed variable";
is $n, 6, "and the outer variable changed";
my Str $s = "a";
my $g = { $s ~= "b" };
$g();
$g();
is $s, "abb", "a closure appends to a typed Str";
my Int $t;
my $h = { $t = 4 };
$h();
say $t;
my $e = try { my $z = { $t = "bad" }; $z(); "no" } // "died";
say $e;
class Foo { has $.x is rw = 1 }
my Foo $foo .= new;
dies-ok { $foo.nope }, "a missing method dies";
lives-ok { $foo.x++ }, "an rw accessor increments inside a block";
say $foo.x;
```

```stdout
1..5
ok 1 - a block increments a typed variable
ok 2 - and the outer variable changed
ok 3 - a closure appends to a typed Str
4
died
ok 4 - a missing method dies
ok 5 - an rw accessor increments inside a block
2
```

## ladder__rung04_arrays_a_bound_scalar_and_a_bound_element_share_one_container_with_what_they_bind

```Raku
my $a = 1;
my $b := $a;
$b = 4;
say $a;
$a = 7;
say $b;
my @g = [1, 2], [3, 4], [5, 6];
my $n := @g[1][0];
@g[1][0] = 30;
say $n;
$n = 31;
say @g[1];
my @nb;
for ^3 -> $i {
    my $c := @g[$i][1];
    @nb[$i] := $c if $c > 2;
}
@g[2][1] = 60;
@g[1][1] = 40;
say @nb[1], " ", @nb[2], " ", @nb.elems;
say (@nb.any === 40) ?? "bound" !! "copied";
```

```stdout
4
7
30
[31 4]
40 60 3
bound
```

## benchmark_rc-forest-fire-stringify

```Raku
sub MAIN($w = 20, $h = 20, $steps = 5) {
    my $RED   = "\e[1;31m";
    my $GREEN = "\e[0;32m";
    my $CLEAR = "\e[0m";

    enum Cell-State <Empty Tree Burning>;
    my @show  = '  ', $GREEN ~ '木' ~ $CLEAR, $RED ~ '火' ~ $CLEAR;
    my @grid  = [ flat (Empty, Tree, Burning) xx $w ] xx $h;

    sub stringify(@grid) {
        join '', gather for ^@grid -> $i {
            take @show[@grid[$i].list], "\n";
        }
    }

    my $chars = 0;
    for ^$steps {
        my $grid = stringify(@grid);
        $chars += $grid.chars;
    }
    say $chars;
}
```

```stdout
52100
```

## class_method_replace_1

```Raku
# RK-26: basic OO — class / method / new / field access

class Point {
    has $.x;
    has $.y;
    method sum() { return $!x + $!y; }
    method scale($factor) { return ($!x + $!y) * $factor; }
}

my $p = Point.new(x => 3, y => 4);
say $p.x;
say $p.y;
say $p.sum();
say $p.scale(2);

class Dog {
    has $.name;
    has $.age;
    method greet() { return "Woof from " ~ $!name; }
}

my $d = Dog.new(name => "Rex", age => 5);
say $d.name;
say $d.greet();
```

```stdout
3
4
7
14
Rex
Woof from Rex
```

## sub_for_array_replace_1

```Raku
# rk_for_array.raku — RK-16: for @arr -> $x real array iteration
sub main() {
    my @nums = '';
    push(@nums, 10);
    push(@nums, 20);
    push(@nums, 30);

    for @nums -> $x {
        say($x);
    }

    my $sum = 0;
    for @nums -> $n {
        $sum = $sum + $n;
    }
    say($sum);

    my @words = '';
    push(@words, 'alpha');
    push(@words, 'beta');
    push(@words, 'gamma');
    for @words -> $w {
        say($w);
    }
}
main();
```

```stdout

10
20
30
60

alpha
beta
gamma
```

## ladder__rung04_arrays_a_caret_range_keeps_its_endpoints_numifies_and_smartmatches_as_rakudo_does

```Raku
say +(6..^6.1);
say (1..^5.5).raku;
say +(1..^5);
say (1..^5).elems;
say (1^..5).raku;
say +(1^..^5);
say (1..^5).excludes-max;
say (1^..5).excludes-min;
say (2.5..^5).list;
say (0..^5).raku;
my $r = 2..^7;
say $r;
say $r.min, " ", $r.max;
say (2..4 ~~ 1..^4);
say (2^..3 ~~ 2^..4);
say (2^..^3 ~~ 2..3);
say (2..3 ~~ 1..4);
say (1..Inf ~~ 1/0);
say (2..4 ~~ 3);
say (5..6 ~~ 5);
say 4.5 ~~ 1..^5;
say 5 ~~ 1..^5;
say 1 ~~ 1^..5;
say ('a'^..'d').list;
say ('2'..^'4').list;
my @a = 10, 20, 30, 40;
say @a[1..^3];
say @a[0^..2];
say [+] 1..^5;
```

```stdout
1
1..^5.5
4
4
1^..5
3
True
True
(2.5 3.5 4.5)
^5
2..^7
2 7
False
True
True
True
True
True
False
True
False
False
(b c d)
(2 3)
(20 30)
(20 30)
10
```

## scrip_test_rk_map_grep_sort24

```Raku
# rk_map_grep_sort24.raku — RK-24: map/grep/sort list ops
sub main() {
    my @nums = '';
    push(@nums, 1); push(@nums, 2); push(@nums, 3);
    push(@nums, 4); push(@nums, 5);

    # map: double each element
    my @doubled = map { $_ * 2 } @nums;
    for @doubled -> $x { say($x); }

    # grep: keep evens
    my @evens = grep { $_ % 2 == 0 } @nums;
    for @evens -> $x { say($x); }

    # sort: lexicographic strings
    my @words = '';
    push(@words, 'banana'); push(@words, 'apple'); push(@words, 'cherry');
    my @sorted = sort @words;
    for @sorted -> $w { say($w); }

    # sort: numeric
    my @unsorted = '';
    push(@unsorted, 3); push(@unsorted, 1); push(@unsorted, 4);
    push(@unsorted, 1); push(@unsorted, 5); push(@unsorted, 9);
    push(@unsorted, 2); push(@unsorted, 6);
    my @nsorted = sort @unsorted;
    for @nsorted -> $n { say($n); }
}
main();
```

## ladder__rung13_classes_can_returns_invokable_methods_found_up_the_parents_and_knows_a_builtin_methods_name

```Raku
class Dog {
    method bark { "bow" }
}
class Puppy is Dog {
    method bark { "yap" }
}
my $dog = Dog.new;
my $pup = Puppy.new;
my $meth = $dog.can("bark");
say $meth.elems;
say $meth[0]($dog);
$meth = Dog.can("bark");
say $meth[0](Dog);
my $found = "";
for $dog.can("bark") -> $m { $found ~= $m($dog); }
say $found;
my $n = 0;
for $pup.can("bark") -> $m { $n++; $found ~= $m($pup); }
say $n;
say $found;
say so $dog.can("bark");
say so $dog.can("nope");
say $pup.can("bark").elems;
say $dog.^can("bark").elems;
say $pup.^can("bark").elems;
say $dog.^can("w00f").elems;
say so "foo".can("split");
say so "foo".can("hazcheezburger");
say so Str.can("split");
say so "bar".^can("split");
```

```stdout
1
bow
bow
bow
2
bowyapbow
True
False
2
1
2
0
True
False
True
True
```

## benchmark_point_class_add2

```Raku
# Point Class Benchmarks

# Here's the runtime for the point class in seconds (YMMV). Lower is better:
# 0.22   Lua table      LuaJIT 2.0 git HEAD -O+sink
# 420+   Perl6 class    Rakudo/MoarVM

# see point_class_add_README (in README.md) for more information
# SCRIP corpus import: iteration count reduced from upstream's 100_000_000, and
# 'use nqp;' added -- upstream no longer compiles on current Rakudo without it
# (see README.md)

use v6;
use nqp;

class Point {
    has num $.x;
    has num $.y;
    method new(num $x, num $y) {
        my Point $self := nqp::create(self);
        nqp::bindattr_n($self, Point, '$!x', $x);
        nqp::bindattr_n($self, Point, '$!y', $y);

        $self;
    }

    method add(Point $b) {
        Point.new($!x + $b.x, $!y + $b.y);
    }
}
my int $i = 0;
my Point $a = Point.new(1.5e0, 2.5e0);
my Point $b = Point.new(3.25e0, 4.75e0);

while $i < 1000000 {
    $a = $a.add($b).add($b);
    $i = $i + 1;
}

print $a.x, ' ', $a.y;
```

```stdout
6500001.5 9500002.5
```

## benchmark_send-more-money-loops

```Raku
# ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
# The bracket encloses the loop nest -- the WORK. The single `say` that fires once inside it is left where
# upstream put it (moving it would change the algorithm); one line of output inside a 10^8-comparison
# search is not a measurable share. Timestamps go to STDERR (note) so stdout stays byte-comparable and
# send-more-money-loops.ref verifies unchanged. wall_us()/wall_ms() are SCRIP builtins; Rakudo gets them
# from prelude_rakudo.rakumod via -M, so this file is byte-identical on every engine.
my $t0 = wall_us(); my $m0 = wall_ms();
my int $s = -1;
while ++$s <= 9 {
    next if $s == 0;

    my int $e = -1;
    while ++$e <= 9 {
        next if $e == $s;

        my int $n = -1;
        while ++$n <= 9 {
            next if $n == $s;
            next if $n == $e;

            my int $d = -1;
            while ++$d <= 9 {
                next if $d == $s;
                next if $d == $e;
                next if $d == $n;

                my int $send = $s*1000 + $e*100 + $n*10 + $d;

                my int $m = -1;
                while ++$m <= 9 {
                    next if $m == 0;
                    next if $m == $s;
                    next if $m == $e;
                    next if $m == $n;
                    next if $m == $d;

                    my int $o = -1;
                    while ++$o <= 9 {
                        next if $o == $s;
                        next if $o == $e;
                        next if $o == $n;
                        next if $o == $d;
                        next if $o == $m;

                        my int $r = -1;
                        while ++$r <= 9 {
                            next if $r == $s;
                            next if $r == $e;
                            next if $r == $n;
                            next if $r == $d;
                            next if $r == $m;
                            next if $r == $o;

                            my int $more = $m*1000 + $o*100 + $r*10 + $e;

                            my int $y = -1;
                            while ++$y <= 9 {
                                next if $y == $s;
                                next if $y == $e;
                                next if $y == $n;
                                next if $y == $d;
                                next if $y == $m;
                                next if $y == $o;
                                next if $y == $r;

                                my int $money =
                                    $m*10000 + $o*1000 + $n*100 + $e*10 + $y;
                                next unless $send + $more == $money;

                                say "$send + $more == $money";
                            }
                        }
                    }
                }
            }
        }
    }
}
my $t1 = wall_us(); my $m1 = wall_ms();
note("BENCH kernel=send-more-money-loops work_us=" ~ ($t1 - $t0) ~ " work_ms=" ~ ($m1 - $m0));
```

```stdout
9567 + 1085 == 10652
```

## class_method_array_replace_1

```Raku
class Bag { has @.items; method count() { my @c = @.items; return @c.elems; } }
 my @v = 1, 2, 3, 4; my $b = Bag.new(items => @v); say($b.count()); 
```

```stdout
4
```

## class_method_say_replace_22

```Raku
class Point { has $.x; has $.y; method gist() { return "Point(" ~ $.x ~ ", " ~ $.y ~ ")"; } }
 my $p = Point.new(x => 3, y => 4); say($p); 
```

```stdout
Point(3, 4)
```

## class_method_say_replace_43

```Raku
class Mix { has $.pub; has $!prv; method both() { return $.pub ~ "-" ~ $!prv; } }
 my $m = Mix.new(pub => "A", prv => "B"); say($m.both()); 
```

```stdout
A-
```

## class_method_say_replace_44

```Raku
class Mix { has $.pub; has $!prv; method both() { return $.pub ~ "-" ~ $!prv; } }
 my $m = Mix.new(pub => "A", prv => "B"); say($m.pub); 
```

```stdout
A
```

## class_method_say_replace_46

```Raku
class P { has $.x; method gist() { return "G" ~ $.x; }; method Str() { return "S" ~ $.x; }; method raku() { return "R" ~ $.x; } }
 my $p = P.new(x => 7); say($p.gist()); say($p.Str()); say($p.raku()); 
```

```stdout
G7
S7
R7
```

## class_method_say_replace_53

```Raku
class Point { has $.x; method Str() { return "STR:" ~ $.x; } }
 my $p = Point.new(x => 3); say($p ~ "!"); 
```

```stdout
STR:3!
```

## class_method_say_replace_54

```Raku
class P { has $.x; method Str() { return "S" ~ $.x; } }
 my $p = P.new(x => 9); say("val=$p"); 
```

```stdout
val=S9
```

## ladder__rung01_variables_temp_restores_the_old_value_at_scope_exit

```Raku
our $x = 5; sub g { $x }; sub f { temp $x = 100; g() }; my @a = 1, 2;
say f(), " ", $x; for 1..2 { temp $x = $_ * 10; print $x, " " }; say $x; { temp @a = 9; say @a.elems }; say @a.elems;
```

```stdout
100 5
10 20 5
1
2
```

## ladder__rung07_subs_a_sub_reading_its_topic_keeps_the_default_of_its_typed_parameter

```Raku
sub f(Int $w = 31) { for 1..3 { return $_ if $_ == 2 }; $w }
say f();
```

```stdout
2
```

## class_method_for_replace_2

```Raku
class Ctr { has $.n; method emit($x) { say $x } }
my $c = Ctr.new(n => 0);
for 1..3 -> $i { $c.emit($i) }
```

```stdout
1
2
3
```

## class_method_for_replace_3

```Raku
class Box { has $.v; method show() { say $!v } }
my $b = Box.new(v => 7);
for 1..2 { $b.show() }
```

```stdout
7
7
```

## class_method_for_replace_4

```Raku
class Box2 { has $.v; method show() { say $!v } }
my $b = Box2.new(v => 9);
for 1..2 { $b.show(); }
```

```stdout
9
9
```

## class_method_range_replace_1

```Raku
class Animal { has $.name; method speak() { return "..."; } }
class Dog is Animal { method speak() { return "Woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.speak()); 
```

```stdout
Woof
```

## class_method_range_replace_2

```Raku
class Animal { has $.name; method speak() { return "..."; } }
class Dog is Animal { has $.breed; }
 my $d = Dog.new(name => "Rex", breed => "Lab"); say($d.^attributes); 
```

```stdout
(Mu $!breed Mu $!name)
```

## class_method_range_replace_3

```Raku
class Animal { has $.name; method speak() { return "..."; }; method eat() { return "om"; } }
class Dog is Animal { has $.breed; method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex", breed => "Lab"); say($d.^methods); 
```

```stdout
(bark breed POPULATE speak eat name POPULATE POPULATE)
```

## class_method_say_replace_21

```Raku
class Animal { has $.name; method gist() { return "DOG:" ~ $.name; } }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d); 
```

```stdout
DOG:Rex
```

## class_method_multi_replace_5

```Raku
class Printer {
    multi method show(Int $x) { return "int:" ~ $x; }
    multi method show(Str $s) { return "str:" ~ $s; }
}
 my $p = Printer.new(); say($p.show(42)); say($p.show("hi")); 
```

```stdout
int:42
str:hi
```

## core__rc13_callable_smartmatch

```Raku
my @a = 1..6;
say @a.grep({ $_ ~~ { $_ %% 3 } });
say @a.first({ $_ > 4 });
say @a.grep(-> $x { $x ~~ -> $y { $y > 2 } });
say @a.map({ $_ ~~ { $_ > 3 } ?? "y" !! "n" }).join;
say "abc" ~~ { .chars == 3 };
```

```stdout
(3 6)
5
(3 4 5 6)
nnnyyy
True
```

## ladder__rung04_arrays_join_flattens_its_list_arguments_as_a_slurpy_and_keeps_array_elements_itemized

```Raku
my @s = <a b c>;
say join '', gather for ^2 -> $i { take @s[0, 1], "\n" };
say join('-', (1, 2), (3, (4, 5)));
say join '-', [1, 2], 3;
my @a = (1, 2), (3, 4);
say join '|', @a;
say ((1, 2), (3, 4)).join('|');
say join ',', (1..3), 4;
```

```stdout
ab
ab

1-2-3-4-5
1-2-3
1 2|3 4
1 2|3 4
1,2,3,4
```

## ladder__rung07_subs_an_array_pattern_parameter_binds_its_elements_for_a_sub_and_a_multi

```Raku
sub uno ([$a, $b?]) { "$a|$b.gist()" }
say uno([1, 2]);
say uno([1]);
sub tri ([$h, *@t]) { "$h:" ~ @t.join(",") }
say tri([1, 2, 3]);
multi sub bar ([$a, $b?]) { return "$a|$b.gist()" }
multi sub baz (*[$a, $b, $c?]) { return "$a+$b+$c" }
say bar([3, 4]);
say baz(5, 6, 7);
```

```stdout
1|2
1|(Any)
1:2,3
3|4
5+6+7
```

## ladder__rung18_two_arg_block_do_for_collects_and_await_is_its_value

```Raku
say [+] do for ^3 { 5 };
say [+] do for 1..3 { $_ * 10 };
my @r = do for 1..3 { $_ * 10 };
say @r.join(",");
say (do for 1..3 { $_ * 2 }).join(",");
my $p = start { 42 };
say await $p;
say [+] await do for ^2 { start { 21 } };
say await(start { 7 }, start { 8 }).join(",");
```

```stdout
15
60
10,20,30
2,4,6
42
42
7,8
```

## sub_when_for_replace_1

```Raku
# rk_for_array_simple.raku — RK-BB-3a probe: iterate Icon-list (DT_DATA) via `for @arr -> $v`.
# Stripped-down precursor to rk_map_grep_sort24; flips green when the BB_ITERATE
# polymorphic substrate (DT_DATA-list branch) lands.
sub main() {
    my @x = '';
    push(@x, 10); push(@x, 20); push(@x, 30);
    for @x -> $v { say($v); }
}
main();
```

```stdout

10
20
30
```

## ladder__rung14_roles_a_role_declares_regexes_and_attributes_beside_methods

```Raku
role Greeter {
    has $.greeting = 'hello';
    rule shout { <.ws> 'hey' }
    token word { \w+ }
    method hi { $.greeting ~ ' from the role' }
}
class Bar does Greeter { }
my $b = Bar.new;
say $b.hi;
say $b.greeting;
```

```stdout
hello from the role
hello
```

## ladder__rung15_blocks_a_closure_in_a_sub_reads_an_enum_value_and_a_constant_that_sub_declares

```Raku
sub cells() {
    enum State <Empty Tree Burning>;
    constant K = 10;
    constant $base = 100;
    my $c = { Burning + K };
    say $c();
    say (^3).map({ $base + Tree + $_ }).join(",");
    my @g = [ flat (Empty, Tree) xx 2 ] xx 2;
    say @g.elems;
    say (^2).grep({ $_ == Tree }).elems;
}
cells();
```

```stdout
12
101,102,103
2
1
```

## ladder__rung19_block_methcall_sort_by_a_one_arg_key_block_past_64_elements

```Raku
my @a = 3, 1, 4, 1, 5, 9, 2, 6;
say @a.sort({ -$_ });
say @a.sort({ $_ % 3 });
my @w = <pear fig apple kiwi banana date>;
say @w.sort({ .chars });
say @w.sort({ .substr(1, 1) });
sub rev($s) { $s.flip }
say @w.sort(&rev);
my @b = (1..200).map({ ($_ * 37) % 101 });
say @b.sort({ -$_ }).elems;
say ().sort({ $_ });
say @a.sort({ $^b <=> $^a });
```

```stdout
(9 6 5 4 3 2 1 1)
(3 9 6 1 4 1 5 2)
(fig pear kiwi date apple banana)
(banana date pear fig kiwi apple)
(banana apple date fig kiwi pear)
200
()
(9 6 5 4 3 2 1 1)
```

## sub_for_while_replace_1

```Raku
# rk_forloop.raku — for RANGE -> $var loop
sub main() {
    my $sum = 0;
    my $i = 1;
    while ($i <= 5) {
        say($i);
        $sum = $sum + $i;
        $i = $i + 1;
    }
    say($sum);
}
main();
```

```stdout
1
2
3
4
5
15
```

## ladder__rung07_subs_an_infix_multi_on_objects_is_entered_from_the_relop_boxes_in_value_and_condition_context

```Raku
class Vec { has $.x; has $.y; }
multi sub infix:<==>(Vec $a, Vec $b) { $a.x == $b.x && $a.y == $b.y }
my $p = Vec.new(x => 1, y => 2);
my $q = Vec.new(x => 10, y => 20);
say $p == $q;
say $p == Vec.new(x => 1, y => 2);
if $p == $q { say "same" } else { say "differ" }
class Box { has $.n; }
multi sub infix:«<»(Box $a, Box $b) { $a.n < $b.n }
say Box.new(n => 3) < Box.new(n => 7);
say Box.new(n => 9) < Box.new(n => 7);
say 2 < 3;
say "end";
```

```stdout
False
True
differ
True
False
True
end
```

## sub_for_loop_replace_1

```Raku
# rk_for_array_underscore.raku — RK-BB-3b/c diagnostic probe.
# Hand-desugared map-equivalent: does $_ bind correctly under `for @arr -> $_`?
# If this passes, the bug is isolated to lower_raku_map_or_grep's divergence
# from the for-loop+push pattern (hypothesis a or b in handoff).
# If this also fails, $_ itself is broken independent of map/grep.
sub main() {
    my @nums = '';
    push(@nums, 1); push(@nums, 2); push(@nums, 3);
    my @r = '';
    for @nums -> $_ { push(@r, $_ * 2); }
    for @r -> $x { say($x); }
}
main();
```

```stdout

0
2
4
6
```

## sub_for_range_replace_1

```Raku
# rk_paren_array.raku — RK-BB-5.4b: parenthesized array literal `my @a = (e1, e2, ...)`
# Initializer-only paren-list (mirrors the 5.3 bare comma-list): net-zero new conflicts.
# Single-element paren stays scalar; bare comma-list still works alongside.
sub main() {
    my @a = (1, 2, 3);
    for @a -> $x { say($x); }
    my @t = (10, 20, 30);
    say(@t.sum);
    say(@t.elems);
    my @bare = 7, 8;
    say(@bare.sum);
    my $s = (42);
    say($s);
}
main();
```

```stdout
1
2
3
60
3
15
42
```

## class_method_say_replace_15

```Raku
class Point {
    has $.x;
    has $.y;
    method sum() { return $!x + $!y; }
    method scale($factor) { return ($!x + $!y) * $factor; }
}
class Dog {
    has $.name;
    has $.age;
    method greet() { return "Woof from " ~ $!name; }
}

    my $p = Point.new(x => 3, y => 4);
    say($p.x);
    say($p.y);
    say($p.sum());
    say($p.scale(2));
    my $d = Dog.new(name => "Rex", age => 5);
    say($d.name);
    say($d.greet());
```

```stdout
3
4
7
14
Rex
Woof from Rex
```

## scrip_test_rk_seq_consumers_arr

```Raku
# rk_seq_consumers_arr.raku — RK-BB-5.x: reverse/unique/sum/join on @array args
sub main() {
    my @a = "";
    push(@a, 3); push(@a, 1); push(@a, 2); push(@a, 1);

    # reverse an array variable
    my @r = reverse(@a);
    for @r -> $i { say($i); }

    # unique an array variable
    my @u = unique(@a);
    for @u -> $x { say($x); }

    # sum an array variable
    say(sum(@a));

    # join an array variable
    say(join("-", @a));
}
main();
```

```stdout
1
2
1
3


3
1
2
7
-3-1-2-1
```

## benchmark_rc-9-billion-names

```Raku
my @todo = $[1];
my @sums = 0;
sub nextrow($n) {
    for +@todo .. $n -> $l {
        @sums[$l] = 0;
        # print $l,"\r" if $l < $n;
        my $r = [];
        for reverse ^$l -> $x {
            my @x := @todo[$x];
            if @x {
                $r.push: @sums[$x] += @x.shift;
            }
            else {
                $r.push: @sums[$x];
            }
        }
        @todo.push($r);
    }
    @todo[$n];
}

my $n = 15;
say $n, "\t", [+] nextrow($n)[];
```

```stdout
15	176
```

## scrip_test_rk_subs

```Raku
# rk_subs.raku — sub definitions, single/multi params, return values
sub double($n) {
    return $n * 2;
}
sub greet($name) {
    say('hello ' ~ $name);
}
sub add($a, $b) {
    return $a + $b;
}
sub classify($n) {
    if ($n < 0)  { return 'negative'; }
    if ($n == 0) { return 'zero';     }
    return 'positive';
}
sub main() {
    say(double(7));
    greet('raku');
    say(add(3, 4));
    say(classify(5));
    say(classify(0));
    say(classify(-1));
}
main();
```

```stdout
14
hello raku
7
positive
zero
negative
```

## method_sub_for_replace_1

```Raku
# rk_listmeth.raku — RK-BB-5.4a: list-method postfix forms .reverse/.unique/.sum/.elems/.head(N)/.tail(N)
# Scalar-returning methods (.elems/.sum) print directly; list-returning methods are assigned to an
# array then iterated, giving stable one-element-per-line output the .expected file can encode.
sub main() {
    my @a = 3, 1, 2;
    say(@a.elems);
    my @r = @a.reverse;
    for @r -> $x { say($x); }
    my @h = @a.head(2);
    for @h -> $y { say($y); }
    my @t = @a.tail(2);
    for @t -> $z { say($z); }
    my @h1 = @a.head;
    for @h1 -> $p { say($p); }
    my @t1 = @a.tail;
    for @t1 -> $q { say($q); }
    my @b = 5, 5, 7, 7, 9;
    my @u = @b.unique;
    for @u -> $w { say($w); }
    say(@b.sum);
    say("==");
    for @a.reverse -> $r { say($r); }
    for @a.head(2) -> $hh { say($hh); }
}
main();
```

```stdout
3
2
1
3
3
1
1
2
3
2
5
7
9
33
==
2
1
3
3
1
```

## ladder__rung02_arithmetic_power_in_every_right_hand_side_position

```Raku
my $x = 3;
my $y;
$y = $x ** 3;
say $y;
my $t = 1 + $x ** 2;
say $t;
my $u = $x ** 2 ** 2;
say $u;
my @a;
@a[0] = $x ** 2;
say @a[0];
my %h;
%h<k> = $x ** 4;
say %h<k>;
my $c = $x > 2 ?? $x ** 2 !! $x ** 3;
say $c;
sub p($v) { return $v ** 3 }
say p(2);
sub q2($v) { my $r; $r = $v ** 2; $r }
say q2(5);
my $i = 0;
my $acc = 0;
while $i < 4 { $acc = $acc + 2 ** $i; $i++ }
say $acc;
my $neg = -$x ** 2;
say $neg;
```

```stdout
27
10
81
9
81
9
8
25
15
-9
```

## sub_junction_smartmatch_1

```Raku
# rk_re33.raku — RK-33: NFA simulation / matching gate

sub main() {
    # \d+ — digit sequence
    if ('abc123' ~~ /\d+/) { say('digit match ok'); } else { say('FAIL digit'); }
    if ('abc' ~~ /\d+/)    { say('FAIL no digit'); } else { say('no digit ok'); }

    # [a-z]+ — lowercase word
    if ('hello' ~~ /<[a..z]>+/) { say('lower match ok'); } else { say('FAIL lower'); }
    if ('123' ~~ /<[a..z]>+/)   { say('FAIL no lower'); } else { say('no lower ok'); }

    # a|b — alternation
    if ('cat' ~~ /a|b/) { say('alt a ok'); } else { say('FAIL alt a'); }
    if ('dog' ~~ /a|b/) { say('FAIL alt b'); } else { say('no alt ok'); }

    # .* — any (unanchored, always matches empty)
    if ('' ~~ /.*/)    { say('dotstar empty ok'); } else { say('FAIL dotstar'); }
    if ('xyz' ~~ /.*/) { say('dotstar str ok');   } else { say('FAIL dotstar str'); }

    # ^x$ — anchored exact match
    if ('x' ~~ /^x$/)  { say('anchor ok'); }    else { say('FAIL anchor'); }
    if ('xy' ~~ /^x$/) { say('FAIL anchor long'); } else { say('anchor long ok'); }
    if ('' ~~ /^x$/)   { say('FAIL anchor empty'); } else { say('anchor empty ok'); }

    say('rk_re33 ok');
}
main();
```

```stdout
digit match ok
no digit ok
lower match ok
no lower ok
alt a ok
no alt ok
dotstar empty ok
dotstar str ok
anchor ok
anchor long ok
anchor empty ok
rk_re33 ok
```

## ladder__rung12_exceptions_fail_returns_a_failure_that_is_undefined_handled_by_its_methods_and_thrown_when_sunk_and_shift_and_pop_of_an_empty_array_return_one

```Raku
use MONKEY-SEE-NO-EVAL;
sub f { fail "boom" }
sub g { fail X::AdHoc.new(payload => "custom") }
sub h { fail }
my $a = f();
say $a.WHAT.raku, " ", $a.defined, " ", $a.handled;
say $a.exception.^name, " ", $a.exception.message;
my $b = f();
say $b.Bool, " ", $b.handled;
my $c = f();
say $c.so, " ", ($c // "dor"), " ", ($c.defined ?? "def" !! "undef");
say g().exception.message, " ", h().exception.message;
say f() ~~ Failure;
my $s = try { f().sink; "no" };
say $s // "sink threw: " ~ $!.message;
my $w = try { f() };
say $w.defined, " ", $!.message;
my @e;
say @e.shift.WHAT.raku, " ", @e.pop.WHAT.raku, " ", shift(@e).WHAT.raku;
say @e.shift.exception.^name, ": ", @e.pop.exception.message;
say (@e.shift // "dflt");
my @n = 1, 2, 3, 4;
say @n.shift, " ", @n.pop, " ", @n.elems;
my $x = try { EVAL 'shift(@n, 10)'; 1 };
say $x.defined ?? "no die" !! "died";
my $y = try { EVAL '@n.pop(10)'; 1 };
say $y.defined ?? "no die" !! "died";
say @n.elems;
say "end";
```

```stdout
Failure False True
X::AdHoc boom
False True
False dor undef
custom Failed
True
sink threw: boom
False boom
Failure Failure Failure
X::Cannot::Empty: Cannot pop from an empty Array
dflt
1 4 2
died
died
2
end
```

## ladder__rung01_variables_a_package_variable_is_declared_with_our_and_read_by_its_qualified_name

```Raku
package A {
    our $x = 5;
    our @a = 1, 2, 3;
    our %h = k => 7;
    our sub get { $x }
    our sub bump { $x++; $A::x }
}
say $A::x;
say @A::a.elems;
say %A::h<k>;
say A::get();
$A::x = 9;
say A::get();
say A::bump();
say $A::x;
class C {
    our $count = 0;
    method inc { $count++; $C::count }
}
my $o = C.new;
$o.inc;
say $o.inc;
say $C::count;
our $g = 41;
say $::g + 1;
say $GLOBAL::g;
sub readg { $::g }
say readg();
$::g = 3;
say $g;
module M::N {
    our $deep = 'd';
}
say $M::N::deep;
```

```stdout
5
3
7
5
9
10
10
2
2
42
41
41
3
d
```

## multi_sub_smartmatch_replace_1

```Raku
# rk_re38.raku — RK-NFA-2: cset/anchor edge-case verdicts (negated shorthands, enumerated
#   ranges + negation, mixed shorthands inside [...], BOL/EOL anchors). The IR_NFA_* graph walk
#   (RK_NFA_BB=1) and the parallel-NFA oracle (RK_NFA_BB=0) agree on every line here; proven
#   byte-identical by scripts/test_gate_raku_nfa_oracle.sh (RK-NFA-2 section).
#
# Note (the | LTM vs || ordered seam): single `|` lowers to an NFA SPLIT; the two engines agree
#   on VERDICT everywhere (this file is verdict-only). They diverge only on overlapping-`|` match
#   EXTENT (oracle = leftmost-longest `|`-LTM; backtracking walker = leftmost-first `||`-ordered),
#   which is the Phase-2 boundary and is not exercised here.

sub main() {
    # ---- negated shorthand csets: \D \W \S ----
    if ('abc'    ~~ /\D+/) { say('nondigit ok');    } else { say('FAIL \D+'); }
    if ('123'    ~~ /\D/)  { say('FAIL \D digits'); } else { say('digits not \D ok'); }
    if ('a b'    ~~ /\S/)  { say('nonspace ok');    } else { say('FAIL \S'); }
    if (' '      ~~ /\S/)  { say('FAIL \S space');  } else { say('space not \S ok'); }
    if ('a-b'    ~~ /\W/)  { say('dash nonword ok');} else { say('FAIL \W dash'); }
    if ('a_b'    ~~ /\W/)  { say('FAIL \W word');   } else { say('underscore word ok'); }

    # ---- enumerated csets: multi-range, negated ----
    if ('hello5' ~~ /<[a..z0..9]>+/) { say('multirange ok');  } else { say('FAIL [a-z0-9]'); }
    if ('ABC'    ~~ /<-[0..9]>+/)   { say('neg range ok');   } else { say('FAIL [^0-9]'); }
    if ('999'    ~~ /<-[0..9]>/)    { say('FAIL [^0-9] dig');} else { say('all digit neg ok'); }
    if ('Hi9'    ~~ /<[A..Za..z]>/)  { say('two ranges ok');  } else { say('FAIL [A-Za-z]'); }

    # ---- mixed shorthand inside [...] ----
    if ('a 1'    ~~ /<[\d\s]>/) { say('mixed cls ok');   } else { say('FAIL [\d\s]'); }
    if ('xyz'    ~~ /<[\d\s]>/) { say('FAIL [\d\s] none');} else { say('no digit/space ok'); }
    if ('a-z'    ~~ /<[\w\-]>+/) { say('word+dash ok');   } else { say('FAIL [\w-]'); }

    # ---- BOL / EOL anchors ----
    if ('hello'  ~~ /^h/)      { say('BOL ok');         } else { say('FAIL ^h'); }
    if ('hello'  ~~ /^e/)      { say('FAIL ^e midstr'); } else { say('not at BOL ok'); }
    if ('hello'  ~~ /o$/)      { say('EOL ok');         } else { say('FAIL o$'); }
    if ('hello'  ~~ /h$/)      { say('FAIL h$ midstr'); } else { say('not at EOL ok'); }
    if ('hello'  ~~ /^hello$/) { say('full anchor ok'); } else { say('FAIL ^hello$'); }
    if ('hellox' ~~ /^hello$/) { say('FAIL anchor long');} else { say('anchor mismatch ok'); }
    if (''       ~~ /^$/)      { say('empty anchor ok');} else { say('FAIL ^$ empty'); }

    say('rk_re38 ok');
}
main();
```

```stdout
nondigit ok
digits not \D ok
nonspace ok
space not \S ok
dash nonword ok
underscore word ok
multirange ok
neg range ok
all digit neg ok
two ranges ok
mixed cls ok
no digit/space ok
word+dash ok
BOL ok
not at BOL ok
EOL ok
not at EOL ok
full anchor ok
anchor mismatch ok
empty anchor ok
rk_re38 ok
```

## ladder__rung04_arrays_binding_an_array_to_an_element_aliases_it_and_pop_shift_a_zen_slice_and_an_element_store_value_agree_with_rakudo

```Raku
my @u = [1, 2], [3, 4];
my @x := @u[0];
@x.push(9);
say @u.raku;
my @y := @u[1];
my $first = @y.shift;
say $first, " ", @u.raku;
my @a = 1, 2;
my @b;
@b := @a;
@b.push(3);
say @a.raku;
my @c = @a;
@c.pop;
say @a.elems, " ", @c.elems;
my @t = [5, 6],;
say @t.elems;
my @i = $[1, 2];
say @i.elems;
my @s = 1, 2;
my $r = [];
$r.push: @s[0] += 5;
say $r[0], " ", @s[0];
my $l = 3;
for reverse ^$l -> $k { print $k }
say "";
sub row() { my $q = [4, 5, 6]; $q }
say [+] row()[];
my @todo = $[1];
my @sums = 0;
sub nextrow($n) {
    for +@todo .. $n -> $m {
        @sums[$m] = 0;
        my $w = [];
        for reverse ^$m -> $z {
            my @v := @todo[$z];
            if @v { $w.push: @sums[$z] += @v.shift; } else { $w.push: @sums[$z]; }
        }
        @todo.push($w);
    }
    @todo[$n];
}
say [+] nextrow(8)[];
```

```stdout
[[1, 2, 9], [3, 4]]
3 [[1, 2, 9], [4]]
[1, 2, 3]
3 2
1
1
6 6
210
15
22
```

## class_multi_sub_replace_2

```Raku
class Vec { has $.x; has $.y; }
multi sub infix:<+>(Vec $a, Vec $b) { return Vec.new(x => $a.x + $b.x, y => $a.y + $b.y); }
 my $p = Vec.new(x => 1, y => 2); my $q = Vec.new(x => 10, y => 20); my $r = $p + $q; say($r.x); say($r.y); 
```

```stdout
11
22
```

## class_multi_sub_replace_3

```Raku
class Vec { has $.x; }
multi sub infix:<+>(Vec $a, Vec $b) { return Vec.new(x => $a.x + $b.x); }
 my $a = 7; my $b = 5; say($a + $b); say($a - $b); say($a * $b); 
```

```stdout
12
2
35
```

## class_multi_sub_replace_5

```Raku
class Box { has $.n; }
multi sub infix:«<»(Box $a, Box $b) { return $a.n < $b.n; }
 my $a = Box.new(n => 3); my $b = Box.new(n => 7); say($a < $b); 
```

```stdout
True
```

## class_multi_sub_replace_4

```Raku
class Money { has $.cents; }
multi sub infix:<+>(Money $a, Money $b) { return Money.new(cents => $a.cents + $b.cents); }
multi sub infix:<*>(Money $a, $n) { return Money.new(cents => $a.cents * $n); }
 my $a = Money.new(cents => 150); my $b = Money.new(cents => 350); my $s = $a + $b; say($s.cents); my $t = $a * 3; say($t.cents); 
```

```stdout
500
450
```

## class_multi_sub_replace_6

```Raku
class Animal { has $.size; }
class Dog is Animal { }
multi sub infix:«<»(Animal $a, Animal $b) { return $a.size + $b.size; }
 my $d1 = Dog.new(size => 10); my $d2 = Dog.new(size => 20); say($d1 < $d2); 
```

```stdout
30
```

## class_multi_sub_replace_7

```Raku
class Animal { has $.size; }
class Dog is Animal { }
multi sub infix:<+>(Animal $a, Animal $b) { return Animal.new(size => $a.size + $b.size); }
 my $d1 = Dog.new(size => 10); my $d2 = Dog.new(size => 20); my $r = $d1 + $d2; say($r.size); 
```

```stdout
30
```

## core__rc09_named_forms

```Raku
class P { has $.x; method scaled(:$by = 1) { $!x * $by } }
my @ps = (1..3).map({ P.new(x => $_) });
say @ps.map({ .scaled(by => 10) });
say @ps.sort({ $^b.scaled(:by(2)) <=> $^a.scaled(:by(2)) }).map(*.x);
```

```stdout
(10 20 30)
(3 2 1)
```

## core__rc11_nested_sort_reduce

```Raku
my @a = 5, 3, 9;
say @a.map(-> $x { @a.sort({ $^b <=> $^a })[0] + $x });
say @a.map({ @a.sort(-> $p, $q { $p <=> $q }).head });
sub by-len(@xs) { @xs.sort({ $^a.chars <=> $^b.chars }) }
say <bb a ccc>.map({ by-len(<bb a ccc>).join }).join("|");
say (1..3).map({ (1..$_ + 1).reduce({ $^a + $^b }) });
say (1..3).map({ (1..$_ + 1).reduce(-> $p, $q { $p * $q }) });
```

```stdout
(14 12 18)
(3 3 3)
abbccc|abbccc|abbccc
(3 6 10)
(2 6 24)
```

## roast_causes__rc01_lone_interpolation_is_str

```Raku
my $e = 5;
say ("$e" ~~ Str);
say ("$e" ~~ /5/).Bool;
say "$e".WHAT;
try die "boom";
say "$!".WHAT;
say ("$!" ~~ /boom/).Bool;
my @a = 1, 2;
say "@a[]".WHAT;
my %h = a => 1;
say "%h<a>".WHAT;
say "{1 + 1}".WHAT;
my $u;
say "$e$e".WHAT;
```

```stdout
True
True
(Str)
(Str)
True
(Str)
(Str)
(Str)
(Str)
```

## ladder__rung09_regex_match_methods_agree_with_rakudo

```Raku
my $m = "a b c d" ~~ /(.*)/;
say $m.caps.map({ .key ~ ":" ~ .value }).join("|");
say $m.chunks.map({ .key ~ ":" ~ .value }).join("|");
my token wc { \w };
"a b c" ~~ /:s <wc=&wc> (\w) <wc=&wc> /;
say $/.caps.map({ .key ~ ":" ~ .value }).join("|");
say $/.chunks.map({ .key ~ ":" ~ .value }).join("|");
my $n = "x7y" ~~ /\d/;
say $n.Int, " ", $n.Num, " ", $n.Numeric;
$n.put;
say @$/.elems;
say "ab" ~~ /a <( b )> /;
say "foobar" ~~ /foo <( bar )>/;
say "aaa" ~~ /a ** 2/;
say "abab" ~~ /[a b]+/;
```

```stdout
0:a b c d
0:a b c d
wc:a|0:b|wc:c
wc:a|~: |0:b|~: |wc:c
7 7 7
7
0
｢b｣
｢bar｣
｢aa｣
｢abab｣
```

## benchmark_rc-perfect-shuffle

```Raku
use v6;

sub perfect-shuffle (@deck) {
    my $mid = +@deck div 2;
    flat map { @deck[$_, $_ + $mid] }, 0..($mid - 1)
}

sub shuffles_needed ($decksize) {
    my @shuffled = my @deck = ^$decksize;
    my $n;
    loop { $n++; @shuffled = perfect-shuffle @shuffled;
           last if @shuffled eqv @deck; }
    return $n
}

say shuffles_needed(52);
```

```stdout
8
```

## ladder__rung12_exceptions_a_call_that_resolves_to_no_routine_raises_a_catchable_exception_inside_try_and_eval

```Raku
use MONKEY-SEE-NO-EVAL;
for 'e()', 'pi("x")', 'tau()' -> $c {
    try { EVAL $c }
    say "$c: ", $!.^name;
}
for 'push()', 'shift()', 'unshift()' -> $c {
    try { EVAL $c }
    say "$c: ", $! ~~ X::TypeCheck::Argument;
}
try { EVAL 'qux_not_a_sub()' }
say $!.^name;
say $!.message ~~ /qux_not_a_sub/ ?? "named" !! "unnamed";
my $r = try { EVAL 'qux_not_a_sub(1, 2)' };
say $r.defined;
sub declared($x) { $x * 2 }
say EVAL 'declared(21)';
say "end";
```

```stdout
e(): X::Undeclared
pi("x"): X::Undeclared
tau(): X::Undeclared
push(): True
shift(): True
unshift(): True
X::Undeclared::Symbols
named
False
42
end
```

## scrip_test_rk_array_literal

```Raku
# rk_array_literal.raku — comma-list array initializer `my @a = e1, e2, ...`
sub main() {
    # bare comma-list init, then iterate
    my @a = 10, 20, 30;
    for @a -> $i { say($i); }

    # comma-init feeding reverse
    my @b = 1, 2, 3, 4;
    my @r = reverse(@b);
    for @r -> $x { say($x); }

    # comma-init feeding sum and join
    my @c = 5, 5, 10;
    say(sum(@c));
    say(join("+", @c));

    # mixed-type comma-init
    my @d = "a", "b", "c";
    for @d -> $s { say($s); }
}
main();
```

```stdout
10
20
30
4
3
2
1
20
5+5+10
a
b
c
```

## sub_smartmatch_say_replace_1

```Raku
# rk_re34.raku — RK-34: positional captures $0, $1

sub main() {
    my $s = 'John Smith, age 42';

    # single group — capture a word
    if ($s ~~ /(<[A..Za..z]>+)/) { say($0); } else { say('FAIL no match'); }

    # two groups — name and number
    if ($s ~~ /(<[A..Za..z]>+) ' ' (<[A..Za..z]>+)/) {
        say($0);
        say($1);
    } else { say('FAIL two groups'); }

    # digit capture
    my $t = 'score: 99 points';
    if ($t ~~ /(<[0..9]>+)/) { say($0); } else { say('FAIL digit cap'); }

    # no match — $0 stays empty
    my $u = 'hello';
    if ($u ~~ /(<[0..9]>+)/) { say('FAIL should not match'); } else { say('no match ok'); }

    say('rk_re34 ok');
}
main();
```

```stdout
｢John｣
｢John｣
｢Smith｣
｢99｣
no match ok
rk_re34 ok
```

## ladder__rung04_arrays_pop_and_shift_inside_an_expression_still_remove_the_element

```Raku
my @a = 1, 2, 3, 4;
say pop(@a) + 1;
say @a.elems;
say shift(@a) * 10;
say @a.elems;
say (shift @a) ~ "x";
say @a.elems;
my @b = 1, 2, 3, 4, 5, 6;
say @b.pop + @b.shift;
say @b.elems;
my $x = @b.pop;
say $x;
@b.shift;
say @b.elems;
my @c = 1, 2, 3;
say @c.pop for 1..2;
say @c.elems;
my @d = <a b c>;
my @r;
@r.push(@d.shift) for 1..3;
say @r;
say @d.elems;
sub f($v) { $v * 2 }
my @e = 5, 6, 7;
say f(pop(@e));
say f(shift(@e));
say @e.elems;
```

```stdout
5
3
10
2
2x
1
7
4
5
2
3
2
1
[a b c]
0
14
10
1
```

## ladder__rung09_regex_quote_adverbs_and_interpolation_agree_with_rakudo

```Raku
say "ABC" ~~ m:i/abc/;
say "ABC" ~~ /:i abc/;
say "ABC" ~~ rx:i/abc/;
say "a1b22c333" ~~ m:g/\d+/;
say ("a1b22c333" ~~ m:x(2)/\d+/).join(",");
say "a1b22c333" ~~ m:2nd/\d+/;
say ("a1b22c333" ~~ m:nth(1,3)/\d+/).join(",");
say "aaa" ~~ m:ov/aa/;
say "hello" ~~ m:c(2)/l+/;
say "hello" ~~ m:p(2)/l+/;
say so "hello" ~~ m:p(1)/l+/;
my $x = "a.c";
say so "abc" ~~ /$x/;
say "a.c" ~~ /$x/;
say "abc" ~~ /<$x>/;
my @a = <foo bar>;
say "xbar" ~~ /@a/;
say "xbar" ~~ /<@a>/;
say so "ab" ~~ m:s/a b/;
say "a b" ~~ m:s/a b/;
if "ABC" ~~ m:i/b/ { say "cond ok" }
$_ = "xabcx";
if m/abc/ { say "topic match" }
say so "ab" !~~ m/c/;
my $r = rx/b+/;
say "abbc" ~~ /a $r c/;
say "abbc" ~~ /a <$r> c/;
```

```stdout
｢ABC｣
｢ABC｣
｢ABC｣
(｢1｣ ｢22｣ ｢333｣)
1,22
｢22｣
1,333
(｢aa｣ ｢aa｣)
｢ll｣
｢ll｣
False
False
｢a.c｣
｢abc｣
｢bar｣
｢bar｣
False
｢a b｣
cond ok
topic match
True
｢abbc｣
｢abbc｣
```

## sub_smartmatch_say_replace_2

```Raku
# rk_re35.raku — RK-35: named captures <n> and $<n>

sub main() {
    my $s = 'John Smith, age 42';

    # single named group
    if ($s ~~ /$<word>=(<[A..Za..z]>+)/) { say($<word>); } else { say('FAIL word'); }

    # two named groups
    if ($s ~~ /$<first>=(<[A..Za..z]>+) ' ' $<last>=(<[A..Za..z]>+)/) {
        say($<first>);
        say($<last>);
    } else { say('FAIL two named'); }

    # named digit group
    my $t = 'score: 99 points';
    if ($t ~~ /$<num>=(<[0..9]>+)/) { say($<num>); } else { say('FAIL num'); }

    # mix: named + positional in same pattern
    if ($s ~~ /$<fn>=(<[A..Za..z]>+) ' ' (<[A..Za..z]>+)/) {
        say($<fn>);
        say($0);
    } else { say('FAIL mix'); }

    say('rk_re35 ok');
}
main();
```

```stdout
｢John｣
｢John｣
｢Smith｣
｢99｣
｢John｣
｢Smith｣
rk_re35 ok
```

## ladder__rung08_for_last_and_next_with_a_label_leave_or_continue_the_labelled_loop_through_nested_loops

```Raku
my $s = '';
FOO: for 1..4 -> $i { next FOO if $i == 2; $s ~= $i; }
say $s;
OUT: for 1..3 -> $i { for 1..3 -> $j { last OUT if $j == 2; $s ~= "x"; } }
say $s;
my $n = 0;
L3: loop { $n++; last L3 if $n > 2 }
say $n;
my $t = 0;
LP1: for 1..3 -> $i {
    for 1..3 -> $j {
        next LP1 if $j == 2;
        $t += 10;
    }
    $t += 1000;
}
say $t;
W: while True { for 1..2 -> $k { last W } }
say "done";
my $c = 0;
A1: for 1..2 -> $i {
    for 1..2 -> $j {
        for 1..2 -> $k {
            $c++;
            next A1 if $k == 1;
        }
    }
}
say $c;
```

```stdout
134
134x
3
30
done
2
```

## sub_regex_smartmatch_replace_1

```Raku
# rk_regex23.raku — RK-23: $s ~~ /pattern/ basic regex match
sub main() {
    my $s = 'Hello, World!';

    # basic substring match
    if ($s ~~ /World/) { say('match World ok'); }
    if ($s ~~ /Hello/) { say('match Hello ok'); }

    # no match
    if ($s ~~ /xyz/) { say('WRONG'); } else { say('no match xyz ok'); }

    # match against variable content
    my $needle = 'World';
    if ($s ~~ /World/) { say('var content match ok'); }

    # empty string subject
    my $empty = '';
    if ($empty ~~ /hello/) { say('WRONG'); } else { say('empty no match ok'); }

    # match at start / end
    if ($s ~~ /Hello/) { say('start match ok'); }
    if ($s ~~ /'World!'/) { say('end match ok'); }

    # division still works after ~~
    my $x = 10;
    my $y = 2;
    say($x / $y);
}
main();
```

```stdout
match World ok
match Hello ok
no match xyz ok
var content match ok
empty no match ok
start match ok
end match ok
5
```

## ladder__rung13_classes_a_class_body_runs_where_it_is_declared_and_its_lexicals_are_each_class_own_and_seen_by_its_methods

```Raku
say "before";
class Counter {
    my $count = 10;
    my @log;
    my %seen = a => 1;
    say "in the body";
    $count += 5;
    has $.id;
    method next { $count++; @log.push($count); $count }
    method log { @log.join(",") }
    method seen { %seen<a> }
    method id2 { $!id * 2 }
}
class Other {
    my $count = 100;
    method next { $count++ }
}
say "after";
my $c = Counter.new(id => 4);
say $c.next;
say $c.next;
say $c.log;
say $c.seen;
say $c.id2;
say Other.new.next;
say Other.new.next;
say Counter.new(id => 1).next;
class Box {
    my $made = 0;
    our $total = 0;
    method make { $made++; $total += 2; "$made/$total" }
}
say Box.new.make;
say Box.new.make;
say $Box::total;
```

```stdout
before
in the body
after
16
17
16,17
1
8
100
101
18
1/2
2/4
4
```

## class_method_multi_replace_3

```Raku
class Base { multi method describe(Int $x) { return "base-int:" ~ $x; } }
class Sub is Base { multi method describe(Str $s) { return "sub-str:" ~ $s; } }
 my $o = Sub.new(); say($o.describe(7)); say($o.describe("yo")); 
```

```stdout
base-int:7
sub-str:yo
```

## core__rc07_dot_parens

```Raku
my @subs = (sub ($x) { $x + 1 }, sub ($x) { $x * 2 });
say @subs.map({ .(5) });
say @subs[0].(10), " ", @subs[1].(10);
my %h = f => sub ($a) { $a ~ "!" };
say %h<f>.("hi");
class C { has $.cb; method run($v) { $!cb.($v) } }
say C.new(cb => { $_ ~ "?" }).run("a");
```

```stdout
(6 10)
11 20
hi!
a?
```

## core__rc10_named_multi

```Raku
class Pt { has $.x; has $.y; method Str { "($!x,$!y)" } }
say Pt.new(x => 1, y => 2).Str;
say (1..2).map({ Pt.new(:x($_), :y($_ * 2)).Str }).join(" ");
multi sub area(:$r!) { 3 * $r * $r }
multi sub area(:$w!, :$h!) { $w * $h }
say area(r => 2), " ", area(w => 2, h => 3);
sub opt($p, :$q = "d") { "$p/$q" }
say (1..2).map({ opt($_, q => "x$_") }).join(" ");
```

```stdout
(1,2)
(1,2) (2,4)
12 6
1/x1 2/x2
```

## ladder__rung03_strings_a_method_call_with_parentheses_interpolates_in_a_double_quoted_string

```Raku
my @a = 1, 2, 3;
say "x @a.join(',') y";
say "m @a.map({ $_ * 2 }).join(',') z";
say "n @a.map({ $_ ~~ Int ?? "I" !! "N" }).join(',') z";
my $o = "s"; say "q $o.uc() r";
say "(@a.map({ $_ + 1 }).join(','),)";
my @q = ($_ * 2 for 1..3); say @q.raku;
my @r = (1..4).map({ $_ * $_ }); say "sq: @r.join(' ')";
```

```stdout
x 1,2,3 y
m 2,4,6 z
n I,I,I z
q S r
(2,3,4,)
[2, 4, 6]
sq: 1 4 9 16
```

## rewrite__rr05_seq

```Raku
say (1 ... *)[5000];
say (gather { my $i = 0; loop { take $i++ } }).head(3);
my $s = (1..Inf).map(* * 2).grep(* %% 3); say $s[2];
sub gen { gather for 1..3 { take $_ * 10 } }
my $g = gen(); say $g.list;
my $it = (10, 20, 30).iterator; say $it.pull-one; say $it.pull-one;
say (1, 1, * + * ... *)[10];
say (1..Inf).is-lazy;
```

```stdout
5001
(0 1 2)
18
(10 20 30)
10
20
89
True
```

## ladder__rung11_junctions_a_junction_in_boolean_context_collapses_and_star_smartmatch_against_a_type_is_a_whatevercode

```Raku
say (True, 3).map(* ~~ Bool);
say (1, "a", 2.5).grep(* ~~ Int);
say so all (True, 3).map(* ~~ Bool);
say so all (True, False);
say so all(True, True);
say ?one(1, 0);
say ?one(1, 1);
say so none(0, 0);
say so any(0, 0);
say so any(0, 3);
if all(1, 0) { say "yes" } else { say "no" }
if any(1, 0) { say "yes" } else { say "no" }
my @m = (1, 0).map({ $_ > 0 });
say so all @m;
```

```stdout
(True False)
(1)
False
False
True
True
False
True
False
True
no
yes
False
```

## benchmark_rc-self-describing-numbers

```Raku
sub is_selfdesc($n) {
    my $s = $n.Str;
    my $chars = $s.chars;
    my @a = +«$s.comb;
    my @b;
    for @a -> $i {
	return False if $i >= $chars;
	++@b[$i];
    }
    @b[$_] //= 0 for ^$chars;
    @a eqv @b;
}

# check all numbers from 0 to SCALE
.say if is_selfdesc($_) for 0 .. 5000;
```

```stdout
1210
2020
```

## ladder__rung09_regex_a_match_statement_in_a_sub_returns_to_its_caller

```Raku
sub t() {
    "a" ~~ /a/;
    say "void";
    my $y = "xyz";
    my $m = $y ~~ /y/;
    say $m;
    say "assigned";
    for 1..2 {
        $y ~~ /q/;
        say "loop";
    }
    say "done";
}
t();
say "end";
```

```stdout
void
｢y｣
assigned
loop
loop
done
end
```

## ladder__rung08_for_a_for_loop_over_the_topic_restores_the_outer_topic_when_it_ends_by_exhaustion_last_or_return

```Raku
for 1..3 { }
say $_.defined;
$_ = "outer";
for <a b> { print $_ }
say "";
say $_;
for 1..5 { last if $_ == 3; print $_ }
say "";
say $_;
my @r = do for 1..3 { $_ * 2 };
say @r;
sub f { for 1..3 { return $_ if $_ == 2 } }
say f();
say $_;
for 1..2 -> $x { print $x }
say "";
say $_;
```

```stdout
False
ab
outer
12
outer
[2 4 6]
2
outer
12
outer
```

## ladder__rung10_given_a_when_arm_in_a_block_or_sub_body_and_a_given_or_if_as_a_value

```Raku
sub t(&c) { c() }
t({ my $n = 0; while $n++ < 2 { when 'hi' { say "hi" } }; say "done" });
sub e4($x) { given $x { when 1 { "one" }; when 2 { "two" }; default { "d" } } }
say e4(1); say e4(2); say e4(9);
sub u($x) { given $x { when Int { "I" }; when Str { "S" }; default { "d" } } }
say u(1); say u("a"); say u(2.5);
sub v($x) { given $x { when /ab/ { "re" }; when 1..3 { "r" }; default { "d" } } }
say v("xabx"); say v(2); say v(9);
sub bar() { $_ = 2; when 1 { 'one' }; when 2 { 'two!' }; default { 'many' } }
say bar();
my $nest = sub ($n) { $_ = $n * 2; when * > 2 { when 4 { 'four!' }; default { 'huge' } }; default { 'little' } };
say $nest(1); say $nest(2); say $nest(3);
my $v = do given 2 { when 1 { "one" }; when 2 { "two" }; default { "d" } }; say $v;
my $c = 1; my $w = do if $c { "p" } else { "q" }; say $w;
my $z = do { if $c { "x" } else { "y" } }; say $z;
my $i = 0; $i++ for do given 1 { when True { 5 } }; say $i;
my $h = ${ a => 1, b => 2 }; say $h<a>; say $h.elems;
```

```stdout
done
one
two
d
I
S
d
re
r
d
two!
little
four!
huge
two
p
x
1
1
2
```

## rewrite__rr06_regex

```Raku
my $s = "2026-10-28";
if $s ~~ /(\d+) '-' (\d+) '-' (\d+)/ { say $0 + $2 }
if "foobar" ~~ /$<name>=[foo|foobar]/ { say ~$<name> }
grammar G {
    rule TOP { <expr> }
    rule expr { <term>+ % '+' }
    token term { \d+ | '(' <expr> ')' }
}
class Act {
    method TOP($/) { make $<expr>.made }
    method expr($/) { make [+] $<term>>>.made }
    method term($/) { make $<expr> ?? $<expr>.made !! +$/ }
}
say G.parse("1 + (2 + 3) + 4", :actions(Act)).made;
my $t = "hello world"; $t ~~ s/world/there/; say $t;
say "aXbXc".subst(/X/, { "-" }, :g);
say +("abcab" ~~ m:g/a/);
say ~("foo123" ~~ /<?before \d> \d+/);
```

```stdout
2054
foobar
Nil
hello there
a-b-c
2
123
```

## ladder__rung04_arrays_xx_repeats_its_left_side_unflattened_and_a_range_in_a_comma_list_is_one_range_element

```Raku
say (1, "a") xx 2;
my @a = 1, 2;
say @a xx 2;
say flat (1, 2) xx 2;
my @g = (1, 2) xx 2;
say @g.elems;
say (Empty xx 3).elems;
say "ab" xx 3;
say 0 xx 4;
say (1..2) xx 2;
my @z = 0 xx 3; @z[1] = 5; say @z;
for (1..2, 3..4) -> $x { say $x }
my @c = 1..2, 3..4; say @c; say @c.elems;
my @b = (1..2, 3..4); say @b.elems;
say (1..2, 3..4).elems;
say flat (1..2, 3..4);
say (1..2, 5).map({ $_ ~~ Range });
for 1..2, 5 { say $_ }
say ((1, 2) xx 2).map(*.elems);
```

```stdout
((1 a) (1 a))
([1 2] [1 2])
(1 2 1 2)
2
3
(ab ab ab)
(0 0 0 0)
(1..2 1..2)
[0 5 0]
1..2
3..4
[1..2 3..4]
2
2
2
(1 2 3 4)
(True False)
1..2
5
(2 2)
```

## ladder__rung09_regex_a_failed_match_statement_does_not_end_its_loop_or_sub_body

```Raku
my $s = "hello";
for 1..2 {
    $s ~~ /:i xyz/;
    say "loop";
}
$s ~~ /<alpha>+z/;
say "subrule";
$s ~~ /<?before z>/;
say "lookahead";
sub t() {
    $s ~~ /h <?after z>/;
    say "in sub";
    $s ~~ /<ident>z/;
    say "twice";
}
t();
my $m = $s ~~ /<ident>z/;
say $m.defined;
say "end";
```

```stdout
loop
loop
subrule
lookahead
in sub
twice
False
end
```

## benchmark_insertion-sort

```Raku
use v6;
# SCRIP corpus import: input made deterministic IN-PROGRAM (fixed-seed LCG below) rather than via
# the runtime's rand()/srand() -- output must be comparable across implementations with different
# PRNG algorithms, and only the input needs to vary, not the PRNG that produced it (FINDING
# 2026-08-30-seat14-raku-benchmark-refs-depend-on-prng-algorithm-match.md; ruled by hq_P).

sub insertion-sort(@a) {
    for 1 .. @a.end -> $j {
        my $key = @a[$j];
        # Insert @a[$j] into the sorted sequence @a[0..$j-1]
        my $i   = $j - 1;
        while $i >= 0 && @a[$i] > $key  {
            @a[$i+1] = @a[$i];
            $i-=1;
        }
        @a[$i+1] = $key;
    }
}

my \SCALE = 500;
my $lcg = 42;
my @ints = 0 xx SCALE;
for 1..SCALE -> $i { $lcg = ($lcg * 75 + 74) % 65537; @ints[$i-1] = $lcg % 500; }
@ints = 0 unless SCALE;
insertion-sort @ints;
say @ints[0];
```

```stdout
0
```

## sub_when_junction_replace_1

```Raku
# rk_junctions.raku — RK-BB-4 junction probe.
# Tests `any`/`all`/`one`/`none` constructors and infix `|`/`&`
# autothreading semantics. Bool-collapse on ω/γ per goal spec.
#
# Today this fails because:
#   1. Parser has no KW_ANY/KW_ALL/KW_ONE/KW_NONE tokens.
#   2. Lexer has no single-char `|`/`&` infix (only `||`/`&&`).
#   3. BB_ALTERNATE mode-2 executor is a no-op stub
#      (bb_exec.c:1618-1620: nd->value=FAIL; return nd->ω).
#   4. bb_alt.cpp / bb_gen_alt.cpp mode-4 templates are stubs
#      (only emit α→γ, β→ω passthrough jumps).
# Marked failing in the gate suite; flips green when RK-BB-4 lands.
sub main() {
    my $x = 3;
    if ($x == any(1, 2, 3))  { say('any-hit');  }   # ⇒ any-hit
    if ($x == any(7, 8, 9))  { say('any-miss-shouldnt-print'); }
    if ($x == all(3, 3, 3))  { say('all-hit');  }   # ⇒ all-hit
    if ($x == all(3, 3, 4))  { say('all-miss-shouldnt-print'); }
    if ($x == none(7, 8, 9)) { say('none-hit'); }   # ⇒ none-hit
    if ($x == one(1, 3, 5))  { say('one-hit');  }   # ⇒ one-hit
    if ($x == one(3, 3, 5))  { say('one-miss-shouldnt-print'); }
    # infix junctions (single-char | and &)
    if ($x == (1 | 2 | 3))   { say('pipe-hit'); }   # ⇒ pipe-hit
    if ($x == (3 & 3 & 3))   { say('amp-hit');  }   # ⇒ amp-hit
}
main();
```

```stdout
any-hit
all-hit
none-hit
one-hit
pipe-hit
amp-hit
```

## scrip_test_rk_re37

```Raku
# rk_re37.raku — RK-37: m:g/pat/ global match and s/pat/repl/ substitution

sub main() {
    my $s = 'one 1 two 22 three 333';

    # global match: collect all digit sequences
    my @nums = ($s ~~ m:g/\d+/);
    for @nums -> $n { say($n); }

    # substitution: single replace
    my $t = 'hello world';
    $t ~~ s/world/Raku/;
    say($t);

    # substitution: global replace
    my $u = 'aabbcc';
    $u ~~ s/b/X/g;
    say($u);

    # subst no match — string unchanged
    my $v = 'hello';
    $v ~~ s/xyz/WRONG/;
    say($v);

    say('rk_re37 ok');
}
main();
```

## benchmark_rc-mandelbrot

```Raku
constant SQUISH = 1.5;

sub MAIN(Int $w = 31, Int $max_iterations = 50) {
    my $h = round($w / SQUISH);

    my ($re_min, $re_max) = (-2,   1/2);
    my ($im_min, $im_max) = (-5/4, 5/4);

    my $re_step = ($re_max - $re_min) / ($w - 1);
    my $im_step = ($im_max - $im_min) / ($h - 1);

    # Allow SCALE == 0 for compile time testing
    exit(0) if $w < 2;

    my @color_map = ' ', < . , ; * $ # @ >;

    my sub mandelbrot($c) {
        my $z = $c;
        for 1 .. $max_iterations {
            $z = $z * $z + $c;
            return $_ if abs($z) > 2;
        }
        0;
    }

    loop (my $y = $im_max; $y >= $im_min; $y -= $im_step) {
        loop (my $x = $re_min; $x <= $re_max; $x += $re_step) {
            my $iter = mandelbrot($x + $y * i);
            print @color_map[$iter % @color_map];
        }
        print "\n"
    }
}
```

```stdout
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @           . , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @          . , ; * $ # @. , ; * $ # @ . , ; * $ # @ . , ; * $ # @. , ; * $ # @  . , ; * $ # @. , ; * $ # @. , ; * $ # @
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @         . , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @   . , ; * $ # @. , ; * $ # @. , ; * $ # @  . , ; * $ # @
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @         . , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @ . , ; * $ # @    . , ; * $ # @. , ; * $ # @  
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @         . , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @. , ; * $ # @  . , ; * $ # @ . , ; * $ # @  . , ; * $ # @ 
. , ; * $ # @. , ; * $ # @. , ; * $ # @        . , ; * $ # @. , ; * $ # @     . , ; * $ # @       . , ; * $ # @  . , ; * $ # @. , ; * $ # @
. , ; * $ # @. , ; * $ # @      . , ; * $ # @. , ; * $ # @    . , ; * $ # @. , ; * $ # @. , ; * $ # @           . , ; * $ # @. , ; * $ # @ 
. , ; * $ # @   . , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @. , ; * $ # @ . , ; * $ # @. , ; * $ # @  . , ; * $ # @. , ; * $ # @            . , ; * $ # @ 
. , ; * $ # @ . , ; * $ # @. , ; * $ # @. , ; * $ # @      . , ; * $ # @  . , ; * $ # @                
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @  . , ; * $ # @      . , ; * $ # @             . , ; * $ # @ 
                             . , ; * $ # @ 
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @  . , ; * $ # @      . , ; * $ # @             . , ; * $ # @ 
. , ; * $ # @ . , ; * $ # @. , ; * $ # @. , ; * $ # @      . , ; * $ # @  . , ; * $ # @                
. , ; * $ # @   . , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @. , ; * $ # @ . , ; * $ # @. , ; * $ # @  . , ; * $ # @. , ; * $ # @            . , ; * $ # @ 
. , ; * $ # @. , ; * $ # @      . , ; * $ # @. , ; * $ # @    . , ; * $ # @. , ; * $ # @. , ; * $ # @           . , ; * $ # @. , ; * $ # @ 
. , ; * $ # @. , ; * $ # @. , ; * $ # @        . , ; * $ # @. , ; * $ # @     . , ; * $ # @       . , ; * $ # @  . , ; * $ # @. , ; * $ # @
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @         . , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @. , ; * $ # @  . , ; * $ # @ . , ; * $ # @  . , ; * $ # @ 
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @         . , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @ . , ; * $ # @    . , ; * $ # @. , ; * $ # @  
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @         . , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @ . , ; * $ # @   . , ; * $ # @. , ; * $ # @. , ; * $ # @  . , ; * $ # @
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @          . , ; * $ # @. , ; * $ # @ . , ; * $ # @ . , ; * $ # @. , ; * $ # @  . , ; * $ # @. , ; * $ # @. , ; * $ # @
. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @           . , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @. , ; * $ # @
```

## benchmark_point_class_add

```Raku
# Point Class Benchmarks

# Here's the runtime for the point class in seconds (YMMV). Lower is better:
# 0.22   Lua table      LuaJIT 2.0 git HEAD -O+sink
# 6600+  Perl6 class    Rakudo/MoarVM

# see point_class_add_README (in README.md) for more information
# SCRIP corpus import: iteration count reduced from upstream's 100_000_000 (see README.md)

use v6;

class Point {
    has num $.x;
    has num $.y;

    method add(Point $b) {
       return Point.new(:x($!x + $b.x), :y($!y + $b.y));
    }
}

# ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
# The bracket encloses the 1_000_000-iteration method-call loop -- the WORK. The class declaration and
# the two constructing .new calls are setup and sit outside it, as does the final print. Timestamps go
# to STDERR (note) so stdout stays byte-comparable and point_class_add.ref verifies unchanged. wall_us()/wall_ms()
# are SCRIP builtins; Rakudo gets them from prelude_rakudo.rakumod via -M, so this file is byte-identical
# on every engine.
my $t0 = wall_us(); my $m0 = wall_ms();
my int $i = 0;
my Point $a = Point.new(:x(1.5e0), :y(2.5e0));
my Point $b = Point.new(:x(3.25e0), :y(4.75e0));

while $i < 1000000 {
    $a = $a.add($b).add($b);
    $i = $i + 1;
}

my $t1 = wall_us(); my $m1 = wall_ms();
print $a.x, ' ', $a.y;
note("BENCH kernel=point_class_add work_us=" ~ ($t1 - $t0) ~ " work_ms=" ~ ($m1 - $m0));
```

```stdout
6500001.5 9500002.5
```

## ladder__rung09_regex_grammars_protos_actions_and_lexical_regexes_agree_with_rakudo

```Raku
{
    grammar G { token TOP { a+ } }
    say G.parse("aaa");
}
my grammar H { token TOP { b+ } }
say H.parse("bb");
{
    my grammar K { token TOP { c+ } }
    say K.parse("cc");
}
my token wc { \w };
say "a" ~~ /<wc>/;
my regex r1 { x+ }
say "xx" ~~ /<r1>/;
say "xx" ~~ /<&r1>/;
grammar Alts {
    token TOP { ^ <alt> $ };
    proto token alt {*}
    token alt:sym<foo> { <sym> };
    token alt:sym<bar> { 'bar' };
    token alt:sym«=>»  { <sym> };
}
say Alts.subparse('foo');
say Alts.parse('bar');
say Alts.parse('=>');
say Alts.parse('baz') ?? "yes" !! "no";
grammar Calc {
    token TOP { <num> ['+' <num>]* }
    token num { \d+ }
}
class Act {
    method num($/) { make +$/ }
    method TOP($/) { make [+] $<num>.map(*.made) }
}
my $m = Calc.parse("1+2+39", :actions(Act));
say $m;
say $m.made;
say $m<num>[1].made;
say "abc" ~~ /(a(b(c)))/;
say "ab" ~~ /$<x>=(a $<y>=(b))/;
```

```stdout
｢aaa｣
｢bb｣
｢cc｣
｢a｣
 wc => ｢a｣
｢xx｣
 r1 => ｢xx｣
｢xx｣
｢foo｣
 alt => ｢foo｣
  sym => ｢foo｣
｢bar｣
 alt => ｢bar｣
｢=>｣
 alt => ｢=>｣
  sym => ｢=>｣
no
｢1+2+39｣
 num => ｢1｣
 num => ｢2｣
 num => ｢39｣
42
2
｢abc｣
 0 => ｢abc｣
  0 => ｢bc｣
   0 => ｢c｣
｢ab｣
 x => ｢ab｣
  y => ｢b｣
```

## benchmark_merge-sort

```Raku
use v6;
# SCRIP corpus import: input made deterministic IN-PROGRAM (fixed-seed LCG below) rather than via
# the runtime's rand()/srand() -- output must be comparable across implementations with different
# PRNG algorithms, and only the input needs to vary, not the PRNG that produced it (FINDING
# 2026-08-30-seat14-raku-benchmark-refs-depend-on-prng-algorithm-match.md; ruled by hq_P;
# identical pattern to insertion-sort.raku, fixed together per hq_P's ruling).

sub merge(@a, \p, \z, \r) {
    my @l = @a[p   .. z].Slip, Inf;
    my @r = @a[z+1 .. r].Slip, Inf;
    my $i = 0;
    my $j = 0;

    for p..r -> \k {
        if @l[$i] <= @r[$j] {
            @a[k] = @l[$i];
            $i++;
        } else {
            @a[k] = @r[$j] ;
            $j++;
        }
    }

}


sub merge-sort(@a, \p = 0, \r = @a.end) {
    if p < r {
        my \z = (p + r) div 2;
        merge-sort(@a, p, z);
        merge-sort(@a, z+1, r);
        merge(@a, p, z, r);
    }
}

my \SCALE = 500;
my $lcg = 42;
my @a = 0 xx SCALE;
for 1..SCALE -> $i { $lcg = ($lcg * 75 + 74) % 65537; @a[$i-1] = $lcg % 500; }
@a = 0 unless SCALE;
merge-sort @a;
say @a[0];
```

```stdout
0
```

## benchmark_point_class_add1

```Raku
# Point Class Benchmarks

# Here's the runtime for the point class in seconds (YMMV). Lower is better:
# 0.22   Lua table      LuaJIT 2.0 git HEAD -O+sink
# 2500+  Perl6 class    Rakudo/MoarVM

# see point_class_add_README (in README.md) for more information
# SCRIP corpus import: iteration count reduced from upstream's 100_000_000 (see README.md)

use v6;

class Point {
    has num $.x;
    has num $.y;

    submethod BUILD(num :$x, num :$y ) {
        $!x = $x;
        $!y = $y;
    }

    method add(Point $b) {
       return self.bless(:x($!x + $b.x), :y($!y + $b.y));
    }
}

# ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
# The bracket encloses the 1_000_000-iteration method-call loop -- the WORK. The class declaration and
# the two constructing .new calls are setup and sit outside it, as does the final print. Timestamps go
# to STDERR (note) so stdout stays byte-comparable and point_class_add1.ref verifies unchanged. wall_us()/wall_ms()
# are SCRIP builtins; Rakudo gets them from prelude_rakudo.rakumod via -M, so this file is byte-identical
# on every engine.
my $t0 = wall_us(); my $m0 = wall_ms();
my int $i = 0;
my Point $a = Point.new(:x(1.5e0), :y(2.5e0));
my Point $b = Point.new(:x(3.25e0), :y(4.75e0));

while $i < 1000000 {
    $a = $a.add($b).add($b);
    $i = $i + 1;
}

my $t1 = wall_us(); my $m1 = wall_ms();
print $a.x, ' ', $a.y;
note("BENCH kernel=point_class_add1 work_us=" ~ ($t1 - $t0) ~ " work_ms=" ~ ($m1 - $m0));
```

```stdout
6500001.5 9500002.5
```

## ladder__rung02_arithmetic_rat_as_an_argument_a_receiver_and_a_container_element_agrees_with_rakudo

```Raku
my $s = "abcdefghij";
my @a = 10..19;
my $n = 6;
my $m = 7;
say @a.rotate($n/2);
say @a.skip($n/2);
say @a.rotor($n/2);
say @a.pick($n/2).elems;
say @a.roll($n/2).elems;
say "hello".pick($n/2 - 1).chars;
say (1..5).rotor(2, $n/3 - 1);
say (1..6).rotor($n/3);
say chr(130/2);
say chr(65 + $n/2);
say ($n/2).chr;
say ($n/2).is-prime;
say ($m/2).is-prime;
say ($n/2).base(2);
say ($n*8/2).base(16);
say [1/2, 3/4].raku;
say (1/2 => 3/4).raku;
say {a => 1/2}.raku;
my @r = 1/2, 3/4;
say @r.raku;
push @r, 1/4;
say @r.raku;
my %h = a => 1/2;
%h<a> += 1/4;
say %h.raku;
say (7/2) before 10;
say 10 after (7/2);
say (1/8) before (1/2);
say (1/3) ~~ 0.333333;
say 3.5 ~~ 7/2;
say 3 ~~ 6/2;
say 1.5.asinh;
say 1.5.acosh;
say 1.5.atanh;
say 1.5.chars;
say 3.14.uc;
say 3.14.substr(1);
say 3.14.substr(0, 2);
say 3.14.split(".");
say 3.14.index("4");
say 3.14.contains(".");
say 3.14.starts-with("3");
say 3.14.ends-with("4");
say 1.5.flip;
say 3.14.comb;
say 3.14.comb(1);
say 1.5.join(",");
say 1.5.sort;
say 1.5.sum;
```

```stdout
(13 14 15 16 17 18 19 10 11 12)
(13 14 15 16 17 18 19)
((10 11 12) (13 14 15) (16 17 18))
3
3
5
((1 2) (3) (4 5))
((1 2) (3 4) (5 6))
A
D

True
False
11
18
[0.5, 0.75]
0.5 => 0.75
{:a(0.5)}
[0.5, 0.75]
[0.5, 0.75, 0.25]
{:a(0.75)}
True
True
True
False
True
True
1.1947632172871094
0.9624236501192069
NaN
3
3.14
.14
3.
(3 14)
3
True
True
True
5.1
(3 . 1 4)
(3 . 1 4)
1.5
(1.5)
1.5
```

## ladder__rung07_subs_a_subset_is_a_type_and_a_where_clause_checks_a_parameter

```Raku
subset Big where * > 5;
subset Even of Int where { $_ % 2 == 0 };
subset Small of Int where $_ < 3;
subset Pos of Big where * < 100;
subset FiveOnly where 5;
subset Digits where /^\d+$/;
subset Named of Str;
say 7 ~~ Big;
say 3 ~~ Big;
say 4 ~~ Even;
say 3 ~~ Even;
say "x" ~~ Even;
say 2 ~~ Small;
say 50 ~~ Pos;
say 500 ~~ Pos;
say 5 ~~ FiveOnly;
say 6 ~~ FiveOnly;
say "123" ~~ Digits;
say "12a" ~~ Digits;
say "s" ~~ Named;
say 1 ~~ Named;
sub f(Even $x) { "even $x" }
say f(4);
my $r = try { f(3) };
say $r.defined ?? "no error" !! "died";
my Big $v = 9;
say $v;
my $e = try { my Big $w = 2; "assigned" };
say $e.defined ?? "assigned" !! "died";
{
    my subset Local where * > 100;
    say 101 ~~ Local;
    say 5 ~~ Local;
}

sub w(Int $n where * > 0) { "pos $n" }
say w(3);
say (try { w(-1) }).defined ?? "no die" !! "died";
sub two($a where { $_ ne "x" }, $b where * < 10) { "$a/$b" }
say two("y", 3);
say (try { two("x", 3) }).defined ?? "no die" !! "died";
say (try { two("y", 30) }).defined ?? "no die" !! "died";
sub sx($x where $x > 5) { "big $x" }
say sx(7);
say (try { sx(2) }).defined ?? "no die" !! "died";
my $f = -> $q where * > 1 { "blk $q" };
say $f(5);

class Widget {
    subset PosReal of Real where * >= 0;
    subset Size where { .does(PosReal) or .does(Whatever) };
    has $.size = 3;
    method ok($n) { $n ~~ PosReal }
    method size-ok($n) { $n ~~ Size }
}
my $w = Widget.new;
say $w.ok(5);
say $w.ok(-1);
say $w.size-ok(2);
say $w.size-ok("x");
```

```stdout
True
False
True
False
False
True
True
False
True
False
True
False
True
False
even 4
died
9
died
True
False
pos 3
died
y/3
died
died
big 7
died
blk 5
True
False
True
False
```

## scrip_test_rk_given18

```Raku
# rk_given18.raku — RK-18: given/when extended coverage
# Tests: nested given/when, given in a loop, default fallthrough,
# mixed numeric and string when-arms.

sub classify($n) {
    given $n {
        when 0 { say('zero');     }
        when 1 { say('one');      }
        when 2 { say('two');      }
        default { say('many');    }
    }
}

sub grade($s) {
    given $s {
        when 'A' { say('excellent'); }
        when 'B' { say('good');      }
        when 'C' { say('average');   }
        default  { say('other');     }
    }
}

sub nested($n) {
    given $n {
        when 1 {
            given 'A' {
                when 'A' { say('one-A'); }
                default  { say('one-?'); }
            }
        }
        default { say('not-one'); }
    }
}

sub in_loop() {
    my @vals = '';
    push(@vals, 1);
    push(@vals, 2);
    push(@vals, 3);
    push(@vals, 4);
    for @vals -> $v {
        given $v {
            when 1 { say('got-one');   }
            when 2 { say('got-two');   }
            default { say('got-other'); }
        }
    }
}

sub main() {
    classify(0);
    classify(1);
    classify(5);
    grade('A');
    grade('C');
    grade('F');
    nested(1);
    nested(2);
    in_loop();
}
main();
```

```stdout
zero
one
many
excellent
average
other
one-A
not-one
got-other
got-one
got-two
got-other
got-other
```

## rewrite__rr09_smartmatch

```Raku
say 5 ~~ Int; say so "abc" ~~ /b/; say 5 ~~ * > 3; say 5 ~~ 1..10; say so 2 ~~ 1|2|3;
given 7 {
    when 1..5 { say "low" }
    when * > 5 { say "high" }
}
say so any(1, 2, 3) > 2; say so (1|2) + 1 ~~ 2|3; say so all(1, 2) < 3;
my @a = 1, 2, 3; say @a ~~ [1, 2, 3]; say "x" ~~ "x";
say (1, 2, 3).grep(1|3).elems;
```

```stdout
True
True
WhateverCode.new
True
True
high
True
True
True
True
True
2
```

## ladder__rung10_given_a_when_arm_is_its_own_node_a_given_binds_the_topic_and_a_matched_when_leaves_the_block

```Raku
given 7 { my $z = .Str; say $z }
given 8 { when 8 { say "w" }; say "x" }
given 9 { say "pre"; when 9 { say "nine" }; say "post" }
given 5 { when 1 { say "one" }; default { say "dflt $_" } }
for 1..3 { when 2 { say "two" }; say $_ }
for <a b c> { when "b" { say "bee" }; default { say "other $_" } }
given "ab" { my $z = .uc; say $z }
sub cls($n) { given $n { when 0 { return "zero" }; when 1 { return "one" }; default { return "many" } } }
say cls(0), cls(1), cls(5);
try { die "x"; CATCH { when X::AdHoc { say "caught ", .message } } }
```

```stdout
7
w
pre
nine
dflt 5
1
two
3
other a
bee
other c
AB
zeroonemany
caught x
```

## ladder__rung04_arrays_an_infinite_or_whatever_ended_range_is_lazy_where_it_is_iterated_and_a_range_value_where_it_is_held

```Raku
say (1..Inf).head(3);
say (1..*).head(3);
for 1..Inf { last if $_ > 3; say $_ }
say (1^..Inf).head(2);
my @a = 1, 2, 3, 4;
say @a[1..*];
say @a[2..*-1];
say (0..*).map({ $_ * $_ }).head(4);
say (1..Inf)[^3];
my $r = 1..*;
say $r;
say $r.WHAT;
say ("a", "b") Z $r;
say (1..Inf);
say (1..*).gist;
say 5 ~~ 1..*;
say (1..*).min;
say ('a', 'b') Z (1..*);
for ^Inf -> $i { last if $i > 1; say $i }
say (1 xx *).head(2);
say (0 xx *)[^4];
my @z = ('a', 'b') Z (0 xx *);
say @z;
```

```stdout
(1 2 3)
(1 2 3)
1
2
3
(2 3)
(2 3 4)
(3 4)
(0 1 4 9)
(1 2 3)
1..Inf
(Range)
((a 1..Inf))
1..Inf
1..Inf
True
1
((a 1) (b 2))
0
1
(1 1)
(0 0 0 0)
[(a 0) (b 0)]
```

## builtin_table__bt11_raku_methods_by_type

```Raku
sub anyval($x) { return $x }
say "abc".chars;
say "abc".uc;
say "Hello".lc;
say "abc".flip;
say (1, 2, 3).elems;
say [4, 5, 6].elems;
say (-7).abs;
say 16.sqrt;
say 3.7.Int;
say "42".Int + 1;
say 5.Str ~ "x";
say (3/4).numerator;
say (1, 2, 3).join("-");
say (3, 1, 2).sort.join(",");
say {a => 1, b => 2}.keys.sort.join(",");
say (1..5).sum;
say "a,b,c".split(",").elems;
say "hello world".words.join("|");
say "hello".index("l");
say "hello".substr(1, 3);
say "Hello".starts-with("He");
say 10.base(2);
say 255.fmt("%x");
say 3.14159.round(0.01);
my $v = anyval("dyn");
say $v.chars;
say $v.uc;
$v = anyval([1, 2]);
say $v.elems;
$v = anyval(2.5);
say $v.floor;
$v = anyval({x => 1});
say $v.keys.join;
```

```stdout
3
ABC
hello
cba
3
3
7
4
3
43
5x
3
1-2-3
1,2,3
a,b
15
3
hello|world
2
ell
True
1010
ff
3.14
3
DYN
2
2
x
```

## ladder__rung05_hashes_a_hash_slice_reads_assigns_tests_and_deletes_several_keys

```Raku
my %hash = (a => 1, b => 2, c => 3, d => 4);
my @s = %hash{'a', 'b'};
say @s.elems;
say @s;
my @t = %hash<c d>;
say @t.elems;
say @t;
%hash{'a', 'b'} = (5, 10);
say %hash<a>;
say %hash<b>;
%hash<c d> = 7, 8;
say %hash<c d>;
say %hash{<a b>}.join(",");
my $href = %hash;
say $href<a>;
my @k = <c d>;
say %hash{@k}.join(",");
say %hash{'a'}:exists;
my %n = (1 => "x", 2 => "y", 3 => "z");
say %n{1..3}.join(",");
say %n{"1".."2"}.join(",");
my %q = a => 1, b => 2, c => 3, d => 4;
my ($p1, $p2) = %q<a b>;
say "$p1 $p2";
for %q<c d> -> $v { say $v }
say %q{'a'..'c'}.join(",");
say %q<a b>:exists;
say %q{<a z>}:exists;
say (%q<a b>:delete).join(",");
say %q.keys.sort.join(",");
my %g;
%g<x y z> = 1..3;
say %g.sort.map({ .key ~ .value }).join(",");
say %g{'x','q'}.map({ .defined ?? "d" !! "u" }).join(",");
say (%g<x y z>).sum;
```

```stdout
2
[1 2]
2
[3 4]
5
10
(7 8)
5,10
5
7,8
True
x,y,z
x,y
1 2
3
4
1,2,3
(True True)
(True False)
1,2
c,d
x1,y2,z3
d,u
6
```

## ladder__rung02_arithmetic_rat_in_the_builtins_index_range_x_floor_abs_sqrt_sprintf_int_and_caret

```Raku
my @a = (10, 20, 30, 40);
say @a[7/4];
say @a[1.5];
say "ab" x 2.5;
say "ab" x (5/2);
say (1..2.5).list;
say (1..2.5).elems;
say (0.5..3).list;
say (^2.5).list;
say (1..^3.5).list;
for 1..2.5 -> $i { print $i, " " }
say "";
say 2.7.Int;
say Int(2.7);
say sprintf("%d", 2.7);
say sprintf("%f", 2.5);
say sprintf("%.2f", 1/3);
say sprintf("%s", 0.25);
say sprintf("%5.1f|", 0.25);
say sprintf("%e", 0.5);
say sprintf("%x", 255.0);
say sprintf("%g", 0.1);
say 7.5 <=> 7.25;
say (1/3) <=> (1/3);
say (1/3) cmp (1/2);
say 0.5 cmp 1;
say [0.5, 0.25, 1.5].sort;
say [0.5, 0.25, 1.5].sort.reverse;
say [0.5, 0.25, 1.5].max;
say [0.5, 0.25, 1.5].min;
say max(0.5, 0.25);
say min(0.5, 0.25, 3);
say [0.5, 0.25, 1.5].sum;
say [+] 0.5, 0.25, 1.5;
say [*] 0.5, 0.5;
say (0.5, 0.25).sum;
my $r = 0.5;
$r++;
say $r;
$r--;
say $r;
$r += 0.25;
say $r;
$r *= 2;
say $r;
$r /= 4;
say $r;
$r -= 1/8;
say $r;
say $r.WHAT;
say "val: $r";
say "val: {$r + 1}";
say 1.5 ~~ 1.5;
say 1.5 ~~ 3/2;
say 0.5 == 1/2;
say 0.5 === 1/2;
say 0.5 eqv 1/2;
say 0.5.floor;
say 0.5.ceiling;
say -0.5.floor;
say 2.5.truncate;
say -2.5.truncate;
say 3.7 % 1;
say -3.7 % 1;
say 5.5 % 2;
say 2 ** 0.5;
say 2.0 ** 3;
say 0.5 ** 2;
say 4 ** 0.5;
say exp(0.0);
say log(1.0);
say sin(0.0);
say 1.5.sin;
say 2.25.sqrt;
say sqrt(2.25);
say 10 / 4;
say 10 / 5;
say (10 / 5).WHAT;
say 1.5 + 1;
say (1.5 + 1).WHAT;
say 1.5 * 2;
say 1.5 * 2.0e0;
say (1.5 * 2.0e0).WHAT;
say 3 - 1.25;
say 1e0 + 0.5;
say 1.1 + 2.2;
say 1.1 * 3;
say 0.1 * 3;
say 1.23456789 * 1000;
say 100 * 1.1;
say 1.15 * 100;
say 33.333333 * 3;
```

```stdout
20
20
abab
abab
(1 2)
2
(0.5 1.5 2.5)
(0 1 2)
(1 2 3)
1 2 
2
2
2
2.500000
0.33
0.25
  0.3|
5.000000e-01
ff
0.1
More
Same
Less
Less
(0.25 0.5 1.5)
(1.5 0.5 0.25)
1.5
0.25
0.5
0.25
2.25
2.25
0.25
0.75
1.5
0.5
0.75
1.5
0.375
0.25
(Rat)
val: 0.25
val: 1.25
True
True
True
True
True
0
1
0
2
-2
0.7
0.3
1.5
1.4142135623730951
8
0.25
2
1
0
0
0.9974949866040544
1.5
1.5
2.5
2
(Rat)
2.5
(Rat)
3
3
(Num)
1.75
1.5
3.3
3.3
0.3
1234.56789
110
115
99.999999
```

## exceptions__ex09_rk_try_catch_die

```Raku
# ex09 -- die, try, CATCH with when and default, rethrow to an outer try, a runtime exception from division, and an uncaught die at the end (DESIGN-PLAN exceptions, the cto 2026-10-29)
sub risky($n) {
    my @a = 1..$n;
    die "boom $n" if $n % 3 == 0;
    @a.elems
}
my $ok = 0; my $caught = 0; my @msgs;
for 1..9 -> $i {
    try { $ok += risky($i); CATCH { default { $caught++; @msgs.push(.message) } } }
}
say "$ok $caught";
say @msgs.join("|");
my $r = try { 10 div 0 };
say $r.defined ?? "defined" !! "undefined";
say $!.^name;
try {
    try { die "inner"; CATCH { when X::AdHoc { say "inner caught: " ~ .message; .rethrow } } }
    CATCH { default { say "outer caught: " ~ .message } }
}
say "before the end";
die "uncaught at the end";
say "never";
```

```stdout
27 3
boom 3|boom 6|boom 9
undefined
X::Numeric::DivideByZero
inner caught: inner
outer caught: inner
before the end
```

## rewrite__rr07_exceptions

```Raku
sub f { die "boom" }
try { f(); CATCH { default { say "caught ", .message } } }
my $r = do { try { die X::AdHoc.new(payload => "p") }; $! ~~ X::AdHoc ?? "adhoc" !! "other" }; say $r;
sub g { fail "soft" }
my $v = g(); say $v.defined; say $v.exception.message;
{ LEAVE say "leave"; KEEP say "keep"; UNDO say "undo"; say "body" }
sub h { for 1..3 { return $_ if $_ == 2 }; 0 }; say h();
ROW: for 1..3 -> $i { for 1..3 -> $j { last ROW if $j == 2; say "$i $j" } }
{ CONTROL { when CX::Warn { say "warned: ", .message; .resume } }; warn "w1"; say "after" }
```

```stdout
caught boom
adhoc
False
soft
body
keep
leave
2
1 1
warned: w1
after
```

## ladder__rung09_regex_engine_captures_1_agree_with_rakudo

```Raku
sub esc($s) { $s.subst("\n", '\n', :g).subst("\t", '\t', :g) }
sub fmt($x) { $x ~~ Positional ?? "[" ~ $x.map({fmt($_)}).join(",") ~ "]" !! "<" ~ esc($x.Str) ~ ">" }
sub show($m) { my @o = "M {$m.from} {$m.to} <{esc($m.Str)}>"; my @l = $m.list; for ^@l.elems -> $i { @o.push: "$i=" ~ (@l[$i].defined ?? fmt(@l[$i]) !! "-") }; my %h = $m.hash; for %h.keys.sort -> $k { @o.push: "$k=" ~ fmt(%h{$k}) }; say @o.join(" ") }
if 'ab' ~~ /$<x>=(a)(b)/ { show($/) } else { say "NO" }
if 'abc' ~~ /$<x>=[a(b)(c)]/ { show($/) } else { say "NO" }
if 'a' ~~ /$<x>=a/ { show($/) } else { say "NO" }
if 'aaa' ~~ /$<x>=a+/ { show($/) } else { say "NO" }
if 'aaa' ~~ /$<x>=(a)+/ { show($/) } else { say "NO" }
if 'aaa' ~~ /$<x>=[a]+/ { show($/) } else { say "NO" }
if 'a' ~~ /$<x>=<alpha>/ { show($/) } else { say "NO" }
if 'a' ~~ /$<x>=<.alpha>/ { show($/) } else { say "NO" }
if 'ab' ~~ /$<x>=<alpha>+/ { show($/) } else { say "NO" }
if 'a' ~~ /<x=alpha>/ { show($/) } else { say "NO" }
if 'a' ~~ /<x=.alpha>/ { show($/) } else { say "NO" }
if 'a' ~~ /$0=(a)/ { show($/) } else { say "NO" }
if 'a' ~~ /$1=(a)/ { show($/) } else { say "NO" }
if 'ab' ~~ /$0=(a) (b)/ { show($/) } else { say "NO" }
if 'abc' ~~ /(a) $1=(b) (c)/ { show($/) } else { say "NO" }
if 'ab' ~~ /$<x>=(a) $<y>=(b)/ { show($/) } else { say "NO" }
if 'ab' ~~ /$<x>=(a) $<x>=(b)/ { show($/) } else { say "NO" }
if 'abc' ~~ /(a) (b) $<x>=(c)/ { show($/) } else { say "NO" }
if 'b' ~~ /$<x>=[(a)|(b)]/ { show($/) } else { say "NO" }
if 'b' ~~ /[(a) | (b)]/ { show($/) } else { say "NO" }
if 'bc' ~~ /[(a) | (b)] (c)/ { show($/) } else { say "NO" }
if 'bc' ~~ /((a) | (b))(c)/ { show($/) } else { say "NO" }
if 'bc' ~~ /(a) | (b) (c)/ { show($/) } else { say "NO" }
if 'aa' ~~ /(a)**2/ { show($/) } else { say "NO" }
if 'ab' ~~ /<alpha>**2/ { show($/) } else { say "NO" }
if 'a1' ~~ /<alpha> <digit>/ { show($/) } else { say "NO" }
if 'a1' ~~ /(<alpha>)(<digit>)/ { show($/) } else { say "NO" }
if 'ab' ~~ /(<alpha>+)/ { show($/) } else { say "NO" }
if 'a' ~~ /$<n>=(<alpha>)/ { show($/) } else { say "NO" }
if 'a1' ~~ /<alpha> $<n>=(<digit>)/ { show($/) } else { say "NO" }
if 'abcd' ~~ /(a(b)(c))(d)/ { show($/) } else { say "NO" }
if 'acd' ~~ /(a(b)?(c))(d)/ { show($/) } else { say "NO" }
if 'abac' ~~ /(a (b | c))+/ { show($/) } else { say "NO" }
if 'abbb' ~~ /(a[b]*)/ { show($/) } else { say "NO" }
if 'aab' ~~ /(a)* b/ { show($/) } else { say "NO" }
if 'b' ~~ /(a)? b/ { show($/) } else { say "NO" }
if 'b' ~~ /(a)?/ { show($/) } else { say "NO" }
if 'xy' ~~ /x(a)?y/ { show($/) } else { say "NO" }
if 'b' ~~ /[ (a) ]?/ { show($/) } else { say "NO" }
if '12-34' ~~ /$<foo>=(\d+) '-' $<bar>=(\d+)/ { show($/) } else { say "NO" }
if 'ab12' ~~ /<alpha>+ <digit>+/ { show($/) } else { say "NO" }
if 'ab' ~~ /<alpha>+ <digit>*/ { show($/) } else { say "NO" }
if '12' ~~ /<alpha>* <digit>+/ { show($/) } else { say "NO" }
if '1,2,3' ~~ /<digit>+ % ','/ { show($/) } else { say "NO" }
if '1,2,3' ~~ /(<digit>)+ % ','/ { show($/) } else { say "NO" }
if '1,2,3' ~~ /$<d>=<digit>+ % ','/ { show($/) } else { say "NO" }
```

```stdout
M 0 2 <ab> 0=<b> x=<a>
M 0 3 <abc> 0=<b> 1=<c> x=<abc>
M 0 1 <a> x=<a>
M 0 3 <aaa> x=<aaa>
M 0 3 <aaa> x=[<a>,<a>,<a>]
M 0 3 <aaa> x=<aaa>
M 0 1 <a> alpha=<a> x=<a>
M 0 1 <a> x=<a>
M 0 2 <ab> alpha=[<a>,<b>] x=[<a>,<b>]
M 0 1 <a> alpha=<a> x=<a>
M 0 1 <a> x=<a>
M 0 1 <a> 0=<a>
M 0 1 <a> 0=- 1=<a>
M 0 2 <ab> 0=<a> 1=<b>
M 0 3 <abc> 0=<a> 1=<b> 2=<c>
M 0 2 <ab> x=<a> y=<b>
M 0 2 <ab> x=[<a>,<b>]
M 0 3 <abc> 0=<a> 1=<b> x=<c>
M 0 1 <b> 0=<b> x=<b>
M 0 1 <b> 0=<b>
M 0 2 <bc> 0=<b> 1=<c>
M 0 2 <bc> 0=<b> 1=<c>
M 0 2 <bc> 0=<b> 1=<c>
M 0 2 <aa> 0=[<a>,<a>]
M 0 2 <ab> alpha=[<a>,<b>]
M 0 2 <a1> alpha=<a> digit=<1>
M 0 2 <a1> 0=<a> 1=<1>
M 0 2 <ab> 0=<ab>
M 0 1 <a> n=<a>
M 0 2 <a1> alpha=<a> n=<1>
M 0 4 <abcd> 0=<abc> 1=<d>
M 0 3 <acd> 0=<ac> 1=<d>
M 0 4 <abac> 0=[<ab>,<ac>]
M 0 4 <abbb> 0=<abbb>
M 0 3 <aab> 0=[<a>,<a>]
M 0 1 <b>
M 0 0 <>
M 0 2 <xy>
M 0 0 <>
M 0 5 <12-34> bar=<34> foo=<12>
M 0 4 <ab12> alpha=[<a>,<b>] digit=[<1>,<2>]
M 0 2 <ab> alpha=[<a>,<b>] digit=[]
M 0 2 <12> alpha=[] digit=[<1>,<2>]
M 0 5 <1,2,3> digit=[<1>,<2>,<3>]
M 0 5 <1,2,3> 0=[<1>,<2>,<3>]
M 0 5 <1,2,3> d=[<1>,<2>,<3>] digit=[<1>,<2>,<3>]
```

## zeta_layout__zl08_rk_lists_hashes

```Raku
# zl08 -- arrays, hashes, strings and gather/take in nested subs under collection (DESIGN-PLAN zeta-layout, the cto 2026-10-29)
sub words($n) { gather for 1..$n -> $i { take "w" ~ $i ~ "-" ~ ("ab" x ($i % 7)) } }
sub tally(@ws) { my %h; for @ws -> $w { %h{$w.chars}++ }; %h }
my @all;
my $total = 0;
for 1..40 -> $r {
    my @ws = words(60);
    my %h = tally(@ws);
    $total += [+] %h.values;
    @all.push(@ws.grep({ .chars % 2 == 0 }).map({ .uc }).join(","));
}
say @all.elems, " ", $total;
say @all[0].chars, " ", @all[*-1].substr(0, 12);
my %counts;
for @all -> $s { for $s.split(",") -> $w { %counts{$w.chars}++ } }
say %counts.keys.sort(+*).map({ "$_=" ~ %counts{$_} }).join(" ");
```

```stdout
40 2400
562 W10-ABABAB,W
4=280 6=280 8=280 10=320 12=320 14=280 16=280
```

## ladder__rung09_regex_engine_quantifiers_1_agree_with_rakudo

```Raku
sub esc($s) { $s.subst("\n", '\n', :g).subst("\t", '\t', :g) }
sub fmt($x) { $x ~~ Positional ?? "[" ~ $x.map({fmt($_)}).join(",") ~ "]" !! "<" ~ esc($x.Str) ~ ">" }
sub show($m) { my @o = "M {$m.from} {$m.to} <{esc($m.Str)}>"; my @l = $m.list; for ^@l.elems -> $i { @o.push: "$i=" ~ (@l[$i].defined ?? fmt(@l[$i]) !! "-") }; my %h = $m.hash; for %h.keys.sort -> $k { @o.push: "$k=" ~ fmt(%h{$k}) }; say @o.join(" ") }
if 'aaab' ~~ /a +/ { show($/) } else { say "NO" }
if 'aaab' ~~ /a + b/ { show($/) } else { say "NO" }
if 'aaab' ~~ /a */ { show($/) } else { say "NO" }
if 'aaab' ~~ /a ?/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a ** 2/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /a ** 2..3/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a **2/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a** 2/ { show($/) } else { say "NO" }
if 'aabab' ~~ /a+%b/ { show($/) } else { say "NO" }
if 'aabab' ~~ /a+ % b/ { show($/) } else { say "NO" }
if 'aabab' ~~ /a+ %% b/ { show($/) } else { say "NO" }
if 'a,a,a' ~~ /a+ % ','/ { show($/) } else { say "NO" }
if 'abc' ~~ /<[a..c]> ** 2/ { show($/) } else { say "NO" }
if 'aaa' ~~ /(a) ** 2/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /(a) ** 2..*/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a ** 0/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a ** 0..1/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a?/ { show($/) } else { say "NO" }
if 'aab' ~~ /a??b/ { show($/) } else { say "NO" }
if 'aaab' ~~ /a*?b/ { show($/) } else { say "NO" }
if 'aaab' ~~ /a+?b/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /a**?3/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /a ** ? 3/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a:/ { show($/) } else { say "NO" }
if 'aab' ~~ /a: b/ { show($/) } else { say "NO" }
if 'ab' ~~ /a: | b/ { show($/) } else { say "NO" }
if 'ab' ~~ /[a: | ab]/ { show($/) } else { say "NO" }
```

```stdout
M 0 3 <aaa>
M 0 4 <aaab>
M 0 3 <aaa>
M 0 1 <a>
M 0 2 <aa>
M 0 3 <aaa>
M 0 2 <aa>
M 0 2 <aa>
M 0 1 <a>
M 0 1 <a>
M 0 1 <a>
M 0 5 <a,a,a>
M 0 2 <ab>
M 0 2 <aa> 0=[<a>,<a>]
M 0 4 <aaaa> 0=[<a>,<a>,<a>,<a>]
M 0 0 <>
M 0 1 <a>
M 0 1 <a>
M 1 3 <ab>
M 0 4 <aaab>
M 0 4 <aaab>
M 0 3 <aaa>
M 0 3 <aaa>
M 0 1 <a>
M 1 3 <ab>
M 0 1 <a>
M 0 2 <ab>
```

## ladder__rung09_regex_engine_sigspace_agree_with_rakudo

```Raku
sub esc($s) { $s.subst("\n", '\n', :g).subst("\t", '\t', :g) }
sub fmt($x) { $x ~~ Positional ?? "[" ~ $x.map({fmt($_)}).join(",") ~ "]" !! "<" ~ esc($x.Str) ~ ">" }
sub show($m) { my @o = "M {$m.from} {$m.to} <{esc($m.Str)}>"; my @l = $m.list; for ^@l.elems -> $i { @o.push: "$i=" ~ (@l[$i].defined ?? fmt(@l[$i]) !! "-") }; my %h = $m.hash; for %h.keys.sort -> $k { @o.push: "$k=" ~ fmt(%h{$k}) }; say @o.join(" ") }
if 'a b' ~~ /:s a b/ { show($/) } else { say "NO" }
if 'ab' ~~ /:s a b/ { show($/) } else { say "NO" }
if 'a   b' ~~ /:s a  b/ { show($/) } else { say "NO" }
if 'a b c' ~~ /:s a b c/ { show($/) } else { say "NO" }
if 'a b c' ~~ /:s a [b c]/ { show($/) } else { say "NO" }
if 'a  b' ~~ /:s a \s b/ { show($/) } else { say "NO" }
if 'a   b' ~~ /:s a <ws> b/ { show($/) } else { say "NO" }
if 'a b' ~~ /:s ^ a b $/ { show($/) } else { say "NO" }
if 'a b' ~~ /:s  a b/ { show($/) } else { say "NO" }
if 'aa b' ~~ /:s a+ b/ { show($/) } else { say "NO" }
if 'a ba b' ~~ /:s [a b]+/ { show($/) } else { say "NO" }
if 'a b' ~~ /:r a b/ { show($/) } else { say "NO" }
if 'aaa' ~~ /:r a+ a/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a+: a/ { show($/) } else { say "NO" }
if 'ab b' ~~ /:s [a|ab] b/ { show($/) } else { say "NO" }
if 'a b' ~~ /:s (a) (b)/ { show($/) } else { say "NO" }
if 'ab b' ~~ /:s a. b/ { show($/) } else { say "NO" }
if 'a b' ~~ /:s a b/ { show($/) } else { say "NO" }
if 'ab' ~~ /:s a b/ { show($/) } else { say "NO" }
if 'aaa' ~~ /:r a+ a/ { show($/) } else { say "NO" }
if 'abc' ~~ /:r [a|ab] c/ { show($/) } else { say "NO" }
if 'abc' ~~ /:r [ab|a] c/ { show($/) } else { say "NO" }
if 'aaa' ~~ /:r(1) a+ a/ { show($/) } else { say "NO" }
if 'A' ~~ /:i(0) a/ { show($/) } else { say "NO" }
if 'A' ~~ /:!i a/ { show($/) } else { say "NO" }
if 'A  B' ~~ /:i :s a b/ { show($/) } else { say "NO" }
if 'A' ~~ /:i a/ { show($/) } else { say "NO" }
if 'B' ~~ /:i <[a..c]>/ { show($/) } else { say "NO" }
if 'aB' ~~ /a:i b/ { show($/) } else { say "NO" }
if 'Ab' ~~ /[:i a] b/ { show($/) } else { say "NO" }
if 'AB' ~~ /[:i a] b/ { show($/) } else { say "NO" }
if 'Ab' ~~ /(:i a) b/ { show($/) } else { say "NO" }
if 'AB' ~~ /(:i a) b/ { show($/) } else { say "NO" }
if 'aBc' ~~ /a [:i b] c/ { show($/) } else { say "NO" }
if 'aBC' ~~ /a [:i b] c/ { show($/) } else { say "NO" }
```

```stdout
M 0 3 <a b>
NO
M 0 5 <a   b>
M 0 5 <a b c>
M 0 5 <a b c>
NO
M 0 5 <a   b> ws=<>
M 0 3 <a b>
M 0 3 <a b>
M 0 4 <aa b>
M 0 6 <a ba b>
NO
NO
NO
M 0 4 <ab b>
M 0 3 <a b> 0=<a> 1=<b>
M 0 4 <ab b>
M 0 3 <a b>
NO
NO
M 0 3 <abc>
M 0 3 <abc>
NO
NO
NO
M 0 4 <A  B>
M 0 1 <A>
M 0 1 <B>
M 0 2 <aB>
M 0 2 <Ab>
NO
M 0 2 <Ab> 0=<A>
NO
M 0 3 <aBc>
NO
```

## ladder__rung09_regex_engine_batch2_agree_with_rakudo

```Raku
sub esc($s) { $s.subst("\n", '\n', :g).subst("\t", '\t', :g) }
sub fmt($x) { $x ~~ Positional ?? "[" ~ $x.map({fmt($_)}).join(",") ~ "]" !! "<" ~ esc($x.Str) ~ ">" }
sub show($m) { my @o = "M {$m.from} {$m.to} <{esc($m.Str)}>"; my @l = $m.list; for ^@l.elems -> $i { @o.push: "$i=" ~ (@l[$i].defined ?? fmt(@l[$i]) !! "-") }; my %h = $m.hash; for %h.keys.sort -> $k { @o.push: "$k=" ~ fmt(%h{$k}) }; say @o.join(" ") }
if 'ab' ~~ /a && b/ { show($/) } else { say "NO" }
if 'a' ~~ /[a|b] && <alpha>/ { show($/) } else { say "NO" }
if 'abc' ~~ /<alpha> && <ident>/ { show($/) } else { say "NO" }
if 'aaa' ~~ /<alpha>+ && a+/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a+ && aa/ { show($/) } else { say "NO" }
if 'foo 123 bar' ~~ /foo <( 123 )> bar/ { show($/) } else { say "NO" }
if 'foobar' ~~ /fo<(oba)>r/ { show($/) } else { say "NO" }
if 'abc' ~~ /a<(bc)>/ { show($/) } else { say "NO" }
if 'ab' ~~ /<( a )> b/ { show($/) } else { say "NO" }
if 'ab' ~~ /a <( b/ { show($/) } else { say "NO" }
if '12 bar' ~~ /\d+ <( bar )>/ { show($/) } else { say "NO" }
if '12 x' ~~ /<(\d+)> x/ { show($/) } else { say "NO" }
if 'a b c' ~~ /< a b c >+/ { show($/) } else { say "NO" }
if 'hello world' ~~ /< hello > world/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /< a aa aaaa >/ { show($/) } else { say "NO" }
if 'aab' ~~ /< a aa aaaa > b/ { show($/) } else { say "NO" }
if 'b' ~~ /:i < A B >/ { show($/) } else { say "NO" }
if 'ac' ~~ /<[a..c]> <![b]>/ { show($/) } else { say "NO" }
if 'ab' ~~ /<![a]>./ { show($/) } else { say "NO" }
if 'ab' ~~ /<?[a]>./ { show($/) } else { say "NO" }
if "\nx" ~~ /<?[\n]>./ { show($/) } else { say "NO" }
if 'ab1-' ~~ /<+alpha+digit>+/ { show($/) } else { say "NO" }
if 'acb' ~~ /<+alpha-[b]>+/ { show($/) } else { say "NO" }
if '12a' ~~ /<-alpha>+/ { show($/) } else { say "NO" }
if 'abcabc' ~~ /'abc'**^2/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /a**^3/ { show($/) } else { say "NO" }
if 'aa' ~~ /a**^1/ { show($/) } else { say "NO" }
if 'aaa' ~~ /@<x>=(a)+/ { show($/) } else { say "NO" }
if 'a' ~~ /@<x>=(\w)/ { show($/) } else { say "NO" }
if 'ab' ~~ /$<y>=(\w)**2/ { show($/) } else { say "NO" }
if 'bz' ~~ /<[a..c]> <[x..z]>/ { show($/) } else { say "NO" }
if 'abc' ~~ /<+[a]+[b]>+/ { show($/) } else { say "NO" }
if 'abc' ~~ /<+[a]-[b]>+/ { show($/) } else { say "NO" }
if 'xxxx' ~~ /x**2..3/ { show($/) } else { say "NO" }
if 'xxxx' ~~ /(x)**2..3/ { show($/) } else { say "NO" }
if 'c' ~~ /a | b | c/ { show($/) } else { say "NO" }
if 'c' ~~ /a || b || c/ { show($/) } else { say "NO" }
if 'bc' ~~ /[a | b] c/ { show($/) } else { say "NO" }
if 'ab' ~~ /'a' | 'ab'/ { show($/) } else { say "NO" }
if 'ab' ~~ /<alpha>*?/ { show($/) } else { say "NO" }
if 'ab1' ~~ /<alpha>+?<digit>/ { show($/) } else { say "NO" }
```

```stdout
NO
M 0 1 <a> alpha=<a>
M 2 3 <c> alpha=<c> ident=<c>
M 0 3 <aaa> alpha=[<a>,<a>,<a>]
M 0 2 <aa>
NO
M 2 5 <oba>
M 1 3 <bc>
M 0 1 <a>
M 1 2 <b>
NO
NO
M 0 1 <a>
NO
M 0 4 <aaaa>
M 0 3 <aab>
M 0 1 <b>
M 0 1 <a>
M 1 2 <b>
M 0 1 <a>
M 0 1 <\n>
M 0 3 <ab1>
M 0 2 <ac>
M 0 2 <12>
M 0 3 <abc>
M 0 2 <aa>
M 0 0 <>
M 0 3 <aaa> x=[<a>,<a>,<a>]
M 0 1 <a> x=[<a>]
M 0 2 <ab> y=[<a>,<b>]
M 0 2 <bz>
M 0 2 <ab>
M 0 1 <a>
M 0 3 <xxx>
M 0 3 <xxx> 0=[<x>,<x>,<x>]
M 0 1 <c>
M 0 1 <c>
M 0 2 <bc>
M 0 2 <ab>
M 0 0 <> alpha=[]
M 0 3 <ab1> alpha=[<a>,<b>] digit=<1>
```

## ladder__rung09_regex_engine_basics_1_agree_with_rakudo

```Raku
sub esc($s) { $s.subst("\n", '\n', :g).subst("\t", '\t', :g) }
sub fmt($x) { $x ~~ Positional ?? "[" ~ $x.map({fmt($_)}).join(",") ~ "]" !! "<" ~ esc($x.Str) ~ ">" }
sub show($m) { my @o = "M {$m.from} {$m.to} <{esc($m.Str)}>"; my @l = $m.list; for ^@l.elems -> $i { @o.push: "$i=" ~ (@l[$i].defined ?? fmt(@l[$i]) !! "-") }; my %h = $m.hash; for %h.keys.sort -> $k { @o.push: "$k=" ~ fmt(%h{$k}) }; say @o.join(" ") }
if 'xxabcxx' ~~ /abc/ { show($/) } else { say "NO" }
if 'baaac' ~~ /a+/ { show($/) } else { say "NO" }
if 'aaab' ~~ /a*?b/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a+?/ { show($/) } else { say "NO" }
if 'foo 123' ~~ /(\w+) (\d+)/ { show($/) } else { say "NO" }
if 'ac' ~~ /(a)(b)?(c)/ { show($/) } else { say "NO" }
if 'abcd' ~~ /(a|ab)(c|bcd)(d*)/ { show($/) } else { say "NO" }
if 'abcd' ~~ /a|ab|abc/ { show($/) } else { say "NO" }
if 'abcd' ~~ /a||ab||abc/ { show($/) } else { say "NO" }
if 'abc' ~~ /^abc/ { show($/) } else { say "NO" }
if 'xabc' ~~ /abc$/ { show($/) } else { say "NO" }
if "a\nb" ~~ /^^b/ { show($/) } else { say "NO" }
if "b\na" ~~ /b$$/ { show($/) } else { say "NO" }
if 'xxabcabcxx' ~~ /<[a..c]>+/ { show($/) } else { say "NO" }
if 'aabcaa' ~~ /<-[a]>+/ { show($/) } else { say "NO" }
if 'abcde' ~~ /<[a..z] - [c]>+/ { show($/) } else { say "NO" }
if 'ab123cd' ~~ /\d+/ { show($/) } else { say "NO" }
if '12ab34' ~~ /\D+/ { show($/) } else { say "NO" }
if "a  \tb" ~~ /\s+/ { show($/) } else { say "NO" }
if '  foo_bar9 ' ~~ /\w+/ { show($/) } else { say "NO" }
if '12abc3' ~~ /<alpha>+/ { show($/) } else { say "NO" }
if 'ab12' ~~ /<digit>+/ { show($/) } else { say "NO" }
if 'abCDe' ~~ /<upper>+/ { show($/) } else { say "NO" }
if '12foo_bar baz' ~~ /<ident>/ { show($/) } else { say "NO" }
if '123' ~~ /(\d+)+/ { show($/) } else { say "NO" }
if '12 3' ~~ /[\d+]+/ { show($/) } else { say "NO" }
if '123' ~~ /(\d)+/ { show($/) } else { say "NO" }
if '' ~~ /(\d)*/ { show($/) } else { say "NO" }
if 'xxxxx' ~~ /x**3/ { show($/) } else { say "NO" }
if 'xxxxx' ~~ /x**2..4/ { show($/) } else { say "NO" }
if 'xxxxx' ~~ /x**2..*/ { show($/) } else { say "NO" }
if 'xxxxx' ~~ /x**1..^3/ { show($/) } else { say "NO" }
if '12 34 56' ~~ /(\d+)**2/ { show($/) } else { say "NO" }
if '1,2,3,' ~~ /\d+ % ','/ { show($/) } else { say "NO" }
if '1,2,3,' ~~ /\d+ %% ','/ { show($/) } else { say "NO" }
if 'ab cd ef' ~~ /<[a..z]>+ % ' '/ { show($/) } else { say "NO" }
if 'abc' ~~ /a ~ b c/ { show($/) } else { say "NO" }
if '(abc)' ~~ /'(' ~ ')' (\w+)/ { show($/) } else { say "NO" }
if 'ab' ~~ /<?before b>b/ { show($/) } else { say "NO" }
if 'ab' ~~ /a<?before b>/ { show($/) } else { say "NO" }
if 'ac' ~~ /a<!before b>/ { show($/) } else { say "NO" }
if 'ab' ~~ /<?after a>b/ { show($/) } else { say "NO" }
if 'cb' ~~ /<!after a>b/ { show($/) } else { say "NO" }
if 'hello' ~~ /(\w)$0/ { show($/) } else { say "NO" }
if 'ab12' ~~ /$<x>=(\d+)/ { show($/) } else { say "NO" }
if 'ab1' ~~ /<x=alpha>+/ { show($/) } else { say "NO" }
if 'a1b2' ~~ /[<alpha>|<digit>]+/ { show($/) } else { say "NO" }
if 'FOO' ~~ /:i foo/ { show($/) } else { say "NO" }
if 'fOo' ~~ /:i f.o/ { show($/) } else { say "NO" }
```

```stdout
M 2 5 <abc>
M 1 4 <aaa>
M 0 4 <aaab>
M 0 1 <a>
M 4 7 <123> 0=<12> 1=<3>
M 0 2 <ac> 0=<a> 1=- 2=<c>
M 0 4 <abcd> 0=<ab> 1=<c> 2=<d>
M 0 3 <abc>
M 0 1 <a>
M 0 3 <abc>
M 1 4 <abc>
M 2 3 <b>
M 0 1 <b>
M 2 8 <abcabc>
M 2 4 <bc>
M 0 2 <ab>
M 2 5 <123>
M 2 4 <ab>
M 1 4 <  \t>
M 2 10 <foo_bar9>
M 2 5 <abc> alpha=[<a>,<b>,<c>]
M 2 4 <12> digit=[<1>,<2>]
M 2 4 <CD> upper=[<C>,<D>]
M 2 9 <foo_bar> ident=<foo_bar>
M 0 3 <123> 0=[<123>]
M 0 2 <12>
M 0 3 <123> 0=[<1>,<2>,<3>]
M 0 0 <> 0=[]
M 0 3 <xxx>
M 0 4 <xxxx>
M 0 5 <xxxxx>
M 0 2 <xx>
M 0 2 <12> 0=[<1>,<2>]
M 0 5 <1,2,3>
M 0 6 <1,2,3,>
M 0 1 <a>
NO
M 0 5 <(abc)> 0=<abc>
M 1 2 <b>
M 0 1 <a>
M 0 1 <a>
M 1 2 <b>
M 1 2 <b>
M 2 4 <ll> 0=<l>
M 2 4 <12> x=<12>
M 0 2 <ab> alpha=[<a>,<b>] x=[<a>,<b>]
M 0 4 <a1b2> alpha=[<a>,<b>] digit=[<1>,<2>]
M 0 3 <FOO>
M 0 3 <fOo>
```

## ladder__rung09_regex_engine_basics_2_agree_with_rakudo

```Raku
sub esc($s) { $s.subst("\n", '\n', :g).subst("\t", '\t', :g) }
sub fmt($x) { $x ~~ Positional ?? "[" ~ $x.map({fmt($_)}).join(",") ~ "]" !! "<" ~ esc($x.Str) ~ ">" }
sub show($m) { my @o = "M {$m.from} {$m.to} <{esc($m.Str)}>"; my @l = $m.list; for ^@l.elems -> $i { @o.push: "$i=" ~ (@l[$i].defined ?? fmt(@l[$i]) !! "-") }; my %h = $m.hash; for %h.keys.sort -> $k { @o.push: "$k=" ~ fmt(%h{$k}) }; say @o.join(" ") }
if 'ab' ~~ /:s a b/ { show($/) } else { say "NO" }
if 'a   b' ~~ /:s a b/ { show($/) } else { say "NO" }
if 'a   b' ~~ /<.ws>b/ { show($/) } else { say "NO" }
if 'a b' ~~ /a<.ws>b/ { show($/) } else { say "NO" }
if 'aaab' ~~ /a+:b/ { show($/) } else { say "NO" }
if 'abc' ~~ /[a|b]+:c/ { show($/) } else { say "NO" }
if 'a' ~~ /<?>a/ { show($/) } else { say "NO" }
if 'a' ~~ /<!>a/ { show($/) } else { say "NO" }
if 'A' ~~ /\x41/ { show($/) } else { say "NO" }
if "a\tb" ~~ /\t/ { show($/) } else { say "NO" }
if 'foo' ~~ /<|w>/ { show($/) } else { say "NO" }
if 'foo' ~~ /<?wb>foo/ { show($/) } else { say "NO" }
if 'a foo b' ~~ /<<foo>>/ { show($/) } else { say "NO" }
if 'foo bar baz' ~~ /« bar »/ { show($/) } else { say "NO" }
if "a\nc" ~~ /a.c/ { show($/) } else { say "NO" }
if 'abc' ~~ /(.)(.)(.)/ { show($/) } else { say "NO" }
if 'ab' ~~ /((a)(b))/ { show($/) } else { say "NO" }
if 'ab' ~~ /((a)|(b))+/ { show($/) } else { say "NO" }
if 'b' ~~ /(a)|(b)/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a ** 2/ { show($/) } else { say "NO" }
if 'abab' ~~ /[ab]+/ { show($/) } else { say "NO" }
if 'ababab' ~~ /(ab)*/ { show($/) } else { say "NO" }
if 'aaa' ~~ /a*a/ { show($/) } else { say "NO" }
if 'a.b' ~~ /'a.b'/ { show($/) } else { say "NO" }
if 'a b' ~~ /"a b"/ { show($/) } else { say "NO" }
if '1 2 3x' ~~ /<[\d\s]>+/ { show($/) } else { say "NO" }
if 'foo bar' ~~ /<[\w]>+/ { show($/) } else { say "NO" }
if "ab\ncd" ~~ /<-[\n]>+/ { show($/) } else { say "NO" }
if 'abxyzd' ~~ /<[a..c]+[x..z]>+/ { show($/) } else { say "NO" }
if 'ABC' ~~ /:i abc/ { show($/) } else { say "NO" }
if 'abcabc' ~~ /abc ** 2/ { show($/) } else { say "NO" }
if 'b' ~~ /[a || b]/ { show($/) } else { say "NO" }
if 'abc' ~~ /[ab | a]/ { show($/) } else { say "NO" }
if 'a' ~~ /[ | a]/ { show($/) } else { say "NO" }
if 'abcd' ~~ /ab ~ c d/ { show($/) } else { say "NO" }
if 'abab' ~~ /<[ab]>**2/ { show($/) } else { say "NO" }
if "a \tb" ~~ /\h+/ { show($/) } else { say "NO" }
if "a\nb" ~~ /\v/ { show($/) } else { say "NO" }
if 'aab' ~~ /a ** 1..3 b/ { show($/) } else { say "NO" }
if 'yyy' ~~ /x*/ { show($/) } else { say "NO" }
if 'b' ~~ /<[a]>?/ { show($/) } else { say "NO" }
if '12345' ~~ /\d ** 3/ { show($/) } else { say "NO" }
if 'ab1' ~~ /$<n>=<alpha>+/ { show($/) } else { say "NO" }
if 'ab1' ~~ /(<alpha>)+/ { show($/) } else { say "NO" }
if 'a1b2c' ~~ /[<alpha> <digit>]+/ { show($/) } else { say "NO" }
if 'a1' ~~ /<alpha> <digit>/ { show($/) } else { say "NO" }
if 'abcd' ~~ /'ab' 'cd'/ { show($/) } else { say "NO" }
if 'a b' ~~ /:s (a) (b)/ { show($/) } else { say "NO" }
if 'a b' ~~ /:s  a b / { show($/) } else { say "NO" }
```

```stdout
NO
M 0 5 <a   b>
M 1 5 <   b>
M 0 3 <a b>
M 0 4 <aaab>
M 0 3 <abc>
M 0 1 <a>
NO
M 0 1 <A>
M 1 2 <\t>
M 0 0 <>
M 0 3 <foo>
M 2 5 <foo>
M 4 7 <bar>
M 0 3 <a\nc>
M 0 3 <abc> 0=<a> 1=<b> 2=<c>
M 0 2 <ab> 0=<ab>
M 0 2 <ab> 0=[<a>,<b>]
M 0 1 <b> 0=<b>
M 0 2 <aa>
M 0 4 <abab>
M 0 6 <ababab> 0=[<ab>,<ab>,<ab>]
M 0 3 <aaa>
M 0 3 <a.b>
M 0 3 <a b>
M 0 5 <1 2 3>
M 0 3 <foo>
M 0 2 <ab>
M 0 5 <abxyz>
M 0 3 <ABC>
NO
M 0 1 <b>
M 0 2 <ab>
M 0 1 <a>
NO
M 0 2 <ab>
M 1 3 < \t>
M 1 2 <\n>
M 0 3 <aab>
M 0 0 <>
M 0 0 <>
M 0 3 <123>
M 0 2 <ab> alpha=[<a>,<b>] n=[<a>,<b>]
M 0 2 <ab> 0=[<a>,<b>]
M 0 4 <a1b2> alpha=[<a>,<b>] digit=[<1>,<2>]
M 0 2 <a1> alpha=<a> digit=<1>
M 0 4 <abcd>
M 0 3 <a b> 0=<a> 1=<b>
M 0 3 <a b>
```

## ladder__rung09_regex_engine_basics_3_agree_with_rakudo

```Raku
sub esc($s) { $s.subst("\n", '\n', :g).subst("\t", '\t', :g) }
sub fmt($x) { $x ~~ Positional ?? "[" ~ $x.map({fmt($_)}).join(",") ~ "]" !! "<" ~ esc($x.Str) ~ ">" }
sub show($m) { my @o = "M {$m.from} {$m.to} <{esc($m.Str)}>"; my @l = $m.list; for ^@l.elems -> $i { @o.push: "$i=" ~ (@l[$i].defined ?? fmt(@l[$i]) !! "-") }; my %h = $m.hash; for %h.keys.sort -> $k { @o.push: "$k=" ~ fmt(%h{$k}) }; say @o.join(" ") }
if '  a' ~~ /<ws>a/ { show($/) } else { say "NO" }
if 'a' ~~ /'' a/ { show($/) } else { say "NO" }
if '123' ~~ /\d+ <!before \d>/ { show($/) } else { say "NO" }
if 'abc' ~~ /\w+ <?after \w>/ { show($/) } else { say "NO" }
if '12  ab' ~~ /(\d+) \s+ (\w+)/ { show($/) } else { say "NO" }
if 'xabay' ~~ /'x' <[ab]>+ 'y'/ { show($/) } else { say "NO" }
if 'aa' ~~ /'a'**2/ { show($/) } else { say "NO" }
if 'abbbc' ~~ /b+/ { show($/) } else { say "NO" }
if 'abbbc' ~~ /b+?/ { show($/) } else { say "NO" }
if 'abbbc' ~~ /b*/ { show($/) } else { say "NO" }
if 'abbbc' ~~ /b??/ { show($/) } else { say "NO" }
if 'bbbbb' ~~ /[b ** 2]+/ { show($/) } else { say "NO" }
if 'bbbbb' ~~ /(b ** 2)+/ { show($/) } else { say "NO" }
if 'abba' ~~ /(a|b)+/ { show($/) } else { say "NO" }
if 'abbac' ~~ /(a|b)*c/ { show($/) } else { say "NO" }
if 'abbc' ~~ /<[ab]>+ c/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /(a+)(a+)/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /(a+?)(a+)/ { show($/) } else { say "NO" }
if 'aaaa' ~~ /(a+)(a+?)/ { show($/) } else { say "NO" }
if 'abc' ~~ /^ <[a..z]>+ $/ { show($/) } else { say "NO" }
if 'ab1' ~~ /^ <[a..z]>+ $/ { show($/) } else { say "NO" }
if '>abc' ~~ /'>' <[a..z]>+/ { show($/) } else { say "NO" }
if '>abc' ~~ /\> abc/ { show($/) } else { say "NO" }
if '<abc' ~~ /\< abc/ { show($/) } else { say "NO" }
if 'a>b' ~~ /<[<>]>/ { show($/) } else { say "NO" }
if '>' ~~ /[\>]/ { show($/) } else { say "NO" }
if 'a\'b' ~~ /'\''/ { show($/) } else { say "NO" }
if '\'abc\'' ~~ /\' abc/ { show($/) } else { say "NO" }
if '"abc"' ~~ /\" abc/ { show($/) } else { say "NO" }
if "\\\n" ~~ /\\ n/ { show($/) } else { say "NO" }
if '$abc' ~~ /\$ abc/ { show($/) } else { say "NO" }
if '@abc' ~~ /\@ abc/ { show($/) } else { say "NO" }
if '&abc' ~~ /\& abc/ { show($/) } else { say "NO" }
if '|abc' ~~ /\| abc/ { show($/) } else { say "NO" }
if '~abc' ~~ /\~ abc/ { show($/) } else { say "NO" }
if '%abc' ~~ /\% abc/ { show($/) } else { say "NO" }
if ':abc' ~~ /\: abc/ { show($/) } else { say "NO" }
if ';abc' ~~ /\; abc/ { show($/) } else { say "NO" }
if ',abc' ~~ /\, abc/ { show($/) } else { say "NO" }
if '!abc' ~~ /\! abc/ { show($/) } else { say "NO" }
if '=abc' ~~ /\= abc/ { show($/) } else { say "NO" }
if '-abc' ~~ /\- abc/ { show($/) } else { say "NO" }
if '+abc' ~~ /\+ abc/ { show($/) } else { say "NO" }
if '*abc' ~~ /\* abc/ { show($/) } else { say "NO" }
if '?abc' ~~ /\? abc/ { show($/) } else { say "NO" }
if '.abc' ~~ /\. abc/ { show($/) } else { say "NO" }
if '^abc' ~~ /\^ abc/ { show($/) } else { say "NO" }
if '(abc)' ~~ /\( abc \)/ { show($/) } else { say "NO" }
if '[abc]' ~~ /\[ abc \]/ { show($/) } else { say "NO" }
```

```stdout
M 0 3 <  a> ws=<  >
M 0 1 <a>
M 0 3 <123>
M 0 3 <abc>
M 0 6 <12  ab> 0=<12> 1=<ab>
M 0 5 <xabay>
M 0 2 <aa>
M 1 4 <bbb>
M 1 2 <b>
M 0 0 <>
M 0 0 <>
M 0 4 <bbbb>
M 0 4 <bbbb> 0=[<bb>,<bb>]
M 0 4 <abba> 0=[<a>,<b>,<b>,<a>]
M 0 5 <abbac> 0=[<a>,<b>,<b>,<a>]
M 0 4 <abbc>
M 0 4 <aaaa> 0=<aaa> 1=<a>
M 0 4 <aaaa> 0=<a> 1=<aaa>
M 0 4 <aaaa> 0=<aaa> 1=<a>
M 0 3 <abc>
NO
M 0 4 <>abc>
M 0 4 <>abc>
M 0 4 <<abc>
M 1 2 <>>
M 0 1 <>>
M 1 2 <'>
M 0 4 <'abc>
M 0 4 <"abc>
NO
M 0 4 <$abc>
M 0 4 <@abc>
M 0 4 <&abc>
M 0 4 <|abc>
M 0 4 <~abc>
M 0 4 <%abc>
M 0 4 <:abc>
M 0 4 <;abc>
M 0 4 <,abc>
M 0 4 <!abc>
M 0 4 <=abc>
M 0 4 <-abc>
M 0 4 <+abc>
M 0 4 <*abc>
M 0 4 <?abc>
M 0 4 <.abc>
M 0 4 <^abc>
M 0 5 <(abc)>
M 0 5 <[abc]>
```

## ladder__rung09_regex_engine_classes_1_agree_with_rakudo

```Raku
sub esc($s) { $s.subst("\n", '\n', :g).subst("\t", '\t', :g) }
sub fmt($x) { $x ~~ Positional ?? "[" ~ $x.map({fmt($_)}).join(",") ~ "]" !! "<" ~ esc($x.Str) ~ ">" }
sub show($m) { my @o = "M {$m.from} {$m.to} <{esc($m.Str)}>"; my @l = $m.list; for ^@l.elems -> $i { @o.push: "$i=" ~ (@l[$i].defined ?? fmt(@l[$i]) !! "-") }; my %h = $m.hash; for %h.keys.sort -> $k { @o.push: "$k=" ~ fmt(%h{$k}) }; say @o.join(" ") }
if 'a-' ~~ /<[-a]>+/ { show($/) } else { say "NO" }
if 'a-' ~~ /<[a-]>+/ { show($/) } else { say "NO" }
if 'a-' ~~ /<[\-]>+/ { show($/) } else { say "NO" }
if 'a-z' ~~ /<[a\-z]>+/ { show($/) } else { say "NO" }
if 'abc' ~~ /<[a .. z]>+/ { show($/) } else { say "NO" }
if 'ABCD' ~~ /<[\x41..\x43]>+/ { show($/) } else { say "NO" }
if "a\nb" ~~ /<[\n]>/ { show($/) } else { say "NO" }
if "a\t\nb" ~~ /<[\t \n]>+/ { show($/) } else { say "NO" }
if 'a b' ~~ /<[ ]>/ { show($/) } else { say "NO" }
if 'a b' ~~ /<[\ ]>/ { show($/) } else { say "NO" }
if 'a b' ~~ /<[a b]>+/ { show($/) } else { say "NO" }
if 'a\'' ~~ /<[']>/ { show($/) } else { say "NO" }
if 'a"' ~~ /<["]>/ { show($/) } else { say "NO" }
if 'a]' ~~ /<[\]]>+/ { show($/) } else { say "NO" }
if 'a[' ~~ /<[\[]>/ { show($/) } else { say "NO" }
if '^a' ~~ /<[^a]>/ { show($/) } else { say "NO" }
if 'a^' ~~ /<[a^]>+/ { show($/) } else { say "NO" }
if 'abcb' ~~ /<[a..c] - [b]>+/ { show($/) } else { say "NO" }
if 'abcb' ~~ /<[a..c]-[b]>+/ { show($/) } else { say "NO" }
if 'abxc' ~~ /<[a..c]+[x]>+/ { show($/) } else { say "NO" }
if '12ab' ~~ /<-alpha>+/ { show($/) } else { say "NO" }
if 'ab' ~~ /<-[a]>/ { show($/) } else { say "NO" }
if 'ba' ~~ /<+alpha-[a]>+/ { show($/) } else { say "NO" }
if 'bab' ~~ /<[\w]-[a]>+/ { show($/) } else { say "NO" }
if '12a' ~~ /<[\d]>+/ { show($/) } else { say "NO" }
if 'A' ~~ /\x[41]/ { show($/) } else { say "NO" }
if 'A' ~~ /\x41/ { show($/) } else { say "NO" }
if 'AB' ~~ /\x41\x42/ { show($/) } else { say "NO" }
if 'AB' ~~ /\x[41,42]/ { show($/) } else { say "NO" }
if 'A' ~~ /\o101/ { show($/) } else { say "NO" }
if 'A' ~~ /\c65/ { show($/) } else { say "NO" }
if 'a' ~~ /\0/ { show($/) } else { say "NO" }
if 'a b' ~~ /\s/ { show($/) } else { say "NO" }
if '  ab ' ~~ /\S+/ { show($/) } else { say "NO" }
if '  ab ' ~~ /\H+/ { show($/) } else { say "NO" }
if 'a  b' ~~ /\h+/ { show($/) } else { say "NO" }
if "ab\ncd" ~~ /\N+/ { show($/) } else { say "NO" }
if 'ab,. 1' ~~ /\W+/ { show($/) } else { say "NO" }
if 'ab12' ~~ /\D+/ { show($/) } else { say "NO" }
if 'a' ~~ /\X41/ { show($/) } else { say "NO" }
if 'AAb' ~~ /\X[41]+/ { show($/) } else { say "NO" }
if "a\nb" ~~ /\n/ { show($/) } else { say "NO" }
if "a\tb" ~~ /\T/ { show($/) } else { say "NO" }
if 'a' ~~ /\E/ { show($/) } else { say "NO" }
if '1a' ~~ /\d\D/ { show($/) } else { say "NO" }
if "\n" ~~ /./ { show($/) } else { say "NO" }
if "a\nb" ~~ /^^a/ { show($/) } else { say "NO" }
if "a\nb" ~~ /a$$/ { show($/) } else { say "NO" }
if 'a' ~~ /./ { show($/) } else { say "NO" }
```

```stdout
M 0 2 <a->
M 0 2 <a->
M 1 2 <->
M 0 3 <a-z>
M 0 3 <abc>
M 0 3 <ABC>
M 1 2 <\n>
M 1 3 <\t\n>
NO
M 1 2 < >
M 0 1 <a>
M 1 2 <'>
M 1 2 <">
M 1 2 <]>
M 1 2 <[>
M 0 1 <^>
M 0 2 <a^>
M 0 1 <a>
M 0 1 <a>
M 0 4 <abxc>
M 0 2 <12>
M 1 2 <b>
M 0 1 <b>
M 0 1 <b>
M 0 2 <12>
M 0 1 <A>
M 0 1 <A>
M 0 2 <AB>
M 0 2 <AB>
M 0 1 <A>
M 0 1 <A>
NO
M 1 2 < >
M 2 4 <ab>
M 2 4 <ab>
M 1 3 <  >
M 0 2 <ab>
M 2 5 <,. >
M 0 2 <ab>
M 0 1 <a>
M 2 3 <b>
M 1 2 <\n>
M 0 1 <a>
M 0 1 <a>
M 0 2 <1a>
M 0 1 <\n>
M 0 1 <a>
M 0 1 <a>
M 0 1 <a>
```

## scrip_test_rk_combinator

```Raku
# rk_combinator.raku — PEG ordered-choice combinator parser
#
# Demonstrates BB_PUMP architecture: each parser combinator is a sub that
# returns the new position on success or -1 on failure. Ordered choice
# (PEG ||) is sequential if/else — try alt1, if -1 try alt2.
#
# The gather { take tok } block is structurally present as a BB_PUMP-ready
# generator. In the polyglot broker context (SNOBOL4 or Icon driving via
# AST_EVERY), each take() suspends and yields one parse token to the consumer.
# In standalone --run, parse_expr() emits tokens via say() directly.
#
# Grammar (PEG, ordered choice):
#   expr  <- term ((addop || mulop) term)*
#   term  <- digit
#   addop <- '+' || '-'
#   mulop <- '*' || '/'
#   digit <- '0'..'9'
#
# Input "3+4*2" encoded in char_at() — Tiny-Raku has no string indexing.
# A full Raku implementation would use: substr($s, $pos, 1).

sub char_at($pos) {
    if ($pos == 0) { return '3'; }
    if ($pos == 1) { return '+'; }
    if ($pos == 2) { return '4'; }
    if ($pos == 3) { return '*'; }
    if ($pos == 4) { return '2'; }
    return '';
}

sub is_digit($c) {
    if ($c eq '0') { return 1; } if ($c eq '1') { return 1; }
    if ($c eq '2') { return 1; } if ($c eq '3') { return 1; }
    if ($c eq '4') { return 1; } if ($c eq '5') { return 1; }
    if ($c eq '6') { return 1; } if ($c eq '7') { return 1; }
    if ($c eq '8') { return 1; } if ($c eq '9') { return 1; }
    return 0;
}

# --- Primitive combinators (PEG ordered choice via if/else) ---

# p_digit: succeeds if char at $pos is a digit (ordered choice '0'||'1'||...'9')
sub p_digit($pos) {
    my $c = char_at($pos);
    if (is_digit($c) == 1) { return $pos + 1; }
    return -1;
}

# p_addop: ordered choice '+' || '-'
sub p_addop($pos) {
    my $c = char_at($pos);
    if ($c eq '+') { return $pos + 1; }
    if ($c eq '-') { return $pos + 1; }
    return -1;
}

# p_mulop: ordered choice '*' || '/'
sub p_mulop($pos) {
    my $c = char_at($pos);
    if ($c eq '*') { return $pos + 1; }
    if ($c eq '/') { return $pos + 1; }
    return -1;
}

# p_op: ordered choice addop || mulop  (PEG left-to-right, no backtrack)
sub p_op($pos) {
    my $r = p_addop($pos);
    if ($r != -1) { return $r; }
    return p_mulop($pos);
}

# --- Token emitter: say() in standalone mode; take() drives BB_PUMP in broker ---

sub emit($label, $val) {
    say('  ' ~ $label ~ ' ' ~ $val);
}

# --- Top-level parser: expr <- term (op term)* ---
# gather { take tok } is the BB_PUMP generator shell — structurally ready for
# AST_EVERY-driven consumption by a broker consumer (SNOBOL4/Icon/Prolog).
# In standalone --run, emit() (say) produces the token stream directly.

sub parse_expr($len) {
    my $pos = 0;
    my $ok = 1;

    my $r0 = p_digit($pos);
    if ($r0 == -1) {
        emit('FAIL', 'expected digit at 0');
        $ok = 0;
    }
    if ($ok == 1) {
        emit('digit', char_at($pos));
        $pos = $r0;

        while ($pos < $len) {
            my $ro = p_op($pos);
            if ($ro == -1) {
                $pos = $len;
            }
            if ($ro != -1) {
                my $op = char_at($pos);
                $pos = $ro;
                my $rd = p_digit($pos);
                if ($rd == -1) {
                    emit('FAIL', 'expected digit after op');
                    $pos = $len;
                    $ok = 0;
                }
                if ($rd != -1) {
                    emit('op   ', $op);
                    emit('digit', char_at($pos));
                    $pos = $rd;
                }
            }
        }
    }
    return $ok;
}

sub main() {
    say('parse: 3+4*2');
    my $result = parse_expr(5);
    if ($result == 1) { say('ok'); }
    if ($result != 1) { say('fail'); }
}
main();
```

## rewrite__rr13_integration

```Raku
class Word { has Str $.text; has Int $.n is rw = 0 }
grammar Words {
    token TOP { [<w> \s*]+ }
    token w { \w+ }
}
my %seen;
for Words.parse("the cat and the dog and the bird")<w> -> $m {
    my $t = ~$m; %seen{$t} //= Word.new(text => $t); %seen{$t}.n++;
}
my @top = %seen.values.sort({ $^b.n <=> $^a.n || $^a.text cmp $^b.text }).head(2);
say @top.map({ "{.text}={.n}" }).join(",");
my $s = gather for %seen.keys.sort { take .uc if .chars == 3 };
say $s.join(" ");
sub safe-div($a, $b) { $b == 0 ?? fail("div0") !! $a / $b }
say (safe-div(1, 0) // "nan"), " ", safe-div(6, 3);
```

```stdout
the=3,and=2
AND CAT DOG THE
nan 2
```

