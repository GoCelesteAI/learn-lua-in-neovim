-- Tables as Arrays

print("=== Create and Access ===")

local fruits = { "apple", "banana", "cherry", "date" }

print("First fruit: " .. fruits[1])
print("Third fruit: " .. fruits[3])
print("How many fruits: " .. #fruits)

print("=== Insert and Remove ===")

table.insert(fruits, "elderberry")
print("After insert: " .. #fruits .. " fruits")
print("Last fruit: " .. fruits[#fruits])

table.remove(fruits, 2)
print("After removing index 2: " .. #fruits .. " fruits")

print("=== Loop Through Array ===")

print("All fruits:")
for i = 1, #fruits do
  print("  " .. i .. ". " .. fruits[i])
end
