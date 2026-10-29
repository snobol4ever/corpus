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
#----------------------------------- 14 ladder__rung02_arithmetic_division_float
say 7 / 2;
#-------------------------------------- 15 ladder__rung02_arithmetic_integer_div
say 7 div 2;
#------------------------------------- 16 ladder__rung03_strings_repeat_operator
say "ab" x 3;
#------------------------------------ 17 ladder__rung09_string_methods_lc_method
say "RAKU".lc;
#-------------------------------- 18 ladder__rung09_string_methods_substr_method
say "Hello".substr(1,3);
#---------------------------------- 19 ladder__rung09_string_methods_trim_method
say "  hi  ".trim;
#---------------------------------------------------------- 20 simple_program_18
say 7 %% 3;
#---------------------------------------------------------- 21 simple_program_19
say 6 %% 3;
#---------------------------------------------------------- 22 simple_program_20
say 0 %% 5;
#---------------------------------------------------------- 23 simple_program_23
say "hello".ends-with("xy");
#---------------------------------------------------------- 24 simple_program_24
say "hello".ends-with("lo");
#---------------------------------------------------------- 25 simple_program_27
say ord("A");
#---------------------------------------------------------- 26 simple_program_28
say "Z".ord;
#---------------------------------------------------------- 27 simple_program_29
say 2 ** 10;
#---------------------------------------------------------- 28 simple_program_30
say 2 ** 3 ** 2;
#---------------------------------------------------------- 29 simple_program_31
say 3 + 2 ** 3;
#---------------------------------------------------------- 30 simple_program_32
say 2 * 3 ** 2;
#---------------------------------------------------------- 31 simple_program_33
say -2 ** 2;
#---------------------------------------------------------- 32 simple_program_34
print "a", "b"; say "";
#---------------------------------------------------------- 33 simple_program_37
say sqrt(2);
#---------------------------------------------------------- 34 simple_program_39
say [+] ();
#---------------------------------------------------------- 35 simple_program_40
say [+] (1, 2, 3, 4);
#---------------------------------------------------------- 36 simple_program_41
say [+] 5;
#---------------------------------------------------------- 37 simple_program_43
say [max] (3, 1, 4, 2);
#---------------------------------------------------------- 38 simple_program_44
say [min] (3, 1, 4, 2);
#---------------------------------------------------------- 39 simple_program_45
say [*] ();
#---------------------------------------------------------- 40 simple_program_46
say [*] (1, 2, 3, 4);
#---------------------------------------------------------- 41 simple_program_47
say [*] 7;
#---------------------------------------------------------- 42 simple_program_48
say [-] (1, 2, 3, 4);
#---------------------------------------------------------- 43 simple_program_49
say 1, 2, 3;
#----------------------------------------------------------- 44 simple_program_5
say chr(97);
#---------------------------------------------------------- 45 simple_program_50
say "a", "b", "c";
#---------------------------------------------------------- 46 simple_program_56
 say "b" ge "a" ?? "y" !! "n"; 
#---------------------------------------------------------- 47 simple_program_57
 say "b" gt "a" ?? "y" !! "n"; 
#---------------------------------------------------------- 48 simple_program_58
 say "abc" le "abc" ?? "y" !! "n"; 
#---------------------------------------------------------- 49 simple_program_59
 say "abc" lt "abd" ?? "y" !! "n"; 
#----------------------------------------------------------- 50 simple_program_6
say chr(65);
#---------------------------------------------------------- 51 simple_program_60
 say "10" lt "9" ?? "y" !! "n"; 
#---------------------------------------------------------- 52 simple_program_61
say "hello".starts-with("xy");
#---------------------------------------------------------- 53 simple_program_62
say "hello".starts-with("he");
#---------------------------------------------------------- 54 simple_program_66
say <x y z>.elems;
#---------------------------------------------------------- 55 simple_program_67
say "ab" x 3;
#---------------------------------------------------------- 56 simple_program_69
say "-" x 5;
#----------------------------------------------------------- 57 simple_program_7
say 65.chr;
#---------------------------------------------------------- 58 simple_program_70
say 2 + 3 x 2;
#---------------------------------------------------------- 59 simple_program_72
say 7 x 2;
#---------------------------------------------------------- 60 simple_program_75
say "ab" x 3;
#----------------------------------------------------------- 61 simple_program_8
say chr(ord("Q"));
#------------------------------------------------------------- 62 test_print_str
print "world\n";
#--------------------------------------------------------------- 63 test_say_int
say 5;
#--------------------------------------------------------------- 64 test_say_str
say "hi";
#---------------------------------------------------------- 65 test_use_revision
use v6.e.PREVIEW; say "hi";
#-------------------------------------- 66 ladder__rung00_hello_print_no_newline
print "no newline";
say "end";
#-------------------------------- 67 ladder__rung02_arithmetic_negative_operands
say -7 % 2;
say -7 div 2;
#- 68 ladder__rung03_strings_a_decoded_dollar_in_a_double_quoted_string_is_literal
say "\c[DOLLAR SIGN]\c[LATIN SMALL LETTER I]";
say "a\x[24]i b";
#-------------- 69 ladder__rung07_subs_a_subset_name_is_a_term_with_its_own_name
subset EvenNum of Int where * %% 2;
say EvenNum.^name;
#---------- 70 ladder__rung13_classes_a_package_name_is_a_term_with_its_own_name
package Pk { }
say Pk.^name;
#------------ 71 ladder__rung13_classes_an_enum_name_is_a_term_with_its_own_name
enum Colors <red green blue>;
say Colors.^name;
#------------------ 72 ladder__rung13_classes_an_enum_takes_a_parenthesised_list
enum Day (:Sun(1), "Mon", "Tue");
say Mon + Tue + Sun;
#----------------------------------------------------------- 73 simple_assign_44
constant PI = 3;
say PI;
#----------------------------------------------------------- 74 simple_assign_45
constant N = 10;
say N + 5;
#---------------------------------------------------------- 75 simple_program_12
say 3 + 7/2;
say 7/2 - 2;
#---------------------------------------------------------- 76 simple_program_22
say 1;;
say 2;
#---------------------------------------------------------- 77 simple_program_38
print 4.0;
say "";
#---------------------------------------------- 78 ladder__rung16_bool_relops_so
say so(1);
say so(0);
say so(1 == 1);
#---------------------------------------------------------- 79 simple_program_10
say "before";
say 1/0;
say "after";
#---------------------------------------------------------- 80 simple_program_13
say 7/2;
say 10/4;
say -7/2;
#---------------------------------------------------------- 81 simple_program_36
say 3.5;
say 10/4;
say -7/2;
#----------------------------------------- 82 ladder__rung03_strings_hex_escapes
say "\x41\x[42,43]";
say "\x[0044]";
say "a\x[e9]b";
say "\x263A";
#---------------------------------------------------------- 83 simple_program_11
say 8/2;
say 6/3;
say 9/3;
say 10/2;
#--------------------------------- 84 ladder__rung16_bool_relops_tap_ok_argument
use Test;
plan 3;
ok 1 == 1, "relop";
ok True, "bool";
ok 1 <=> 2, "order";
#----------------------------- 85 ladder__rung17_compare_ops_is_approx_tolerance
use Test;
plan 3;
is-approx(3.14159265e0, pi, "pi to eight places");
is-approx(1e-7, 0, "near zero uses an absolute tolerance");
is-approx(3.1e0, 3.2e0, 0.2e0, "an explicit absolute tolerance");
#- 86 ladder__rung01_variables_program_and_file_name_the_source_file_in_both_modes
say $*PROGRAM.extension;
say $*PROGRAM-NAME.ends-with(".raku");
say $?FILE.ends-with(".raku");
say $?FILE.starts-with("/");
say $*PROGRAM.WHAT;
say $*PROGRAM.parent.add("data.json").basename;
say $*PROGRAM.Str eq $*PROGRAM-NAME;
#------------------------------------- 87 ladder__rung03_strings_control_escapes
print "ab\bc|\n";
say "x\ry".chars;
say "\e".ord;
say "\a".ord;
say "\f".ord;
say "\rz".ord;
say "\b".ord;
#- 88 ladder__rung13_classes_new_on_a_builtin_type_int_num_str_array_list_hash_builds_its_value
say Int.new(5);
say Int.new;
say Str.new.raku;
say Num.new(2);
say Array.new(1,2,3);
say Hash.new.raku;
say List.new(1,2);
say Rat.new(1,2);
#- 89 ladder__rung02_arithmetic_a_rational_compares_and_calculates_with_a_numeric_string
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
#-------------------------------------------------------------------- 90 hash_14
printf("%d-%d\n", 1, 2);
#--------------------------------------------------------------------- 91 hash_3
say 255.fmt("%x");
#---------------------------------------- 92 ladder__rung03_strings_multi_concat
say "a" ~ "b" ~ "c";
#--------------------------------- 93 ladder__rung09_string_methods_split_method
say "a,b,c".split(",");
#- 94 ladder__rung13_classes_the_compile_time_variable_module_names_the_enclosing_module
module M { sub pkg { $?MODULE.^name }; say pkg() }
#--------------------------------------------------------------------- 95 say_15
{ say(42); }
#--------------------------------------------------------------------- 96 say_16
{ say(1); }; say(2);
#--------------------------------------------------------------------- 97 say_17
{ say(1); say(2); }
#--------------------------------------------------------------------- 98 say_20
 say(0.Bool); 
#--------------------------------------------------------------------- 99 say_21
 say(5.Bool); 
#-------------------------------------------------------------------- 100 say_56
 say(5.abs); 
#-------------------------------------------------------------------- 101 say_59
 say(5.pred); 
#-------------------------------------------------------------------- 102 say_61
 say(5.succ); 
#-------------------------------------------------------------------- 103 say_62
 say(3 < 9); say(5 < 9); 
#-------------------------------------------------------------------- 104 say_64
say (6 > 7);
#-------------------------------------------------------------------- 105 say_65
    say('hello world');
#-------------------------------------------------------------------- 106 say_67
say (1,2,3);
#-------------------------------------------------------------------- 107 say_68
say("a","b","c");
#-------------------------------------------------------------------- 108 say_69
say(1,2,3);
#-------------------------------------------------------------------- 109 say_70
say(1,2);
#-------------------------------------------------------------------- 110 say_71
 say("hello".chars); 
#-------------------------------------------------------------------- 111 say_72
 say("hi\n".chomp); 
#-------------------------------------------------------------------- 112 say_73
 say("hello".contains("xyz")); 
#-------------------------------------------------------------------- 113 say_74
 say("hello".contains("ell")); 
#-------------------------------------------------------------------- 114 say_75
 say("abc".flip); 
#-------------------------------------------------------------------- 115 say_76
 say("hello".index("l")); 
#-------------------------------------------------------------------- 116 say_77
 say("HeLLo".lc); 
#-------------------------------------------------------------------- 117 say_78
 say("world".uc()); 
#-------------------------------------------------------------------- 118 say_80
    say(reverse('abc'));
#-------------------------------------------------------------------- 119 say_81
 say("hello".substr(2)); 
#-------------------------------------------------------------------- 120 say_82
 say("hello".substr(1, 3)); 
#-------------------------------------------------------------------- 121 say_83
 say("hello world".tc); 
#-------------------------------------------------------------------- 122 say_84
 say("  hi  ".trim); 
#-------------------------------------------------------------------- 123 say_85
 say("hello".uc); 
#-------------------------------------------------------------------- 124 say_86
 say("hello world".wordcase); 
#-------------------------------------------------------------------- 125 say_87
 say("a b c".words); 
#-------------------------------------------------------------------- 126 say_88
 say("  hi   there  ".words); 
#------------------------------------------------------------ 127 say_replace_19
say (6 == 6);
#------------------------------------------------------------ 128 say_replace_20
say (9 <= 9);
#------------------------------------------------------------ 129 say_replace_22
say (3 != 4);
#--------------------------------------------------------- 130 simple_program_14
if 7 %% 3 { say "yes" } else { say "no" }
#--------------------------------------------------------- 131 simple_program_15
if 1 + 2 %% 3 { say "yes" } else { say "no" }
#--------------------------------------------------------- 132 simple_program_16
if 6 %% 3 { say "yes" } else { say "no" }
#--------------------------------------------------------- 133 simple_program_17
unless 10 %% 3 { say "notdiv" }
#---------------------------------------------------------- 134 simple_program_2
if 1 < 2 < 9 < 4 { say "bad" } else { say "out" }
#--------------------------------------------------------- 135 simple_program_21
if 0 %% 5 { say "yes" } else { say "no" }
#---------------------------------------------------------- 136 simple_program_3
if 1 < 2 < 3 < 4 { say "yes" }
#--------------------------------------------------------- 137 simple_program_35
print(1,2,3);
#---------------------------------------------------------- 138 simple_program_4
say chr(72) ~ chr(105);
#--------------------------------------------------------- 139 simple_program_42
say [~] (1, 2, 3, 4);
#--------------------------------------------------------- 140 simple_program_51
say sprintf("%08b", 5);
#--------------------------------------------------------- 141 simple_program_52
say sprintf("%.2f", 3.14159);
#--------------------------------------------------------- 142 simple_program_53
say sprintf("%-5d|", 42);
#--------------------------------------------------------- 143 simple_program_54
say sprintf("100%%");
#--------------------------------------------------------- 144 simple_program_55
say sprintf("%03d", 7);
#--------------------------------------------------------- 145 simple_program_63
say "hello".subst("l","L");
#--------------------------------------------------------- 146 simple_program_64
say "aaa".subst("a","bb");
#--------------------------------------------------------- 147 simple_program_65
say "hello".subst("xy","Z");
#--------------------------------------------------------- 148 simple_program_68
say 1 ~ "x" x 3 ~ 2;
#--------------------------------------------------------- 149 simple_program_71
say "[" ~ ("q" x -2) ~ "]";
#--------------------------------------------------------- 150 simple_program_73
say 1 ~ "x" x 3 ~ 2;
#--------------------------------------------------------- 151 simple_program_74
say "a" ~ "b" x 2;
#--------------------------------------------------------- 152 simple_program_76
say "[" ~ ("z" x 0) ~ "]";
#------------------------------------------------------- 153 test_stmt_pfx_BEGIN
BEGIN { say("setup"); }
#------------------------------------------------------- 154 test_stmt_pfx_CHECK
CHECK { say("check"); }
#--------------------------------------------------------- 155 test_stmt_pfx_END
END { say("teardown"); }
#-------------------------------------------------------- 156 test_stmt_pfx_INIT
INIT { say("init"); }
#-------------------------------------------------------- 157 test_stmt_pfx_once
once { say("once"); }
#----------------------------------------------------- 158 test_stmt_pfx_quietly
quietly { say("quiet"); }
#------------------------------------------------------- 159 test_stmt_pfx_react
react { say("react"); }
#------------------------------------------------------------ 160 test_try_basic
try { say "safe"; }
#------ 161 ladder__rung01_variables_no_strict_declares_a_hash_that_is_only_read
no strict;
say %h<zz>.gist;
#- 162 ladder__rung01_variables_no_strict_declares_an_array_that_is_only_read_inside_a_block
no strict;
{ say @arr.elems }
#-------- 163 ladder__rung07_subs_a_sigilless_parameter_takes_a_literal_argument
sub f(\x) { x + 1 }
say f(4);
#--------------------- 164 ladder__rung07_subs_implicit_return_bare_literal_tail
sub seven() { 7; }
say seven();
#- 165 ladder__rung15_blocks_a_builtin_routine_reference_is_passed_to_a_code_parameter
sub f(&g) { g("x") }
say f(&uc);
#-------------------------------------------------------------------- 166 say_90
say("hello");
say(42);
#---------------------------------------------------------- 167 simple_assign_46
my constant GREETING = "hello";
say GREETING;
#---------------------------------------------------------- 168 simple_assign_47
my constant K = 3;
say K * K;
#---------------------------------------------------------- 169 simple_assign_48
constant $E = 2;
say $E;
#-------------------------------------------------------------------- 170 sub_26
sub t() { 42 }
say t();
#-------------------------------------------------------------------- 171 sub_30
sub greet() { "hi" }
say greet();
#----------------------------------------- 172 ladder__rung16_bool_relops_string
say ("a" eq "a");
say ("a" ne "a");
say ("a" lt "b");
#------------------------------------------------ 173 ladder__rung17_compare_ops
say (3 <=> 1);
say (1 <=> 3);
say (2 <=> 2);
#-------------------------------------------- 174 ladder__rung17_compare_ops_cmp
say (10 cmp 9);
say (1 cmp 2);
say ("b" cmp "b");
#-------------------------------------------- 175 ladder__rung17_compare_ops_leg
say ("abc" leg "abd");
say ("b" leg "a");
say ("x" leg "x");
#---------------------------------------- 176 ladder__rung17_compare_ops_numeric
say ((1 <=> 3) == -1);
say ((2 <=> 2) == 0);
say ((5 <=> 2) == 1);
#---------------------------------------------------------- 177 simple_assign_49
constant A = "a";
constant B = "b";
say A ~ B;
#--------------------------------- 178 ladder__rung02_arithmetic_e_and_tau_terms
say e;
say tau;
say (e * 2).round;
say tau / 2 == pi;
#---------------------------------------- 179 ladder__rung12_exceptions_no_catch
try {
    die "swallowed";
}
say "after";
#------------------------------------------------ 180 ladder__rung16_bool_relops
say (1 == 1);
say (1 < 2);
say (2 <= 1);
say (1 != 1);
#-------------------------------------------------------------------- 181 say_63
say 4.0;
say (7/2)*2;
say 2.5+1.5;
say -3.0;
#----------------------------------------- 182 ladder__rung11_junctions_operator
if 1|2|3 == 2 {
    say "yes";
} else {
    say "no";
}
#--------------------- 183 ladder__rung07_subs_lowercase_main_is_an_ordinary_sub
sub main() {
    say "in main";
}
say "top";
main();
say "end";
#------------------------------------------------- 184 ladder__rung12_exceptions
try {
    die "boom";
    CATCH {
        default { say "caught"; }
    }
}
#------------------------------------- 185 ladder__rung12_exceptions_die_message
try {
    die "custom message";
    CATCH {
        default { say .message; }
    }
}
#------------------------- 186 ladder__rung14_roles_does_ok_asks_the_does_method
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
#- 187 ladder__rung03_strings_trans_takes_several_pairs_tr_style_strings_with_ranges_and_the_c_d_s_adverbs
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
#- 188 ladder__rung02_arithmetic_rat_exact_with_big_numerators_and_the_64_bit_denominator_limit
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
#------------------------------------------------------------------ 189 array_30
my @a; say @a.elems;
#------------------------------------------------------------------ 190 array_31
my @a; say "ok";
#------------------------------------------------------------------ 191 array_39
my @a = (1,2,3); say @a;
#------------------------------------------------------------------ 192 array_51
my @a = <a b c>; say @a.elems;
#------------------------------------------------------------------ 193 array_52
my @a = <a b c>; say @a[1];
#------------------------------------------------------------------ 194 array_53
my @a = "ab" xx 3; say @a.elems;
#------------------------------------------------------------------ 195 array_54
my @a = "x" xx 3; say @a;
#------------------------------------------------------------------ 196 array_55
my @a = "x" xx 3; say @a;
#------------------------------------------------------------------ 197 array_57
my @d = "z" xx 0; say @d.elems;
#------------------------------------------------------------------ 198 array_58
my @b = 0 xx 5; say @b;
#--------------------------------------------------------------------- 199 for_1
for <a b c> -> $c { print $c }
#------------------------------------------------------------------- 200 given_3
say $_ given 42;
#------------------------------------------------------------------- 201 hash_10
my %h = "k1" => 5, "k2" => 6; say %h<k2>;
#------------------------------------------------------------------- 202 hash_11
my %h; say %h.elems;
#------------------------------------------------------------------- 203 hash_12
my %h; %h<x> = 1; say %h<x>;
#------------------------------------------------------------------- 204 hash_16
say sprintf("%b", 10);
#------------------------------------------------------------------- 205 hash_17
say sprintf("%x %X", 255, 255);
#------------------------------------------------------------------- 206 hash_18
say sprintf("%s=%d", "x", 5);
#-------------------------------------------------------------------- 207 hash_6
my %h = a => 1, b => 2, c => 3; say %h.elems;
#-------------------------------------------------------------------- 208 hash_7
my %h = a => 1, b => 2; say %h<a>;
#-------------------------------------------------------------------- 209 hash_8
my %h = (x => 10, y => 20); say %h<y>;
#-------------------------------------------------------------------- 210 hash_9
my %h = a => 1, b => 2; say %h<b>;
#------ 211 ladder__rung01_variables_is_default_gives_a_scalar_its_initial_value
my $x is default(5); say $x;
#-- 212 ladder__rung15_blocks_a_builtin_routine_reference_is_the_argument_of_map
say <a b C>.map(&uc).join(",");
#------------ 213 ladder__rung19_block_a_whatevercode_argument_to_the_map_listop
say map(* x 2, <a b>).join(",");
#--------------------------------------------- 214 ladder__rung19_block_methcall
say ("a","b").map({ $^a.uc });
#------------------------------------- 215 ladder__rung19_block_methcall_chained
say (1,2).map({ $^a.Str.chars });
#---------------------------------------- 216 ladder__rung19_block_methcall_grep
say ("a","b").grep({ $^a.uc eq "A" });
#------------------------------------------- 217 ladder__rung20_paren_group_grep
say (1,2,3).grep({ ($^a) > 1 });
#------------------------------------ 218 ladder__rung20_paren_group_placeholder
say (1,2).map({ ($^a).Str });
#----------------------------------------------------------------- 219 say_die_1
 say("before"); die("boom"); say("after"); 
