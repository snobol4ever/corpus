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
