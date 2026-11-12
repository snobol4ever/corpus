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