#--------------------------------------------------------- 220 simple_assign_100
my $i = 7; say $i++;
#--------------------------------------------------------- 221 simple_assign_102
my $i = 5; my $j = --$i; say $j;
#--------------------------------------------------------- 222 simple_assign_105
my $i = 5; my $j = ++$i; say $j;
#--------------------------------------------------------- 223 simple_assign_106
my $i = 5; my $j = ++$i; say $i;
#--------------------------------------------------------- 224 simple_assign_110
my $x = 5; say "x is ", $x;
#--------------------------------------------------------- 225 simple_assign_111
my $x = 6; my $y = 7; say $x * $y;
#--------------------------------------------------------- 226 simple_assign_114
my $a = "zebra"; my $b = "apple"; say $a gt $b ?? "y" !! "n";
#--------------------------------------------------------- 227 simple_assign_115
my $x = 0 ?? 5 !! 9; say $x;
#--------------------------------------------------------- 228 simple_assign_116
my $g = "C"; say $g eq "A" ?? 1 !! $g eq "B" ?? 2 !! 3;
#--------------------------------------------------------- 229 simple_assign_117
my $n = 10; say $n > 3 ?? "big" !! "small";
#--------------------------------------------------------- 230 simple_assign_118
my $x = 1 ?? 5 !! 9; say $x;
#--------------------------------------------------------- 231 simple_assign_124
my $s; $s = "ab" x 3; say $s;
#--------------------------------------------------------- 232 simple_assign_125
my $s = "ab" x 3; say $s;
#--------------------------------------------------------- 233 simple_assign_126
my $n = 3; my $s = "ab" x $n; say $s;
#--------------------------------------------------------- 234 simple_assign_128
my $s = "yo"; my $n = 4; say $s x $n;
#---------------------------------------------------------- 235 simple_assign_26
 my $b = { say 9; }; $b(); $b(); 
#---------------------------------------------------------- 236 simple_assign_28
 my $b = { say 5; }; $b(); 
#---------------------------------------------------------- 237 simple_assign_29
 my $a = { say 1; }; my $b = { say 2; }; $b(); $a(); 
#---------------------------------------------------------- 238 simple_assign_67
my $x = 7; say $x.fmt("%03d");
#---------------------------------------------------------- 239 simple_assign_68
my $s = "hi"; say $s.fmt("[%5s]");
#---------------------------------------------------------- 240 simple_assign_69
my $i = 3; $i++; $i++; say $i;
#---------------------------------------------------------- 241 simple_assign_89
my $i = 5; say $i--;
#---------------------------------------------------------- 242 simple_assign_98
my $i = 5; my $j = $i++; say $j;
#---------------------------------------------------------- 243 simple_assign_99
my $i = 5; my $j = $i++; say $i;
#--------------------------------------------------------------- 244 split_say_1
 say("a,b,c".split(",")); 
#----------------------------------------------------------- 245 test_colon_call
my $x = "hi"; say $x.substr: 1;
#---------------------------------------------------------- 246 test_kebab_ident
my $s-address = 5; say $s-address;
#------------------------------------------------------------- 247 test_our_decl
our $a = 1; say $a;
#------------------------------------------------------- 248 test_qualified_term
my $x = IO::Spec::Unix; say $x;
#------------------------------------------------------------------ 249 array_12
my @a = (10,20,30);
say @a[*].elems;
#------------------------------------------------------------------ 250 array_13
my @e = ();
say @e[*].elems;
#------------------------------------------------------------------ 251 array_16
my @a = (10,20,30);
say @a[*].sum;
#------------------------------------------------------------------ 252 array_17
my @a = 3, 1, 2;
say @a.first;
#------------------------------------------------------------------ 253 array_18
my @a = 5, 6, 7;
say @a.keys.elems;
#------------------------------------------------------------------ 254 array_19
my @a = 3, 1, 2;
say @a.max;
#------------------------------------------------------------------ 255 array_20
my @a = 3, 1, 2;
say @a.min;
#------------------------------------------------------------------ 256 array_21
my @s = "cherry", "apple", "banana";
say @s.min;
#------------------------------------------------------------------ 257 array_24
my @a = 3, 1, 2;
say @a.reverse;
#------------------------------------------------------------------ 258 array_25
my @a = 3, 1, 2;
say @a.sort.first;
#------------------------------------------------------------------ 259 array_26
my @a = 3, 1, 2;
say @a.sort;
#------------------------------------------------------------------ 260 array_27
my @s = "banana", "apple", "cherry";
say @s.sort;
#------------------------------------------------------------------ 261 array_28
my @b = 3, 1, 2, 1;
say @b.unique;
#------------------------------------------------------------------ 262 array_29
my @n = 10, 20, 30;
say @n.values.sum;
#------------------------------------------------------------------ 263 array_34
my @a = 10,20,30,40,50;
say @a[0,2].elems;
#------------------------------------------------------------------ 264 array_35
my @a = 1, 2, 3, 4;
say [+] @a;
#------------------------------------------------------------------ 265 array_36
my @m = 1.5, 2.5, 2.5;
say [+] @m;
#------------------------------------------------------------------ 266 array_38
my @a = 1,2,3,4,5;
say @a[2];
#------------------------------------------------------------------ 267 array_41
my @a = 1,2,3,;
say @a.elems;
#------------------------------------------------------------------ 268 array_42
my @a = 10,20,30,40;
say @a[*-(1+2)];
#------------------------------------------------------------------ 269 array_43
my @a = 10,20,30,40;
say @a[*-4];
#------------------------------------------------------------------ 270 array_44
my @a = 10,20,30;
say @a[*-1] + @a[*-2];
#------------------------------------------------------------------ 271 array_46
my @a = 10,20,30,40;
say @a[*-1];
#------------------------------------------------------------------ 272 array_47
my @a = 10,20,30,40;
say @a[1];
#------------------------------------------------------------------ 273 array_48
my @a = 10,20,30,40;
say @a[*-2];
#------------------------------------------------------------------ 274 array_49
my @s = "x","y","z";
say @s[*-1];
#------------------------------------------------------------ 275 class_method_1
class C { method go() { 42 } }
say C.new.go();
#--------------------------------------------------------------- 276 class_say_1
class Cat { }
 say(Cat.^name); 
#--------------------------------------------------------------- 277 class_say_2
class Cat { }
 say(Cat.WHAT()); 
#------------------------------------------------------------------- 278 hash_13
my %h = (y => 9, x => 4);
say %h{"x"};
#-------------------------------------------------------------------- 279 hash_4
my %h = one => 10, two => 20, three => 30;
say %h.keys.elems;
#-------------------------------------------------------------------- 280 hash_5
my %h = a => 1, b => 2, c => 3;
say %h.kv.elems;
#--- 281 ladder__rung01_variables_a_state_array_keeps_its_elements_between_calls
sub a { state @l; @l.push(1); @l.elems }
say a(); say a();
#- 282 ladder__rung01_variables_a_state_declaration_may_initialize_from_another_state_declaration
sub f { state $a = state $b = 42; $a + $b }
say f();
#--- 283 ladder__rung01_variables_a_state_variable_keeps_its_value_between_calls
sub c { state $c = 10; $c += 5; $c }
say c(); say c();
#--------------------------------- 284 ladder__rung01_variables_type_constrained
my Int $x = 5;
say $x;
#------ 285 ladder__rung02_arithmetic_the_atomic_postfix_increments_an_atomicint
my atomicint $i = 0; $i⚛++; $i⚛++;
say $i;
#-------------------------------------- 286 ladder__rung04_arrays_negative_index
my @a = (1, 2, 3);
say @a[*-1];
#--------------------------------------- 287 ladder__rung04_arrays_out_of_bounds
my @a = (1, 2, 3);
say @a[10].raku;
#----------------------------------------- 288 ladder__rung05_hashes_missing_key
my %h = (a => 1);
say %h{'z'}.raku;
#-------------------------------------------- 289 ladder__rung06_control_ternary
my $x = 5;
say $x > 3 ?? "big" !! "small";
#---------------------------------------------- 290 ladder__rung06_control_until
my $i = 0;
until ($i >= 3) { say $i; $i = $i + 1; }
#- 291 ladder__rung07_subs_a_type_capture_in_a_signature_names_the_argument_type
sub tname(::T $v) { T.^name }
say tname(42);
#--------------------------------------- 292 ladder__rung07_subs_implicit_return
sub double($x) { $x * 2 }
say double(5);
#-------------------- 293 ladder__rung07_subs_implicit_return_trailing_semicolon
sub double($x) { $x * 2; }
say double(5);
#- 294 ladder__rung08_for_last_from_an_inner_until_leaves_a_labelled_until_in_parentheses
my $d = 0; (L2: until False { until False { $d++; last L2 } });
say $d;
#- 295 ladder__rung13_classes_the_compile_time_variable_class_names_the_enclosing_class
class Foo { method m { $?CLASS.^name } }
say Foo.m;
#----------------------------------------------------- 296 ladder__rung15_blocks
my $b = { 1 };
say $b();
#------------ 297 ladder__rung15_blocks_a_builtin_routine_reference_is_a_closure
my $as = &lc;
say $as("ABC");
#----------------------------------------------- 298 ladder__rung15_blocks_first
my @n = (1, 2, 3, 4);
say @n.first({ $^a == 4 });
#---------------------------------------- 299 ladder__rung15_blocks_placeholders
my $add = { $^a + $^b };
say $add(2, 3);
#---------------------------------------------- 300 ladder__rung15_blocks_pointy
my $p = -> $x { $x * 2 };
say $p(5);
#----------------------------------------------- 301 ladder__rung15_blocks_topic
my $b = { $_ * 2 };
say $b(5);
#----------------------------------- 302 ladder__rung18_two_arg_block_reduce_add
my @n = (1,2,3);
say @n.reduce({ $^a + $^b });
#----------------------------------- 303 ladder__rung18_two_arg_block_reduce_mul
my @n = (1,2,3,4);
say @n.reduce({ $^a * $^b });
#---------------------------- 304 ladder__rung19_block_a_sub_reads_its_own_topic
sub topic { $_.gist }
say topic();
#------------------------------------ 305 ladder__rung19_block_methcall_sub_body
sub f($x) { $x.uc }
say f("ab");
#------------------------------------------------ 306 ladder__rung20_paren_group
sub f($a) { ($a).Str }
say f(3);
#------------------------------------------- 307 ladder__rung20_paren_group_stmt
my $x = 5;
($x).say;
#------------------------------------------------------------------- 308 multi_3
multi bar($x) { $x + 1 }
say bar(7);
#-------------------------------------------------------------------- 309 say_29
grammar G { rule TOP { "a" | "b" } }
 say(G.parse("a")); 
#-------------------------------------------------------------------- 310 say_30
grammar G { rule TOP { "a" | "b" } }
 say(G.parse("b")); 
#-------------------------------------------------------------------- 311 say_31
grammar G { rule TOP { <digit> | <alpha> } }
 say(G.parse("x")); 
#-------------------------------------------------------------------- 312 say_32
grammar G { rule TOP { <digit> | <alpha> } }
 say(G.parse("5")); 
#-------------------------------------------------------------------- 313 say_33
grammar G { rule TOP { <alnum> } }
 say(G.parse("7")); 
#-------------------------------------------------------------------- 314 say_34
grammar G { rule TOP { <alpha> } }
 say(G.parse("a")); 
#-------------------------------------------------------------------- 315 say_35
grammar G { rule TOP { <digit> } }
 say(G.parse("5")); 
#-------------------------------------------------------------------- 316 say_36
grammar G { rule TOP { <lower> } }
 say(G.parse("z")); 
#-------------------------------------------------------------------- 317 say_37
grammar G { rule TOP { <upper> } }
 say(G.parse("A")); 
#-------------------------------------------------------------------- 318 say_38
grammar G { rule TOP { <xdigit> } }
 say(G.parse("f")); 
#-------------------------------------------------------------------- 319 say_39
grammar G { rule TOP { "abc" } }
 say(G.parse("abc")); 
#-------------------------------------------------------------------- 320 say_40
grammar G { rule TOP { "x" } }
 say(G.parse("x")); 
#-------------------------------------------------------------------- 321 say_41
grammar G { rule TOP { "a b" } }
 say(G.parse("a b")); 
#-------------------------------------------------------------------- 322 say_42
grammar G { rule TOP { <digit> "z" } }
 say(G.parse("9z")); 
#-------------------------------------------------------------------- 323 say_43
grammar G { rule TOP { <digit> <alpha> } }
 say(G.parse("5x")); 
#-------------------------------------------------------------------- 324 say_44
grammar G { rule TOP { "a" <digit> } }
 say(G.parse("a1")); 
#-------------------------------------------------------------------- 325 say_45
grammar G { rule TOP { <digit> <lower> <upper> } }
 say(G.parse("3aB")); 
#-------------------------------------------------------------------- 326 say_46
grammar G { rule TOP { <alpha>+ } }
 say(G.parse("abc")); 
#-------------------------------------------------------------------- 327 say_47
grammar G { rule TOP { <digit>+ } }
 say(G.parse("123")); 
#-------------------------------------------------------------------- 328 say_48
grammar G { rule TOP { <digit> <space> <digit> } }
 say(G.parse("1 2")); 
#-------------------------------------------------------------------- 329 say_49
grammar G { rule TOP { <upper> <lower>+ } }
 say(G.parse("Hello")); 
#-------------------------------------------------------------------- 330 say_50
grammar G { rule TOP { "hello" } }
 say(G.parse("hello")); 
#----------------------------------------------------------------- 331 say_try_1
    try { say('ok'); }; CATCH { say('never'); };
    say('after');
#--------------------------------------------------------- 332 simple_assign_101
my $b = 5;
say $b ** 2;
#--------------------------------------------------------- 333 simple_assign_112
my $x = 10; my $y = 3;
say $x % $y;
#--------------------------------------------------------- 334 simple_assign_113
my $x = 10; my $y = 3;
say $x * $y;
#--------------------------------------------------------- 335 simple_assign_123
my $d = 42;
{ say "def" with $d }
#---------------------------------------------------------- 336 simple_assign_38
my $n = 66;
say chr($n);
#---------------------------------------------------------- 337 simple_assign_51
my $x = 0;
say $x // "oops";
#---------------------------------------------------------- 338 simple_assign_54
my ($a, $b) = (10, 20);
say $a + $b;
#---------------------------------------------------------- 339 simple_assign_55
my ($x, $y) = "foo", "bar";
say $y;
#---------------------------------------------------------- 340 simple_assign_56
my ($a, $b, $c) = 1, 2, 3;
say $c;
#---------------------------------------------------------- 341 simple_assign_70
my $x = (42,);
say $x;
#---------------------------------------------------------- 342 simple_assign_71
my $x = (1,2,3);
say $x;
#---------------------------------------------------------- 343 simple_assign_73
my $s = "hello";
say $s.chars;
#---------------------------------------------------------- 344 simple_assign_74
my $x = 5;
say "yes" with $x;
#---------------------------------------------------------- 345 simple_assign_76
my $x = 42;
say $_ with $x;
#---------------------------------------------------------- 346 simple_assign_77
my $x = 0;
say "z" with $x;
#---------------------------------------------------------- 347 simple_assign_85
my $i = 0;
until $i >= 3 { say $i; $i = $i + 1 }
#---------------------------------------------------------- 348 simple_assign_87
my $c = "z";
say $c.ord;
#--------------------------------------------------------- 349 simple_program_26
my $y;
say "gone" without $y;
#---------------------------------------------------------- 350 simple_program_9
my $x;
say $x // "default";
#-------------------------------------------------------------------- 351 sub_12
sub f(:$x) { say $x.defined; }
f();
#-------------------------------------------------------------------- 352 sub_13
sub f(:$x = 5) { say $x; }
f();
#-------------------------------------------------------------------- 353 sub_15
sub f(:$q, :$x) { say $x; }
f(q => 1, x => 4);
#-------------------------------------------------------------------- 354 sub_27
sub sq($n) { $n * $n }
say sq(4) + 4;
#-------------------------------------------------------------------- 355 sub_29
sub add($a,$b) { $a + $b }
say add(3,4);
#-------------------------------------------------------------------- 356 sub_33
sub announce($x) { say "got $x" }
announce(42);
#-------------------------------------------------------------------- 357 sub_34
sub sq($n) { $n * $n }
say sq(5);
#-------------------------------------------------------------- 358 sub_array_12
sub f(*@r) { say @r.elems; }
f();
#-------------------------------------------------------------- 359 sub_array_13
sub f(*@r) { say @r.elems; }
f(10,20,30);
#-------------------------------------------------------------- 360 sub_array_17
sub f(*@r) { say @r; }
f("x","y","z");
#-------------------------------------------------------------- 361 sub_array_18
sub f(*@r) { say @r[2]; }
f(1,2,3);
#--------------------------------------------------------------- 362 sub_array_7
sub f(**@r) { say @r.elems; }
f(10,20,30);
#---------------------------------------------------------------- 363 sub_hash_2
sub collides(*%h) { say %h{'h'}; }
collides(h => 42);
#---------------------------------------------------------------- 364 sub_hash_5
sub only(*%h) { say %h.elems; }
only(a => 1, b => 2, c => 3);
#---------------------------------------------------------------- 365 sub_hash_6
sub only(*%h) { say %h.elems; }
only();
#---------------------------------------------------------------- 366 sub_hash_8
sub f(*%h) { say %h{'z'}; }
f(z => 4, w => 5);
#--------------------------------------------------- 367 test_interp_leading_var
my $x = "world";
say "$x there";
#------------------------------------------------------ 368 test_interp_only_var
my $x = "hi";
say "$x";
#-------------------------------------------------------- 369 test_interp_simple
my $name = "world";
say "hello $name";
#-------------------------------------------------- 370 test_interp_trailing_lit
my $a = "foo";
say "val=$a!";
#---------------------------------------------------------- 371 test_print_basic
my $x = "hello";
print "$x\n";
#------------------------------------------------------------------ 372 array_14
my @n = (1,2,3,4);
say [*] @n;
say [+] @n;
#------------------------------------------------------------------ 373 array_15
my @a = (10,20,30);
say @a[*-1];
say @a[*-2];
#------------------------------------------------------------------ 374 array_22
my @b = 1,2,3;
@b = (1+2);
say @b.elems;
#------------------------------------------------------------------ 375 array_23
my @a = 1,2,3;
@a = 9;
say @a.elems;
#------------------------------------------------------------------ 376 array_33
my @a = (10,20,30);
say @a[*-1];
say @a[*-2];
#----------------------------- 377 ladder__rung01_variables_multiple_declaration
my ($a, $b) = (1, 2);
say $a;
say $b;
#----------------------------------- 378 ladder__rung01_variables_no_initializer
my $x;
$x = 5;
say $x;
#----------------------------------------------------- 379 ladder__rung05_hashes
my %h = a => 1, b => 2;
say %h{'a'};
say %h{'b'};
#----------------------------------------- 380 ladder__rung05_hashes_keys_values
my %h = (a => 1, b => 2);
say %h.keys.sort;
say %h.values.sort;
#--------------------------------------------- 381 ladder__rung09_string_methods
my $s = "Raku";
say $s.uc;
say $s.chars;
#------------------------------------- 382 ladder__rung10_given_when_basic_match
given 5 {
    when 5 { say "matched"; }
}
#- 383 ladder__rung14_roles_the_compile_time_variable_role_names_the_enclosing_role
role R { method n { $?ROLE.^name } }
class K does R { }
say K.n;
#----------------------------------- 384 ladder__rung16_bool_relops_interpolated
my $b = 3 > 1;
my $c = 3 < 1;
say "b=$b c=$c";
#--------------------------------------------------------- 385 simple_assign_103
my $n = 5;
--$n;
say $n;
#--------------------------------------------------------- 386 simple_assign_104
my $n = 5;
++$n;
say $n;
#---------------------------------------------------------- 387 simple_assign_25
my $s = 1;
$s = 2;
say $s;
#---------------------------------------------------------- 388 simple_assign_39
my $x = 5;
$x += 3;
say $x;
#---------------------------------------------------------- 389 simple_assign_41
my $x = 24;
$x /= 6;
say $x;
#---------------------------------------------------------- 390 simple_assign_42
my $x = 6;
$x *= 4;
say $x;
#---------------------------------------------------------- 391 simple_assign_43
my $x = 7;
$x -= 4;
say $x;
#---------------------------------------------------------- 392 simple_assign_52
my ($a, $b) = 1, 2, 3;
say $a;
say $b;
#---------------------------------------------------------- 393 simple_assign_53
my ($a, $b, $c) = 1, 2;
say $a;
say $b;
#---------------------------------------------------------- 394 simple_assign_57
my ($a, $b) = 3, 7;
say $a;
say $b;
#---------------------------------------------------------- 395 simple_assign_58
my $h = 7/2;
say $h*2 == 7 ?? 7 !! 0;
say $h*2;
#---------------------------------------------------------- 396 simple_assign_78
my $x = 3;
say "nope" without $x;
say "end";
#---------------------------------------------------------- 397 simple_assign_97
my $i = 0;
$i = $i + 1 until $i >= 3;
say $i;
#--------------------------------------------------------- 398 simple_program_25
my $y;
say "nope" with $y;
say "end";
#----------------------------------------------------- 399 test_interp_multi_var
my $a = "foo";
my $b = "bar";
say "start $a middle $b end";
#----------------------------------------------------------- 400 test_print_expr
my $a = 1;
my $b = 2;
print $a + $b;
#------------------------------------------------------------------ 401 array_32
my @a = (10,20,30);
say @a[0];
say @a[2];
say @a[1] + 5;
#----------------------------------------------------------- 402 array_replace_3
my @a = (1,2,3);
say "A";
say @a[99];
say "B";
#----------------------------------------------------------- 403 array_replace_4
my @a = (10,20,30);
say "before";
say @a[3];
say "after";
#------------------------------------------------------------ 404 junction_say_6
    say(any(1, 2, 3));
    say(all('a', 'b'));
    say(none(10, 20));
    say(one('x', 'y'));
