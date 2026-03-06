-- Closures

print("=== Counter Factory ===")

function make_counter()
  local count = 0
  return function()
    count = count + 1
    return count
  end
end

local counter_a = make_counter()
local counter_b = make_counter()

print("A: " .. counter_a())
print("A: " .. counter_a())
print("A: " .. counter_a())
print("B: " .. counter_b())
print("B: " .. counter_b())
print("A: " .. counter_a())

print("=== Multiplier Factory ===")

function make_multiplier(factor)
  return function(x)
    return x * factor
  end
end

local double = make_multiplier(2)
local triple = make_multiplier(3)

print("double(5): " .. double(5))
print("triple(5): " .. triple(5))
print("double(10): " .. double(10))
