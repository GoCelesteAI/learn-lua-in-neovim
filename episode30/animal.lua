-- Animal Class

local Animal = {}
Animal.__index = Animal

function Animal:new(name, sound)
  local o = {
    name = name,
    sound = sound,
  }
  setmetatable(o, self)
  return o
end

function Animal:speak()
  print(self.name .. " says " .. self.sound .. "!")
end

function Animal:describe()
  print("I am " .. self.name)
end

print("=== Animal Class ===")

local cat = Animal:new("Whiskers", "meow")
local bird = Animal:new("Tweety", "tweet")

cat:speak()
bird:speak()
cat:describe()

return Animal
