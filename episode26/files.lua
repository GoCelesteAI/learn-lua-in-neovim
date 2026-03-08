-- File I/O

print("=== Reading a file ===")

local file = io.open("data.txt", "r")
if file then
  for line in file:lines() do
    print("  " .. line)
  end
  file:close()
end

print("")
print("=== Writing a file ===")

local out = io.open("output.txt", "w")
if out then
  out:write("Line one\n")
  out:write("Line two\n")
  out:write("Line three\n")
  out:close()
  print("Wrote output.txt")
end

print("")
print("=== Reading output.txt back ===")

for line in io.lines("output.txt") do
  print("  " .. line)
end

print("")
print("=== Appending to a file ===")

local log = io.open("output.txt", "a")
if log then
  log:write("Appended line\n")
  log:close()
  print("Appended to output.txt")
end

print("")
print("=== Final contents ===")

for line in io.lines("output.txt") do
  print("  " .. line)
end

print("")
print("=== Processing data.txt ===")

local total = 0
local count = 0
for line in io.lines("data.txt") do
  local name, score = string.match(line, "(%a+)%s+(%d+)")
  if name and score then
    print("  " .. name .. ": " .. score)
    total = total + tonumber(score)
    count = count + 1
  end
end
print("Average: " .. string.format("%.1f", total / count))
