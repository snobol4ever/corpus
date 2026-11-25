# Accounts: records that change and a transfer that can fail

Rebus Lab walks program (developer_08, 2026-11-23): the same program as the notebook, one fence a cell.

```Rebus
record account(owner, balance)

function deposit(a, amt)
  balance(a) := balance(a) + amt
  return a
end
```

```Rebus
function withdraw(a, amt)
  if amt > balance(a) then fail
  balance(a) := balance(a) - amt
  return a
end

function report(a)
  OUTPUT := owner(a) || " " || balance(a)
  return a
end
```

```Rebus
function transfer(src, dst, amt)
  if withdraw(src, amt) then {
    deposit(dst, amt)
    return amt
  }
  fail
end

function main()
  local ann, bob
  ann := account("ann", 100)
  bob := account("bob", 20)
  report(ann)
  report(bob)
  if transfer(ann, bob, 70) then OUTPUT := "moved 70"
  if transfer(ann, bob, 70) then OUTPUT := "moved 70 again" else OUTPUT := "refused"
  report(ann)
  report(bob)
end
```
