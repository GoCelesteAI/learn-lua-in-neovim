-- Tables as Dictionaries

print("=== Person Table ===")

local person = {
  name = "Alice",
  age = 30,
  city = "Portland",
}

print("Name: " .. person.name)
print("Age: " .. person.age)
print("City: " .. person["city"])

print("=== Modify Keys ===")

person.email = "alice@example.com"
print("Email: " .. person.email)

person.age = 31
print("Updated age: " .. person.age)

person.city = nil
print("City after delete: " .. tostring(person.city))

print("=== App Config ===")

local config = {
  theme = "dark",
  font_size = 14,
  show_line_numbers = true,
  language = "en",
}

print("Theme: " .. config.theme)
print("Font size: " .. config.font_size)
print("Line numbers: " .. tostring(config.show_line_numbers))

local key = "language"
print("Language: " .. config[key])

config["max-width"] = 1200
print("Max width: " .. config["max-width"])
