# exercism_raku -- the Raku track of Exercism

The practice exercises of https://github.com/exercism/raku (MIT): each exercise's tests run against its model solution, as exercism's runner
runs them, rakudo printing a TAP stream (ok N - name). Root /home/packages/raku/exercism_raku, built from the track: the model solution in lib/, the tests in t/. Read in place,
each run in a copy of the whole root. Cut twice on rakudo 2026.05 (the grader 2026-11-18; Lon: "And all the Exercism we can get."). On the oracle 98 of
99 tests pass every case; leap/t/leap.rakutest does not compile (its answer is rakudo's error).
