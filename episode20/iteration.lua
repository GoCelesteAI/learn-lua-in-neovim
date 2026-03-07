-- Iterating Tables

print("=== ipairs — Array Iteration ===")

local colors = { "red", "green", "blue", "yellow" }

for i, color in ipairs(colors) do
  print("  " .. i .. " = " .. color)
end

print("=== pairs — Dictionary Iteration ===")

local pet = {
  name = "Max",
  type = "dog",
  age = 5,
}

for key, value in pairs(pet) do
  print("  " .. key .. " = " .. tostring(value))
end

print("=== ipairs Stops at Gaps ===")

local mixed = { "a", "b", nil, "d", "e" }

print("ipairs:")
for i, v in ipairs(mixed) do
  print("  " .. i .. " = " .. v)
end

print("=== Word Frequency Counter ===")

local words = { "lua", "is", "fun", "lua", "is", "great", "lua" }

local counts = {}
for i = 1, #words do
  local word = words[i]
  if counts[word] then
    counts[word] = counts[word] + 1
  else
    counts[word] = 1
  end
end

for word, count in pairs(counts) do
  print("  " .. word .. ": " .. count)
end
