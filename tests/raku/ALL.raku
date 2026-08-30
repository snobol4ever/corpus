#------------------------------------------------------------ 1 simple_program_1
die "fatal error";
#--------------------------------------------------------------------- 2 array_6
push(@a, 1);
#---------------------------------------------------------------------- 3 hash_1
delete %h<foo>;
#--------------------------------------------------------------------- 4 token_1
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
#-------------------------------------------------------------------- 5 array_10 XFAIL
my @r = gather { take 1; };
#--------------------------------------------------------------------- 6 array_4
say map { $_ + 1 } @arr;
#--------------------------------------------------------------------- 7 array_7
my @b = sort @a;
#--------------------------------------------------------------------- 8 array_9 XFAIL
my @r = gather { take 1; take 2; take 3; };
#---------------------------------------------------------------------- 9 say_12
until ($x > 5) { say($x); }
#------------------------------------------------------------ 10 simple_assign_2
my $r = 10 div $n;
#----------------------------------------------------------- 11 simple_assign_20
my $x = -5;
#----------------------------------------------------------- 12 simple_assign_21
my $y = -$x;
#------------------------------------------------------------ 13 simple_assign_3
my $r = $x div 3;
#------------------------------------------------------------ 14 simple_assign_7
my $r = $x % 3;
#------------------------------------------------------------ 15 simple_assign_8
my $r = $x % $y % 2;
#----------------------------------------------------------- 16 simple_assign_14
my $s = "hello";
say $s.chars();
#----------------------------------------------------------- 17 simple_assign_15
my $s = "HELLO";
say $s.lc();
#----------------------------------------------------------- 18 simple_assign_16
my $s = "hello world";
say $s.substr(6, 5);
#----------------------------------------------------------- 19 simple_assign_17
my $s = "  hi  ";
say $s.trim();
#----------------------------------------------------------- 20 simple_assign_18
my $s = "hello";
say $s.uc();
#----------------------------------------------------------- 21 simple_assign_23 XFAIL
my $d = Dog.new(name => "Rex");
say $d.name;
#------------------------------------------------------------ 22 simple_assign_4
my $obj = Foo.new(x => 1);
$obj.x = 42;
#------------------------------------------------------------ 23 simple_assign_5
my $x = 3.14;
say $x;
#------------------------------------------------------------ 24 simple_assign_6
my $q = $x div $y;
my $r = $x % $y;
#------------------------------------------------------------ 25 array_replace_1
my Array @a;
@a[0] = 99;
say @a[0];
#------------------------------------------------------------- 26 hash_replace_1
my Hash %h;
%h<foo> = "bar";
say %h<foo>;
#----------------------------------------------------------- 27 simple_assign_19
my Int $x = 5;
my Str $s;
say $x;
#------------------------------------------------------------ 28 simple_assign_9
my $x = 0;
repeat { $x = $x + 1; }
say $x;
#------------------------------------------------------------------ 29 sub_say_3
sub greet() {
    say("hello");
}
#-------------------------------------------------------------------- 30 class_1 XFAIL
class Point {
    has $.x;
    has $.y;
}
#------------------------------------------------------------------ 31 sub_say_4
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
#-------------------------------------------------------------- 32 token_regex_1
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
#-------------------------------------------------------------------- 33 array_1
my @b = grep { $_ > 0 } @a;
#-------------------------------------------------------------------- 34 array_2
my @r = grep { $_ eq "x" } @words;
#-------------------------------------------------------------------- 35 array_3
my @b = map { $_ * 2 } @a;
#-------------------------------------------------------------------- 36 array_5
my $v = pop(@a);
#----------------------------------------------------------------- 37 hash_say_1
if (exists %h<x>) { say("yes"); }
#----------------------------------------------------------------- 38 hash_say_2
if (exists %h{"x"}) { say("yes"); }
#-------------------------------------------------------------------- 39 range_1
my $r = 1..5;
#---------------------------------------------------------------------- 40 say_1
if ($a && $b) { say($a); }
#--------------------------------------------------------------------- 41 say_11
if ($a ne $b) { say($a); }
#---------------------------------------------------------------------- 42 say_2
if ($a && $b && $c) { say($a); }
#---------------------------------------------------------------------- 43 say_3
if (!$done) { say($x); }
#---------------------------------------------------------------------- 44 say_4
if ($a || $b) { say($a); }
#---------------------------------------------------------------------- 45 say_5
if ($a || $b || $c) { say($a); }
#---------------------------------------------------------------------- 46 say_8
say($a ~ $b);
#---------------------------------------------------------------------- 47 say_9
if ($a eq $b) { say($a); }
#-------------------------------------------------------------- 48 say_replace_1
unless ($x == 0) { say($x); }
#-------------------------------------------------------------- 49 say_replace_2
unless ($x == 0) { say($x); } else { say(0); }
#----------------------------------------------------------- 50 simple_assign_10
my $s = $a ~ $b;
#----------------------------------------------------------- 51 simple_assign_11
my $s = $a ~ $b ~ $c;
#----------------------------------------------------------- 52 simple_assign_12
my $s = 'hello' ~ ' ' ~ 'world';
#----------------------------------------------------------- 53 simple_assign_13
my $s = $a ~ 'x' ~ $b;
#------------------------------------------------------------------- 54 array_11 XFAIL
my $x = 5;
my @r = gather { take $x; };
#---------------------------------------------------------------- 55 array_say_2
my Int @nums;
say(@nums);
#-------------------------------------------------------- 56 array_say_replace_1
my Int @nums = sort @data;
say(@nums);
#--------------------------------------------------------------------- 57 hash_2
my $k = 'bar';
delete %h{$k};
#--------------------------------------------------------- 58 hash_say_replace_1
my Str %h = raku_new_hash();
say(%h);
#--------------------------------------------------------------------- 59 say_10
if ($a eq $b) { say($a); }
if ($a ne $b) { say($b); }
#---------------------------------------------------------------------- 60 say_6
my $r = $s.substr(find_start($s), find_len($s));
say($r);
#---------------------------------------------------------------------- 61 say_7
my $d = Dog.new(name => get_name());
say($d);
#------------------------------------------------------------ 62 simple_assign_1
my $x = 0;
if ($x == 0) { die "zero"; }
#---------------------------------------------------------------------- 63 sub_1
sub f() { return; }
f();
#-------------------------------------------------------------------- 64 array_8 XFAIL
my $n = 10;
my @r = gather { take $n; };
say @r;
#------------------------------------------------------------- 65 hash_replace_2
my Hash %h;
my $k = "foo";
%h{$k} = "baz";
say %h{$k};
#------------------------------------------------------------------ 66 sub_say_2
sub greet($first, $last) {
    say($first);
    say($last);
}
#----------------------------------------------------------- 67 simple_assign_24
# rk_typed_vars.raku — RK-19: typed variable declarations
# Type annotations are parsed and silently discarded (no enforcement yet).

