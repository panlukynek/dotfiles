require("remap")

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"
vim.opt.list = true
vim.opt["tabstop"] = 4
vim.opt["shiftwidth"] = 4
vim.opt.laststatus = 3

vim.opt.clipboard:append("unnamedplus")
-- Press <leader>l to toggle invisible characters
-- vim.keymap.set('n', '<leader>.', ':set list!<CR>')

vim.lsp.enable('biome')

vim.opt.listchars = {
  -- tab = '» ',   -- Shows a "»" followed by spaces
  tab = '▎ ',
  trail = '·',  -- Shows trailing spaces as dots (optional but helpful)
  -- space = '·',  -- Shows all spaces as dots (optional, like VSCode "renderWhitespace: all")
  nbsp = '␣',   -- Non-breaking spaces
}

require("config.lazy")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require("nvim-tree").setup({
  filters = {
    dotfiles = false,
  },
})

require('colorizer').setup({
  filetypes = {
    '*'; -- all filetypes
    '!vim'; -- except vim (optional)
  },
  user_default_options = {
    RGB = true;       -- #RGB hex codes
    RRGGBB = true;    -- #RRGGBB hex codes
    names = true;     -- CSS color names
    COLONS = true;    -- rgb: 255 0 0
    rgb_fn = true;    -- rgb(255, 0, 0)
    hsl_fn = true;    -- hsl(0, 100%, 50%)
    mode = 'background'; -- 'foreground' | 'background' | 'virtualtext'
  },
})

require("ibl").setup({
	indent = {
		char = "", -- This is the vertical line character
	},
	scope = {
		enabled = true, -- Set to true if you want the "active" indent to be highlighted
		show_start = false,
		show_end = false,
	},
})
require("lualine").setup()

require("gruvbox").setup({
  dim_inactive = false,
  transparent_mode = true,
})
vim.cmd("colorscheme gruvbox")

vim.o.background = "dark"

-- require('kanagawa').setup({
--     compile = false,             -- enable compiling the colorscheme
--     undercurl = true,            -- enable undercurls
--     commentStyle = { italic = true },
--     functionStyle = {},
--     keywordStyle = { italic = true},
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = false,         -- do not set background color
--     dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
--     terminalColors = true,       -- define vim.g.terminal_color_{0,17}
--     colors = {                   -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--     },
--     overrides = function(colors) -- add/modify highlights
--         return {}
--     end,
--     theme = "dragon",            -- Load "wave" theme
--     background = {               -- map the value of 'background' option to a theme
--         dark = "dragon",         -- try "dragon" !
--         light = "lotus"
--     },
-- })
--
-- -- setup must be called before loading
-- vim.cmd("colorscheme kanagawa")
