-- While and Repeat Loops

-- While loop: count to 5
print("=== While Loop ===")
local count = 1
while count <= 5 do
  print(count)
  count = count + 1
end

-- Repeat-until: count to 5
print("=== Repeat Until ===")
local num = 1
repeat
  print(num)
  num = num + 1
until num > 5

-- Halving program
print("=== Halving ===")
local value = 1000
while value >= 1 do
  print(value)
  value = value / 2
end
