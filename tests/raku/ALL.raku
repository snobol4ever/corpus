#-------------------------------------------------------- 1 ladder__rung00_hello
say "Hello, world!";
#------------------------------------------ 2 ladder__rung00_hello_multiple_args
say "a", "b", "c";
#---------------------------------------- 3 ladder__rung00_hello_numeric_literal
say 42;
#-- 4 ladder__rung01_variables_a_constant_named_like_a_core_type_is_the_constant
constant X = 2 * 3; say X;
#- 5 ladder__rung01_variables_a_native_integer_type_name_is_a_term_that_prints_in_parentheses
say int8;
#- 6 ladder__rung01_variables_a_native_string_type_name_is_a_term_that_prints_in_parentheses
say str;
#----------------------- 7 ladder__rung01_variables_a_version_literal_is_a_value
say v1.2.3;
#---- 8 ladder__rung01_variables_a_version_literal_with_a_letter_part_is_a_value
say v6.d;
#------- 9 ladder__rung01_variables_pod_in_a_program_with_no_pod_has_no_elements
say $=pod.elems;
#---------- 10 ladder__rung01_variables_pod_in_a_program_with_no_pod_is_an_array
say $=pod.WHAT;
#-- 11 ladder__rung01_variables_the_compile_time_variable_bits_is_the_integer_64
say $?BITS;
#- 12 ladder__rung01_variables_the_compile_time_variable_package_names_the_global_package
say $?PACKAGE.^name;
#- 13 ladder__rung01_variables_the_compile_time_variable_tabstop_is_the_integer_8
say $?TABSTOP;
#-------------------------------- 14 ladder__rung022_quote_q_backslash_backslash
say q{a\\b};
#----------------------------------- 15 ladder__rung022_quote_q_backslash_closer
say q{a\}b};
#----------------------------------- 16 ladder__rung022_quote_q_doubled_brackets
say q{{a b}};
#---------------------- 17 ladder__rung022_quote_q_doubled_brackets_inner_closer
say q{{a}b}};
#-------------------------------------- 18 ladder__rung022_quote_q_nested_braces
say q{a{b}c};
#----------------------------- 19 ladder__rung022_quote_q_space_before_delimiter
say q {a b};
#------------------------------------ 20 ladder__rung028_quote_qq_guard_closures
say qq/{1 + 1} a{ 2 * 3 }b/;
#------------------------------------- 21 ladder__rung028_quote_qq_guard_escapes
say qq/\t|\x41|\x[42,43]|\c65|\c[LATIN SMALL LETTER A]|\\|\"/;
#----------------------------- 22 ladder__rung029_quote_qw_escaped_nested_closer
say qw{a {b\} c} d}.raku;
#----------------------------------- 23 ladder__rung02_arithmetic_division_float
say 7 / 2;
#-------------------------------------- 24 ladder__rung02_arithmetic_integer_div
say 7 div 2;
#------------------------------------- 25 ladder__rung03_strings_repeat_operator
say "ab" x 3;
#------------------------------------ 26 ladder__rung09_string_methods_lc_method
say "RAKU".lc;
#-------------------------------- 27 ladder__rung09_string_methods_substr_method
say "Hello".substr(1,3);
#---------------------------------- 28 ladder__rung09_string_methods_trim_method
say "  hi  ".trim;
#-------------------------------------------------- 29 parse_census__bare_module
module A { } say "hi";
#----------------------------------------------------------- 30 parser__atom_int
42;
#----------------------------------------------------------- 31 parser__atom_str
"hello";
#--------------------------------------------------------- 32 parser__spurt_file
spurt("/tmp/out.txt", "hello");
#-------------------------------------- 33 parser_coverage__stmt_ctrl_CATCH_free
CATCH { say "caught"; }
#----------------------------------------- 34 parser_coverage__stmt_ctrl_CONTROL
CONTROL { say "control"; }
#-------------------------------------------- 35 parser_coverage__stmt_ctrl_QUIT
QUIT { say "quit"; }
#------------------------------------------ 36 parser_coverage__stmt_ctrl_import
import MyModule;
#-------------------------------------------- 37 parser_coverage__stmt_ctrl_need
need Foo::Bar;
#---------------------------------------------- 38 parser_coverage__stmt_ctrl_no
no strict;
#----------------------------------------- 39 parser_coverage__stmt_ctrl_require
require Some::Module;
#--------------------------------------------- 40 parser_coverage__stmt_ctrl_use
use v6;
#---------------------------------------------------------- 41 simple_program_18
say 7 %% 3;
#---------------------------------------------------------- 42 simple_program_19
say 6 %% 3;
#---------------------------------------------------------- 43 simple_program_20
say 0 %% 5;
#---------------------------------------------------------- 44 simple_program_23
say "hello".ends-with("xy");
#---------------------------------------------------------- 45 simple_program_24
say "hello".ends-with("lo");
#---------------------------------------------------------- 46 simple_program_27
say ord("A");
#---------------------------------------------------------- 47 simple_program_28
say "Z".ord;
#---------------------------------------------------------- 48 simple_program_29
say 2 ** 10;
#---------------------------------------------------------- 49 simple_program_30
say 2 ** 3 ** 2;
#---------------------------------------------------------- 50 simple_program_31
say 3 + 2 ** 3;
#---------------------------------------------------------- 51 simple_program_32
say 2 * 3 ** 2;
#---------------------------------------------------------- 52 simple_program_33
say -2 ** 2;
#---------------------------------------------------------- 53 simple_program_34
print "a", "b"; say "";
#---------------------------------------------------------- 54 simple_program_37
say sqrt(2);
#---------------------------------------------------------- 55 simple_program_39
say [+] ();
#---------------------------------------------------------- 56 simple_program_40
say [+] (1, 2, 3, 4);
#---------------------------------------------------------- 57 simple_program_41
say [+] 5;
#---------------------------------------------------------- 58 simple_program_43
say [max] (3, 1, 4, 2);
#---------------------------------------------------------- 59 simple_program_44
say [min] (3, 1, 4, 2);
#---------------------------------------------------------- 60 simple_program_45
say [*] ();
#---------------------------------------------------------- 61 simple_program_46
say [*] (1, 2, 3, 4);
#---------------------------------------------------------- 62 simple_program_47
say [*] 7;
#---------------------------------------------------------- 63 simple_program_48
say [-] (1, 2, 3, 4);
#---------------------------------------------------------- 64 simple_program_49
say 1, 2, 3;
#----------------------------------------------------------- 65 simple_program_5
say chr(97);
#---------------------------------------------------------- 66 simple_program_50
say "a", "b", "c";
#---------------------------------------------------------- 67 simple_program_56
 say "b" ge "a" ?? "y" !! "n"; 
#---------------------------------------------------------- 68 simple_program_57
 say "b" gt "a" ?? "y" !! "n"; 
#---------------------------------------------------------- 69 simple_program_58
 say "abc" le "abc" ?? "y" !! "n"; 
#---------------------------------------------------------- 70 simple_program_59
 say "abc" lt "abd" ?? "y" !! "n"; 
#----------------------------------------------------------- 71 simple_program_6
say chr(65);
#---------------------------------------------------------- 72 simple_program_60
 say "10" lt "9" ?? "y" !! "n"; 
