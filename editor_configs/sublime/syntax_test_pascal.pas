// SYNTAX TEST "Packages/User/Pascal.sublime-syntax"
    {$mode objfpc}
//  ^^ punctuation.definition.preprocessor.begin.pascal
//    ^^^^^^^^^^^ meta.preprocessor.pascal
    { a brace comment }
//  ^ punctuation.definition.comment.begin.pascal
//    ^^^^^^^^^^^^^^^ comment.block.pascal
    (* a paren comment *)
//  ^^ punctuation.definition.comment.begin.pascal
//     ^^^^^^^^^^^^^^^ comment.block.pascal
    // a line comment
//  ^^ punctuation.definition.comment.pascal
//     ^^^^^^^^^^^^^^ comment.line.double-slash.pascal
    program Hello;
//  ^^^^^^^ keyword.other.pascal
//          ^^^^^ entity.name.namespace.pascal
//               ^ punctuation.terminator.pascal
    PROGRAM Upper;
//  ^^^^^^^ keyword.other.pascal
//          ^^^^^ entity.name.namespace.pascal
    var i: integer;
//  ^^^ keyword.other.pascal
//       ^ punctuation.separator.colon.pascal
//         ^^^^^^^ storage.type.pascal
    function Twice(n: integer): integer;
//  ^^^^^^^^ keyword.other.pascal
//           ^^^^^ entity.name.function.pascal
    procedure TFoo.Run;
//  ^^^^^^^^^ keyword.other.pascal
//            ^^^^ entity.name.type.class.pascal
//                 ^^^ entity.name.function.pascal
    for i := 1 to 10 do writeln('i=', i);
//  ^^^ keyword.control.pascal
//        ^^ keyword.operator.assignment.pascal
//           ^ constant.numeric.integer.decimal.pascal
//             ^^ keyword.control.pascal
//                   ^^ keyword.control.pascal
//                      ^^^^^^^ support.function.pascal
//                              ^ punctuation.definition.string.begin.pascal
//                               ^^ string.quoted.single.pascal
    s := 'it''s' + #13 + #$41;
//          ^^ constant.character.escape.quote.pascal
//                 ^^^ constant.character.pascal
//                       ^^^^ constant.character.pascal
    x := $FF + 6.28E-2 + 1e5 + 7;
//       ^^^ constant.numeric.integer.hexadecimal.pascal
//             ^^^^^^^ constant.numeric.float.pascal
//                       ^^^ constant.numeric.float.pascal
//                             ^ constant.numeric.integer.decimal.pascal
    a[1..3] := nil;
//    ^ constant.numeric.integer.decimal.pascal
//     ^^ punctuation.separator.range.pascal
//       ^ constant.numeric.integer.decimal.pascal
//             ^^^ constant.language.pascal
    if (a <> b) and not (c div 2 = 0) then p := @q;
//  ^^ keyword.control.pascal
//        ^^ keyword.operator.comparison.pascal
//              ^^^ keyword.operator.word.pascal
//                  ^^^ keyword.operator.word.pascal
//                         ^^^ keyword.operator.word.pascal
//                                    ^^^^ keyword.control.pascal
//                                              ^ keyword.operator.pointer.pascal
    type t = packed array [1..2] of record f: string end;
//           ^^^^^^ storage.type.pascal
//                  ^^^^^ storage.type.pascal
//                                  ^^^^^^ storage.type.pascal
//                                            ^^^^^^ storage.type.pascal
//                                                   ^^^ keyword.other.pascal
    try raise except finally on E do halt;
//  ^^^ keyword.control.pascal
//      ^^^^^ keyword.control.pascal
//            ^^^^^^ keyword.control.pascal
//                   ^^^^^^^ keyword.control.pascal
//                           ^^ keyword.control.pascal
    virtual override private;
//  ^^^^^^^ source.pascal - keyword - storage - entity
//          ^^^^^^^^ source.pascal - keyword - storage - entity
//                   ^^^^^^^ source.pascal - keyword - storage - entity
    generic specialize bitpacked external resourcestring;
//  ^^^^^^^ keyword.other.pascal
//          ^^^^^^^^^^ keyword.other.pascal
//                     ^^^^^^^^^ storage.type.pascal
//                               ^^^^^^^^ keyword.other.pascal
//                                        ^^^^^^^^^^^^^^ keyword.other.pascal
