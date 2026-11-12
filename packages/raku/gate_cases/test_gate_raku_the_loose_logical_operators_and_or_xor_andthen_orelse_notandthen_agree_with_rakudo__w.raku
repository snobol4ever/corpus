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
