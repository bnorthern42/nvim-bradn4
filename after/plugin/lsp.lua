local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actionsi
   local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  lsp_zero.default_keymaps({buffer = bufnr})
end)
require('mason').setup({
    opts = {
        ensure_installed = {
            "clangd",
            "clang-format",
            "codelldb",
        }
    }
})
require('mason-lspconfig').setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = {'tsserver', 'rust_analyzer', 'clangd','awk_ls',
                        'autotools_ls'},
	handlers = {
		function(server_name)
			require'lspconfig'.asm_lsp.setup({})
			require'lspconfig'.autotools_ls.setup({})
			require'lspconfig'.awk_ls.setup({})
			require'lspconfig'.sourcekit.setup({})
			require'lspconfig'.lua_ls.setup({})
		end,
	},
})
-- here you can setup the language servers

