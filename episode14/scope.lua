-- Scope: Local vs Global

print("=== Global vs Local ===")

x = 10
local y = 20

print("x = " .. x)
print("y = " .. y)

print("=== Block Scope ===")

if true then
  local secret = "hidden"
  print("Inside: " .. secret)
end
-- print(secret)  -- would be nil out here!

for i = 1, 3 do
  print("i = " .. i)
end
-- print(i)  -- nil out here too!

print("=== Shadowing ===")

local color = "blue"
print("Outer: " .. color)

if true then
  local color = "red"
  print("Inner: " .. color)
end

print("Outer again: " .. color)

print("=== Always Use Local ===")