my Int $x = 42;
my Str $s = "hello";
my Num $f = 3;
my Bool $b = 1;

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
#--------------------------------------------------------- 68 hash_say_replace_2
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
#-------------------------------------------------------------- 69 while_array_1 XFAIL
my @r = gather { my $i = 1; while ($i < 4) { take $i; $i = $i + 1; } };
#---------------------------------------------------------------- 70 array_say_1
my $x = @a[0];
say($x);
#---------------------------------------------------------------- 71 for_array_1
my Array @a;
for @a { say "x"; }
#----------------------------------------------------------------- 72 hash_say_3
my $v = %h<x>;
say($v);
#----------------------------------------------------------------- 73 hash_say_4
my $v = %h{"x"};
say($v);
#----------------------------------------------------------- 74 simple_assign_22 XFAIL
my $x = 2;
if ($x == 1) { say "one"; } elsif ($x == 2) { say "two"; } else { say "other"; }
#---------------------------------------------------------------------- 75 sub_4
sub add($a, $b) {
    return $a + $b;
}
#--------------------------------------------------------------- 76 given_when_4
my $x = 1;
given $x {
    when 1 { say "one"; }
}
#--------------------------------------------------------------- 77 given_when_1
my $x = 1;
given $x {
    when 1 { say "one"; }
    when 2 { say "two"; }
}
#------------------------------------------------------- 78 given_when_replace_1
my $x = "hello";
given $x {
    when "hello" { say "yes"; }
    default { say "no"; }
}
#--------------------------------------------------------- 79 class_method_say_1 XFAIL
class Dog {
    has $.name;
    method speak() {
        say("woof");
    }
}
#--------------------------------------------------------------- 80 given_when_2
my $x = 5;
given $x {
    when 1 { say "one"; }
    when 2 { say "two"; }
    default { say "other"; }
}
#--------------------------------------------------------------- 81 given_when_3
my $x = 1;
given $x {
    when 1 { say "one"; }
    when 2 { say "two"; }
    when 3 { say "three"; }
}
#--------------------------------------------------------- 82 class_method_say_4 XFAIL
class Point {
    has $.x;
    has $.y;
    method sum() {
        say($.x);
    }
}
#--------------------------------------------------------- 83 hash_say_replace_3
# RK-15: Hash operations — set/get/exists/keys/values, sigil syntax

