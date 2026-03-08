-- String Patterns

print("=== Extract Numbers ===")

local text = "I have 3 cats and 12 dogs"
for num in string.gmatch(text, "%d+") do
  print("  Found: " .. num)
end

print("")
print("=== Match Words ===")

local sentence = "Hello World from Lua"
for word in string.gmatch(sentence, "%a+") do
  print("  Word: " .. word)
end

print("")
print("=== Validate Email ===")

local emails = { "alice@example.com", "bad-email", "bob@test.org", "@missing.com" }

for i = 1, #emails do
  local email = emails[i]
  local match = string.match(email, "%w+@%w+%.%w+")
  if match then
    print("  Valid: " .. email)
  else
    print("  Invalid: " .. email)
  end
end

print("")
print("=== Extract Date Parts ===")

local date = "2025-03-15"
local year, month, day = string.match(date, "(%d+)-(%d+)-(%d+)")
print("Year: " .. year)
print("Month: " .. month)
print("Day: " .. day)

print("")
print("=== Word Splitter ===")

local csv = "apple,banana,cherry,date"
for item in string.gmatch(csv, "([^,]+)") do
  print("  Item: " .. item)
end