#---------------------------------------------------------- 73 simple_program_61
say "hello".starts-with("xy");
#---------------------------------------------------------- 74 simple_program_62
say "hello".starts-with("he");
#---------------------------------------------------------- 75 simple_program_66
say <x y z>.elems;
#---------------------------------------------------------- 76 simple_program_67
say "ab" x 3;
#---------------------------------------------------------- 77 simple_program_69
say "-" x 5;
#----------------------------------------------------------- 78 simple_program_7
say 65.chr;
#---------------------------------------------------------- 79 simple_program_70
say 2 + 3 x 2;
#---------------------------------------------------------- 80 simple_program_72
say 7 x 2;
#---------------------------------------------------------- 81 simple_program_75
say "ab" x 3;
#----------------------------------------------------------- 82 simple_program_8
say chr(ord("Q"));
#------------------------------------------------------------- 83 test_print_str
print "world\n";
#--------------------------------------------------------------- 84 test_say_int
say 5;
#--------------------------------------------------------------- 85 test_say_str
say "hi";
#---------------------------------------------------------- 86 test_use_revision
use v6.e.PREVIEW; say "hi";
#-------------------------------------- 87 ladder__rung00_hello_print_no_newline
print "no newline";
say "end";
#-------------------------------------------- 88 ladder__rung025_kw_nan_nan_sign
say NaN.sign;
say NaN.sign.WHAT;
#----------------------------------------- 89 ladder__rung026_lit_radix_call_big
say :16("ffffffffffffffffffff");
say :36("zzzzzzzzzzzzzzzz");
#------------------------------------ 90 ladder__rung026_lit_radix_fraction_type
say :16<ff.8>.WHAT;
say :3<1.1>.WHAT;
#------------------------------ 91 ladder__rung026_lit_radix_fraction_underscore
say :16<f_f.f_f>;
say :10<1_0.0_5>.nude;
#---------------------------------------- 92 ladder__rung026_lit_radix_scale_big
say :16<ffffffffffffffffff*2**4>;
say :16<ffffffffffffffffff.8>;
#--------------------------------------- 93 ladder__rung027_quote_q_adverb_order
say Q:q:b/a\\b\tc/;
say Q:b:q/a\\b\tc/;
#------------------------------------------- 94 ladder__rung027_quote_q_b_adverb
say Q:b/a\tb\\c\x41/;
say Q:b/x\"y\|z\ w/;
#------------------------------------- 95 ladder__rung027_quote_q_negated_adverb
say Q:b:!b/a\nb/;
say Q:qq:!b/a\nb/;
#------------------------------------------- 96 ladder__rung027_quote_q_q_adverb
say Q:q/a\\b a\/b a\tb/;
say Q:q{a\{b\}c};
#----------------------------------- 97 ladder__rung027_quote_q_q_adverb_unicode
say Q:q«a\»b\«c»;
say Q:q<a\>b>;
#------------------------------------- 98 ladder__rung027_quote_q_spaced_adverbs
say Q :qq /a\tb/;
say Q :w /a b/.elems;
#-------------------------------------- 99 ladder__rung028_quote_qq_escape_octal
say qq/\o101\o[102,103]/;
say qq/a\o40b/;
#--------------------- 100 ladder__rung029_quote_qw_backslash_stays_or_collapses
say qw<a\\b c>.raku;
say qw<a\ b c>.raku;
#---------------------------------- 101 ladder__rung029_quote_qw_delimiter_comma
say qw,a b,.raku;
say qw,,.elems;
#------------------------------ 102 ladder__rung029_quote_qw_delimiter_semicolon
say qw;a b;.raku;
say qw ; c d ;.raku;
#--------------------------------- 103 ladder__rung029_quote_qw_doubled_brackets
say qw<<a b>>.raku;
say qw{{a b}}.raku;
#--------------------------------------- 104 ladder__rung029_quote_qw_empty_body
say qw<>.elems;
say qw{ }.elems;
#----------------------------------- 105 ladder__rung029_quote_qw_escaped_closer
say qw<a\>b c>.raku;
say qw/a\/b c/.raku;
#------------------------ 106 ladder__rung029_quote_qw_escaped_doubled_delimiter
say qw<<a\>>b c>>.raku;
say qw{{a\{{b c}}.raku;
#---------------------- 107 ladder__rung029_quote_qw_escaped_multibyte_delimiter
say qw«a\»b c».raku;
say qw｢a\｣b｣.raku;
#----------------------------------- 108 ladder__rung029_quote_qw_escaped_opener
say qw<a\<b c>.raku;
say qw[a\[b c].raku;
#---------------------------- 109 ladder__rung029_quote_qw_integer_words_are_str
say qw<1 2>[1].WHAT;
say qw<0x10 1e3>.raku;
#---------------------------------- 110 ladder__rung029_quote_qw_nested_brackets
say qw{a {b c} d}.raku;
say qw[a [b c] d].raku;
#------------------------------- 111 ladder__rung029_quote_qw_single_word_is_str
say qw<a>.WHAT;
say qw<1>.WHAT;
#------------------------------------ 112 ladder__rung029_quote_qw_spaced_opener
say qw <a b>.raku;
say qw {c d}.raku;
#----------------------------- 113 ladder__rung029_quote_qw_words_decimal_is_str
say qw<1.5>.WHAT;
say qw<1.50>;
#---------------------------- 114 ladder__rung029_quote_qw_words_fraction_is_str
say qw<1/2>.WHAT;
say qw[3/4].raku;
#---------------------- 115 ladder__rung029_quote_qw_words_signed_decimal_is_str
say qw<-1.5>.raku;
say qw< +1.5 >.raku;
#------- 116 ladder__rung02_arithmetic_is_prime_coerces_a_string_a_num_and_a_rat
say "2.0".is-prime, " ", "2.1".is-prime, " ", "-4.0".is-prime, " ", 7e0.is-prime, " ", 6.5.is-prime, " ", 3.0.is-prime;
say "".is-prime, " ", "5".is-prime;
#- 117 ladder__rung02_arithmetic_is_prime_decides_a_bignum_and_a_full_width_integer
say 45724385972894572891.is-prime, " ", (2**127 - 1).is-prime, " ", 32416187773.is-prime;
say 1000000007.is-prime, " ", 18446744073709551557.is-prime, " ", 9223372036854775783.is-prime;
#------------------------------- 118 ladder__rung02_arithmetic_negative_operands
say -7 % 2;
say -7 div 2;
#- 119 ladder__rung03_strings_a_decoded_dollar_in_a_double_quoted_string_is_literal
say "\c[DOLLAR SIGN]\c[LATIN SMALL LETTER I]";
say "a\x[24]i b";
#- 120 ladder__rung06_control_begin_enter_and_leave_phasers_run_inside_an_eval_string
use MONKEY-SEE-NO-EVAL; EVAL q{ BEGIN { say "y" } }; EVAL q{ ENTER { say "e" }; say "x" };
EVAL q{ LEAVE { say "l" }; say "m" }; say "z";
#------------- 121 ladder__rung07_subs_a_subset_name_is_a_term_with_its_own_name
subset EvenNum of Int where * %% 2;
say EvenNum.^name;
#--------- 122 ladder__rung13_classes_a_package_name_is_a_term_with_its_own_name
package Pk { }
say Pk.^name;
#----------- 123 ladder__rung13_classes_an_enum_name_is_a_term_with_its_own_name
enum Colors <red green blue>;
say Colors.^name;
#----------------- 124 ladder__rung13_classes_an_enum_takes_a_parenthesised_list
enum Day (:Sun(1), "Mon", "Tue");
say Mon + Tue + Sun;
#- 125 ladder__rung16_bool_a_plan_that_no_test_ran_reports_the_mismatch_on_standard_output
use Test;
plan 2;
#- 126 ladder__rung17_compare_the_container_identity_operator_answers_a_boolean_and_cmp_ok_takes_it
say Mu =:= Mu, " ", 1 =:= 2, " ", "a" =:= "a", " ", (5 !=:= 6);
use Test; cmp-ok Mu, "=:=", Mu, "cmp-ok takes =:=";
#---------------------------------------------------------- 127 simple_assign_44
constant PI = 3;
say PI;
#---------------------------------------------------------- 128 simple_assign_45
constant N = 10;
say N + 5;
#--------------------------------------------------------- 129 simple_program_12
say 3 + 7/2;
say 7/2 - 2;
#--------------------------------------------------------- 130 simple_program_22
say 1;;
say 2;
#--------------------------------------------------------- 131 simple_program_38
print 4.0;
say "";
#- 132 ladder__rung01_variables_the_finish_pod_variable_holds_the_text_after_the_marker
say $=finish.chars;
=finish
abc
#------------------------------------------ 133 ladder__rung026_lit_radix_bigint
say 0xFFFFFFFFFFFFFFFFFFFF + 1;
say :16<10000000000000000>;
say :36<zzzzzzzzzzzzzz>;
#------------------------------------ 134 ladder__rung026_lit_radix_bracket_list
say :16[1,2,3];
say :60[1,30,0];
say :16[255,1];
#-------------------------------------- 135 ladder__rung026_lit_radix_call_colon
say :10(":16<ff>");
say :10(":2<1.1>");
say :10(":36<zz>");
#--------------------------------- 136 ladder__rung026_lit_radix_call_underscore
say :16("f_f");
say :16("0x_ff");
say :10("0xff_ff");
#----------------------------------- 137 ladder__rung026_lit_radix_fraction_nude
say :16<ff.8>.nude;
say :3<1.1>.nude;
say :2<0.1>.nude;
#---------------------------- 138 ladder__rung026_lit_radix_fraction_zero_is_int
say :16<1.0>.WHAT;
say :2<1.00>.WHAT;
say :16<1.80>.nude;
#-------------------------------------- 139 ladder__rung026_lit_radix_scale_type
say :10<12*10**2>.WHAT;
say :2<1.1*2**3>.WHAT;
say :2<1.1*2**3>.nude;
#------------------------------------------- 140 ladder__rung026_lit_radix_types
say :16<ff>.WHAT;
say 0x1F.WHAT;
say :16[1,2,3].WHAT;
#--------------------------------------- 141 ladder__rung027_quote_q_c_b_escapes
say Q:c:b/{uc "z"}/;
say Q:c:b/\{uc "z"}/;
say Q:c:b/\\{uc "z"}/;
#------------------------------------ 142 ladder__rung027_quote_q_plain_brackets
say Q{a{b}c};
say Q[a[b]c];
say Q<a<b>c>;
#-------------------------- 143 ladder__rung027_quote_q_plain_unicode_delimiters
say Q«abc»;
say Q「abc」;
say Q｢a\nb｣;
#----------------------------------------- 144 ladder__rung028_quote_qq_adverb_f
say Q:f:b/&uc("z")/;
say Q:f:b/\&uc("z")/;
say Q:f:b/\\&uc("z")/;
#--------------------------------- 145 ladder__rung029_quote_qw_other_delimiters
say qw|a b|.raku;
say qw!c d!.raku;
say qw/e f/.raku;
#---------------------------- 146 ladder__rung029_quote_qw_whitespace_separators
say qw<a	b
c>.raku;
say qw<  d  e  >.raku;
#- 147 ladder__rung03_strings_a_q_to_heredoc_is_its_lines_with_the_terminators_indent_removed
say q:to/E/.chars;
  abc
  E
#------------- 148 ladder__rung03_strings_a_qq_to_heredoc_interpolates_a_closure
say qq:to/E/.chars;
  a{1+1}c
  E
#- 149 ladder__rung06_control_a_vertical_tab_form_feed_next_line_or_line_separator_ends_a_block_statement
use MONKEY-SEE-NO-EVAL;
say EVAL("\{ 1 \} \x0b \{ 2 \}").raku; say EVAL("\{ 1 \} \x0c \{ 3 \}").raku; say EVAL("\{ 1 \} \x85 \{ 4 \}").raku;
say EVAL("\{ 1 \} \x2028 \{ 5 \}").raku; say EVAL("\{ 1 \} \x2029 \{ 6 \}").raku; say EVAL("1 \x2028 + 6").raku;
#--------------------------------------------- 150 ladder__rung16_bool_relops_so
say so(1);
say so(0);
say so(1 == 1);
#--------------------------------------------------------- 151 simple_program_10
say "before";
say 1/0;
say "after";
#--------------------------------------------------------- 152 simple_program_13
say 7/2;
say 10/4;
say -7/2;
#--------------------------------------------------------- 153 simple_program_36
say 3.5;
say 10/4;
say -7/2;
#--------------------------------------------------- 154 core__rc02_numeric_subs
say sinh(0), " ", cosh(0), " ", tanh(0), " ", asinh(0), " ", acosh(1), " ", atanh(0);
say floor(2.7), " ", ceiling(2.2), " ", round(2.5), " ", truncate(-2.7), " ", sign(-3);
say log2(8), " ", atan2(0, 1), " ", is-prime(7), " ", is-prime(8);
say sec(0), " ", asin(0), " ", acos(1), " ", cotan(1).round(0.001), " ", cosec(1).round(0.001);
#-------------------------------------------- 155 ladder__rung025_kw_nan_nan_eqv
say NaN eqv NaN;
say NaN eqv -NaN;
say NaN !eqv NaN;
say 0e0 eqv -0e0;
#-------------------------------------- 156 ladder__rung026_lit_radix_arithmetic
say :16<ff> + 1;
say -:16<ff>;
say 0xff + 0b11 * 0o7;
say :16<ff> == 255;
#----------------------------------- 157 ladder__rung026_lit_radix_call_fraction
say :16("ff.8");
say :16("ff.8").WHAT;
say :10("12.5");
say :16("ff*16**2");
#------------------------------------- 158 ladder__rung026_lit_radix_call_string
say :16("ff");
say :2("101");
say :36("zz");
say :16("FFACD5FE");
#---------------------------------- 159 ladder__rung026_lit_radix_fraction_print
say :16<ff.8>;
say :16<ff.ff>;
say :3<1.1>;
say :36<z.z>;
#------------------------------------------- 160 ladder__rung026_lit_radix_scale
say :16<1.8*16**2>;
say :10<12*10**2>;
say :16<ff*2**2>;
say :16<ff*16**1>;
#------------------------------------- 161 ladder__rung026_lit_radix_underscores
say 0xdead_beef;
say 0b1_0_1;
say :16<dead_beef>;
say :2<1_0_1>;
#-------------------------------------- 162 ladder__rung027_quote_q_b_delimiters
say Q:b[\{meow}];
say Q:b[\]];
say Q:b♥\♥♥;
say Q:b[\|];
#------------------------- 163 ladder__rung028_quote_qq_guard_bracket_delimiters
say qq{a{1+1}b};
say qq[a{ "x" }b];
say qq<a<b>c>;
say qq«a«b»c»;
#---------------------------------------- 164 ladder__rung03_strings_hex_escapes
say "\x41\x[42,43]";
say "\x[0044]";
say "a\x[e9]b";
say "\x263A";
#--------------------------------------------------------- 165 simple_program_11
say 8/2;
say 6/3;
say 9/3;
say 10/2;
#------------------------------------- 166 ladder__rung026_lit_radix_call_prefix
say :10("0xff");
say :10("0b11");
say :8("0x17");
say :16("0b11");
say :16("0d11");
#----------------------------------- 167 ladder__rung026_lit_radix_colon_integer
say :16<ff>;
say :16<FF>;
say :8<777>;
say :2<1010>;
say :36<Zz>;
#-------------------------------- 168 ladder__rung026_lit_radix_integer_prefixes
say 0x1F;
say 0o17;
say 0b101;
say 0d42;
say 0xFF + 1;
#-------------------------------- 169 ladder__rung16_bool_relops_tap_ok_argument
use Test;
plan 3;
ok 1 == 1, "relop";
ok True, "bool";
ok 1 <=> 2, "order";
#---------------------------- 170 ladder__rung17_compare_ops_is_approx_tolerance
use Test;
plan 3;
is-approx(3.14159265e0, pi, "pi to eight places");
is-approx(1e-7, 0, "near zero uses an absolute tolerance");
is-approx(3.1e0, 3.2e0, 0.2e0, "an explicit absolute tolerance");
#---------------------------------- 171 ladder__rung025_kw_nan_nan_coercion_args
say Num(-Inf);
say Num(1);
say Num("1.5");
say Str(-Inf);
say Int(5.5e0);
say Rat(0.5e0);
#---------------------------------- 172 ladder__rung025_kw_nan_nan_coercion_call
say Num(NaN);
say Num(Inf);
say Str(Inf);
say Str(NaN);
say Bool(NaN);
say Bool(Inf);
#--------------------------------- 173 ladder__rung026_lit_radix_prefix_override
say :10<0xff>;
say :2<0b11>;
say :8<0o17>;
say :16<0b11>;
say :36<0d11>;
say :2<0x11>;
#- 174 ladder__rung01_variables_program_and_file_name_the_source_file_in_both_modes
say $*PROGRAM.extension;
say $*PROGRAM-NAME.ends-with(".raku");
say $?FILE.ends-with(".raku");
say $?FILE.starts-with("/");
say $*PROGRAM.WHAT;
say $*PROGRAM.parent.add("data.json").basename;
say $*PROGRAM.Str eq $*PROGRAM-NAME;
#------------------------------------ 175 ladder__rung03_strings_control_escapes
print "ab\bc|\n";
say "x\ry".chars;
say "\e".ord;
say "\a".ord;
say "\f".ord;
say "\rz".ord;
say "\b".ord;
#---------- 176 roast_causes__rc10_div_and_mod_read_a_bool_operand_as_its_number
say 7 div True;
say 7 mod True;
say 3 mod True;
say True div 2;
say 9 % True;
say 7 div 2;
say 7 mod 3;
#--------------------------------- 177 ladder__rung024_kw_inf_inf_string_compare
say Inf eq "Inf";
say "Inf" eq Inf;
say Inf ne "Inf";
say Inf lt "J";
say 3e0 eq "3";
say 1e20 eq "1e+20";
say 0.1e0 + 0.2e0 eq "0.3";
say 1.5e0 eq "1.5";
#- 178 ladder__rung13_classes_new_on_a_builtin_type_int_num_str_array_list_hash_builds_its_value
say Int.new(5);
say Int.new;
say Str.new.raku;
say Num.new(2);
say Array.new(1,2,3);
say Hash.new.raku;
say List.new(1,2);
say Rat.new(1,2);
#------------------------------------- 179 ladder__rung024_kw_inf_inf_comparison
say Inf == Inf;
say Inf == -Inf;
say Inf > 5;
say -Inf < 5;
say Inf <=> 5;
say 5 <=> Inf;
say Inf <=> Inf;
say Inf === Inf;
say Inf eqv Inf;
#------------------------------------- 180 ladder__rung025_kw_nan_nan_arithmetic
say NaN + 1;
say NaN - 1;
say NaN * 2;
say NaN / 2;
say NaN ** 2;
say NaN ** 0;
say 1 ** NaN;
say NaN % 2;
say -NaN;
#--------------------------------------- 181 ladder__rung025_kw_nan_nan_rounding
say NaN.abs;
say NaN.floor;
say NaN.ceiling;
say NaN.round;
say NaN.truncate;
say NaN.sqrt;
say NaN.log;
say NaN.exp;
say NaN.sin;
#--------------------------------- 182 ladder__rung025_kw_nan_nan_string_compare
say NaN eq NaN;
say NaN ne NaN;
say NaN lt NaN;
say "NaN" == NaN;
say "Inf" == Inf;
say "NaN" + 1;
say +"NaN";
say "NaN".Num;
say <NaN>.Num;
#------------------------------------ 183 ladder__rung024_kw_inf_inf_conversions
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
#------------------------------------- 184 ladder__rung025_kw_nan_nan_comparison
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
#------------------------------------- 185 ladder__rung024_kw_inf_inf_arithmetic
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
#- 186 ladder__rung02_arithmetic_a_rational_compares_and_calculates_with_a_numeric_string
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
#------------------------------------------------------ 187 setting__test_module
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
#------------------------------------------------------------------- 188 hash_14
printf("%d-%d\n", 1, 2);
#-------------------------------------------------------------------- 189 hash_3
say 255.fmt("%x");
#----------------------------- 190 ladder__rung028_quote_qq_guard_literal_sigils
say qq/50% me@example.com a & b a % b/;
#--------------------------------------- 191 ladder__rung03_strings_multi_concat
say "a" ~ "b" ~ "c";
#- 192 ladder__rung03_strings_the_raku_method_escapes_a_newline_and_the_sigil_characters
say "a\nb\$c".raku;
#-------------------------------- 193 ladder__rung09_string_methods_split_method
say "a,b,c".split(",");
#- 194 ladder__rung13_classes_the_compile_time_variable_module_names_the_enclosing_module
module M { sub pkg { $?MODULE.^name }; say pkg() }
#------------------------------------------------------- 195 parser__assign_bare
$x = 5;
#-------------------------------------------------------- 196 parser__atom_array
@a;
#--------------------------------------------------------- 197 parser__atom_hash
%h;
#------------------------------------------------------- 198 parser__atom_scalar
$x;
#---------------------------------------------------- 199 parser__bare_ident_arg
say(x);
#--------------------------------------------------------- 200 parser__call_expr
say(add(1, 2));
#------------------------------------------------------ 201 parser__print_stderr
print($*STDERR, "error");
#-------------------------------------------------------- 202 parser__say_stdout
say($*STDOUT, "hello");
#----------------------------------------------------------- 203 parser__say_var
say $x;
#--------------------------------------------------------- 204 parser__try_catch
try { die "oops"; } CATCH { say "caught"; }
#--------------------------------------------------- 205 parser__try_catch_lower
try { die "boom"; } catch { say "handled"; }
#--------------------------------------- 206 parser_coverage__stmt_ctrl_whenever
whenever $signal { say "got it"; }
#---------------------------------------- 207 parser_coverage__stmt_ctrl_without
without ($x) { say "no x"; }
#------------------------------------------- 208 parser_coverage__stmt_pfx_CLOSE
CLOSE { say("close"); }
#------------------------------------------- 209 parser_coverage__stmt_pfx_eager
eager @a;
#------------------------------------------- 210 parser_coverage__stmt_pfx_hyper
hyper @a;
#-------------------------------------------- 211 parser_coverage__stmt_pfx_lazy
lazy @a;
#-------------------------------------------- 212 parser_coverage__stmt_pfx_race
race @a;
#------------------------------------------ 213 parser_coverage__stmt_pfx_supply
supply { say("emit"); }
#-------------------------------------------------------------------- 214 say_15
{ say(42); }
#-------------------------------------------------------------------- 215 say_16
{ say(1); }; say(2);
#-------------------------------------------------------------------- 216 say_17
{ say(1); say(2); }
#-------------------------------------------------------------------- 217 say_20
 say(0.Bool); 
#-------------------------------------------------------------------- 218 say_21
 say(5.Bool); 
#-------------------------------------------------------------------- 219 say_56
 say(5.abs); 
#-------------------------------------------------------------------- 220 say_59
 say(5.pred); 
#-------------------------------------------------------------------- 221 say_61
 say(5.succ); 
#-------------------------------------------------------------------- 222 say_62
 say(3 < 9); say(5 < 9); 
#-------------------------------------------------------------------- 223 say_64
say (6 > 7);
#-------------------------------------------------------------------- 224 say_65
    say('hello world');
#-------------------------------------------------------------------- 225 say_67
say (1,2,3);
#-------------------------------------------------------------------- 226 say_68
say("a","b","c");
#-------------------------------------------------------------------- 227 say_69
say(1,2,3);
#-------------------------------------------------------------------- 228 say_70
say(1,2);
#-------------------------------------------------------------------- 229 say_71
 say("hello".chars); 
#-------------------------------------------------------------------- 230 say_72
 say("hi\n".chomp); 
#-------------------------------------------------------------------- 231 say_73
 say("hello".contains("xyz")); 
#-------------------------------------------------------------------- 232 say_74
 say("hello".contains("ell")); 
#-------------------------------------------------------------------- 233 say_75
 say("abc".flip); 
#-------------------------------------------------------------------- 234 say_76
 say("hello".index("l")); 
#-------------------------------------------------------------------- 235 say_77
 say("HeLLo".lc); 
#-------------------------------------------------------------------- 236 say_78
 say("world".uc()); 
#-------------------------------------------------------------------- 237 say_80
    say(reverse('abc'));
#-------------------------------------------------------------------- 238 say_81
 say("hello".substr(2)); 
#-------------------------------------------------------------------- 239 say_82
 say("hello".substr(1, 3)); 
#-------------------------------------------------------------------- 240 say_83
 say("hello world".tc); 
#-------------------------------------------------------------------- 241 say_84
 say("  hi  ".trim); 
#-------------------------------------------------------------------- 242 say_85
 say("hello".uc); 
#-------------------------------------------------------------------- 243 say_86
 say("hello world".wordcase); 
#-------------------------------------------------------------------- 244 say_87
 say("a b c".words); 
#-------------------------------------------------------------------- 245 say_88
 say("  hi   there  ".words); 
#------------------------------------------------------------ 246 say_replace_19
say (6 == 6);
#------------------------------------------------------------ 247 say_replace_20
say (9 <= 9);
#------------------------------------------------------------ 248 say_replace_22
say (3 != 4);
#--------------------------------------------------------- 249 simple_program_14
if 7 %% 3 { say "yes" } else { say "no" }
#--------------------------------------------------------- 250 simple_program_15
if 1 + 2 %% 3 { say "yes" } else { say "no" }
#--------------------------------------------------------- 251 simple_program_16
if 6 %% 3 { say "yes" } else { say "no" }
#--------------------------------------------------------- 252 simple_program_17
unless 10 %% 3 { say "notdiv" }
#---------------------------------------------------------- 253 simple_program_2
if 1 < 2 < 9 < 4 { say "bad" } else { say "out" }
#--------------------------------------------------------- 254 simple_program_21
if 0 %% 5 { say "yes" } else { say "no" }
#---------------------------------------------------------- 255 simple_program_3
if 1 < 2 < 3 < 4 { say "yes" }
#--------------------------------------------------------- 256 simple_program_35
print(1,2,3);
#---------------------------------------------------------- 257 simple_program_4
say chr(72) ~ chr(105);
#--------------------------------------------------------- 258 simple_program_42
say [~] (1, 2, 3, 4);
#--------------------------------------------------------- 259 simple_program_51
say sprintf("%08b", 5);
#--------------------------------------------------------- 260 simple_program_52
say sprintf("%.2f", 3.14159);
#--------------------------------------------------------- 261 simple_program_53
say sprintf("%-5d|", 42);
#--------------------------------------------------------- 262 simple_program_54
say sprintf("100%%");
#--------------------------------------------------------- 263 simple_program_55
say sprintf("%03d", 7);
#--------------------------------------------------------- 264 simple_program_63
say "hello".subst("l","L");
#--------------------------------------------------------- 265 simple_program_64
say "aaa".subst("a","bb");
#--------------------------------------------------------- 266 simple_program_65
say "hello".subst("xy","Z");
#--------------------------------------------------------- 267 simple_program_68
say 1 ~ "x" x 3 ~ 2;
#--------------------------------------------------------- 268 simple_program_71
say "[" ~ ("q" x -2) ~ "]";
#--------------------------------------------------------- 269 simple_program_73
say 1 ~ "x" x 3 ~ 2;
#--------------------------------------------------------- 270 simple_program_74
say "a" ~ "b" x 2;
#--------------------------------------------------------- 271 simple_program_76
say "[" ~ ("z" x 0) ~ "]";
#------------------------------------------------------- 272 test_stmt_pfx_BEGIN
BEGIN { say("setup"); }
#------------------------------------------------------- 273 test_stmt_pfx_CHECK
CHECK { say("check"); }
#--------------------------------------------------------- 274 test_stmt_pfx_END
END { say("teardown"); }
#-------------------------------------------------------- 275 test_stmt_pfx_INIT
INIT { say("init"); }
#-------------------------------------------------------- 276 test_stmt_pfx_once
once { say("once"); }
#----------------------------------------------------- 277 test_stmt_pfx_quietly
quietly { say("quiet"); }
#------------------------------------------------------- 278 test_stmt_pfx_react
react { say("react"); }
#------------------------------------------------------------ 279 test_try_basic
try { say "safe"; }
#------ 280 ladder__rung01_variables_no_strict_declares_a_hash_that_is_only_read
no strict;
say %h<zz>.gist;
#- 281 ladder__rung01_variables_no_strict_declares_an_array_that_is_only_read_inside_a_block
no strict;
{ say @arr.elems }
#-------------------------------------- 282 ladder__rung027_quote_q_plain_spaced
say Q {a b};
say Q /$x\n/;
#------------------------------------------ 283 ladder__rung027_quote_q_w_adverb
say Q:w/a  b\tc/.join("|");
say Q:w//.elems;
#-------------------------------- 284 ladder__rung027_quote_q_w_adverb_backslash
say Q:w:b/a\tb c/.elems;
say Q:q:w/a\\b c/.join("|");
#----------------------------------------- 285 ladder__rung028_quote_qq_call_dot
sub f { 7 }
say qq/&f.()/;
#-------------------------------------- 286 ladder__rung028_quote_qq_call_parens
sub f { 7 }
say qq/&f()/;
#------------------------ 287 ladder__rung029_quote_qw_user_sub_beats_quote_word
sub qw { 7 }
say qw, 1;
#- 288 ladder__rung05_hashes_a_pair_with_a_pair_key_parenthesizes_the_key_in_gist_and_raku
say ((1 => 2) => 3).raku;
say ((1 => 2) => 3).gist;
#-------- 289 ladder__rung07_subs_a_sigilless_parameter_takes_a_literal_argument
sub f(\x) { x + 1 }
say f(4);
#------ 290 ladder__rung07_subs_a_sigilless_plus_parameter_is_a_term_in_the_body
sub g(+a) { a.elems }
say g(1, 2);
#--------------------- 291 ladder__rung07_subs_implicit_return_bare_literal_tail
sub seven() { 7; }
say seven();
#- 292 ladder__rung10_given_empty_is_undefined_so_orelse_and_the_dor_operator_skip_it_and_andthen_yields_it
say (Empty orelse "foo"), (Empty // 9), Empty.defined;
say (Str andthen .uc orelse "foo"), (Nil andthen "x" orelse Nil orelse "bar"), (() orelse 1).raku;
#- 293 ladder__rung15_blocks_a_builtin_routine_reference_is_passed_to_a_code_parameter
sub f(&g) { g("x") }
say f(&uc);
#- 294 ladder__rung16_bool_relops_a_chained_numeric_relop_counts_a_list_returning_method_call
say 1 < (1, 2, 3).grep(* > 1) < 5;
say 2 < (1, 2, 3).grep(* > 1) < 5;
#- 295 ladder__rung16_bool_relops_a_list_returning_method_call_is_counted_in_a_numeric_relop
say 1 < (1, 2, 3).grep(* > 1);
say 3 < (1, 2, 3).grep(* > 1);
#-------------------------------------------------------------------- 296 say_90
say("hello");
say(42);
#---------------------------------------------------------- 297 simple_assign_46
my constant GREETING = "hello";
say GREETING;
#---------------------------------------------------------- 298 simple_assign_47
my constant K = 3;
say K * K;
#---------------------------------------------------------- 299 simple_assign_48
constant $E = 2;
say $E;
#-------------------------------------------------------------------- 300 sub_26
sub t() { 42 }
say t();
#-------------------------------------------------------------------- 301 sub_30
sub greet() { "hi" }
say greet();
#----------------------------------------- 302 ladder__rung16_bool_relops_string
say ("a" eq "a");
say ("a" ne "a");
say ("a" lt "b");
#------------------------------------------------ 303 ladder__rung17_compare_ops
say (3 <=> 1);
say (1 <=> 3);
say (2 <=> 2);
#-------------------------------------------- 304 ladder__rung17_compare_ops_cmp
say (10 cmp 9);
say (1 cmp 2);
say ("b" cmp "b");
#-------------------------------------------- 305 ladder__rung17_compare_ops_leg
say ("abc" leg "abd");
say ("b" leg "a");
say ("x" leg "x");
#---------------------------------------- 306 ladder__rung17_compare_ops_numeric
say ((1 <=> 3) == -1);
say ((2 <=> 2) == 0);
say ((5 <=> 2) == 1);
#---------------------------------------------------------- 307 simple_assign_49
constant A = "a";
constant B = "b";
say A ~ B;
#---------------------------------------- 308 ladder__rung023_kw_nil_nil_in_list
say (1, Nil, 2).raku;
say (Nil,).raku;
say (Nil, Nil).raku;
say (1, Nil, 2).sum;
#--------------------------------- 309 ladder__rung02_arithmetic_e_and_tau_terms
say e;
say tau;
say (e * 2).round;
say tau / 2 == pi;
#---------------------------------------- 310 ladder__rung12_exceptions_no_catch
try {
    die "swallowed";
}
say "after";
#------------------------------------------------ 311 ladder__rung16_bool_relops
say (1 == 1);
say (1 < 2);
say (2 <= 1);
say (1 != 1);
#-------------------------------------------------------------------- 312 say_63
say 4.0;
say (7/2)*2;
say 2.5+1.5;
say -3.0;
#----------------------------------------- 313 ladder__rung11_junctions_operator
if 1|2|3 == 2 {
    say "yes";
} else {
    say "no";
}
#---------------------------------- 314 ladder__rung024_kw_inf_inf_negative_zero
say -1e0 / Inf;
say (-1e0 / Inf).raku;
say -0e0;
say 0e0 * -1;
say (-0e0).Str;
say 0e0;
#--------------------- 315 ladder__rung07_subs_lowercase_main_is_an_ordinary_sub
sub main() {
    say "in main";
}
say "top";
main();
say "end";
#------------------------------------------------- 316 ladder__rung12_exceptions
try {
    die "boom";
    CATCH {
        default { say "caught"; }
    }
}
#------------------------------------- 317 ladder__rung12_exceptions_die_message
try {
    die "custom message";
    CATCH {
        default { say .message; }
    }
}
#---------------------------------- 318 ladder__rung025_kw_nan_nan_signed_values
say Inf.sign;
say (-Inf).sign;
say 0e0.sign;
say (-0e0).sign;
say 5e0.sign;
say (-5e0).sign;
say 5.sign;
#------------------------------------------ 319 ladder__rung024_kw_inf_inf_power
say Inf ** 2;
say Inf ** 0;
say (-Inf) ** 3;
say (-Inf) ** 2;
say 2 ** Inf;
say 0 ** Inf;
say 1 ** Inf;
say Inf ** Inf;
#------------------------------------------ 320 ladder__rung025_kw_nan_nan_order
say NaN <=> NaN;
say NaN <=> 1;
say 1 <=> NaN;
say NaN <=> Inf;
say Inf <=> NaN;
say (NaN <=> 1).defined;
say (NaN <=> 1).WHAT;
say (NaN <=> NaN) === Nil;
#--------------------------------------- 321 ladder__rung024_kw_inf_inf_rounding
say Inf.floor;
say (-Inf).floor;
say Inf.ceiling;
say Inf.round;
say Inf.truncate;
say Inf.floor.WHAT;
say Inf.floor + 1;
say NaN.floor;
say NaN.round;
#------------------------------------ 322 ladder__rung025_kw_nan_nan_conversions
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
#------------------------- 323 ladder__rung14_roles_does_ok_asks_the_does_method
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
#-------------------------------------------------------- 324 rewrite__rr10_test
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
#----------------------------------------- 325 ladder__rung025_kw_nan_nan_is_nan
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
#--------------------------------------------------------- 326 rewrite__rr02_pod
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
#- 327 ladder__rung03_strings_trans_takes_several_pairs_tr_style_strings_with_ranges_and_the_c_d_s_adverbs
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
#- 328 ladder__rung02_arithmetic_rat_exact_with_big_numerators_and_the_64_bit_denominator_limit
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
#------------------------------------------------------------------ 329 array_30
my @a; say @a.elems;
#------------------------------------------------------------------ 330 array_31
my @a; say "ok";
#------------------------------------------------------------------ 331 array_39
my @a = (1,2,3); say @a;
#------------------------------------------------------------------ 332 array_51
my @a = <a b c>; say @a.elems;
#------------------------------------------------------------------ 333 array_52
my @a = <a b c>; say @a[1];
#------------------------------------------------------------------ 334 array_53
my @a = "ab" xx 3; say @a.elems;
#------------------------------------------------------------------ 335 array_54
my @a = "x" xx 3; say @a;
#------------------------------------------------------------------ 336 array_55
my @a = "x" xx 3; say @a;
#------------------------------------------------------------------ 337 array_57
my @d = "z" xx 0; say @d.elems;
#------------------------------------------------------------------ 338 array_58
my @b = 0 xx 5; say @b;
#--------------------------------------------------------------------- 339 for_1
for <a b c> -> $c { print $c }
#------------------------------------------------------------------- 340 given_3
say $_ given 42;
#------------------------------------------------------------------- 341 hash_10
my %h = "k1" => 5, "k2" => 6; say %h<k2>;
#------------------------------------------------------------------- 342 hash_11
my %h; say %h.elems;
#------------------------------------------------------------------- 343 hash_12
my %h; %h<x> = 1; say %h<x>;
#------------------------------------------------------------------- 344 hash_16
say sprintf("%b", 10);
#------------------------------------------------------------------- 345 hash_17
say sprintf("%x %X", 255, 255);
#------------------------------------------------------------------- 346 hash_18
say sprintf("%s=%d", "x", 5);
#-------------------------------------------------------------------- 347 hash_6
my %h = a => 1, b => 2, c => 3; say %h.elems;
#-------------------------------------------------------------------- 348 hash_7
my %h = a => 1, b => 2; say %h<a>;
#-------------------------------------------------------------------- 349 hash_8
my %h = (x => 10, y => 20); say %h<y>;
#-------------------------------------------------------------------- 350 hash_9
my %h = a => 1, b => 2; say %h<b>;
#- 351 ladder__rung01_variables_a_list_declaration_in_a_block_is_that_blocks_variables
my ($a, $b) = 1, 2; { my ($a, $c) = 3, 4; say "$a $c" }; say "$a $b";
#------ 352 ladder__rung01_variables_is_default_gives_a_scalar_its_initial_value
my $x is default(5); say $x;
#---------------------------------- 353 ladder__rung022_quote_q_no_interpolation
my $x = 5; say q{a$xb {$x}};
#- 354 ladder__rung15_blocks_a_bare_blocks_own_my_variable_is_not_the_enclosing_variable
my $a = 1; { my $a = 2; say $a }; say $a;
#-- 355 ladder__rung15_blocks_a_builtin_routine_reference_is_the_argument_of_map
say <a b C>.map(&uc).join(",");
#--------- 356 ladder__rung15_blocks_a_string_eval_reads_the_blocks_own_variable
my $a = 1; { my $a = 2; say EVAL q[$a] }; say $a;
#------------ 357 ladder__rung19_block_a_whatevercode_argument_to_the_map_listop
say map(* x 2, <a b>).join(",");
#--------------------------------------------- 358 ladder__rung19_block_methcall
say ("a","b").map({ $^a.uc });
#------------------------------------- 359 ladder__rung19_block_methcall_chained
say (1,2).map({ $^a.Str.chars });
#---------------------------------------- 360 ladder__rung19_block_methcall_grep
say ("a","b").grep({ $^a.uc eq "A" });
#------------------------------------------- 361 ladder__rung20_paren_group_grep
say (1,2,3).grep({ ($^a) > 1 });
#------------------------------------ 362 ladder__rung20_paren_group_placeholder
say (1,2).map({ ($^a).Str });
#--------------------------------------------------------- 363 parser__arith_add
my $x = 1 + 2;
#------------------------------------------------------- 364 parser__arith_chain
my $x = 1 + 2 + 3;
#--------------------------------------------------------- 365 parser__arith_mul
my $x = 6 * 7;
#-------------------------------------------------------- 366 parser__arith_prec
my $x = 1 + 2 * 3;
#-------------------------------------------------------- 367 parser__decl_array
my @a = 7;
#--------------------------------------------------------- 368 parser__decl_hash
my %h = 9;
#--------------------------------------------------- 369 parser__decl_scalar_int
my $x = 5;
#--------------------------------------------------- 370 parser__decl_scalar_str
my $s = "hello";
#---------------------------------------- 371 parser_coverage__stmt_ctrl_foreach
foreach @items -> $item { say $item; }
#----------------------------------------------------------------- 372 say_die_1
 say("before"); die("boom"); say("after"); 
#--------------------------------------------------------- 373 simple_assign_100
my $i = 7; say $i++;
#--------------------------------------------------------- 374 simple_assign_102
my $i = 5; my $j = --$i; say $j;
#--------------------------------------------------------- 375 simple_assign_105
my $i = 5; my $j = ++$i; say $j;
#--------------------------------------------------------- 376 simple_assign_106
my $i = 5; my $j = ++$i; say $i;
#--------------------------------------------------------- 377 simple_assign_110
my $x = 5; say "x is ", $x;
#--------------------------------------------------------- 378 simple_assign_111
my $x = 6; my $y = 7; say $x * $y;
#--------------------------------------------------------- 379 simple_assign_114
my $a = "zebra"; my $b = "apple"; say $a gt $b ?? "y" !! "n";
#--------------------------------------------------------- 380 simple_assign_115
my $x = 0 ?? 5 !! 9; say $x;
#--------------------------------------------------------- 381 simple_assign_116
my $g = "C"; say $g eq "A" ?? 1 !! $g eq "B" ?? 2 !! 3;
#--------------------------------------------------------- 382 simple_assign_117
my $n = 10; say $n > 3 ?? "big" !! "small";
#--------------------------------------------------------- 383 simple_assign_118
my $x = 1 ?? 5 !! 9; say $x;
#--------------------------------------------------------- 384 simple_assign_124
my $s; $s = "ab" x 3; say $s;
#--------------------------------------------------------- 385 simple_assign_125
my $s = "ab" x 3; say $s;
#--------------------------------------------------------- 386 simple_assign_126
my $n = 3; my $s = "ab" x $n; say $s;
#--------------------------------------------------------- 387 simple_assign_128
my $s = "yo"; my $n = 4; say $s x $n;
#---------------------------------------------------------- 388 simple_assign_26
 my $b = { say 9; }; $b(); $b(); 
#---------------------------------------------------------- 389 simple_assign_28
 my $b = { say 5; }; $b(); 
#---------------------------------------------------------- 390 simple_assign_29
 my $a = { say 1; }; my $b = { say 2; }; $b(); $a(); 
#---------------------------------------------------------- 391 simple_assign_67
my $x = 7; say $x.fmt("%03d");
#---------------------------------------------------------- 392 simple_assign_68
my $s = "hi"; say $s.fmt("[%5s]");
#---------------------------------------------------------- 393 simple_assign_69
my $i = 3; $i++; $i++; say $i;
#---------------------------------------------------------- 394 simple_assign_89
my $i = 5; say $i--;
#---------------------------------------------------------- 395 simple_assign_98
my $i = 5; my $j = $i++; say $j;
#---------------------------------------------------------- 396 simple_assign_99
my $i = 5; my $j = $i++; say $i;
#--------------------------------------------------------------- 397 split_say_1
 say("a,b,c".split(",")); 
#----------------------------------------------------------- 398 test_colon_call
my $x = "hi"; say $x.substr: 1;
#---------------------------------------------------------- 399 test_kebab_ident
my $s-address = 5; say $s-address;
#------------------------------------------------------------- 400 test_our_decl
our $a = 1; say $a;
#------------------------------------------------------- 401 test_qualified_term
my $x = IO::Spec::Unix; say $x;
#------------------------------------------------------------------ 402 array_12
my @a = (10,20,30);
say @a[*].elems;
#------------------------------------------------------------------ 403 array_13
my @e = ();
say @e[*].elems;
#------------------------------------------------------------------ 404 array_16
my @a = (10,20,30);
say @a[*].sum;
#------------------------------------------------------------------ 405 array_17
my @a = 3, 1, 2;
say @a.first;
#------------------------------------------------------------------ 406 array_18
my @a = 5, 6, 7;
say @a.keys.elems;
#------------------------------------------------------------------ 407 array_19
my @a = 3, 1, 2;
say @a.max;
#------------------------------------------------------------------ 408 array_20
my @a = 3, 1, 2;
say @a.min;
#------------------------------------------------------------------ 409 array_21
my @s = "cherry", "apple", "banana";
say @s.min;
#------------------------------------------------------------------ 410 array_24
my @a = 3, 1, 2;
say @a.reverse;
#------------------------------------------------------------------ 411 array_25
my @a = 3, 1, 2;
say @a.sort.first;
#------------------------------------------------------------------ 412 array_26
my @a = 3, 1, 2;
say @a.sort;
#------------------------------------------------------------------ 413 array_27
my @s = "banana", "apple", "cherry";
say @s.sort;
#------------------------------------------------------------------ 414 array_28
my @b = 3, 1, 2, 1;
say @b.unique;
#------------------------------------------------------------------ 415 array_29
my @n = 10, 20, 30;
say @n.values.sum;
#------------------------------------------------------------------ 416 array_34
my @a = 10,20,30,40,50;
say @a[0,2].elems;
#------------------------------------------------------------------ 417 array_35
my @a = 1, 2, 3, 4;
say [+] @a;
#------------------------------------------------------------------ 418 array_36
my @m = 1.5, 2.5, 2.5;
say [+] @m;
#------------------------------------------------------------------ 419 array_38
my @a = 1,2,3,4,5;
say @a[2];
#------------------------------------------------------------------ 420 array_41
my @a = 1,2,3,;
say @a.elems;
#------------------------------------------------------------------ 421 array_42
my @a = 10,20,30,40;
say @a[*-(1+2)];
#------------------------------------------------------------------ 422 array_43
my @a = 10,20,30,40;
say @a[*-4];
#------------------------------------------------------------------ 423 array_44
my @a = 10,20,30;
say @a[*-1] + @a[*-2];
#------------------------------------------------------------------ 424 array_46
my @a = 10,20,30,40;
say @a[*-1];
#------------------------------------------------------------------ 425 array_47
my @a = 10,20,30,40;
say @a[1];
#------------------------------------------------------------------ 426 array_48
my @a = 10,20,30,40;
say @a[*-2];
#------------------------------------------------------------------ 427 array_49
my @s = "x","y","z";
say @s[*-1];
#------------------------------------------------------------ 428 class_method_1
class C { method go() { 42 } }
say C.new.go();
#--------------------------------------------------------------- 429 class_say_1
class Cat { }
 say(Cat.^name); 
#--------------------------------------------------------------- 430 class_say_2
class Cat { }
 say(Cat.WHAT()); 
#------------------------------------------------------------------- 431 hash_13
my %h = (y => 9, x => 4);
say %h{"x"};
#-------------------------------------------------------------------- 432 hash_4
my %h = one => 10, two => 20, three => 30;
say %h.keys.elems;
#-------------------------------------------------------------------- 433 hash_5
my %h = a => 1, b => 2, c => 3;
say %h.kv.elems;
#--- 434 ladder__rung01_variables_a_state_array_keeps_its_elements_between_calls
sub a { state @l; @l.push(1); @l.elems }
say a(); say a();
#- 435 ladder__rung01_variables_a_state_declaration_may_initialize_from_another_state_declaration
sub f { state $a = state $b = 42; $a + $b }
say f();
#--- 436 ladder__rung01_variables_a_state_variable_keeps_its_value_between_calls
sub c { state $c = 10; $c += 5; $c }
say c(); say c();
#--------------------------------- 437 ladder__rung01_variables_type_constrained
my Int $x = 5;
say $x;
#----------------------------- 438 ladder__rung021_quote_lt_gt_ideographic_space
my @w = <a　b>;
say @w.elems;
#-------------------------- 439 ladder__rung021_quote_lt_gt_no_break_space_joins
my @w = <a b>;
say @w.elems;
#-------------------- 440 ladder__rung021_quote_lt_gt_non_ascii_word_stays_whole
my @w = <aƅb c>;
say @w.elems;
#------------------------------------- 441 ladder__rung025_kw_nan_nan_smartmatch
say NaN ~~ NaN;
say NaN !~~ NaN;
#-------------------------------------- 442 ladder__rung027_quote_q_b_adverb_raw
my $x = 5;
say Q:b/a$x {$x}\n/;
#------------------------------------------ 443 ladder__rung027_quote_q_c_adverb
my $x = 5;
say Q:c/a$x {$x + 1}/;
#----------------------------------------- 444 ladder__rung027_quote_q_qq_adverb
my $x = 5;
say Q:qq/a$x\tb {$x + 1}/;
#-------------------------------------- 445 ladder__rung028_quote_qq_array_slice
my @a = 1, 2, 3;
say qq/@a[0,1]/;
#---------------------------------------- 446 ladder__rung028_quote_qq_call_args
sub f($a) { $a * 2 }
say qq/&f(4) &f(2 + 3)/;
#------------------------------------ 447 ladder__rung028_quote_qq_guard_scalars
my $x = 5;
say qq/$x $x.chars() $x-1/;
#--------------------------------------- 448 ladder__rung028_quote_qq_hash_angle
my %h = a => 1, b => 2;
say qq/%h<a> %h<b>/;
#--------------------------------------- 449 ladder__rung028_quote_qq_hash_brace
my %h = a => 1;
say qq/%h{"a"} %h{'a'}/;
#--------------------------- 450 ladder__rung028_quote_qq_scalar_array_subscript
my $a = [1, 2, 3];
say qq/$a[1] $a[2]/;
#---------------------------- 451 ladder__rung028_quote_qq_scalar_hash_subscript
my $h = { a => 1 };
say qq/$h<a> $h{"a"}/;
#- 452 ladder__rung02_arith_a_list_returning_method_call_is_counted_in_arithmetic
say (1, 2, 3).grep(* > 1) + 10;
say 3 * (1, 2, 3).grep(* > 1);
#------------- 453 ladder__rung02_arithmetic_a_list_operand_is_its_element_count
say 2 * (1, 2, 3), " ", (1, 2, 3) + 2;
my @a; say 3 * (@a = 4, 5);
#------ 454 ladder__rung02_arithmetic_the_atomic_postfix_increments_an_atomicint
my atomicint $i = 0; $i⚛++; $i⚛++;
say $i;
#------ 455 ladder__rung04_arrays_a_slip_new_is_a_slip_that_flattens_into_a_list
say Slip.new(1, 2).raku, Slip.new(5).raku, (|(3, 4)).raku;
my @y = 41, (False ?? 42 !! Slip.new()), 43; say @y.raku;
#- 456 ladder__rung04_arrays_join_with_no_arguments_or_one_argument_is_the_empty_string
say join().raku, " ", join("-").raku, " ", join("-", 1).raku, " ", join(1, 2, 3).raku;
say (join ).raku;
#-------------------------------------- 457 ladder__rung04_arrays_negative_index
my @a = (1, 2, 3);
say @a[*-1];
#--------------------------------------- 458 ladder__rung04_arrays_out_of_bounds
my @a = (1, 2, 3);
say @a[10].raku;
#- 459 ladder__rung04_arrays_splice_removes_replaces_and_returns_the_removed_elements
my @a = 1,2,3,4,5; say @a.splice(1, 2).raku, @a.raku; @a.splice(1, 0, 9, 8); say @a.raku;
say splice(@a, 0, 1).raku, @a.raku, " ", @a.splice(2).raku, @a.raku, " ", @a.splice.raku, @a.raku;
#- 460 ladder__rung04_arrays_the_delete_adverb_returns_the_element_and_shortens_the_array
my @a = <a b c>;
say @a[2]:delete, @a.elems;
#- 461 ladder__rung04_arrays_the_exists_adverb_answers_whether_an_element_is_there
my @a = <a b c>;
say @a[1]:exists, @a[5]:exists;
#--------- 462 ladder__rung04_arrays_the_k_adverb_on_a_slice_answers_the_indices
my @a = <a b c>;
say @a[1, 2]:k;
#----- 463 ladder__rung04_arrays_the_kv_adverb_answers_the_index_and_the_element
my @a = <a b c>;
say @a[1]:kv;
#--------- 464 ladder__rung04_arrays_the_p_adverb_on_a_slice_answers_index_pairs
my @a = <a b c>;
say @a[0, 1]:p;
#- 465 ladder__rung05_hashes_a_brace_with_a_pair_first_and_plain_elements_after_is_a_hash
my $h = { a => 1, "b", 2 };
say $h.WHAT; say $h<b>;
#- 466 ladder__rung05_hashes_a_percent_sigil_before_a_scalar_is_the_hash_it_holds
my $h = { a => 1, b => 2 };
say %$h.elems;
#- 467 ladder__rung05_hashes_antipairs_returns_a_seq_of_swapped_pairs_without_flattening
use Test; my %h = a => 'b', c => 'd';
isa-ok %h.antipairs, Seq, 'a Seq'; is-deeply %h.antipairs.sort.list, (b => 'a', d => 'c'), 'swapped'; my %g = a => <b c>, d => 'e'; is-deeply %g.antipairs.sort.list, (<b c> => 'a', e => 'd'), 'list values stay one key'; done-testing;
#------------- 468 ladder__rung05_hashes_invert_returns_a_seq_of_value_key_pairs
use Test; my %h = a => 'b', c => 'd', e => <x y>;
isa-ok %h.invert, Seq, 'invert is a Seq'; is-deeply %h.invert.sort.list, (b => 'a', d => 'c', x => 'e', y => 'e'), 'sorted pairs'; done-testing;
#----------------------------------------- 469 ladder__rung05_hashes_missing_key
my %h = (a => 1);
say %h{'z'}.raku;
#--------- 470 ladder__rung05_hashes_the_kv_adverb_answers_the_key_and_the_value
my %h = a => 1, b => 2;
say %h<a>:kv;
#----------------------- 471 ladder__rung05_hashes_the_p_adverb_answers_the_pair
my %h = a => 1, b => 2;
say %h<b>:p;
#-------------------------------------------- 472 ladder__rung06_control_ternary
my $x = 5;
say $x > 3 ?? "big" !! "small";
#---------------------------------------------- 473 ladder__rung06_control_until
my $i = 0;
until ($i >= 3) { say $i; $i = $i + 1; }
#- 474 ladder__rung07_subs_a_dot_ampersand_call_passes_the_invocant_as_the_first_argument_of_the_sub
sub add($a, $b = 10) { $a + $b }
say 5.&add, " ", 5.&add(1);
#- 475 ladder__rung07_subs_a_dot_ampersand_call_runs_a_code_variable_or_a_scalar_holding_code
my &twice = -> $n { $n * 2 }; my $code = -> $n, $m { $n - $m };
say 4.&twice, " ", 10.&$code(3);
#- 476 ladder__rung07_subs_a_magical_routine_call_recurses_into_the_enclosing_named_sub
sub fact(Int $n) { $n < 2 ?? 1 !! $n * &?ROUTINE($n - 1) }
say fact(5);
#- 477 ladder__rung07_subs_a_named_parameter_may_bind_a_different_variable_than_its_key
sub f(:key($desc)) { $desc }
say f(key => 7);
#-------- 478 ladder__rung07_subs_a_plus_array_parameter_takes_several_arguments
sub f(+@a) { @a.elems }
say f(1, 2);
#- 479 ladder__rung07_subs_a_type_capture_in_a_signature_names_the_argument_type
sub tname(::T $v) { T.^name }
say tname(42);
#- 480 ladder__rung07_subs_an_anonymous_scalar_parameter_with_a_subsignature_unpacks_a_pair
sub h(Pair $ (:key($d), :value($v))) { "$d=$v" }
say h("x" => 5);
#--------------------------------------- 481 ladder__rung07_subs_implicit_return
sub double($x) { $x * 2 }
say double(5);
#-------------------- 482 ladder__rung07_subs_implicit_return_trailing_semicolon
sub double($x) { $x * 2; }
say double(5);
#- 483 ladder__rung08_for_last_from_an_inner_until_leaves_a_labelled_until_in_parentheses
my $d = 0; (L2: until False { until False { $d++; last L2 } });
say $d;
#- 484 ladder__rung09_regex_a_pair_on_the_right_of_a_smartmatch_calls_the_method_it_names_on_the_left_operand
say "/".IO ~~ :d; say "/".IO ~~ :f; say "/".IO ~~ :!f; say "/".IO !~~ :e;
say "/no/such/witness/path".IO ~~ :e; say "/no/such/witness/path".IO !~~ :e; say 5 ~~ :defined; say Int ~~ :defined;
#------------------ 485 ladder__rung09_string_methods_trim_methods_on_an_io_path
my $p = ' foo '.IO;
say trim($p).raku, $p.trim.raku, trim-leading($p).raku, $p.trim-leading.raku, trim-trailing($p).raku, $p.trim-trailing.raku;
#- 486 ladder__rung10_given_when_a_given_or_with_modifier_leaves_the_outer_topic_unchanged
$_ = 10; say "a $_" given 13; say $_; say "b $_" with 7; say $_;
{ say "blk $_" } given 5; say $_;
#- 487 ladder__rung13_classes_a_method_with_a_type_capture_invocant_binds_the_capture_to_the_class
class A { method me(::T $:) { T } }
say A.new.me.raku;
#------- 488 ladder__rung13_classes_a_user_str_method_answers_on_the_type_object
class D { method Str { 'dd' } }
say D.Str, " ", (class { method Str { 'foo' } }).Str, " ", D.new.Str;
#- 489 ladder__rung13_classes_the_compile_time_variable_class_names_the_enclosing_class
class Foo { method m { $?CLASS.^name } }
say Foo.m;
#----------------------------------------------------- 490 ladder__rung15_blocks
my $b = { 1 };
say $b();
#------------ 491 ladder__rung15_blocks_a_builtin_routine_reference_is_a_closure
my $as = &lc;
say $as("ABC");
#- 492 ladder__rung15_blocks_a_closures_own_my_variable_is_not_the_outer_variable_another_closure_reads
my $x = 7; my $g = { $x }; my $f = { my $x = 1; $x };
say $f(), $g();
#----------------------------------------------- 493 ladder__rung15_blocks_first
my @n = (1, 2, 3, 4);
say @n.first({ $^a == 4 });
#---------------------------------------- 494 ladder__rung15_blocks_placeholders
my $add = { $^a + $^b };
say $add(2, 3);
#---------------------------------------------- 495 ladder__rung15_blocks_pointy
my $p = -> $x { $x * 2 };
say $p(5);
#----------------------------------------------- 496 ladder__rung15_blocks_topic
my $b = { $_ * 2 };
say $b(5);
#- 497 ladder__rung16_bool_relops_numeric_equality_counts_a_list_returning_method_call
say (1, 2, 3).grep(* > 1) == 2;
say 2 == (1, 2, 3).grep(* > 1);
#----------------------------------- 498 ladder__rung18_two_arg_block_reduce_add
my @n = (1,2,3);
say @n.reduce({ $^a + $^b });
#----------------------------------- 499 ladder__rung18_two_arg_block_reduce_mul
my @n = (1,2,3,4);
say @n.reduce({ $^a * $^b });
#---------------------------- 500 ladder__rung19_block_a_sub_reads_its_own_topic
sub topic { $_.gist }
say topic();
#-------------- 501 ladder__rung19_block_an_empty_do_block_is_an_undefined_value
my $a = do { };
say $a.defined;
#------------------------------------ 502 ladder__rung19_block_methcall_sub_body
sub f($x) { $x.uc }
say f("ab");
#----- 503 ladder__rung19_block_the_grep_listop_takes_a_type_name_as_its_matcher
my @l = 1, "a", 2, "b", 3;
say grep Int, @l; say grep Str, @l;
#------------------------------------------------ 504 ladder__rung20_paren_group
sub f($a) { ($a).Str }
say f(3);
#------------------------------------------- 505 ladder__rung20_paren_group_stmt
my $x = 5;
($x).say;
#------------------------------------------------------------------- 506 multi_3
multi bar($x) { $x + 1 }
say bar(7);
#-------------------------------------------- 507 parser_coverage__stmt_pfx_sink
my $x = 1;
sink $x;
#-------------------------------------------------------------------- 508 say_29
grammar G { rule TOP { "a" | "b" } }
 say(G.parse("a")); 
#-------------------------------------------------------------------- 509 say_30
grammar G { rule TOP { "a" | "b" } }
 say(G.parse("b")); 
#-------------------------------------------------------------------- 510 say_31
grammar G { rule TOP { <digit> | <alpha> } }
 say(G.parse("x")); 
#-------------------------------------------------------------------- 511 say_32
grammar G { rule TOP { <digit> | <alpha> } }
 say(G.parse("5")); 
#-------------------------------------------------------------------- 512 say_33
grammar G { rule TOP { <alnum> } }
 say(G.parse("7")); 
#-------------------------------------------------------------------- 513 say_34
grammar G { rule TOP { <alpha> } }
 say(G.parse("a")); 
#-------------------------------------------------------------------- 514 say_35
grammar G { rule TOP { <digit> } }
 say(G.parse("5")); 
#-------------------------------------------------------------------- 515 say_36
grammar G { rule TOP { <lower> } }
 say(G.parse("z")); 
#-------------------------------------------------------------------- 516 say_37
grammar G { rule TOP { <upper> } }
 say(G.parse("A")); 
#-------------------------------------------------------------------- 517 say_38
grammar G { rule TOP { <xdigit> } }
 say(G.parse("f")); 
#-------------------------------------------------------------------- 518 say_39
grammar G { rule TOP { "abc" } }
 say(G.parse("abc")); 
#-------------------------------------------------------------------- 519 say_40
grammar G { rule TOP { "x" } }
 say(G.parse("x")); 
#-------------------------------------------------------------------- 520 say_41
grammar G { rule TOP { "a b" } }
 say(G.parse("a b")); 
#-------------------------------------------------------------------- 521 say_42
grammar G { rule TOP { <digit> "z" } }
 say(G.parse("9z")); 
#-------------------------------------------------------------------- 522 say_43
grammar G { rule TOP { <digit> <alpha> } }
 say(G.parse("5x")); 
#-------------------------------------------------------------------- 523 say_44
grammar G { rule TOP { "a" <digit> } }
 say(G.parse("a1")); 
#-------------------------------------------------------------------- 524 say_45
grammar G { rule TOP { <digit> <lower> <upper> } }
 say(G.parse("3aB")); 
#-------------------------------------------------------------------- 525 say_46
grammar G { rule TOP { <alpha>+ } }
 say(G.parse("abc")); 
#-------------------------------------------------------------------- 526 say_47
grammar G { rule TOP { <digit>+ } }
 say(G.parse("123")); 
#-------------------------------------------------------------------- 527 say_48
grammar G { rule TOP { <digit> <space> <digit> } }
 say(G.parse("1 2")); 
#-------------------------------------------------------------------- 528 say_49
grammar G { rule TOP { <upper> <lower>+ } }
 say(G.parse("Hello")); 
#-------------------------------------------------------------------- 529 say_50
grammar G { rule TOP { "hello" } }
 say(G.parse("hello")); 
#----------------------------------------------------------------- 530 say_try_1
    try { say('ok'); }; CATCH { say('never'); };
    say('after');
#--------------------------------------------------------- 531 simple_assign_101
my $b = 5;
say $b ** 2;
#--------------------------------------------------------- 532 simple_assign_112
my $x = 10; my $y = 3;
say $x % $y;
#--------------------------------------------------------- 533 simple_assign_113
my $x = 10; my $y = 3;
say $x * $y;
#--------------------------------------------------------- 534 simple_assign_123
my $d = 42;
{ say "def" with $d }
#---------------------------------------------------------- 535 simple_assign_38
my $n = 66;
say chr($n);
#---------------------------------------------------------- 536 simple_assign_51
my $x = 0;
say $x // "oops";
#---------------------------------------------------------- 537 simple_assign_54
my ($a, $b) = (10, 20);
say $a + $b;
#---------------------------------------------------------- 538 simple_assign_55
my ($x, $y) = "foo", "bar";
say $y;
#---------------------------------------------------------- 539 simple_assign_56
my ($a, $b, $c) = 1, 2, 3;
say $c;
#---------------------------------------------------------- 540 simple_assign_70
my $x = (42,);
say $x;
#---------------------------------------------------------- 541 simple_assign_71
my $x = (1,2,3);
say $x;
#---------------------------------------------------------- 542 simple_assign_73
my $s = "hello";
say $s.chars;
#---------------------------------------------------------- 543 simple_assign_74
my $x = 5;
say "yes" with $x;
#---------------------------------------------------------- 544 simple_assign_76
my $x = 42;
say $_ with $x;
#---------------------------------------------------------- 545 simple_assign_77
my $x = 0;
say "z" with $x;
#---------------------------------------------------------- 546 simple_assign_85
my $i = 0;
until $i >= 3 { say $i; $i = $i + 1 }
#---------------------------------------------------------- 547 simple_assign_87
my $c = "z";
say $c.ord;
#--------------------------------------------------------- 548 simple_program_26
my $y;
say "gone" without $y;
#---------------------------------------------------------- 549 simple_program_9
my $x;
say $x // "default";
#-------------------------------------------------------------------- 550 sub_12
sub f(:$x) { say $x.defined; }
f();
#-------------------------------------------------------------------- 551 sub_13
sub f(:$x = 5) { say $x; }
f();
#-------------------------------------------------------------------- 552 sub_15
sub f(:$q, :$x) { say $x; }
f(q => 1, x => 4);
#-------------------------------------------------------------------- 553 sub_27
sub sq($n) { $n * $n }
say sq(4) + 4;
#-------------------------------------------------------------------- 554 sub_29
sub add($a,$b) { $a + $b }
say add(3,4);
#-------------------------------------------------------------------- 555 sub_33
sub announce($x) { say "got $x" }
announce(42);
#-------------------------------------------------------------------- 556 sub_34
sub sq($n) { $n * $n }
say sq(5);
#-------------------------------------------------------------- 557 sub_array_12
sub f(*@r) { say @r.elems; }
f();
#-------------------------------------------------------------- 558 sub_array_13
sub f(*@r) { say @r.elems; }
f(10,20,30);
#-------------------------------------------------------------- 559 sub_array_17
sub f(*@r) { say @r; }
f("x","y","z");
#-------------------------------------------------------------- 560 sub_array_18
sub f(*@r) { say @r[2]; }
f(1,2,3);
#--------------------------------------------------------------- 561 sub_array_7
sub f(**@r) { say @r.elems; }
f(10,20,30);
#---------------------------------------------------------------- 562 sub_hash_2
sub collides(*%h) { say %h{'h'}; }
collides(h => 42);
#---------------------------------------------------------------- 563 sub_hash_5
sub only(*%h) { say %h.elems; }
only(a => 1, b => 2, c => 3);
#---------------------------------------------------------------- 564 sub_hash_6
sub only(*%h) { say %h.elems; }
only();
#---------------------------------------------------------------- 565 sub_hash_8
sub f(*%h) { say %h{'z'}; }
f(z => 4, w => 5);
#--------------------------------------------------- 566 test_interp_leading_var
my $x = "world";
say "$x there";
#------------------------------------------------------ 567 test_interp_only_var
my $x = "hi";
say "$x";
#-------------------------------------------------------- 568 test_interp_simple
my $name = "world";
say "hello $name";
#-------------------------------------------------- 569 test_interp_trailing_lit
my $a = "foo";
say "val=$a!";
#---------------------------------------------------------- 570 test_print_basic
my $x = "hello";
print "$x\n";
#------------------------------------------------------------------ 571 array_14
my @n = (1,2,3,4);
say [*] @n;
say [+] @n;
#------------------------------------------------------------------ 572 array_15
my @a = (10,20,30);
say @a[*-1];
say @a[*-2];
#------------------------------------------------------------------ 573 array_22
my @b = 1,2,3;
@b = (1+2);
say @b.elems;
#------------------------------------------------------------------ 574 array_23
my @a = 1,2,3;
@a = 9;
say @a.elems;
#------------------------------------------------------------------ 575 array_33
my @a = (10,20,30);
say @a[*-1];
say @a[*-2];
#----------------------------- 576 ladder__rung01_variables_multiple_declaration
my ($a, $b) = (1, 2);
say $a;
say $b;
#----------------------------------- 577 ladder__rung01_variables_no_initializer
my $x;
$x = 5;
say $x;
#------------------------------- 578 ladder__rung026_lit_radix_fraction_identity
say :16<ff.8> === 255.5;
say :16<ff.8> eqv 255.5;
say :16<ff.8> ~~ Rat;
#----------------------------------- 579 ladder__rung027_quote_q_plain_symmetric
say Q/a\\b$x/;
say Q|a{1}b|;
say Q!a@b!;
#----------------------------------------------------- 580 ladder__rung05_hashes
my %h = a => 1, b => 2;
say %h{'a'};
say %h{'b'};
#----------------------------------------- 581 ladder__rung05_hashes_keys_values
my %h = (a => 1, b => 2);
say %h.keys.sort;
say %h.values.sort;
#------ 582 ladder__rung07_subs_a_bare_make_temp_dir_is_a_call_without_arguments
use lib "/home/resources/roast-master/packages/Test-Helpers/lib"; use Test::Util;
my $d = make-temp-dir; my $e = make-temp-dir();
say $d.d, " ", $d.e, " ", $d.f, " ", ($d.Str ne $e.Str)
#--------------------------------------------- 583 ladder__rung09_string_methods
my $s = "Raku";
say $s.uc;
say $s.chars;
#------------------------------------- 584 ladder__rung10_given_when_basic_match
given 5 {
    when 5 { say "matched"; }
}
#- 585 ladder__rung13_classes_an_attributive_named_parameter_binds_the_attribute_in_build
class A { has $.x; has $.y; submethod BUILD(:$!x, :$!y) { } }
class B { has $.x; submethod BUILD(Int :$!x) { } }
say A.new(x => 1, y => 2).x, A.new(x => 3, y => 4).y, B.new(x => 5).x;
#- 586 ladder__rung14_roles_the_compile_time_variable_role_names_the_enclosing_role
role R { method n { $?ROLE.^name } }
class K does R { }
say K.n;
#----------------------------------- 587 ladder__rung16_bool_relops_interpolated
my $b = 3 > 1;
my $c = 3 < 1;
say "b=$b c=$c";
#--------------------------------------------------------- 588 simple_assign_103
my $n = 5;
--$n;
say $n;
#--------------------------------------------------------- 589 simple_assign_104
my $n = 5;
++$n;
say $n;
#---------------------------------------------------------- 590 simple_assign_25
my $s = 1;
$s = 2;
say $s;
#---------------------------------------------------------- 591 simple_assign_39
my $x = 5;
$x += 3;
say $x;
#---------------------------------------------------------- 592 simple_assign_41
my $x = 24;
$x /= 6;
say $x;
#---------------------------------------------------------- 593 simple_assign_42
my $x = 6;
$x *= 4;
say $x;
#---------------------------------------------------------- 594 simple_assign_43
my $x = 7;
$x -= 4;
say $x;
#---------------------------------------------------------- 595 simple_assign_52
my ($a, $b) = 1, 2, 3;
say $a;
say $b;
#---------------------------------------------------------- 596 simple_assign_53
my ($a, $b, $c) = 1, 2;
say $a;
say $b;
#---------------------------------------------------------- 597 simple_assign_57
my ($a, $b) = 3, 7;
say $a;
say $b;
#---------------------------------------------------------- 598 simple_assign_58
my $h = 7/2;
say $h*2 == 7 ?? 7 !! 0;
say $h*2;
#---------------------------------------------------------- 599 simple_assign_78
my $x = 3;
say "nope" without $x;
say "end";
#---------------------------------------------------------- 600 simple_assign_97
my $i = 0;
$i = $i + 1 until $i >= 3;
say $i;
#--------------------------------------------------------- 601 simple_program_25
my $y;
say "nope" with $y;
say "end";
#----------------------------------------------------- 602 test_interp_multi_var
my $a = "foo";
my $b = "bar";
say "start $a middle $b end";
#----------------------------------------------------------- 603 test_print_expr
my $a = 1;
my $b = 2;
print $a + $b;
#------------------------------------------------------------------ 604 array_32
my @a = (10,20,30);
say @a[0];
say @a[2];
say @a[1] + 5;
#----------------------------------------------------------- 605 array_replace_3
my @a = (1,2,3);
say "A";
say @a[99];
say "B";
#----------------------------------------------------------- 606 array_replace_4
my @a = (10,20,30);
say "before";
say @a[3];
say "after";
#------------------------------------------------------------ 607 junction_say_6
    say(any(1, 2, 3));
    say(all('a', 'b'));
    say(none(10, 20));
    say(one('x', 'y'));
#-------------------------------------------------- 608 ladder__rung01_variables
my $name = "Raku";
my $n = 42;
say $name;
say $n;
#--------------------------------------- 609 ladder__rung027_quote_q_a_b_escapes
my @foo = <a b>;
say Q:a:b/@foo[]/;
say Q:a:b/\@foo[]/;
say Q:a:b/\\@foo[]/;
#--------------------------------------- 610 ladder__rung027_quote_q_s_b_escapes
my $foo = 42;
say Q:s:b[$foo];
say Q:s:b[\$foo];
say Q:s:b[\\$foo];
#----------------------------------------- 611 ladder__rung028_quote_qq_adverb_h
my %foo = a => 42;
say Q:h:b/%foo<a>/;
say Q:h:b/\%foo<a>/;
say Q:h:b/\\%foo<a>/;
#----------------------------------------------------- 612 ladder__rung04_arrays
my @arr = (1, 2, 3);
say @arr[0];
say @arr[2];
say @arr.elems;
#--------------------------- 613 ladder__rung04_arrays_flatten_past_128_elements
my @a = 1 xx 200;
my @l = @a.Slip, 5;
say @l.elems;
say @l[199] + @l[200];
#--------------------------------------- 614 ladder__rung05_hashes_exists_delete
my %h = (a => 1);
say %h{'a'}:exists;
%h{'a'}:delete;
say %h{'a'}:exists;
#------------------------------------ 615 ladder__rung10_given_when_default_case
given 99 {
    when 1 { say "one"; }
    default { say "other"; }
}
#-------------------------- 616 ladder__rung10_given_when_no_match_falls_through
given 99 {
    when 1 { say "one"; }
}
say "after";
#--------------------------- 617 ladder__rung17_compare_ops_in_a_boolean_context
say ((1 <=> 2) ?? "T" !! "F");
say ((2 <=> 2) ?? "T" !! "F");
say (("a" cmp "b") ?? "T" !! "F");
if (3 <=> 3) { say "y" } else { say "n" }
#--------------------------------------- 618 ladder__rung17_compare_ops_variable
my $o = (5 <=> 2);
say $o;
my $p = ("a" leg "b");
say $p;
#------------------------------------------------- 619 parse_census__qto_heredoc
my $x = q:to'END';
hi
END
say $x;
#-------------------- 620 roast_causes__rc05_infix_precedence_traits_are_applied
{ sub infix:<mean>($a, $b) { ($a + $b) / 2 }; say 10 mean 4 * 5; }
{ sub infix:<mean>($a, $b) is tighter(&infix:<*>) { ($a + $b) / 2 }; say 10 mean 4 * 5; }
{ sub infix:<mul2>($a, $b) is equiv(&infix:<*>) { $a * $b }; say 2 + 3 mul2 4; }
{ sub infix:<lo>($a, $b) is looser(&infix:<+>) { $a * $b }; say 1 + 2 lo 3; }
#--------------------------------------------------------- 621 simple_assign_109
my $n = 7;
repeat {
    say $n;
} until $n > 0;
#---------------------------------------------------------- 622 simple_assign_50
my $a = "ok";
my $b;
say $a // "nope";
say $b // "fallback";
#---------------------------------------------------------- 623 simple_assign_59
my $a = 5; my $b = 2;
say $a/$b;
my $c = 8; my $d = 2;
say $c/$d;
#---------------------------------------------------------- 624 simple_assign_75
my $x = 7;
my $r = 0;
$r = $_ with $x;
say $r;
#---------------------------------------------------------- 625 simple_assign_79
my $y;
my $r = 0;
$r = 9 without $y;
say $r;
#---------------------------------------------------------- 626 simple_assign_86
my ($a, $b, $c) = 3, 7;
say $a;
say $b;
say "end";
#---------------------------------------------------- 627 core__rc03_string_subs
my $s = "  Hello World  ";
say lc($s.trim), "|", uc("abc"), "|", tc("abc"), "|", tclc("aBC"), "|", fc("ABC");
say chomp("x\n"), "|", chop("abc"), "|", flip("abc"), "|", wordcase("hello world");
say trim-leading($s), "|", trim-trailing($s), "|", substr("abcdef", 2, 3), "|", index("abcabc", "c"), "|", rindex("abcabc", "c");
say ords("AB"), "|", samecase("hello", "AbCd");
#----------------------------- 628 ladder__rung023_kw_nil_nil_hash_element_reset
my %h = a => 1;
%h<a> = Nil;
say %h<a>.WHAT;
say %h<a> === Any;
say %h<a>.defined;
#- 629 ladder__rung03_strings_a_heredoc_terminator_indent_counts_tab_stops_of_eight_columns
my $q = qq:to/END/;
        	line one
	        line two
		END
say $q.raku;
#-------------------------------------------- 630 ladder__rung04_arrays_push_pop
my @a = (1, 2);
@a.push(3);
say @a;
@a.pop;
say @a;
#----------------------------------- 631 ladder__rung10_given_when_multiple_when
given 2 {
    when 1 { say "one"; }
    when 2 { say "two"; }
    when 3 { say "three"; }
}
#-------------------------------------------------- 632 ladder__rung11_junctions
if any(1,2,3) == 2 {
    say "yes";
} else {
    say "no";
}
#---------------------------------------------- 633 ladder__rung11_junctions_all
if all(1,2,3) > 0 {
    say "yes";
} else {
    say "no";
}
#--------------------------------------------- 634 ladder__rung11_junctions_none
if none(1,2,3) == 5 {
    say "yes";
} else {
    say "no";
}
#---------------------------------------------- 635 ladder__rung11_junctions_one
if one(1,2,3) == 2 {
    say "yes";
} else {
    say "no";
}
#------ 636 roast_causes__rc09_a_user_candidate_on_a_builtin_infix_is_dispatched
enum A <e1 e2>;
multi infix:<< - >>(e1, e2) { return "AWW" };
say e1 - e2;
say 5 - 2;
say 1.5 - 1;
#--------------------------------------------------------- 637 simple_assign_108
my $j = 10;
repeat {
    $j = $j + 1;
    say $j;
} until $j >= 12;
#---------------------------------------------------------- 638 simple_assign_90
my $i = 3;
$i--;
say $i;
$i--;
say $i;
#---------------------------------------------------------- 639 simple_assign_94
my $i = 0;
$i++;
say $i;
$i++;
say $i;
#--------------------------------------- 640 ladder__rung023_kw_nil_nil_in_array
say [Nil, 1].raku;
say [1, Nil, 3].raku;
my @a = 1, Nil, 3;
say @a.raku;
my @b = (Nil, "a");
say @b.raku;
#--------------------------------------- 641 ladder__rung025_kw_nan_nan_identity
say NaN === NaN;
say NaN === -NaN;
say NaN !=== NaN;
say 0e0 === -0e0;
my $x = NaN;
say $x === $x;
#--------------------------------- 642 ladder__rung027_quote_q_adverb_long_names
my $x = 5;
say Q:double/a$x\t/;
say Q:single/a$x\t/;
say Q:scalar/a$x\t/;
say Q:backslash/a$x\t/;
say Q:words/a b/.elems;
#------------------------------------------------- 643 ladder__rung02_arithmetic
my $a = 7;
my $b = 3;
say $a + $b;
say $a - $b;
say $a * $b;
say $a % $b;
#----------- 644 roast_causes__rc06_samecase_reads_the_case_of_each_pattern_char
my Str $a = 'Just another Raku hacker';
say $a.samecase('XXXXXXXXXXXXXXXXXXXXXXXXX');
say $a.samecase('äääääääääääääääääääääääää');
say 'Ab'.samecase('äÄ');
say 'abc'.samecase('Ä');
say $a;
#------------------------------------------------------ 645 core__rc01_core_subs
my @a = 1, 1, 2, 3, 3, 3, 4;
say squish(@a);
say unique(@a);
say permutations(3).elems;
say combinations(4, 2).elems;
say sech(0), " ", cotanh(1).round(0.001), " ", cosech(1).round(0.001);
say lines("a\nb\nc").elems;
#------------------------------------ 646 ladder__rung02_int_promotes_past_int64
my $m = -9223372036854775807 - 1;
say -$m;
say $m * -1;
say $m - 1;
my $p = 9223372036854775807;
say $p + 1;
say $p * 2;
#------------------------------- 647 ladder__rung023_kw_nil_fresh_scalar_compare
my $x;
say $x < 5;
say $x == 0;
say $x <=> 1;
my $a;
my $b = 5;
say $a < $b;
say $b > $a;
#----------------------------- 648 ladder__rung023_kw_nil_nil_typed_scalar_reset
my Int $i = 5;
$i = Nil;
say $i.WHAT;
say $i.raku;
say $i === Int;
my Str $s = Nil;
say $s.WHAT;
say $s === Str;
#-------------------------------------------- 649 ladder__rung024_kw_inf_inf_fmt
say Inf.fmt("%f");
say Inf.fmt("%e");
say Inf.fmt("%g");
say (-Inf).fmt("%f");
say Inf.fmt("%5s");
say 3.14159.fmt("%.2f");
say 42.fmt("%05d");
say 255.fmt("%x");
#- 650 ladder__rung03_strings_like_and_unlike_match_the_string_an_instance_with_its_own_str_gives
use Test;
plan 5;
class Foo { method Str { 'bar' } }
like Foo.new, /bar/, 'an instance with its own Str is matched through it';
unlike Foo.new, /baz/, 'and unlike reads the same string';
like 42, /42/, 'an Int';
unlike 42, /43/, 'an Int, unlike';
like 3.5, /^ 3 '.' 5 $/, 'a Rat';
#-------------------------------- 651 ladder__rung023_kw_nil_fresh_scalar_is_any
my $x;
say $x;
say $x.WHAT;
say $x.raku;
say $x.defined;
my Int $i;
say $i;
say $i.WHAT;
say $i.raku;
#-------------- 652 ladder__rung07_subs_a_named_placeholder_is_a_named_parameter
sub greet { say "hello " ~ $:name }
greet(:name<world>);
sub diff { say $:big - $:small }
diff(:small(2), :big(10));
sub scaled { say $^x * $:by }
scaled(4, :by(3));
use isms <Perl5>;
sub cap { say $:F + 1 }
cap(:F(41));
#------------------------------------------------------------------- 653 token_1
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
#------------------------------------------ 654 ladder__rung024_kw_inf_inf_parse
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
#----------------------------------------------------------------- 655 sub_say_4
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
#-------------------------------- 656 ladder__rung025_kw_nan_nan_distinct_values
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
#------------------------------------------------------------- 657 token_regex_1
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
#- 658 ladder__rung09_regex_the_subst_method_takes_x_with_a_count_a_range_or_a_star_and_nth
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
#- 659 ladder__rung02_arithmetic_rat_literals_division_stringification_and_methods
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
#------------------------------------------------------------------ 660 array_40
my $x = 6; my @a = (1,2,3); say $x * @a.elems;
#------------------------------------------------------------------ 661 array_56
my $n = 4; my @c = "yo" xx $n; say @c.elems;
#-------------------------------------------------------------- 662 array_say_10
 my @a = "hello".comb; say(elems(@a)); 
#-------------------------------------------------------------- 663 array_say_11
 my @a = "a\nb\nc".lines; say(elems(@a)); 
#-------------------------------------------------------------- 664 array_say_12
 my @a = "a b c".words; say(elems(@a)); 
#--------------------------------------------------------------- 665 array_say_7
 my @a = (10, 20, 30); say(@a.elems); 
#--------------------------------------------------------------- 666 array_say_8
 my @a = (1, 2, 3); say(@a.join); 
#--------------------------------------------------------------------- 667 for_2
for ^5 -> $i { say $i }
#--------------------------------------------------------------------- 668 for_3
for ^3 { say $_ }
#-------------------------------------------------------------- 669 hash_array_1
my %h; %h<k> = 5; my @w = <a b c>; say %h<k>;
#- 670 ladder__rung01_variables_an_enum_member_is_the_enclosing_scopes_name_not_a_subs_own_variable
enum Color <red green>; sub f { my $red = 5; $red + +green }; say f();
#- 671 ladder__rung06_control_a_declaration_with_a_statement_modifier_is_the_enclosing_blocks_variable
my $x = 1; { my $x = 9 if True; say $x }; say $x;
#- 672 ladder__rung06_control_an_if_bodys_own_my_variable_is_not_the_enclosing_variable
my $a = 1; if True { my $a = 3; say $a }; say $a;
#- 673 ladder__rung08_for_a_c_style_loop_bodys_own_my_variable_is_not_the_enclosing_variable
my $m = 50; loop (my $i = 0; $i < 2; $i++) { my $m = $i + 1; say $m }; say $m;
#---- 674 ladder__rung08_for_a_pair_pattern_pointy_signature_binds_key_and_value
for (1 => 'one', 2 => 'two') -> (:key($n), :value($w)) { say "$n:$w" }
#- 675 ladder__rung10_given_a_given_bodys_own_my_variable_is_not_the_enclosing_variable
my $g = 1; given 5 { my $g = $_ + 1; say $g }; say $g;
#-------- 676 ladder__rung15_blocks_a_block_inside_a_sub_has_its_own_my_variable
sub f { my $a = 7; { my $a = 8; say $a }; say $a }; f();
#----------- 677 ladder__rung19_block_a_whatevercode_argument_to_the_grep_listop
say grep(* > 1, 1..3).join(",");
#--------------------------------------- 678 ladder__rung19_block_methcall_topic
say ("foo","bar").map({ $_.substr(1,1) });
#---------------------------------------- 679 ladder__rung20_paren_group_chained
say (1,2).map({ ($^a).Str }).join(",");
#------------------------------------------ 680 ladder__rung20_paren_group_topic
say (1,2).map({ ($_).Str });
#-------------------------------------------------------------------- 681 loop_1
my $s = 0; loop (my $i = 1; $i <= 4; $i++) { $s = $s + $i; }; say $s;
#------------------------------------------------------------ 682 loop_replace_1
loop (my $i = 0; $i < 3; $i++) { say $i; }
#------------------------------------------------------------ 683 loop_replace_2
loop (my $i = 3; $i > 0; $i--) { say $i; }
#-------------------------------------------------------------------- 684 say_14
 my $x = 5; { say($x); } 
#-------------------------------------------------------------------- 685 say_18
my $b = { say(7); }; $b();
#-------------------------------------------------------------------- 686 say_22
 my $s = ""; say($s.Bool); 
#-------------------------------------------------------------------- 687 say_24
 my $s = "42"; say($s.Int + 0); 
#-------------------------------------------------------------------- 688 say_25
 my $n = 7; say($n.Str); 
#-------------------------------------------------------------------- 689 say_26
 my $x = 5; my $u; say($x.defined); say($u.defined); 
#-------------------------------------------------------------------- 690 say_27
 my $s = "hello"; $s .= uc; say($s); 
#-------------------------------------------------------------------- 691 say_28
 my $s = "ABC"; $s .= lc(); say($s); 
#-------------------------------------------------------------------- 692 say_55
 my $n = 3 - 8; say($n.abs); 
#-------------------------------------------------------------------- 693 say_57
 my $x = 3.2; say($x.ceiling); 
#-------------------------------------------------------------------- 694 say_58
 my $x = 3.7; say($x.floor); 
#-------------------------------------------------------------------- 695 say_60
 my $x = 3.5; say($x.round); 
#-------------------------------------------------------------------- 696 say_79
 my $s = "abc"; say($s.uc); 
#--------------------------------------------------------- 697 simple_assign_127
my $s = "ab" x 0; say "[" ~ $s ~ "]";
#---------------------------------------------------------- 698 simple_assign_27
 my $b = { return 3; }; say $b() + $b(); 
#--------------------------------------------------------------------- 699 sub_6
 my $s = sub { say 8; }; $s(); 
#--------------------------------------------------------------- 700 test_seq_op
my @list = (1 ... 10); say @list;
#------------------------------------------------------------------ 701 array_37
my @w = "a", "b", "c";
say [~] @w;
#------------------------------------------------------------------ 702 array_45
my @a = 10,20,30;
if @a[*-1] > 25 { say "big" }
#--------------------------------------------------------------- 703 array_say_9
    my @a = (1, 2, 3);
    say(@a);
#------------------------------------------------------------ 704 class_method_2
class C { method go() { return 42 } }
say C.new.go;
#------------------------------------------------------------------- 705 hash_15
my $x = 10; my %h = (a => 5);
say $x * %h{'a'};
#-------------------------------------------------------------- 706 join_array_1
my @a = (10,20,30);
say @a[*].join(",");
#------------------------------------------------------------- 707 join_array_10
my @s = "a","b","c","d";
say @s[3,1].join("-");
#------------------------------------------------------------- 708 join_array_11
my @a = 10,20,30,40,50;
say @a[0,2,4].join(",");
#------------------------------------------------------------- 709 join_array_12
my @a = 10,20,30,40,50;
say @a[1,3].join(",");
#------------------------------------------------------------- 710 join_array_14
my @a = 1,2,3,;
say @a.join(",");
#------------------------------------------------------------- 711 join_array_15
my @b = (4,5,6,);
say @b.join(",");
#------------------------------------------------------------- 712 join_array_17
my @c = 1,2,3;
say @c[0,2,].join(",");
#-------------------------------------------------------------- 713 join_array_2
my @a = (7);
say @a[*].join(",");
#-------------------------------------------------------------- 714 join_array_3
my @a = "p", "q", "r";
say @a.keys.join(",");
#-------------------------------------------------------------- 715 join_array_7
my @a = "p", "q", "r";
say @a.values.join(",");
#-------------------------------------------------------------- 716 join_array_8
my @a = 10,20,30,40,50;
say @a[2,0].join(",");
#-------------------------------------------------------------- 717 join_array_9
my @a = 10,20,30;
say @a[0,0,0].join(",");
#--------------------------------------------------------------- 718 join_hash_1
my %h = a => 1, b => 2, c => 3;
say %h.keys.sort.join(",");
#--------------------------------------------------------------- 719 join_hash_2
my %h = a => 1, b => 2, c => 3;
say %h.pairs.sort.join(" ");
#--------------------------------------------------------------- 720 join_hash_3
my %h = a => 1, b => 2, c => 3;
say %h.values.sort.join(",");
#----- 721 ladder__rung01_variables_a_declarator_bind_takes_the_whole_comma_list
my $e := 2, 3, 5; my @f := 1, 2;
say $e.raku, " ", @f.raku, " ", $e.elems;
#------------------------------------------ 722 ladder__rung027_quote_q_a_adverb
my @a = 1, 2;
say Q:a/@a[] @a $a/;
#----------------------------------------- 723 ladder__rung027_quote_q_plain_raw
say Q{$x @y %z &f {1+1} \n \\};
say Q{};
#------------------------------------------ 724 ladder__rung027_quote_q_s_adverb
my $x = 5;
say Q:s/a$x\n{$x}/;
#-------------------------------- 725 ladder__rung027_quote_q_s_adverb_backslash
my $x = 5;
say Q:s/a\$x a\\$x/;
#-------------------------------------- 726 ladder__rung028_quote_qq_array_range
my @a = 1, 2, 3;
say qq/@a[1..2] @a[*-1]/;
#- 727 ladder__rung04_arrays_an_itemized_array_is_one_element_of_a_slurpy_a_join_and_a_flat
sub f(*@x) { @x.elems }; say f(1, $[2, 3]), f($[1, 2, 3]), f(|$[1, 2]), " ", join("|", $["a", "b"]), " ", join("|", ["a", "b"]);
say $[1, 2].raku, " ", (1, $[2, 3]).flat.elems, " ", [1, $[2, 3]].elems, " ", (1, $[2, 3], 4).elems;
#----------------------------------------------- 728 ladder__rung04_arrays_slice
my @a = (1, 2, 3, 4, 5);
say @a[1..3];
#- 729 ladder__rung06_control_a_while_bodys_own_my_variable_is_not_the_enclosing_variable
my $t = 100; my $c = 0;
while $c < 2 { my $t = $c * 10; say $t; $c++ }; say $t;
#----- 730 ladder__rung06_control_an_if_statement_in_parentheses_gives_its_value
my $c = 1; my $v = (if $c { 10 } else { 20 });
say $v;
#--------------------------------------------- 731 ladder__rung06_control_unless
my $x = 5;
unless ($x > 10) { say "small"; }
#- 732 ladder__rung07_subs_a_hash_parameter_with_a_subsignature_unpacks_its_named_items
sub k(%h (:$left, :$right)) { "$left $right" }
say k({ left => 1, right => 2 });
#- 733 ladder__rung07_subs_a_multi_candidate_typed_array_hash_callable_or_positional_is_chosen_by_the_argument
multi g(Array $a) { "A" }; multi g(Hash $h) { "H" }; multi g(Callable $c) { "C" }; multi g(Positional $p) { "P" }; multi g($x) { "S" }
say g([1]), g({ a => 1 }), g({ 1 }), g(3), g((1, 2)), g(1..3);
#- 734 ladder__rung07_subs_a_subs_own_my_variable_is_not_the_file_variable_another_sub_reads
my $x = 7; sub f { my $x = 5; $x }; sub g { $x };
say f(), g();
#------------------- 735 ladder__rung08_for_a_loop_header_declares_two_variables
my $s = ""; loop (my $a = 1, my $b = 2; $a < 5; $a++, $b++) { $s = "$a $b"; }
say $s;
#- 736 ladder__rung08_for_a_pointy_block_parameter_with_a_subsignature_unpacks_each_pair
for a => 1, b => 2 -> Pair $p (:$key, :$value) { print "$key$value," }
say "";
#------------------ 737 ladder__rung08_for_a_while_statement_in_parentheses_runs
my $n = 0; (while $n < 5 { $n++ });
say $n;
#- 738 ladder__rung08_for_last_from_an_inner_loop_leaves_a_labelled_loop_in_parentheses
my $e = 0; (L5: loop { loop { $e++; last L5 } });
say $e;
#- 739 ladder__rung08_for_last_from_an_inner_while_leaves_a_labelled_while_in_parentheses
my $c = 0; (L1: while True { while True { $c++; last L1 } });
say $c;
#-------- 740 ladder__rung09_regex_a_bare_regex_in_a_condition_matches_the_topic
$_ = "foo bar qux"; say so /baz/; say so /bar/;
say /baz/ ?? "yes" !! "no"; say "unless" unless /baz/; if /bar/ { say "if" }
#----------------- 741 ladder__rung10_smartmatch_a_bag_matches_only_an_equal_bag
say (bag <a b c>) ~~ (bag <a b c>);
say (bag <b c>) ~~ (bag <a b c>);
#---------- 742 ladder__rung10_smartmatch_a_quantity_that_differs_does_not_match
say (bag <a b c>) ~~ (bag <a b c c>);
say (mix <a b>) ~~ (mix <a b b>);
#----------------- 743 ladder__rung10_smartmatch_a_set_matches_only_an_equal_set
say (set <a b c>) ~~ (set <a b c>);
say (set <b c>) ~~ (set <a b c>);
#----- 744 ladder__rung10_smartmatch_the_topic_is_coerced_to_the_matchers_family
say "a" ~~ (set <a>);
say (bag <a a>) ~~ (set <a>);
#- 745 ladder__rung13_classes_a_method_whose_invocant_is_named_dollar_underscore_reads_it_as_the_topic
class Foo { method echo { "echo" }; method topic ($_: ) { .echo } }
say Foo.new.topic;
#- 746 ladder__rung13_classes_a_method_with_a_definite_type_invocant_keeps_the_parameters
class A { method me(A:D: $y) { $y } }
say A.new.me(8);
#------ 747 ladder__rung13_classes_named_arguments_of_a_method_call_bind_by_name
class F { method m(:$x) { $x }; method n(:$x, :$y) { "$x-$y" }; method o($a, :$x) { "$a/$x" } }
say F.new.m(x => 4), F.new.m(:x(5)), F.new.n(:y(1), :x(2)), F.new.o(9, :x(3)), F.new.o(9, x => 3);
#-------------------------------------------- 748 ladder__rung15_blocks_anon_sub
my $f = sub { 1 };
say $f();
#----------------------------------- 749 ladder__rung15_blocks_anon_sub_with_arg
my $f = sub ($arg) { 1 + $arg };
say $f(3);
#--------------------------- 750 ladder__rung15_blocks_fail_is_an_assignment_rhs
sub fl { my $e = fail 42; 7 }
say fl().WHAT;
#- 751 ladder__rung15_blocks_failure_new_is_a_failure_value_not_a_failing_statement
{ my $f = Failure.new; say "in ", $f.WHAT.gist, " ", $f.defined }
sub g { my $f = Failure.new("boom"); $f.exception.message }; say g();
#---------------------------------------------- 752 ladder__rung18_two_arg_block
my @n = (3,1,2);
say @n.sort({ $^b <=> $^a });
#-------------------------------- 753 ladder__rung18_two_arg_block_reduce_concat
my @w = ("a","bb","c");
say @w.reduce({ $^a ~ $^b });
#---------------------------------- 754 ladder__rung18_two_arg_block_sort_string
my @w = ("pear","fig","kiwi");
say @w.sort({ $^b leg $^a });
#--------------------------------- 755 ladder__rung19_block_methcall_sort_by_key
my @w = <aa b ccc>;
say @w.sort({ $^a.chars <=> $^b.chars });
#------------------------------------------------------------------- 756 multi_2
multi foo(Int $x) { return $x * 10; }
say foo(3);
#--------------------------------------------------- 757 parser__bare_ident_expr
my $r = foo + 1;
say($r);
#----------------------------------------------------- 758 parser__handle_stderr
my $e = $*STDERR;
say($e);
#------------------------------------------------------ 759 parser__handle_stdin
my $line = $*STDIN;
say($line);
#----------------------------------------------------- 760 parser__handle_stdout
my $x = $*STDOUT;
say($x);
#------------------------------------------------- 761 parser__nested_call_arith
my $x = add(foo(), bar()) + 1;
say($x);
#------------------------------------------------------ 762 parser__nested_calls
my $n = length(trim($s));
say($n);
#-------------------------------------------------------- 763 parser__slurp_file
my $content = slurp("/tmp/test.txt");
say($content);
#------------------------------------------------ 764 parser__triple_nested_call
my $r = abs(int(sqrt($x)));
say($r);
#------------------------------------------------------- 765 parser__try_die_msg
my $msg = "bad";
try { die $msg; } CATCH { say "error"; }
#------------------------------------------------------------- 766 range_array_1
my @a = 1..5;
say @a.elems;
#------------------------------------------------------------ 767 range_array_11
my @a = 1,2,3,4,5;
say @a[2..4].sum;
#------------------------------------------------------------ 768 range_array_12
my @r = 1..5;
say @r[*-1];
#------------------------------------------------------------- 769 range_array_2
my @a = 5..1;
say @a.elems;
#------------------------------------------------------------- 770 range_array_3
my @e = 1..^4;
say @e.elems;
#------------------------------------------------------------- 771 range_array_4
my @a = 1..5;
say @a.max;
#------------------------------------------------------------- 772 range_array_5
my @a = 1..5;
say @a.min;
#------------------------------------------------------------- 773 range_array_6
my @a = 1..5;
say [+] @a;
#------------------------------------------------------------- 774 range_array_7
my @a = 1..5;
say [*] @a;
#------------------------------------------------------------- 775 range_array_8
my @a = 3..3;
say @a.elems;
#------------------------------------------------------------- 776 range_array_9
my @a = 1..5;
say @a.sum;
#----------------------------------------------------- 777 range_array_replace_1
my Int @a = 1..4;
say @a.sum;
#-------------------------------------------------------------------- 778 say_13
    my $x = 6 * 7;
    say($x);
#-------------------------------------------------------------------- 779 say_66
my $x = 2;
say(1, $x, 3+4);
#-------------------------------------------------------------------- 780 say_91
    my $x = 99;
    say($x);
#------------------------------------------------------------ 781 say_replace_21
my $x = 4; my $y = 9;
say ($x < $y);
#------------------------------------------------------------- 782 say_try_die_1
    try { die('boom'); CATCH { say('caught'); } }
    say('after');
#------------------------------------------------------------- 783 say_try_die_4
    try { die('boom'); say('inside-after'); }
    say('after');
#--------------------------------------------------------- 784 simple_assign_120
my $x = 5;
{ say "big" if $x > 3 }
#--------------------------------------------------------- 785 simple_assign_121
my $x = 1;
{ say "hi" unless $x }; say $x;
#--------------------------------------------------------- 786 simple_assign_122
my $x = 0;
{ say "hi" unless $x }
#---------------------------------------------------------- 787 simple_assign_30
my $x = 5;
if ($x > 3) { say "big" }
#---------------------------------------------------------- 788 simple_assign_31
my $x = 5;
if 10 > $x > 1 { say "gt" }
#---------------------------------------------------------- 789 simple_assign_32
my $x = 5;
if 1 < $x < 10 { say "in" }
#---------------------------------------------------------- 790 simple_assign_33
my $x = 1;
if 1 <= $x < 10 { say "in" }
#---------------------------------------------------------- 791 simple_assign_34
my $a = 5;
if 1 < $a == 5 { say "m" }
#---------------------------------------------------------- 792 simple_assign_35
my $x = 50;
if 1 < $x < 10 { say "bad" } else { say "out" }
#---------------------------------------------------------- 793 simple_assign_36
my $x = 1;
if 1 < $x < 10 { say "bad" } else { say "out" }
#---------------------------------------------------------- 794 simple_assign_37
my $x = 5;
unless 1 < $x < 3 { say "fires" }
#---------------------------------------------------------- 795 simple_assign_60
my $n = 8;
if $n %% 2 { say "even" } else { say "odd" }
#---------------------------------------------------------- 796 simple_assign_61
my $n = 7;
if $n %% 2 { say "even" } else { say "odd" }
#---------------------------------------------------------- 797 simple_assign_72
my $i = 0;
until $i >= 10 { last if $i >= 2; say $i; $i = $i + 1 }
#---------------------------------------------------------- 798 simple_assign_81
my $x = 2;
if $x == 1 { say "one" } else { if $x == 2 { say "two" } else { say "other" } }
#---------------------------------------------------------- 799 simple_assign_82
my $x = 5;
if $x > 3 { say "big" }
#---------------------------------------------------------- 800 simple_assign_83
my $x = 2;
if $x > 3 { say "big" } else { say "small" }
#---------------------------------------------------------- 801 simple_assign_84
my $x = 2;
unless $x > 5 { say "not big" }
#---------------------------------------------------------- 802 simple_assign_88
my $x = 5;
if ($x > 3) { say "big"; }
#---------------------------------------------------------- 803 simple_assign_91
my $x = 1;
say "big" if $x > 3; say $x > 3;
#---------------------------------------------------------- 804 simple_assign_93
my $x = 5;
say "big" if $x > 3;
#---------------------------------------------------------- 805 simple_assign_95
my $ok = 1;
print "hi" if $ok == 1;
#---------------------------------------------------------- 806 simple_assign_96
my $x = 2;
say "small" unless $x > 3;
#-------------------------------------------------------------------- 807 sub_14
sub greet(:$name) { say "Hello " ~ $name; }
greet(name => "Bob");
#-------------------------------------------------------------------- 808 sub_23
sub f() { say "hi"; return }
f();
#-------------------------------------------------------------------- 809 sub_25
sub f() { return 5 }
say f();
#-------------------------------------------------------------------- 810 sub_28
sub gen { my $x = 5; $x * 2 }
say gen();
#-------------------------------------------------------------------- 811 sub_31
sub t { return 42; }
say t();
#-------------------------------------------------------------------- 812 sub_35
sub five() { return 5; };
say five();
#-------------------------------------------------------------------- 813 sub_37
sub f($x) { say "big" if $x > 3 }
f(5);
#--------------------------------------------------------------------- 814 sub_7
sub g() { say 7; }
 my $b = { g(); }; $b(); 
#--------------------------------------------------------------------- 815 sub_8
my sub inc($n) { $n + 1 }
say inc(9);
#-------------------------------------------------------------- 816 sub_array_15
sub f($a, *@r) { say [+] @r; }
f(0, 1,2,3,4);
#-------------------------------------------------------------- 817 sub_array_16
sub f($a, *@r) { say @r; }
f(1,2,3);
#--------------------------------------------------------------- 818 sub_array_2
sub f($a, *@r) { say @r.elems; }
f(1);
#--------------------------------------------------------------- 819 sub_array_6
sub f($a, **@r) { say @r.elems; }
f(1);
#--------------------------------------------------------------- 820 sub_array_8
sub f($a, **@r) { say @r; }
f(1,2,3);
#---------------------------------------------------------------- 821 sub_hash_7
sub mixed($p, :$n, *%rest) { say $p; }
mixed(7, n => 9, z => 4);
#---------------------------------------------------------------- 822 sub_say_10
sub f(Int $x) { say($x); }
 f(42); 
#---------------------------------------------------------------- 823 sub_say_11
sub f(Str $s) { say($s); }
 f("hi"); 
#----------------------------------------------------------------- 824 sub_say_9
sub f(Int $x) { say($x); }
 f(7); f("x"); say("after"); 
#----------------------------------------------------------- 825 test_lines_file
my @lines = lines("/tmp/test.txt");
say(@lines);
#------------------------------------------------- 826 test_stmt_ctrl_loop_three
my $i = 0;
loop ($i = 0; $i < 3; $i = $i + 1) { say $i; }
#---------------------------------------------------------- 827 test_stmt_pfx_do
my $x = 1;
do { say($x); };
#------------------------------------------------------------------- 828 while_4
my $i = 0;
while $i < 3 { say $i; $i = $i + 1 }
#----------------------------------------------------------- 829 while_replace_1
my $i = 0;
while ($i < 3) { say $i; $i = $i + 1 }
#------------------------------------------------------------------ 830 array_50
my @a = 10,20,30,40;
my $n = 2;
say @a[*-$n];
#----------------------------------------------------------- 831 array_replace_2
my @a = (10,20,30);
my $x = @a[7];
say "after";
#------------------------------------------------------- 832 array_say_replace_2
my @a = 1, 2, 3, 4;
my @b = 5, 6, 9;
say ([+] @a) + ([+] @b);
#------------------------------------------------------------------- 833 given_1
my $r = 0;
$r = $_ given 9;
say $r;
#------------------------------------------------------------- 834 join_array_16
my @a = 1;
@a = 8,9,;
say @a.join(",");
#-------------------------------------------------------------- 835 join_array_4
my @a = 1,2,3;
@a = 4,5,6;
say @a.join(",");
#-------------------------------------------------------------- 836 join_array_5
my @a = 1,2,3;
@a = (7,8,9);
say @a.join(",");
#-------------------------------------------------------------- 837 join_array_6
my @a = 1;
@a = 5 xx 3;
say @a.join(",");
#-------------------------------- 838 ladder__rung028_quote_qq_guard_array_index
my @a = 1, 2, 3;
my $i = 1;
say qq/@a[1] @a[$i] @a[] @a[$i + 1]/;
#----------------------------- 839 ladder__rung028_quote_qq_guard_escaped_sigils
my $x = 5;
my @a = 1, 2;
say qq/a\$x a\\$x a\@a[] \@a/;
#----- 840 ladder__rung07_subs_a_sigilless_parameter_aliases_a_variable_argument
my $v = 10; sub h(\z) { z = 99 }
h($v);
say $v;
#-------------------------------- 841 ladder__rung16_bool_relops_numeric_context
say (3 > 1) + 1;
my $b = 5 < 9;
say $b + 0;
#------------------------------------------- 842 ladder__rung20_paren_group_list
my $x = 5;
my $y = 6;
($x, $y).join("-").say;
#------------------------------------------------------------------- 843 multi_1
multi describe(Int $x) { return "a"; }
multi describe(Str $x) { return "b"; }
print describe(1), describe("y");
#--------------------------------------------------------------- 844 multi_sub_1
multi sub f(Int $a) { say "int"; }
multi sub f(Str $a) { say "str"; }
f(7);
#-------------------------------------------------------------------- 845 say_54
my $x = ();
say('A');
say('B');
#------------------------------------------------------------- 846 say_try_die_3
    say('pre');
    try { die('a'); }; CATCH { die('fatal-in-handler'); };
    say('unreached');
#--------------------------------------------------------- 847 simple_assign_107
my $x = 4; my $y = 9;
if ($x < $y) { say "ct" } else { say "cf" }
if (4 < 9) { say "lt" } else { say "lf" }
#--------------------------------------------------------- 848 simple_assign_119
my $x = 10;
{ $x = $x + 1 if $x > 5 }
say $x;
#---------------------------------------------------------- 849 simple_assign_40
my $s = "hello";
$s ~= " world";
say $s;
#---------------------------------------------------------- 850 simple_assign_80
my $a = 1;
my $b = 0;
if $a == 1 { if $b == 1 { say "both" } else { say "a-only" } }
#--------------------------------------------------------------- 851 sub_array_3
sub f(*@r) { say @r.elems; }
my @a = (1,2,3);
f(@a);
#------------------------------------------------------- 852 test_stmt_pfx_ENTER
my $x = 1;
ENTER { say("enter"); }
say($x);
#-------------------------------------------------------- 853 test_stmt_pfx_KEEP
my $x = 1;
KEEP { say("keep"); }
say($x);
#------------------------------------------------------- 854 test_stmt_pfx_LEAVE
my $x = 1;
LEAVE { say("leave"); }
say($x);
#-------------------------------------------------------- 855 test_stmt_pfx_POST
my $x = 5;
POST { say("post"); }
say($x);
#--------------------------------------------------------- 856 test_stmt_pfx_PRE
my $x = 5;
PRE { say("pre"); }
say($x);
#-------------------------------------------------------- 857 test_stmt_pfx_TEMP
my $x = 1;
TEMP { say("temp"); }
say($x);
#-------------------------------------------------------- 858 test_stmt_pfx_UNDO
my $x = 1;
UNDO { say("undo"); }
say($x);
#------------------------------------------------------------------- 859 while_5
my $i = 0;
$i = $i + 1 while $i < 3;
say $i;
#--------------------------------------------------------------- 860 array_say_3
    my @a = (10, 20, 30);
    say(elems(@a));
    my @e = '';
    say(elems(@e));
#--------------------------------------------------------------- 861 array_say_6
    my @a = (3, 1, 2);
    say(@a[1]);
    my @b = (10, 3, 20);
    say(@b[1]);
#--------------------------------------- 862 ladder__rung021_quote_lt_gt_newline
my @w = <a
b
c>;
say @w.join("|");
#----------------------------------- 863 ladder__rung026_lit_radix_call_variable
my $s = "ff";
say :16($s) + 1;
say :16("f" ~ "f");
say :16(~"ff");
#---------------------------------------------------- 864 ladder__rung03_strings
my $s = "Hello";
my $t = $s ~ ", world!";
say $t;
say "value: $s";
#------------------ 865 ladder__rung04_arrays_slip_method_flattens_into_the_list
my @b = 5, 4;
my @l = @b.Slip, 9;
say @l.elems;
say @l.join(",");
#-------------------------------------------------------- 866 rewrite__rr11_eval
use MONKEY-SEE-NO-EVAL;
say EVAL "1 + 2";
my $x = 5; say EVAL '$x * 2';
my $code = 'sub { $^a + 1 }'; my &f = EVAL $code; say f(41);
#---------------- 867 roast_causes__rc08_a_keyword_followed_by_a_paren_is_a_call
my ($x);
sub my($a) { $a + 17 }
$x = 5;
say my($x);
#------------------------------------------------------------------- 868 while_9
my $k = 5;
repeat {
    say $k;
} while $k > 100;
#--------------------------------------------------------------- 869 array_say_5
    my @a = (1, 2, 3);
    my @r = reverse(@a);
    say(@r[0]);
    say(@r[1]);
    say(@r[2]);
#- 870 ladder__rung04_arrays_a_method_call_after_whitespace_or_a_newline_applies_to_the_whole_term
my @a = 3, 1, 2;
my @b = @a
    .sort
    .reverse;
say @b, " ", ^3 .map(* * 2), " ", -5 .abs, " ", 1 + 2 .succ, " ", "ab" .uc, " ", (1, 2, 3) .elems;
#------------------- 871 ladder__rung07_subs_tail_if_false_returns_to_the_caller
sub g($p) { if $p < 0 { say "neg"; } }
sub h($p) { g($p); say "back ", $p; }
h(104);
h(3);
h(-1);
#- 872 ladder__rung07_subs_user_circumfix_with_constant_delimiters_and_unicode_brackets
my constant $x = "µ @";
sub circumfix:<<$x>>($) { 42 }
say 'defined';
sub circumfix:<⌊ ⌋>($e) { $e.floor }
say ⌊3.7⌋;
#-------- 873 ladder__rung09_regex_the_subst_method_with_x_zero_replaces_nothing
say "a b c d".subst(/\w/, "x", :x(0));
say "a a a a".subst("a", "x", :x(0));
my $s = "q r";
say $s.subst(/\w/, "z", :x(0));
say $s;
#--------------------------------- 874 ladder__rung10_given_when_when_with_range
given 5 {
    when 1..3 { say "low"; }
    when 4..6 { say "mid"; }
    default { say "high"; }
}
#-------------------------------------------- 875 ladder__rung12_exceptions_fail
sub f {
    fail "oops";
}
my $r = f();
say $r.defined;
#-------------------------- 876 ladder__rung13_classes_semicolon_between_members
class C { has $.x; method f() { 1 }; method g() { 2 }; }
role R { method r() { "r" }; }
class D does R { ; }
say C.new.f + C.new.g;
say D.new.r;
#--------------------------------------------------------------- 877 token_say_1
grammar G {
    token w   { \w+ }
    rule  TOP { "[" <w> "]" }
}
say(G.parse("[abc]"));
#--------------------------------------------------------------- 878 token_say_4
grammar G {
    token TOP { \d+ }
}

    say(G.parse("12345"));
#------------------------------------------------------------------- 879 while_8
my $i = 0;
repeat {
    $i = $i + 1;
    say $i;
} while $i < 3;
#---------------------------------------------- 880 benchmark_rc-man-or-boy-test
sub A ($k is copy, $x1, $x2, $x3, $x4, $x5) {
    my $B := { A(--$k, $B, $x1, $x2, $x3, $x4) };
    $k <= 0 ?? $x4() + $x5() !! $B();
}

say A(10, {1}, {-1}, {-1}, {1}, {0});
#------------------------------------------------------ 881 core__rc04_list_subs
my %h = a => 1, b => 2;
my @l = 10, 20, 30;
say keys(%h).sort, "|", values(%h).sort, "|", kv(%h).elems, "|", pairs(%h).elems;
say elems(@l), "|", end(@l);
splice(@l, 1, 1, 99);
say @l;
#--------------------- 882 ladder__rung04_arrays_num_element_keeps_its_precision
my @a = (2e0/3, 0.1e0 + 0.2e0, 7);
say @a[0];
say "e @a[1]";
say @a[0] * 3;
my ($x, $y) = (2500e0/3, 1e0/3);
say "$x $y";
#----------------------------------- 883 ladder__rung12_exceptions_specific_type
try {
    die X::AdHoc.new(payload => "typed");
    CATCH {
        when X::AdHoc { say "adhoc: " ~ .payload; }
    }
}
#---------------------------------------------------------- 884 simple_assign_92
my $x = 10;
my $y = 0;
$y = 99 if $x > 5;
say $y;
$y = 7 if $x > 50;
say $y;
#--------------------------------------------------------------- 885 token_say_3
grammar G {
    token word { \w+ }
    rule TOP { <word> }
}

    say(G.parse("hello"));
#---------------------------------------------------------------- 886 hash_say_5
    my %h;
    %h<lang> = 'Raku';
    %h<vers> = '6';
    say(%h<lang>);
    say(%h<vers>);
    %h<lang>:delete;
    say(%h<lang>:exists);
#------------------------- 887 ladder__rung03_strings_num_stringifies_round_trip
my $x = 0.1e0 + 0.2e0;
say "x=$x";
say ~$x;
say $x.Str;
say $x ~ "|" ~ 2e0/3;
my $b = 1 < 2;
say "b=$b";
#-- 888 ladder__rung04_arrays_rotate_takes_its_count_from_a_string_or_a_rational
my @a = <a b c d e>;
say ~@a.rotate("2");
say ~@a.rotate(2.5);
say ~@a.rotate(-1);
say ~@a.rotate("-2");
say ~@a.rotate;
say ~@a.rotate(7);
#--------------------------------------------------------------- 889 token_say_2
grammar G {
    token num  { \d+ }
    token word { \w+ }
    rule TOP { <num> <word> }
}

    say(G.parse("12abc"));
#---------------------------- 890 ladder__rung023_kw_nil_fresh_scalar_defined_or
my $x;
say $x // "dflt";
say $x.defined;
say $x.so;
say "[" ~ $x ~ "]";
say +$x;
my $y = Nil;
say $y // "alt";
#----------------------------------- 891 ladder__rung023_kw_nil_nil_scalar_reset
my $x = Nil;
say $x.WHAT;
say $x.raku;
say $x === Any;
$x = 3;
$x = Nil;
say $x.raku;
say (my $y = Nil).WHAT;
#- 892 ladder__rung09_regex_a_method_call_on_the_topic_on_the_right_of_a_smartmatch_is_made_on_the_left_operand
say so 'AA' ~~ .uc;
say so 'ab' ~~ .uc;
say so 'ab' ~~ .substr(0);
say so 'ab' ~~ .substr(1);
$_ = 'zz';
say so 'b' ~~ .substr(1);
say $_;
say "end";
#- 893 ladder__rung13_classes_an_enum_value_named_like_a_builtin_term_shadows_it
enum Cell <Empty Tree Burning>;
my @g = Empty, Tree, Empty, Burning;
say @g.elems;
say +@g[0], +@g[1], +@g[3];
say Empty == 0;
say (Empty, Tree).elems;
my @row = [ flat (Tree, Empty) xx 2 ];
say @row.elems;
#-------------------------------------------------------------------- 894 say_51
    my %h;
    %h{'name'} = 'Alice';
    %h{'age'} = '30';
    say(%h{'name'});
    %h{'age'} = '31';
    say(%h{'age'});
    say(%h{'name'}:exists);
    say(%h{'missing'}:exists);
#----------------------------------- 895 ladder__rung023_kw_nil_nil_literal_raku
say Nil;
say Nil.gist;
say Nil.raku;
say Nil.perl;
sub bare { return }
say bare().raku;
sub empty { }
say empty().raku;
say empty() === Nil;
#------------------------------------ 896 ladder__rung024_kw_inf_num_scalar_raku
say 3e0.raku;
say 1.5e0.raku;
say 0e0.raku;
say (1e0 / 3).raku;
say 5.raku;
say 1.5.raku;
my $x = 2e0;
say $x.raku;
say [1e0, 2.5e0].raku;
#- 897 ladder__rung03_strings_an_escaped_sigil_in_a_double_quoted_string_is_a_literal_dollar_or_at
my $x = 5; my @a = 1, 2;
say "\$";
say "\$x";
say "\\$x";
say "a\@b";
say "cost: \$5 and $x";
say "{1 + 1}\$ {$x}";
say "\@a and @a[]";
say "plain";
#-------------------------------------------------------- 898 scrip_test_rk_join
# rk_join.raku — RK-BB-5.2: join() as a list Seq consumer
sub main() {
    say(join(",", 1, 2, 3));
    say(join("-", "a", "b", "c"));
    say(join("", 4, 5, 6));
    # compose with reverse: join the reversed list
    say(join(",", reverse(1, 2, 3)));
}
main();
#-------------------- 899 ladder__rung09_string_methods_sub_forms_and_chomp_crlf
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
#- 900 ladder__rung07_subs_a_module_declared_in_a_bare_block_registers_its_subs_for_the_qualified_call
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
#- 901 ladder__rung13_classes_eval_of_a_class_name_or_its_literal_is_the_class_type_object
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
#-------------------------------------------------------------------- 902 say_19
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
#- 903 ladder__rung02_arithmetic_rat_counts_and_tolerances_in_the_test_module_plan_skip_is_approx
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
#- 904 ladder__rung04_arrays_a_collection_type_object_called_with_one_argument_coerces_it
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
#--------------------------------------------------- 905 benchmark_string-escape
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
#------------------------------- 906 ladder__rung023_kw_nil_fresh_scalar_numeric
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
#- 907 ladder__rung03_strings_the_method_assign_form_with_no_space_stores_the_result_back_in_the_variable
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
#- 908 ladder__rung02_arithmetic_modulo_and_div_of_a_big_integer_are_exact_and_floored
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
#---------------------------------------------------------- 909 simple_assign_24
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
#-------------------------------------------------------- 910 hash_say_replace_2
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
#-------------------------------------------------------------- 911 for_range_12
{ say $_ for 1..3 }
#--------------------------------------------------------------- 912 for_range_2
for 1..3 -> $v { say $v }
#--------------------------------------------------------------- 913 for_range_5
for 1..2 -> $i { for 1..2 -> $j { say $i * $j } }
#--------------------------------------------------------------- 914 for_range_7
say $_ for 1..3;
#--------------------------------------------------------------- 915 for_range_8
for 0 ..^ 5 -> $i { say $i }
#--------------------------------------------------------------- 916 for_range_9
for 1 ..^ 4 -> $x { say $x }
#----------------------------------------------------------------- 917 for_say_1
for 1,2,3 -> $x { say($x); }
#----------------------------------------------------------------- 918 for_say_2
for "x","y","z" -> $s { say($s); }
#----------------------------------------------------------------- 919 for_say_3
for 1,2,3 { say($_); }
#----------------------------------------------------------------- 920 for_say_5
for (1,2,3) -> $x { say($x); }
#----------------------------------------------------------------- 921 for_say_6
for ("a","b","c") -> $s { say($s); }
#----------------------------------------------------------------- 922 for_say_7
for (1,2,3) { say($_); }
#----------------------------------------------------------------- 923 for_say_8
for <a b c> -> $x { say($x); }
#---------------------------------------------------------- 924 join_array_say_1
 my @a = (1, 2, 3); say(@a.join("-")); 
#- 925 ladder__rung01_variables_an_array_in_a_list_declaration_takes_the_rest_of_the_list
my ($a, @b) = 1, 2, 3; say $a ~ @b.join;
#--------------------------------------------------- 926 ladder__rung08_for_loop
for 1..3 -> $i { say $i; }
#---------------------------------------- 927 ladder__rung08_for_loop_nested_for
for 1..2 -> $i { for 1..2 -> $j { say "$i,$j"; } }
#------------------------------------------------------------ 928 loop_replace_3
loop (my $i = 0; $i < 10; $i++) { last if $i == 3; say $i; }
#------------------------------------------------------------ 929 loop_replace_4
loop (my $i = 0; $i < 4; $i++) { next if $i == 1; say $i; }
#--------------------------------------------------------- 930 split_array_say_1
 my @a = "a,b,c".split(","); say(elems(@a)); 
#------------------------------------------------------------ 931 class_method_3
class C { method m($x) { say "hi" unless $x } }
C.new.m(0);
#-------------------------------------------------------- 932 class_method_say_5
class Clock { method tick() { return "t"; } }
 say(Clock.^methods); 
#-------------------------------------------------------- 933 class_method_say_6
class C { method say() { return 7 } }
say C.new.say;
#--------------------------------------------------------------- 934 for_range_6
for 65..69 -> $i { print chr($i) }
say "";
#----------------------------------------------------------------- 935 for_say_4
for () -> $x { say($x); }
say('done');
#----------------------------------------------------------- 936 given_replace_1
my $x = 7;
say "val is " ~ $_ given $x;
#-------------------------------------------------------- 937 join_range_array_2
my @r = 1..5;
say @r[0,2,4].join(",");
#-------------------------------------------------------- 938 join_range_array_3
my @a = 10,20,30,40,50;
say @a[1..2].join(",");
#-------------------------------------------------------- 939 join_range_array_4
my @a = 1..4;
say @a.join(",");
#-------------------------------------------------------- 940 join_range_array_5
my @r = 10..20;
say @r[2..5].join(",");
#-------------------------------------------------------- 941 join_range_array_6
my @a = 1,2,3,4,5;
say @a[1..^4].join(",");
#-------------------------------------------------------- 942 join_range_array_7
my @a = 1,2,3,4,5;
say @a[0..2].join(",");
#-------------------------------------------------------- 943 join_range_array_8
my @a = 1,2,3,4,5;
say @a[1..3].join(",");
#-------------------------------------------------------- 944 join_range_array_9
my @a = 1,2,3,4,5;
say @a[2..2].join(",");
#--------------------------------- 945 ladder__rung029_quote_qw_no_interpolation
my $x = 5;
say qw<$x @y %z>.raku;
#- 946 ladder__rung02_arith_prefix_plus_counts_a_scalar_or_hash_element_that_holds_an_array_or_hash
my @a = <a b c>; my %g = (x => 1, y => 2); my %h; %h<k> = @a; %h<m> = %g; my $s = @a; my $t = %g;
say +$s, " ", +$t, " ", +%h, " ", +%h<k>, " ", +%h<m>, " ", +@a, " ", +"5";
#- 947 ladder__rung04_arrays_a_hole_in_an_array_is_the_empty_string_in_str_join_and_interpolation_but_any_in_gist
my @o; @o[2] = "x";
say ~@o; say @o.join("-"); say "[@o[]]"; say @o.gist;
#- 948 ladder__rung04_arrays_the_numeric_methods_of_an_array_a_list_and_a_hash_answer_the_element_count
my @l = 1, 2, 3; my %h = a => 1, b => 2; my $x = @l;
say @l.Numeric, " ", $x.Int, " ", %h.Numeric, " ", %h.Int, " ", (4, 5).Real, " ", @l.Num;
#- 949 ladder__rung05_hashes_a_hash_assignment_as_the_last_statement_of_a_block_is_kept
my %h0 = a => 1, b => 2; my %x; my %y; my %z;
{ %x = %h0 }; sub f { %y = %h0 }; f(); if 1 { %z = %h0 }; say +%x, " ", +%y, " ", +%z;
#- 950 ladder__rung06_control_a_with_or_without_modifier_inside_parentheses_yields_empty_when_it_does_not_hold
my $n = Nil; my @x = 41, (42 with $n), 43; my @y = 41, (42 without $n), 43; say @x.raku, @y.raku;
say (8 with 3).raku, (8 without 3).raku; $_ = 10; say (.abs with -3), $_;
#---------------------------------------- 951 ladder__rung06_control_elsif_chain
my $x = 2;
if ($x == 1) { say "one"; } elsif ($x == 2) { say "two"; } else { say "other"; }
#------------------------------------------------------- 952 ladder__rung07_subs
sub add($a, $b) { return $a + $b; }
say add(3, 4);
#- 953 ladder__rung07_subs_a_multi_candidate_with_an_untyped_sigil_parameter_is_chosen_by_the_argument
multi f(&t) { "c" }; multi f(%t) { "h" }; multi f(@t) { "a" }; multi f($t) { "s" }
say f({ 1 }), f({ a => 1 }), f([1]), f(3);
#- 954 ladder__rung07_subs_a_slurpy_array_before_a_slurpy_hash_takes_every_positional
sub f($z, *@p, *%n) { say "$z ", @p.raku, " ", %n.raku }
f(1, 2, 3); f(1, :a(4), 2, 3); f(1);
#--------- 955 ladder__rung08_for_a_labelled_while_in_parentheses_leaves_on_last
my $m = 0; (L: while $m < 5 { $m++; last L if $m == 3 });
say $m;
#- 956 ladder__rung08_for_redo_in_a_while_restarts_the_body_without_testing_the_condition
my $i = 0; my $r = 0; while $i < 3 { $i++; $r++; redo if $r == 2 }
say "$i $r";
#- 957 ladder__rung09_regex_a_unicode_general_category_assertion_matches_by_short_or_long_name
say (".a-" ~~ /<:Letter>/).Str, " ", (".a-" ~~ /<:!Letter>/).Str, " ", ("Ab1" ~~ /<:Lu><:Ll><:Nd>/).Str, " ", ("x" ~~ /<+:Lu>/).so;
say ("a1" ~~ /<:UppercaseLetter>/).so, " ", ("\x[E9]b" ~~ /<:Ll>+/).Str, " ", ("1 2" ~~ /<:Z>/).from, " ", ("a-b" ~~ /<:Pd>/).from;
#- 958 ladder__rung10_smartmatch_the_right_side_is_evaluated_with_the_topic_set_to_the_left_and_restored_after
$_ = 42; my $x; "abc" ~~ ($x = "q$_"); say $x, " ", $_;
"defg" !~~ ($x = $_); say $x, " ", $_;
#- 959 ladder__rung12_exceptions_a_unit_scoped_sub_in_an_eval_throws_x_unitscope_invalid
use MONKEY-SEE-NO-EVAL; try EVAL "sub foo;"; say $!.^name, " ", $!.message.lines.elems, " ", $!.message.contains("MAIN sub");
say $! ~~ X::Syntax, " ", $! ~~ X::Comp, " ", $! ~~ X::UnitScope::Invalid, " ", $! ~~ X::AdHoc;
#- 960 ladder__rung13_classes_a_method_invocant_named_other_than_self_binds_the_object_and_keeps_the_parameters
class Foo { method echo { "echo" }; method m ($x: $y) { $x.echo ~ $y } }
say Foo.new.m("z");
#-- 961 ladder__rung13_classes_a_method_invocant_named_self_keeps_the_parameters
class Foo { method echo { "echo" }; method m ($self: $y) { $self.echo ~ $y } }
say Foo.new.m("z");
#- 962 ladder__rung13_classes_a_parameter_subsignature_reads_an_objects_accessors
class N { has $.left = 4 }; sub o($x (:$left)) { $left }
say o(N.new);
#---------------------- 963 ladder__rung15_blocks_an_anonymous_method_reads_self
my $m2 = method ($x) { "got $x " ~ self.^name };
say "ok";
#------------------------------------------------ 964 ladder__rung15_blocks_grep
my @n = (1, 2, 3, 4);
say @n.grep({ $_ > 2 });
#------------------------------------------------- 965 ladder__rung15_blocks_map
my @n = (1, 2, 3, 4);
say @n.map({ $_ * 2 });
#- 966 ladder__rung19_block_a_grep_block_that_is_a_bare_regex_matches_each_element
my @l = <abc xyz bca>;
say @l.grep({ /a/ }).join(","); say @l.grep({ /z/ }).elems; say @l.grep({ /q/ }).elems;
#--------- 967 ladder__rung19_block_the_grep_method_takes_a_regex_as_its_matcher
my @l = <abc xyz bca>;
say @l.grep(/a/).join(","); say @l.grep(/q/).elems; say @l.grep(/^x/).join(",");
#-------------------------------------------------------------------- 968 loop_2
my $i = 0;
loop { last if $i >= 3; say $i; $i = $i + 1 }
#-------------------------------------------------------------------- 969 loop_3
my $i = 0;
loop { $i = $i + 1; say $i; last if $i >= 3 }
#-------------------------------------------------------- 970 parser__try_nested
my $x = 1;
if ($x == 1) { try { say "try"; } CATCH { say "catch"; } }
#-------------------------- 971 roast_causes__rc12_batch_of_zero_is_out_of_range
say (try { (^10).batch(0); "lived" }) // "died";
say (^5).batch(2).map(*.join(",")).join(" ");
#-------------------------------------------------------------------- 972 say_89
    my $s = 'ab' ~ 'cd';
    say($s);
#------------------------------------------------------------ 973 say_replace_18
role Point { has $.x; }
 my $p = Point.new(x => 5); say($p.x); 
#------------------------------------------------------------- 974 say_try_die_2
    try { die('boom'); }; CATCH { say($_); };
    say('after');
#---------------------------------------------------------- 975 simple_assign_62
my $x = 5;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } elsif $x == 5 { say "e" } else { say "z" }
#---------------------------------------------------------- 976 simple_assign_63
my $x = 9;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } else { say "c" }
#---------------------------------------------------------- 977 simple_assign_64
my $x = 2;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } else { say "c" }
#---------------------------------------------------------- 978 simple_assign_65
my $x = 1;
if $x == 1 { say "a" } elsif $x == 2 { say "b" }
#---------------------------------------------------------- 979 simple_assign_66
my $x = 2;
if ($x == 1) { say "a" } elsif ($x == 2) { say "b" } else { say "c" }
#-------------------------------------------------------------------- 980 sub_10
my sub answer() { return 42; }
say answer();
#-------------------------------------------------------------------- 981 sub_16
sub h($a, $b = $a * 2) { return $a + $b }
say h(3);
#-------------------------------------------------------------------- 982 sub_17
sub f($x = 5) { return $x }
say f();
#-------------------------------------------------------------------- 983 sub_20
sub s2($a = "hi") { return $a }
say s2();
#-------------------------------------------------------------------- 984 sub_21
sub f($x = 5) { return $x }
say f(9);
#-------------------------------------------------------------------- 985 sub_22
sub f($x = 5) { return $x }
say f(0);
#-------------------------------------------------------------------- 986 sub_32
sub add($a,$b) { return $a + $b; }
say add(3,4);
#-------------------------------------------------------------------- 987 sub_38
sub f($x,$y) { return $x+$y }
say f(3,4,);
#--------------------------------------------------------------------- 988 sub_9
my sub greet($name) { say "hi " ~ $name; }
greet("world");
#--------------------------------------------------------------- 989 sub_array_1
sub f($a, *@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
#-------------------------------------------------------------- 990 sub_array_10
sub f($a, **@r) { say @r[0] ~ "|" ~ @r[1]; }
f(0,8,9);
#-------------------------------------------------------------- 991 sub_array_11
sub f($a, *@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
#--------------------------------------------------------------- 992 sub_array_5
sub f($a, **@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
#---------------------------------------------------------------- 993 sub_hash_1
sub f($a, *%h) { say $a ~ "|" ~ %h.elems; }
f(1, x => 2, y => 3);
#---------------------------------------------------------------- 994 sub_hash_3
sub mixed($p, :$n, *%rest) { say $n ~ "|" ~ %rest.elems; }
mixed(7, n => 9, z => 4, w => 5);
#---------------------------------------------------------------- 995 sub_hash_4
sub f($a, *%h) { say $a ~ "|" ~ %h.elems; }
f(5);
#---------------------------------------------------------------- 996 sub_say_12
sub takes(Int:D $n) { say("int " ~ $n); }
 takes(5); takes("x"); say("after"); 
#----------------------------------------------------------------- 997 sub_say_7
sub greet(Str:D $name) { say("hi " ~ $name); }
 greet("Tom"); 
#----------------------------------------------------------------- 998 sub_say_8
sub want(Str:U $x) { say("ok"); }
 my $u; want($u); want("v"); say("after"); 
#------------------------------------------------------------- 999 test_if_basic
my $c = 1;
if ($c) { say($c); }
#----------------------------------------------------------- 1000 test_if_cmp_eq
my $n = 42;
if ($n == 42) { say($n); }
#------------------------------------------------------------- 1001 test_if_else
my $x = 5;
if ($x < 10) { say($x); } else { say(0); }
#--------------------------------------------------------- 1002 test_while_basic
my $i = 0;
while ($i < 3) { say($i); $i = $i + 1; }
#------------------------------------------------------------------ 1003 while_1
my $o = 0;
while $o < 2 { my $i = 0; while $i < 5 { last if $i >= 2; say "$o-$i"; $i = $i + 1 }; $o = $o + 1 }
#------------------------------------------------------------------ 1004 while_2
my $i = 0;
while $i < 10 { last if $i >= 3; say $i; $i = $i + 1 }
#------------------------------------------------------------------ 1005 while_3
my $i = 0;
while $i < 4 { $i = $i + 1; next if $i == 2; say $i }
#-------------------------------------------------- 1006 class_method_replace_10
class C { method sq($n) { $n * $n } }
my $o = C.new;
say $o.sq(6);
#-------------------------------------------------- 1007 class_method_replace_11
class C { method calc($n) { my $t = $n + 1; $t * 2 } }
my $o = C.new;
say $o.calc(4);
#-------------------------------------------------- 1008 class_method_replace_14
class C { method answer { 42 } }
my $o = C.new;
say $o.answer();
#--------------------------------------------------- 1009 class_method_replace_6
class C { method go() { 7 } }
my $x = C.new.go();
say $x;
#--------------------------------------------------- 1010 class_method_replace_7
class C { method f() { self }; method g() { 3 } }
my $o = C.new;
say $o.f().g();
#---------------------------------------------------------- 1011 class_replace_1
class P { has $.x; }
my $p = P.new(x => 9);
say $p.x;
#---------------------------------------------------------- 1012 class_replace_2
class C { has $.x; has $.y; }
my $c = C.new(y => 9, x => 4);
say $c.x;
#----------------------------------------------------- 1013 class_say_replace_23
class Animal { }
class Dog is Animal { }
 my $d = Dog.new(); say($d.isa(Animal)); say($d.isa(Dog)); 
#------------------------------------------------------------------ 1014 given_2
my $c = "";
$c = $c ~ "x" given 1;
say $c;
#------------------------------------------------------------ 1015 join_array_13
my @a = 10,20,30,40,50;
my $i = 1;
say @a[$i,3].join(",");
#------------------------------------------------------- 1016 join_range_array_1
my @a = 9;
@a = 1..4;
say @a.join(",");
#-------------------------------------- 1017 ladder__rung07_subs_optional_params
sub inc($x, $by = 1) { return $x + $by; }
say inc(5);
say inc(5, 2);
#---------------------------------------------------------- 1018 multi_sub_say_4
multi sub combine(Int $a, Int $b) { say("int+int"); }
multi sub combine(Str $a, Str $b) { say("str+str"); }
 combine(1, 2); combine("a", "b"); 
#---------------------------------------------------------- 1019 multi_sub_say_6
multi sub f(Int $x) { say("specific int"); }
multi sub f($x) { say("fallback"); }
 f(5); f("str"); 
#------------------------------------------------------------------- 1020 say_52
    my $x = 3;
    if ($x == (1 | 2 | 3)) { say('pipe'); }
    if ($x == (3 & 3 & 3)) { say('amp'); }
#------------------------------------------------------------ 1021 say_try_die_8
    try { die('a'); CATCH { default { say($_.message); } } }
    try { say('b'); CATCH { default { say('no'); } } }
    say('after');
#------------------------------------------------------------------- 1022 sub_19
sub g($a, $b = 2) { return $a + $b }
say g(1);
say g(1,10);
#------------------------------------------------------------- 1023 sub_array_14
my @x = 1, 2;
sub f($a, *@r) { say @r.elems; }
f(0, @x, 9);
#-------------------------------------------------------------- 1024 sub_array_4
sub f($a, *@r) { say @r.elems; }
my @a = (1,2); my @b = (3,4,5);
f(0, @a, @b);
#---------------------------------------------------------- 1025 test_while_incr
my $i = 0;
while ($i < 5) { $i = $i + 1; }
say($i);
#----------------------------------------------------- 1026 class_say_replace_22
class Animal { }
class Dog is Animal { }
class Cat is Animal { }
 my $d = Dog.new(); say($d.isa(Animal)); say($d.isa(Cat)); 
#----------------------------------------------------- 1027 class_say_replace_25
class Animal { }
class Mammal is Animal { }
class Dog is Mammal { }
 my $d = Dog.new(); say($d.^name); say($d.^parents); 
#--------------------------------------------------------------- 1028 for_say_10
    for grep { $_ % 2 == 0 }, gather { take(1); take(2); take(3); take(4); } -> $v {
        say($v);
    }
    say('done');
#--------------------------------------------------------------- 1029 for_say_11
    for map { $_ * 2 }, gather { take(1); take(2); take(3); } -> $v {
        say($v);
    }
    say('done');
#---------------------------------------------------------------- 1030 for_say_9
    for gather { take(10); take(20); take(30); } -> $v {
        say($v);
    }
    say('done');
#- 1031 ladder__rung01_variables_undefine_makes_a_scalar_an_array_or_a_hash_empty
my $x = 5; undefine($x); say $x.defined, " ", $x.raku;
my @a = 1,2; undefine(@a); say @a.elems;
my %h = a => 1; undefine(%h); say %h.elems;
my $y = "s"; undefine $y; say $y.defined;
#-------------------------------- 1032 ladder__rung028_quote_qq_guard_bare_names
my %h = a => 1;
my @a = 1, 2;
sub f { 7 }
say qq/%h @a &f/;
#--------------------------------------------------- 1033 ladder__rung06_control
my $x = 5;
if ($x > 3) { say "big"; } else { say "small"; }
my $i = 0;
while ($i < 3) { say $i; $i = $i + 1; }
#----------------------------------------------------------- 1034 range_array_10
my $lo = 2;
my $hi = 6;
my @a = $lo..$hi;
say @a.sum;
#------------------------------------------------------ 1035 rewrite__rr01_names
my \a = 5; constant C = 7; my $x = a + C; say $x;
my @arr = 1, 2, 3; say @arr.elems;
sub f(::T $v) { T.^name }
say f(42);
#------------------------------------------------------------------- 1036 say_53
    my $x = 50;
    if ($x == (50 & (50 | 60)))  { say('all-wraps-any'); }
    if ($x == (10 | (50 & 60)))  { say('nest-miss-BAD'); }
    if ($x == ((50 | 60) & 50))  { say('any-first-in-all'); }
#------------------------------------------------------------------- 1037 sub_18
sub plain($z) { return $z }
say plain(6);
sub t(Int $n) { return $n }
say t(4);
#-------------------------------------------------------------- 1038 while_say_1
    my $i = 1;
    while ($i <= 3) {
        say($i);
        $i = $i + 1;
    }
#--------------------- 1039 ladder__rung16_bool_relops_logical_or_in_a_condition
my $a = 3;
if $a == 1 || $a == 3 { say "hit" } else { say "miss" }
if $a == 1 || $a == 2 { say "hit" } else { say "miss" }
my $i = 0;
while $i < 2 || $i == 5 { $i++ }
say $i;
#------------------ 1040 roast_causes__rc04_paren_semilist_keeps_every_statement
my @a = 2, 4;
say $(my @c = @a; @c.push(9); @c);
say $(my $x = 5; $x + 1);
my @d = @a;
say (@d»++; @d).elems;
say $(my @e = @a; @e»++; @e);
#------------------------------------------------------------------- 1041 say_23
    if (True)  { say('t'); } else { say('f'); }
    if (False) { say('t'); } else { say('f'); }
    my $x = 1;
    if ($x) { say('t'); } else { say('f'); }
    my $y = 0;
    if ($y) { say('t'); } else { say('f'); }
#--------------------------------------------------------- 1042 sort_array_say_1
    my @a = (5, 3, 9, 1);
    my @s = sort(@a);
    say(@s[0]);
    say(@s[1]);
    say(@s[2]);
    say(@s[3]);
#------------------------------------------------------------------ 1043 while_6
my $i = 0;
repeat {
    $i = $i + 1;
    last if $i == 3;
    say $i;
} while $i < 10;
#------------------------------------------------------------------ 1044 while_7
my $i = 0;
repeat {
    $i = $i + 1;
    next if $i == 2;
    say $i;
} while $i < 4;
#------------------------------------ 1045 ladder__rung024_kw_inf_inf_smartmatch
say Inf ~~ Inf;
say -Inf ~~ -Inf;
say Inf ~~ -Inf;
say 5 ~~ Inf;
say Inf ~~ Num;
my $a = Inf;
say $a ~~ Inf;
say $a ~~ $a;
#-------------------------------- 1046 ladder__rung024_kw_inf_inf_to_int_failure
say Inf.Int.WHAT;
say (-Inf).Int.WHAT;
say NaN.Int.WHAT;
say Inf.Int.defined;
say Inf.Int // "dflt";
try { Inf.Int; CATCH { default { say .message; say .^name } } }
my $f = Inf.Int;
say $f.exception.message;
#---------------------------------- 1047 ladder__rung13_classes_public_attribute
class Point {
    has $.x is rw;
    has $.y is rw;
}
my $p = Point.new(x => 3, y => 4);
say $p.x;
say $p.y;
$p.x = 10;
say $p.x;
#- 1048 ladder__rung04_arrays_an_empty_array_is_an_array_a_sub_can_push_onto_and_its_max_is_minus_inf
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
#- 1049 ladder__rung07_subs_a_sigilless_parameter_is_assignable_and_writes_back_to_its_argument
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
#-------------- 1050 ladder__rung16_bool_relops_logical_or_and_answer_an_operand
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
#---------------------------- 1051 ladder__rung023_kw_nil_nil_empty_block_values
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
#- 1052 ladder__rung09_regex_a_hash_on_the_right_of_a_smartmatch_tests_its_keys_a_regex_on_the_left_tests_each_key
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
#------------------------------------------------------ 1053 rewrite__rr04_roles
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
#-------------------------------------------------------------- 1054 array_say_4
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
#------------------------ 1055 ladder__rung04_arrays_scalar_container_subscripts
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
#- 1056 ladder__rung03_strings_an_array_interpolates_in_a_double_quoted_string_only_when_a_subscript_or_a_call_follows
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
#- 1057 ladder__rung14_roles_a_parametric_role_binds_its_parameters_in_its_methods
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
#---------------------------------------- 1058 benchmark_pi-sequential-iteration
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
#------------------------------------------------------- 1059 hash_say_replace_3
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
#- 1060 ladder__rung07_subs_a_multi_sub_is_chosen_by_its_named_parameters_and_a_nullary_loses_to_an_optional_named
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
#- 1061 ladder__rung02_arithmetic_rat_rounding_comparison_sums_and_mixed_operands
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
#-------------------------------------------------------------- 1062 for_range_3
for 1..2 -> $i { if ($i == 1) { say "one" } else { say "two" } }
#-------------------------------------------------------------- 1063 for_range_4
for 1..2 { my $x = 5; say $x }
#---------------------------------------------------------- 1064 for_range_say_3
for 1..3 -> $v { say($v) }
#---------------------------------------------------------- 1065 for_range_say_4
 for 1..3 -> $v { say($v); }; say('done'); 
#------------------------------------------------------- 1066 join_split_array_1
 my @a = "x,y,z".split(","); say(@a.join("|")); 
#- 1067 ladder__rung08_for_a_for_bodys_own_my_variable_is_not_the_enclosing_variable
my $a = 1; for 1..2 -> $i { my $a = 10 + $i; say $a }; say $a;
#- 1068 ladder__rung08_for_a_pointy_block_parameter_is_not_the_enclosing_variable_of_the_same_name
my $i = 5; for 1..2 -> $i { say $i }; say $i;
#--------------------------------------------------------- 1069 smartmatch_say_2
 if ('abc' ~~ /^\d+$/) { say("match"); } else { say("nomatch"); } 
#--------------------------------------------------------- 1070 smartmatch_say_3
 if ('abc123' ~~ /\d+/) { say("match"); } else { say("nomatch"); } 
#-------------------------------------------------------------------- 1071 sub_5
 my $s = sub { return 4; }; say $s(); 
#------------------------------------------------------ 1072 class_say_replace_1
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); say($p.x()); 
#----------------------------------------------------- 1073 class_say_replace_10
class Cfg { has Int $.limit = 100; }
 my $c = Cfg.new(); say($c.limit); 
#----------------------------------------------------- 1074 class_say_replace_12
class Point { has $.x; has $.y; submethod BUILD(:$x, :$y) { $!x = $x * 2; $!y = $y; } }
 my $p = Point.new(x => 5, y => 10); say($p.x); say($p.y); 
#----------------------------------------------------- 1075 class_say_replace_13
class R { has $.id is required; submethod BUILD(:$id) { $!id = $id; } }
 my $r = R.new(id => 42); say($r.id); 
#----------------------------------------------------- 1076 class_say_replace_14
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); my $q = $p.clone(); say($q.x); say($q.y); 
#----------------------------------------------------- 1077 class_say_replace_16
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); my $r = $p.clone(y => 99); say($r.x); say($r.y); say($p.y); 
#----------------------------------------------------- 1078 class_say_replace_18
class Q { has $.x; }
 my $q = Q.new(x => 1); $q.x = 5; say("unreached"); 
