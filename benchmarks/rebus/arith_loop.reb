# arith_loop.reb -- fixed-count accumulator loop.
# bottleneck: while-loop dispatch + scalar arithmetic + local-variable access.
# Standalone: scrip arith_loop.reb

function main()
  local i, n
  n := 0
  i := 1
  while i <= 300000 do {
    n := n + i
    i := i + 1
  }
  OUTPUT := n
end
