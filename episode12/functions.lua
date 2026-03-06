-- Functions

-- A greeting function
print("=== Greet ===")
function greet(name)
  print("Hello, " .. name .. "!")
end

greet("Alice")
greet("Bob")
greet("Lua")

-- A function that returns a value
print("=== Add ===")
function add(a, b)
  return a + b
end

local result = add(10, 20)
print("10 + 20 = " .. result)
print("3 + 7 = " .. add(3, 7))

-- A function that returns a boolean
print("=== Is Even ===")
function is_even(n)
  return n % 2 == 0
end

print("4 is even: " .. tostring(is_even(4)))
print("7 is even: " .. tostring(is_even(7)))
