-- Numeric For Loops

-- Basic: count from 1 to 5
for i = 1, 5 do
  print(i)
end

-- Step: count by 2 (even numbers)
for i = 2, 10, 2 do
  print(i)
end

-- Countdown
for i = 5, 1, -1 do
  print(i)
end
print("Go!")

-- Multiplication table
local num = 7
for i = 1, 10 do
  print(num .. " x " .. i .. " = " .. num * i)
end

-- Sum of 1 to 100
local sum = 0
for i = 1, 100 do
  sum = sum + i
end
print("Sum: " .. sum)
