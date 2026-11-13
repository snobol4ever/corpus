my @show = 'a', 'b', 'c', 'd';
my @i = (0, 2);
say @show[@i];
say @show[0, 2];
say @show[0..1];
say @show[@i.list];
say @show[1..*];
say @show[*-1];
say @show[(1,2).list];
say @show[@i].join("+");
say @show[@i.reverse];
say @show[()].elems;

my @grid = [1, 2, 0], [0, 1, 2];
sub row(@g, $r) { join "", @show[@g[$r].list] }
say row(@grid, 0);
say row(@grid, 1);