#-------------------------------------------------- 405 ladder__rung01_variables
my $name = "Raku";
my $n = 42;
say $name;
say $n;
#----------------------------------------------------- 406 ladder__rung04_arrays
my @arr = (1, 2, 3);
say @arr[0];
say @arr[2];
say @arr.elems;
#--------------------------- 407 ladder__rung04_arrays_flatten_past_128_elements
my @a = 1 xx 200;
my @l = @a.Slip, 5;
say @l.elems;
say @l[199] + @l[200];
#--------------------------------------- 408 ladder__rung05_hashes_exists_delete
my %h = (a => 1);
say %h{'a'}:exists;
%h{'a'}:delete;
say %h{'a'}:exists;
#------------------------------------ 409 ladder__rung10_given_when_default_case
given 99 {
    when 1 { say "one"; }
    default { say "other"; }
}
#-------------------------- 410 ladder__rung10_given_when_no_match_falls_through
given 99 {
    when 1 { say "one"; }
}
say "after";
#--------------------------- 411 ladder__rung17_compare_ops_in_a_boolean_context
say ((1 <=> 2) ?? "T" !! "F");
say ((2 <=> 2) ?? "T" !! "F");
say (("a" cmp "b") ?? "T" !! "F");
if (3 <=> 3) { say "y" } else { say "n" }
#--------------------------------------- 412 ladder__rung17_compare_ops_variable
my $o = (5 <=> 2);
say $o;
my $p = ("a" leg "b");
say $p;
#--------------------------------------------------------- 413 simple_assign_109
my $n = 7;
repeat {
    say $n;
} until $n > 0;
#---------------------------------------------------------- 414 simple_assign_50
my $a = "ok";
my $b;
say $a // "nope";
say $b // "fallback";
#---------------------------------------------------------- 415 simple_assign_59
my $a = 5; my $b = 2;
say $a/$b;
my $c = 8; my $d = 2;
say $c/$d;
#---------------------------------------------------------- 416 simple_assign_75
my $x = 7;
my $r = 0;
$r = $_ with $x;
say $r;
#---------------------------------------------------------- 417 simple_assign_79
my $y;
my $r = 0;
$r = 9 without $y;
say $r;
#---------------------------------------------------------- 418 simple_assign_86
my ($a, $b, $c) = 3, 7;
say $a;
say $b;
say "end";
#-------------------------------------------- 419 ladder__rung04_arrays_push_pop
my @a = (1, 2);
@a.push(3);
say @a;
@a.pop;
say @a;
#----------------------------------- 420 ladder__rung10_given_when_multiple_when
given 2 {
    when 1 { say "one"; }
    when 2 { say "two"; }
    when 3 { say "three"; }
}
#-------------------------------------------------- 421 ladder__rung11_junctions
if any(1,2,3) == 2 {
    say "yes";
} else {
    say "no";
}
#---------------------------------------------- 422 ladder__rung11_junctions_all
if all(1,2,3) > 0 {
    say "yes";
} else {
    say "no";
}
#--------------------------------------------- 423 ladder__rung11_junctions_none
if none(1,2,3) == 5 {
    say "yes";
} else {
    say "no";
}
#---------------------------------------------- 424 ladder__rung11_junctions_one
if one(1,2,3) == 2 {
    say "yes";
} else {
    say "no";
}
#--------------------------------------------------------- 425 simple_assign_108
my $j = 10;
repeat {
    $j = $j + 1;
    say $j;
} until $j >= 12;
#---------------------------------------------------------- 426 simple_assign_90
my $i = 3;
$i--;
say $i;
$i--;
say $i;
#---------------------------------------------------------- 427 simple_assign_94
my $i = 0;
$i++;
say $i;
$i++;
say $i;
#------------------------------------------------- 428 ladder__rung02_arithmetic
my $a = 7;
my $b = 3;
say $a + $b;
say $a - $b;
say $a * $b;
say $a % $b;
#------------------------------------ 429 ladder__rung02_int_promotes_past_int64
my $m = -9223372036854775807 - 1;
say -$m;
say $m * -1;
say $m - 1;
my $p = 9223372036854775807;
say $p + 1;
say $p * 2;
#- 430 ladder__rung03_strings_like_and_unlike_match_the_string_an_instance_with_its_own_str_gives
use Test;
plan 5;
class Foo { method Str { 'bar' } }
like Foo.new, /bar/, 'an instance with its own Str is matched through it';
unlike Foo.new, /baz/, 'and unlike reads the same string';
like 42, /42/, 'an Int';
unlike 42, /43/, 'an Int, unlike';
like 3.5, /^ 3 '.' 5 $/, 'a Rat';
#-------------- 431 ladder__rung07_subs_a_named_placeholder_is_a_named_parameter
sub greet { say "hello " ~ $:name }
greet(:name<world>);
sub diff { say $:big - $:small }
diff(:small(2), :big(10));
sub scaled { say $^x * $:by }
scaled(4, :by(3));
use isms <Perl5>;
sub cap { say $:F + 1 }
cap(:F(41));
#------------------------------------------------------------------- 432 token_1
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
#----------------------------------------------------------------- 433 sub_say_4
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
#------------------------------------------------------------- 434 token_regex_1
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
#- 435 ladder__rung09_regex_the_subst_method_takes_x_with_a_count_a_range_or_a_star_and_nth
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
#- 436 ladder__rung02_arithmetic_rat_literals_division_stringification_and_methods
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
#------------------------------------------------------------------ 437 array_40
my $x = 6; my @a = (1,2,3); say $x * @a.elems;
#------------------------------------------------------------------ 438 array_56
my $n = 4; my @c = "yo" xx $n; say @c.elems;
#-------------------------------------------------------------- 439 array_say_10
 my @a = "hello".comb; say(elems(@a)); 
#-------------------------------------------------------------- 440 array_say_11
 my @a = "a\nb\nc".lines; say(elems(@a)); 
#-------------------------------------------------------------- 441 array_say_12
 my @a = "a b c".words; say(elems(@a)); 
#--------------------------------------------------------------- 442 array_say_7
 my @a = (10, 20, 30); say(@a.elems); 
#--------------------------------------------------------------- 443 array_say_8
 my @a = (1, 2, 3); say(@a.join); 
#--------------------------------------------------------------------- 444 for_2
for ^5 -> $i { say $i }
#--------------------------------------------------------------------- 445 for_3
for ^3 { say $_ }
#-------------------------------------------------------------- 446 hash_array_1
my %h; %h<k> = 5; my @w = <a b c>; say %h<k>;
#---- 447 ladder__rung08_for_a_pair_pattern_pointy_signature_binds_key_and_value
for (1 => 'one', 2 => 'two') -> (:key($n), :value($w)) { say "$n:$w" }
#----------- 448 ladder__rung19_block_a_whatevercode_argument_to_the_grep_listop
say grep(* > 1, 1..3).join(",");
#--------------------------------------- 449 ladder__rung19_block_methcall_topic
say ("foo","bar").map({ $_.substr(1,1) });
#---------------------------------------- 450 ladder__rung20_paren_group_chained
say (1,2).map({ ($^a).Str }).join(",");
#------------------------------------------ 451 ladder__rung20_paren_group_topic
say (1,2).map({ ($_).Str });
#-------------------------------------------------------------------- 452 loop_1
my $s = 0; loop (my $i = 1; $i <= 4; $i++) { $s = $s + $i; }; say $s;
#------------------------------------------------------------ 453 loop_replace_1
loop (my $i = 0; $i < 3; $i++) { say $i; }
#------------------------------------------------------------ 454 loop_replace_2
loop (my $i = 3; $i > 0; $i--) { say $i; }
#-------------------------------------------------------------------- 455 say_14
 my $x = 5; { say($x); } 
#-------------------------------------------------------------------- 456 say_18
my $b = { say(7); }; $b();
#-------------------------------------------------------------------- 457 say_22
 my $s = ""; say($s.Bool); 
#-------------------------------------------------------------------- 458 say_24
 my $s = "42"; say($s.Int + 0); 
#-------------------------------------------------------------------- 459 say_25
 my $n = 7; say($n.Str); 
#-------------------------------------------------------------------- 460 say_26
 my $x = 5; my $u; say($x.defined); say($u.defined); 
#-------------------------------------------------------------------- 461 say_27
 my $s = "hello"; $s .= uc; say($s); 
#-------------------------------------------------------------------- 462 say_28
 my $s = "ABC"; $s .= lc(); say($s); 
#-------------------------------------------------------------------- 463 say_55
 my $n = 3 - 8; say($n.abs); 
#-------------------------------------------------------------------- 464 say_57
 my $x = 3.2; say($x.ceiling); 
#-------------------------------------------------------------------- 465 say_58
 my $x = 3.7; say($x.floor); 
#-------------------------------------------------------------------- 466 say_60
 my $x = 3.5; say($x.round); 
#-------------------------------------------------------------------- 467 say_79
 my $s = "abc"; say($s.uc); 
#--------------------------------------------------------- 468 simple_assign_127
my $s = "ab" x 0; say "[" ~ $s ~ "]";
#---------------------------------------------------------- 469 simple_assign_27
 my $b = { return 3; }; say $b() + $b(); 
#--------------------------------------------------------------------- 470 sub_6
 my $s = sub { say 8; }; $s(); 
#--------------------------------------------------------------- 471 test_seq_op
my @list = (1 ... 10); say @list;
#------------------------------------------------------------------ 472 array_37
my @w = "a", "b", "c";
say [~] @w;
#------------------------------------------------------------------ 473 array_45
my @a = 10,20,30;
if @a[*-1] > 25 { say "big" }
#--------------------------------------------------------------- 474 array_say_9
    my @a = (1, 2, 3);
    say(@a);
#------------------------------------------------------------ 475 class_method_2
class C { method go() { return 42 } }
say C.new.go;
#------------------------------------------------------------------- 476 hash_15
my $x = 10; my %h = (a => 5);
say $x * %h{'a'};
#-------------------------------------------------------------- 477 join_array_1
my @a = (10,20,30);
say @a[*].join(",");
#------------------------------------------------------------- 478 join_array_10
my @s = "a","b","c","d";
say @s[3,1].join("-");
#------------------------------------------------------------- 479 join_array_11
my @a = 10,20,30,40,50;
say @a[0,2,4].join(",");
#------------------------------------------------------------- 480 join_array_12
my @a = 10,20,30,40,50;
say @a[1,3].join(",");
#------------------------------------------------------------- 481 join_array_14
my @a = 1,2,3,;
say @a.join(",");
#------------------------------------------------------------- 482 join_array_15
my @b = (4,5,6,);
say @b.join(",");
#------------------------------------------------------------- 483 join_array_17
my @c = 1,2,3;
say @c[0,2,].join(",");
#-------------------------------------------------------------- 484 join_array_2
my @a = (7);
say @a[*].join(",");
#-------------------------------------------------------------- 485 join_array_3
my @a = "p", "q", "r";
say @a.keys.join(",");
#-------------------------------------------------------------- 486 join_array_7
my @a = "p", "q", "r";
say @a.values.join(",");
#-------------------------------------------------------------- 487 join_array_8
my @a = 10,20,30,40,50;
say @a[2,0].join(",");
#-------------------------------------------------------------- 488 join_array_9
my @a = 10,20,30;
say @a[0,0,0].join(",");
#--------------------------------------------------------------- 489 join_hash_1
my %h = a => 1, b => 2, c => 3;
say %h.keys.sort.join(",");
#--------------------------------------------------------------- 490 join_hash_2
my %h = a => 1, b => 2, c => 3;
say %h.pairs.sort.join(" ");
#--------------------------------------------------------------- 491 join_hash_3
my %h = a => 1, b => 2, c => 3;
say %h.values.sort.join(",");
#----------------------------------------------- 492 ladder__rung04_arrays_slice
my @a = (1, 2, 3, 4, 5);
say @a[1..3];
#----- 493 ladder__rung06_control_an_if_statement_in_parentheses_gives_its_value
my $c = 1; my $v = (if $c { 10 } else { 20 });
say $v;
#--------------------------------------------- 494 ladder__rung06_control_unless
my $x = 5;
unless ($x > 10) { say "small"; }
#------------------- 495 ladder__rung08_for_a_loop_header_declares_two_variables
my $s = ""; loop (my $a = 1, my $b = 2; $a < 5; $a++, $b++) { $s = "$a $b"; }
say $s;
#------------------ 496 ladder__rung08_for_a_while_statement_in_parentheses_runs
my $n = 0; (while $n < 5 { $n++ });
say $n;
#- 497 ladder__rung08_for_last_from_an_inner_loop_leaves_a_labelled_loop_in_parentheses
my $e = 0; (L5: loop { loop { $e++; last L5 } });
say $e;
#- 498 ladder__rung08_for_last_from_an_inner_while_leaves_a_labelled_while_in_parentheses
my $c = 0; (L1: while True { while True { $c++; last L1 } });
say $c;
#-------------------------------------------- 499 ladder__rung15_blocks_anon_sub
my $f = sub { 1 };
say $f();
#----------------------------------- 500 ladder__rung15_blocks_anon_sub_with_arg
my $f = sub ($arg) { 1 + $arg };
say $f(3);
#--------------------------- 501 ladder__rung15_blocks_fail_is_an_assignment_rhs
sub fl { my $e = fail 42; 7 }
say fl().WHAT;
#---------------------------------------------- 502 ladder__rung18_two_arg_block
my @n = (3,1,2);
say @n.sort({ $^b <=> $^a });
#-------------------------------- 503 ladder__rung18_two_arg_block_reduce_concat
my @w = ("a","bb","c");
say @w.reduce({ $^a ~ $^b });
#---------------------------------- 504 ladder__rung18_two_arg_block_sort_string
my @w = ("pear","fig","kiwi");
say @w.sort({ $^b leg $^a });
#--------------------------------- 505 ladder__rung19_block_methcall_sort_by_key
my @w = <aa b ccc>;
say @w.sort({ $^a.chars <=> $^b.chars });
#------------------------------------------------------------------- 506 multi_2
multi foo(Int $x) { return $x * 10; }
say foo(3);
#------------------------------------------------------------- 507 range_array_1
my @a = 1..5;
say @a.elems;
#------------------------------------------------------------ 508 range_array_11
my @a = 1,2,3,4,5;
say @a[2..4].sum;
#------------------------------------------------------------ 509 range_array_12
my @r = 1..5;
say @r[*-1];
#------------------------------------------------------------- 510 range_array_2
my @a = 5..1;
say @a.elems;
#------------------------------------------------------------- 511 range_array_3
my @e = 1..^4;
say @e.elems;
#------------------------------------------------------------- 512 range_array_4
my @a = 1..5;
say @a.max;
#------------------------------------------------------------- 513 range_array_5
my @a = 1..5;
say @a.min;
#------------------------------------------------------------- 514 range_array_6
my @a = 1..5;
say [+] @a;
#------------------------------------------------------------- 515 range_array_7
my @a = 1..5;
say [*] @a;
#------------------------------------------------------------- 516 range_array_8
my @a = 3..3;
say @a.elems;
#------------------------------------------------------------- 517 range_array_9
my @a = 1..5;
say @a.sum;
#----------------------------------------------------- 518 range_array_replace_1
my Int @a = 1..4;
say @a.sum;
#-------------------------------------------------------------------- 519 say_13
    my $x = 6 * 7;
    say($x);
#-------------------------------------------------------------------- 520 say_66
my $x = 2;
say(1, $x, 3+4);
#-------------------------------------------------------------------- 521 say_91
    my $x = 99;
    say($x);
#------------------------------------------------------------ 522 say_replace_21
my $x = 4; my $y = 9;
say ($x < $y);
#------------------------------------------------------------- 523 say_try_die_1
    try { die('boom'); CATCH { say('caught'); } }
    say('after');