#----------------------------------------------------- 1079 class_say_replace_19
class P { has $.x is rw; }
 my $p = P.new(x => 1); $p.x = 5; say($p.x); 
#------------------------------------------------------ 1080 class_say_replace_2
class Box { has $.v = 42; }
 my $b = Box.new(); say($b.v); 
#----------------------------------------------------- 1081 class_say_replace_20
class Box { has Int $.v is rw; }
 my $b = Box.new(v => 1); $b.v = 99; say($b.v); 
#----------------------------------------------------- 1082 class_say_replace_21
class Empty { has $.x; }
 my $e = Empty.new(x => 1); say($e); 
#----------------------------------------------------- 1083 class_say_replace_24
class Dog { has $.name; }
 my $d = Dog.new(name => "Rex"); say($d.^name); 
#----------------------------------------------------- 1084 class_say_replace_28
class Point { has $.x; }
 my $p = Point.new(x => 1); say($p.WHAT); 
#------------------------------------------------------ 1085 class_say_replace_3
class Box { has $.v = 42; }
 my $b = Box.new(v => 7); say($b.v); 
#------------------------------------------------------ 1086 class_say_replace_4
class Greeter { has $.greeting = "hello"; }
 my $g = Greeter.new(); say($g.greeting); 
#------------------------------------------------------ 1087 class_say_replace_5
class Config { has %.opts; }
 my $c = Config.new(); my $h = $c.opts; say($h{'x'}:exists); 
