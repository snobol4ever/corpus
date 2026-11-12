# rakudo-compiler.raku -- RakDemo (CEO-1607, Lon 2026-10-10: "Is the Raku compiler written in Raku? If so that should be made a demo."):
# Rakudo's own compiler front end, reached through its compiler object, parses the Raku source on standard input, and its parse
# tree is printed one node a line, indented by depth, the children of a node in source order then by name so the answer is fixed.
use nqp;
sub kids(Mu \m) {
    my @out;
    for m.hash.kv -> $k, Mu \v {
        if v ~~ Positional { @out.push: [$k, $_] for v.list }
        else { @out.push: [$k, v] }
    }
    @out.grep({ nqp::can(.[1], 'from') }).sort({ (.[1].from, .[0]) })
}
sub walk(Mu \m, Str $name, Int $depth) {
    my @k = kids(m);
    my $text = m.Str.subst(/\s+/, ' ', :g).trim;
    say '  ' x $depth ~ $name ~ ': ' ~ ($text.chars > 60 ?? $text.substr(0, 60) ~ '...' !! $text);
    walk(.[1], .[0], $depth + 1) for @k;
}
my $source = $*IN.slurp;
my $compiler := nqp::getcomp('Raku');
walk($compiler.parse($source), 'TOP', 0);
