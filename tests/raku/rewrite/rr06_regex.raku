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