#------------------------------------------------------ 1088 class_say_replace_6
class Point { has $.x is required; has $.y; }
 my $p = Point.new(y => 9); say("unreached"); 
#------------------------------------------------------ 1089 class_say_replace_7
class Point { has $.x is required; has $.y; }
 my $p = Point.new(x => 7, y => 9); say($p.x); 
#------------------------------------------------------ 1090 class_say_replace_8
class Box { has Int $.w is required; }
 my $b = Box.new(w => 12); say($b.w); 
#------------------------------------------------------ 1091 class_say_replace_9
class Point { has Int $.x; has Int $.y; }
 my $p = Point.new(x => 3, y => 4); say($p.x); 
#------------------------------------------------------------- 1092 for_range_10
my $n = 3;
for 0 ..^ $n -> $i { say $i }
#---------------------------------------------------------- 1093 for_range_say_5
for 1..3 -> $v { say($v); }
say('done');
#----------------------------------------------------------- 1094 junction_say_5
    my $s = 'b';
    if ($s eq any('a', 'b')) { say('str-hit'); }
#- 1095 ladder__rung06_control_a_parenthesized_if_or_unless_is_the_value_of_the_branch_taken_or_empty
say (if 0 { 1 } else { 2 }), " ", (if 1 { 7 }).^name, " ", (unless 1 { 2 }).^name, " ", (if 0 { 1 }).raku;
my @l = (if 1 { 7 } else { 8 }), 3; say @l.raku, " ", (if 0 { 1 } else { 2 }) + 5;
#- 1096 ladder__rung06_control_a_placeholder_block_with_a_statement_modifier_gets_the_condition_value
my $a = 0; { $a = $^x } if 100; say $a; { $a = $^x } given 69; say $a;
{ $a = $^x } unless 0; say $a; { $a = $^x } with 7; say $a;
#- 1097 ladder__rung06_control_a_ternary_branch_that_is_a_block_ending_in_return_leaves_the_sub
sub f($x) { my $s = $x ?? "yes" !! do { return "bail" }; "got $s" }
say f(1), f(0);
#---- 1098 ladder__rung06_control_an_eager_prefix_on_a_gather_runs_it_to_the_end
my $c = 0; my $t = eager gather { for 1 .. 5 { $c++; take $_ } }; say $t[0];
say $c;
#- 1099 ladder__rung06_control_an_if_modifier_inside_parentheses_yields_empty_when_false
my $answer = 0; my @x = 41, (42 if $answer), 43; my @y = 41, (42 unless $answer), 43;
my $y = (3 if 0); say @x.raku, " ", @y.raku, " ", $y.raku, " ", (7 unless 1).raku;
#- 1100 ladder__rung07_subs_a_nested_sub_shadows_a_top_level_sub_of_the_same_name_inside_its_enclosing_sub
sub helper($x) { return "top:" ~ $x }
sub a() { sub helper($x) { return "a:" ~ $x }; say helper(1) }; a(); say helper(2);
#- 1101 ladder__rung07_subs_an_array_parameter_with_a_subsignature_unpacks_its_elements
sub n(@a [$f, *@r]) { "$f:" ~ @r.join(",") }
say n([1, 2, 3]);
#----------------------------------------- 1102 ladder__rung07_subs_named_params
sub greet(:$name) { return "hi " ~ $name; }
say greet(name => "Bob");
#- 1103 ladder__rung07_subs_two_subs_may_each_declare_a_nested_sub_of_the_same_name
sub a() { sub inner($x) { return "a:" ~ $x }; say inner(1) }; sub b() { sub inner($x) { return "b:" ~ $x }; say inner(2) }
a(); b(); a(); b();
#------------------- 1104 ladder__rung08_for_a_for_statement_in_parentheses_runs
my $t = 0; (for 1..3 { $t += $_ });
say $t;
#- 1105 ladder__rung08_for_a_for_statement_modifier_restores_the_outer_topic_when_it_ends
$_ = "q"; my $c = 0;
$c++ for 1..3; say $_, " ", $c;
#----------------------------------- 1106 ladder__rung08_for_loop_for_over_array
my @a = (10, 20, 30);
for @a -> $x { say $x; }
#----------------------------------- 1107 ladder__rung08_for_loop_for_with_index
my @a = ("a", "b");
for @a.kv -> $i, $v { say "$i:$v"; }
#- 1108 ladder__rung08_for_redo_with_a_label_from_an_inner_loop_restarts_the_outer_loop
my $t = ""; my $p = 0; my $y = 0; A: while $p++ < 2 { $t ~= "A$p "; B: while $y++ < 2 { $t ~= "B$y "; redo A if $y == 1 && $p == 1; last A } }
say $t;
#-------- 1109 ladder__rung08_for_redo_with_a_label_restarts_a_c_style_loop_body
my $s = ""; my $again = 1; CL: loop (my $i = 0; $i < 3; $i++) { $s ~= "i$i "; if $i == 1 && $again { $again = 0; redo CL } }
say $s;
#-------------- 1110 ladder__rung08_for_redo_with_a_label_restarts_a_repeat_body
my $k = 0; my $z = 0; my $u = ""; RW: repeat { $k++; $u ~= "k$k "; redo RW if $k == 2 && !$z++ } while $k < 3;
say $u;
#- 1111 ladder__rung09_a_quantified_captures_list_responds_to_builtin_list_methods
my $m = "aaa" ~~ /$<x>=(a)+/;
say $<x>.elems;
#----- 1112 ladder__rung09_a_quantified_named_bracket_group_stays_a_single_match
my $m = "aaa" ~~ /$<x>=[a]+/;
say $<x>;
#-------------- 1113 ladder__rung09_named_bracket_group_binds_to_the_whole_group
my $m = "a" ~~ /$<x>=[a]/;
say $<x>;
#------------- 1114 ladder__rung09_quantified_named_capture_pluralizes_to_a_list
my $m = "aaa" ~~ /$<x>=(a)+/;
say $<x>;
#- 1115 ladder__rung09_regex_a_class_match_never_starts_inside_a_multibyte_character
say ("\x2028" ~~ /\N/).so, " ", ("\x2028\x20AC" ~~ /<-[\x20AC]>/).so, " ", ("a\x20AC" ~~ /<-[a]>/).from;
say ("\x20AC\x20AC" ~~ /<[a..z]>/).so, " ", ("\x20AC!" ~~ /<[!]>/).from, " ", ("\x2029\x2029" ~~ /\N/).so;
#- 1116 ladder__rung10_given_when_a_code_topic_smartmatched_against_a_number_is_false
my $g = sub { 1 }; my $h = { 1 };
say $g ~~ 3, " ", $h ~~ 3.5, " ", 3 ~~ $g
#- 1117 ladder__rung10_smartmatch_an_array_against_a_hash_is_true_when_any_element_is_a_key
my %h = (a => "b", c => Mu);
say (["a"] ~~ %h), (["c", "d"] ~~ %h), (["e"] ~~ %h), (() ~~ %h);
#- 1118 ladder__rung10_smartmatch_two_distinct_objects_do_not_match_each_other_but_an_object_matches_itself
class C {}; my $a = C.new; my $b = C.new;
say $a ~~ $a, " ", $a ~~ $b, " ", $a !~~ $b, " ", $a !~~ $a;
#- 1119 ladder__rung13_classes_a_method_invocant_with_a_type_is_checked_against_the_object
class A { method x(Int $a:) { 42 } }
say (try A.new.x) // "died";
#- 1120 ladder__rung13_classes_a_method_slurpy_array_takes_every_positional_argument
class K { method m(*@x) { @x.raku }; method n($a, *@x) { "$a " ~ @x.raku } }
say K.new.m(1, 2), K.new.m(), K.new.n(5, 1, 2), K.new.m(7);
#- 1121 ladder__rung13_classes_a_multi_method_with_a_slurpy_is_chosen_by_the_leading_argument_types
class C { multi method l(Int $a, *@r) { "int" }; multi method l(Str $a, *@r) { "str" } }
say C.new.l(1, 2), C.new.l("a"), C.new.l(3, 4, 5);
#------- 1122 ladder__rung13_classes_a_parenthesised_has_declares_each_attribute
class C { has ($a, $b); method set { $a = 3; $b = 4 }; method sum { $a + $b } }
my $c = C.new; $c.set; say $c.sum;
#-------------------------- 1123 ladder__rung15_blocks_next_is_an_assignment_rhs
for 1..3 { my $n = next; say 7 }
say "done";
#------------------------ 1124 ladder__rung15_blocks_return_is_an_assignment_rhs
sub rt { my $r = return 5; 7 }
say rt();
#------------ 1125 ladder__rung19_block_a_for_over_a_parenthesised_map_of_a_sort
my @array = <3 1 2>;
for (map { $_ * 2 }, sort @array) -> $e { say $e }
#----------- 1126 ladder__rung19_block_a_sub_called_in_a_for_reads_its_own_topic
sub topic { $_.gist }
for 1..2 { say topic() }
#-------- 1127 ladder__rung19_block_the_grep_listop_takes_a_regex_as_its_matcher
my @l = <abc xyz bca>;
say (grep /a/, @l).join(","); say grep(/y/, @l).join(","); say (grep /q/, @l).elems;
#----------------------------------------------------- 1128 method_say_replace_1
role Speaks { method talk() { return "hello"; } }
 my $s = Speaks.new(); say($s.talk()); 
