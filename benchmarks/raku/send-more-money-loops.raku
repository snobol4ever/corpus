# ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
# The bracket encloses the loop nest -- the WORK. The single `say` that fires once inside it is left where
# upstream put it (moving it would change the algorithm); one line of output inside a 10^8-comparison
# search is not a measurable share. Timestamps go to STDERR (note) so stdout stays byte-comparable and
# send-more-money-loops.ref verifies unchanged. wall_us()/wall_ms() are SCRIP builtins; Rakudo gets them
# from prelude_rakudo.rakumod via -M, so this file is byte-identical on every engine.
my $t0 = wall_us(); my $m0 = wall_ms();
my int $s = -1;
while ++$s <= 9 {
    next if $s == 0;

    my int $e = -1;
    while ++$e <= 9 {
        next if $e == $s;

        my int $n = -1;
        while ++$n <= 9 {
            next if $n == $s;
            next if $n == $e;

            my int $d = -1;
            while ++$d <= 9 {
                next if $d == $s;
                next if $d == $e;
                next if $d == $n;

                my int $send = $s*1000 + $e*100 + $n*10 + $d;

                my int $m = -1;
                while ++$m <= 9 {
                    next if $m == 0;
                    next if $m == $s;
                    next if $m == $e;
                    next if $m == $n;
                    next if $m == $d;

                    my int $o = -1;
                    while ++$o <= 9 {
                        next if $o == $s;
                        next if $o == $e;
                        next if $o == $n;
                        next if $o == $d;
                        next if $o == $m;

                        my int $r = -1;
                        while ++$r <= 9 {
                            next if $r == $s;
                            next if $r == $e;
                            next if $r == $n;
                            next if $r == $d;
                            next if $r == $m;
                            next if $r == $o;

                            my int $more = $m*1000 + $o*100 + $r*10 + $e;

                            my int $y = -1;
                            while ++$y <= 9 {
                                next if $y == $s;
                                next if $y == $e;
                                next if $y == $n;
                                next if $y == $d;
                                next if $y == $m;
                                next if $y == $o;
                                next if $y == $r;

                                my int $money =
                                    $m*10000 + $o*1000 + $n*100 + $e*10 + $y;
                                next unless $send + $more == $money;

                                say "$send + $more == $money";
                            }
                        }
                    }
                }
            }
        }
    }
}
my $t1 = wall_us(); my $m1 = wall_ms();
note("BENCH kernel=send-more-money-loops work_us=" ~ ($t1 - $t0) ~ " work_ms=" ~ ($m1 - $m0));
