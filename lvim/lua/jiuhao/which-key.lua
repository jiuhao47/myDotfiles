local wk = lvim.builtin.which_key.mappings

local function toggle_xxd()
	local view = vim.fn.winsaveview()
	if vim.bo.filetype == "xxd" then
		vim.cmd(":%!xxd -r")
		vim.bo.filetype = "text"
	else
		vim.cmd(":%!xxd")
		vim.bo.filetype = "xxd"
	end
	vim.fn.winrestview(view)
end

local personal_keybindings = {
	a = {
		name = "Copilot",
		a = { "Chat Side Bar Toggle" },
		r = { "Chat Side Bar Refresh" },
		f = { "Chat Side Bar Focus Switch" },
		-- v = { "Visual" },
		-- q = { "Quick Start" },
		-- i = { "Ask Directly" },
		-- x = { "Inline Chat" },
	},
	h = {
		name = "Personal",
		o = { "<cmd>AerialToggle!<cr>", "Symbol Outline" },
		s = { "<cmd>SessionManager! load_session<cr>", "SessionManager" },
		l = { "<cmd>Lazy<cr>", "Show Lazy Panel" },
		h = { "<cmd>nohlsearch<cr>", "No Highlight" },
		t = { "<cmd>lua require 'lvim.core.terminal' .htop_toggle()<cr>", "Htop Toggle" },
		d = { "<cmd>lua require 'lvim.core.terminal' .lazydocker_toggle()<cr>", "LazyDocker Toggle" },
		n = { "<cmd>lua require 'lvim.core.terminal' .ncdu_toggle()<cr>", "Ncdu Toggle" },
		f = { "<cmd>Trouble<cr>", "TodoList" },
		m = { "<cmd>NoiceHistory<cr>", "Message History" },
		w = { "<cmd>set wrap!<cr>", "Toggle Wrap" },
		b = { "<cmd>lua vim.diagnostic.disable(vim.api.nvim_get_current_buf())<cr>", "Toggle Diagnostic" },
		x = { toggle_xxd, "Toggle xxd" },
	},
	m = {
		name = "Cscope",
		d = {
			name = "Database",
		},
	},
}

for key, value in pairs(personal_keybindings) do
	wk[key] = value
end