# Basic set and get via builtin calls
my $h = 0;
hash_set($h, 'name', 'Alice');
hash_set($h, 'age', '30');
hash_set($h, 'city', 'Portland');

say(hash_get($h, 'name'));
say(hash_get($h, 'age'));
say(hash_get($h, 'city'));

# exists
say(hash_exists($h, 'name'));
say(hash_exists($h, 'missing'));

# update existing key
hash_set($h, 'age', '31');
say(hash_get($h, 'age'));

# sigil syntax: %h<key> and %h{$k}
my %h2 = 0;
%h2<lang> = 'Raku';
%h2<vers> = '6';
say(%h2<lang>);
say(%h2<vers>);
my $k = 'lang';
say(%h2{$k});
#------------------------------------------------------------ 84 for_array_say_1
for @a -> $x { say($x); }
#------------------------------------------------------------ 85 for_array_say_2
for @items -> $item { say($item); }
#------------------------------------------------------------ 86 for_range_say_1
for 1..5 -> $i { say($i); }
#------------------------------------------------------------ 87 for_range_say_2 XFAIL
for 1..^5 -> $i { say($i); }
#----------------------------------------------------------- 88 smartmatch_say_1
my $s = "hello";
$s ~~ s/l/r/;
say($s);
#---------------------------------------------------------------------- 89 sub_2
sub add($a, $b) {
    return $a + $b;
}
my $x = add(1, 2);
#---------------------------------------------------------------------- 90 sub_3
sub add($a, $b) {
    my $r = $a + $b;
    return $r;
}
#--------------------------------------------------------- 91 class_method_say_2 XFAIL
class Greeter {
    has $.name;
    method greet($msg) {
        say($msg);
    }
}
#-------------------------------------------------------------- 92 sub_for_say_1
# rk_gather.raku — RK-21: gather/take as BB_PUMP coroutine
sub main() {
    for gather { take(10); take(20); take(30); } -> $v {
        say($v);
    }
    say('done');
}
#--------------------------------------------------------- 93 class_method_say_3 XFAIL
class Counter {
    has $.count;
    method get() {
        say($.count);
    }
    method show($x) {
        say($x);
    }
}
#---------------------------------------------------------- 94 sub_say_replace_1
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
#------------------------------------------------------------------ 95 sub_say_5
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
#---------------------------------------------------- 96 sub_range_say_replace_1
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
#------------------------------------------------------- 97 when_while_replace_1
# rk_unless_until.raku — RK-20: unless, until
# repeat deferred to when 'last' is available

# unless: body runs when condition is false
my Int $x = 5;
unless ($x == 10) {
    say "not ten";
}

# unless with else: else branch taken when condition is true
unless ($x == 5) {
    say "wrong";
} else {
    say "five";
}

# until: loops while condition is false, stops when true
my Int $i = 0;
until ($i >= 3) {
    say $i;
    $i = $i + 1;
}

