# SYNTAX TEST "Packages/User/Raku.sublime-syntax"
    # a comment
#   ^^^^^^^^^^^ comment.line.number-sign.raku
    sub greet($name) {
#   ^^^ storage.type.function.raku
#       ^^^^^ entity.name.function.raku
#             ^^^^^ variable.other.raku
        my @list = 1, 2, 3;
#       ^^ storage.modifier.raku
#          ^^^^^ variable.other.raku
#                ^ keyword.operator.raku
#                  ^ constant.numeric.integer.raku
        my %h = a => 1;
#          ^^ variable.other.raku
#                 ^^ keyword.operator.assignment.raku
        say "hello $name";
#       ^^^ support.function.raku
#           ^^^^^^ string.quoted.double.raku
#                  ^^^^^ variable.other.interpolated.raku
        return 42;
#       ^^^^^^ keyword.control.raku
#              ^^ constant.numeric.integer.raku
    greet('world');
#   ^^^^^ variable.function.raku
#         ^^^^^^^ string.quoted.single.raku
    class Point is export { }
#   ^^^^^ storage.type.class.raku
#         ^^^^^ entity.name.type.class.raku
#               ^^ keyword.other.trait.raku
    say 0x1F, 3.14e2, 1_000;
#       ^^^^ constant.numeric.integer.raku
#             ^^^^^^ constant.numeric.float.raku
#                     ^^^^^ constant.numeric.integer.raku
    if $a eq 'x' and not $b { fail } else { redo }
#   ^^ keyword.control.raku
#         ^^ keyword.operator.word.raku
#                ^^^ keyword.operator.word.raku
#                             ^^^^ keyword.control.raku
#                                           ^^^^ keyword.control.raku
    my $r = "abc" ~~ m/ b /;
#                 ^^ keyword.operator.comparison.raku
#                    ^^^^^^ string.regexp.raku
    say @a.elems;
#         ^ punctuation.accessor.raku
#          ^^^^^ variable.function.raku
    for @a -> $i { BEGIN { } }
#          ^^ keyword.operator.pointy.raku
#                  ^^^^^ keyword.control.phaser.raku
