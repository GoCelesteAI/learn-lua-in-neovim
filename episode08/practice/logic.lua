-- Logical Operators

local age = 12
local height = 140

-- AND: both conditions must be true
if age >= 10 and height >= 130 then
  print("You can ride!")
else
  print("Sorry, not allowed.")
end

-- OR: at least one condition must be true
local has_ticket = true
local is_vip = false

if has_ticket or is_vip then
  print("Welcome to the park!")
else
  print("You need a ticket.")
end

-- NOT: inverts a boolean
local park_closed = false

if not park_closed then
  print("The park is open!")
end

-- Ternary idiom: x and a or b
local score = 85
local grade = score >= 60 and "Pass" or "Fail"
print("Result: " .. grade)
