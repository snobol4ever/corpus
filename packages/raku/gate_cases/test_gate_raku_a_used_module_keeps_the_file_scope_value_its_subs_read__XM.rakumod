unit module XM;
my $k = 5;
my $twice = $k * 2;
sub scaled($a) is export { $a * $k }
sub pair-up($a) is export { $a + $twice }
multi both(Int $a) is export { $a * $k }
multi both(Str $a) is export { $k }
