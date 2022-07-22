local status, telescope = pcall(require, "telescope")
if not status then
	vim.notify("没有找到 telescope")
	return
end

telescope.setup({
	defaults = {
    layout_config = {
      --vertical = { width = 0.2 }
      preview_width = 0.6
      -- other layout configuration here
    },
		-- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
		initial_mode = "insert",
		-- 窗口内快捷键
		mappings = require("keybindings").telescopeList,
		file_ignore_patterns = { "node_modules/.*","public/packs", ".git", ".cache", "vendor" },
	},
	pickers = {
		-- 内置 pickers 配置
		find_files = {
			-- 查找文件换皮肤，支持的参数有： dropdown, cursor, ivy
		  -- theme = "dropdown"
		},
	},
	extensions = {
		-- 扩展插件配置
	},
})

-- telescope extensions
pcall(telescope.load_extension, "env")
