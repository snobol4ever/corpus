# string_concat.reb -- fixed-count string concatenation.
# bottleneck: string allocation + the || concat operator's runtime path.
# Standalone: scrip string_concat.reb

function main()
  local i, s
  s := ""
  i := 1
  while i <= 4000 do {
    s := s || "x"
    i := i + 1
  }
  OUTPUT := size(s)
end