say "done";
#---------------------------------------------------- 98 sub_array_say_replace_1
# rk_arrays.raku — RK-14: array operations
# Arrays stored as \x01-separated strings in normal DESCR_t slots.
# push/pop/elems/arr_get as builtins; @arr[$i] = val via arr_set builtin.

sub main() {
    my @nums = '';
    push(@nums, 1);
    push(@nums, 2);
    push(@nums, 3);
    say(elems(@nums));
    say(arr_get(@nums, 0));
    say(arr_get(@nums, 2));
    @nums[1] = 99;
    say(arr_get(@nums, 1));
    my $p = pop(@nums);
    say($p);
    say(elems(@nums));

    my @words = '';
    push(@words, 'hello');
    push(@words, 'world');
    say(arr_get(@words, 0));
    say(arr_get(@words, 1));
    say(elems(@words));
}
#--------------------------------------------------- 99 smartmatch_say_replace_1
my $s = "hello";
if ($s ~~ /e(l+)(o)/) { say($1); }
#-------------------------------------------------- 100 smartmatch_say_replace_2
my $s = "hello";
if ($s ~~ /(?<word>\w+)/) { say($<word>); }
#-------------------------------------------------- 101 smartmatch_say_replace_3
my $s = "hello";
if ($s ~~ /e(l+)/) { say($0); }
#-------------------------------------------------- 102 smartmatch_say_replace_4
my $s = "x";
if ($s ~~ /^x$/) { say("anchor"); }
#-------------------------------------------------- 103 smartmatch_say_replace_5
my $s = "hello world";
if ($s ~~ /\s+/) { say("space"); }
#-------------------------------------------------- 104 smartmatch_say_replace_6
my $s = "anything";
if ($s ~~ /.*/) { say("match"); }
#-------------------------------------------------- 105 smartmatch_say_replace_7
my $s = "hello";
if ($s ~~ /ell/) { say("match"); }
#---------------------------------------------------- 106 smartmatch_array_say_1
my $s = "aaa";
my @m = ($s ~~ m:g/a/);
say(@m);
#-------------------------------------------------- 107 smartmatch_say_replace_8
my $s = "abc123";
if ($s ~~ /\d+/) { say("digit"); }
if ($s ~~ /[a-z]+/) { say("lower"); }
if ($s ~~ /a|b/) { say("alt"); }
#----------------------------------------------------------------- 108 sub_say_1
sub double($x) {
    return $x + $x;
}
my $r = double(3);
say($r);
#------------------------------------------------ 109 class_method_say_replace_1 XFAIL
class Dog {
    has $.name;
    method speak() {
        say("woof");
    }
}
my $d = Dog.new(name => "Rex");
say($d.name);
#--------------------------------------------------------- 110 sub_say_replace_2
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
#--------------------------------------------------- 111 sub_while_say_replace_1
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
#------------------------------------------------ 112 sub_junction_say_replace_1
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
#----------------------------------------------------- 113 sub_for_say_replace_1
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
#------------------------------------------------- 114 sub_junction_smartmatch_1
# rk_re33.raku — RK-33: NFA simulation / matching gate

sub main() {
    # \d+ — digit sequence
    if ('abc123' ~~ /\d+/) { say('digit match ok'); } else { say('FAIL digit'); }
    if ('abc' ~~ /\d+/)    { say('FAIL no digit'); } else { say('no digit ok'); }

    # [a-z]+ — lowercase word
    if ('hello' ~~ /[a-z]+/) { say('lower match ok'); } else { say('FAIL lower'); }
    if ('123' ~~ /[a-z]+/)   { say('FAIL no lower'); } else { say('no lower ok'); }

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
#----------------------------------------------------- 115 sub_say_try_replace_1
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
    } CATCH {
        say('caught in handler');
    }

    # try with CATCH — success path (handler should NOT fire)
    try {
        might_die(7);
    } CATCH {
        say('WRONG');
    }

    # die inside sub, caught by outer try
    try { might_die(0); }
    say('outer catch ok');
}
#--------------------------------------------------- 116 sub_for_range_replace_2
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
#----------------------------------------------------------- 117 sub_for_array_1
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
#---------------------------------------------------- 118 class_method_replace_1
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
#---------------------------------------------- 119 sub_smartmatch_say_replace_1
# rk_re34.raku — RK-34: positional captures $0, $1

