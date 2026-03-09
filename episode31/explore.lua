-- Neovim Lua API — Explore
-- Source this file with :luafile %

-- Read buffer lines
local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
print("This buffer has " .. #lines .. " lines")

-- Get current file name
local filename = vim.fn.expand("%")
print("Current file: " .. filename)

-- Set options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
print("Options set: number, relativenumber, cursorline")
