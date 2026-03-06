-- Break and Nested Loops

-- Star rectangle (4 rows x 8 columns)
print("=== Rectangle ===")
for row = 1, 4 do
  local line = ""
  for col = 1, 8 do
    line = line .. "* "
  end
  print(line)
end

-- Star triangle
print("=== Triangle ===")
for row = 1, 5 do
  local line = ""
  for col = 1, row do
    line = line .. "* "
  end
  print(line)
end

-- Break: find first number divisible by both 7 and 13
print("=== Break ===")
for i = 1, 200 do
  if i % 7 == 0 and i % 13 == 0 then
    print("Found: " .. i)
    break
  end
end
