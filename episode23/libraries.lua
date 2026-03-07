-- Math and String Libraries

print("=== Math Library ===")

print("floor(3.7): " .. math.floor(3.7))
print("ceil(3.2): " .. math.ceil(3.2))
print("abs(-15): " .. math.abs(-15))
print("max(5, 9, 3): " .. math.max(5, 9, 3))
print("min(5, 9, 3): " .. math.min(5, 9, 3))

print("=== Circle Area ===")

print("Pi: " .. math.pi)
local radius = 5
local area = math.pi * radius ^ 2
print("Circle area (r=5): " .. string.format("%.2f", area))

print("=== Random Numbers ===")

math.randomseed(os.time())
print("Random 1-10: " .. math.random(1, 10))
print("Random 1-10: " .. math.random(1, 10))
print("Random 1-10: " .. math.random(1, 10))

print("=== String Library ===")

local text = "Hello, Lua World!"

print("sub(1,5): " .. string.sub(text, 1, 5))
print("sub(8): " .. string.sub(text, 8))

local start, stop = string.find(text, "Lua")
print("find Lua: " .. start .. " to " .. stop)

print("=== String Format ===")

print(string.format("Name: %s, Age: %d", "Alice", 30))
print(string.format("Pi: %.4f", math.pi))
print(string.format("Hex: %x", 255))

print("=== Byte and Char ===")

print("A = " .. string.byte("A"))
print("65 = " .. string.char(65))

print("=== Dice Roller ===")

local function roll_dice(count, sides)
  local rolls = {}
  local total = 0
  for i = 1, count do
    local roll = math.random(1, sides)
    rolls[i] = roll
    total = total + roll
  end
  local result = ""
  for i = 1, #rolls do
    if i > 1 then result = result .. ", " end
    result = result .. rolls[i]
  end
  return string.format("[%s] = %d", result, total)
end

print("3d6:  " .. roll_dice(3, 6))
print("2d20: " .. roll_dice(2, 20))
print("5d10: " .. roll_dice(5, 10))
