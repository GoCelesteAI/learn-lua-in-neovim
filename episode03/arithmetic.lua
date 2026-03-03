-- Episode 3: Numbers and Arithmetic

-- Receipt calculator
local item1 = 12.99
local item2 = 8.50
local item3 = 24.99

local subtotal = item1 + item2 + item3
print("Subtotal: " .. subtotal)

local tax_rate = 0.08
local tax = subtotal * tax_rate
print("Tax: " .. tax)

local total = subtotal + tax
print("Total: " .. total)

-- More operators
print("--- More Operators ---")

-- Floor division
print("7 // 2 = " .. 7 // 2)

-- Modulo (remainder)
print("7 % 2 = " .. 7 % 2)

-- Exponent (power)
print("2 ^ 10 = " .. 2 ^ 10)

-- Negative and mixed
print("10 - 3 * 2 = " .. 10 - 3 * 2)
print("(10 - 3) * 2 = " .. (10 - 3) * 2)
