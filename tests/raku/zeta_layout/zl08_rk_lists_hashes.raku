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