#------------------------------------------------------------- 524 say_try_die_4
    try { die('boom'); say('inside-after'); }
    say('after');
#--------------------------------------------------------- 525 simple_assign_120
my $x = 5;
{ say "big" if $x > 3 }
#--------------------------------------------------------- 526 simple_assign_121
my $x = 1;
{ say "hi" unless $x }; say $x;
#--------------------------------------------------------- 527 simple_assign_122
my $x = 0;
{ say "hi" unless $x }
#---------------------------------------------------------- 528 simple_assign_30
my $x = 5;
if ($x > 3) { say "big" }
#---------------------------------------------------------- 529 simple_assign_31
my $x = 5;
if 10 > $x > 1 { say "gt" }
#---------------------------------------------------------- 530 simple_assign_32
my $x = 5;
if 1 < $x < 10 { say "in" }
#---------------------------------------------------------- 531 simple_assign_33
my $x = 1;
if 1 <= $x < 10 { say "in" }
#---------------------------------------------------------- 532 simple_assign_34
my $a = 5;
if 1 < $a == 5 { say "m" }
#---------------------------------------------------------- 533 simple_assign_35
my $x = 50;
if 1 < $x < 10 { say "bad" } else { say "out" }
#---------------------------------------------------------- 534 simple_assign_36
my $x = 1;
if 1 < $x < 10 { say "bad" } else { say "out" }
#---------------------------------------------------------- 535 simple_assign_37
my $x = 5;
unless 1 < $x < 3 { say "fires" }
#---------------------------------------------------------- 536 simple_assign_60
my $n = 8;
if $n %% 2 { say "even" } else { say "odd" }
#---------------------------------------------------------- 537 simple_assign_61
my $n = 7;
if $n %% 2 { say "even" } else { say "odd" }
#---------------------------------------------------------- 538 simple_assign_72
my $i = 0;
until $i >= 10 { last if $i >= 2; say $i; $i = $i + 1 }
#---------------------------------------------------------- 539 simple_assign_81
my $x = 2;
if $x == 1 { say "one" } else { if $x == 2 { say "two" } else { say "other" } }
#---------------------------------------------------------- 540 simple_assign_82
my $x = 5;
if $x > 3 { say "big" }
#---------------------------------------------------------- 541 simple_assign_83
my $x = 2;
if $x > 3 { say "big" } else { say "small" }
#---------------------------------------------------------- 542 simple_assign_84
my $x = 2;
unless $x > 5 { say "not big" }
#---------------------------------------------------------- 543 simple_assign_88
my $x = 5;
if ($x > 3) { say "big"; }
#---------------------------------------------------------- 544 simple_assign_91
my $x = 1;
say "big" if $x > 3; say $x > 3;
#---------------------------------------------------------- 545 simple_assign_93
my $x = 5;
say "big" if $x > 3;
#---------------------------------------------------------- 546 simple_assign_95
my $ok = 1;
print "hi" if $ok == 1;
#---------------------------------------------------------- 547 simple_assign_96
my $x = 2;
say "small" unless $x > 3;
#-------------------------------------------------------------------- 548 sub_14
sub greet(:$name) { say "Hello " ~ $name; }
greet(name => "Bob");
#-------------------------------------------------------------------- 549 sub_23
sub f() { say "hi"; return }
f();
#-------------------------------------------------------------------- 550 sub_25
sub f() { return 5 }
say f();
#-------------------------------------------------------------------- 551 sub_28
sub gen { my $x = 5; $x * 2 }
say gen();
#-------------------------------------------------------------------- 552 sub_31
sub t { return 42; }
say t();
#-------------------------------------------------------------------- 553 sub_35
sub five() { return 5; };
say five();
#-------------------------------------------------------------------- 554 sub_37
sub f($x) { say "big" if $x > 3 }
f(5);
#--------------------------------------------------------------------- 555 sub_7
sub g() { say 7; }
 my $b = { g(); }; $b(); 
#--------------------------------------------------------------------- 556 sub_8
my sub inc($n) { $n + 1 }
say inc(9);
#-------------------------------------------------------------- 557 sub_array_15
sub f($a, *@r) { say [+] @r; }
f(0, 1,2,3,4);
#-------------------------------------------------------------- 558 sub_array_16
sub f($a, *@r) { say @r; }
f(1,2,3);
#--------------------------------------------------------------- 559 sub_array_2
sub f($a, *@r) { say @r.elems; }
f(1);
#--------------------------------------------------------------- 560 sub_array_6
sub f($a, **@r) { say @r.elems; }
f(1);
#--------------------------------------------------------------- 561 sub_array_8
sub f($a, **@r) { say @r; }
f(1,2,3);
#---------------------------------------------------------------- 562 sub_hash_7
sub mixed($p, :$n, *%rest) { say $p; }
mixed(7, n => 9, z => 4);
#---------------------------------------------------------------- 563 sub_say_10
sub f(Int $x) { say($x); }
 f(42); 
#---------------------------------------------------------------- 564 sub_say_11
sub f(Str $s) { say($s); }
 f("hi"); 
#----------------------------------------------------------------- 565 sub_say_9
sub f(Int $x) { say($x); }
 f(7); f("x"); say("after"); 
#----------------------------------------------------------- 566 test_lines_file
my @lines = lines("/tmp/test.txt");
say(@lines);
#------------------------------------------------- 567 test_stmt_ctrl_loop_three
my $i = 0;
loop ($i = 0; $i < 3; $i = $i + 1) { say $i; }
#---------------------------------------------------------- 568 test_stmt_pfx_do
my $x = 1;
do { say($x); };
#------------------------------------------------------------------- 569 while_4
my $i = 0;
while $i < 3 { say $i; $i = $i + 1 }
#----------------------------------------------------------- 570 while_replace_1
my $i = 0;
while ($i < 3) { say $i; $i = $i + 1 }
#------------------------------------------------------------------ 571 array_50
my @a = 10,20,30,40;
my $n = 2;
say @a[*-$n];
#----------------------------------------------------------- 572 array_replace_2
my @a = (10,20,30);
my $x = @a[7];
say "after";
#------------------------------------------------------- 573 array_say_replace_2
my @a = 1, 2, 3, 4;
my @b = 5, 6, 9;
say ([+] @a) + ([+] @b);
#------------------------------------------------------------------- 574 given_1
my $r = 0;
$r = $_ given 9;
say $r;
#------------------------------------------------------------- 575 join_array_16
my @a = 1;
@a = 8,9,;
say @a.join(",");
#-------------------------------------------------------------- 576 join_array_4
my @a = 1,2,3;
@a = 4,5,6;
say @a.join(",");
#-------------------------------------------------------------- 577 join_array_5
my @a = 1,2,3;
@a = (7,8,9);
say @a.join(",");
#-------------------------------------------------------------- 578 join_array_6
my @a = 1;
@a = 5 xx 3;
say @a.join(",");
#----- 579 ladder__rung07_subs_a_sigilless_parameter_aliases_a_variable_argument
my $v = 10; sub h(\z) { z = 99 }
h($v);
say $v;
#-------------------------------- 580 ladder__rung16_bool_relops_numeric_context
say (3 > 1) + 1;
my $b = 5 < 9;
say $b + 0;
#------------------------------------------- 581 ladder__rung20_paren_group_list
my $x = 5;
my $y = 6;
($x, $y).join("-").say;
#------------------------------------------------------------------- 582 multi_1
multi describe(Int $x) { return "a"; }
multi describe(Str $x) { return "b"; }
print describe(1), describe("y");
#--------------------------------------------------------------- 583 multi_sub_1
multi sub f(Int $a) { say "int"; }
multi sub f(Str $a) { say "str"; }
f(7);
#-------------------------------------------------------------------- 584 say_54
my $x = ();
say('A');
say('B');
#------------------------------------------------------------- 585 say_try_die_3
    say('pre');
    try { die('a'); }; CATCH { die('fatal-in-handler'); };
    say('unreached');
#--------------------------------------------------------- 586 simple_assign_107
my $x = 4; my $y = 9;
if ($x < $y) { say "ct" } else { say "cf" }
if (4 < 9) { say "lt" } else { say "lf" }
#--------------------------------------------------------- 587 simple_assign_119
my $x = 10;
{ $x = $x + 1 if $x > 5 }
say $x;
#---------------------------------------------------------- 588 simple_assign_40
my $s = "hello";
$s ~= " world";
say $s;
#---------------------------------------------------------- 589 simple_assign_80
my $a = 1;
my $b = 0;
if $a == 1 { if $b == 1 { say "both" } else { say "a-only" } }
#--------------------------------------------------------------- 590 sub_array_3
sub f(*@r) { say @r.elems; }
my @a = (1,2,3);
f(@a);
#------------------------------------------------------- 591 test_stmt_pfx_ENTER
my $x = 1;
ENTER { say("enter"); }
say($x);
#-------------------------------------------------------- 592 test_stmt_pfx_KEEP
my $x = 1;
KEEP { say("keep"); }
say($x);
#------------------------------------------------------- 593 test_stmt_pfx_LEAVE
my $x = 1;
LEAVE { say("leave"); }
say($x);
#-------------------------------------------------------- 594 test_stmt_pfx_POST
my $x = 5;
POST { say("post"); }
say($x);
#--------------------------------------------------------- 595 test_stmt_pfx_PRE
my $x = 5;
PRE { say("pre"); }
say($x);
#-------------------------------------------------------- 596 test_stmt_pfx_TEMP
my $x = 1;
TEMP { say("temp"); }
say($x);
#-------------------------------------------------------- 597 test_stmt_pfx_UNDO
my $x = 1;
UNDO { say("undo"); }
say($x);
#------------------------------------------------------------------- 598 while_5
my $i = 0;
$i = $i + 1 while $i < 3;
say $i;
#--------------------------------------------------------------- 599 array_say_3
    my @a = (10, 20, 30);
    say(elems(@a));
    my @e = '';
    say(elems(@e));
#--------------------------------------------------------------- 600 array_say_6
    my @a = (3, 1, 2);
    say(@a[1]);
    my @b = (10, 3, 20);
    say(@b[1]);
#---------------------------------------------------- 601 ladder__rung03_strings
my $s = "Hello";
my $t = $s ~ ", world!";
say $t;
say "value: $s";
#------------------ 602 ladder__rung04_arrays_slip_method_flattens_into_the_list
my @b = 5, 4;
my @l = @b.Slip, 9;
say @l.elems;
say @l.join(",");
#------------------------------------------------------------------- 603 while_9
my $k = 5;
repeat {
    say $k;
} while $k > 100;
#--------------------------------------------------------------- 604 array_say_5
    my @a = (1, 2, 3);
    my @r = reverse(@a);
    say(@r[0]);
    say(@r[1]);
    say(@r[2]);
#------------------- 605 ladder__rung07_subs_tail_if_false_returns_to_the_caller
sub g($p) { if $p < 0 { say "neg"; } }
sub h($p) { g($p); say "back ", $p; }
h(104);
h(3);
h(-1);
#- 606 ladder__rung07_subs_user_circumfix_with_constant_delimiters_and_unicode_brackets
my constant $x = "µ @";
sub circumfix:<<$x>>($) { 42 }
say 'defined';
sub circumfix:<⌊ ⌋>($e) { $e.floor }
say ⌊3.7⌋;
#-------- 607 ladder__rung09_regex_the_subst_method_with_x_zero_replaces_nothing
say "a b c d".subst(/\w/, "x", :x(0));
say "a a a a".subst("a", "x", :x(0));
my $s = "q r";
say $s.subst(/\w/, "z", :x(0));
say $s;
#--------------------------------- 608 ladder__rung10_given_when_when_with_range
given 5 {
    when 1..3 { say "low"; }
    when 4..6 { say "mid"; }
    default { say "high"; }
}
#-------------------------------------------- 609 ladder__rung12_exceptions_fail
sub f {
    fail "oops";
}
my $r = f();
say $r.defined;
#-------------------------- 610 ladder__rung13_classes_semicolon_between_members
class C { has $.x; method f() { 1 }; method g() { 2 }; }
role R { method r() { "r" }; }
class D does R { ; }
say C.new.f + C.new.g;
say D.new.r;
#--------------------------------------------------------------- 611 token_say_1
grammar G {
    token w   { \w+ }
    rule  TOP { "[" <w> "]" }
}
say(G.parse("[abc]"));
#--------------------------------------------------------------- 612 token_say_4
grammar G {
    token TOP { \d+ }
}

    say(G.parse("12345"));
#------------------------------------------------------------------- 613 while_8
my $i = 0;
repeat {
    $i = $i + 1;
    say $i;
} while $i < 3;
#---------------------------------------------- 614 benchmark_rc-man-or-boy-test
sub A ($k is copy, $x1, $x2, $x3, $x4, $x5) {
    my $B := { A(--$k, $B, $x1, $x2, $x3, $x4) };
    $k <= 0 ?? $x4() + $x5() !! $B();
}

say A(10, {1}, {-1}, {-1}, {1}, {0});
#--------------------- 615 ladder__rung04_arrays_num_element_keeps_its_precision
my @a = (2e0/3, 0.1e0 + 0.2e0, 7);
say @a[0];
say "e @a[1]";
say @a[0] * 3;
my ($x, $y) = (2500e0/3, 1e0/3);
say "$x $y";
#----------------------------------- 616 ladder__rung12_exceptions_specific_type
try {
    die X::AdHoc.new(payload => "typed");
    CATCH {
        when X::AdHoc { say "adhoc: " ~ .payload; }
    }
}
#---------------------------------------------------------- 617 simple_assign_92
my $x = 10;
my $y = 0;
$y = 99 if $x > 5;
say $y;
$y = 7 if $x > 50;
say $y;
#--------------------------------------------------------------- 618 token_say_3
grammar G {
    token word { \w+ }
    rule TOP { <word> }
}

    say(G.parse("hello"));
#---------------------------------------------------------------- 619 hash_say_5
    my %h;
    %h<lang> = 'Raku';
    %h<vers> = '6';
    say(%h<lang>);
    say(%h<vers>);
    %h<lang>:delete;
    say(%h<lang>:exists);
#------------------------- 620 ladder__rung03_strings_num_stringifies_round_trip
my $x = 0.1e0 + 0.2e0;
say "x=$x";
say ~$x;
say $x.Str;
say $x ~ "|" ~ 2e0/3;
my $b = 1 < 2;
say "b=$b";
#-- 621 ladder__rung04_arrays_rotate_takes_its_count_from_a_string_or_a_rational
my @a = <a b c d e>;
say ~@a.rotate("2");
say ~@a.rotate(2.5);
say ~@a.rotate(-1);
say ~@a.rotate("-2");
say ~@a.rotate;
say ~@a.rotate(7);
#--------------------------------------------------------------- 622 token_say_2
grammar G {
    token num  { \d+ }
    token word { \w+ }
    rule TOP { <num> <word> }
}

    say(G.parse("12abc"));
#- 623 ladder__rung09_regex_a_method_call_on_the_topic_on_the_right_of_a_smartmatch_is_made_on_the_left_operand
say so 'AA' ~~ .uc;
say so 'ab' ~~ .uc;
say so 'ab' ~~ .substr(0);
say so 'ab' ~~ .substr(1);
$_ = 'zz';
say so 'b' ~~ .substr(1);
say $_;
say "end";
#- 624 ladder__rung13_classes_an_enum_value_named_like_a_builtin_term_shadows_it
enum Cell <Empty Tree Burning>;
my @g = Empty, Tree, Empty, Burning;
say @g.elems;
say +@g[0], +@g[1], +@g[3];
say Empty == 0;
say (Empty, Tree).elems;
my @row = [ flat (Tree, Empty) xx 2 ];
say @row.elems;
#-------------------------------------------------------------------- 625 say_51
    my %h;
    %h{'name'} = 'Alice';
    %h{'age'} = '30';
    say(%h{'name'});
    %h{'age'} = '31';
    say(%h{'age'});
    say(%h{'name'}:exists);
    say(%h{'missing'}:exists);
#- 626 ladder__rung03_strings_an_escaped_sigil_in_a_double_quoted_string_is_a_literal_dollar_or_at
my $x = 5; my @a = 1, 2;
say "\$";
say "\$x";
say "\\$x";
say "a\@b";
say "cost: \$5 and $x";
say "{1 + 1}\$ {$x}";
say "\@a and @a[]";
say "plain";
#-------------------------------------------------------- 627 scrip_test_rk_join
# rk_join.raku — RK-BB-5.2: join() as a list Seq consumer
sub main() {
    say(join(",", 1, 2, 3));
    say(join("-", "a", "b", "c"));
    say(join("", 4, 5, 6));
    # compose with reverse: join the reversed list
    say(join(",", reverse(1, 2, 3)));
}
main();
#-------------------- 628 ladder__rung09_string_methods_sub_forms_and_chomp_crlf
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
#- 629 ladder__rung07_subs_a_module_declared_in_a_bare_block_registers_its_subs_for_the_qualified_call
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
#- 630 ladder__rung13_classes_eval_of_a_class_name_or_its_literal_is_the_class_type_object
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
#-------------------------------------------------------------------- 631 say_19
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
#- 632 ladder__rung02_arithmetic_rat_counts_and_tolerances_in_the_test_module_plan_skip_is_approx
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
#- 633 ladder__rung04_arrays_a_collection_type_object_called_with_one_argument_coerces_it
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
#--------------------------------------------------- 634 benchmark_string-escape
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
#- 635 ladder__rung03_strings_the_method_assign_form_with_no_space_stores_the_result_back_in_the_variable
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
#- 636 ladder__rung02_arithmetic_modulo_and_div_of_a_big_integer_are_exact_and_floored
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
#---------------------------------------------------------- 637 simple_assign_24
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
#-------------------------------------------------------- 638 hash_say_replace_2
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
#-------------------------------------------------------------- 639 for_range_12
{ say $_ for 1..3 }
#--------------------------------------------------------------- 640 for_range_2
for 1..3 -> $v { say $v }
#--------------------------------------------------------------- 641 for_range_5
for 1..2 -> $i { for 1..2 -> $j { say $i * $j } }
#--------------------------------------------------------------- 642 for_range_7
say $_ for 1..3;
#--------------------------------------------------------------- 643 for_range_8
for 0 ..^ 5 -> $i { say $i }
#--------------------------------------------------------------- 644 for_range_9
for 1 ..^ 4 -> $x { say $x }
#----------------------------------------------------------------- 645 for_say_1
for 1,2,3 -> $x { say($x); }
#----------------------------------------------------------------- 646 for_say_2
for "x","y","z" -> $s { say($s); }
#----------------------------------------------------------------- 647 for_say_3
for 1,2,3 { say($_); }
#----------------------------------------------------------------- 648 for_say_5
for (1,2,3) -> $x { say($x); }
#----------------------------------------------------------------- 649 for_say_6
for ("a","b","c") -> $s { say($s); }
#----------------------------------------------------------------- 650 for_say_7
for (1,2,3) { say($_); }
#----------------------------------------------------------------- 651 for_say_8
for <a b c> -> $x { say($x); }
#---------------------------------------------------------- 652 join_array_say_1
 my @a = (1, 2, 3); say(@a.join("-")); 
#- 653 ladder__rung01_variables_an_array_in_a_list_declaration_takes_the_rest_of_the_list
my ($a, @b) = 1, 2, 3; say $a ~ @b.join;
#--------------------------------------------------- 654 ladder__rung08_for_loop
for 1..3 -> $i { say $i; }
#---------------------------------------- 655 ladder__rung08_for_loop_nested_for
for 1..2 -> $i { for 1..2 -> $j { say "$i,$j"; } }
#------------------------------------------------------------ 656 loop_replace_3
loop (my $i = 0; $i < 10; $i++) { last if $i == 3; say $i; }
#------------------------------------------------------------ 657 loop_replace_4
loop (my $i = 0; $i < 4; $i++) { next if $i == 1; say $i; }
#--------------------------------------------------------- 658 split_array_say_1
 my @a = "a,b,c".split(","); say(elems(@a)); 
