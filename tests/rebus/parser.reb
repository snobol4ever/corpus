#----------------------------------------------------------------- 1 blank_lines
function main()

x := 1

y := 2

end
#---------------------------------------------------------------- 2 comment_hash
function main()  # function comment
# this is a full-line comment
x := 1  # trailing
end
#-------------------------------------------------------------- 3 compound_basic
function main()
{
OUTPUT := "a";
OUTPUT := "b";
}
end
#---------------------------------------------------------------- 4 cursor_basic
function main()
  x ? @pos
end
#----------------------------------------------------------------- 5 deref_basic
function main()
  x := $y
  z := $"name"
end
#---------------------------------------------------------------- 6 field_access
function main()
x := r.field
end
#------------------------------------------------------------------- 7 flow_fail
function main()
fail
end
#------------------------------------------------------------------- 8 flow_stop
function main()
stop
end
#-------------------------------------------------------------- 9 keyword_assign
function main()
    &FULLSCAN := 1
    &ANCHOR := 0
end
#----------------------------------------------------------------- 10 local_vars
function main()
local x, y;
x := 1
end
#------------------------------------------------------------------- 11 real_lit
function main()
    x := 3.14
    y := 2.718
end
#---------------------------------------------------------------- 12 return_bare
function main()
return
end
#----------------------------------------------------------------- 13 return_val
function f(x)
return x
end
#------------------------------------------------------------------ 14 unary_pat
function main()
  x := ~y
  z := !w
  a := /b
  c := \d
end
#------------------------------------------------------------------ 15 unary_pos
function main()
x := +y
end
