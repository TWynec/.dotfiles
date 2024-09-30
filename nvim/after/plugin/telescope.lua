local builtin = require("telescope.builtin")
local telescope = pcall(require, "telescope")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ps", "<cmd>Telescope live_grep<cr>")

require("telescope").setup({
	extensions = {
		file_browser = {
			theme = "dropdown",
			hijack_netrw = true,
		},
	},
})

require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>pv",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
