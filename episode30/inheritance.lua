-- Inheritance with Metatables

local Animal = require("animal")

print("=== Dog Inherits from Animal ===")

local Dog = {}
Dog.__index = Dog
setmetatable(Dog, { __index = Animal })

function Dog:new(name)
  local o = Animal.new(self, name, "woof")
  return o
end

function Dog:fetch(item)
  print(self.name .. " fetches the " .. item .. "!")
end

local rex = Dog:new("Rex")
local buddy = Dog:new("Buddy")

rex:speak()
rex:fetch("ball")
rex:describe()

print("")

buddy:speak()
buddy:fetch("stick")
