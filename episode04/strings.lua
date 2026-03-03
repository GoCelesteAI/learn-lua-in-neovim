-- Episode 4: Strings — Creation and Concatenation

-- Double and single quotes both work
local first = "Alice"
local last = 'Smith'

-- Concatenation with ..
local full = first .. " " .. last
print(full)

-- String length with #
print("Length: " .. #full)

-- Uppercase and lowercase
print(string.upper(full))
print(string.lower(full))

-- Long strings with [[ ]]
local message = [[
This is a long string.
It can span multiple lines.
No need to escape "quotes" inside.
]]
print(message)

-- Name badge generator
print("--- Name Badge ---")
local border = string.rep("=", 30)
print(border)
print("  Name: " .. string.upper(full))
print("  Length: " .. #full .. " characters")
print(border)
