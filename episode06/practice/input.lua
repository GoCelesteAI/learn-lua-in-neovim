-- Comments and User Input

print("Hello!")
print("Goodbye!")

--[[
  This is a multi-line comment.
  It can span several lines.
  Useful for longer explanations.
]]

-- Greeting program
print("What is your name?")
local name = io.read()
print("Hello, " .. name .. "!")

-- Age calculator
print("What year were you born?")
local year = tonumber(io.read())
local age = 2026 - year
print("You are about " .. age .. " years old")
