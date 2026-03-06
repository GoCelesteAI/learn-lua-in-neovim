-- Table Array Operations

print("=== Sort and Concat ===")

local names = { "Charlie", "Alice", "Eve", "Bob", "Diana" }

table.sort(names)

print("Sorted names:")
for i = 1, #names do
  print("  " .. names[i])
end

print("Joined: " .. table.concat(names, ", "))

print("=== Custom Sort ===")

local scores = { 85, 92, 78, 95, 88 }

table.sort(scores)
print("Ascending: " .. table.concat(scores, ", "))

table.sort(scores, function(a, b)
  return a > b
end)
print("Descending: " .. table.concat(scores, ", "))

print("=== Mini To-Do List ===")

local todos = { "Buy groceries", "Clean kitchen" }

table.insert(todos, "Walk the dog")
table.insert(todos, 1, "Wake up early")

print("To-Do:")
for i = 1, #todos do
  print("  " .. i .. ". " .. todos[i])
end

table.remove(todos, 2)
print("After completing #2:")
for i = 1, #todos do
  print("  " .. i .. ". " .. todos[i])
end
