-- wordcount/init.lua — A Neovim Plugin

local M = {}

M.config = {
  notify = true,
}

function M.count_words()
  local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
  local total = 0
  for _, line in ipairs(lines) do
    for _ in string.gmatch(line, "%S+") do
      total = total + 1
    end
  end
  return total
end

function M.count_words_line()
  local line = vim.api.nvim_get_current_line()
  local count = 0
  for _ in string.gmatch(line, "%S+") do
    count = count + 1
  end
  return count
end

function M.setup(opts)
  opts = opts or {}
  M.config = vim.tbl_deep_extend("force", M.config, opts)

  vim.api.nvim_create_user_command("WordCount", function()
    local count = M.count_words()
    vim.notify("Word count: " .. count)
  end, {})

  vim.api.nvim_create_user_command("WordCountLine", function()
    local count = M.count_words_line()
    vim.notify("Words on this line: " .. count)
  end, {})
end

return M
