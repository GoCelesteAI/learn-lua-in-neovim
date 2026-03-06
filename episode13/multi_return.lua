-- Multiple Returns and Variadics

print("=== Min Max ===")

function min_max(a, b, c)
  local mn = math.min(a, b, c)
  local mx = math.max(a, b, c)
  return mn, mx
end

local smallest, largest = min_max(5, 2, 8)
print("Min: " .. smallest .. ", Max: " .. largest)

print("=== Divide ===")

function divide(a, b)
  return a // b, a % b
end

local q, r = divide(17, 5)
print("17 / 5 = " .. q .. " remainder " .. r)

print("=== Discard ===")

local _, remainder = divide(100, 7)
print("Remainder of 100/7: " .. remainder)

print("=== Variadic Sum ===")

function sum(...)
  local total = 0
  local count = select("#", ...)
  local args = {...}
  for i = 1, count do
    total = total + args[i]
  end
  return total, count
end

local result, n = sum(1, 2, 3, 4, 5)
print("Sum of " .. n .. " numbers: " .. result)

local result2, n2 = sum(10, 20)
print("Sum of " .. n2 .. " numbers: " .. result2)
