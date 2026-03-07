-- Table References vs Copies

print("=== The Reference Trap ===")

local a = { 1, 2, 3 }
local b = a

b[1] = 99

print("a[1] = " .. a[1])
print("b[1] = " .. b[1])
print("Same table! Both changed.")

print("=== Shallow Copy ===")

local function shallow_copy(original)
  local copy = {}
  for k, v in pairs(original) do
    copy[k] = v
  end
  return copy
end

local c = { 10, 20, 30 }
local d = shallow_copy(c)

d[1] = 999

print("c[1] = " .. c[1])
print("d[1] = " .. d[1])
print("Different tables now.")

print("=== Shallow Copy Trap ===")

local e = { name = "Alice", scores = { 90, 85 } }
local f = shallow_copy(e)

f.name = "Bob"
f.scores[1] = 50

print("e.name = " .. e.name)
print("f.name = " .. f.name)
print("e.scores[1] = " .. e.scores[1])
print("Nested table still shared!")

print("=== Deep Copy ===")

local function deep_copy(original)
  if type(original) ~= "table" then
    return original
  end
  local copy = {}
  for k, v in pairs(original) do
    copy[k] = deep_copy(v)
  end
  return copy
end

local g = { name = "Alice", scores = { 90, 85 } }
local h = deep_copy(g)

h.scores[1] = 50

print("g.scores[1] = " .. g.scores[1])
print("h.scores[1] = " .. h.scores[1])
print("Fully independent copy!")
