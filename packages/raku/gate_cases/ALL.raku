#------------------------ 1 test_gate_builder_mines_a_collection_in_place__input
say $*IN.lines.elems;
#------------------------ 2 test_gate_builder_mines_a_collection_in_place__plain
say "plain";
#----------------------- 3 test_gate_builder_mines_a_collection_in_place__writer
spurt "made.txt", "x"; say "wrote";
#------------------------ 4 test_gate_gc_raku_every_frame_slot_has_a_kind__plant
sub add($a, $b) { return $a + $b; }
say add(1, 2);
#----------------------- 5 test_gate_icn_range_operands_must_be_integers__rk_num
my @a = 1 .. 5; say @a.join(",");
#----------------------- 6 test_gate_icn_range_operands_must_be_integers__rk_str
my @a = "a" .. "e"; say @a.join(",");
#- 7 test_gate_raku_a_bare_whatever_is_a_value_and_pick_head_and_tail_take_it__whatval
my $w = *;
say $w.WHAT;
say (a => *).value.WHAT;
say (1, 2, 3, 4).pick(*).elems;
say (1, 2, 3, 4).pick(*).sort;
say (1, 2, 3).pick(2).elems;
say (1, 2, 3).pick(0).elems;
say (1 .. 3).pick(9).elems;
say (1, 2, 3, 4).head(*).elems;
say (1, 2, 3).tail(*);
say (1, 2, 3, 4).head(2);
say (1, 2, 3, 4).tail(2);
my @a = 1, 2, 3;
say @a[*];
say @a[*-1];
#- 8 test_gate_raku_a_block_passed_to_a_synchronous_builtin_reads_its_enclosing_subs_locals_through_a_reference__capture
sub f(Int $n) { return (1, 2).map: { $_ + $n } }
say f(3);
sub g { my $n = 10; return (1, 2, 3).grep: { $_ > $n - 9 } }
say g();
sub h($n) { (1, 2, 3).map({ $_ * $n }).join(",") }
say h(2);
sub k(@deck) { my $mid = 1; flat map { @deck[$_, $_ + $mid] }, 0 .. 0 }
say k([5, 6, 7]);
sub acc { my $a = 0; (1, 2, 3).map({ $a += $_ }); $a }
say acc();
sub nested($m) { (1, 2).map({ my $x = $_; (3, 4).map({ $x * $_ + $m }) }) }
say nested(1);
sub cnt { my $c = 0; (1, 2, 3).grep({ $c++; True }); $c }
say cnt();
sub pusher { my @a; (1, 2, 3).map({ @a.push($_ * 2) }); @a.elems }
say pusher();
sub pusher2 { my @a = 1; (1, 2, 3).map({ @a.push($_) }); @a }
say pusher2();
sub hset { my %s; (1, 2, 3).map({ %s{$_} = 1 }); %s.elems }
say hset();
sub copy($a) { (1, 2).map({ my $y = $a; $y + $_ }) }
say copy(5);
sub strc { my $s = ""; (1, 2, 3).map({ $s ~= $_ }); $s }
say strc();
sub srt($k) { (3, 1, 2).sort({ ($^a - $k).abs <=> ($^b - $k).abs }) }
say srt(2);
sub fst($t) { (1, 2, 3, 4).first({ $_ > $t }) }
say fst(2);
sub red($z) { (1, 2, 3).reduce({ $^a + $^b + $z }) }
say red(10);
sub rec($d) { $d == 0 ?? 0 !! (1,).map({ $_ + rec($d - 1) })[0] }
say rec(3);
sub st($n) { my $p = start { $n + 1 }; await $p }
say st(3);
#- 9 test_gate_raku_a_block_passed_to_a_synchronous_builtin_reads_its_enclosing_subs_locals_through_a_reference__escape
sub f($n) { my &g = { $n + 1 }; g() }
say f(3);
sub f2($n) { return { $n + 1 } }
say f2(3)();
sub callit(&c) { c() }
sub f3($n) { callit({ $n + 1 }) }
say f3(3);
sub counter() { my $n = 0; return sub { $n += 1; $n } }
my $c = counter(); say $c(); say $c(); say $c(); my $d = counter(); say $d(); say $c();
sub mk($k) { return -> $x { $x + $k } }
my $f = mk(10); my $g = mk(20); say $f(1); say $g(1);
sub two() { my $n = 0; return (sub { $n += 1 }, sub { $n }) }
my ($inc, $get) = two(); $inc(); $inc(); say $get();
sub arrc() { my @a; return { @a.push($_); @a.elems } }
my $p = arrc(); $p(5); say $p(6);
sub hashc() { my %h; return -> $k { %h{$k} = 1; %h.elems } }
my $q = hashc(); $q('a'); say $q('b');
sub mutparam($n) { my $v = $n; return sub { $v += 1; $v } }
my $m = mutparam(10); $m(); say $m();
sub nest($a) { my $t = 0; return -> $b { my $r = $a + $b; my $s = sub { $t += $r; $t }; $s } }
my $nn = nest(1)(2); $nn(); say $nn();
sub many() { my @fs; for 1..50 -> $i { @fs.push(mk($i)) }; @fs.map({ $_(1) }).sum }
say many();
#- 10 test_gate_raku_a_block_passed_to_a_synchronous_builtin_reads_its_enclosing_subs_locals_through_a_reference__fscope
my @a;
for 1..3 -> $i { @a.push({ $i * 10 }) }
say @a.map({ $_() }).join(",");
my @b;
for 1..3 { my $j = $_ * 2; @b.push(-> { $j }) }
say @b.map({ $_() }).join(",");
my $k = 0; my @u;
while $k < 3 { my $m = $k; @u.push({ $m + 100 }); $k++ }
say @u.map({ $_() }).join(",");
my @c;
for 1..3 -> $i { my $n = $i; @c.push({ $n++ }) }
say @c.map({ $_() }).join(",");
say @c.map({ $_() }).join(",");
my @h;
for 1..3 -> $i { my %m; %m<a> = $i; @h.push({ %m<a> * 2 }) }
say @h.map({ $_() }).join(",");
my @g;
for 1..3 -> $i { my @r = $i, $i + 1; @g.push({ @r.push(9); @r.elems }) }
say @g.map({ $_() }).join(",");
say @g.map({ $_() }).join(",");
my @n;
for 1..3 -> $i { for 1..2 -> $j { @n.push(-> { $i * 10 + $j }) } }
say @n.map({ $_() }).join(",");
my @s;
for 1..3 -> $i { my @r = (1, 2, 3).map({ $_ * $i }); @s.push({ @r.join("-") }) }
say @s.map({ $_() }).join(",");
my @t;
for 1..2 -> $i { @t.push({ (1, 2).map({ $_ + $i }).join("+") }) }
say @t.map({ $_() }).join(",");
my @w;
my $q = 0;
while $q < 3 { my $z = $q * 3; $z += 1; @w.push({ "z=$z q=$q" }); $q++ }
say @w.map({ $_() }).join(",");
for 1..2 -> $i { my @l = (1, 2, 3).grep({ $_ > $i }); say @l.join(" ") }
my @v;
for <a b c> -> $s { @v.push({ $s ~ "!" }) }
say @v.map({ $_() }).join(",");
my $p = 0; my $f = { $p++ };
say $f(); say $f(); say $p;
my $n2 = 5; my $h2 = { $n2 = $n2 + 1; $n2 };
say $h2(); say $h2(); say $n2;
my $tot = 5; my @r2 = (1, 2).map({ $tot += $_ });
say @r2; say $tot;
my %ph = a => 1, b => 2;
say %ph.keys.sort.map({ $^k ~ ':' ~ %ph{$k} }).join(' ');
say (1, 2, 3).map({ $^a + $a * 2 });
my $adder = -> $b { -> $c { $b + $c } };
say $adder(1)(2);
my $inner = { -> $c { $c + 1 } };
say $inner()(2);
my $keep = { my $r = 7; sub { $r } };
say $keep()();
#- 11 test_gate_raku_a_code_parameter_is_callable_and_the_test_module_judges_blocks_and_matches__argsunder
sub f { @_.elems }
say f(1, 2, 3);
sub g { say @_; }
g(4, 5);
sub h { my $n = 0; for @_ -> $x { $n += $x }; $n }
say h(1, 2, 3);
say h();
sub k($a) { $a }
say k(7);
#- 12 test_gate_raku_a_code_parameter_is_callable_and_the_test_module_judges_blocks_and_matches__hof
sub apply(&f) { f(3) }
say apply({ $_ + 1 });
sub apply2(&f) { &f(3) }
say apply2({ $_ + 1 });
sub apply3(&f) { return &f(3) }
say apply3(-> $x { $x * 2 });
sub apply0(&f) { f() }
say apply0({ 7 });
sub inc($n) { $n + 1 }
sub twice(&f, $x) { f(f($x)) }
say twice(&inc, 5);
say twice(-> $v { $v * 2 }, 5);
my $r = &inc;
say $r(5);
say (1, 2, 3).map(&inc);
sub f($x) { $x * 10 }
sub g(&f) { f(2) }
say f(1);
say g({ $_ + 100 });
say f(3);
my &h = { $_ * 3 };
sub k(&h) { h(1) }
say k({ 9 });
say h(4);
sub lives(&c, $d = "") {
    my $ok = True;
    try { c(); CATCH { default { $ok = False } } }
    say "$d: $ok";
}
lives({ 1 }, "a");
lives({ die "x" }, "b");
#- 13 test_gate_raku_a_code_parameter_is_callable_and_the_test_module_judges_blocks_and_matches__testfns
use Test;
plan 17;
like "abc", /b/, "like matches";
like "abc", /z/, "like should fail";
unlike "abc", /z/, "unlike matches";
unlike "abc", /b/, "unlike should fail";
lives-ok { 1 }, "lives";
lives-ok { die "x" }, "lives should fail";
dies-ok { die "x" }, "dies";
dies-ok { 1 }, "dies should fail";
lives-ok { my $x = 5; $x + 1 }, "lives 2";
dies-ok { (1, 2).map({ die "q" }) }, "dies in map";
lives-ok { 1 };
dies-ok { die };
ok "abc" ~~ /b/, "match ok";
ok "abc" ~~ /z/, "no match should fail";
nok "abc" ~~ /z/, "nok no match";
ok "abc".contains("z"), "contains should fail";
ok "abc".contains("b"), "contains";
#--------- 14 test_gate_raku_a_code_variable_call_keeps_the_global_base_in_r9__p
my $k = 10;
sub h($x) { $x + $k }
my &e = &h;
say e(5);
#--------- 15 test_gate_raku_a_code_variable_call_keeps_the_global_base_in_r9__q
my $k = 10;
my &e = -> $x { $x + $k };
say e(5);
my $n = 0;
my &inc = -> { $n++ };
inc() for 1..5;
say $n;
#--------- 16 test_gate_raku_a_code_variable_call_keeps_the_global_base_in_r9__r
my &fact = sub ($k) { $k <= 1 ?? 1 !! $k * fact($k - 1) };
say fact(10);
#- 17 test_gate_raku_a_compile_error_in_eval_is_the_exception_class_rakudo_names_for_it_agree_with_rakudo__w
use MONKEY-SEE-NO-EVAL;
sub probe(Str $code) {
    try { EVAL $code; say 'NOERR'; CATCH { default { say .^name } } }
}
probe('/  /');
probe('/\\Qabc d?\\E/');
probe('constant ($a, $b) = (3, 4)');
probe('"foo" ~~ m/o{1,}/');
probe('/  + abc/');
probe('use v6.d; sub meow:sym«bar» {}');
probe('rand(3)');
probe('#`');
probe('if 1; 2');
probe('/abc\\z/');
probe('/\\Z/');
probe('my class C { my method foo { say "OMG" }; my method foo { say "WTF" } }');
probe('{my $x = 2;');
probe('my $a; ${a} = 5');
probe('for (my $i; $i <=3; $i++) { $i; }');
probe('my $<a>');
probe('/\\B/');
probe('/\\Aabc/');
probe('my Any :D $a');
probe('my $0');
probe('my $a::::b');
probe('.::');
probe('my class C { our method foo { say "OMG" }; our method foo { say "WTF" } }');
probe('my $x = ');
probe('/\\b/');
probe('rand()');
probe('unless 1 { } elsif 42 { }');
probe('$_ = "axbycz"; y/abc/def/');
probe('Foo->new');
probe('"$"');
probe(':2');

