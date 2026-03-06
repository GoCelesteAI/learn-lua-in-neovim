-- Functions as Values

print("=== Function in a Variable ===")

local square = function(x)
  return x * x
end

print("5 squared: " .. square(5))

print("=== Callbacks ===")

function apply(func, value)
  return func(value)
end

print("sqrt(25): " .. apply(math.sqrt, 25))
print("square(6): " .. apply(square, 6))

print("=== Filter with Anonymous Function ===")

function filter(items, test)
  local result = {}
  for i = 1, #items do
    if test(items[i]) then
      result[#result + 1] = items[i]
    end
  end
  return result
end

local numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

local evens = filter(numbers, function(n)
  return n % 2 == 0
end)

print("Even numbers:")
for i = 1, #evens do
  print("  " .. evens[i])
end
