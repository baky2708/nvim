--local status, null_ls = pcall(require, "null-ls")
--if (not status) then return end
--
--null_ls.setup {
--  sources = {
--    null_ls.builtins.diagnostics.eslint_d.with({
--      diagnostics_format = '[eslint] #{m}\n(#{c})'
--    }),
--    null_ls.builtins.diagnostics.fish
--  },
--  on_attach = function(client, bufnr)
--    if client.server_capabilities.documentFormattingProvider then
--      vim.api.nvim_command [[augroup Format]]
--      vim.api.nvim_command [[autocmd! * <buffer>]]
--      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
--      vim.api.nvim_command [[augroup END]]
--    end
--  end
--}
--
--vim.api.nvim_create_user_command(
--  'DisableLspFormatting',
--  function()
--    vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
--  end,
--  { nargs = 0 }
--)
local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  },
  on_attach = function(client, bufnr)
   if client.server_capabilities.documentFormattingProvider then
     vim.api.nvim_command [[augroup Format]]
     vim.api.nvim_command [[autocmd! * <buffer>]]
     vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
     vim.api.nvim_command [[augroup END]]
   end
 end

})
