-- Nested Tables

print("=== Student Record ===")

local student = {
  name = "Alice",
  grades = { 90, 85, 92, 88 },
  address = {
    street = "123 Main St",
    city = "Portland",
  },
}

print("Name: " .. student.name)
print("First grade: " .. student.grades[1])
print("City: " .. student.address.city)

student.address.city = "Seattle"
print("New city: " .. student.address.city)

print("=== Classroom Averages ===")

local classroom = {
  {
    name = "Alice",
    grades = { 90, 85, 92 },
  },
  {
    name = "Bob",
    grades = { 78, 82, 80 },
  },
  {
    name = "Charlie",
    grades = { 95, 98, 91 },
  },
}

for i = 1, #classroom do
  local s = classroom[i]
  local total = 0
  for j = 1, #s.grades do
    total = total + s.grades[j]
  end
  local avg = total / #s.grades
  print(s.name .. " average: " .. string.format("%.1f", avg))
end
