=begin pod
=head1 Title

Some text here.
=end pod
#| A documented sub
sub doc { 1 }
say $=pod.elems;
say $=pod[0].contents.elems;
say $=pod[0].contents[0].^name, " ", $=pod[0].contents[0].contents[0].contents[0];
say $=pod[0].contents[1].contents[0];
say $=pod[1].^name;
say &doc.WHY;
