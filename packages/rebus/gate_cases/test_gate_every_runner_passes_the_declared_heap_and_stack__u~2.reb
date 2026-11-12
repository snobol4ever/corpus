function main()
  local t, i
  t := table()
  i := 0
  while i < 30000 do {
    i := i + 1
    t[i] := dupl("x", 100)
  }
  OUTPUT := "built " || i
end
