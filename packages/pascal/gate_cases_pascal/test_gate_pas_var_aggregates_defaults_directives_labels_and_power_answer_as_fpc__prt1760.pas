program prt1760(output);
label skip;
begin goto skip; writeln('*** Should not execute this'); skip: writeln('At label') end.