sub main() {
    my $s = 'John Smith, age 42';

    # single group — capture a word
    if ($s ~~ /([A-Za-z]+)/) { say($0); } else { say('FAIL no match'); }

    # two groups — name and number
    if ($s ~~ /([A-Za-z]+) ([A-Za-z]+)/) {
        say($0);
        say($1);
    } else { say('FAIL two groups'); }

    # digit capture
    my $t = 'score: 99 points';
    if ($t ~~ /([0-9]+)/) { say($0); } else { say('FAIL digit cap'); }

    # no match — $0 stays empty
    my $u = 'hello';
    if ($u ~~ /([0-9]+)/) { say('FAIL should not match'); } else { say('no match ok'); }

    say('rk_re34 ok');
}
#--------------------------------------------------- 120 sub_for_array_replace_1
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
#---------------------------------------------- 121 sub_smartmatch_say_replace_2
# rk_re35.raku — RK-35: named captures <n> and $<n>

sub main() {
    my $s = 'John Smith, age 42';

    # single named group
    if ($s ~~ /<word>([A-Za-z]+)/) { say($<word>); } else { say('FAIL word'); }

    # two named groups
    if ($s ~~ /<first>([A-Za-z]+) <last>([A-Za-z]+)/) {
        say($<first>);
        say($<last>);
    } else { say('FAIL two named'); }

    # named digit group
    my $t = 'score: 99 points';
    if ($t ~~ /<num>([0-9]+)/) { say($<num>); } else { say('FAIL num'); }

    # mix: named + positional in same pattern
    if ($s ~~ /<fn>([A-Za-z]+) ([A-Za-z]+)/) {
        say($<fn>);
        say($1);
    } else { say('FAIL mix'); }

    say('rk_re35 ok');
}
#-------------------------------------------- 122 multi_sub_smartmatch_replace_1
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
    if ('hello5' ~~ /[a-z0-9]+/) { say('multirange ok');  } else { say('FAIL [a-z0-9]'); }
    if ('ABC'    ~~ /[^0-9]+/)   { say('neg range ok');   } else { say('FAIL [^0-9]'); }
    if ('999'    ~~ /[^0-9]/)    { say('FAIL [^0-9] dig');} else { say('all digit neg ok'); }
    if ('Hi9'    ~~ /[A-Za-z]/)  { say('two ranges ok');  } else { say('FAIL [A-Za-z]'); }

    # ---- mixed shorthand inside [...] ----
    if ('a 1'    ~~ /[\d\s]/) { say('mixed cls ok');   } else { say('FAIL [\d\s]'); }
    if ('xyz'    ~~ /[\d\s]/) { say('FAIL [\d\s] none');} else { say('no digit/space ok'); }
    if ('a-z'    ~~ /[\w-]+/) { say('word+dash ok');   } else { say('FAIL [\w-]'); }

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
#---------------------------------------------------- 123 sub_when_for_replace_1
# rk_for_array_simple.raku — RK-BB-3a probe: iterate Icon-list (DT_DATA) via `for @arr -> $v`.
# Stripped-down precursor to rk_map_grep_sort24; flips green when the BB_ITERATE
# polymorphic substrate (DT_DATA-list branch) lands.
sub main() {
    my @x = '';
    push(@x, 10); push(@x, 20); push(@x, 30);
    for @x -> $v { say($v); }
}
#--------------------------------------------------- 124 sub_for_while_replace_1
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
#---------------------------------------------------- 125 sub_for_loop_replace_1
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
#--------------------------------------------------- 126 sub_for_range_replace_1
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
#-------------------------------------------------- 127 method_sub_for_replace_1
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
#-------------------------------------------- 128 sub_regex_smartmatch_replace_1
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
    if ($s ~~ /World!/) { say('end match ok'); }

    # division still works after ~~
    my $x = 10;
    my $y = 2;
    say($x / $y);
}
#----------------------------------------------- 129 sub_when_junction_replace_1
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