#------------------------------------------------------------ 659 class_method_3
class C { method m($x) { say "hi" unless $x } }
C.new.m(0);
#-------------------------------------------------------- 660 class_method_say_5
class Clock { method tick() { return "t"; } }
 say(Clock.^methods); 
#-------------------------------------------------------- 661 class_method_say_6
class C { method say() { return 7 } }
say C.new.say;
#--------------------------------------------------------------- 662 for_range_6
for 65..69 -> $i { print chr($i) }
say "";
#----------------------------------------------------------------- 663 for_say_4
for () -> $x { say($x); }
say('done');
#----------------------------------------------------------- 664 given_replace_1
my $x = 7;
say "val is " ~ $_ given $x;
#-------------------------------------------------------- 665 join_range_array_2
my @r = 1..5;
say @r[0,2,4].join(",");
#-------------------------------------------------------- 666 join_range_array_3
my @a = 10,20,30,40,50;
say @a[1..2].join(",");
#-------------------------------------------------------- 667 join_range_array_4
my @a = 1..4;
say @a.join(",");
#-------------------------------------------------------- 668 join_range_array_5
my @r = 10..20;
say @r[2..5].join(",");
#-------------------------------------------------------- 669 join_range_array_6
my @a = 1,2,3,4,5;
say @a[1..^4].join(",");
#-------------------------------------------------------- 670 join_range_array_7
my @a = 1,2,3,4,5;
say @a[0..2].join(",");
#-------------------------------------------------------- 671 join_range_array_8
my @a = 1,2,3,4,5;
say @a[1..3].join(",");
#-------------------------------------------------------- 672 join_range_array_9
my @a = 1,2,3,4,5;
say @a[2..2].join(",");
#---------------------------------------- 673 ladder__rung06_control_elsif_chain
my $x = 2;
if ($x == 1) { say "one"; } elsif ($x == 2) { say "two"; } else { say "other"; }
#------------------------------------------------------- 674 ladder__rung07_subs
sub add($a, $b) { return $a + $b; }
say add(3, 4);
#--------- 675 ladder__rung08_for_a_labelled_while_in_parentheses_leaves_on_last
my $m = 0; (L: while $m < 5 { $m++; last L if $m == 3 });
say $m;
#- 676 ladder__rung08_for_redo_in_a_while_restarts_the_body_without_testing_the_condition
my $i = 0; my $r = 0; while $i < 3 { $i++; $r++; redo if $r == 2 }
say "$i $r";
#---------------------- 677 ladder__rung15_blocks_an_anonymous_method_reads_self
my $m2 = method ($x) { "got $x " ~ self.^name };
say "ok";
#------------------------------------------------ 678 ladder__rung15_blocks_grep
my @n = (1, 2, 3, 4);
say @n.grep({ $_ > 2 });
#------------------------------------------------- 679 ladder__rung15_blocks_map
my @n = (1, 2, 3, 4);
say @n.map({ $_ * 2 });
#-------------------------------------------------------------------- 680 loop_2
my $i = 0;
loop { last if $i >= 3; say $i; $i = $i + 1 }
#-------------------------------------------------------------------- 681 loop_3
my $i = 0;
loop { $i = $i + 1; say $i; last if $i >= 3 }
#-------------------------------------------------------------------- 682 say_89
    my $s = 'ab' ~ 'cd';
    say($s);
#------------------------------------------------------------ 683 say_replace_18
role Point { has $.x; }
 my $p = Point.new(x => 5); say($p.x); 
#------------------------------------------------------------- 684 say_try_die_2
    try { die('boom'); }; CATCH { say($_); };
    say('after');
#---------------------------------------------------------- 685 simple_assign_62
my $x = 5;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } elsif $x == 5 { say "e" } else { say "z" }
#---------------------------------------------------------- 686 simple_assign_63
my $x = 9;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } else { say "c" }
#---------------------------------------------------------- 687 simple_assign_64
my $x = 2;
if $x == 1 { say "a" } elsif $x == 2 { say "b" } else { say "c" }
#---------------------------------------------------------- 688 simple_assign_65
my $x = 1;
if $x == 1 { say "a" } elsif $x == 2 { say "b" }
#---------------------------------------------------------- 689 simple_assign_66
my $x = 2;
if ($x == 1) { say "a" } elsif ($x == 2) { say "b" } else { say "c" }
#-------------------------------------------------------------------- 690 sub_10
my sub answer() { return 42; }
say answer();
#-------------------------------------------------------------------- 691 sub_16
sub h($a, $b = $a * 2) { return $a + $b }
say h(3);
#-------------------------------------------------------------------- 692 sub_17
sub f($x = 5) { return $x }
say f();
#-------------------------------------------------------------------- 693 sub_20
sub s2($a = "hi") { return $a }
say s2();
#-------------------------------------------------------------------- 694 sub_21
sub f($x = 5) { return $x }
say f(9);
#-------------------------------------------------------------------- 695 sub_22
sub f($x = 5) { return $x }
say f(0);
#-------------------------------------------------------------------- 696 sub_32
sub add($a,$b) { return $a + $b; }
say add(3,4);
#-------------------------------------------------------------------- 697 sub_38
sub f($x,$y) { return $x+$y }
say f(3,4,);
#--------------------------------------------------------------------- 698 sub_9
my sub greet($name) { say "hi " ~ $name; }
greet("world");
#--------------------------------------------------------------- 699 sub_array_1
sub f($a, *@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
#-------------------------------------------------------------- 700 sub_array_10
sub f($a, **@r) { say @r[0] ~ "|" ~ @r[1]; }
f(0,8,9);
#-------------------------------------------------------------- 701 sub_array_11
sub f($a, *@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
#--------------------------------------------------------------- 702 sub_array_5
sub f($a, **@r) { say $a ~ "|" ~ @r.elems; }
f(1,2,3);
#---------------------------------------------------------------- 703 sub_hash_1
sub f($a, *%h) { say $a ~ "|" ~ %h.elems; }
f(1, x => 2, y => 3);
#---------------------------------------------------------------- 704 sub_hash_3
sub mixed($p, :$n, *%rest) { say $n ~ "|" ~ %rest.elems; }
mixed(7, n => 9, z => 4, w => 5);
#---------------------------------------------------------------- 705 sub_hash_4
sub f($a, *%h) { say $a ~ "|" ~ %h.elems; }
f(5);
#---------------------------------------------------------------- 706 sub_say_12
sub takes(Int:D $n) { say("int " ~ $n); }
 takes(5); takes("x"); say("after"); 
#----------------------------------------------------------------- 707 sub_say_7
sub greet(Str:D $name) { say("hi " ~ $name); }
 greet("Tom"); 
#----------------------------------------------------------------- 708 sub_say_8
sub want(Str:U $x) { say("ok"); }
 my $u; want($u); want("v"); say("after"); 
#------------------------------------------------------------- 709 test_if_basic
my $c = 1;
if ($c) { say($c); }
#------------------------------------------------------------ 710 test_if_cmp_eq
my $n = 42;
if ($n == 42) { say($n); }
#-------------------------------------------------------------- 711 test_if_else
my $x = 5;
if ($x < 10) { say($x); } else { say(0); }
#---------------------------------------------------------- 712 test_while_basic
my $i = 0;
while ($i < 3) { say($i); $i = $i + 1; }
#------------------------------------------------------------------- 713 while_1
my $o = 0;
while $o < 2 { my $i = 0; while $i < 5 { last if $i >= 2; say "$o-$i"; $i = $i + 1 }; $o = $o + 1 }
#------------------------------------------------------------------- 714 while_2
my $i = 0;
while $i < 10 { last if $i >= 3; say $i; $i = $i + 1 }
#------------------------------------------------------------------- 715 while_3
my $i = 0;
while $i < 4 { $i = $i + 1; next if $i == 2; say $i }
#--------------------------------------------------- 716 class_method_replace_10
class C { method sq($n) { $n * $n } }
my $o = C.new;
say $o.sq(6);
#--------------------------------------------------- 717 class_method_replace_11
class C { method calc($n) { my $t = $n + 1; $t * 2 } }
my $o = C.new;
say $o.calc(4);
#--------------------------------------------------- 718 class_method_replace_14
class C { method answer { 42 } }
my $o = C.new;
say $o.answer();
#---------------------------------------------------- 719 class_method_replace_6
class C { method go() { 7 } }
my $x = C.new.go();
say $x;
#---------------------------------------------------- 720 class_method_replace_7
class C { method f() { self }; method g() { 3 } }
my $o = C.new;
say $o.f().g();
#----------------------------------------------------------- 721 class_replace_1
class P { has $.x; }
my $p = P.new(x => 9);
say $p.x;
#----------------------------------------------------------- 722 class_replace_2
class C { has $.x; has $.y; }
my $c = C.new(y => 9, x => 4);
say $c.x;
#------------------------------------------------------ 723 class_say_replace_23
class Animal { }
class Dog is Animal { }
 my $d = Dog.new(); say($d.isa(Animal)); say($d.isa(Dog)); 
#------------------------------------------------------------------- 724 given_2
my $c = "";
$c = $c ~ "x" given 1;
say $c;
#------------------------------------------------------------- 725 join_array_13
my @a = 10,20,30,40,50;
my $i = 1;
say @a[$i,3].join(",");
#-------------------------------------------------------- 726 join_range_array_1
my @a = 9;
@a = 1..4;
say @a.join(",");
#--------------------------------------- 727 ladder__rung07_subs_optional_params
sub inc($x, $by = 1) { return $x + $by; }
say inc(5);
say inc(5, 2);
#----------------------------------------------------------- 728 multi_sub_say_4
multi sub combine(Int $a, Int $b) { say("int+int"); }
multi sub combine(Str $a, Str $b) { say("str+str"); }
 combine(1, 2); combine("a", "b"); 
#----------------------------------------------------------- 729 multi_sub_say_6
multi sub f(Int $x) { say("specific int"); }
multi sub f($x) { say("fallback"); }
 f(5); f("str"); 
#-------------------------------------------------------------------- 730 say_52
    my $x = 3;
    if ($x == (1 | 2 | 3)) { say('pipe'); }
    if ($x == (3 & 3 & 3)) { say('amp'); }
#------------------------------------------------------------- 731 say_try_die_8
    try { die('a'); CATCH { default { say($_.message); } } }
    try { say('b'); CATCH { default { say('no'); } } }
    say('after');
#-------------------------------------------------------------------- 732 sub_19
sub g($a, $b = 2) { return $a + $b }
say g(1);
say g(1,10);
#-------------------------------------------------------------- 733 sub_array_14
my @x = 1, 2;
sub f($a, *@r) { say @r.elems; }
f(0, @x, 9);
#--------------------------------------------------------------- 734 sub_array_4
sub f($a, *@r) { say @r.elems; }
my @a = (1,2); my @b = (3,4,5);
f(0, @a, @b);
#----------------------------------------------------------- 735 test_while_incr
my $i = 0;
while ($i < 5) { $i = $i + 1; }
say($i);
#------------------------------------------------------ 736 class_say_replace_22
class Animal { }
class Dog is Animal { }
class Cat is Animal { }
 my $d = Dog.new(); say($d.isa(Animal)); say($d.isa(Cat)); 
#------------------------------------------------------ 737 class_say_replace_25
class Animal { }
class Mammal is Animal { }
class Dog is Mammal { }
 my $d = Dog.new(); say($d.^name); say($d.^parents); 
#---------------------------------------------------------------- 738 for_say_10
    for grep { $_ % 2 == 0 }, gather { take(1); take(2); take(3); take(4); } -> $v {
        say($v);
    }
    say('done');
#---------------------------------------------------------------- 739 for_say_11
    for map { $_ * 2 }, gather { take(1); take(2); take(3); } -> $v {
        say($v);
    }
    say('done');
#----------------------------------------------------------------- 740 for_say_9
    for gather { take(10); take(20); take(30); } -> $v {
        say($v);
    }
    say('done');
#---------------------------------------------------- 741 ladder__rung06_control
my $x = 5;
if ($x > 3) { say "big"; } else { say "small"; }
my $i = 0;
while ($i < 3) { say $i; $i = $i + 1; }
#------------------------------------------------------------ 742 range_array_10
my $lo = 2;
my $hi = 6;
my @a = $lo..$hi;
say @a.sum;
#-------------------------------------------------------------------- 743 say_53
    my $x = 50;
    if ($x == (50 & (50 | 60)))  { say('all-wraps-any'); }
    if ($x == (10 | (50 & 60)))  { say('nest-miss-BAD'); }
    if ($x == ((50 | 60) & 50))  { say('any-first-in-all'); }
#-------------------------------------------------------------------- 744 sub_18
sub plain($z) { return $z }
say plain(6);
sub t(Int $n) { return $n }
say t(4);
#--------------------------------------------------------------- 745 while_say_1
    my $i = 1;
    while ($i <= 3) {
        say($i);
        $i = $i + 1;
    }
#---------------------- 746 ladder__rung16_bool_relops_logical_or_in_a_condition
my $a = 3;
if $a == 1 || $a == 3 { say "hit" } else { say "miss" }
if $a == 1 || $a == 2 { say "hit" } else { say "miss" }
my $i = 0;
while $i < 2 || $i == 5 { $i++ }
say $i;
#-------------------------------------------------------------------- 747 say_23
    if (True)  { say('t'); } else { say('f'); }
    if (False) { say('t'); } else { say('f'); }
    my $x = 1;
    if ($x) { say('t'); } else { say('f'); }
    my $y = 0;
    if ($y) { say('t'); } else { say('f'); }
#---------------------------------------------------------- 748 sort_array_say_1
    my @a = (5, 3, 9, 1);
    my @s = sort(@a);
    say(@s[0]);
    say(@s[1]);
    say(@s[2]);
    say(@s[3]);
#------------------------------------------------------------------- 749 while_6
my $i = 0;
repeat {
    $i = $i + 1;
    last if $i == 3;
    say $i;
} while $i < 10;
#------------------------------------------------------------------- 750 while_7
my $i = 0;
repeat {
    $i = $i + 1;
    next if $i == 2;
    say $i;
} while $i < 4;
#----------------------------------- 751 ladder__rung13_classes_public_attribute
class Point {
    has $.x is rw;
    has $.y is rw;
}
my $p = Point.new(x => 3, y => 4);
say $p.x;
say $p.y;
$p.x = 10;
say $p.x;
#- 752 ladder__rung04_arrays_an_empty_array_is_an_array_a_sub_can_push_onto_and_its_max_is_minus_inf
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
#- 753 ladder__rung07_subs_a_sigilless_parameter_is_assignable_and_writes_back_to_its_argument
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
#--------------- 754 ladder__rung16_bool_relops_logical_or_and_answer_an_operand
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
#- 755 ladder__rung09_regex_a_hash_on_the_right_of_a_smartmatch_tests_its_keys_a_regex_on_the_left_tests_each_key
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
#--------------------------------------------------------------- 756 array_say_4
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
#------------------------- 757 ladder__rung04_arrays_scalar_container_subscripts
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
#- 758 ladder__rung03_strings_an_array_interpolates_in_a_double_quoted_string_only_when_a_subscript_or_a_call_follows
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
#- 759 ladder__rung14_roles_a_parametric_role_binds_its_parameters_in_its_methods
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
#----------------------------------------- 760 benchmark_pi-sequential-iteration
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
#-------------------------------------------------------- 761 hash_say_replace_3
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
#- 762 ladder__rung07_subs_a_multi_sub_is_chosen_by_its_named_parameters_and_a_nullary_loses_to_an_optional_named
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
#- 763 ladder__rung02_arithmetic_rat_rounding_comparison_sums_and_mixed_operands
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
#--------------------------------------------------------------- 764 for_range_3
for 1..2 -> $i { if ($i == 1) { say "one" } else { say "two" } }
#--------------------------------------------------------------- 765 for_range_4
for 1..2 { my $x = 5; say $x }
#----------------------------------------------------------- 766 for_range_say_3
for 1..3 -> $v { say($v) }
#----------------------------------------------------------- 767 for_range_say_4
 for 1..3 -> $v { say($v); }; say('done'); 
#-------------------------------------------------------- 768 join_split_array_1
 my @a = "x,y,z".split(","); say(@a.join("|")); 
#---------------------------------------------------------- 769 smartmatch_say_2
 if ('abc' ~~ /^\d+$/) { say("match"); } else { say("nomatch"); } 
#---------------------------------------------------------- 770 smartmatch_say_3
 if ('abc123' ~~ /\d+/) { say("match"); } else { say("nomatch"); } 
#--------------------------------------------------------------------- 771 sub_5
 my $s = sub { return 4; }; say $s(); 
#------------------------------------------------------- 772 class_say_replace_1
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); say($p.x()); 
#------------------------------------------------------ 773 class_say_replace_10
class Cfg { has Int $.limit = 100; }
 my $c = Cfg.new(); say($c.limit); 
#------------------------------------------------------ 774 class_say_replace_12
class Point { has $.x; has $.y; submethod BUILD(:$x, :$y) { $!x = $x * 2; $!y = $y; } }
 my $p = Point.new(x => 5, y => 10); say($p.x); say($p.y); 
#------------------------------------------------------ 775 class_say_replace_13
class R { has $.id is required; submethod BUILD(:$id) { $!id = $id; } }
 my $r = R.new(id => 42); say($r.id); 
#------------------------------------------------------ 776 class_say_replace_14
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); my $q = $p.clone(); say($q.x); say($q.y); 
#------------------------------------------------------ 777 class_say_replace_16
class Point { has $.x; has $.y; }
 my $p = Point.new(x => 3, y => 4); my $r = $p.clone(y => 99); say($r.x); say($r.y); say($p.y); 
#------------------------------------------------------ 778 class_say_replace_18
class Q { has $.x; }
 my $q = Q.new(x => 1); $q.x = 5; say("unreached"); 
#------------------------------------------------------ 779 class_say_replace_19
class P { has $.x is rw; }
 my $p = P.new(x => 1); $p.x = 5; say($p.x); 
#------------------------------------------------------- 780 class_say_replace_2
class Box { has $.v = 42; }
 my $b = Box.new(); say($b.v); 
#------------------------------------------------------ 781 class_say_replace_20
class Box { has Int $.v is rw; }
 my $b = Box.new(v => 1); $b.v = 99; say($b.v); 
#------------------------------------------------------ 782 class_say_replace_21
class Empty { has $.x; }
 my $e = Empty.new(x => 1); say($e); 
#------------------------------------------------------ 783 class_say_replace_24
class Dog { has $.name; }
 my $d = Dog.new(name => "Rex"); say($d.^name); 
#------------------------------------------------------ 784 class_say_replace_28
class Point { has $.x; }
 my $p = Point.new(x => 1); say($p.WHAT); 
#------------------------------------------------------- 785 class_say_replace_3
class Box { has $.v = 42; }
 my $b = Box.new(v => 7); say($b.v); 
#------------------------------------------------------- 786 class_say_replace_4
class Greeter { has $.greeting = "hello"; }
 my $g = Greeter.new(); say($g.greeting); 
#------------------------------------------------------- 787 class_say_replace_5
class Config { has %.opts; }
 my $c = Config.new(); my $h = $c.opts; say($h{'x'}:exists); 
#------------------------------------------------------- 788 class_say_replace_6
class Point { has $.x is required; has $.y; }
 my $p = Point.new(y => 9); say("unreached"); 
#------------------------------------------------------- 789 class_say_replace_7
class Point { has $.x is required; has $.y; }
 my $p = Point.new(x => 7, y => 9); say($p.x); 
