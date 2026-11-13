grammar G { token word { \w+ }; token TOP { <word> } }
say G.parse("hello");
say G.parse("hello world");
grammar H { token word { \w+ }; rule TOP { <word> } }
say H.parse("hello");