#-------------------------------------------------------- 1129 multi_sub_array_3
multi sub f($a, **@r) { say "L:" ~ @r.elems; }
f(1,2,3,4);
#-------------------------------------------------------- 1130 multi_sub_array_4
multi sub f($a, *@r) { say "V:" ~ @r.elems; }
f(1,2,3);
#----------------------------------------------------------- 1131 say_replace_10
grammar G { rule TOP { "abc" } }
 my $r = G.parse("abcd"); if ($r) { say("Y"); } else { say("N"); } 
#----------------------------------------------------------- 1132 say_replace_11
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("xx"); if ($r) { say("Y"); } else { say("N"); } 
#----------------------------------------------------------- 1133 say_replace_12
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("55"); if ($r) { say("Y"); } else { say("N"); } 
#----------------------------------------------------------- 1134 say_replace_13
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("5"); if ($r) { say("Y"); } else { say("N"); } 
#----------------------------------------------------------- 1135 say_replace_14
grammar G { rule TOP { <digit> <lower> <upper> } }
 my $r = G.parse("3XB"); if ($r) { say("Y"); } else { say("N"); } 
#----------------------------------------------------------- 1136 say_replace_15
grammar G { rule TOP { <digit>+ } }
 my $r = G.parse("abc"); if ($r) { say("Y"); } else { say("N"); } 