#------------------------------------------------------- 790 class_say_replace_8
class Box { has Int $.w is required; }
 my $b = Box.new(w => 12); say($b.w); 
#------------------------------------------------------- 791 class_say_replace_9
class Point { has Int $.x; has Int $.y; }
 my $p = Point.new(x => 3, y => 4); say($p.x); 
#-------------------------------------------------------------- 792 for_range_10
my $n = 3;
for 0 ..^ $n -> $i { say $i }
#----------------------------------------------------------- 793 for_range_say_5
for 1..3 -> $v { say($v); }
say('done');
#------------------------------------------------------------ 794 junction_say_5
    my $s = 'b';
    if ($s eq any('a', 'b')) { say('str-hit'); }
#------------------------------------------ 795 ladder__rung07_subs_named_params
sub greet(:$name) { return "hi " ~ $name; }
say greet(name => "Bob");
#-------------------- 796 ladder__rung08_for_a_for_statement_in_parentheses_runs
my $t = 0; (for 1..3 { $t += $_ });
say $t;
#------------------------------------ 797 ladder__rung08_for_loop_for_over_array
my @a = (10, 20, 30);
for @a -> $x { say $x; }
#------------------------------------ 798 ladder__rung08_for_loop_for_with_index
my @a = ("a", "b");
for @a.kv -> $i, $v { say "$i:$v"; }
#- 799 ladder__rung08_for_redo_with_a_label_from_an_inner_loop_restarts_the_outer_loop
my $t = ""; my $p = 0; my $y = 0; A: while $p++ < 2 { $t ~= "A$p "; B: while $y++ < 2 { $t ~= "B$y "; redo A if $y == 1 && $p == 1; last A } }
say $t;
#--------- 800 ladder__rung08_for_redo_with_a_label_restarts_a_c_style_loop_body
my $s = ""; my $again = 1; CL: loop (my $i = 0; $i < 3; $i++) { $s ~= "i$i "; if $i == 1 && $again { $again = 0; redo CL } }
say $s;
#--------------- 801 ladder__rung08_for_redo_with_a_label_restarts_a_repeat_body
my $k = 0; my $z = 0; my $u = ""; RW: repeat { $k++; $u ~= "k$k "; redo RW if $k == 2 && !$z++ } while $k < 3;
say $u;
#- 802 ladder__rung09_a_quantified_captures_list_responds_to_builtin_list_methods
my $m = "aaa" ~~ /$<x>=(a)+/;
say $<x>.elems;
#------ 803 ladder__rung09_a_quantified_named_bracket_group_stays_a_single_match
my $m = "aaa" ~~ /$<x>=[a]+/;
say $<x>;
#--------------- 804 ladder__rung09_named_bracket_group_binds_to_the_whole_group
my $m = "a" ~~ /$<x>=[a]/;
say $<x>;
#-------------- 805 ladder__rung09_quantified_named_capture_pluralizes_to_a_list
my $m = "aaa" ~~ /$<x>=(a)+/;
say $<x>;
#-------- 806 ladder__rung13_classes_a_parenthesised_has_declares_each_attribute
class C { has ($a, $b); method set { $a = 3; $b = 4 }; method sum { $a + $b } }
my $c = C.new; $c.set; say $c.sum;
#--------------------------- 807 ladder__rung15_blocks_next_is_an_assignment_rhs
for 1..3 { my $n = next; say 7 }
say "done";
#------------------------- 808 ladder__rung15_blocks_return_is_an_assignment_rhs
sub rt { my $r = return 5; 7 }
say rt();
#------------- 809 ladder__rung19_block_a_for_over_a_parenthesised_map_of_a_sort
my @array = <3 1 2>;
for (map { $_ * 2 }, sort @array) -> $e { say $e }
#------------ 810 ladder__rung19_block_a_sub_called_in_a_for_reads_its_own_topic
sub topic { $_.gist }
for 1..2 { say topic() }
#------------------------------------------------------ 811 method_say_replace_1
role Speaks { method talk() { return "hello"; } }
 my $s = Speaks.new(); say($s.talk()); 
