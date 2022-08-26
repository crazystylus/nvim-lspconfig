local util = require 'lspconfig.util'

local bin_name = 'lox'
local cmd = { bin_name, 'lsp' }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', bin_name, 'lsp' }
end

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'lox' },
    root_dir = util.find_git_ancestor,
    single_file_support = true,
  },
  docs = {
    description = [[
https://github.com/ajeetdsouza/lox
Lox's lsp server for lox.
Don't indulge with private interpreters :<
]],
  },
}