#----------------------------------------------------------- 1137 say_replace_16
grammar G { rule TOP { "a.b" } }
 my $r = G.parse("axb"); if ($r) { say("BAD"); } else { say("OK"); } 
#----------------------------------------------------------- 1138 say_replace_17
grammar G { rule TOP { "hello" } }
 my $r = G.parse("world"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 1139 say_replace_3
grammar G { rule TOP { "a" | "b" } }
 my $r = G.parse("c"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 1140 say_replace_4
grammar G { rule TOP { <alpha> } }
 my $r = G.parse("1"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 1141 say_replace_5
grammar G { rule TOP { <digit> } }
 my $r = G.parse("x"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 1142 say_replace_6
grammar G { rule TOP { <space> } }
 my $r = G.parse(" "); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 1143 say_replace_7
grammar G { rule TOP { <digit> } }
 my $r = G.parse("55"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 1144 say_replace_8
grammar G { rule TOP { <upper> } }
 my $r = G.parse("a"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 1145 say_replace_9
grammar G { rule TOP { <xdigit> } }
 my $r = G.parse("g"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------------- 1146 sub_11
my sub sq($x) { return $x * $x; }
say sq(5);
#---------------------------------------------------------------- 1147 sub_say_6
sub greet(Str:D $name) { say("hi " ~ $name); }
 greet("Tom"); my $u; greet($u); say("after"); 
#-------------------------------------------------- 1148 class_method_replace_12
class Point { has $.x; has $.y; method sum { $!x + $!y } }
my $p = Point.new(x => 3, y => 4);
say $p.sum;
#-------------------------------------------------- 1149 class_method_replace_13
class C { method greet { return "hi"; } }
my $o = C.new;
say $o.greet();
#-------------------------------------------------- 1150 class_method_replace_15
class C { has $.v; method show() { say $.v } }
my $o = C.new(v => 7);
$o.show();
#-------------------------------------------------- 1151 class_method_replace_17
class C { method g() { return 7 } }
my $o = C.new;
say $o.g();
#--------------------------------------------------- 1152 class_method_replace_2
class Cfg { method keys() { return "custom-keys"; } }
my $c = Cfg.new;
say $c.keys;
#-------------------------------------------------- 1153 class_method_replace_20
class Dog { method speak() { return "woof"; } }
my $d = Dog.new;
say $d.speak();
#--------------------------------------------------- 1154 class_method_replace_3
class C { method go() { say "g" } }
my $o = C.new;
$o.go() if 1;
#--------------------------------------------------- 1155 class_method_replace_4
class C { method n($x) { say $x } }
my $o = C.new;
$o.n(9) if 1;
#--------------------------------------------------- 1156 class_method_replace_5
class C { method answer() { return 42; } }
my $o = C.new;
say $o.answer;
#--------------------------------------------------- 1157 class_method_replace_8
class C { method return() { return 3 } }
my $o = C.new;
say $o.return();
#--------------------------------------------------- 1158 class_method_replace_9
class C { method take() { return 5 } }
my $o = C.new;
say $o.take;
#---------------------------------------------- 1159 class_method_say_replace_18
role Barker { method bark() { say("woof"); } }
class Dog does Barker { }
 my $d = Dog.new(); say($d.does(Barker)); say($d.isa(Dog)); 
#----------------------------------------------------- 1160 class_say_replace_15
class Animal { has $.name; has $.legs; }
class Dog is Animal { has $.breed; }
 my $d = Dog.new(name => "Rex", legs => 4, breed => "Lab"); my $c = $d.clone(breed => "Pug"); say($c.name); say($c.legs); say($c.breed); 
#----------------------------------------------------- 1161 class_say_replace_26
class Animal { has $.name; }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.name); 
#----------------------------------------------------- 1162 class_say_replace_27
role HasId { has $.id; }
class Widget does HasId { }
 my $w = Widget.new(id => 42); say($w.id); 
#----------------------------------------------------- 1163 class_say_replace_29
class Animal { has $.name; }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.WHAT); 
#-------------------------------------------------------------- 1164 for_range_1
my $x = 0;
for 1..3 -> $v { $x = $x + $v }
say $x;
#------------------------------------------------------------- 1165 for_range_11
my $t = 0;
for 1..3 -> $x { $t = $t + $x; }
say $t;
#----------------------------------------------------------- 1166 junction_say_1
    my $x = 3;
    if ($x == all(3, 3, 3)) { say('all-hit'); }
    if ($x == all(3, 3, 4)) { say('all-miss-BAD'); }
#----------------------------------------------------------- 1167 junction_say_2
    my $x = 3;
    if ($x == any(1, 2, 3)) { say('any-hit'); }
    if ($x == any(7, 8, 9)) { say('any-miss-BAD'); }
#----------------------------------------------------------- 1168 junction_say_3
    my $x = 3;
    if ($x == none(7, 8, 9)) { say('none-hit'); }
    if ($x == none(1, 3, 5)) { say('none-miss-BAD'); }
#----------------------------------------------------------- 1169 junction_say_4
    my $x = 3;
    if ($x == one(1, 3, 5)) { say('one-hit'); }
    if ($x == one(3, 3, 5)) { say('one-miss-BAD'); }
#- 1170 ladder__rung06_control_a_given_statement_modifier_inside_parentheses_topicalizes_its_expression
my @list = 1, 2, 3, 4, 5;
say (.[0] + .[1] + .[2] given @list), " ", (.elems given @list), " ", (.[1] given @list);
my $x = (.[1] + 10 given @list); say $x, " ", (.uc given "ab"), " ", ($_ given 7);
#-------------------------------------------------------- 1171 multi_sub_array_2
multi sub f($a, *@r) { say "V:" ~ @r.elems; }
multi sub f($a) { say "S"; }
f(1);
#---------------------------------------------------------- 1172 multi_sub_say_1
multi sub greet($a) { say("one: " ~ $a); }
multi sub greet($a, $b) { say("two: " ~ $a ~ "," ~ $b); }
 greet("x"); greet("y", "z"); 
#---------------------------------------------------------- 1173 multi_sub_say_5
multi sub describe(Int $x) { say("integer " ~ $x); }
multi sub describe(Str $x) { say("string " ~ $x); }
 describe(42); describe("hello"); 
#------------------------------------------------------------------- 1174 sub_24
sub f($x) { if $x { return 1 } else { return 2 } }
say f(0);
say f(1);
#------------------------------------------------------------------- 1175 sub_36
sub boom() { say "BOOM"; return 9; }
sub safe() { return 5; }
my $x = 1 ?? safe() !! boom(); say $x;
#-------------------------------------------------- 1176 class_method_replace_16
class C { method m($v = 42) { return $v } }
my $o = C.new;
say $o.m();
say $o.m(8);
#---------------------------------------------- 1177 class_method_say_replace_35
class A { method TWEAK() { say("A"); } }
class B is A { method TWEAK() { say("B"); } }
class C is B { method TWEAK() { say("C"); } }
 my $c = C.new(); 
#---------------------------------------------------------- 1178 for_range_say_6
    for grep { $_ > 2 }, 1..5 -> $v {
        say($v);
    }
    say('done');
#---------------------------------------------------------- 1179 for_range_say_7
    for map { $_ * 2 }, 1..3 -> $v {
        say($v);
    }
    say('done');
#------------------------------------------------------ 1180 join_range_array_10
my @a = 1,2,3,4,5;
my $lo = 1;
my $hi = 3;
say @a[$lo..$hi].join(",");
#--------------------------------------- 1181 ladder__rung07_subs_multi_dispatch
multi sub area($side) { return $side * $side; }
multi sub area($w, $h) { return $w * $h; }
say area(4);
say area(3, 5);
#------------------------------------------------------------ 1182 sub_say_try_1
sub boomer() { die('deep'); say('sub-after'); };

    try { boomer(); say('body-after'); }; CATCH { say($_); };
    say('after');
#------------------------------------------------------ 1183 test_stmt_pfx_FIRST
for 1..3 -> $i {
    FIRST { say("first"); }
    say($i);
}
#------------------------------------------------------- 1184 test_stmt_pfx_LAST
for 1..3 -> $i {
    LAST { say("last"); }
    say($i);
}
#------------------------------------------------------- 1185 test_stmt_pfx_NEXT
for 1..3 -> $i {
    NEXT { say("next"); }
    say($i);
}
#--------------------------------- 1186 ladder__rung19_block_methcall_on_a_range
say (1..9).grep({ $_ %% 3 });
say (1..4).map({ $_ * 2 });
say (1..4).elems;
say (^4).sum;
say [+] (1..999).grep({ $_ % 3 == 0 || $_ % 5 == 0 });
#------------------------------------------------------------ 1187 say_try_die_5
    try {
        try { die('a'); }; CATCH { die('b'); };
        say('unreached');
    }; CATCH { say('outer:' ~ $_); };
    say('after');
#----------------------------------------------------- 1188 test_nested_if_while
my $i = 0;
if ($i == 0) {
    while ($i < 3) { $i = $i + 1; }
}
say($i);
#--------------------------------------------------- 1189 ladder__rung13_classes
class Greeter {
    method greet {
        return "hello";
    }
}
my $g = Greeter.new;
say $g.greet;
#----------------------------- 1190 ladder__rung13_classes_named_arg_constructor
class Sum {
    has $.a;
    has $.b;
    method total { $!a + $!b }
}
my $s = Sum.new(:a(39), :b(3));
say $s.total;
#------------------------------------------ 1191 ladder__rung14_roles_smartmatch
role Flyer { }
class Bird does Flyer { }
class Fish { }
my $b = Bird.new;
my $f = Fish.new;
say $b ~~ Flyer;
say $f ~~ Flyer;
#------------------------------------------------------------ 1192 say_try_die_7
    try {
        try { die('inner'); CATCH { default { say('in:' ~ $_); } } }
        say('mid');
        die('outer');
        CATCH { default { say('out:' ~ $_); } }
    }
    say('after');
#----------------------------------------------------- 1193 ladder__rung14_roles
role Greeter {
    method greet {
        return "hi from role";
    }
}
class Widget does Greeter { }
my $w = Widget.new;
say $w.greet;
#-------------------------------------------- 1194 ladder__rung14_roles_override
role Greeter {
    method greet { return "role hello" }
}
class Special does Greeter {
    method greet { return "class hello" }
}
my $s = Special.new;
say $s.greet;
#------------------------------------------------------------ 1195 sub_for_say_1
# rk_gather.raku — RK-21: gather/take as BB_PUMP coroutine
sub main() {
    for gather { take(10); take(20); take(30); } -> $v {
        say($v);
    }
    say('done');
}
main();
#- 1196 ladder__rung15_blocks_reduce_with_a_block_of_three_or_more_parameters_takes_that_many_items_a_step
my @array = 1..9;
say (@array.reduce: { $^a + $^b * $^c });
say reduce { $^a + $^b * $^c }, 1..9;
say (1, 2, 3, 4).reduce: { $^a ~ $^b ~ $^c ~ $^d };
say (1..5).reduce: { $^a + $^b * $^c };
say (1..6).reduce: { $^a + $^b };
say (1..4).reduce: { $^a * $^b };
my @w = <a b c d e>;
say @w.reduce: { $^a ~ "-" ~ $^b ~ $^c };
#- 1197 ladder__rung06_control_with_orwith_and_without_test_definedness_and_bind_the_topic
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
#- 1198 ladder__rung07_subs_an_array_parameter_assigned_to_a_scalar_or_chosen_by_a_ternary
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
#- 1199 ladder__rung08_for_a_destructuring_signature_takes_types_smileys_and_traits
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
#- 1200 ladder__rung09_regex_the_subst_method_takes_a_closure_replacement_a_pointy_block_and_g_on_a_string_needle
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
#------------------------------------------ 1201 ladder__rung14_roles_attributes
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
#----------------------------------------- 1202 ladder__rung14_roles_composition
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
#- 1203 ladder__rung02_arithmetic_a_division_by_zero_builds_a_zero_denominator_rat_as_rakudo_does
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
#--------------------------------- 1204 ladder__rung13_classes_private_attribute
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
#- 1205 ladder__rung04_arrays_an_array_literal_of_one_iterable_argument_spreads_it_the_single_argument_rule
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
#------------ 1206 ladder__rung09_string_methods_raku_regex_classes_and_captures
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
#-------------------------------------------------------- 1207 sub_say_replace_1
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
#- 1208 ladder__rung04_arrays_a_non_literal_left_of_xx_is_a_thunk_evaluated_once_per_repetition
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
#- 1209 ladder__rung19_block_methcall_sort_by_a_two_arg_comparator_block_past_64_elements
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
#---------------------------------------------------------------- 1210 sub_say_5
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
#-------------------------------------------------------- 1211 benchmark_spinner
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
#- 1212 ladder__rung15_blocks_a_my_declaration_without_a_value_keeps_what_a_begin_check_init_or_enter_phaser_stored
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
#- 1213 ladder__rung07_subs_a_literal_passed_to_an_is_rw_parameter_throws_x_parameter_rw
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
#- 1214 ladder__rung02_arithmetic_rat_smartmatch_truthiness_function_forms_and_type_checks
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
#- 1215 ladder__rung07_subs_a_sub_declared_in_a_module_is_called_and_referenced_by_its_qualified_name_and_through_our
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
#- 1216 ladder__rung14_roles_a_role_body_lexical_and_a_type_capture_as_the_target_of_new_are_read_by_its_methods
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
#-------------------------------------------------- 1217 sub_range_say_replace_1
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
#- 1218 ladder__rung12_exceptions_a_die_in_the_condition_of_if_or_unless_aborts_the_statement
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
#------------------------------------------------ 1219 benchmark_rc-dragon-curve
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
#- 1220 ladder__rung07_subs_a_multi_family_constrained_by_subsets_and_where_clauses_dispatches
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
#-------------------------------------------------- 1221 sub_array_say_replace_1
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
#------------------------------------------------------ 1222 scrip_test_rk_str22
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
#------------------------------------------------ 1223 class_array_say_replace_1
class Stack { has @.items; }
 my $s = Stack.new(); my @e = $s.items; say(@e.elems); 
#------------------------------------------------ 1224 class_array_say_replace_3
class Stack { has @.items; }
 my @v = 10, 20, 30; my $t = Stack.new(items => @v); my @i = $t.items; say(@i.elems); say(arr_get(@i, 1)); 
#------------------------------------------------- 1225 class_hash_say_replace_1
class Config { has %.opts; }
 my %seed = ''; hash_set(%seed, 'lang', 'Raku'); my $d = Config.new(opts => %seed); my $h2 = $d.opts; say(hash_get($h2, 'lang')); 
#---------------------------------------------- 1226 class_method_say_replace_10
class Q { has $.m; has $.n; method BUILD(:$m, :$n) { $!m = $m; $!n = $n; } }
 my $q = Q.new(m => 7, n => 8); say($q.m); say($q.n); 
#---------------------------------------------- 1227 class_method_say_replace_55
class Box { has $.w; has $.area; method TWEAK() { $!area = $!w * $!w; } }
 my $b = Box.new(w => 5); say($b.area); 
#---------------------------------------------- 1228 class_method_say_replace_56
class Widget { has $.id; method TWEAK() { say("tweaked"); } }
 my $w = Widget.new(id => 1); say("done"); 
#----------------------------------------------------- 1229 class_say_replace_11
class C { has $.x; has $.y; submethod BUILD(:$x) { $!x = $x; } }
 my $c = C.new(x => 1, y => 99); say($c.x); say("[" ~ $c.y ~ "]"); 
#---------------------------------------------------------- 1230 for_array_say_3
my @a = 10,20,30;
for @a -> $v { say($v); }
#---------------------------------------------------------- 1231 for_array_say_5
my @a = 7,8,9;
for @a { say($_); }
#- 1232 ladder__rung04_arrays_a_negative_index_returns_a_failure_that_stays_a_failure_when_indexed_again
my @a = 1, 2, 3; my $i = -2; my $x = @a[$i]; my $y = @a[$i][0]; my @b = map { @a[1 - $_][0] }, 0 .. 3;
say $x.WHAT, " ", ($x ~~ Failure), " ", $y.WHAT, " ", @b[3].WHAT, " ", @b[0].WHAT, " ", @a[7].WHAT, " ", $x.exception.^name;
#------ 1233 ladder__rung05_hashes_a_range_written_as_a_pair_value_stays_a_range
my $p = "a" => 1..10; say $p.value.WHAT, " ", $p.value.elems;
say ("a" => 5) ~~ $p, " ", ("a" => 50) ~~ $p;
#- 1234 ladder__rung06_control_the_take_method_of_a_value_inside_a_gather_takes_it
my @r = gather { 5.take; (6).take(); for 7, 8 { .take }; "x".take }; say @r;
say gather { for ^3 { .take if $_ > 0 } }.elems;
#- 1235 ladder__rung07_subs_a_bare_call_reaches_the_nearest_lexical_sub_when_two_blocks_declare_the_same_name
{ my $n = 0; my sub foo { $n++ }; foo for ^2; say $n }
{ sub foo($c) { say "foo $c"; foo($c - 1) if $c > 1 }; foo(2) }
#- 1236 ladder__rung07_subs_a_subs_loop_variable_is_not_the_file_variable_another_sub_reads
my $i = 100; sub f { my $t = 0; for 1..3 -> $i { $t += $i }; $t }; sub g { $i };
say f(), g();
#------------------------ 1237 ladder__rung08_for_a_label_is_a_term_in_its_scope
sub f { L: for 1..2 { my $l = L } }
say "ok";
#-- 1238 ladder__rung08_for_a_label_names_a_for_loop_with_several_loop_variables
my @ans; L: for ^6 -> $x, $a { next L if $a == 1; @ans.push: $a }
say @ans;
#------ 1239 ladder__rung08_for_redo_with_a_label_restarts_the_labelled_for_body
my $n = 0; my $r = 0; FOO: for 1..2 { $r++; redo FOO if $n++ < 1 }
say $r;
#------------------------------------------------ 1240 class_array_say_replace_2
class Base { has @.log; }
class Derived is Base { has $.id; }
 my $d = Derived.new(id => 7); my @l = $d.log; say(@l.elems); 
#---------------------------------------------- 1241 class_method_grep_replace_1
class C { method grep() { return 8 } }
my $o = C.new;
say $o.grep();
#----------------------------------------------- 1242 class_method_map_replace_1
class C { method map($x) { return $x + 1 } }
my $o = C.new;
say $o.map(4);
#--------------------------------------------- 1243 class_method_range_replace_6
role R { method needed() {...} }
class C does R { }
 my $c = C.new(); say("made"); 
#-------------------------------------------------- 1244 class_method_replace_18
class Sayer { has $.t; method go() { say $!t } }
my $s = Sayer.new(t => "done");
if True { $s.go() }
#-------------------------------------------------- 1245 class_method_replace_19
class C { has $.x; method greet() { return 3; } }
my $o = C.new;
say $o.greet();
#---------------------------------------------- 1246 class_method_say_replace_20
class Base { has $.x is rw; }
class Sub is Base { method bump() { self.x = self.x + 5; } }
 my $s = Sub.new(x => 10); $s.x = 20; say($s.x);
#---------------------------------------------- 1247 class_method_say_replace_29
role Greet { method hello() { return "hi"; } }
class Svc does Greet { method fetch() { return "ok"; } }
 my $s = Svc.new(); say($s.^methods); 
#---------------------------------------------- 1248 class_method_say_replace_51
role R { method who() { return "role"; } }
class C does R { method who() { return "class"; } }
 my $c = C.new(); say($c.who()); 
#----------------------------------------------- 1249 class_method_say_replace_9
class A { has $.a; submethod BUILD(:$a) { say("buildA"); $!a = $a; } }
class B is A { has $.b; submethod BUILD(:$b) { say("buildB"); $!b = $b; }; method TWEAK() { say("tweakB"); } }
 my $o = B.new(a => 1, b => 2); say($o.a); say($o.b); 
#---------------------------------------------- 1250 class_method_sort_replace_2
class C { method sort() { return 99 } }
my $o = C.new;
say $o.sort;
#-------------------------------------------------------- 1251 for_range_array_1
my @a = 0 xx 3;
for 0..2 -> $i { @a[$i] = $i * 10 }
say @a[0]; say @a[1]; say @a[2];
#--------------------------------------------------------- 1252 for_range_hash_1
my %h;
for 1..2 -> $i { %h{$i} = $i * 100 }
say %h{1}; say %h{2};
#- 1253 ladder__rung06_control_unless_with_else_elsif_or_orwith_is_x_syntax_unlesselse_with_its_keyword
use MONKEY-SEE-NO-EVAL;
for <else elsif orwith> -> $k { try { EVAL "unless 1 \{\} $k 1 \{\}" }; print $!.^name, ":", $!.keyword, " " }
say "";
#---------------------------------------------------------- 1254 multi_sub_say_2
multi sub process(Int:D $x) { say("defined int: " ~ $x); }
multi sub process($x) { say("other"); }
 process(42); my $u; process($u); 
#------------------------------------------------------------ 1255 say_try_die_6
    my $n = 2;
    try { if ($n > 1) { die('cond'); }; say('no'); }; CATCH { say($_); };
    say('after');
#-------------------------------------------------------------- 1256 sub_array_9
sub a($x, *@r)  { return @r.elems; }
sub b($x, **@r) { return @r.elems; }
say a(0,1,2,3) ~ "|" ~ b(0,1,2,3);
#---------------------------------------------- 1257 class_method_say_replace_31
class Greeter { method hello() { return "hi"; } }
class Farewell { method bye() { return "bye"; } }
class Both is Greeter is Farewell { }
 my $b = Both.new(); say($b.hello()); say($b.bye()); 
#---------------------------------------------- 1258 class_method_say_replace_33
class A { method who() { return "A"; } }
class B is A { }
class C is B { }
 my $c = C.new(); say($c.who()); 
#---------------------------------------------- 1259 class_method_say_replace_34
class A { method who() { return "A"; } }
class B is A { method who() { return "B"; } }
class C is B { }
 my $c = C.new(); say($c.who()); 
#---------------------------------------------- 1260 class_method_say_replace_47
class Base { method who() { return "base"; } }
role R { method who() { return "role"; } }
class C is Base does R { }
 my $c = C.new(); say($c.who()); 
#---------------------------------------------- 1261 class_method_say_replace_48
role A { method m() { return "a"; } }
role B { method m() { return "b"; } }
class C does A does B { method m() { return "C"; } }
 my $c = C.new(); say($c.m()); 
#---------------------------------------------- 1262 class_method_say_replace_49
role A { method m() { return "a"; } }
role B { method m() { return "b"; } }
class C does A does B { }
 my $c = C.new(); say($c.m()); 
#---------------------------------------------- 1263 class_method_say_replace_52
role A { method foo() { return "f"; } }
role B { method bar() { return "b"; } }
class C does A does B { }
 my $c = C.new(); say($c.foo()); say($c.bar()); 
#-------------------------------------------------- 1264 class_sub_say_replace_1
class Animal { has $.n; }
class Dog is Animal { }
sub describe(Animal $a) { say($a.n); }
 my $d = Dog.new(n => 5); describe($d); 
#----------------------------------- 1265 core__rc05_value_call_returned_closure
sub make($n) { -> $x { $x + $n } }
say make(5)(10);
my @fs = (1..3).map(-> $n { -> $x { $x * $n } });
say @fs.map({ $_(10) });
#---------------------------------------------------------- 1266 for_array_say_4
my @a = 1,2,3;
my $s = 0;
for @a -> $v { $s = $s + $v; }
say($s);
#---------------------------------------------- 1267 class_method_say_replace_17
class A { method greet() { return "A"; } }
class B is A { method greet() { return "B"; } }
class C is A { method greet() { return "C"; } }
class D is B is C { }
 my $d = D.new(); say($d.greet()); 
#------------------------------------------------ 1268 class_multi_sub_replace_1
class Animal { }
class Dog is Animal { }
multi sub describe(Animal $a) { say("an animal"); }
multi sub describe(Dog $d) { say("a dog"); }
 my $d = Dog.new(); describe($d); 
#----------------------------------------------------- 1269 class_say_replace_17
class A { has $.base; }
class B is A { }
class C is A { has $.mid; }
class D is B is C { }
 my $d = D.new(base => "X", mid => "Y"); say($d.base ~ $d.mid); 
#------------------------------------------------ 1270 for_range_array_replace_1
my @a = (1,2,3);
for 0..4 -> $i {
    say @a[$i];
}
say "done";
#------------------------------------------------ 1271 rewrite__rr12_concurrency
my $p = start { 42 }; say await $p;
my $c = Channel.new; $c.send(7); say $c.receive;
my @got; Supply.from-list(1, 2, 3).tap({ @got.push($_) }); say @got;
react { whenever Supply.from-list(1..2) { say "w$_" } }
my @ps = (^3).map({ start { $_ * 2 } }); await Promise.allof(@ps); say @ps.map(*.result).join(",");
#--- 1272 ladder__rung07_subs_a_core_routine_written_without_arguments_is_a_call
my $r = slip;
say $r.elems;
say [slip].elems;
say "ok" if [] ~~ [slip];
try { await };
say "after";
#-------------- 1273 roast_causes__rc07_pairs_values_are_the_elements_containers
my @array = 17, 23, 42;
for @array.pairs -> $pair { $pair.value += 100 }
say @array;
my %h = a => 1, b => 2;
for %h.pairs -> $p { $p.value = 7 }
say %h.sort;
#------------------------------------------------------ 1274 token_say_replace_1
grammar G {
    token TOP { \d+ }
}

    my $r = G.parse("abc");
    if ($r) { say("matched"); } else { say("nomatch"); }
#---------------------------------------------- 1275 class_method_sort_replace_1
class Widget {
    method sort() { return "custom-sort"; }
    method reverse() { return "custom-rev"; }
}
my $w = Widget.new;
say $w.sort;
say $w.reverse;
#- 1276 ladder__rung04_arrays_a_seq_over_an_infinite_range_is_lazy_and_says_dots
my $evens = (1..*).map({ $_ * 2 });
say $evens.is-lazy;
say $evens.head(4);
say (1..*).map({ $_ * 3 }).first({ $_ > 10 });
say (0, (1..*).grep({ $_ %% 5 }));
say (1..4).map({ $_ + 1 }).is-lazy;
say (1..*).map({ $_ });
#- 1277 ladder__rung04_arrays_an_array_is_one_mutable_object_an_element_store_writes_it_in_place_for_every_name_that_holds_it
my @a = 1,2,3; my @b := @a; @a[0] = 5; say @b;
my $r = @a; $r[1] = 7; say @a;
my @c = @a; @c[2] = 0; say @a;
sub f(@x) { @x[0] = 99 }; f(@a); say @a;
for ^2 { my @l = 1,2; @l[0]++; say @l }
my @n = [1,2],[3,4]; my @o = @n; @o[0][0] = 50; say @n;
my @p; @p[3] = 1; say @p.elems; @a.push(4); say @b;
#----------------------------------------- 1278 ladder__rung024_kw_inf_inf_range
say (1..Inf).WHAT;
say (1..Inf).first(* > 5);
say (1..Inf).head(3);
say (1..Inf)[5];
for 1..Inf { say $_; last if $_ >= 3 }
say (-Inf..0).min;
say 5 min Inf;
say 5 max Inf;
#- 1279 ladder__rung13_classes_a_class_literal_written_with_leading_colons_is_the_class_type_object
class Foo {}
my $t1 = ::Foo;
say $t1.^name;
say $t1 ~~ Foo;
say ($t1 === Foo);
my $x = Foo;
say $x === ::Foo;
say ::Foo.^name;
#---------------------------------------------- 1280 core__rc06_value_call_forms
my @subs = { $_ * 2 }, -> $x { $x + 1 }, sub ($y) { $y - 1 };
say @subs[0](10), " ", @subs[1](10), " ", @subs[2](10);
my $f = { $^a ~ $^b };
say $f("x", "y");
say { $_ + 100 }(5);
my &g = &say;
my $h = -> { 7 };
say $h.();
say (sub { 42 })();
#- 1281 ladder__rung15_blocks_a_list_holding_a_lazy_gather_renders_after_its_seq_is_reified_not_during
sub row($n) { ("row" ~ $n, gather for ^60 -> $i { take "cell-" ~ $n ~ "-" ~ $i }) }
my $total = 0;
for ^200 -> $n {
    my $s = row($n).Str;
    $total += $s.chars;
}
say $total;
say row(7).raku.chars;
say row(3)[1][59];
#------------------------------------------------- 1282 rewrite__rr03_containers
my $a = 1; my $b := $a; $b = 2; say $a;
sub incr($x is rw) { $x++ }; incr($a); say $a;
say VAR($a).^name;
my @l = 1, 2; my $c = 9; @l[0] := $c; $c = 10; say @l[0];
my $ro := 5; try { $ro = 6; CATCH { default { say "ro" } } };
say $ro;
my %h; %h<k> = 1; my $hv := %h<k>; $hv = 2; say %h<k>;
say my $*z.VAR.dynamic;
my @q; say @q.VAR.name;
#- 1283 ladder__rung08_for_a_pointy_block_body_resumes_the_range_at_its_own_depth_each_pass
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
#--------------------------------------------- 1284 benchmark_divide-and-conquer
my \SCALE = 10;
my \FANOUT = 2;

sub divide-and-conquer($n, $depth) {
    say "$depth: $n" if 0;
    $depth <= 0 ?? $n !! [+] await do for ^FANOUT {
        start { divide-and-conquer($n / FANOUT, $depth - 1) }
    }
}

say divide-and-conquer(1.0, SCALE);
#- 1285 ladder__rung08_for_a_rw_loop_variable_and_the_topic_write_back_to_the_array_and_is_copy_does_not
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
#------------ 1286 ladder__rung04_arrays_in_numeric_context_count_their_elements
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
#- 1287 ladder__rung07_subs_an_is_rw_parameter_writes_back_to_a_scalar_or_an_element_argument
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
#--------------------------------- 1288 roast_causes__rc02_colonpair_angle_named
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
#-------------------------------------------------------- 1289 sub_say_replace_2
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
#------- 1290 ladder__rung01_variables_compound_assignment_and_element_increment
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
#-------------------------------------------------- 1291 sub_while_say_replace_1
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
#- 1292 ladder__rung12_exceptions_try_yields_a_code_value_call_and_a_sub_whose_last_statement_is_a_try_returns_it
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
#--------------------------- 1293 ladder__rung13_classes_nqp_create_and_bindattr
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
#- 1294 ladder__rung04_arrays_hash_of_a_list_flattens_it_and_an_odd_number_of_elements_throws_x_hash_store_oddnumber
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
#- 1295 ladder__rung12_exceptions_a_method_a_string_lacks_throws_x_method_notfound
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
#- 1296 ladder__rung05_hashes_a_colon_pair_used_as_a_value_is_a_pair_in_a_hash_a_list_and_a_scalar
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
#- 1297 ladder__rung13_classes_a_forward_declared_class_stub_gives_way_to_the_full_class_and_typed_attributes_stay_attributes
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
#--------------------------------------------------- 1298 rewrite__rr08_dispatch
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
#----------------------------------------------- 1299 sub_junction_say_replace_1
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
#- 1300 ladder__rung03_strings_the_method_assign_form_inside_an_expression_stores_and_yields_the_new_value
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
#- 1301 ladder__rung04_arrays_push_unshift_append_prepend_splice_shift_and_pop_on_a_number_die_and_push_of_an_array_literal_lives
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
#- 1302 ladder__rung01_variables_a_coercion_type_on_a_variable_or_a_parameter_converts_the_value_it_is_given
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
#----------------------------------------------------- 1303 when_while_replace_1
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
#----------- 1304 ladder__rung02_arithmetic_power_assigned_and_compound_assigned
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
#---------------------------------------------------- 1305 sub_for_say_replace_1
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
#- 1306 ladder__rung13_classes_an_rw_accessor_takes_compound_assignment_and_increment_and_a_readonly_one_dies
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
#---------------------------------------------------- 1307 sub_say_try_replace_1
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
#------------------------------------------------------ 1308 scrip_test_rk_given
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
#----------------------- 1309 ladder__rung02_arithmetic_fatrat_keeps_every_digit
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
#---------------------------------------------- 1310 class_method_say_replace_19
class Counter { has $.n; method add($k) { return Counter.new(n => $.n + $k); } }
 my $c = Counter.new(n => 10); $c .= add(5); say($c.n); 
#----------------------------------------------- 1311 class_method_say_replace_3
class Box { has $.v; method v() { return $!v + 100; } }
 my $b = Box.new(v => 5); say($b.v()); 
#---------------------------------------------- 1312 class_method_say_replace_30
class Temperature { has $.celsius; method new($c) { return self.bless(celsius => $c); } }
 my $t = Temperature.new(37); say($t.celsius); 
#---------------------------------------------- 1313 class_method_say_replace_37
class Stack { has @!items; method size() { return 1; } }
 my $s = Stack.new(); say($s.items); 
#---------------------------------------------- 1314 class_method_say_replace_38
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.code()); 
#---------------------------------------------- 1315 class_method_say_replace_39
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.code); 
#---------------------------------------------- 1316 class_method_say_replace_42
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.reveal()); 
#---------------------------------------------- 1317 class_method_say_replace_45
class Cfg { has %!opts; method ok() { return 1; } }
 my $c = Cfg.new(); say($c.opts); 
#----------------------------------------------- 1318 class_method_say_replace_5
class Counter { has $.n; method bump() { $!n = $!n + 1; }; method val() { return $!n; } }
 my $c = Counter.new(n => 0); $c.bump(); $c.bump(); $c.bump(); say($c.val()); 
#---------------------------------------------- 1319 class_method_say_replace_57
class C { has $.x; method make($v) { return self.bless(x => $v); } }
 my $o = C.make(9); say($o.x); 
#----------------------------------------------- 1320 class_method_say_replace_8
class T { has $.c; method mk() { return self.bless(c => 9); } }
 my $t = T.mk(); say($t.c); 
#---------------------------------------------------------- 1321 for_range_say_8
    try { for 1..3 -> $i { say($i); die('lp'); } }; CATCH { say($_); };
    say('after');
#-------- 1322 ladder__rung02_arithmetic_div_and_modulo_by_zero_return_a_failure
my $a = 12 div 0; my $b = 12 % 0; say $a.WHAT.gist, $b.WHAT.gist, " ", $a.defined, " ", $a.exception.^name;
my @x; try (push @x, .abs with 12 div $_) for 0..4; say @x.raku;
#- 1323 ladder__rung06_control_a_bare_block_with_a_statement_modifier_is_run_by_it
my $n = 0; { $n += $_ } for 1..3;
{ $n += 10 } if $n == 6; { $n += 100 } unless $n == 6; say $n;
#- 1324 ladder__rung10_given_when_a_dot_call_on_the_topic_is_a_call_of_the_topic
my $t = sub { True }; my $f = sub { False };
say ($t ~~ .()).raku, " ", ($f ~~ .()).raku; given sub ($x) { $x * 2 } { say .(4) }
#---------------------------------------------------------- 1325 sub_for_array_2
sub f(*@r) { my $o = ""; for @r -> $x { $o = $o ~ $x ~ " "; }; say $o.trim; };
f("a","b");
#----------------------------------------------- 1326 class_method_for_replace_1
class C { method go() { say "g" } }
my $o = C.new;
$o.go() for 1..2;
#--------------------------------------------- 1327 class_method_multi_replace_1
class C { multi method sort(Int $x) { return $x * 10 } }
my $o = C.new;
say $o.sort(4);
#--------------------------------------------- 1328 class_method_range_replace_4
role R { method needed() {...} }
class C does R { method needed() { return 7; } }
 my $c = C.new(); say($c.needed()); 
#---------------------------------------------- 1329 class_method_say_replace_11
class A { method g() { return "A"; } }
class B is A { method g() { return "B+" ~ callsame(); } }
 my $b = B.new(); say($b.g()); 
#---------------------------------------------- 1330 class_method_say_replace_13
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { return "B:" ~ $n ~ "/" ~ callwith(99); } }
 my $b = B.new(); say($b.g(5)); 
#---------------------------------------------- 1331 class_method_say_replace_14
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { my $m = $n + 10; return "B:" ~ $n ~ "/" ~ callwith($m); } }
 my $b = B.new(); say($b.g(5)); 