#- 18 test_gate_raku_a_hyper_method_unique_as_produce_and_a_scalar_code_value_are_emitted_loops_agree_with_rakudo__residual
class P { has $.v; method n { $!v * 2 }; method add($k) { $!v + $k } }
my @ps = P.new(v => 1), P.new(v => 2), P.new(v => 3);
say @ps>>.n;
say (@ps>>.add(10));
sub tw { my $off = 100; say @ps>>.add($off) }
tw();
say <a b c>>>.uc;
my @w = <x y>; say @w>>.uc; say (@w>>.uc).WHAT;
say (1,2,3,4,5).unique(:as({ $_ % 3 }));
say (1,1,2,2,1).squish(:as({ $_ }));
say <a A b B a>.repeated(:as({ .lc }));
say (1,2,3,4).produce({ $^a + $^b });
say ().produce({ $^a + $^b });
sub pr { my $m = 10; say (1,2,3).produce({ $^a * $m + $^b }) }
pr();
my $c = { $_ * 2 }; say (1,2,3).map($c);
my $sq = -> $x { $x * $x }; say (1..4).map($sq);
#- 19 test_gate_raku_a_method_whose_first_statement_is_a_literal_is_compiled_not_read_as_a_parameter_agree_with_rakudo__w
class A {
    method m($x) { 5; $x }
    method f($x) { 5.5; $x }
    method s($x) { "s"; $x }
    method t($x) { 7; $x * 2 }
    method u($x, $y) { 1; 2; $x + $y }
}
say A.new.m(3);
say A.new.f(4);
say A.new.s(5);
say A.new.t(6);
say A.new.u(1, 2);
class B {
    submethod BUILD { 9; }
    method z { 11; 12 }
}
say B.new.z;
#- 20 test_gate_raku_a_missing_element_is_any_a_hash_assignment_is_kept_and_attribute_defaults_and_array_hash_attributes_agree_with_rakudo__w
my @a = 1, 2, 3;
say @a[99];
say @a[99].defined;
say @a[99].WHAT;
say @a[99] // "d";
my $x = @a[9];
say $x;
say @a[1, 9];
say @a[5, 6].elems;
my %h = a => 1;
say %h<x>;
say %h<x>.WHAT;
say %h{"y"} // "dd";
say Any;
say (2, Any);
say [Int, Str];
say (1, Int).gist;
say (1, 2, 3);
say ("a", "b");
say (1);
say(1, 2, 3);
say (1, 2, 3), 4;
say (1, 2, 3).elems;
my %g;
%g = a => 1, b => 2;
say %g;
my %i;
%i = a => 1;
say %i;
my %j = a => 1, b => 2;
my %k;
%k = %j;
say %k;
%k = ();
say %k.elems;
class P {
    has $!secret;
    has $.pub;
    method peek { $!secret }
    method both { $.pub ~ "-" ~ ($!secret // "none") }
}
my $p = P.new(secret => 5, pub => "A");
say $p.peek;
say $p.both;
class Q {
    has $.x;
    has @.l;
    has %.m;
}
my $q = Q.new;
say $q.x;
say $q.x.defined;
say $q.l;
say $q.l.WHAT;
say $q.m;
say $q.m.WHAT;
class R {
    has @.b;
    has %.h;
    submethod TWEAK {
        @!b = 1, 2;
        %!h = a => 1, b => 2;
        push @!b, 3;
    }
    method add($v) { @!b.push($v); self }
    method put($k, $v) { %!h{$k} = $v; self }
    method n { @!b.elems }
    method keys { %!h.keys.sort.join(",") }
}
my $r = R.new;
say $r.n;
say $r.keys;
say $r.add(9).n;
say $r.put("z", 1).keys;
say $r.b;
class S {
    has @.b = 1, 2;
    has @.c = <x y>;
    has %.d = a => 1;
    has $.e = 2 + 3;
    has $.f = "k";
}
my $s = S.new;
say $s.b;
say $s.c;
say $s.d;
say $s.e;
say $s.f;
say S.new(b => [7]).b;
say S.new(e => 1).e;
class T {
    has $.x;
    has @.l = 1, 2;
    submethod TWEAK { $!x = @!l.elems; }
}
say T.new.x;
class U is S {
    has @.extra = 4, 5;
}
say U.new.b;
say U.new.extra;
my @c;
++@c[2];
++@c[2];
@c[1]++;
say @c[2], " ", @c[1];
my %ct;
%ct<a> += 2;
%ct<a>++;
++%ct<b>;
say %ct<a>, " ", %ct<b>;
my @d;
@d[1] //= 7;
@d[0] = 3;
@d[0] //= 9;
say @d.join(",");
my @e = 5;
my $old = @e[0]++;
say $old, " ", @e[0];
say :16<ff>;
say :8<777>;
say :36<zz>;
say :2<1_0_1>;
say :16<FF>;
say :16<ffffffffffffffffffff>;
say :16<1.8>;
say :10[1, 2, 3];
my $dd = 7;
say :10[$dd, $dd];
say :2[1, 0, 1];
say :16[1, 15];
say :60[1, 30];
say :8<17> + 1;
say $*NOSUCH // 42;
say 12345678901234567890123;
say 12345678901234567890123 + 1;
say 0xffffffffffffffffffff;
say -12345678901234567890123;
#- 21 test_gate_raku_a_named_sub_nested_in_a_sub_reads_and_writes_the_enclosing_locals_through_a_reference__door
sub e { my $n = 3; my sub f() { return $n }; my $g = &f; return $g(); }
say e();
#- 22 test_gate_raku_a_named_sub_nested_in_a_sub_reads_and_writes_the_enclosing_locals_through_a_reference__mandel
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
#- 23 test_gate_raku_a_named_sub_nested_in_a_sub_reads_and_writes_the_enclosing_locals_through_a_reference__nested
sub outer(Int $n, Str $tag) {
    my $total = 0;
    my @seen;
    my sub add($x) { $total += $x * $n; @seen.push($x); }
    my sub label($y, $z = 2) { return "$tag-$y-$z-$total"; }
    my sub fact($k) { return $k <= 1 ?? 1 !! $k * fact($k - 1) * ($n - $n + 1); }
    add(1); add(2);
    for 1 .. 3 -> $i { add($i); }
    say label(7);
    say label(8, 9);
    say fact(5);
    say (1, 2, 3).map: { label($_) };
    say "total=$total seen=@seen[]";
    return $total;
}
say outer(3, "t");
sub counter(Int $start) {
    my $c = $start;
    my sub bump() { $c++; return $c; }
    my sub twice() { bump(); bump(); }
    twice();
    bump();
    return $c;
}
say counter(10);
sub deep($a) {
    my $b = 5;
    my sub mid($p) {
        my sub inner($q) { return $q + $a + $b; }
        return inner($p) * 2;
    }
    return mid(1);
}
say deep(100);
#- 24 test_gate_raku_a_non_empty_array_or_hash_is_true_and_a_pointy_block_binds_the_condition_of_if_unless_while_until_agree_with_rakudo__w
my @q = 1, 2;
my @e;
my %h = a => 1;
my %z;
say so @q;
say so @e;
say so %h;
say so %z;
say ?@q;
say !@e;
say @q ?? "y" !! "n";
say @e ?? "y" !! "n";
if @q { say "if-q" }
if @e { say "if-e" } else { say "else-e" }
unless @e { say "unless-e" }
if %h { say "if-h" }
if (1, 2) { say "if-list" }
if () { say "no" } else { say "else-empty-list" }
my $c = 0;
my @w = 1, 2, 3;
while @w { @w.shift; $c++ }
say $c;
say (@q && "and");
say (@e || "or");
say (@q).Bool;
say @e.Bool;
my $s = @q;
say so $s;
say (1, 2).Bool;
say ().Bool;
my $i = 5;
while $i > 2 -> $x {
    print $x;
    $i--
}
say "";
my @a = 1, 2, 3;
while @a.shift -> $x {
    print $x;
}
say "";
my $n = 3;
while $n-- -> $x {
    print $x;
}
say "";
if 5 -> $x { say $x }
if 0 { say "no" } elsif 7 -> $y { say $y }
unless 0 -> $z { say $z }
until 0 -> $u {
    say $u;
    last;
}
my @qq = 1, 2;
if @qq -> $l { say $l.elems }
my @queue = 1, 2, 3;
my $sum = 0;
while @queue {
    $sum += @queue.shift;
}
say $sum;
my %seen;
say %seen ?? "has" !! "empty";
%seen<a> = 1;
say %seen ?? "has" !! "empty";
#- 25 test_gate_raku_a_numeric_relop_numifies_the_empty_and_the_blank_string_as_rakudo_does_and_icon_keeps_error_102__relop
say "" == 0;
say " " == 0;
say "" < 1;
my $e = "";
say $e == 0;
say "\t\n" == 0;
say " 12 " == 12;
say "" != 0;
my $w = False;
given "" { when 1 { $w = True } }
say $w;
my $v = ' ';
given $v { when 0 { say "zero" }; default { say "other" } }
try { say "abc" == 0 };
say $!.^name;
my $z = try { "abc" < 1 };
say $z.defined;
if "" == 0 { say "cond-true" } else { say "cond-false" }
say "after";
#- 26 test_gate_raku_a_numeric_relop_numifies_the_empty_and_the_blank_string_as_rakudo_does_and_icon_keeps_error_102__voice
say "x";
say "abc" == 0;
say "not reached";
#- 27 test_gate_raku_a_scalar_gist_and_the_str_of_every_aggregate_and_object_and_put_agree_with_rakudo__st
use Test;
class P { method Str { "p!" } }
class Q { has $.x = 3; }
say "abc".gist; say 5.gist; say -7.gist; say 1.5.gist; say True.gist; say False.gist; say 1e20.gist; say "".gist.chars;
my $s0 = "x y"; say $s0.gist; my $n = 42; say $n.gist; my $b0 = True; say $b0.gist;
say "a\nb".gist.lines.elems; say 3.14159.gist; say (2**70).gist; say "é".gist; say Nil.gist; say Int.gist;
say $*USER.gist eq $*USER; say "abc".gist.uc; say (5.gist ~ "!");
lives-ok { $*USER.gist; $*USER.WHAT.gist; }, 'the roast line';
my @a = 1,2,3; my %h = a=>1; my $p = (k => 'v'); my $st = set(<x y>); my $bg = bag(<a a b>);
say ~@a; say "x" ~ @a; say "i: {@a}"; say "i: @a[]";
say ~(1,(2,3)); say ~[1,[2,3]]; say ~();
say ~%h; say "h: {%h}"; say ~$p; say "p: {$p}";
say ~$st.sort; say ~$bg.sort;
say ~P.new; say "o: {P.new}"; say "n: " ~ P.new;
say ~Q.new.x; say ~(1,2).Seq; say ~<a b>; say ~(1,2,3).reverse;
say ~True; say ~5; say ~2.5; say ~"s"; say ~(1/4);
print @a; print "\n"; put @a; put 1,2; put "x"; put @a, "z"; put %h; put P.new; put "a" ~ "b"; put 5; put 2.5; put True;
say "a" ~ 1 ~ (2,3) ~ 4;
my @e; say "e[" ~ @e ~ "]"; say ~@e;
say @a.Str; say @a.gist; say %h.Str; say $p.Str; say (1,2).Str;
#- 28 test_gate_raku_a_sort_comparator_is_an_emitted_merge_sort_not_a_c_to_bb_entry__sortcmp
my @a = 5, 3, 9, 1, 7, 3, 8, 2;
say @a.sort({ $^a <=> $^b });
say @a.sort({ $^b <=> $^a });
say @a.sort({ $^a <=> $^b }).join(",");
say <b a d c e>.sort({ $^a cmp $^b });
say <b a d c e>.sort({ $^b cmp $^a });
say <a1 b2 a3 c4 b5 a6>.sort({ $^a.substr(0,1) cmp $^b.substr(0,1) });
say (3, 1, 2).sort({ $^a <=> $^b });
say (3, 1, 2).sort({ $^b - $^a });
say [].sort({ $^a <=> $^b });
say (7,).sort({ $^a <=> $^b });
my @big = (1..40).map({ ($_ * 17) % 41 });
say @big.sort({ $^a <=> $^b }).join(" ");
say @big.sort({ $^b <=> $^a })[0..4];
my @s = @a.sort({ $^a <=> $^b }); say @s; say @s.elems;
sub top3(@x) { return @x.sort({ $^b <=> $^a })[0..2] }
say top3(@a);
say @a;
say @a.sort({ $^a <=> $^b }).map({ $_ * 2 }).join(",");
say (@a.sort({ $^a <=> $^b }), @a.sort({ $^b <=> $^a })).elems;
my @words = <pear fig apple kiwi banana>;
say @words.sort({ $^a.chars <=> $^b.chars });
say @words.sort({ $^a.chars <=> $^b.chars || $^a cmp $^b });
#- 29 test_gate_raku_a_string_or_float_range_is_a_list_a_range_is_a_value_it_matches_by_its_bounds_and_a_string_has_a_succ_agree_with_rakudo__w
say ('a'..'e').list;
say ('aa'..'ad').list;
say ('x'..'ab').list;
say ('a'..'a').list;
say (1.5..4.5).list;
say (1..3.5).list;
for 'a'..'c' { print $_ }
say "";
for 'x'..'z' -> $c { print $c, "-" }
say "";
my @s = 'a'..'e';
say @s.elems;
say "az".succ;
say "zz".succ;
say "a9".succ;
say "Zz".succ;
say "a9z".succ;
say "9".succ;
say "a-z".succ;
say 5 ~~ 1..10;
say 15 ~~ 1..10;
say 5.5 ~~ 1..10;
say "c" ~~ 'a'..'e';
say "cc" ~~ 'a'..'e';
say (1..20).grep(* ~~ 5..8);
say (1..9).grep({ $_ ~~ 5..8 });
given 5 {
    when 1..3 { say "low" }
    when 4..6 { say "mid" }
    default { say "hi" }
}
my $r = 1..5;
say $r;
say $r.WHAT;
say $r.min, " ", $r.max;
say $r.elems;
say $r.sum;
say $r.list;
say $r.reverse;
say $r.join(",");
say $r.map(* * 2);
say $r.grep(* %% 2);
say $r.excludes-min, $r.excludes-max;
say $r.bounds;
say $r.Str;
say $r.raku;
say 3 ~~ $r;
say 7 ~~ $r;
my @a = $r;
say @a;
say (1..3).minmax;
my $t = 'a'..'c';
say $t;
say $t.list;
say $t.min, $t.max;
say [1..3].elems;
say [1..3];
say [1..3, 4].elems;
sub f(*@a) { @a.elems }
say f(1..3);
sub g($x) { $x.WHAT }
say g(1..3);
say 1..3;
say (1..3).gist;
say (1..3).raku;
put 1..3;
say 'a'..'c';
say (5..1).elems;
say (1..0).list;
#- 30 test_gate_raku_a_sub_or_method_that_writes_a_file_scope_variable_changes_the_variable_agree_with_rakudo__w
my $count = 0;
sub inc { $count++ }
inc(); inc();
say $count;
my $acc = 0;
sub add($n) { $acc += $n }
add(5); add(7);
say $acc;
my @log;
sub note($v) { @log.push($v) }
note(1); note(2);
say @log.elems;
say @log;
my @stack;
sub pu($v) { push @stack, $v }
sub po { @stack.pop }
pu(1); pu(2); pu(3);
say po();
say @stack;
my %seen;
sub mark($k) { %seen{$k} = True }
mark("a"); mark("b");
say %seen.keys.sort;
my $s = "";
sub app($t) { $s ~= $t }
app("a"); app("b");
say $s;
say "s=$s";
my $x = 1;
sub setx { $x = 5; $x }
say setx();
say $x;
my $y = 1;
sub sety { $y = 2 }
sub ylocal { my $y = 10; $y++; $y }
sety();
say ylocal();
say $y;
my $z = 1;
sub zparam($z) { $z + 1 }
sub zset { $z = 9 }
zset();
say zparam(3);
say $z;
my $depth = 0;
sub rec($n) { $depth++; rec($n - 1) if $n > 0 }
rec(3);
say $depth;
my $n = 0;
sub g { (1, 2, 3).map: { $n += $_ } }
g();
say $n;
my $c = 0;
sub tick { $c++ }
my $f = { tick(); tick() };
$f();
say $c;
for 1 .. 3 { tick() }
say $c;
my @r = (1 .. 3).map: { tick(); $_ * 2 };
say @r;
say $c;
my $flag = False;
sub setflag { $flag = True }
say $flag;
setflag();
say $flag;
my ($p, $q) = (1, 2);
sub swap { ($p, $q) = ($q, $p) }
swap();
say "$p $q";
my ($m, $k);
sub fill { ($m, $k) = (7, 8) }
fill();
say "$m $k";
my $total = 0;
class C {
    method bump { $total += 1 }
    method get { $total }
}
my $o = C.new;
$o.bump; $o.bump;
say $o.get;
say $total;
my $keep = 3;
sub readonly { $keep * 2 }
say readonly();
my $base = 2;
my $pw = $base ** 3;
say $pw;
$base **= 2;
say $base;
my $big = 2 ** 70;
say $big;
my $sq = 3;
$sq = $sq ** 2;
say $sq;
sub cube($v) { my $r = $v ** 3; $r }
say cube(4);
#- 31 test_gate_raku_a_substitution_block_a_smartmatch_block_a_when_block_and_a_code_variable_are_called_from_emitted_code_agree_with_rakudo__blockroads
my $s = "a1b22c333"; $s ~~ s:g/(\d+)/{ $0.chars }/; say $s;
my $t = "hello world"; $t ~~ s/(\w+)/{ $0.uc }/; say $t;
my $u = "abc"; $u ~~ s/x/{ "y" }/; say $u;
my $w = "x1y2"; my $r = $w ~~ s:g/(\d)/<$0>/; say $w; say so $r;
sub f($n) { my $q = "aaa"; $q ~~ s:g/a/{ $n }/; $q }
say f(7);
say S:g/o/0/ given "foo boo";
my $k = 0; my $v = "a b c"; $v ~~ s:g/\w/{ ++$k }/; say $v; say $k;
say 7 ~~ { $_ > 5 };
say "abc" ~~ { .chars == 3 };
say 5 ~~ { 42 };
my &big = { $_ > 3 }; say 5 ~~ &big; say 2 ~~ &big;
sub lim { my $l = 4; say 5 ~~ { $_ > $l } }
lim();
given 7 { when { $_ > 5 } { say "big" }; default { say "small" } }
given 2 { when { $_ > 5 } { say "big" }; default { say "small" } }
my @r = (1..10).grep({ $_ ~~ { $_ %% 3 } }); say @r;
my &tri = { $_ * 3 }; say (1,2,3).map(&tri);
my &odd = { $_ % 2 }; say (1..6).grep(&odd); say (4,5,6).first(&odd);
my &add = { $^a + $^b }; say (1..5).reduce(&add);
my $n = 0; for 1..200 -> $i { my $x = "a$i"; $x ~~ s:g/(\d)/{ $0 + 1 }/; $n += $x.chars; $n += (($i ~~ { $_ %% 2 }) ?? 1 !! 0) }
say $n;
#- 32 test_gate_raku_a_subtest_body_is_called_from_emitted_code_and_its_tap_nests_as_rakudos_does__subtest
use Test;
plan 12;
subtest "plain" => {
    ok 1, "a";
    is 2, 2, "b";
}
sub inner-closure(Int $n) {
    my $seen = 0;
    subtest "closure $n" => {
        ok $n > 0, "n is positive";
        $seen = $n * 2;
        is $seen, $n * 2, "wrote through";
    }
    return $seen;
}
is inner-closure(3), 6, "the write is seen after the subtest";
subtest "nested" => {
    plan 2;
    subtest "inner" => { ok 1, "deep"; }
    ok 1, "after inner";
}
subtest { ok 1, "unnamed"; }
subtest "comma form", { is 1 + 1, 2, "math"; }
my $r = subtest "value" => { ok 1, "one"; };
ok $r, "a passing subtest returns True";
say $r;
for 1..2 -> $i { subtest "loop $i" => { ok $i > 0, "i=$i"; } }
sub counted(@xs) { my $sum = 0; subtest "sum" => { for @xs -> $x { $sum += $x; ok $x > 0, "x=$x"; } }; $sum }
is counted([1, 2, 3]), 6, "a subtest body sums into its sub's local";
#------ 33 test_gate_raku_a_tail_call_through_a_builtin_is_entered_by_the_box__p
sub dbl($x) { $x * 2 }
my &c = &dbl;
say c(21);
my $k = 10;
my &e = -> $x { $x + $k };
say e(5);
my $f = { $_ * 3 };
say $f(7);
say (-> $a, $b { $a ~ $b })("p", "q");
my &fact = sub ($n) { $n <= 1 ?? 1 !! $n * fact($n - 1) };
say fact(10);
#------ 34 test_gate_raku_a_tail_call_through_a_builtin_is_entered_by_the_box__q
multi sub g(Int $x) { "int $x" }
multi sub g(Str $x) { "str $x" }
say g(3);
say g("a");
class A {
  multi method m(Int $x) { "A int $x" }
  multi method m(Str $x) { "A str $x" }
}
say A.new.m(4);
say A.new.m("z");
class Pt {
  has $.x; has $.y;
  method new($x, $y) { self.bless(x => $x, y => $y) }
  method add($o) { Pt.new($.x + $o.x, $.y + $o.y) }
}
my $p = Pt.new(0, 0);
for 1..200 { $p = $p.add(Pt.new(1, 2)) }
say $p.x, " ", $p.y;
sub named(:$a, :$b = 3) { $a + $b }
say named(a => 4);
#------ 35 test_gate_raku_a_tail_call_through_a_builtin_is_entered_by_the_box__r
my &c = sub ($x) { die "boom $x" if $x > 1; $x };
say c(1);
try { say c(5); CATCH { default { say "caught: " ~ .message } } }
class P { has $.x; method new($x) { die "neg" if $x < 0; self.bless(x => $x) } }
say P.new(3).x;
try { P.new(-1); CATCH { default { say "caught: " ~ .message } } }
multi sub h(Int $x) { die "int $x" if $x == 0; "int $x" }
multi sub h(Str $x) { "str $x" }
try { h(0); CATCH { default { say "caught: " ~ .message } } }
sub nm(:$n) { die "named $n" if $n > 5; $n * 2 }
try { nm(n => 9); CATCH { default { say "caught: " ~ .message } } }
say "end";
#- 36 test_gate_raku_a_user_defined_infix_prefix_postfix_circumfix_postcircumfix_and_term_operator_is_called_at_its_use_agree_with_rakudo__w
sub infix:<plus>($a, $b) { $a + $b }
sub infix:<⊕>($a, $b) { "($a⊕$b)" }
sub infix:<pw>($a, $b) { $a ** $b }
multi sub infix:<cat2>(Int $a, Int $b) { "int:$a$b" }
multi sub infix:<cat2>(Str $a, Str $b) { "str:$a$b" }
sub prefix:<±>($n) { $n.abs }
sub prefix:<√>($x) { sqrt $x }
sub postfix:<!>($n) { [*] 1..$n }
sub postfix:<²>($n) { $n * $n }
sub postfix:<k>($n) { $n * 1000 }
sub circumfix:<⌊ ⌋>($x) { $x.floor }
sub circumfix:<⟦ ⟧>(*@a) { "[" ~ @a.join('|') ~ "]" }
say 1 plus 2;
say 2 plus 3 * 4;
say 2 * 3 plus 4;
say 10 plus 2 plus 3;
say 1 + 2 plus 3;
say 1 plus 2 + 3;
say 2 pw 3 pw 2;
say 1 ⊕ 2 ⊕ 3;
say 3 cat2 4;
say "a" cat2 "b";
my $x = 7;
my $y = $x plus 1;
say $y;
say ±(-3);
say ± -4;
say √16;
say √16 plus 1;
say 5!;
say 3² plus 1;
say 4k;
say 2k + 1;
my $n = 3;
say $n!;
say $n²;
say $n² * 2;
say ⌊ 3.7 ⌋;
say ⌊ 3.7 ⌋ plus 1;
say ⟦1, 2, 3⟧;
say ⟦5⟧;
say infix:<plus>(4, 5);
say prefix:<±>(-9);
say postfix:<!>(4);
my @l = 1, 2, 3;
say @l.map({ $_ plus 10 });
say (1 plus 2, 3 plus 4);
say "r: {1 plus 2}";
my &f = &infix:<plus>;
say f(1, 2);
say &infix:<plus>(5, 6);
say [plus] 1, 2, 3, 4;
sub term:<answer> { 42 }
say answer + 1;
say answer plus answer;
sub postcircumfix:<⟨ ⟩>($c, $x) { "pc($c,$x)" }
say $n⟨7⟩;
my %h = a => 1;
say %h<a> plus 2;
say 1 plus 2 == 3 ?? "y" !! "n";
say (answer, 1).elems;
#-------------------------- 37 test_gate_raku_aggregates_are_typed_storage__hash
my %h = a => 1, b => 2;
say %h.elems;
say %h<a>;
say %h{"b"};
%h<c> = 3;
say %h.elems;
say %h.keys.sort;
say %h.values.sort;
say (%h<a>:exists);
say (%h<z>:exists);
%h<a>:delete;
say %h.keys.sort;
my %g = %h;
%g<z> = 9;
say %h.elems;
say %g.elems;
sub f(%p) { %p<q> = 5 }
f(%h);
say %h<q>;
my %n = x => [1,2,3], y => {z => 7};
say %n<x>.elems;
say %n<x>[1];
say %n<y><z>;
my %s = "k\x01v" => "w\x05x";
say %s.elems;
say %s{"k\x01v"}.chars;
my %one = only => 1;
say %one;
#---------------------- 38 test_gate_raku_aggregates_are_typed_storage__junction
my $j = any(1, 2, 3);
say $j == 2 ?? "yes" !! "no";
say (all(1, 2) < 3) ?? "yes" !! "no";
say (none(1, 2) == 5) ?? "yes" !! "no";
say (one(1, 2, 3) == 2) ?? "yes" !! "no";
say any(1, 2, 3);
say all("a", "b");
my $n = any(1, any(2, 3));
say $n == 3 ?? "yes" !! "no";
say (5 > any(1, 9)) ?? "yes" !! "no";
#------------------------ 39 test_gate_raku_aggregates_are_typed_storage__marker
my @a = 1, 2;
my @b = (3, 4);
my $l = (5, 6);
say @a.WHAT;
say $l.WHAT;
say (@a, @b).elems;
say [@a, @b].elems;
say (1, (2, 3)).raku;
say [1, [2, 3]].raku;
my $ll = (1, (2, 3));
say $ll;
say [1, [2, 3]];
say (1, [2, 3]).flat.elems;
say [1, (2, 3)].flat.elems;
#-------------------------- 40 test_gate_raku_aggregates_are_typed_storage__nest
my @n = [1, [2, 3]], 4;
say @n.elems;
say @n[0].elems;
say @n[0][1][1];
say @n[0][1].elems;
my %h = a => [1, 2, 3], b => { c => 7 };
say %h<a>.elems;
say %h<b><c>;
my @e = [], [];
say @e.elems;
say @e[1].elems;
@n[0][1].push(9);
say @n[0][1].elems;
#-------------------------- 41 test_gate_raku_aggregates_are_typed_storage__pair
my $p = a => 1;
say $p.key;
say $p.value;
say $p;
my %h = x => 10, y => 20;
for %h.pairs.sort -> $q { say $q.key ~ "=" ~ $q.value }
say %h.pairs.sort;
say %h.kv.sort;
say "abab".trans(['a','b'] => ['x','y']);
say (1 => 2).kv;
my @ps = (c => 3, a => 1);
say @ps.sort.map({ .key }).join(",");
#--------------------------- 42 test_gate_raku_aggregates_are_typed_storage__sep
my @a = "a\x01b", "c", "d\x05e";
say @a.elems;
say @a[0].chars;
say @a[2].chars;
@a.push("f\x01g");
say @a.elems;
say @a[3].chars;
my %h = k => "v\x05w", "x\x01y" => 1;
say %h.elems;
say %h<k>.chars;
say %h{"x\x01y"};
say @a.join("|").chars;
#- 43 test_gate_raku_an_array_subscript_slices_by_an_array_of_indexes_as_rakudo_does__slice
my @show = 'a', 'b', 'c', 'd';
my @i = (0, 2);
say @show[@i];
say @show[0, 2];
say @show[0..1];
say @show[@i.list];
say @show[1..*];
say @show[*-1];
say @show[(1,2).list];
say @show[@i].join("+");
say @show[@i.reverse];
say @show[()].elems;

my @grid = [1, 2, 0], [0, 1, 2];
sub row(@g, $r) { join "", @show[@g[$r].list] }
say row(@grid, 0);
say row(@grid, 1);
#- 44 test_gate_raku_an_element_assignment_through_a_chain_of_subscripts_stores_into_the_nested_container_agree_with_rakudo__w
my @a;
@a[1][2] = 5;
say @a;
my @b;
@b[3] = 1;
say @b;
say @b.elems;
my @c = 1, 2;
@c[4] = 9;
say @c;
my %h;
%h<a><b><c> = 1;
say %h;
my @m;
@m[0][0] = 1;
@m[1][1] = 2;
say @m;
my @g = [1, 2], [3, 4];
@g[1][0] += 5;
@g[0][1]++;
say @g;
my %n = a => [1, 2];
%n<a>[1] = 7;
%n<b>[0] = 8;
say %n<a>;
say %n<b>;
my @t;
@t[2]<k> = 3;
say @t[2]<k>;
my $x = [[1, 2], [3, 4]];
$x[1][1] = 9;
say $x;
say $x[1][1];
my @src;
my @dst;
for flat(1 .. 4 X 1 .. 4) -> $i, $j { @src[$i][$j] = $i + $j }
for flat(1 .. 4 X 1 .. 4) -> $i, $j { @dst[$i][$j] = @src[$i][$j] }
say @dst[4][4];
say @dst[2][3];
say @dst.elems;
my @it = $[1, 2];
say $[3, 4].WHAT;
my @rows = ($[5, 6], $[7]);
say @rows[0].WHAT;
my @ma = 3, 1, 2;
@ma .= sort;
say @ma;
@ma .= reverse;
say @ma;
my @mb = 1, 2, 3;
@mb .= map(* * 2);
say @mb;
@mb>>++;
say @mb;
my @mc = 1, 2, 3;
@mc>>--;
say @mc;
my %mh = b => 2, a => 1;
%mh .= grep({ $_.value > 1 });
say %mh;
#- 45 test_gate_raku_an_exception_is_a_value_that_die_carries_and_catch_and_throws_like_read__exc
class MyE is Exception { has $.n; method message { "MyE " ~ $.n } }
try { die "boom" };
say $!.message; say $!.WHAT; say $!.defined; say $! ~~ X::AdHoc; say $! ~~ Exception; say $!.isa(Exception);
try { 1 }; say $!.defined;
my $r = try { 5 }; say $r;
my $q = try { die "x"; 5 } // "dflt"; say $q;
my $e = X::AdHoc.new(payload => "pp");
say $e.message; say $e.payload; say $e.WHAT;
try { $e.throw }; say "got: ", $!.message;
try { MyE.new(n => 3).throw }; say $!.message; say $!.n; say $!.WHAT; say $! ~~ MyE; say $! ~~ Exception;
try { die MyE.new(n => 6) }; say $!.message; say "str: $!";
{ die "oops"; CATCH { when X::AdHoc { say "adhoc: ", .message } } }
{ die "z"; CATCH { default { say "any: $_" } } }
sub h($x) { die "neg" if $x < 0; return $x * 2; CATCH { default { say "h caught: ", .message } } }
say h(3); say h(-1); say h(4);
sub k { die "boom"; CATCH { when X::AdHoc { say "k adhoc ", .message } } }
k(); say "after k";
sub u { die "bad"; CATCH { when MyE { say "no" } } }
try { u(); say "not reached" }
say "u rethrown: ", $!.message;
try { try { die "inner" }; say "inner: ", $!.message; die "outer" }
say "outer: ", $!.message;
say try { MyE.new(n => 1).message };
#- 46 test_gate_raku_an_exception_is_a_value_that_die_carries_and_catch_and_throws_like_read__tl
use Test;
class MyE is Exception { has $.n; method message { "MyE " ~ $.n } }
throws-like { die "boom" }, X::AdHoc, "adhoc";
throws-like { die "boom" }, Exception, "exception base", message => "boom";
throws-like { die "boom" }, X::AdHoc, message => /oo/, "regex message";
throws-like { MyE.new(n => 3).throw }, MyE, n => 3, "user class";
throws-like { die MyE.new(n => 4) }, Exception, message => "MyE 4";
throws-like { 1 }, X::AdHoc, "does not throw";
throws-like { die "x" }, MyE, "wrong class";
throws-like { die "boom" }, X::AdHoc, message => "other", "wrong message";
throws-like { die "boom" }, X::AdHoc, message => /^bo/, "anchored";
throws-like { MyE.new(n => 7).throw }, MyE, n => 8, "wrong attribute";
done-testing;
#- 47 test_gate_raku_an_infix_multi_on_objects_is_entered_from_the_binop_box_in_an_armed_program_agree_with_rakudo__infixmulti
class Vec { has $.x; has $.y; }
multi sub infix:<+>(Vec $a, Vec $b) { Vec.new(x => $a.x + $b.x, y => $a.y + $b.y) }
multi sub infix:<*>(Vec $a, $n) { Vec.new(x => $a.x * $n, y => $a.y * $n) }
multi sub infix:<==>(Vec $a, Vec $b) { $a.x == $b.x && $a.y == $b.y }
class Box { has $.n; }
multi sub infix:«<»(Box $a, Box $b) { $a.n < $b.n }
class Animal { has $.size; }
class Dog is Animal { }
multi sub infix:<->(Animal $a, Animal $b) { $a.size - $b.size }
my $p = Vec.new(x => 1, y => 2);
my $q = Vec.new(x => 10, y => 20);
my $r = $p + $q;
say $r.x, " ", $r.y;
my $s = $p * 3;
say $s.x, " ", $s.y;
say $p == $q;
say $p == Vec.new(x => 1, y => 2);
say Box.new(n => 3) < Box.new(n => 7);
say Box.new(n => 9) < Box.new(n => 7);
if Box.new(n => 1) < Box.new(n => 2) { say "less" } else { say "not less" }
say Dog.new(size => 30) - Dog.new(size => 12);
say 2 + 3, " ", 7 - 2, " ", 2 * 4, " ", 1/3 + 1/6, " ", 3 < 4, " ", "a" ~ "b";
my $acc = Vec.new(x => 0, y => 0);
for 1..200 -> $i { $acc = $acc + Vec.new(x => $i, y => 1) }
say $acc.x, " ", $acc.y;
#- 48 test_gate_raku_an_unknown_method_throws_x_method_notfound_dot_question_calls_it_maybe_can_finds_methods_and_attributes_and_fallback_catches_the_rest_agree_with_rakudo__w
class Animal {
    method speak { "..." }
    method name { "animal" }
}
class Dog is Animal {
    method speak { "woof" }
}
sub probe(&code) { try { code(); CATCH { default { say .^name, " | ", .message; say .method if .can("method"); } } } }
probe({ "abc".zzzmeth });
probe({ 42.zzzmeth });
probe({ [1, 2, 3].zzzmeth });
probe({ {a => 1}.zzzmeth });
probe({ (1, 2).zzzmeth });
probe({ 3.5e0.zzzmeth });
probe({ True.zzzmeth });
probe({ Dog.new.zzzmeth });
probe({ Dog.zzzmeth });
probe({ Int.zzzmeth });
say "abc".?zzzmeth.defined;
say 42.?zzzmeth.defined;
say Dog.new.?zzzmeth.defined;
say Dog.new.?speak;
say "abc".?uc;
say [1, 2, 3].?elems;
say Dog.new.can("speak").elems;
say Dog.new.can("name").elems;
say Dog.new.can("zzzmeth").elems;
say Dog.can("speak").so;
say Dog.new.can("zzzmeth").so;
say Dog.new.isa(Animal);
say Dog.new.isa(Str);
say Dog.new.does(Animal);
try { Dog.new.zzzmeth; CATCH { when X::Method::NotFound { say "typed catch: ", .method } } }
my $r = try { Dog.new.zzzmeth };
say $r.defined;
say (try { "x".zzzmeth }).defined;
say "still running";
class Chatty {
    method FALLBACK($name, *@args) { "fallback($name)" }
    method real { "real" }
}
say Chatty.new.real;
say Chatty.new.anything;
say Chatty.new.other(1, 2);
class Plain {
    has $.x = 5;
    method m { 1 }
}
my $p = Plain.new;
say $p.x;
say $p.?nothing.defined;
say $p.x.?nothing.defined;
say $p.can("x").so;
say $p.can("m").so;
say $p.can("nothing").so;
use MONKEY-TYPING;
augment class Int { method double { self * 2 } }
say 5.double;
augment class Str { method shout { self.uc ~ "!" } }
say "abc".shout;
augment class List { method rt_x { 62836 } }
say <1 2 3>.rt_x;
say (1,2,3).rt_x;
augment class Array { method amax { self.max } }
my @a = 3,1,2;
say @a.amax;
#- 49 test_gate_raku_array_push_is_amortised_constant_and_keeps_its_aliasing__pushmany
my @l;
for 1..100000 -> $i { @l.push([$i, "abcdefgh"]) }
say @l.elems;
say @l[99999][0];
my @m = 1, 2;
my @n = @m;
@m.push(3);
say @m;
say @n;
my @q;
@q.push(1, 2, 3);
@q.push((7, 8));
say @q;
say @q.elems;
sub f(@a) { @a.push(99) }
f(@m);
say @m;
my $r = @m;
@m.push(5);
say $r;
my @big;
for 1..50000 -> $i { @big.append($i) }
say @big.elems;
say @big[49999];
#- 50 test_gate_raku_assigning_the_wrong_type_to_a_typed_variable_throws_x_typecheck_assignment_agree_with_rakudo__w
class Dog { has $.n }
my Int $i = 5;
for ("a", 5.5e0, Str, [1], {a=>1}, True, 7) -> $v { try { $i = $v; CATCH { default { say .message } } } }
my Str $s = "x";
my $five = 5;
try { $s = $five; CATCH { default { say .message } } }
try { $s = 5.5e0; CATCH { default { say .message } } }
my Int @a;
try { @a[0] = "z"; CATCH { default { say .message } } }
try { @a.push("q"); CATCH { default { say .message } } }
@a.push(3);
@a[1] = 4;
say @a.elems;
my Dog $d;
try { $d = $five; CATCH { default { say .message } } }
try { $d = Dog.new; say "ok dog"; CATCH { default { say .message } } }
my Num $n = 1e0;
try { $n = $five; CATCH { default { say .message } } }
my Bool $b = True;
$b = False;
say $b;
try { $b = 1; say "bool-int-ok?"; CATCH { default { say .message } } }
my Int $j = 3;
$j += 2;
$j++;
$j = $j * 2;
$j = 10 div 3;
$j = 7 % 3;
$j = abs(-4);
$j = (5.7e0).floor;
$j = "42".Int;
$j = +"17";
$j = 2 ** 10;
$j = @a.elems;
$j = ord("a");
$j = "hello".chars;
say $j;
my Str $t = "a" ~ "b";
$t = "x" x 3;
$t = 5.Str;
$t = ~7;
$t = "abc".uc;
$t = join(",", 1, 2);
say $t;
sub f(Int $x) { my Int $y = $x * 2; return $y }
say f(4);
my Int $k;
$k = 3;
say $k;
my Int %h;
%h<a> = 1;
try { %h<b> = "x"; CATCH { default { say .message } } }
say %h;
#--------- 51 test_gate_raku_builtin_gaps_and_is_run_agree_with_rakudo__builtins
say "hello".comb(2).join("|");
say "hello".comb(3).join("|");
say "Hello".samecase("abc");
say "hello".samecase("AB");
say 0b101; say 0o17; say 0x1f; say 1_000;
say "3.7".Num; say "42".Numeric; say "abc".codes;
say (1,2,3).rotate(1).join(","); say (1,2,3).rotate(-1).join(","); say (1,2,3).rotate(4).join(",");
say (1,2,3).pairs.join(" "); say (1,2,3).antipairs.join(" ");
say (1,2,3,4,5).batch(2).join("|");
say (1,1,2,1).repeated.join(","); say (1,1,2,2,1).squish.join(",");
say 100.log(10); say 8.log(2);
say 12345.6789.round(0.01); say 7.round(5); say 2.5.round;
say 7.polymod(3).join(","); say 100.polymod(10, 10).join(",");
say "aabb".subst(/a/,"X",:g); say "aabb".subst(/a/,"X"); say "a1b22".subst(/\d+/,"#",:g); say "abc".subst(/x/,"Y");
say $_.defined;
say Order::More; say Order::Less == Order::Less;
say (Bool::True, Bool::False).join(",");
#- 52 test_gate_raku_callsame_callwith_nextsame_nextwith_open_the_next_candidate_from_the_box_agree_with_rakudo__redisp
class A { method g($x) { "A($x)" }; method h() { "A.h" } }
class B is A { method g($x) { "B($x)+" ~ callsame() }; method h() { "B.h>" ~ nextsame() } }
class C is B { method g($x) { "C($x)+" ~ callwith($x * 10) } }
say C.new.g(2);
say B.new.h;
class D is A { method g($x) { my $r = callsame; "D:" ~ $r } }
say D.new.g(7);
class E is A { method g($x) { "E" ~ nextwith($x + 1) } }
say E.new.g(1);
class F { method g() { (callsame) // "none" } }
say F.new.g;
class Base { has $.n; method describe() { "Base n=" ~ $!n } }
class Mid is Base { method describe() { "Mid/" ~ callsame() } }
class Top is Mid { method describe() { "Top/" ~ callsame() } }
say Top.new(n => 4).describe;
class Acc { method add($a, $b) { $a + $b } }
class Acc2 is Acc { method add($a, $b) { 100 + callwith($a * 2, $b * 2) } }
say Acc2.new.add(3, 4);
my $total = 0;
for 1..300 -> $i { $total += C.new.g($i).chars; $total += Top.new(n => $i).describe.chars }
say $total;
#- 53 test_gate_raku_delegation_fallback_maybe_augment_and_a_user_gist_or_str_open_from_the_box_agree_with_rakudo__methroads
use MONKEY-TYPING;
class Engine { method start() { "vroom" }; method stop() { "halt" } }
class Car { has $.engine handles <start stop>; has $.name; }
my $c = Car.new(engine => Engine.new, name => "tesla");
say $c.start; say $c.stop; say $c.name;
class Fleet { has $.lead handles <start>; }
say Fleet.new(lead => $c).start;
class Dyn { method FALLBACK($name) { "fb:" ~ $name } }
say Dyn.new.hello;
class Dyn1 { method FALLBACK($name, $x) { "fb1:" ~ $name ~ ":" ~ $x } }
say Dyn1.new.twice(21);
class Mb { method hi() { "hi" } }
say Mb.new.?hi;
say Mb.new.?nope // "nope-nil";
augment class Int { method double() { self * 2 } }
say 21.double;
augment class Str { method shout() { self.uc ~ "!" } }
say "hey".shout;
class Animal { has $.name; method gist() { "DOG:" ~ $.name } }
class Dog is Animal { }
say Dog.new(name => "Rex");
my @pets = Dog.new(name => "A"), Dog.new(name => "B");
for @pets -> $p { say $p }
class Point { has $.x; has $.y; method Str() { "(" ~ $.x ~ "," ~ $.y ~ ")" } }
my $pt = Point.new(x => 3, y => 4);
say "at " ~ $pt;
say "pt=$pt";
say $pt ~ "!";
put $pt;
my $n = 0;
for 1..200 -> $i { $n += ("" ~ Point.new(x => $i, y => $i)).chars; $n += Car.new(engine => Engine.new, name => "x").start.chars }
say $n;
#------- 54 test_gate_raku_eval_compiles_a_string_in_process_in_both_modes__eval
use Test;
say EVAL("1 + 2");
my $r = EVAL 'my $x = 5; $x * 2'; say $r;
say EVAL('"abc".uc');
say EVAL('sub twice($n) { $n * 2 }; twice(21)');
our $g = 10; say EVAL('$g + 1');
my $lex = 7; say EVAL('$lex * 3');
my @a = EVAL('(1,2,3).map(* * 2)'); say @a;
try { EVAL('die "inner"') }; say $!.message;
try { EVAL('die "inner2"') }; say $!.WHAT;
say EVAL('class Foo2 { method m { 42 } }; Foo2.new.m');
say EVAL('my @l = 1..5; @l.sum');
say EVAL('if 1 { "yes" } else { "no" }');
say EVAL('');
EVAL('$g = 99'); say $g;
eval-lives-ok '1 + 2', "lives";
eval-lives-ok 'my $x = 5; $x * 2', "lives 2";
eval-dies-ok 'die "x"', "dies";
eval-dies-ok '1 +', "syntax dies";
eval-lives-ok 'die "x"', "lives but dies";
throws-like 'die "boom"', X::AdHoc, "string throws";
throws-like 'die "boom"', X::AdHoc, message => /oo/, "string throws msg";
throws-like 'die "boom"', X::AdHoc, message => /xx/, "string throws wrong msg";
throws-like '1', X::AdHoc, "string does not throw";
throws-like { EVAL 'die "q"' }, X::AdHoc, "eval in block";
lives-ok { EVAL '1' }, "lives block";
is EVAL('2 * 3'), 6, "EVAL value";
is-deeply EVAL('(1,2,3)'), (1,2,3), "EVAL list";
done-testing;
#- 55 test_gate_raku_first_takes_the_end_k_kv_p_v_adverbs_and_a_non_block_matcher_and_later_bare_adverbs_are_named_agree_with_rakudo__w
my @list = 1...10;
say @list.first({ $_ > 3 });
say @list.first({ $_ > 3 }, :k);
say @list.first({ $_ > 3 }, :kv);
say @list.first({ $_ > 3 }, :p);
say @list.first({ $_ > 3 }, :v);
say @list.first({ $_ > 3 }, :end);
say @list.first({ $_ > 3 }, :end, :k);
say @list.first({ $_ > 3 }, :end, :kv);
say @list.first({ $_ > 3 }, :end, :p);
say @list.first({ $_ > 3 }, :!end, :!k);
say @list.first({ $_ > 30 }, :k).defined;
say @list.first({ $_ > 30 }, :end, :kv).defined;
say (first { $^a % 2 }, @list, :end, :kv);
say (first { $^a % 2 }, 1, 2, 3, 4, 5, 6, 7, 8, :end, :kv);
say (first { $^a % 2 }, @list, :k);
say (first { $^a % 2 }, |@list, :end, :p);
say (first { $^a % 2 }, @list);
say first(Int, 'a', 'b', 3, 4, :k);
say first(Str, 'a', 'b', 3, 4, :end, :kv);
my @fancy = 1, 2, "Hello", 4.Num;
say @fancy.first(Str, :kv);
say @fancy.first(Str, :end, :kv);
say @fancy.first(Int, :end, :kv);
say @fancy.first(Int, :end, :!kv);
my @w = <Philosopher Goblet Prince>;
say @w.first(/o/, :kv);
say @w.first(/o/, :end, :kv);
say @w.first(/ob/, :end, :kv);
say @w.first(/l.*o/, :end, :kv);
say @w.first(/zz/, :k).defined;
say (True, False, Int).first(Bool, :end, :kv);
say first(Bool, True, False, Int, :end, :kv);
say @list.first(5, :kv);
say @list.first(5, :end, :p);
say @list.first("7", :k);
{
    my $count = 0;
    say @list.first({ $count++; $^x % 2 }, :end, :kv);
    say $count;
}
{
    my $count = 0;
    my $m = sub (Int $x) { $count++; $x > 5 };
    say @list.first($m, :p);
    say $count;
}
sub h($a, $b, :$k, :$z) { say "$a $b ", $k.gist, ' ', $z.defined ?? $z.gist !! 'unset' }
h(1, 2, :k, :z);
h(1, 2, :z, :k);
h(1, 2, :k);
#- 56 test_gate_raku_gather_and_take_collect_what_the_body_takes_as_rakudos_do__gather
my @a = gather { take 1; take 2; for 3..4 { take $_ * 2 } };
say @a;
say gather { take 5; take 6 };
say (gather { take $_ for 1..3 }).elems;
my @b = gather for 1..3 { take $_ + 10 }
say @b;
sub evens(Int $n) { return gather { for 1..$n { take $_ if $_ %% 2 } } }
say evens(9);
sub squares(Int $n) { gather { my $k = 0; (1..$n).map: { take $_ * $_; $k++ }; take $k } }
say squares(4);
my @nested = gather { for 1..2 -> $i { take gather { take $i; take $i * 10 } } };
say @nested.elems;
say @nested[1];
for gather { take "x"; take "y" } -> $c { print "[$c]" }
print "\n";
say gather { take $_ for 1..5 }.sum;
my $n = 3;
say gather { for 1..$n { take $_ ** 2 } }.join(",");
#- 57 test_gate_raku_gather_and_the_sequence_operator_are_lazy_generator_boxes_with_no_cap__w1
say (1 ... *)[5000];
say (1, 2, 4 ... *)[20];
#- 58 test_gate_raku_gather_and_the_sequence_operator_are_lazy_generator_boxes_with_no_cap__w2
say (gather { my $i = 0; loop { take $i++ } }).head(3);
my @g = gather { for 1..5 { take $_ * 2 } }; say @g;
#- 59 test_gate_raku_gather_and_the_sequence_operator_are_lazy_generator_boxes_with_no_cap__w3
say (1 ... *).map({ $_ * $_ }).grep({ $_ %% 3 }).head(4);
say (1 ... *).is-lazy;
#- 60 test_gate_raku_gather_and_the_sequence_operator_are_lazy_generator_boxes_with_no_cap__w4
my $s = gather { for 1..3 { say "producing $_"; take $_ } };
say "before";
for @$s -> $x { say "got $x" }
#- 61 test_gate_raku_gather_and_the_sequence_operator_are_lazy_generator_boxes_with_no_cap__w5
sub lazy-evens { gather { my $i = 0; loop { take $i; $i += 2 } } }
my $e = lazy-evens();
say "before";
say $e[3];
say "after";
#- 62 test_gate_raku_gather_and_the_sequence_operator_are_lazy_generator_boxes_with_no_cap__w6
my $count = 0;
my $list = gather { for 1 .. 10 -> $a { take $a; $count++ } };
my $result = $list[2];
say $count;
my @f = 1, 1, * + * ... *;
say @f[0..7];
say (1 ... *).first(* > 5);
my @nested = gather { for 1..2 -> $i { take gather { take $i; take $i * 10 } } };
say @nested[1];
my $twice = gather { take 7; take 8 };
say $twice[0];
say $twice[0];
say $twice[1];
say (gather { take 1 }).is-lazy;
#- 63 test_gate_raku_grammar_actions_are_called_from_the_lowered_parse_loop_not_from_c_agree_with_rakudo__actions
grammar G {
  token TOP { <num>+ % "," }
  token num { \d+ }
}
class A {
  method num($/) { make $/.Int * 2 }
  method TOP($/) { make $<num>>>.made }
}
say G.parse("1,2,3", actions => A).made;
grammar Calc {
    token TOP { <term>+ % '+' }
    token term { \d+ }
}
class CalcA {
    method term($/) { make +$/ }
    method TOP($/) { make [+] $<term>>>.made }
}
say Calc.parse("1+2+30", actions => CalcA).made;
my $m = Calc.parse("4+5", :actions(CalcA));
say $m.made;
grammar KV {
    token TOP { <pair>+ % ';' }
    token pair { <key> '=' <val> }
    token key { \w+ }
    token val { \w+ }
}
class KVA {
    method key($/) { make ~$/ }
    method val($/) { make ~$/ }
    method pair($/) { make $<key>.made ~ ":" ~ $<val>.made }
    method TOP($/) { make $<pair>>>.made.join(",") }
}
say KV.parse("a=1;b=2;c=3", actions => KVA).made;
my $obj = KVA.new;
say KV.parse("x=9", actions => $obj).made;
my $tot = 0;
for 1..100 -> $i { $tot += Calc.parse("$i+$i", actions => CalcA).made }
say $tot;
#- 64 test_gate_raku_group_of_is_a_planned_subtest_and_a_multi_sub_declared_in_a_block_or_a_sub_is_registered_agree_with_rakudo__w
use Test;
use lib "/home/resources/roast-master/packages/Test-Helpers";
use Test::Util;
plan 3;
group-of 2 => 'first group' => {
    ok 1, 'one';
    is 2, 2, 'two';
}
group-of 1 => 'second group' => {
    is 'a', 'a', 'x';
}
my $n = 0;
group-of 3 => 'counted group' => {
    for 1 .. 3 { $n += $_; ok $n > 0, "step $_" }
}
say $n;
{
    multi sub foo(Int $x) { "int" }
    multi sub foo(Str $x) { "str" }
    say foo(1);
    say foo("a");
}
sub w {
    my multi sub bar(Int $x) { "i" }
    my multi sub bar(Str $x) { "s" }
    bar(1) ~ bar("a")
}
say w();
{
    my multi baz(Int $x) { "I" }
    my multi baz(Str $x) { "S" }
    say baz(2);
    say baz("b");
}
sub deeper {
    {
        multi sub qux(Int $x) { "qi" }
        multi sub qux(Str $x) { "qs" }
        return qux(3) ~ qux("c");
    }
}
say deeper();
#-- 65 test_gate_raku_io_path_and_handle_are_typed_values_as_rakudo_has_them__io
my $d = "/tmp/rk_iogate_" ~ $*PID;
my $dir = $d.IO;
say $dir.e; $dir.mkdir; say $dir.d; say $dir.e; say $dir.f;
my $f = $dir.child("a.txt");
say $f.Str.ends-with("/a.txt"); say $f.basename; say $f.extension; say $f.parent.Str eq $d;
say $f.e; $f.spurt("hello\nworld\nthree words here\n"); say $f.e; say $f.f; say $f.s; say $f.z;
say $f.slurp.chars; say $f.slurp.lines.elems;
say $f.lines.join("|"); say $f.lines.elems; say $f.words.elems; say $f.words.join(",");
say $f.lines(:!chomp).elems;
$f.spurt("more\n", :append); say $f.lines.join("|");
say slurp($f.Str).chars; say slurp($f).chars;
spurt($dir.child("b.txt").Str, "bee"); say slurp($dir.child("b.txt").Str);
say $dir.child("b.txt").slurp;
my $fh = open($f.Str);
say $fh.get; say $fh.get; say $fh.eof; say $fh.get; say $fh.eof; $fh.close;
$fh = open($f.Str, :r); say $fh.lines.elems; $fh.close;
$fh = open($f.Str); say $fh.slurp.chars; $fh.close;
$fh = open($f.Str); say $fh.readchars(3); say $fh.getc; $fh.close;
my $w = open($dir.child("c.txt").Str, :w); $w.say("one"); $w.print("two"); $w.put("three"); $w.printf("%d-%s\n", 7, "x"); $w.close;
say slurp($dir.child("c.txt").Str);
my $ap = open($dir.child("c.txt").Str, :a); $ap.say("four"); $ap.close; say $dir.child("c.txt").lines.elems;
say $dir.dir.map(*.basename).sort.join(",");
say $f.copy($dir.child("d.txt")); say $dir.child("d.txt").slurp.chars;
say $dir.child("d.txt").rename($dir.child("e.txt")); say $dir.child("d.txt").e; say $dir.child("e.txt").e;
say $dir.child("e.txt").unlink; say $dir.child("e.txt").e;
say $dir.child("nonexistent").unlink;
for <a.txt b.txt c.txt> { $dir.child($_).unlink }
say $dir.dir.elems; say $dir.rmdir; say $dir.e;
say "/a/b/c.txt".IO.dirname; say "/a/b/c.txt".IO.basename; say "c.txt".IO.dirname; say "/".IO.basename; say "a/b/".IO.basename;
say "/a/b/c.txt".IO.extension; say "/a/b/c".IO.extension; say "x.tar.gz".IO.extension;
say "/a/b".IO.is-absolute; say "a/b".IO.is-absolute; say "a/b".IO.is-relative;
say "/a/b".IO.child("c"); say "/a/b/c.txt".IO.parent; say "/a/b/c.txt".IO.parent(2); say "/a/b".IO.sibling("z");
say "a//b/./c".IO.cleanup; say "/a/b".IO.absolute; say "/a/b".IO.relative("/a");
say "/a/b".IO.WHAT; say "/a/b".IO.Str; say "/a/b".IO.gist; say "/a/b".IO.IO.Str;
say "/etc".IO.d; say "/etc/passwd".IO.f; say "/nonexistent".IO.e; say "/tmp".IO.r; say "/tmp".IO.w; say "/etc/passwd".IO.s > 0;
say $*CWD.d; say $*TMPDIR.d; say $*CWD.WHAT;
$*OUT.say("to stdout"); $*OUT.print("p1"); $*OUT.put("p2"); $*ERR.say("to stderr");
my $o = $*OUT; $o.say("via var");
say $*OUT.WHAT;
#- 66 test_gate_raku_map_keeps_each_result_as_an_item_and_a_brace_of_pairs_using_the_topic_is_a_block__braceblock
say (1, 2).map({ Belt => $_ });
say (1, 2).map({ "k$_" => $_ });
my %h = { a => 1, b => 2 };
say %h<a>;
my $f = { a => $^x };
say $f(3);
say { a => 1 }.WHAT;
my %g = (1, 2).map({ $_ => 10 * $_ });
say %g<2>;
sub h { { a => 1 } }
say h().WHAT;
#- 67 test_gate_raku_map_keeps_each_result_as_an_item_and_a_brace_of_pairs_using_the_topic_is_a_block__mapitems
say (1, 2).map({ ($_, $_ * 2) });
say (1, 2).map({ |($_, $_ * 2) });
say (1, 2).map({ [$_, $_ * 2] });
say (1, 2).map({ ("k$_" => $_) });
my @a = (1, 2).map({ "k$_" => $_ });
say @a.elems;
say @a[0].key;
sub f($x) { return ($x, $x * 2) }
my @r = (1, 2).map(&f);
say @r.elems;
say (1, 2, 3).map({ $_ * 2 }).elems;
say (1, 2).map({ ($_, $_) }).flat;
say (1, 2, 3).grep({ $_ > 1 }).map({ ($_,) }).elems;
#-------------- 68 test_gate_raku_match_is_a_typed_value_as_rakudo_has_it__multi
for "a1b22" ~~ m:g/(\d+)/ { say $_; say $_.from }
my @ms = "a1b22".match(/\d+/, :g); say @ms.raku; say @ms.elems; say @ms[1].Str;
say "abc".match(/b/).from; say "abc".match(/b/);
say ("a1b22" ~~ m:g/\d+/).elems; say ("a1b22" ~~ m:g/\d+/).join(",");
#-------------- 69 test_gate_raku_match_is_a_typed_value_as_rakudo_has_it__slash
"hello world" ~~ /(w\w+)/;
say $/; say $0; say $/[0].Str; say "got $0 in $/"; say ~$/; say $/ eq "world"; say $/.chars; say $/.uc; say $/.from;
if "foo bar" ~~ /(\w+) \s (\w+)/ { say "$0|$1"; say $/.Str; say $/[1].to }
"2024-10" ~~ /$<y>=(\d+)'-'$<m>=(\d+)/; say "$<y>/$<m>"; say $/<y>;
my $r = "ab" ~~ /(a)(b)/; say $r eq "ab"; say "[$r]";
#-------------- 70 test_gate_raku_match_is_a_typed_value_as_rakudo_has_it__value
my $m = "abcb" ~~ /(b)(c)/;
say $m.WHAT; say $m.from; say $m.to; say $m.pos; say $m.orig; say $m.Str; say $m.gist; say $m.raku;
say $m[0].from; say $m[1]; say $m.elems; say $m.list.elems; say $m.hash.elems;
my $n = "2024-10-07" ~~ /$<y>=(\d+)'-'$<m>=(\d+)/;
say $n; say $n<y>; say $n<m>.from; say $n.keys.sort.join(","); say $n.hash.elems;
my $q = "aaa" ~~ /(a)+/; say $q; say $q[0].elems; say $q[0][1].from;
my $s = "x" ~~ /y/; say so $s; say ("x" ~~ /y/) ?? "yes" !! "no";
say ("abcd" ~~ /b/).prematch; say ("abcd" ~~ /b/).postmatch;
say ("héllo wo" ~~ /w/).from; say ("héllo wo" ~~ /w/).to;
#- 71 test_gate_raku_nested_and_anonymous_classes_and_the_operator_references_agree_with_rakudo__w
{
    my class Dup { has $.v = 1; method m { $.v } }
    say Dup.new.m;
}
{
    my class Dup { has $.v = 2; method m { $.v * 10 } }
    say Dup.new.m;
    say Dup.new.m;
}
class Top { method m { "top" } }
{
    my class Top { method m { "inner" } }
    say Top.new.m;
}
say Top.new.m;
for 1..2 -> $i {
    my class Loop { method m { "L" } }
    say Loop.new.m ~ $i;
}
sub mk { return class { method hello { "hello" } } }
say mk().new.hello;
my $o = mk().new; say $o.hello;
{ class Foo { method m { 42 } }; say Foo.new.m; }
sub f { my class Bar { method m { 7 } }; return Bar.new.m }
say f();
if True { class Z1 { method m { 8 } }; say Z1.new.m }
say do { class D1 { method m { 47 } }; D1.new.m };
my $c = class { method m { 42 } }; say $c.new.m;
my $an = anon class { method m { 43 } }; say $an.new.m;
my $o2 = class A1 { method m { 44 } }.new; say $o2.m;
class P { method who { "P" } }; my $pc = class :: is P { }; say $pc.new.who;
say (class { method m { 45 } }).new.m;
my $x = class { has $.a = 3; method get { $.a } }; say $x.new.get; say $x.new(a => 9).get;
my $cn = class { method new { "custom" } }; say $cn.new;
class Outer { method make { class Inner { method hi { "hi" } }; Inner.new.hi } }; say Outer.new.make;
class Foo2 { method m { 42 } }; my $held = Foo2; say $held.new.m;
my @cs = (class { has $.n = 1; method m { $.n } }), (class { has $.n = 2; method m { $.n } }); say @cs[0].new.m + @cs[1].new.m;
my $f1 = &[+]; say $f1(1,2); say reduce(&[+], 1,2,3); say (3,1,2).sort(&infix:<cmp>); say (3,1,2).sort(&infix:«<=>»);
my &g = &infix:<*>; say g(3,4); say (1,2,3).map(&prefix:<->); say [3,1,2].sort(&[<=>]); say 1, 2 Z[&infix:<+>] 3, 4;
say (1,2,3).reduce(&[*]); say &[+](1,2); say &infix:<+>(1,2); say (1,2,3).reduce(&infix:<+>);
my @a2 = <b a c>; say @a2.sort(&infix:<leg>); my $op = &[~]; say $op("a","b"); say (2,3).reduce(&[**]); say (1..4).reduce(&[max]); say &[,](1,2);
#---------------------- 72 test_gate_raku_paren_call_passes_its_arguments__arity
use Test;
plan 1;
is(1, 1, "three args reach the callee");
#- 73 test_gate_raku_placeholders_in_a_sub_and_a_for_body_a_comma_list_as_the_last_statement_or_return_value_and_sort_with_a_leading_block_agree_with_rakudo__w
sub meow { $^a };
say meow(5);
sub plus1 { $^a + 1 }
say plus1(5);
sub cat2 { $^b ~ $^a }
say cat2("x", "y");
sub sq { $^x * $^x }
say sq(7);
my sub minus1 { $^a - 1 }
say minus1(8);
sub three { $^c ~ $^a ~ $^b }
say three("a", "b", "c");
sub both { $^a + $a }
say both(4);
sub outer { my $f = { $^a * 2 }; $f($^a) }
say outer(6);
sub pair { $^a, $^b }
say pair(3, 4);
say pair(3, 4).elems;
sub g1 { 1, 2 }
say g1();
sub g2 { return 1, 2 }
say g2();
sub g3($a) { $a, $a + 1 }
say g3(3);
my @r = g3(3);
say @r.elems;
sub g4 { my $x = 5; $x, 7 }
say g4();
sub g5 { (1, 2) }
say g5();
sub g6 { return 7 }
say g6();
sub g7 { return (1, 2), 3 }
say g7().elems;
my $f1 = { 1, 2 };
say $f1();
my $f2 = -> $a { $a, 2 };
say $f2(5);
for 1, 2 { say $^a }
for 1, 2, 3, 4 { say $^a + $^b }
for 1, 2, 3, 4 { say $^b - $^a }
for 1 .. 3 { my $y = $^a * 2; say $y }
my $t;
for 1, 2 { $t = $^a }
say $t;
my @acc;
for 1, 2 { @acc.push($^a * 3) }
say @acc;
for 1, 2 { for 5, 6 { say $^a } }
my @v = 3, 1, 2;
my @s = sort { $^a <=> $^b }, @v;
say @s;
say sort({ $^b <=> $^a }, @v);
say sort -> $x, $y { $y <=> $x }, @v;
say sort { -$_ }, @v;
my @w = <b a c>;
say sort { $^a cmp $^b }, @w;
say sort { $^b cmp $^a }, @w;
#------------------ 74 test_gate_raku_predeclared_names_agree_with_rakudo__names
say π; say τ; say ∞; say -∞;
say Less; say Same; say More; say (Less == -1) ?? "y" !! "n";
say Empty.elems; my @a = Empty; say @a.elems;
say time > 1000000000; say time.WHAT;
my $t = now; say (now - $t) < 5; say (now - $t) >= 0;
my $r = rand; say $r >= 0; say $r < 1; say rand < 1;
say $*PID > 0; say $*PID.WHAT;
say $*PROGRAM-NAME.chars > 0; say $*PROGRAM.Str.chars > 0;
say $*CWD.Str.chars > 0; say $*HOME.Str.chars > 0; say $*TMPDIR.Str.chars > 0;
say %*ENV<HOME>.chars > 0; say %*ENV.elems > 0; say (%*ENV<NOPE_XYZ>:exists);
say @*ARGS.elems;
say $*EXECUTABLE.Str.chars > 0;
say $?LINE; say $?FILE.chars > 0;
my $rr = try { die; 5 }; say $rr.defined;
sub ff { die }; try { ff() }; say "caught";
#----------------- 75 test_gate_raku_predeclared_names_agree_with_rakudo__shadow
sub now { 42 }
sub time { 7 }
sub rand { 9 }
say now; say time; say rand;
sub foo($x = 1) { $x * 2 }
say foo; say foo(4);
my $y = foo; say $y + 1;
sub later-one { 11 }
say later-one;
my $*DYN = 3; say $*DYN;
#-- 76 test_gate_raku_rat_base_prints_the_fraction_digits_rakudo_prints__ratbase
say 11.1.base(16);
say (1/3).base(10, 5);
say 3.75.base(2);
say (-2.5).base(16);
say 0.1.base(3, 4);
say 255.5.base(16);
say 2.5.base(10, 0);
say (-2.5).base(10, 0);
say 3.5.base(2, 3);
say 0.99.base(10, 1);
say (1/7).base(10);
say (22/7).base(16);
say (1/1000003).base(10);
say 0.5.base(36);
say (-0.0625).base(2);
say 7.0.base(2);
say (10/4).base(10, 4);
#------------ 77 test_gate_raku_reversed_meta_operator_agrees_with_rakudo__rmeta
say (5 R- 2);
say (5 R/ 10);
say ("a" R~ "b");
say (2 R** 3);
say (1 R< 2);
say (3 R<=> 4);
say (7 R% 3);
say (7 R%% 3);
say (2 R* 5);
say (1 R+ 2 R+ 3);
say (10 R- 1 R- 1);
say ("abc" Req "abc");
say (4 Rmin 9);
say (2 R== 2);
#--------- 78 test_gate_raku_set_bag_mix_are_typed_values_as_rakudo_has_them__qh
sub show($x) { $x.pairs.map({ .key ~ "=" ~ .value }).sort.join(",") }
my $s = set <a b c>;
my $b = bag <a b a c a>;
my $mx = (a=>0.5, b=>2).Mix;
say $s.elems; say $s.total; say $s<a>; say $s<z>; say $s<a>:exists; say $s<z>:exists; say $s.keys.sort.join(",");
say $b.elems; say $b.total; say $b<a>; say $b<z>; say show($b); say $b.values.sort.join(","); say $b.kv.elems; say $b.antipairs.elems;
say $mx.total; say $mx<a>; say $mx<b>; say $mx<z>; say show($mx);
say set().elems; say so set(); say so $s; say so bag(); say ?$b; say (set() ?? "t" !! "f"); say ($s ?? "t" !! "f");
say set(<a>).gist; say set(<a>).raku; say set(<a>).Str; say bag(<a a>).gist; say bag(<a a>).Str; say bag(<a a>).raku; say mix(<a>).raku; say (a=>0.5).Mix.gist;
say set(<a>).WHAT; say bag(<a>).WHAT; say mix(<a>).WHAT; say SetHash.new(<a>).WHAT; say BagHash.new(<a>).WHAT; say MixHash.new(<a>).WHAT;
say $s ~~ Set; say $s ~~ Setty; say $b ~~ Bag; say $b ~~ Baggy; say $b ~~ Set; say $mx ~~ Mix; say $mx ~~ Baggy;
say $s.Bag.total; say $b.Set.elems; say $b.Mix.total; say $s.Set === $s;
say show(<a b a>.Bag); say show(<a b a>.Set); say show("abc".Set); say show((a=>3,b=>2).Bag); say show((a=>3,b=>0).Set); say show((a=>3,b=>0).Bag); say show((a=>1.5,b=>2).Mix);
say show(Set.new(<a b a>)); say show(Bag.new(<a b a>)); say show(Mix.new(<a b a>)); say show(BagHash.new(<a b a>)); say show(SetHash.new(<a b a>));
say show(set(1,2,2,3)); say show(bag(1,2,2,3)); say set(1,2,3).keys.sort.join(",");
say show(set(<a b c>) (|) set(<c d>)); say show(set(<a b c>) (&) set(<c d>)); say show(set(<a b c>) (-) set(<c d>)); say show(set(<a b c>) (^) set(<c d>));
say show(set(<a b c>) ∪ set(<c d>)); say show(set(<a b c>) ∩ set(<c d>)); say show(set(<a b c>) ∖ set(<c d>)); say show(set(<a b c>) ⊖ set(<c d>));
say show(bag(<a b c c>) (|) bag(<c d c>)); say show(bag(<a b c c>) (&) bag(<c d c>)); say show(bag(<a b c c>) (+) bag(<c d c>)); say show(bag(<a b c c>) (-) bag(<c d c>)); say show(bag(<a b c c>) (.) bag(<c d c>));
say show(bag(<a b c c>) ⊎ bag(<c d c>)); say show(bag(<a b c c>) ⊍ bag(<c d c>));
say show(set(<a b c>) (+) set(<c d>)); say show(set(<a b c>) (.) set(<c d>)); say show(set(<a b>) (|) bag(<b b>)); say show(set(<a b>) (+) set(<b>));
say show((1,2,3) (|) (2,5)); say show((1,2,3) (&) (2,5));
say set(<a b>) (<=) set(<a b c>); say set(<a b>) (<) set(<a b c>); say set(<a b>) (<) set(<a b>); say set(<a b c>) (>=) set(<a b>); say set(<a b c>) (>) set(<a b c>);
say set(<a b>) ⊆ set(<a b c>); say set(<a b>) ⊂ set(<a b>); say set(<a b c>) ⊇ set(<a b>); say set(<a b c>) ⊃ set(<a b>); say set(<a b c>) ⊄ set(<a b>); say set(<a b>) ⊈ set(<a b>); say set(<a b>) ⊉ set(<a b c>); say set(<a b>) ⊅ set(<a b>);
say (1,2,3) (<=) (1,2,3,4); say bag(<a a b>) (<=) bag(<a a b c>); say bag(<a a a>) (<=) bag(<a a b c>); say bag(<a a b c>) (>=) bag(<a a>);
say "a" (elem) set(<a b>); say "z" ∈ set(<a b>); say "z" ∉ set(<a b>); say set(<a b>) (cont) "a"; say set(<a b>) ∋ "a"; say set(<a b>) ∌ "a";
say set(<a b>) (==) set(<b a>); say set(<a b>) ≡ set(<b a>); say set(<a b>) ≢ set(<b a>); say set(<a b>) ≡ set(<a>); say bag(<a b>) (==) set(<a b>); say bag(<a a>) (==) bag(<a>);
say set(<a b>) eqv set(<b a>); say bag(<a b>) eqv set(<b a>); say set(<a b>) === set(<b a>); say set(<a b>) === set(<a>);
my $sh = SetHash.new(<a b>); $sh<c> = True; $sh<a> = False; say $sh.keys.sort.join(","); $sh<b>:delete; say $sh.elems; say $sh.keys.join(","); say $sh<c>:exists;
my $bh = BagHash.new(<a b a>); $bh<c> = 5; $bh<a>--; $bh<b>++; $bh<a>:delete; say show($bh); say $bh.total; say $bh.elems;
my $mh = MixHash.new(<a b>); $mh<a> = 2.5; $mh<z> = -1; say show($mh); say $mh.total; say $mh.elems;
my $one = set <a>; my $bg = bag <a a a>;
try { $one<c> = True }; say $!.message;
try { $bg<a> = 3 }; say $!.message;
try { $bg<z> = 3 }; say $!.message;
try { $one.grab }; say $!.message;
try { $one<a>:delete }; say $!.message;
say $b.pick(*).sort.join(","); say $b.pick(2).elems; say $b.pick(10).elems; say $b.roll(5).elems; say $s.pick ~~ Str; say $s.pick(*).elems;
my $g = BagHash.new(<a a b>); my $x = $g.grab; say $g.total; say $g.grab(*).elems; say $g.elems;
for bag(<a a b>).pairs.sort { .say }
for $s.keys.sort -> $k { print $k, " " }
say "";
say $s.pairs.map({ .value }).join(","); say $b.keys.elems; say $b.sort.map({ .key ~ .value }).join("");
#- 79 test_gate_raku_string_zero_is_true_and_the_string_function_forms_agree_with_rakudo__ff
say ?'0'; say ?'00'; say ?''; say so '0'; say '0'.Bool; say ('0' ?? "t" !! "f"); say !'0'; say (not '0'); say not(0); say not(1);
say lc("ÅÄÖ"); say uc("åäö"); say lc("ABC"); say uc("abc"); say uc("ß");
my $str = "foobar";
say substr($str, *-1); say substr($str, *-4, 2); say substr($str, 0, *-2); say substr($str, 2, *-2); say substr($str, *-4, *-1);
say $str.substr(*-3); say $str.substr(1, 3); say substr($str, 3); say $str;
say split(",", "a,b,c").join("|"); say comb(2, "abcdef").join("|"); say first({ $_ > 1 }, (1,2,3)); say words("a b  c").join(",");
say hash(a=>1,b=>2).elems; say hash(a=>1,b=>2){"b"}; say hash((c=>3)).keys;
say slip(1,2,3).elems;
say sleep(0); say sleep 0.001;
say val("3") + 1; say val("abc");
my $ms = "abbc"; say ($ms ~~ m{a(b+)c}) ?? "brace" !! "no"; say $/[0];
#- 80 test_gate_raku_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__byname
my $f = -> $x { $x + 1 };
say $f(1);
my &g = sub ($a, $b) { $a * $b };
say g(6, 7);
sub h($x) { $x * 10 }
say (1, 2, 3).map(&h);
say (3, 1, 2).sort({ $^a <=> $^b });
say (1, 2, 3, 4).grep({ $_ %% 2 }).map({ $_ * $_ });
class P {
    has $.v = 3;
    method m($x) { $x * $!v }
    method n($x, $y) { $x + $y + $!v }
}
class Q is P {
    method m($x) { callsame() + 1 }
}
say P.new.m(4); say Q.new(v => 5).m(2); say P.new.n(1, 2);
multi sub mm(Int $x) { "int $x" }
multi sub mm(Str $x) { "str $x" }
say mm(5); say mm("a");
my @subs = (sub ($x) { $x + 1 }, sub ($x) { $x * 2 });
say @subs[0](5) + @subs[1](5);
say (1, 2, 3).reduce(-> $a, $b { $a + $b });
#- 81 test_gate_raku_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__calls
sub fib($n) { return $n < 2 ?? $n !! fib($n - 1) + fib($n - 2); }
say fib(18);
sub add2($a, $b) { $a + $b }
sub add3($a, $b, $c) { $a + $b + $c }
sub add4($a, $b, $c, $d) { $a + $b + $c + $d }
sub add5($a, $b, $c, $d, $e) { $a + $b + $c + $d + $e }
sub add7($a, $b, $c, $d, $e, $f, $g) { $a + $b + $c + $d + $e + $f + $g }
say add2(1, 2); say add3(1, 2, 3); say add4(1, 2, 3, 4); say add5(1, 2, 3, 4, 5); say add7(1, 2, 3, 4, 5, 6, 7);
say add2(add2(1, 2), add3(3, 4, 5));
sub nothing() { 42 }
say nothing();
sub dflt($x, $y = 5) { "$x $y" }
say dflt(1); say dflt(1, 2);
sub opt($x, $y?) { $x.defined ~ $y.defined }
say opt(1); say opt(1, 2);
sub ack($m, $n) { $m == 0 ?? $n + 1 !! $n == 0 ?? ack($m - 1, 1) !! ack($m - 1, ack($m, $n - 1)) }
say ack(2, 3);
sub depth($n) { $n == 0 ?? 0 !! 1 + depth($n - 1) }
say depth(3000);
#- 82 test_gate_raku_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__gcstress
sub mk($n) { my @a = (1..$n).map({ "s$_" }); return @a }
sub tot($xs, $k) {
    my $c = 0;
    for $xs.list -> $x { $c += $x.chars }
    return $c + $k;
}
sub walk($n, $acc) { $n == 0 ?? $acc !! walk($n - 1, $acc ~ "k") }
my $sum = 0;
for 1..40 {
    my @x = mk(20);
    $sum += tot(@x, $_);
}
say $sum;
say walk(200, "").chars;
sub nest($d, $a, $b) { $d == 0 ?? "$a$b" !! nest($d - 1, $b ~ "L", $a ~ "R") }
say nest(30, "a", "b").chars;
my @r = (1..30).map(-> $i { tot(mk(5), $i) });
say @r.sum;
#- 83 test_gate_raku_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__shapes
sub twelve($a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$a10,$a11,$a12) { $a1 + $a2 + $a3 + $a4 + $a5 + $a6 + $a7 + $a8 + $a9 + $a10 + $a11 + $a12 }
sub thirteen($a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$a10,$a11,$a12,$a13) { $a1 + $a13 + $a7 }
say twelve(1,2,3,4,5,6,7,8,9,10,11,12);
say thirteen(1,2,3,4,5,6,7,8,9,10,11,12,13);
sub slurp(*@a) { @a.elems }
say slurp(1,2,3);
sub named($x, :$k = 3) { "$x $k" }
say named(1); say named(1, :k(9));
#- 84 test_gate_raku_the_activation_frame_is_carved_and_released_by_the_emitted_prologue__strings
sub f($s) { my $t = $s ~ "x"; return $t ~ "y" }
my $a = "ab"; my $b = f($a); say $a; say $b;
sub g($s) { my $u = $s ~ "1"; my $v = $s ~ "2"; return $u ~ $v }
say g("q"); say g("rs");
my $acc = "";
for 1..5 { $acc = $acc ~ $_ }
say $acc;
sub rep($s, $n) {
    my $r = "";
    for 1..$n { $r = $r ~ $s }
    return $r;
}
say rep("ab", 4); say rep("z", 0);
sub keep($s) { my $t = $s; my $w = $s ~ "!"; return $t ~ $w }
say keep("hi");
#- 85 test_gate_raku_the_bare_dispatcher_words_samewith_and_the_implicit_at_underscore_of_anonymous_routines_agree_with_rakudo__w
class A {
    method m { "A" }
    method n($x) { "A$x" }
}
class B is A {
    method m { "B>" ~ callsame }
    method n($x) { "B>" ~ callwith($x + 1) }
}
class C is B {
    method m { "C>" ~ callsame }
}
say B.new.m; say C.new.m; say B.new.n(1);
class D is A { method m { "D>" ~ callsame() } }
say D.new.m;
class E is A { method m { my $r = callsame; "E>$r" } }
say E.new.m;
class F is A {
    method m { nextsame; "never" }
    method n($x) { nextwith($x + 5); "never" }
}
say F.new.m; say F.new.n(1);
class G is A { method m { return "G>" ~ callwith() } }
say G.new.m;
sub fact($n) { $n < 2 ?? 1 !! $n * samewith($n - 1) }
say fact(5); say fact(1);
sub f1 { @_.elems }
say f1(1,2,3);
sub f2 { %_.elems }
say f2(:a(1), :b(2));
sub f3 { %_<a> + @_[0] }
say f3(5, :a(2));
my $g1 = sub { @_.elems }; say $g1(1,2);
my $g2 = { @_.elems }; say $g2(1,2,3);
my $g3 = { @_[0] + @_[1] }; say $g3(3,4);
my @r = (1,2,3).map({ @_.elems }); say @r;
my $g4 = sub { my ($a, $b) = @_; $a * $b }; say $g4(3,4);
#- 86 test_gate_raku_the_bare_dollar_and_the_item_and_hash_contextualizers_agree_with_rakudo__bd
say (1..4).map({ $++ }).join(",");
sub tick { $++ }
say tick(); say tick(); say tick();
sub twice { my $a = $++; my $b = $++; "$a$b" }
say twice(); say twice();
say ($ = 10) + ($ = 20);
say (1..3).map({ $ += $_ }).join(",");
my $c; say $c++; say $c++; say $c;
my $d; say $d--; say $d;
sub counter { state $n = 0; $n++ }
say counter(); say counter(); say counter();
say $(1,2,3).elems;
say %(a=>1,b=>2).keys.sort.join(",");
say %().elems;
say $(<a b>).WHAT;
say %(a=>1).WHAT;
say (a=>1).hash<a>;
say (1,2,3,4).hash.elems;
say 5.item;
say "abc".item;
say (1,2).item.elems;
say %(x=>5)<x>;
#- 87 test_gate_raku_the_function_forms_list_item_append_prepend_gist_head_tail_pick_unique_repeated_reduce_rotate_agree_with_rakudo__w
say list(1,2,3);
my @a = 1,2,3;
say list(@a); say list(@a).elems; say list(@a,4).elems; say list().elems;
say item(5); say item("x");
my @b = 1,2; append(@b,3,4); say @b; prepend(@b,0); say @b;
append(@b,5); say @b.elems;
say gist(5); say gist("s"); say gist(2.5);
say head(2,(1,2,3)); say head(2,@a); say tail(2,@a); say tail(1,@a); say head(1,4,5,6); say tail(2,4,5,6);
say pick(1,(5,));
say unique(1,1,2); say unique(@a,@a).elems; say repeated(1,1,2,2);
say reduce({$^a*$^b},1,2,3,4); say reduce({$^a + $^b},@a);
say rotate(@a,1); say rotate(@a,-1);
my $c = list(1,2,3).elems + head(1,(7,8)).elems; say $c;
#-- 88 test_gate_raku_the_hyper_operators_binary_and_prefix_agree_with_rakudo__w
my @a = 1,2,3,4; my @b = 3,1,3,1; my $l = (1,2); my $r = (3,4);
say @a >>+<< @b; say @a >>*>> 2; say 10 <<-<< @a; say @a »+« @a; say @a >>+>> 1; say -<< @a;
say (1,2,3) >>+<< (4,5,6); say (1,2,3,4) <<+>> (10,20); say [1,2] >>~<< [3,4]; say (1,2) >>==<< (1,3);
say (1,2,3,4) >>+>> (10,20); say (1,2) >>+>> (10,20,30); say (1,2) <<+<< (10,20,30); say (1,2,3) <<+<< (10,20);
say (1,2) <<+>> (10,20,30); say (1,2,3) <<+>> (10,20);
say (1,(2,3)) >>+>> 1; say ((1,2),(3,4)) >>+<< ((10,20),(30,40));
say () >>+<< (); say (1,2) <<+>> ();
my @c = 1,2; my @d = 3,4;
say (@c >>+<< @d).WHAT; say ($l >>+<< $r).WHAT; say (@c >>+<< $r).WHAT; say ($l >>+<< @d).WHAT; say (5 <<+<< @c).WHAT; say (@c >>+>> 5).WHAT; say (5 <<+<< $l).WHAT;
say -<< (1,2); say !<< (0,1); say ~<< (1,2); say ?<< (0,5); say +<< ("1","2");
say <a b> >>~<< <x y>; say <a b c> >>~>> "x"; say <a b c> <<~>> "!";
say @c >>cmp<< @d; say @c >>max<< @d; say @c >>**<< @d; say (1,2) >>%<< (2,2); say (7,8) >>div<< (2,3);
say [+] @a >>*<< @b; my @e = @a >>+<< @b; say @e; say @e.sum;
say (1..4) >>*>> 2; say (1..3) >>+<< (4..6); say -<< (1..3); say @c >>+<< (1..2);
say 1 >>+<< 2;
say (1,2,3)>>.succ;
#- 89 test_gate_raku_the_infix_operators_the_front_end_names_have_a_runtime_as_rakudos_do__infixops
say "abc" !~~ /z/;
say 5 !~~ Int;
say 5 ~~ (* > 3);
say 2 ~~ (* > 3);
say 4 ~~ { $_ %% 2 };
say 5 ~~ Int;
say "a" ~~ Int;
say (1^..4).list;
say (1^..^4).list;
say 5 +| 2;
say 5 +^ 3;
say 6 +& 3;
say 1 ?| 0;
say 0 ?| 0;
say 1 ?^ 1;
say 1 ?^ 0;
say "a" ~| "b";
say "ab" ~& "ac";
say 12 gcd 18;
say 4 lcm 6;
say -4 lcm 6;
say 1 =~= 1.0000000001;
say 1 =~= 1.0;
say 1 before 2;
say "b" before "a";
say 2 after 1;
say 1 ^^ 0;
say (0 ^^ 0);
say "a" coll "b";
say "b" unicmp "a";
say 1 (elem) (1, 2);
say 3 (elem) (1, 2);
say (1, 2) (cont) 2;
#- 90 test_gate_raku_the_list_methods_permutations_combinations_rotor_invert_maxpairs_minpairs_skip_roll_produce_any_all_fmt_and_minmax_agree_with_rakudo__w
say (1,2,3).permutations;
say (1,2,3).permutations.elems;
say (1,2,3).combinations(2);
say (1,2,3).combinations;
say (1,2,3).combinations(1..2);
say <a a b b b c a>.squish;
say <a b b c c c>.squish(:as(*.uc));
say (1,2,2,3,1).unique;
say (1,2,2,3,1).unique(:as(* %% 2));
say (1,2,2,3,1).repeated;
say (1,2,3,4).rotor(2);
say (1,2,3,4,5).rotor(2, :partial);
say (1,2,3,4,5).rotor(2 => -1);
say (a=>1,b=>2).invert;
say {a=>1,b=>2}.invert;
say (3,1,4,1,5).maxpairs;
say (3,1,4,1,5).minpairs;
say (1,2,3,4).skip;
say (1,2,3,4).skip(2);
say (1,2,3).roll.defined;
say (1,2,3).roll(5).elems;
say 5.pairs;
say "a".antipairs;
say (1,2,3).fmt("%02d");
say (1,2,3).fmt("%d", "-");
say (1,2).any.WHAT;
say (1,2,3).is-lazy;
say (1,2,3).tail(2);
say (1,2,3).tail;
say (1,2,3,4).batch(2);
say (1,2,3).antipairs;
say (1,2,3).pairs;
say (1,2,3).produce(&[+]);
say (3,1,2).minmax;
say (1,2,3,4).combinations(2).elems;
say (1,2,3).permutations.map(*.join).join(",");
say <a b c d>.rotor(2, 1 => 1);
say (1,2,3).any.WHAT;
say (3,1,2).minmax.WHAT;
say (a=>1,b=>(2,3)).invert;
say (1,2,3).fmt("%d", ",");
say ().permutations;
say (1,).combinations;
say (1,2,3,4,5,6).rotor(3);
say (1,2,3,4,5,6).rotor(2, 2);
#- 91 test_gate_raku_the_loose_logical_operators_and_or_xor_andthen_orelse_notandthen_agree_with_rakudo__w
say (1 and 5); say (0 and 5); say (0 or 5); say (3 or 5); say (1 xor 0); say (0 xor 1); say (1 xor 1); say (0 xor 0);
my $y = (0 or 7); say $y;
say (1 and 2 and 3); say (0 or 0 or 9); say (1 or 0 and 5); say (0 or 1 and 5); say (1 and 0 or 7); say (0 and 1 or 7);
say (5 andthen 6); say (Nil andthen 6); say (0 andthen 6); say ("" andthen 6); say (Nil notandthen 6);
say (Nil orelse 6); say (Any orelse 6); say (5 orelse 6); say (0 orelse 6); say (Nil orelse "x");
say (5 andthen $_ * 2); say ((1,2,3) andthen .elems); say (3 andthen { $_ * 2 }); say (3 andthen -> $x { $x + 1 });
say (1 andthen 2 andthen 3);
sub f($x) { $x > 0 or return "neg"; return "pos" }
say f(1); say f(-1);
my $r = 0; $r = 5 if 1 and 2; say $r;
say "a" if 1 and 0; say "b" if 0 or 2;
my $x = 5; ($x > 3 and say "big"); ($x > 9 or say "small");
my $t = 0; 1 or $t++; say $t; 0 or $t++; say $t;
sub note-it($s) { print $s; True }
(note-it("a") and note-it("b")); (0 or note-it("c")); (1 or note-it("d")); (note-it("e") andthen note-it("f")); print "\n";
my $e = Nil; my $v = $e // "dflt"; say $v; my $w = ($e orelse "alt"); say $w;
my $t2 = 0; my $d1 = 1 // $t2++; say $t2; my $d2 = Nil // $t2++; say $t2;
my $d3 = 1 // die "x"; say $d3;
my $x1 = 5 orelse die "no"; say $x1; my $x2 = 0 orelse die "no"; say $x2;
sub f7 { 7 }
my $v7 = f7() orelse die "no"; say $v7;
my %hh = a => 1; my $hv = %hh<b> // "none"; say $hv; say %hh<a> // "none";
my $nn; $nn //= 5; say $nn; $nn //= 9; say $nn;
say (Nil // Nil // 3);
my $tmpf = "/tmp/cc_loose_witness.tmp";
my $fh = open($tmpf, :w) orelse die "cannot";
say "opened"; say so $fh; say ?$fh; say !$fh;
$fh.close; unlink $tmpf;
open($tmpf, :w) or die "cannot2";
say "opened2"; unlink $tmpf;
my $it-s = 2; my $it = 1; say "$it-s and $it"; say "got $it-s.";
sub rb($x) { return $x > 0 and $x < 5 }
say rb(2); say rb(9);
#- 92 test_gate_raku_the_math_and_list_routines_answer_in_function_form_as_rakudos_do__libfns
say floor(2.5); say ceiling(2.5); say round(2.5); say truncate(2.5); say sign(2.5); say sign(-3); say sign(0);
say log2(1.5); say log10(1.5);
say sinh(1.5); say cosh(1.5); say tanh(1.5); say asinh(1.5); say acosh(1.5); say atanh(0.5);
say (0.5).asin; say (0.5).acos; say (0.5).atan; say (1.5).sec; say (1.5).cosec; say (1.5).cotan;
say atan2(1, 2); say 1.atan2(2);
my %h = a => 1;
say keys(%h); say values(%h);
my @a = 1, 2, 3;
say elems(@a); say end(@a);
say shift(@a); say @a;
unshift(@a, 0); say @a;
say pop(@a); say @a;
say ords("ab"); say "é".ords;
say map({ $_ * 2 }, 1, 2); say grep({ $_ > 1 }, 1, 2, 3); say first({ $_ > 1 }, 1, 2, 3);
say 7.is-prime; say 8.is-prime; say 255.base(16); say "ff".parse-base(16); say "5".Int; say 5.Num;
#- 93 test_gate_raku_the_negation_zip_and_cross_metaoperators_destructuring_loops_and_the_right_shift_agree_with_rakudo__w
say 3 !< 2; say 3 !== 3; say "a" !eq "b"; say 1 !<= 2; say 3 !~~ 3; say 2 !> 3; say 5 !>= 5;
say (1,2) Z+ (10,20); say <a b> Z~ <c d>; say (1,2) X* (3,4); say (1,2) Z=> (3,4); say 1,2 Zcmp 3,4; say (1,2) Zcmp (1,3);
say (1,2) Z+ (3,4) Z+ (5,6); say <a b> X~ <c d>; say (1,2) X- (3,4); say (3,1,2) Zmax (2,2,2);
say (1,2) Z (3,4); say (1,2) X (3,4); say (1,2,3) Z <a b>; say (1,2) Z (3,4) Z (5,6); say <a b> Z 1..2;
my %h = (1,2) Z=> (3,4); say %h;
my @r = (1,2) Z (3,4); say @r.elems; say @r; say @r[1]; say @r[0][1];
for (1,2) Z (3,4) { say $_ }
for (1,2) Z (3,4) -> $a, $b { say "$a $b" }
for (1,2) Z (3,4) -> ($a, $b) { say "$a $b" }
for ((1,3),(2,4)) -> ($a, $b) { say "$a $b" }
my @p = (1,3),(2,4); for @p -> ($x, $y) { say $x * $y }
for (1,2) X (3,4) -> ($a, $b) { say "$a|$b" }
for (1,2) Z <a b> -> ($n, $l) { say "$n$l" }
for (1,2,3,4) -> $a, $b { say "$a $b" }
for <a b>.kv -> $i, $v { say "$i:$v" }
say 7 +> 1; say 8 +> 2; say -8 +> 1; say 255 +> 4; say 7 +< 1;
#- 94 test_gate_raku_the_reduce_operators_every_infix_chaining_and_right_associative_agree_with_rakudo__w
say [+] 1..4; say [-] 10,3,2; say [*] 1..5; say [/] 8,2,2; say [**] 2,3,2; say [%] 10,4,3; say [~] <a b c>; say [x] "a",3; say [min] 3,1,2; say [max] 3,1,2;
say [<] 1,2,3; say [<] 3,2,1; say [==] 1,1,1; say [eq] <a a b>; say [<=] 1,2,2; say [!=] 1,2,3; say [!=] 1,1; say [>] 3,2,1; say [lt] <a b c>; say [<] 1; say [<] ();
say [&&] 1,2,3; say [||] 0,0,5; say [//] Any,3,4; say [gcd] 12,18; say [lcm] 4,6; say [+<] 1,2; say [div] 20,3; say [mod] 20,3;
say [,] 1,2,3; say [=>] 1,2,3; say [R-] 1,2,3; say [R/] 2,8; say [R**] 2,3,2;
say [+] (); say [*] (); say [~] ();
my @a = 5,3,1; say [+] @a; say [*] @a; say [<] @a; say [>] @a; say [+] [1,2],[3,4];
say [~~] 1,1,1; say [===] 1,1;
say Any // 3; say (Int) // 5; say 0 // 5; say Nil // 6; say defined(Any); say defined(5); say Any.defined;
#- 95 test_gate_raku_the_regex_engine_is_rx_and_agrees_with_rakudo_on_quantifiers_alternation_captures_aliases_and_classes__rule
grammar G { token word { \w+ }; token TOP { <word> } }
say G.parse("hello");
say G.parse("hello world");
grammar H { token word { \w+ }; rule TOP { <word> } }
say H.parse("hello");
#- 96 test_gate_raku_the_sequence_operator_deduces_arithmetic_and_geometric_series_runs_generators_and_stops_at_its_endpoint_agree_with_rakudo__w
say (1 ... 5);
say (5 ... 1);
say (1, 2 ... 5);
say (1, 3 ... 10);
say (1, 3 ... 9);
say (10, 8 ... 1);
say (1, 2, 4 ... 64);
say (1, 2, 4 ... 100);
say (2, 4, 8 ... 70);
say (1.5, 2 ... 4);
say (1, 2, 3 ... 3);
say (1 ...^ 5);
say (1, 3 ...^ 9);
say ('a' ... 'e');
say ('a', 'c' ... 'i');
say ('a' ... 'zz').elems;
say (1 ... * > 5);
say (1, 2 ... * >= 7);
say (1, 2 ... { $_ >= 4 });
say (1, 2 ... 2);
say (1, 2 ... 1);
say (3 ... 3);
say (1 ... 0);
say (5, 4 ... 1);
say (1, 1.5 ... 3);
say (1 ... 5, 9);
say (1, 2 ... 3, 7);
say (0, 5 ... 20);
say (1, 2 ... *).head(5);
say (1 ... *)[3];
say (2, 4 ... *)[0..4];
say (1, 1, * + * ... *).head(8);
say (1, -1 ... *).head(4);
say (1, 2, 4 ... *).head(6);
say (10, 20 ... 55);
say (1, 3, 5 ... 4);
say (3, 2 ... 5);
say (1, 1, * + * ... 21);
say (1, { $_ * 2 } ... 64);
say (1, * * 3 ... 243);
say (1, 2, { $^a + $^b } ... 21);
say (1, 1, * + * ... * > 30);
say (1, { $_ + 2 } ... * > 9);
say (1, * + 1 ... 5);
say (1, 2, * + * ... *).head(6);
my @f = 1, 1, * + * ... *; say @f[0..7];
my @a = (1, 2 ... 10); say @a.elems;
say [+] 1 ... 100;
for 1 ... 3 { print $_ }
say (1, 2, 3 ... 6).sum;
say (1 ... 10).grep(* %% 3);
my ($a, $b) = (1, 2 ... 4)[0, 3]; say "$a $b";
say (10, 9 ... 7).reverse;
#- 97 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p1
use Test;
plan 3;
ok 1, "a";
#- 98 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p2
use Test;
plan 2;
ok 1, "a";
ok (1 ~~ 2) , "b";
sub f { fail "x" }
ok f(), "c";
#- 99 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p3
use Test;
plan 2;
ok 1, "a";
ok 0, "b";
ok 1, "c";
#- 100 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p4
use Test;
plan 2;
ok 1, "a";
nok 0, "b";
#- 101 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p5
use Test;
plan 3;
ok 1, "a";
ok 0, "b";
ok 0, "c";
#- 102 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p6
use Test;
ok 1, "a";
done-testing;
#- 103 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p7
use Test;
plan 2;
ok 1, "a";
ok 0, "b";
done-testing;
#- 104 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p8
use Test;
plan 1;
ok 1, "a";
ok 1, "b";
#- 105 test_gate_raku_the_test_module_exits_as_rakudos_does_when_the_plan_is_not_met_or_a_test_fails__p9
use Test;
plan 3;
ok 0, "a";
#- 106 test_gate_raku_the_universal_methods_of_a_user_object_chr_ord_chrs_bool_as_int_and_a_type_objects_falsity_agree_with_rakudo__w
class Foo { }
class Bar { has $.x = 1; has $.y = "a"; has $!p = 2; method m { 2 } }
my $f = Foo.new; my $b = Bar.new;
say $f.defined; say $b.Bool; say $b.so; say $b.not; say $f.gist; say $b.gist; say $b.raku; say $b.perl;
say $b.item.x; say $b.elems; say $b.head.y; say $b.list.elems; say $b.Seq.elems; say $b.self.m;
say $f; say $b; say [$b]; say [$b, $f]; say "k: {$b.gist}";
say ?$f; say !$f; say $f ~~ Foo; say $b.isa(Bar); say $b.WHAT.gist;
say Int ?? "T" !! "F"; say so Int; say ?Str; say !Int; say (Any ?? 1 !! 0);
say True.Int; say False.Int; say True.Num; say True.Numeric; say (1 == 1).Int + 1;
say 8364.chr; say "é".ord; say "€".ord; say "😀".ord; say chr(8364); say ord("€"); say 5.ord; say 12.ord; say chr(233).chars;
say chrs(72,105); say (8364,65).chrs; say chrs((72,105));
my @a = 1,2; @a.push(); @a.unshift(); @a.append(); @a.prepend(); unshift(@a); push(@a); say @a; say @a.unshift().elems;
say 5.Numeric; say 2.5.Real;
#- 107 test_gate_raku_unicode_normalization_nfc_nfd_nfkc_nfkd_and_the_uni_type_agree_with_rakudo__w
sub show(*@cps) {
    my $u = Uni.new(|@cps);
    say $u.elems, ' ', $u.NFC.list.join(','), ' | ', $u.NFD.list.join(','), ' | ', $u.NFKC.list.join(','), ' | ', $u.NFKD.list.join(',');
}
show(0xC980);
show(0xD723);
show(0xCB30);
show(0xC96E);
show(0xD08A);
show(0xFC6F);
show(0x2F942);
show(0x2F8A0);
show(0xD110);
show(0xCC78);
show(0x2F8D);
show(0x1D47E);
show(0xC8C4, 0x0334, 0x11AE);
show(0xB697);
show(0x1F129);
show(0x1D412);
show(0xD476);
show(0x0061, 0x11368, 0x0315, 0x0300, 0x05AE, 0x0062);
show(0xFD89);
show(0xC25D);
show(0xC994);
show(0x1FAA);
show(0x0061, 0x0315, 0x0300, 0x05AE, 0x20DB, 0x0062);
show(0xD326);
show(0x00F2);
show(0x00AF);
show(0x2F94C);
show(0xAEC9);
show(0xFE69);
show(0x0061, 0x05B0, 0x094D, 0x3099, 0xAAF6, 0x0062);
show(0xCAF8);
show(0xB97E);
show(0xC800);
show(0xFCE4);
show(0x2F9EA);
show(0xD1F9);
show(0xADBD);
show(0xB56A);
show(0xCF85);
show(0x0061, 0x0315, 0x0300, 0x05AE, 0x073D, 0x0062);
show(0xCA22);
show(0xB363);
show(0xC3B7);
show(0xD60E);
show(0x1105, 0x0334, 0x116D);
show(0xB051);
show(0xB819);
show(0xAD3A);
show(0xD130);
show(0xB4C5);
show(0x0061, 0x05B0, 0x094D, 0x3099, 0x1B44, 0x0062);
show(0x01C6);
show(0xD791);
show(0x1D63E);
show(0xC2E8);
show(0x1D63A);
show(0xB501);
show(0xC124);
show(0x0144);
show(0x0061, 0x0315, 0x0300, 0x05AE, 0xA8E6, 0x0062);
show(0x0061, 0x0302, 0x0315, 0x0300, 0x05AE, 0x0062);
show(0x333D);
show(0x32C8);
show(0x0061, 0x1E011, 0x0315, 0x0300, 0x05AE, 0x0062);
show(0xCBBD);
show(0xBFBD);
show(0xC286);
show(0xC55D);
show(0xAC00);
show(0x1100, 0x1161, 0x11A8);
show(0xD7A3);
show(0x1100, 0xAC00, 0x11A8);
show(0x00C5);
show(0x212B);
show(0xFB01);
show(0x2460);
show(0x1E9B, 0x0323);
show(0xFDFA);
show(0x0041, 0x030A);
show();
say "a\x[0301]".NFC.list.join(',');
say "a\x[0301]".NFD.list.join(',');
say "\x[FB01]".NFKC.list.join(',');
say "\x[FB01]".NFKD.list.join(',');
say "ab".NFC.list.join(',');
say Uni.new(0x41, 0x42).Str;
say (Uni.new(0x41, 0x30A) ~ Uni.new(0x42)).NFC.list.join(',');
say Uni.new(0x1E0A, 0x0323).NFC.list ~~ (0x1E0C, 0x0307);
say Uni.new(0x1E0A, 0x0323).NFD.list ~~ (0x44, 0x323, 0x307);
say Uni.new(0x41).NFC.WHAT;
say Uni.new(0x41).WHAT;
say Uni.new(1, 2, 3).elems;
#----------------- 108 test_gate_raku_whatevercode_curries_as_rakudo_does__lists
say (1,2,3).map(* * 2);
say (1,2,3,4).grep(* > 2);
say (3,1,2).sort(-*);
say (1,2,3).first(* > 1);
my @a = 1,2,3,4;
say @a.map(* + 10);
say @a.grep(* %% 2).map(* ** 2);
say @a.sort(-*).map(*.Str);
say @a.reduce(* + *);
say (<b a c>).sort(*.ord);
say @a[*-1] + 1;
say @a.map({ $_ * 2 }).map(* - 1);
my $inc = * + 1; my $dbl = * * 2;
say $inc($dbl(5));
say (1,2,3).map(-> $x { $x + 1 });
say <a b c>.map(* ~ "!");
say (* ** 2)(4);
say (2 ** *)(5);
say (* > 1 ?? "a" !! "b")(1) if False;
#------------------- 109 test_gate_raku_whatevercode_curries_as_rakudo_does__ops
say ((* * 2 + 1)(3));
say ((* + *)(3, 4));
say (((* + 1) * (* + 2))(3, 4));
say (((* + 1) + (* + 2))(3, 4));
say (((* + 1) * 2)(5));
say (*.uc)("a");
say (*.uc.lc)("A");
say (*[1])((5,6,7));
say (-*)(3);
say (!*)(0);
say (* ~ "x")("a");
say (* > 2)(3);
my $f = * + 1;
say $f(4);
say $f(10);
#------------- 110 test_gate_raku_whatevercode_curries_as_rakudo_does__subscript
my @a = 1,2,3;
say @a[*-1];
