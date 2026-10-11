# *BENCH kernel=rc-forest-fire -- raku-bench whole program 'rc-forest-fire' (japhb/raku-bench; GFDL 1.2 via Rosetta Code; the mini table's arguments 16 16 8 baked as MAIN defaults); imported 2026-09-26 (ceo CEO-1283); re-cut 2026-10-11 (CEO-1641): srand/rand/Bool.pick replaced by the deterministic draw prand, a 31-bit LCG seeded 42, so the ref is the simulation's, not MoarVM's PRNG's
my $seed = 42;
sub prand { $seed = ($seed * 1103515245 + 12345) % 2147483648; $seed / 2147483648 }
my $RED   = "\e[1;31m";
my $GREEN = "\e[0;32m";
my $CLEAR = "\e[0m";

enum Cell-State <Empty Tree Burning>;
my @show = ('  ', $GREEN ~ '木' ~ $CLEAR, $RED ~ '火' ~ $CLEAR);

class Forest {
    has @!grid;
    has @!neighbors;
    has Int $.height;
    has Int $.width;
    has $.p;
    has $.f;

    method new(Int $height, Int $width, $p=0.01, $f=0.001) {
        my $c = self.bless(:$height, :$width, :$p, :$f);
        $c!init-grid;
        $c!init-neighbors;
        return $c;
    }

    method !init-grid {
        @!grid = [ flat (prand() < 1/2 ?? Tree !! Empty) xx $!width ] xx $!height;
    }

    method !init-neighbors {
        @!neighbors = [ [] xx $!width ] xx $!height; # XXX rakudo doesn't autoviv yet
        for flat(^$!height X ^$!width) -> $i, $j {
            my $k = 0;
            for
                    [-1,-1],[+0,-1],[+1,-1],
                    [-1,+0],        [+1,+0],
                    [-1,+1],[+0,+1],[+1,+1]
            {
                my $n := @!grid[$i + .[0]][$j + .[1]];
                @!neighbors[$i][$j][$k++] := $n if $n;
            }
        }
    }

    method step {
        my @new;
        @new = [] xx $!height;   # XXX rakudo doesn't autoviv yet
        for flat (^$!height X ^$!width) -> $i, $j {
            given @!grid[$i][$j] {
                when Empty   { @new[$i][$j] = prand() < $!p ?? Tree !! Empty }
                when Tree    { @new[$i][$j] =
                     (@!neighbors[$i][$j].any === Burning or prand() < $!f) ?? Burning !! Tree;
                }
                when Burning { @new[$i][$j] = Empty }
            }
        }
        for flat(^$!height X ^$!width) -> $i, $j {
            @!grid[$i][$j] = @new[$i][$j];
        }
    }

    method Str {
        join '', gather for ^$!height -> $i {
            take @show[@!grid[$i].list], "\n";
        }
    }
}

sub MAIN (Int $w = 16, Int $h = 16, Int $steps = 8) {
    my Forest $f .= new($h, $w);
    print "\e[2J$CLEAR";      # ANSI clear screen

    my $i = 0;
    until $i >= $steps {
        print "\e[H";   # ANSI home
        say $i++;
        say $f.Str;
        $f.step;
    }
}