#----------------------------------------------- 1332 class_method_say_replace_2
class Animal { has $.name; }
class Dog is Animal { method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.name()); 
#---------------------------------------------- 1333 class_method_say_replace_23
class Engine { method start() { return "vroom"; }; method stop() { return "halt"; } }
class Car { has $.engine handles <start stop>; has $.name; }
 my $e = Engine.new(); my $c = Car.new(engine => $e, name => "tesla"); say($c.start()); say($c.stop()); say($c.name); 
#---------------------------------------------- 1334 class_method_say_replace_26
class Adder { method add($n) { return $n + 100; } }
class Wrap { has $.impl handles <add>; }
 my $a = Adder.new(); my $w = Wrap.new(impl => $a); say($w.add(5)); 
#---------------------------------------------- 1335 class_method_say_replace_27
class Animal { has $.name; }
class Dog is Animal { method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.name); 
#---------------------------------------------- 1336 class_method_say_replace_28
class Animal { has $.name; method legs() { return 4; } }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.legs()); 
#---------------------------------------------- 1337 class_method_say_replace_36
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { return "B+" ~ nextsame(); } }
 my $b = B.new(); say($b.g(7)); 
#----------------------------------------------- 1338 class_method_say_replace_4
class Animal { has $.legs = 4; }
class Dog is Animal { method describe() { return $.legs; } }
 my $d = Dog.new(); say($d.describe());