#--------------------------------------------------------- 812 multi_sub_array_3
multi sub f($a, **@r) { say "L:" ~ @r.elems; }
f(1,2,3,4);
#--------------------------------------------------------- 813 multi_sub_array_4
multi sub f($a, *@r) { say "V:" ~ @r.elems; }
f(1,2,3);
#------------------------------------------------------------ 814 say_replace_10
grammar G { rule TOP { "abc" } }
 my $r = G.parse("abcd"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 815 say_replace_11
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("xx"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 816 say_replace_12
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("55"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 817 say_replace_13
grammar G { rule TOP { <digit> <alpha> } }
 my $r = G.parse("5"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 818 say_replace_14
grammar G { rule TOP { <digit> <lower> <upper> } }
 my $r = G.parse("3XB"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 819 say_replace_15
grammar G { rule TOP { <digit>+ } }
 my $r = G.parse("abc"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------ 820 say_replace_16
grammar G { rule TOP { "a.b" } }
 my $r = G.parse("axb"); if ($r) { say("BAD"); } else { say("OK"); } 
#------------------------------------------------------------ 821 say_replace_17
grammar G { rule TOP { "hello" } }
 my $r = G.parse("world"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------- 822 say_replace_3
grammar G { rule TOP { "a" | "b" } }
 my $r = G.parse("c"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------- 823 say_replace_4
grammar G { rule TOP { <alpha> } }
 my $r = G.parse("1"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------- 824 say_replace_5
grammar G { rule TOP { <digit> } }
 my $r = G.parse("x"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------- 825 say_replace_6
grammar G { rule TOP { <space> } }
 my $r = G.parse(" "); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------- 826 say_replace_7
grammar G { rule TOP { <digit> } }
 my $r = G.parse("55"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------- 827 say_replace_8
grammar G { rule TOP { <upper> } }
 my $r = G.parse("a"); if ($r) { say("Y"); } else { say("N"); } 
#------------------------------------------------------------- 828 say_replace_9
grammar G { rule TOP { <xdigit> } }
 my $r = G.parse("g"); if ($r) { say("Y"); } else { say("N"); } 
#-------------------------------------------------------------------- 829 sub_11
my sub sq($x) { return $x * $x; }
say sq(5);
#----------------------------------------------------------------- 830 sub_say_6
sub greet(Str:D $name) { say("hi " ~ $name); }
 greet("Tom"); my $u; greet($u); say("after"); 
#--------------------------------------------------- 831 class_method_replace_12
class Point { has $.x; has $.y; method sum { $!x + $!y } }
my $p = Point.new(x => 3, y => 4);
say $p.sum;
#--------------------------------------------------- 832 class_method_replace_13
class C { method greet { return "hi"; } }
my $o = C.new;
say $o.greet();
#--------------------------------------------------- 833 class_method_replace_15
class C { has $.v; method show() { say $.v } }
my $o = C.new(v => 7);
$o.show();
#--------------------------------------------------- 834 class_method_replace_17
class C { method g() { return 7 } }
my $o = C.new;
say $o.g();
#---------------------------------------------------- 835 class_method_replace_2
class Cfg { method keys() { return "custom-keys"; } }
my $c = Cfg.new;
say $c.keys;
#--------------------------------------------------- 836 class_method_replace_20
class Dog { method speak() { return "woof"; } }
my $d = Dog.new;
say $d.speak();
#---------------------------------------------------- 837 class_method_replace_3
class C { method go() { say "g" } }
my $o = C.new;
$o.go() if 1;
#---------------------------------------------------- 838 class_method_replace_4
class C { method n($x) { say $x } }
my $o = C.new;
$o.n(9) if 1;
#---------------------------------------------------- 839 class_method_replace_5
class C { method answer() { return 42; } }
my $o = C.new;
say $o.answer;
#---------------------------------------------------- 840 class_method_replace_8
class C { method return() { return 3 } }
my $o = C.new;
say $o.return();
#---------------------------------------------------- 841 class_method_replace_9
class C { method take() { return 5 } }
my $o = C.new;
say $o.take;
#----------------------------------------------- 842 class_method_say_replace_18
role Barker { method bark() { say("woof"); } }
class Dog does Barker { }
 my $d = Dog.new(); say($d.does(Barker)); say($d.isa(Dog)); 
#------------------------------------------------------ 843 class_say_replace_15
class Animal { has $.name; has $.legs; }
class Dog is Animal { has $.breed; }
 my $d = Dog.new(name => "Rex", legs => 4, breed => "Lab"); my $c = $d.clone(breed => "Pug"); say($c.name); say($c.legs); say($c.breed); 
#------------------------------------------------------ 844 class_say_replace_26
class Animal { has $.name; }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.name); 
#------------------------------------------------------ 845 class_say_replace_27
role HasId { has $.id; }
class Widget does HasId { }
 my $w = Widget.new(id => 42); say($w.id); 
#------------------------------------------------------ 846 class_say_replace_29
class Animal { has $.name; }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.WHAT); 
#--------------------------------------------------------------- 847 for_range_1
my $x = 0;
for 1..3 -> $v { $x = $x + $v }
say $x;
#-------------------------------------------------------------- 848 for_range_11
my $t = 0;
for 1..3 -> $x { $t = $t + $x; }
say $t;
#------------------------------------------------------------ 849 junction_say_1
    my $x = 3;
    if ($x == all(3, 3, 3)) { say('all-hit'); }
    if ($x == all(3, 3, 4)) { say('all-miss-BAD'); }
#------------------------------------------------------------ 850 junction_say_2
    my $x = 3;
    if ($x == any(1, 2, 3)) { say('any-hit'); }
    if ($x == any(7, 8, 9)) { say('any-miss-BAD'); }
#------------------------------------------------------------ 851 junction_say_3
    my $x = 3;
    if ($x == none(7, 8, 9)) { say('none-hit'); }
    if ($x == none(1, 3, 5)) { say('none-miss-BAD'); }
#------------------------------------------------------------ 852 junction_say_4
    my $x = 3;
    if ($x == one(1, 3, 5)) { say('one-hit'); }
    if ($x == one(3, 3, 5)) { say('one-miss-BAD'); }
#--------------------------------------------------------- 853 multi_sub_array_2
multi sub f($a, *@r) { say "V:" ~ @r.elems; }
multi sub f($a) { say "S"; }
f(1);
#----------------------------------------------------------- 854 multi_sub_say_1
multi sub greet($a) { say("one: " ~ $a); }
multi sub greet($a, $b) { say("two: " ~ $a ~ "," ~ $b); }
 greet("x"); greet("y", "z"); 
#----------------------------------------------------------- 855 multi_sub_say_5
multi sub describe(Int $x) { say("integer " ~ $x); }
multi sub describe(Str $x) { say("string " ~ $x); }
 describe(42); describe("hello"); 
#-------------------------------------------------------------------- 856 sub_24
sub f($x) { if $x { return 1 } else { return 2 } }
say f(0);
say f(1);
#-------------------------------------------------------------------- 857 sub_36
sub boom() { say "BOOM"; return 9; }
sub safe() { return 5; }
my $x = 1 ?? safe() !! boom(); say $x;
#--------------------------------------------------- 858 class_method_replace_16
class C { method m($v = 42) { return $v } }
my $o = C.new;
say $o.m();
say $o.m(8);
#----------------------------------------------- 859 class_method_say_replace_35
class A { method TWEAK() { say("A"); } }
class B is A { method TWEAK() { say("B"); } }
class C is B { method TWEAK() { say("C"); } }
 my $c = C.new(); 
#----------------------------------------------------------- 860 for_range_say_6
    for grep { $_ > 2 }, 1..5 -> $v {
        say($v);
    }
    say('done');
#----------------------------------------------------------- 861 for_range_say_7
    for map { $_ * 2 }, 1..3 -> $v {
        say($v);
    }
    say('done');
#------------------------------------------------------- 862 join_range_array_10
my @a = 1,2,3,4,5;
my $lo = 1;
my $hi = 3;
say @a[$lo..$hi].join(",");
#---------------------------------------- 863 ladder__rung07_subs_multi_dispatch
multi sub area($side) { return $side * $side; }
multi sub area($w, $h) { return $w * $h; }
say area(4);
say area(3, 5);
#------------------------------------------------------------- 864 sub_say_try_1
sub boomer() { die('deep'); say('sub-after'); };

    try { boomer(); say('body-after'); }; CATCH { say($_); };
    say('after');
#------------------------------------------------------- 865 test_stmt_pfx_FIRST
for 1..3 -> $i {
    FIRST { say("first"); }
    say($i);
}
#-------------------------------------------------------- 866 test_stmt_pfx_LAST
for 1..3 -> $i {
    LAST { say("last"); }
    say($i);
}
#-------------------------------------------------------- 867 test_stmt_pfx_NEXT
for 1..3 -> $i {
    NEXT { say("next"); }
    say($i);
}
#---------------------------------- 868 ladder__rung19_block_methcall_on_a_range
say (1..9).grep({ $_ %% 3 });
say (1..4).map({ $_ * 2 });
say (1..4).elems;
say (^4).sum;
say [+] (1..999).grep({ $_ % 3 == 0 || $_ % 5 == 0 });
#------------------------------------------------------------- 869 say_try_die_5
    try {
        try { die('a'); }; CATCH { die('b'); };
        say('unreached');
    }; CATCH { say('outer:' ~ $_); };
    say('after');
#------------------------------------------------------ 870 test_nested_if_while
my $i = 0;
if ($i == 0) {
    while ($i < 3) { $i = $i + 1; }
}
say($i);
#---------------------------------------------------- 871 ladder__rung13_classes
class Greeter {
    method greet {
        return "hello";
    }
}
my $g = Greeter.new;
say $g.greet;
#------------------------------ 872 ladder__rung13_classes_named_arg_constructor
class Sum {
    has $.a;
    has $.b;
    method total { $!a + $!b }
}
my $s = Sum.new(:a(39), :b(3));
say $s.total;
#------------------------------------------- 873 ladder__rung14_roles_smartmatch
role Flyer { }
class Bird does Flyer { }
class Fish { }
my $b = Bird.new;
my $f = Fish.new;
say $b ~~ Flyer;
say $f ~~ Flyer;
#------------------------------------------------------------- 874 say_try_die_7
    try {
        try { die('inner'); CATCH { default { say('in:' ~ $_); } } }
        say('mid');
        die('outer');
        CATCH { default { say('out:' ~ $_); } }
    }
    say('after');
#------------------------------------------------------ 875 ladder__rung14_roles
role Greeter {
    method greet {
        return "hi from role";
    }
}
class Widget does Greeter { }
my $w = Widget.new;
say $w.greet;
#--------------------------------------------- 876 ladder__rung14_roles_override
role Greeter {
    method greet { return "role hello" }
}
class Special does Greeter {
    method greet { return "class hello" }
}
my $s = Special.new;
say $s.greet;
#------------------------------------------------------------- 877 sub_for_say_1
# rk_gather.raku — RK-21: gather/take as BB_PUMP coroutine
sub main() {
    for gather { take(10); take(20); take(30); } -> $v {
        say($v);
    }
    say('done');
}
main();
#- 878 ladder__rung15_blocks_reduce_with_a_block_of_three_or_more_parameters_takes_that_many_items_a_step
my @array = 1..9;
say (@array.reduce: { $^a + $^b * $^c });
say reduce { $^a + $^b * $^c }, 1..9;
say (1, 2, 3, 4).reduce: { $^a ~ $^b ~ $^c ~ $^d };
say (1..5).reduce: { $^a + $^b * $^c };
say (1..6).reduce: { $^a + $^b };
say (1..4).reduce: { $^a * $^b };
my @w = <a b c d e>;
say @w.reduce: { $^a ~ "-" ~ $^b ~ $^c };
#- 879 ladder__rung06_control_with_orwith_and_without_test_definedness_and_bind_the_topic
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
#- 880 ladder__rung07_subs_an_array_parameter_assigned_to_a_scalar_or_chosen_by_a_ternary
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
#- 881 ladder__rung08_for_a_destructuring_signature_takes_types_smileys_and_traits
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
#- 882 ladder__rung09_regex_the_subst_method_takes_a_closure_replacement_a_pointy_block_and_g_on_a_string_needle
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
#------------------------------------------- 883 ladder__rung14_roles_attributes
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
#------------------------------------------ 884 ladder__rung14_roles_composition
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
#- 885 ladder__rung02_arithmetic_a_division_by_zero_builds_a_zero_denominator_rat_as_rakudo_does
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
#---------------------------------- 886 ladder__rung13_classes_private_attribute
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
#- 887 ladder__rung04_arrays_an_array_literal_of_one_iterable_argument_spreads_it_the_single_argument_rule
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
#------------- 888 ladder__rung09_string_methods_raku_regex_classes_and_captures
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
#--------------------------------------------------------- 889 sub_say_replace_1
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
#- 890 ladder__rung04_arrays_a_non_literal_left_of_xx_is_a_thunk_evaluated_once_per_repetition
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
#- 891 ladder__rung19_block_methcall_sort_by_a_two_arg_comparator_block_past_64_elements
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
#----------------------------------------------------------------- 892 sub_say_5
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
#--------------------------------------------------------- 893 benchmark_spinner
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
#- 894 ladder__rung15_blocks_a_my_declaration_without_a_value_keeps_what_a_begin_check_init_or_enter_phaser_stored
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
#- 895 ladder__rung07_subs_a_literal_passed_to_an_is_rw_parameter_throws_x_parameter_rw
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
#- 896 ladder__rung02_arithmetic_rat_smartmatch_truthiness_function_forms_and_type_checks
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
#- 897 ladder__rung07_subs_a_sub_declared_in_a_module_is_called_and_referenced_by_its_qualified_name_and_through_our
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
#- 898 ladder__rung14_roles_a_role_body_lexical_and_a_type_capture_as_the_target_of_new_are_read_by_its_methods
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
#--------------------------------------------------- 899 sub_range_say_replace_1
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
#- 900 ladder__rung12_exceptions_a_die_in_the_condition_of_if_or_unless_aborts_the_statement
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
#------------------------------------------------- 901 benchmark_rc-dragon-curve
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
#- 902 ladder__rung07_subs_a_multi_family_constrained_by_subsets_and_where_clauses_dispatches
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
#--------------------------------------------------- 903 sub_array_say_replace_1
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
#------------------------------------------------------- 904 scrip_test_rk_str22
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
#------------------------------------------------- 905 class_array_say_replace_1
class Stack { has @.items; }
 my $s = Stack.new(); my @e = $s.items; say(@e.elems); 
#------------------------------------------------- 906 class_array_say_replace_3
class Stack { has @.items; }
 my @v = 10, 20, 30; my $t = Stack.new(items => @v); my @i = $t.items; say(@i.elems); say(arr_get(@i, 1)); 
#-------------------------------------------------- 907 class_hash_say_replace_1
class Config { has %.opts; }
 my %seed = ''; hash_set(%seed, 'lang', 'Raku'); my $d = Config.new(opts => %seed); my $h2 = $d.opts; say(hash_get($h2, 'lang')); 
#----------------------------------------------- 908 class_method_say_replace_10
class Q { has $.m; has $.n; method BUILD(:$m, :$n) { $!m = $m; $!n = $n; } }
 my $q = Q.new(m => 7, n => 8); say($q.m); say($q.n); 
#----------------------------------------------- 909 class_method_say_replace_55
class Box { has $.w; has $.area; method TWEAK() { $!area = $!w * $!w; } }
 my $b = Box.new(w => 5); say($b.area); 
#----------------------------------------------- 910 class_method_say_replace_56
class Widget { has $.id; method TWEAK() { say("tweaked"); } }
 my $w = Widget.new(id => 1); say("done"); 
#------------------------------------------------------ 911 class_say_replace_11
class C { has $.x; has $.y; submethod BUILD(:$x) { $!x = $x; } }
 my $c = C.new(x => 1, y => 99); say($c.x); say("[" ~ $c.y ~ "]"); 
#----------------------------------------------------------- 912 for_array_say_3
my @a = 10,20,30;
for @a -> $v { say($v); }
#----------------------------------------------------------- 913 for_array_say_5
my @a = 7,8,9;
for @a { say($_); }
#------- 914 ladder__rung08_for_redo_with_a_label_restarts_the_labelled_for_body
my $n = 0; my $r = 0; FOO: for 1..2 { $r++; redo FOO if $n++ < 1 }
say $r;
#------------------------------------------------- 915 class_array_say_replace_2
class Base { has @.log; }
class Derived is Base { has $.id; }
 my $d = Derived.new(id => 7); my @l = $d.log; say(@l.elems); 
#----------------------------------------------- 916 class_method_grep_replace_1
class C { method grep() { return 8 } }
my $o = C.new;
say $o.grep();
#------------------------------------------------ 917 class_method_map_replace_1
class C { method map($x) { return $x + 1 } }
my $o = C.new;
say $o.map(4);
#---------------------------------------------- 918 class_method_range_replace_6
role R { method needed() {...} }
class C does R { }
 my $c = C.new(); say("made"); 
#--------------------------------------------------- 919 class_method_replace_18
class Sayer { has $.t; method go() { say $!t } }
my $s = Sayer.new(t => "done");
if True { $s.go() }
#--------------------------------------------------- 920 class_method_replace_19
class C { has $.x; method greet() { return 3; } }
my $o = C.new;
say $o.greet();
#----------------------------------------------- 921 class_method_say_replace_20
class Base { has $.x is rw; }
class Sub is Base { method bump() { self.x = self.x + 5; } }
 my $s = Sub.new(x => 10); $s.x = 20; say($s.x);
#----------------------------------------------- 922 class_method_say_replace_29
role Greet { method hello() { return "hi"; } }
class Svc does Greet { method fetch() { return "ok"; } }
 my $s = Svc.new(); say($s.^methods); 
#----------------------------------------------- 923 class_method_say_replace_51
role R { method who() { return "role"; } }
class C does R { method who() { return "class"; } }
 my $c = C.new(); say($c.who()); 
#------------------------------------------------ 924 class_method_say_replace_9
class A { has $.a; submethod BUILD(:$a) { say("buildA"); $!a = $a; } }
class B is A { has $.b; submethod BUILD(:$b) { say("buildB"); $!b = $b; }; method TWEAK() { say("tweakB"); } }
 my $o = B.new(a => 1, b => 2); say($o.a); say($o.b); 
#----------------------------------------------- 925 class_method_sort_replace_2
class C { method sort() { return 99 } }
my $o = C.new;
say $o.sort;
#--------------------------------------------------------- 926 for_range_array_1
my @a = 0 xx 3;
for 0..2 -> $i { @a[$i] = $i * 10 }
say @a[0]; say @a[1]; say @a[2];
#---------------------------------------------------------- 927 for_range_hash_1
my %h;
for 1..2 -> $i { %h{$i} = $i * 100 }
say %h{1}; say %h{2};
#----------------------------------------------------------- 928 multi_sub_say_2
multi sub process(Int:D $x) { say("defined int: " ~ $x); }
multi sub process($x) { say("other"); }
 process(42); my $u; process($u); 
#------------------------------------------------------------- 929 say_try_die_6
    my $n = 2;
    try { if ($n > 1) { die('cond'); }; say('no'); }; CATCH { say($_); };
    say('after');
#--------------------------------------------------------------- 930 sub_array_9
sub a($x, *@r)  { return @r.elems; }
sub b($x, **@r) { return @r.elems; }
say a(0,1,2,3) ~ "|" ~ b(0,1,2,3);
#----------------------------------------------- 931 class_method_say_replace_31
class Greeter { method hello() { return "hi"; } }
class Farewell { method bye() { return "bye"; } }
class Both is Greeter is Farewell { }
 my $b = Both.new(); say($b.hello()); say($b.bye()); 
#----------------------------------------------- 932 class_method_say_replace_33
class A { method who() { return "A"; } }
class B is A { }
class C is B { }
 my $c = C.new(); say($c.who()); 
#----------------------------------------------- 933 class_method_say_replace_34
class A { method who() { return "A"; } }
class B is A { method who() { return "B"; } }
class C is B { }
 my $c = C.new(); say($c.who()); 
#----------------------------------------------- 934 class_method_say_replace_47
class Base { method who() { return "base"; } }
role R { method who() { return "role"; } }
class C is Base does R { }
 my $c = C.new(); say($c.who()); 
#----------------------------------------------- 935 class_method_say_replace_48
role A { method m() { return "a"; } }
role B { method m() { return "b"; } }
class C does A does B { method m() { return "C"; } }
 my $c = C.new(); say($c.m()); 
#----------------------------------------------- 936 class_method_say_replace_49
role A { method m() { return "a"; } }
role B { method m() { return "b"; } }
class C does A does B { }
 my $c = C.new(); say($c.m()); 
#----------------------------------------------- 937 class_method_say_replace_52
role A { method foo() { return "f"; } }
role B { method bar() { return "b"; } }
class C does A does B { }
 my $c = C.new(); say($c.foo()); say($c.bar()); 
#--------------------------------------------------- 938 class_sub_say_replace_1
class Animal { has $.n; }
class Dog is Animal { }
sub describe(Animal $a) { say($a.n); }
 my $d = Dog.new(n => 5); describe($d); 
#----------------------------------------------------------- 939 for_array_say_4
my @a = 1,2,3;
my $s = 0;
for @a -> $v { $s = $s + $v; }
say($s);
#----------------------------------------------- 940 class_method_say_replace_17
class A { method greet() { return "A"; } }
class B is A { method greet() { return "B"; } }
class C is A { method greet() { return "C"; } }
class D is B is C { }
 my $d = D.new(); say($d.greet()); 
#------------------------------------------------- 941 class_multi_sub_replace_1
class Animal { }
class Dog is Animal { }
multi sub describe(Animal $a) { say("an animal"); }
multi sub describe(Dog $d) { say("a dog"); }
 my $d = Dog.new(); describe($d); 
#------------------------------------------------------ 942 class_say_replace_17
class A { has $.base; }
class B is A { }
class C is A { has $.mid; }
class D is B is C { }
 my $d = D.new(base => "X", mid => "Y"); say($d.base ~ $d.mid); 
#------------------------------------------------- 943 for_range_array_replace_1
my @a = (1,2,3);
for 0..4 -> $i {
    say @a[$i];
}
say "done";
#---- 944 ladder__rung07_subs_a_core_routine_written_without_arguments_is_a_call
my $r = slip;
say $r.elems;
say [slip].elems;
say "ok" if [] ~~ [slip];
try { await };
say "after";
#------------------------------------------------------- 945 token_say_replace_1
grammar G {
    token TOP { \d+ }
}

    my $r = G.parse("abc");
    if ($r) { say("matched"); } else { say("nomatch"); }
#----------------------------------------------- 946 class_method_sort_replace_1
class Widget {
    method sort() { return "custom-sort"; }
    method reverse() { return "custom-rev"; }
}
my $w = Widget.new;
say $w.sort;
say $w.reverse;
#-- 947 ladder__rung04_arrays_a_seq_over_an_infinite_range_is_lazy_and_says_dots
my $evens = (1..*).map({ $_ * 2 });
say $evens.is-lazy;
say $evens.head(4);
say (1..*).map({ $_ * 3 }).first({ $_ > 10 });
say (0, (1..*).grep({ $_ %% 5 }));
say (1..4).map({ $_ + 1 }).is-lazy;
say (1..*).map({ $_ });
#- 948 ladder__rung04_arrays_an_array_is_one_mutable_object_an_element_store_writes_it_in_place_for_every_name_that_holds_it
my @a = 1,2,3; my @b := @a; @a[0] = 5; say @b;
my $r = @a; $r[1] = 7; say @a;
my @c = @a; @c[2] = 0; say @a;
sub f(@x) { @x[0] = 99 }; f(@a); say @a;
for ^2 { my @l = 1,2; @l[0]++; say @l }
my @n = [1,2],[3,4]; my @o = @n; @o[0][0] = 50; say @n;
my @p; @p[3] = 1; say @p.elems; @a.push(4); say @b;
#- 949 ladder__rung13_classes_a_class_literal_written_with_leading_colons_is_the_class_type_object
class Foo {}
my $t1 = ::Foo;
say $t1.^name;
say $t1 ~~ Foo;
say ($t1 === Foo);
my $x = Foo;
say $x === ::Foo;
say ::Foo.^name;
#- 950 ladder__rung15_blocks_a_list_holding_a_lazy_gather_renders_after_its_seq_is_reified_not_during
sub row($n) { ("row" ~ $n, gather for ^60 -> $i { take "cell-" ~ $n ~ "-" ~ $i }) }
my $total = 0;
for ^200 -> $n {
    my $s = row($n).Str;
    $total += $s.chars;
}
say $total;
say row(7).raku.chars;
say row(3)[1][59];
#- 951 ladder__rung08_for_a_pointy_block_body_resumes_the_range_at_its_own_depth_each_pass
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
#---------------------------------------------- 952 benchmark_divide-and-conquer
my \SCALE = 10;
my \FANOUT = 2;

sub divide-and-conquer($n, $depth) {
    say "$depth: $n" if 0;
    $depth <= 0 ?? $n !! [+] await do for ^FANOUT {
        start { divide-and-conquer($n / FANOUT, $depth - 1) }
    }
}

say divide-and-conquer(1.0, SCALE);
#- 953 ladder__rung08_for_a_rw_loop_variable_and_the_topic_write_back_to_the_array_and_is_copy_does_not
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
#------------- 954 ladder__rung04_arrays_in_numeric_context_count_their_elements
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
#- 955 ladder__rung07_subs_an_is_rw_parameter_writes_back_to_a_scalar_or_an_element_argument
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
#--------------------------------------------------------- 956 sub_say_replace_2
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
#-------- 957 ladder__rung01_variables_compound_assignment_and_element_increment
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
#--------------------------------------------------- 958 sub_while_say_replace_1
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
#- 959 ladder__rung12_exceptions_try_yields_a_code_value_call_and_a_sub_whose_last_statement_is_a_try_returns_it
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
#---------------------------- 960 ladder__rung13_classes_nqp_create_and_bindattr
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
#- 961 ladder__rung04_arrays_hash_of_a_list_flattens_it_and_an_odd_number_of_elements_throws_x_hash_store_oddnumber
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
#- 962 ladder__rung05_hashes_a_colon_pair_used_as_a_value_is_a_pair_in_a_hash_a_list_and_a_scalar
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
#- 963 ladder__rung13_classes_a_forward_declared_class_stub_gives_way_to_the_full_class_and_typed_attributes_stay_attributes
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
#------------------------------------------------ 964 sub_junction_say_replace_1
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
#- 965 ladder__rung03_strings_the_method_assign_form_inside_an_expression_stores_and_yields_the_new_value
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
#- 966 ladder__rung04_arrays_push_unshift_append_prepend_splice_shift_and_pop_on_a_number_die_and_push_of_an_array_literal_lives
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
#- 967 ladder__rung01_variables_a_coercion_type_on_a_variable_or_a_parameter_converts_the_value_it_is_given
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
#------------------------------------------------------ 968 when_while_replace_1
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
#------------ 969 ladder__rung02_arithmetic_power_assigned_and_compound_assigned
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
#----------------------------------------------------- 970 sub_for_say_replace_1
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
#- 971 ladder__rung13_classes_an_rw_accessor_takes_compound_assignment_and_increment_and_a_readonly_one_dies
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
#----------------------------------------------------- 972 sub_say_try_replace_1
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
#------------------------------------------------------- 973 scrip_test_rk_given
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
#------------------------ 974 ladder__rung02_arithmetic_fatrat_keeps_every_digit
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
#----------------------------------------------- 975 class_method_say_replace_19
class Counter { has $.n; method add($k) { return Counter.new(n => $.n + $k); } }
 my $c = Counter.new(n => 10); $c .= add(5); say($c.n); 
#------------------------------------------------ 976 class_method_say_replace_3
class Box { has $.v; method v() { return $!v + 100; } }
 my $b = Box.new(v => 5); say($b.v()); 
#----------------------------------------------- 977 class_method_say_replace_30
class Temperature { has $.celsius; method new($c) { return self.bless(celsius => $c); } }
 my $t = Temperature.new(37); say($t.celsius); 
#----------------------------------------------- 978 class_method_say_replace_37
class Stack { has @!items; method size() { return 1; } }
 my $s = Stack.new(); say($s.items); 
#----------------------------------------------- 979 class_method_say_replace_38
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.code()); 
#----------------------------------------------- 980 class_method_say_replace_39
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.code); 
#----------------------------------------------- 981 class_method_say_replace_42
class Secret { has $!code; method reveal() { return $!code; } }
 my $s = Secret.new(code => 42); say($s.reveal()); 
#----------------------------------------------- 982 class_method_say_replace_45
class Cfg { has %!opts; method ok() { return 1; } }
 my $c = Cfg.new(); say($c.opts); 
#------------------------------------------------ 983 class_method_say_replace_5
class Counter { has $.n; method bump() { $!n = $!n + 1; }; method val() { return $!n; } }
 my $c = Counter.new(n => 0); $c.bump(); $c.bump(); $c.bump(); say($c.val()); 
#----------------------------------------------- 984 class_method_say_replace_57
class C { has $.x; method make($v) { return self.bless(x => $v); } }
 my $o = C.make(9); say($o.x); 
#------------------------------------------------ 985 class_method_say_replace_8
class T { has $.c; method mk() { return self.bless(c => 9); } }
 my $t = T.mk(); say($t.c); 
#----------------------------------------------------------- 986 for_range_say_8
    try { for 1..3 -> $i { say($i); die('lp'); } }; CATCH { say($_); };
    say('after');
#----------------------------------------------------------- 987 sub_for_array_2
sub f(*@r) { my $o = ""; for @r -> $x { $o = $o ~ $x ~ " "; }; say $o.trim; };
f("a","b");
#------------------------------------------------ 988 class_method_for_replace_1
class C { method go() { say "g" } }
my $o = C.new;
$o.go() for 1..2;
#---------------------------------------------- 989 class_method_multi_replace_1
class C { multi method sort(Int $x) { return $x * 10 } }
my $o = C.new;
say $o.sort(4);
#---------------------------------------------- 990 class_method_range_replace_4
role R { method needed() {...} }
class C does R { method needed() { return 7; } }
 my $c = C.new(); say($c.needed()); 
#----------------------------------------------- 991 class_method_say_replace_11
class A { method g() { return "A"; } }
class B is A { method g() { return "B+" ~ callsame(); } }
 my $b = B.new(); say($b.g()); 
#----------------------------------------------- 992 class_method_say_replace_13
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { return "B:" ~ $n ~ "/" ~ callwith(99); } }
 my $b = B.new(); say($b.g(5)); 
#----------------------------------------------- 993 class_method_say_replace_14
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { my $m = $n + 10; return "B:" ~ $n ~ "/" ~ callwith($m); } }
 my $b = B.new(); say($b.g(5)); 
#------------------------------------------------ 994 class_method_say_replace_2
class Animal { has $.name; }
class Dog is Animal { method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.name()); 
#----------------------------------------------- 995 class_method_say_replace_23
class Engine { method start() { return "vroom"; }; method stop() { return "halt"; } }
class Car { has $.engine handles <start stop>; has $.name; }
 my $e = Engine.new(); my $c = Car.new(engine => $e, name => "tesla"); say($c.start()); say($c.stop()); say($c.name); 
#----------------------------------------------- 996 class_method_say_replace_26
class Adder { method add($n) { return $n + 100; } }
class Wrap { has $.impl handles <add>; }
 my $a = Adder.new(); my $w = Wrap.new(impl => $a); say($w.add(5)); 
#----------------------------------------------- 997 class_method_say_replace_27
class Animal { has $.name; }
class Dog is Animal { method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.name); 
#----------------------------------------------- 998 class_method_say_replace_28
class Animal { has $.name; method legs() { return 4; } }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d.legs()); 
#----------------------------------------------- 999 class_method_say_replace_36
class A { method g($n) { return "A:" ~ $n; } }
class B is A { method g($n) { return "B+" ~ nextsame(); } }
 my $b = B.new(); say($b.g(7)); 
#----------------------------------------------- 1000 class_method_say_replace_4
class Animal { has $.legs = 4; }
class Dog is Animal { method describe() { return $.legs; } }
 my $d = Dog.new(); say($d.describe());
#---------------------------------------------- 1001 class_method_say_replace_40
class Base { has $!secret; method peek() { return $!secret; } }
class Derived is Base { }
 my $d = Derived.new(secret => 5); say($d.secret()); 
#---------------------------------------------- 1002 class_method_say_replace_41
class Base { has $!secret; method peek() { return $!secret; } }
class Derived is Base { }
 my $d = Derived.new(secret => 5); say($d.peek()); 
#---------------------------------------------- 1003 class_method_say_replace_50
role Greet { method hello() { return "hi"; } }
class Dog does Greet { has $.name; }
 my $d = Dog.new(name => "Rex"); say($d.hello()); 
#----------------------------------------------- 1004 class_method_say_replace_6
class Base { has $.id is required; }
class Sub is Base { method who() { return $.id; } }
 my $s = Sub.new(); say($s.who());
#----------------------------------------------- 1005 class_method_say_replace_7
class Base { has $.id is required; }
class Sub is Base { method who() { return $.id; } }
 my $s = Sub.new(id => 5); say($s.who());
#----------------------------------------------- 1006 class_method_sub_replace_1
class Base { has $.x; method TWEAK() { say("base-tweak"); } }
class Sub is Base { has $.y; method TWEAK() { say("sub-tweak"); } }
 my $s = Sub.new(x => 1, y => 2); 
#-------------------------------------------------------- 1007 multi_sub_array_1
multi sub f($a, *@r) { return "V:" ~ @r.elems; }
multi sub f($a) { return "S"; }
say f(1) ~ "|" ~ f(1,2,3);
#---------------------------------------------------------- 1008 multi_sub_say_3
multi sub init(Str:U $x) { say("uninitialized"); }
multi sub init(Str $x) { say("has value: " ~ $x); }
 my $u; init($u); 
#--------------------------------------------- 1009 class_method_range_replace_5
role Need { method act() {...} }
role Give { method act() { return "ok"; } }
class C does Need does Give { }
 my $c = C.new(); say($c.act()); 
#---------------------------------------------- 1010 class_method_say_replace_12
class A { method g() { return "A"; } }
class B is A { method g() { return "B+" ~ callsame(); } }
class C is B { method g() { return "C+" ~ callsame(); } }
 my $c = C.new(); say($c.g()); 
#---------------------------------------------- 1011 class_method_say_replace_24
class Engine { method go() { return "GO"; } }
class Vehicle { has $.engine handles <go>; }
class Truck is Vehicle { }
 my $e = Engine.new(); my $t = Truck.new(engine => $e); say($t.go()); 
#---------------------------------------------- 1012 class_method_say_replace_25
class L { method left() { return "LL"; } }
class R { method right() { return "RR"; } }
class Pair { has $.l handles <left>; has $.r handles <right>; }
 my $ll = L.new(); my $rr = R.new(); my $p = Pair.new(l => $ll, r => $rr); say($p.left()); say($p.right()); 
#---------------------------------------------- 1013 class_method_say_replace_32
class A { has $.name; }
class B is A { }
class C is B { method tag() { return "C"; } }
 my $c = C.new(name => "Rex"); say($c.name); 
#- 1014 ladder__rung08_for_next_in_a_for_over_a_range_continues_with_the_next_element
my $s = ""; for 1..4 { next if $_ == 2; $s ~= $_ }; say $s;
my $t = ""; for 1..4 { next if $_ == 2; $t ~= "x" }; say $t;
my $c = 0; for 1..3 { for 1..3 { next if $_ == 2; $c++ } }; say $c;
my $u = ""; for 1..4 { last if $_ == 3; $u ~= $_ }; say $u;
#--------------------------------------------- 1015 class_method_multi_replace_2
class Calc {
    multi method add(Int $a) { return $a; }
    multi method add(Int $a, Int $b) { return $a + $b; }
}
 my $c = Calc.new(); say($c.add(5)); say($c.add(3, 4)); 
#---------------------------------------------- 1016 class_method_say_replace_16
class A { method greet() { return "A"; } }
class B is A { method greet() { return "B>" ~ callsame(); } }
class C is A { method greet() { return "C>" ~ callsame(); } }
class D is B is C { }
 my $d = D.new(); say($d.greet()); 
#---------------------------------------------------------- 1017 while_say_try_1
    my $i = 0;
    try {
        while ($i < 5) { $i = $i + 1; say($i); if ($i == 2) { die('w'); } }
    }; CATCH { say($_); };
    say('after');
#----------------------- 1018 ladder__rung19_block_methcall_grep_and_map_listops
for grep { $_ > 2 }, 1..5 -> $v { say $v }
my @g = grep { $_ %% 2 }, 1..8;
say @g;
my @a = 4, 5, 6;
say grep { $_ != 5 }, @a;
say (map { $_ * 10 }, @a).elems;
#--------------------------------------------- 1019 class_method_multi_replace_4
class Animal { }
class Dog is Animal { }
class Handler {
    multi method greet(Animal $a) { return "an animal"; }
    multi method greet(Dog $d) { return "a dog"; }
}
 my $h = Handler.new(); my $d = Dog.new(); say($h.greet($d)); 
#----------------------- 1020 ladder__rung04_arrays_cross_zip_flat_and_unpacking
my $k = 0;
for flat(1 .. 3 X 1 .. 2) -> $i, $j { $k += $i * 10 + $j; say "$i $j" }
say $k;
for (1 .. 2 X 1 .. 2) -> ($i, $j) { say "p $i $j" }
for 1..4 -> $a, $b { say "$a,$b" }
my @z = flat((1,2) Z (3,4));
say @z.join(",");
for (1,2 X 3,4) -> ($a, $b) { say "c $a $b" }
for 1 .. 2 X 7 -> ($a, $b) { say "q $a $b" }
#-------- 1021 ladder__rung15_blocks_map_grep_first_named_sub_and_n_arity_blocks
sub dbl($x) { $x * 2 }
sub odd($x) { $x % 2 }
my @a = 1, 2, 3, 4, 5, 6;
say @a.map(&dbl);
say @a.grep(&odd);
say @a.first(&dbl);
say @a.map(-> $x, $y { $x + $y });
say @a.map({ $^a * $^b });
say @a.map(-> $x, $y, $z { "$x$y$z" }).join(",");
#--------------------------------------- 1022 ladder__rung13_classes_inheritance
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
#------------------- 1023 ladder__rung16_bool_bool_pick_and_bool_roll_are_a_coin
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
#-------------------------------------------------- 1024 sub_for_range_replace_2
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
#- 1025 ladder__rung09_regex_a_smartmatch_against_a_code_value_held_in_a_hash_element_or_a_variable_calls_it
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
#------------------------------------------------- 1026 scrip_test_rk_unique_sum
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
#- 1027 ladder__rung13_classes_a_typed_declaration_with_dot_assign_calls_the_type_and_a_colon_variable_pair_is_a_named_pair
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
#---------------------------------------------------------- 1028 sub_for_array_1
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
#-------------- 1029 ladder__rung03_strings_the_q_family_quotes_build_their_text
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
#- 1030 ladder__rung13_classes_a_dollar_bang_or_dollar_dot_attribute_interpolates_in_a_string
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
#-- 1031 ladder__rung09_regex_substitution_and_transliteration_agree_with_rakudo
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
#- 1032 ladder__rung13_classes_an_attribute_array_element_is_assigned_in_place_inside_a_method_and_its_loops
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
#- 1033 ladder__rung01_variables_a_typed_variable_that_a_block_or_closure_changes_is_the_same_variable
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
#- 1034 ladder__rung04_arrays_a_bound_scalar_and_a_bound_element_share_one_container_with_what_they_bind
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
#--------------------------------------- 1035 benchmark_rc-forest-fire-stringify
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
#--------------------------------------------------- 1036 class_method_replace_1
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
#-------------------------------------------------- 1037 sub_for_array_replace_1
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
#- 1038 ladder__rung04_arrays_a_caret_range_keeps_its_endpoints_numifies_and_smartmatches_as_rakudo_does
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
#- 1039 ladder__rung13_classes_can_returns_invokable_methods_found_up_the_parents_and_knows_a_builtin_methods_name
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
#----------------------------------------------- 1040 benchmark_point_class_add2
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
#------------------------------------------ 1041 benchmark_send-more-money-loops
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
#--------------------------------------------------------- 1042 smartmatch_say_4
 my $s = "hello"; if ($s ~~ /$<word>=(<[a..z]>+)/) { say($<word>); } 
#--------------------------------------------- 1043 class_method_array_replace_1
class Bag { has @.items; method count() { my @c = @.items; return @c.elems; } }
 my @v = 1, 2, 3, 4; my $b = Bag.new(items => @v); say($b.count()); 
#---------------------------------------------- 1044 class_method_say_replace_22
class Point { has $.x; has $.y; method gist() { return "Point(" ~ $.x ~ ", " ~ $.y ~ ")"; } }
 my $p = Point.new(x => 3, y => 4); say($p); 
#---------------------------------------------- 1045 class_method_say_replace_43
class Mix { has $.pub; has $!prv; method both() { return $.pub ~ "-" ~ $!prv; } }
 my $m = Mix.new(pub => "A", prv => "B"); say($m.both()); 
#---------------------------------------------- 1046 class_method_say_replace_44
class Mix { has $.pub; has $!prv; method both() { return $.pub ~ "-" ~ $!prv; } }
 my $m = Mix.new(pub => "A", prv => "B"); say($m.pub); 
#---------------------------------------------- 1047 class_method_say_replace_46
class P { has $.x; method gist() { return "G" ~ $.x; }; method Str() { return "S" ~ $.x; }; method raku() { return "R" ~ $.x; } }
 my $p = P.new(x => 7); say($p.gist()); say($p.Str()); say($p.raku()); 
#---------------------------------------------- 1048 class_method_say_replace_53
class Point { has $.x; method Str() { return "STR:" ~ $.x; } }
 my $p = Point.new(x => 3); say($p ~ "!"); 
#---------------------------------------------- 1049 class_method_say_replace_54
class P { has $.x; method Str() { return "S" ~ $.x; } }
 my $p = P.new(x => 9); say("val=$p"); 
#----------------------------------------------- 1050 class_method_for_replace_2
class Ctr { has $.n; method emit($x) { say $x } }
my $c = Ctr.new(n => 0);
for 1..3 -> $i { $c.emit($i) }
#----------------------------------------------- 1051 class_method_for_replace_3
class Box { has $.v; method show() { say $!v } }
my $b = Box.new(v => 7);
for 1..2 { $b.show() }
#----------------------------------------------- 1052 class_method_for_replace_4
class Box2 { has $.v; method show() { say $!v } }
my $b = Box2.new(v => 9);
for 1..2 { $b.show(); }
#--------------------------------------------- 1053 class_method_range_replace_1
class Animal { has $.name; method speak() { return "..."; } }
class Dog is Animal { method speak() { return "Woof"; } }
 my $d = Dog.new(name => "Rex"); say($d.speak()); 
#--------------------------------------------- 1054 class_method_range_replace_2
class Animal { has $.name; method speak() { return "..."; } }
class Dog is Animal { has $.breed; }
 my $d = Dog.new(name => "Rex", breed => "Lab"); say($d.^attributes); 
#--------------------------------------------- 1055 class_method_range_replace_3
class Animal { has $.name; method speak() { return "..."; }; method eat() { return "om"; } }
class Dog is Animal { has $.breed; method bark() { return "woof"; } }
 my $d = Dog.new(name => "Rex", breed => "Lab"); say($d.^methods); 
#---------------------------------------------- 1056 class_method_say_replace_21
class Animal { has $.name; method gist() { return "DOG:" ~ $.name; } }
class Dog is Animal { }
 my $d = Dog.new(name => "Rex"); say($d); 
#--------------------------------------------- 1057 class_method_multi_replace_5
class Printer {
    multi method show(Int $x) { return "int:" ~ $x; }
    multi method show(Str $s) { return "str:" ~ $s; }
}
 my $p = Printer.new(); say($p.show(42)); say($p.show("hi")); 
#- 1058 ladder__rung04_arrays_join_flattens_its_list_arguments_as_a_slurpy_and_keeps_array_elements_itemized
my @s = <a b c>;
say join '', gather for ^2 -> $i { take @s[0, 1], "\n" };
say join('-', (1, 2), (3, (4, 5)));
say join '-', [1, 2], 3;
my @a = (1, 2), (3, 4);
say join '|', @a;
say ((1, 2), (3, 4)).join('|');
say join ',', (1..3), 4;
#- 1059 ladder__rung07_subs_an_array_pattern_parameter_binds_its_elements_for_a_sub_and_a_multi
sub uno ([$a, $b?]) { "$a|$b.gist()" }
say uno([1, 2]);
say uno([1]);
sub tri ([$h, *@t]) { "$h:" ~ @t.join(",") }
say tri([1, 2, 3]);
multi sub bar ([$a, $b?]) { return "$a|$b.gist()" }
multi sub baz (*[$a, $b, $c?]) { return "$a+$b+$c" }
say bar([3, 4]);
say baz(5, 6, 7);
#------ 1060 ladder__rung18_two_arg_block_do_for_collects_and_await_is_its_value
say [+] do for ^3 { 5 };
say [+] do for 1..3 { $_ * 10 };
my @r = do for 1..3 { $_ * 10 };
say @r.join(",");
say (do for 1..3 { $_ * 2 }).join(",");
my $p = start { 42 };
say await $p;
say [+] await do for ^2 { start { 21 } };
say await(start { 7 }, start { 8 }).join(",");
#--------------------------------------------------- 1061 sub_when_for_replace_1
# rk_for_array_simple.raku — RK-BB-3a probe: iterate Icon-list (DT_DATA) via `for @arr -> $v`.
# Stripped-down precursor to rk_map_grep_sort24; flips green when the BB_ITERATE
# polymorphic substrate (DT_DATA-list branch) lands.
sub main() {
    my @x = '';
    push(@x, 10); push(@x, 20); push(@x, 30);
    for @x -> $v { say($v); }
}
main();
#- 1062 ladder__rung14_roles_a_role_declares_regexes_and_attributes_beside_methods
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
#- 1063 ladder__rung15_blocks_a_closure_in_a_sub_reads_an_enum_value_and_a_constant_that_sub_declares
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
#- 1064 ladder__rung19_block_methcall_sort_by_a_one_arg_key_block_past_64_elements
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
#-------------------------------------------------- 1065 sub_for_while_replace_1
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
#- 1066 ladder__rung07_subs_an_infix_multi_on_objects_is_entered_from_the_relop_boxes_in_value_and_condition_context
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
#--------------------------------------------------- 1067 sub_for_loop_replace_1
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
#-------------------------------------------------- 1068 sub_for_range_replace_1
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
#---------------------------------------------- 1069 class_method_say_replace_15
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
#------------------------------------------ 1070 scrip_test_rk_seq_consumers_arr
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
#--------------------------------------------- 1071 benchmark_rc-9-billion-names
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
#------------------------------------------------------- 1072 scrip_test_rk_subs
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
#------------------------------------------------- 1073 method_sub_for_replace_1
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
#-------- 1074 ladder__rung02_arithmetic_power_in_every_right_hand_side_position
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
#------------------------------------------------ 1075 sub_junction_smartmatch_1
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
#- 1076 ladder__rung12_exceptions_fail_returns_a_failure_that_is_undefined_handled_by_its_methods_and_thrown_when_sunk_and_shift_and_pop_of_an_empty_array_return_one
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
#- 1077 ladder__rung01_variables_a_package_variable_is_declared_with_our_and_read_by_its_qualified_name
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
#------------------------------------------- 1078 multi_sub_smartmatch_replace_1
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
#- 1079 ladder__rung04_arrays_binding_an_array_to_an_element_aliases_it_and_pop_shift_a_zen_slice_and_an_element_store_value_agree_with_rakudo
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
#------------------------------------------------ 1080 class_multi_sub_replace_2
class Vec { has $.x; has $.y; }
multi sub infix:<+>(Vec $a, Vec $b) { return Vec.new(x => $a.x + $b.x, y => $a.y + $b.y); }
 my $p = Vec.new(x => 1, y => 2); my $q = Vec.new(x => 10, y => 20); my $r = $p + $q; say($r.x); say($r.y); 
#------------------------------------------------ 1081 class_multi_sub_replace_3
class Vec { has $.x; }
multi sub infix:<+>(Vec $a, Vec $b) { return Vec.new(x => $a.x + $b.x); }
 my $a = 7; my $b = 5; say($a + $b); say($a - $b); say($a * $b); 
#------------------------------------------------ 1082 class_multi_sub_replace_5
class Box { has $.n; }
multi sub infix:«<»(Box $a, Box $b) { return $a.n < $b.n; }
 my $a = Box.new(n => 3); my $b = Box.new(n => 7); say($a < $b); 
#------------------------------------------------ 1083 class_multi_sub_replace_4
class Money { has $.cents; }
multi sub infix:<+>(Money $a, Money $b) { return Money.new(cents => $a.cents + $b.cents); }
multi sub infix:<*>(Money $a, $n) { return Money.new(cents => $a.cents * $n); }
 my $a = Money.new(cents => 150); my $b = Money.new(cents => 350); my $s = $a + $b; say($s.cents); my $t = $a * 3; say($t.cents); 
#------------------------------------------------ 1084 class_multi_sub_replace_6
class Animal { has $.size; }
class Dog is Animal { }
multi sub infix:«<»(Animal $a, Animal $b) { return $a.size + $b.size; }
 my $d1 = Dog.new(size => 10); my $d2 = Dog.new(size => 20); say($d1 < $d2); 
#------------------------------------------------ 1085 class_multi_sub_replace_7
class Animal { has $.size; }
class Dog is Animal { }
multi sub infix:<+>(Animal $a, Animal $b) { return Animal.new(size => $a.size + $b.size); }
 my $d1 = Dog.new(size => 10); my $d2 = Dog.new(size => 20); my $r = $d1 + $d2; say($r.size); 
#--------------------- 1086 ladder__rung09_regex_match_methods_agree_with_rakudo
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
#--------------------------------------------- 1087 benchmark_rc-perfect-shuffle
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
#- 1088 ladder__rung12_exceptions_a_call_that_resolves_to_no_routine_raises_a_catchable_exception_inside_try_and_eval
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
#---------------------------------------------- 1089 scrip_test_rk_array_literal
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
#--------------------------------------------- 1090 sub_smartmatch_say_replace_1
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
#- 1091 ladder__rung04_arrays_pop_and_shift_inside_an_expression_still_remove_the_element
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
#--- 1092 ladder__rung09_regex_quote_adverbs_and_interpolation_agree_with_rakudo
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
#--------------------------------------------- 1093 sub_smartmatch_say_replace_2
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
#- 1094 ladder__rung08_for_last_and_next_with_a_label_leave_or_continue_the_labelled_loop_through_nested_loops
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
#------------------------------------------- 1095 sub_regex_smartmatch_replace_1
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
#- 1096 ladder__rung13_classes_a_class_body_runs_where_it_is_declared_and_its_lexicals_are_each_class_own_and_seen_by_its_methods
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
#--------------------------------------------- 1097 class_method_multi_replace_3
class Base { multi method describe(Int $x) { return "base-int:" ~ $x; } }
class Sub is Base { multi method describe(Str $s) { return "sub-str:" ~ $s; } }
 my $o = Sub.new(); say($o.describe(7)); say($o.describe("yo")); 
#- 1098 ladder__rung03_strings_a_method_call_with_parentheses_interpolates_in_a_double_quoted_string
my @a = 1, 2, 3;
say "x @a.join(',') y";
say "m @a.map({ $_ * 2 }).join(',') z";
say "n @a.map({ $_ ~~ Int ?? "I" !! "N" }).join(',') z";
my $o = "s"; say "q $o.uc() r";
say "(@a.map({ $_ + 1 }).join(','),)";
my @q = ($_ * 2 for 1..3); say @q.raku;
my @r = (1..4).map({ $_ * $_ }); say "sq: @r.join(' ')";
#- 1099 ladder__rung11_junctions_a_junction_in_boolean_context_collapses_and_star_smartmatch_against_a_type_is_a_whatevercode
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
#------------------------------------- 1100 benchmark_rc-self-describing-numbers
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
#---- 1101 ladder__rung09_regex_a_match_statement_in_a_sub_returns_to_its_caller
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
#- 1102 ladder__rung08_for_a_for_loop_over_the_topic_restores_the_outer_topic_when_it_ends_by_exhaustion_last_or_return
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
#- 1103 ladder__rung10_given_a_when_arm_in_a_block_or_sub_body_and_a_given_or_if_as_a_value
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
#- 1104 ladder__rung04_arrays_xx_repeats_its_left_side_unflattened_and_a_range_in_a_comma_list_is_one_range_element
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
#- 1105 ladder__rung09_regex_a_failed_match_statement_does_not_end_its_loop_or_sub_body
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
#------------------------------------------------- 1106 benchmark_insertion-sort
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
#---------------------------------------------- 1107 sub_when_junction_replace_1
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
#-------------------------------------------------- 1108 benchmark_rc-mandelbrot
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
#------------------------------------------------ 1109 benchmark_point_class_add
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
#- 1110 ladder__rung09_regex_grammars_protos_actions_and_lexical_regexes_agree_with_rakudo
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
#----------------------------------------------------- 1111 benchmark_merge-sort
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
#----------------------------------------------- 1112 benchmark_point_class_add1
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
#- 1113 ladder__rung02_arithmetic_rat_as_an_argument_a_receiver_and_a_container_element_agrees_with_rakudo
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
#- 1114 ladder__rung07_subs_a_subset_is_a_type_and_a_where_clause_checks_a_parameter
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
#---------------------------------------------------- 1115 scrip_test_rk_given18
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
#- 1116 ladder__rung10_given_a_when_arm_is_its_own_node_a_given_binds_the_topic_and_a_matched_when_leaves_the_block
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
#- 1117 ladder__rung04_arrays_an_infinite_or_whatever_ended_range_is_lazy_where_it_is_iterated_and_a_range_value_where_it_is_held
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
#- 1118 ladder__rung05_hashes_a_hash_slice_reads_assigns_tests_and_deletes_several_keys
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
#- 1119 ladder__rung02_arithmetic_rat_in_the_builtins_index_range_x_floor_abs_sqrt_sprintf_int_and_caret
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
#----------------- 1120 ladder__rung09_regex_engine_captures_1_agree_with_rakudo
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
#-------------- 1121 ladder__rung09_regex_engine_quantifiers_1_agree_with_rakudo
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
#------------------- 1122 ladder__rung09_regex_engine_sigspace_agree_with_rakudo
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
#--------------------- 1123 ladder__rung09_regex_engine_batch2_agree_with_rakudo
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
#------------------- 1124 ladder__rung09_regex_engine_basics_1_agree_with_rakudo
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
#------------------- 1125 ladder__rung09_regex_engine_basics_2_agree_with_rakudo
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
#------------------- 1126 ladder__rung09_regex_engine_basics_3_agree_with_rakudo
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
#------------------ 1127 ladder__rung09_regex_engine_classes_1_agree_with_rakudo
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
