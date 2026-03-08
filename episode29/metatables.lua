-- Metatables and Metamethods

print("=== __tostring ===")

local vec1 = { x = 3, y = 4 }

setmetatable(vec1, {
  __tostring = function(v)
    return "(" .. v.x .. ", " .. v.y .. ")"
  end,
})

print("vec1: " .. tostring(vec1))

print("")
print("=== Vector With __add ===")

local Vector = {}
Vector.__index = Vector

function Vector.new(x, y)
  local v = { x = x, y = y }
  setmetatable(v, Vector)
  return v
end

Vector.__tostring = function(v)
  return "(" .. v.x .. ", " .. v.y .. ")"
end

Vector.__add = function(a, b)
  return Vector.new(a.x + b.x, a.y + b.y)
end

Vector.__eq = function(a, b)
  return a.x == b.x and a.y == b.y
end

local a = Vector.new(1, 2)
local b = Vector.new(3, 4)
local c = a + b

print("a = " .. tostring(a))
print("b = " .. tostring(b))
print("a + b = " .. tostring(c))

local d = Vector.new(1, 2)
print("a == d: " .. tostring(a == d))
print("a == b: " .. tostring(a == b))

print("")
print("=== __index as Fallback ===")

local defaults = {
  color = "blue",
  size = 10,
  visible = true,
}

local button = { label = "Click me" }
setmetatable(button, { __index = defaults })

print("label: " .. button.label)
print("color: " .. button.color)
print("size: " .. button.size)

button.color = "red"
print("color after set: " .. button.color)