#---------------------------------------------- 1339 class_method_say_replace_40
class Base { has $!secret; method peek() { return $!secret; } }
class Derived is Base { }
 my $d = Derived.new(secret => 5); say($d.secret()); 
#---------------------------------------------- 1340 class_method_say_replace_41
class Base { has $!secret; method peek() { return $!secret; } }
class Derived is Base { }
 my $d = Derived.new(secret => 5); say($d.peek()); 
#---------------------------------------------- 1341 class_method_say_replace_50
role Greet { method hello() { return "hi"; } }
class Dog does Greet { has $.name; }
 my $d = Dog.new(name => "Rex"); say($d.hello()); 
#----------------------------------------------- 1342 class_method_say_replace_6
class Base { has $.id is required; }
class Sub is Base { method who() { return $.id; } }
 my $s = Sub.new(); say($s.who());
#----------------------------------------------- 1343 class_method_say_replace_7
class Base { has $.id is required; }
class Sub is Base { method who() { return $.id; } }
 my $s = Sub.new(id => 5); say($s.who());
#----------------------------------------------- 1344 class_method_sub_replace_1
class Base { has $.x; method TWEAK() { say("base-tweak"); } }
class Sub is Base { has $.y; method TWEAK() { say("sub-tweak"); } }
 my $s = Sub.new(x => 1, y => 2); 
#-------------------------------------------------------- 1345 multi_sub_array_1
multi sub f($a, *@r) { return "V:" ~ @r.elems; }
multi sub f($a) { return "S"; }
say f(1) ~ "|" ~ f(1,2,3);
#---------------------------------------------------------- 1346 multi_sub_say_3
multi sub init(Str:U $x) { say("uninitialized"); }
multi sub init(Str $x) { say("has value: " ~ $x); }
 my $u; init($u); 
#--------------------------------------------- 1347 class_method_range_replace_5
role Need { method act() {...} }
role Give { method act() { return "ok"; } }
class C does Need does Give { }
 my $c = C.new(); say($c.act()); 
#---------------------------------------------- 1348 class_method_say_replace_12
class A { method g() { return "A"; } }
class B is A { method g() { return "B+" ~ callsame(); } }
class C is B { method g() { return "C+" ~ callsame(); } }
 my $c = C.new(); say($c.g()); 
#---------------------------------------------- 1349 class_method_say_replace_24
class Engine { method go() { return "GO"; } }
class Vehicle { has $.engine handles <go>; }
class Truck is Vehicle { }
 my $e = Engine.new(); my $t = Truck.new(engine => $e); say($t.go()); 
#---------------------------------------------- 1350 class_method_say_replace_25
class L { method left() { return "LL"; } }
class R { method right() { return "RR"; } }
class Pair { has $.l handles <left>; has $.r handles <right>; }
 my $ll = L.new(); my $rr = R.new(); my $p = Pair.new(l => $ll, r => $rr); say($p.left()); say($p.right()); 
#---------------------------------------------- 1351 class_method_say_replace_32
class A { has $.name; }
class B is A { }
class C is B { method tag() { return "C"; } }
 my $c = C.new(name => "Rex"); say($c.name); 
#- 1352 ladder__rung08_for_next_in_a_for_over_a_range_continues_with_the_next_element
my $s = ""; for 1..4 { next if $_ == 2; $s ~= $_ }; say $s;
my $t = ""; for 1..4 { next if $_ == 2; $t ~= "x" }; say $t;
my $c = 0; for 1..3 { for 1..3 { next if $_ == 2; $c++ } }; say $c;
my $u = ""; for 1..4 { last if $_ == 3; $u ~= $_ }; say $u;
#--------------------------------------------- 1353 class_method_multi_replace_2
class Calc {
    multi method add(Int $a) { return $a; }
    multi method add(Int $a, Int $b) { return $a + $b; }
}
 my $c = Calc.new(); say($c.add(5)); say($c.add(3, 4)); 
#---------------------------------------------- 1354 class_method_say_replace_16
class A { method greet() { return "A"; } }
class B is A { method greet() { return "B>" ~ callsame(); } }
class C is A { method greet() { return "C>" ~ callsame(); } }
class D is B is C { }
 my $d = D.new(); say($d.greet()); 
#---------------------------------------------------------- 1355 while_say_try_1
    my $i = 0;
    try {
        while ($i < 5) { $i = $i + 1; say($i); if ($i == 2) { die('w'); } }
    }; CATCH { say($_); };
    say('after');
#------------------------------------------------- 1356 core__rc08_named_flatten
sub f(:$a, :$b = 0, *%rest) { "a=$a b=$b rest={%rest.keys.sort}" }
say f(a => 1);
say f(:a(2), :b(3), :c(4));
my %args = a => 9, b => 8;
say f(|%args);
say (1..2).map({ f(a => $_) });
#----------------------- 1357 ladder__rung19_block_methcall_grep_and_map_listops
for grep { $_ > 2 }, 1..5 -> $v { say $v }
my @g = grep { $_ %% 2 }, 1..8;
say @g;
my @a = 4, 5, 6;
say grep { $_ != 5 }, @a;
say (map { $_ * 10 }, @a).elems;
#--------------------------------------------- 1358 class_method_multi_replace_4
class Animal { }
class Dog is Animal { }
class Handler {
    multi method greet(Animal $a) { return "an animal"; }
    multi method greet(Dog $d) { return "a dog"; }
}
 my $h = Handler.new(); my $d = Dog.new(); say($h.greet($d)); 
#--------------------------------------------- 1359 core__rc12_sort_reduce_forms
my @w = <pear apple fig>;
say @w.sort({ $^a.chars <=> $^b.chars || $^a cmp $^b });
say @w.sort(*.chars);
say @w.sort(-> $a, $b { $b cmp $a });
say @w.map({ .comb.sort({ $^b cmp $^a }).join });
say (1..5).reduce({ $^a * $^b }), " ", (1..5).reduce(-> $a, $b { $a - $b });
say ((1, 2), (3, 4)).map({ .reduce({ $^a + $^b }) });
#----------------------- 1360 ladder__rung04_arrays_cross_zip_flat_and_unpacking
my $k = 0;
for flat(1 .. 3 X 1 .. 2) -> $i, $j { $k += $i * 10 + $j; say "$i $j" }
say $k;
for (1 .. 2 X 1 .. 2) -> ($i, $j) { say "p $i $j" }
for 1..4 -> $a, $b { say "$a,$b" }
my @z = flat((1,2) Z (3,4));
say @z.join(",");
for (1,2 X 3,4) -> ($a, $b) { say "c $a $b" }
for 1 .. 2 X 7 -> ($a, $b) { say "q $a $b" }
#-------- 1361 ladder__rung15_blocks_map_grep_first_named_sub_and_n_arity_blocks
sub dbl($x) { $x * 2 }
sub odd($x) { $x % 2 }
my @a = 1, 2, 3, 4, 5, 6;
say @a.map(&dbl);
say @a.grep(&odd);
say @a.first(&dbl);
say @a.map(-> $x, $y { $x + $y });
say @a.map({ $^a * $^b });
say @a.map(-> $x, $y, $z { "$x$y$z" }).join(",");
#--------------------------------------- 1362 ladder__rung13_classes_inheritance
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
#------------------- 1363 ladder__rung16_bool_bool_pick_and_bool_roll_are_a_coin
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
#-------------------------------------------------- 1364 sub_for_range_replace_2
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
#-------------------- 1365 roast_causes__rc11_a_positional_does_not_index_by_key
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
#- 1366 ladder__rung09_regex_a_smartmatch_against_a_code_value_held_in_a_hash_element_or_a_variable_calls_it
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
#------------------------------------------------- 1367 scrip_test_rk_unique_sum
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
#- 1368 ladder__rung13_classes_a_typed_declaration_with_dot_assign_calls_the_type_and_a_colon_variable_pair_is_a_named_pair
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
#---------------------------------------------------------- 1369 sub_for_array_1
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
#-------------- 1370 ladder__rung03_strings_the_q_family_quotes_build_their_text
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
#- 1371 ladder__rung13_classes_a_dollar_bang_or_dollar_dot_attribute_interpolates_in_a_string
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
#-- 1372 ladder__rung09_regex_substitution_and_transliteration_agree_with_rakudo
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
#- 1373 ladder__rung13_classes_an_attribute_array_element_is_assigned_in_place_inside_a_method_and_its_loops
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
#- 1374 ladder__rung01_variables_a_typed_variable_that_a_block_or_closure_changes_is_the_same_variable
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
#- 1375 ladder__rung04_arrays_a_bound_scalar_and_a_bound_element_share_one_container_with_what_they_bind
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
#--------------------------------------- 1376 benchmark_rc-forest-fire-stringify
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
#--------------------------------------------------- 1377 class_method_replace_1
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
#-------------------------------------------------- 1378 sub_for_array_replace_1
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
#- 1379 ladder__rung04_arrays_a_caret_range_keeps_its_endpoints_numifies_and_smartmatches_as_rakudo_does
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
#- 1380 ladder__rung13_classes_can_returns_invokable_methods_found_up_the_parents_and_knows_a_builtin_methods_name
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
#----------------------------------------------- 1381 benchmark_point_class_add2
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
#------------------------------------------ 1382 benchmark_send-more-money-loops
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
#--------------------------------------------------------- 1383 smartmatch_say_4
 my $s = "hello"; if ($s ~~ /$<word>=(<[a..z]>+)/) { say($<word>); } 
#--------------------------------------------- 1384 class_method_array_replace_1
class Bag { has @.items; method count() { my @c = @.items; return @c.elems; } }
 my @v = 1, 2, 3, 4; my $b = Bag.new(items => @v); say($b.count()); 
#---------------------------------------------- 1385 class_method_say_replace_22
class Point { has $.x; has $.y; method gist() { return "Point(" ~ $.x ~ ", " ~ $.y ~ ")"; } }
 my $p = Point.new(x => 3, y => 4); say($p); 
#---------------------------------------------- 1386 class_method_say_replace_43
class Mix { has $.pub; has $!prv; method both() { return $.pub ~ "-" ~ $!prv; } }
 my $m = Mix.new(pub => "A", prv => "B"); say($m.both()); 
#---------------------------------------------- 1387 class_method_say_replace_44
class Mix { has $.pub; has $!prv; method both() { return $.pub ~ "-" ~ $!prv; } }
 my $m = Mix.new(pub => "A", prv => "B"); say($m.pub); 
#---------------------------------------------- 1388 class_method_say_replace_46
class P { has $.x; method gist() { return "G" ~ $.x; }; method Str() { return "S" ~ $.x; }; method raku() { return "R" ~ $.x; } }
 my $p = P.new(x => 7); say($p.gist()); say($p.Str()); say($p.raku()); 
#---------------------------------------------- 1389 class_method_say_replace_53
class Point { has $.x; method Str() { return "STR:" ~ $.x; } }
 my $p = Point.new(x => 3); say($p ~ "!"); 
#---------------------------------------------- 1390 class_method_say_replace_54
class P { has $.x; method Str() { return "S" ~ $.x; } }
 my $p = P.new(x => 9); say("val=$p"); 
#------- 1391 ladder__rung01_variables_temp_restores_the_old_value_at_scope_exit
our $x = 5; sub g { $x }; sub f { temp $x = 100; g() }; my @a = 1, 2;
say f(), " ", $x; for 1..2 { temp $x = $_ * 10; print $x, " " }; say $x; { temp @a = 9; say @a.elems }; say @a.elems;
#- 1392 ladder__rung07_subs_a_sub_reading_its_topic_keeps_the_default_of_its_typed_parameter
sub f(Int $w = 31) { for 1..3 { return $_ if $_ == 2 }; $w }
say f();
#----------------------------------------------- 1393 class_method_for_replace_2
class Ctr { has $.n; method emit($x) { say $x } }
my $c = Ctr.new(n => 0);
for 1..3 -> $i { $c.emit($i) }
#----------------------------------------------- 1394 class_method_for_replace_3
class Box { has $.v; method show() { say $!v } }
my $b = Box.new(v => 7);
for 1..2 { $b.show() }
#----------------------------------------------- 1395 class_method_for_replace_4
class Box2 { has $.v; method show() { say $!v } }
my $b = Box2.new(v => 9);
for 1..2 { $b.show(); }
#--------------------------------------------- 1396 class_method_range_replace_1
class Animal { has $.name; method speak() { return "..."; } }
class Dog is Animal { method speak() { return "Woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.speak()); 
#--------------------------------------------- 1397 class_method_range_replace_2
class Animal { has $.name; method speak() { return "..."; } }
class Dog is Animal { has $.breed; }
 my $d = Dog.new(name => "Rex", breed => "Lab"); say($d.^attributes); 
#--------------------------------------------- 1398 class_method_range_replace_3
class Animal { has $.name; method speak() { return "..."; }; method eat() { return "om"; } }
class Dog is Animal { has $.breed; method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex", breed => "Lab"); say($d.^methods); 
#---------------------------------------------- 1399 class_method_say_replace_21
class Animal { has $.name; method gist() { return "DOG:" ~ $.name; } }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d); 
#--------------------------------------------- 1400 class_method_multi_replace_5
class Printer {
    multi method show(Int $x) { return "int:" ~ $x; }
    multi method show(Str $s) { return "str:" ~ $s; }
}
 my $p = Printer.new(); say($p.show(42)); say($p.show("hi")); 
#------------------------------------------- 1401 core__rc13_callable_smartmatch
my @a = 1..6;
say @a.grep({ $_ ~~ { $_ %% 3 } });
say @a.first({ $_ > 4 });
say @a.grep(-> $x { $x ~~ -> $y { $y > 2 } });
say @a.map({ $_ ~~ { $_ > 3 } ?? "y" !! "n" }).join;
say "abc" ~~ { .chars == 3 };
#- 1402 ladder__rung04_arrays_join_flattens_its_list_arguments_as_a_slurpy_and_keeps_array_elements_itemized
my @s = <a b c>;
say join '', gather for ^2 -> $i { take @s[0, 1], "\n" };
say join('-', (1, 2), (3, (4, 5)));
say join '-', [1, 2], 3;
my @a = (1, 2), (3, 4);
say join '|', @a;
say ((1, 2), (3, 4)).join('|');
say join ',', (1..3), 4;
#- 1403 ladder__rung07_subs_an_array_pattern_parameter_binds_its_elements_for_a_sub_and_a_multi
sub uno ([$a, $b?]) { "$a|$b.gist()" }
say uno([1, 2]);
say uno([1]);
sub tri ([$h, *@t]) { "$h:" ~ @t.join(",") }
say tri([1, 2, 3]);
multi sub bar ([$a, $b?]) { return "$a|$b.gist()" }
multi sub baz (*[$a, $b, $c?]) { return "$a+$b+$c" }
say bar([3, 4]);
say baz(5, 6, 7);
#------ 1404 ladder__rung18_two_arg_block_do_for_collects_and_await_is_its_value
say [+] do for ^3 { 5 };
say [+] do for 1..3 { $_ * 10 };
my @r = do for 1..3 { $_ * 10 };
say @r.join(",");
say (do for 1..3 { $_ * 2 }).join(",");
my $p = start { 42 };
say await $p;
say [+] await do for ^2 { start { 21 } };
say await(start { 7 }, start { 8 }).join(",");
#--------------------------------------------------- 1405 sub_when_for_replace_1
# rk_for_array_simple.raku — RK-BB-3a probe: iterate Icon-list (DT_DATA) via `for @arr -> $v`.
# Stripped-down precursor to rk_map_grep_sort24; flips green when the BB_ITERATE
# polymorphic substrate (DT_DATA-list branch) lands.
sub main() {
    my @x = '';
    push(@x, 10); push(@x, 20); push(@x, 30);
    for @x -> $v { say($v); }
}
main();
#- 1406 ladder__rung14_roles_a_role_declares_regexes_and_attributes_beside_methods
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
#- 1407 ladder__rung15_blocks_a_closure_in_a_sub_reads_an_enum_value_and_a_constant_that_sub_declares
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
#- 1408 ladder__rung19_block_methcall_sort_by_a_one_arg_key_block_past_64_elements
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
#-------------------------------------------------- 1409 sub_for_while_replace_1
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
#- 1410 ladder__rung07_subs_an_infix_multi_on_objects_is_entered_from_the_relop_boxes_in_value_and_condition_context
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
#--------------------------------------------------- 1411 sub_for_loop_replace_1
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
#-------------------------------------------------- 1412 sub_for_range_replace_1
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
#---------------------------------------------- 1413 class_method_say_replace_15
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
#------------------------------------------ 1414 scrip_test_rk_seq_consumers_arr
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
#--------------------------------------------- 1415 benchmark_rc-9-billion-names
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
#------------------------------------------------------- 1416 scrip_test_rk_subs
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
#------------------------------------------------- 1417 method_sub_for_replace_1
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
#-------- 1418 ladder__rung02_arithmetic_power_in_every_right_hand_side_position
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
#------------------------------------------------ 1419 sub_junction_smartmatch_1
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
#- 1420 ladder__rung12_exceptions_fail_returns_a_failure_that_is_undefined_handled_by_its_methods_and_thrown_when_sunk_and_shift_and_pop_of_an_empty_array_return_one
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
#- 1421 ladder__rung01_variables_a_package_variable_is_declared_with_our_and_read_by_its_qualified_name
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
#------------------------------------------- 1422 multi_sub_smartmatch_replace_1
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
#- 1423 ladder__rung04_arrays_binding_an_array_to_an_element_aliases_it_and_pop_shift_a_zen_slice_and_an_element_store_value_agree_with_rakudo
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
#------------------------------------------------ 1424 class_multi_sub_replace_2
class Vec { has $.x; has $.y; }
multi sub infix:<+>(Vec $a, Vec $b) { return Vec.new(x => $a.x + $b.x, y => $a.y + $b.y); }
 my $p = Vec.new(x => 1, y => 2); my $q = Vec.new(x => 10, y => 20); my $r = $p + $q; say($r.x); say($r.y); 
#------------------------------------------------ 1425 class_multi_sub_replace_3
class Vec { has $.x; }
multi sub infix:<+>(Vec $a, Vec $b) { return Vec.new(x => $a.x + $b.x); }
 my $a = 7; my $b = 5; say($a + $b); say($a - $b); say($a * $b); 
#------------------------------------------------ 1426 class_multi_sub_replace_5
class Box { has $.n; }
multi sub infix:«<»(Box $a, Box $b) { return $a.n < $b.n; }
 my $a = Box.new(n => 3); my $b = Box.new(n => 7); say($a < $b); 
#------------------------------------------------ 1427 class_multi_sub_replace_4
class Money { has $.cents; }
multi sub infix:<+>(Money $a, Money $b) { return Money.new(cents => $a.cents + $b.cents); }
multi sub infix:<*>(Money $a, $n) { return Money.new(cents => $a.cents * $n); }
 my $a = Money.new(cents => 150); my $b = Money.new(cents => 350); my $s = $a + $b; say($s.cents); my $t = $a * 3; say($t.cents); 
#------------------------------------------------ 1428 class_multi_sub_replace_6
class Animal { has $.size; }
class Dog is Animal { }
multi sub infix:«<»(Animal $a, Animal $b) { return $a.size + $b.size; }
 my $d1 = Dog.new(size => 10); my $d2 = Dog.new(size => 20); say($d1 < $d2); 
#------------------------------------------------ 1429 class_multi_sub_replace_7
class Animal { has $.size; }
class Dog is Animal { }
multi sub infix:<+>(Animal $a, Animal $b) { return Animal.new(size => $a.size + $b.size); }
 my $d1 = Dog.new(size => 10); my $d2 = Dog.new(size => 20); my $r = $d1 + $d2; say($r.size); 
#--------------------------------------------------- 1430 core__rc09_named_forms
class P { has $.x; method scaled(:$by = 1) { $!x * $by } }
my @ps = (1..3).map({ P.new(x => $_) });
say @ps.map({ .scaled(by => 10) });
say @ps.sort({ $^b.scaled(:by(2)) <=> $^a.scaled(:by(2)) }).map(*.x);
#-------------------------------------------- 1431 core__rc11_nested_sort_reduce
my @a = 5, 3, 9;
say @a.map(-> $x { @a.sort({ $^b <=> $^a })[0] + $x });
say @a.map({ @a.sort(-> $p, $q { $p <=> $q }).head });
sub by-len(@xs) { @xs.sort({ $^a.chars <=> $^b.chars }) }
say <bb a ccc>.map({ by-len(<bb a ccc>).join }).join("|");
say (1..3).map({ (1..$_ + 1).reduce({ $^a + $^b }) });
say (1..3).map({ (1..$_ + 1).reduce(-> $p, $q { $p * $q }) });
#----------------------------- 1432 roast_causes__rc01_lone_interpolation_is_str
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
#--------------------- 1433 ladder__rung09_regex_match_methods_agree_with_rakudo
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
#--------------------------------------------- 1434 benchmark_rc-perfect-shuffle
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
#- 1435 ladder__rung12_exceptions_a_call_that_resolves_to_no_routine_raises_a_catchable_exception_inside_try_and_eval
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
#---------------------------------------------- 1436 scrip_test_rk_array_literal
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
#--------------------------------------------- 1437 sub_smartmatch_say_replace_1
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
#- 1438 ladder__rung04_arrays_pop_and_shift_inside_an_expression_still_remove_the_element
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
#--- 1439 ladder__rung09_regex_quote_adverbs_and_interpolation_agree_with_rakudo
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
#--------------------------------------------- 1440 sub_smartmatch_say_replace_2
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
#- 1441 ladder__rung08_for_last_and_next_with_a_label_leave_or_continue_the_labelled_loop_through_nested_loops
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
#------------------------------------------- 1442 sub_regex_smartmatch_replace_1
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
#- 1443 ladder__rung13_classes_a_class_body_runs_where_it_is_declared_and_its_lexicals_are_each_class_own_and_seen_by_its_methods
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
#--------------------------------------------- 1444 class_method_multi_replace_3
class Base { multi method describe(Int $x) { return "base-int:" ~ $x; } }
class Sub is Base { multi method describe(Str $s) { return "sub-str:" ~ $s; } }
 my $o = Sub.new(); say($o.describe(7)); say($o.describe("yo")); 
#---------------------------------------------------- 1445 core__rc07_dot_parens
my @subs = (sub ($x) { $x + 1 }, sub ($x) { $x * 2 });
say @subs.map({ .(5) });
say @subs[0].(10), " ", @subs[1].(10);
my %h = f => sub ($a) { $a ~ "!" };
say %h<f>.("hi");
class C { has $.cb; method run($v) { $!cb.($v) } }
say C.new(cb => { $_ ~ "?" }).run("a");
#--------------------------------------------------- 1446 core__rc10_named_multi
class Pt { has $.x; has $.y; method Str { "($!x,$!y)" } }
say Pt.new(x => 1, y => 2).Str;
say (1..2).map({ Pt.new(:x($_), :y($_ * 2)).Str }).join(" ");
multi sub area(:$r!) { 3 * $r * $r }
multi sub area(:$w!, :$h!) { $w * $h }
say area(r => 2), " ", area(w => 2, h => 3);
sub opt($p, :$q = "d") { "$p/$q" }
say (1..2).map({ opt($_, q => "x$_") }).join(" ");
#- 1447 ladder__rung03_strings_a_method_call_with_parentheses_interpolates_in_a_double_quoted_string
my @a = 1, 2, 3;
say "x @a.join(',') y";
say "m @a.map({ $_ * 2 }).join(',') z";
say "n @a.map({ $_ ~~ Int ?? "I" !! "N" }).join(',') z";
my $o = "s"; say "q $o.uc() r";
say "(@a.map({ $_ + 1 }).join(','),)";
my @q = ($_ * 2 for 1..3); say @q.raku;
my @r = (1..4).map({ $_ * $_ }); say "sq: @r.join(' ')";
#-------------------------------------------------------- 1448 rewrite__rr05_seq
say (1 ... *)[5000];
say (gather { my $i = 0; loop { take $i++ } }).head(3);
my $s = (1..Inf).map(* * 2).grep(* %% 3); say $s[2];
sub gen { gather for 1..3 { take $_ * 10 } }
my $g = gen(); say $g.list;
my $it = (10, 20, 30).iterator; say $it.pull-one; say $it.pull-one;
say (1, 1, * + * ... *)[10];
say (1..Inf).is-lazy;
#- 1449 ladder__rung11_junctions_a_junction_in_boolean_context_collapses_and_star_smartmatch_against_a_type_is_a_whatevercode
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
#------------------------------------- 1450 benchmark_rc-self-describing-numbers
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
#---- 1451 ladder__rung09_regex_a_match_statement_in_a_sub_returns_to_its_caller
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
#- 1452 ladder__rung08_for_a_for_loop_over_the_topic_restores_the_outer_topic_when_it_ends_by_exhaustion_last_or_return
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
#- 1453 ladder__rung10_given_a_when_arm_in_a_block_or_sub_body_and_a_given_or_if_as_a_value
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
#------------------------------------------------------ 1454 rewrite__rr06_regex
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
#- 1455 ladder__rung04_arrays_xx_repeats_its_left_side_unflattened_and_a_range_in_a_comma_list_is_one_range_element
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
#- 1456 ladder__rung09_regex_a_failed_match_statement_does_not_end_its_loop_or_sub_body
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
#------------------------------------------------- 1457 benchmark_insertion-sort
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
#---------------------------------------------- 1458 sub_when_junction_replace_1
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
#-------------------------------------------------- 1459 benchmark_rc-mandelbrot
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
#------------------------------------------------ 1460 benchmark_point_class_add
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
#- 1461 ladder__rung09_regex_grammars_protos_actions_and_lexical_regexes_agree_with_rakudo
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
#----------------------------------------------------- 1462 benchmark_merge-sort
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
#----------------------------------------------- 1463 benchmark_point_class_add1
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
#- 1464 ladder__rung02_arithmetic_rat_as_an_argument_a_receiver_and_a_container_element_agrees_with_rakudo
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
#- 1465 ladder__rung07_subs_a_subset_is_a_type_and_a_where_clause_checks_a_parameter
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
#---------------------------------------------------- 1466 scrip_test_rk_given18
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
#------------------------------------------------- 1467 rewrite__rr09_smartmatch
say 5 ~~ Int; say so "abc" ~~ /b/; say 5 ~~ * > 3; say 5 ~~ 1..10; say so 2 ~~ 1|2|3;
given 7 {
    when 1..5 { say "low" }
    when * > 5 { say "high" }
}
say so any(1, 2, 3) > 2; say so (1|2) + 1 ~~ 2|3; say so all(1, 2) < 3;
my @a = 1, 2, 3; say @a ~~ [1, 2, 3]; say "x" ~~ "x";
say (1, 2, 3).grep(1|3).elems;
#- 1468 ladder__rung10_given_a_when_arm_is_its_own_node_a_given_binds_the_topic_and_a_matched_when_leaves_the_block
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
#- 1469 ladder__rung04_arrays_an_infinite_or_whatever_ended_range_is_lazy_where_it_is_iterated_and_a_range_value_where_it_is_held
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
#- 1470 ladder__rung05_hashes_a_hash_slice_reads_assigns_tests_and_deletes_several_keys
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
#- 1471 ladder__rung02_arithmetic_rat_in_the_builtins_index_range_x_floor_abs_sqrt_sprintf_int_and_caret
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
#------------------------------------------------- 1472 rewrite__rr07_exceptions
sub f { die "boom" }
try { f(); CATCH { default { say "caught ", .message } } }
my $r = do { try { die X::AdHoc.new(payload => "p") }; $! ~~ X::AdHoc ?? "adhoc" !! "other" }; say $r;
sub g { fail "soft" }
my $v = g(); say $v.defined; say $v.exception.message;
{ LEAVE say "leave"; KEEP say "keep"; UNDO say "undo"; say "body" }
sub h { for 1..3 { return $_ if $_ == 2 }; 0 }; say h();
ROW: for 1..3 -> $i { for 1..3 -> $j { last ROW if $j == 2; say "$i $j" } }
{ CONTROL { when CX::Warn { say "warned: ", .message; .resume } }; warn "w1"; say "after" }
#----------------- 1473 ladder__rung09_regex_engine_captures_1_agree_with_rakudo
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
#-------------- 1474 ladder__rung09_regex_engine_quantifiers_1_agree_with_rakudo
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
#------------------- 1475 ladder__rung09_regex_engine_sigspace_agree_with_rakudo
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
#--------------------- 1476 ladder__rung09_regex_engine_batch2_agree_with_rakudo
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
#------------------- 1477 ladder__rung09_regex_engine_basics_1_agree_with_rakudo
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
#------------------- 1478 ladder__rung09_regex_engine_basics_2_agree_with_rakudo
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
#------------------- 1479 ladder__rung09_regex_engine_basics_3_agree_with_rakudo
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
#------------------ 1480 ladder__rung09_regex_engine_classes_1_agree_with_rakudo
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
#------------------------------------------------ 1481 rewrite__rr13_integration
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
