function r(n)
  if n = 0 then return 0
  return r(n - 1) + 1
end

function main()
  OUTPUT := "depth=" || r(50000)
end
