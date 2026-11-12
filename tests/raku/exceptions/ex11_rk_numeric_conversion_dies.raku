# ex11 -- a C conversion inside an operator raises: 'abc' + 1 is X::Str::Numeric, uncaught, so Rakudo prints what came before, speaks once on stderr and exits 1 (SCRIP at fe4714842 fails the statement silently and goes on: the protocol's P2 raise, P3 omega test and P5 root voice for Raku; DESIGN-PLAN exceptions, the cto 2026-10-29)
say 'before';
say 'abc' + 1;
say 'never';
