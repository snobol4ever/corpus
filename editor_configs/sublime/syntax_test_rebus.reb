# SYNTAX TEST "Packages/User/Rebus.sublime-syntax"
# a hash comment
# <- comment.line.number-sign.reb
record point(x, y)
# <- keyword.declaration.record.reb
#      ^^^^^ entity.name.type.record.reb
function fact(n)
# <- keyword.declaration.function.reb
#        ^^^^ entity.name.function.reb
    local i
#   ^^^^^ keyword.declaration.reb
    if n <= 1 then return 1
#   ^^ keyword.control.reb
#        ^^ keyword.operator.comparison.reb
#           ^ constant.numeric.integer.reb
#             ^^^^ keyword.control.reb
#                  ^^^^^^ keyword.control.reb
    s := "text" || 'x'
#   ^ variable.other.reb
#     ^^ keyword.operator.assignment.reb
#        ^^^^^^ string.quoted.double.reb
#               ^^ keyword.operator.pattern.reb
#                  ^^^ string.quoted.single.reb
    r := 2.5 + &UCASE
#        ^^^ constant.numeric.float.reb
#              ^^^^^^ variable.language.keyword.reb
    t ||:= u[1 +: 2]
#     ^^^^ keyword.operator.assignment.reb
#              ^^ keyword.operator.substring.reb
    FOR i FROM 1 TO 3 DO next
#   ^^^ keyword.control.reb
#         ^^^^ keyword.control.reb
#                     ^^ keyword.control.reb
    r := fact(3)
#        ^^^^ entity.name.function.call.reb
    q := 1. + 1e5 + 1.5e-3
#        ^^ constant.numeric.float.reb
#             ^^^ constant.numeric.float.reb
#                   ^^^^^^ constant.numeric.float.reb
end
# <- keyword.declaration.reb
PROCEDURE main()
# <- keyword.declaration.function.reb
