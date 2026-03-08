-- Error Handling

print("=== Triggering an Error ===")

local ok, err = pcall(function()
  error("something went wrong!")
end)

print("ok: " .. tostring(ok))
print("err: " .. err)

print("")
print("=== pcall With a Real Error ===")

local ok2, err2 = pcall(function()
  local x = 10 + "hello"
end)

print("ok: " .. tostring(ok2))
print("err: " .. err2)

print("")
print("=== Safe Divide With Assert ===")

function safe_divide(a, b)
  assert(b ~= 0, "cannot divide by zero!")
  return a / b
end

print("10 / 3 = " .. safe_divide(10, 3))

local ok3, err3 = pcall(safe_divide, 10, 0)
print("ok: " .. tostring(ok3))
print("err: " .. err3)

print("")
print("=== xpcall With Handler ===")

local function error_handler(err)
  return "CAUGHT: " .. err
end

local ok4, msg = xpcall(function()
  error("boom!")
end, error_handler)

print("ok: " .. tostring(ok4))
print("msg: " .. msg)

print("")
print("=== The ok, err Pattern ===")

function read_file(path)
  local file = io.open(path, "r")
  if not file then
    return nil, "could not open " .. path
  end
  local content = file:read("a")
  file:close()
  return content, nil
end

local content, err5 = read_file("missing.txt")
if not content then
  print("Error: " .. err5)
end

local content2, err6 = read_file("errors.lua")
if content2 then
  print("Read " .. #content2 .. " bytes from errors.lua")
end
