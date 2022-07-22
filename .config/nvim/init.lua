require('basic')
require('keybindings')
require('plugins')
-- 主题设置 （新增）
require("colorscheme")
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter") -- （新增）
require("plugin-config.surround")
require("plugin-config.toggleterm")
require("plugin-config.comment")
require("plugin-config.nvim-autopairs")

-- 内置LSP (新增)
require("lsp.setup")
require("lsp.ui") -- 新增
require("lsp.cmp") --  (新增)
require("plugin-config.indent-blankline")
require("lsp.null-ls")
