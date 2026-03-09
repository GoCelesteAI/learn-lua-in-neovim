-- Neovim Lua API — Commands
-- Source this file with :luafile %

-- Create a user command
vim.api.nvim_create_user_command("Hello", function(opts)
  local name = opts.args
  if name == "" then
    name = "World"
  end
  vim.notify("Hello, " .. name .. "!")
end, { nargs = "?" })
print("Command created: :Hello [name]")

-- Create a keymap
vim.keymap.set("n", "<leader>h", function()
  vim.notify("Hello from a keymap!")
end, { desc = "Say hello" })
print("Keymap set: <leader>h")

-- Create an autocommand
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.lua",
  callback = function()
    vim.notify("Lua file saved!")
  end,
})
print("Autocommand created: notify on Lua file save")
