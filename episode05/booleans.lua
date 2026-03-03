-- Booleans and Comparisons

print(10 > 5)
print(10 < 5)

print(10 == 10)
print(10 ~= 10)

local age = 18
print(age >= 18)
print(age <= 17)

print("--- Truthy and Falsy ---")

if 0 then
  print("0 is truthy!")
end

if "" then
  print("empty string is truthy!")
end

if nil then
  print("this never prints")
else
  print("nil is falsy")
end
