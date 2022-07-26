local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
	vim.notify("没有找到 nvim-tree")
	return
end

-- 列表操作快捷键
local list_keys = require("keybindings").nvimTreeList

nvim_tree.setup({
	-- 关闭文件时自动关闭
	-- auto_close = false,
	-- 不显示 git 状态图标
	git = {
		enable = false,
	},
	-- project plugin 需要这样设置
	update_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	-- 隐藏 .文件 和 node_modules 文件夹
	filters = {
    dotfiles = false,
		custom = { "node_modules" },
	},
	view = {
		-- 宽度
		width = 40,
		-- 也可以 'right'
		side = "right",
		-- 隐藏根目录
		hide_root_folder = false,
		-- 打开第一个文件自动resize
		-- auto_resize = true,
		-- 自定义列表中快捷键
		mappings = {
			custom_only = false,
			list = list_keys,
		},
		-- 不显示行数
		number = false,
		relativenumber = false,
		-- 显示图标
		signcolumn = "yes",
	},
	-- npm install -g wsl-open
	-- https://github.com/4U6U57/wsl-open/
	system_open = {
		cmd = "open",
	},
})
