my %h = a => 1, b => 2;
my @l = 10, 20, 30;
say keys(%h).sort, "|", values(%h).sort, "|", kv(%h).elems, "|", pairs(%h).elems;
say elems(@l), "|", end(@l);
splice(@l, 1, 1, 99);
say @l;
