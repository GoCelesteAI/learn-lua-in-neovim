-- Type Conversion and Coercion

print("=== Automatic Coercion ===")

print("10 + 5 = " .. (10 + 5))
print('"10" + 5 = ' .. ("10" + 5))
print('"3.14" * 2 = ' .. ("3.14" * 2))

print("")
print("=== Coercion Failure ===")

local ok, err = pcall(function()
  local x = "hello" + 5
end)
print("ok: " .. tostring(ok))
print("err: " .. err)

print("")
print("=== tonumber() ===")

print('tonumber("42") = ' .. tonumber("42"))
print('tonumber("3.14") = ' .. tonumber("3.14"))
print('tonumber("abc") = ' .. tostring(tonumber("abc")))

print("")
print("=== Safe Default Pattern ===")

local input1 = "25"
local input2 = "oops"

local val1 = tonumber(input1) or 0
local val2 = tonumber(input2) or 0

print("val1: " .. val1)
print("val2: " .. val2)

print("")
print("=== tostring() ===")

print("tostring(42) = " .. tostring(42))
print("tostring(true) = " .. tostring(true))
print("tostring(nil) = " .. tostring(nil))

print("")
print("=== string.format for Numbers ===")

local pi = 3.14159265
print(string.format("Default: %f", pi))
print(string.format("2 decimals: %.2f", pi))
print(string.format("No decimals: %.0f", pi))
print(string.format("Padded: %010.2f", pi))
print(string.format("Price: $%.2f", 9.9))
