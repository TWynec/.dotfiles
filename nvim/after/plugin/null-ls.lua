local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettierd,
		null_ls.builtins.formatting.black,
	},
})

vim.cmd("map <Leader>f :lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>")
