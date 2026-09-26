# *BENCH kernel=parse-json-no-obj-creation -- raku-bench whole program 'parse-json-no-obj-creation' (japhb/raku-bench, Artistic 2.0; the mini table's data file panda-projects.json copied beside the kernel and resolved from the program's own directory, count 8 baked as the MAIN default; the program prints nothing of its own, so the trailing say of the count parsed is the import's line); imported 2026-09-26 (ceo CEO-1283)
# JSON parsing copied from JSON::Tiny with very minor changes

grammar JSON::Tiny::Grammar {
    token TOP       { ^ \s* [ <object> | <array> ] \s* $ }
    rule object     { '{' ~ '}' <pairlist>     }
    rule pairlist   { <?> <pair> * % \,             }
    rule pair       { <?> <string> ':' <value>     }
    rule array      { '[' ~ ']' <arraylist>    }
    rule arraylist  { <?> <value>* % [ \, ]        }

    proto token value {*}
    token value:sym<number> {
        '-'?
        [ 0 | <[1..9]> <[0..9]>* ]
        [ \. <[0..9]>+ ]?
        [ <[eE]> [\+|\-]? <[0..9]>+ ]?
    }
    token value:sym<true>    { <sym>    }
    token value:sym<false>   { <sym>    }
    token value:sym<null>    { <sym>    }
    token value:sym<object>  { <object> }
    token value:sym<array>   { <array>  }
    token value:sym<string>  { <string> }

    token string {
        \" ~ \" ( <str> | \\ <str_escape> )*
    }

    token str {
        <-["\\\t\n]>+
    }

    token str_escape {
        <["\\/bfnrt]> | u <xdigit>**4
    }
}

sub from-json($text) {
    JSON::Tiny::Grammar.parse($text);
}

sub MAIN($json-file = $*PROGRAM.parent.add('panda-projects.json').Str, Int $count = 8) {
    my $json := slurp($json-file);
    my Int $i = 0;

    while $i < $count {
        $i++;
        my $data := from-json($json);  #OK
    }
    say "parsed $i";
}
