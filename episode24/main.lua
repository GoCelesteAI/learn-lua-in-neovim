-- main.lua — Using our module

local mt = require("mathtools")

print("add(10, 20): " .. mt.add(10, 20))
print("subtract(50, 15): " .. mt.subtract(50, 15))
print("multiply(6, 7): " .. mt.multiply(6, 7))
print("square(9): " .. mt.square(9))
print("is_even(4): " .. tostring(mt.is_even(4)))
print("is_even(7): " .. tostring(mt.is_even(7)))
