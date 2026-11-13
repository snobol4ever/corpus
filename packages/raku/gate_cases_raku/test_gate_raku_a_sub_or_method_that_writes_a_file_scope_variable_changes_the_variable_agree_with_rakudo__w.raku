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
