require("basic")
require("keybindings")
require("plugins")
require("autocmds")
-- 主题设置 （新增）
require("colorscheme")
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter") -- （新增）
require("plugin-config.nvim-autopairs")
require("plugin-config.comment")
require("plugin-config.autosave")
require("plugin-config.template")
require("plugin-config.trouble")
require("plugin-config.lsp-color")
require("plugin-config.accelerated-jk")
-- require("plugin-config.neoscroll")
-- 内置LSP (新增)
require("lsp.setup")
require("lsp.cmp") --  (新增)
require("lsp.ui") -- 新增
require("plugin-config.indent-blankline")
require("lsp.null-ls")