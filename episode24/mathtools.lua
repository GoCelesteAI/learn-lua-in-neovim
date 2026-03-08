-- mathtools.lua — A Lua module

local M = {}

function M.add(a, b)
  return a + b
end

function M.subtract(a, b)
  return a - b
end

function M.multiply(a, b)
  return a * b
end

function M.square(x)
  return x * x
end

function M.is_even(n)
  return n % 2 == 0
end

return M
