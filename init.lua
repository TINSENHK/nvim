require("config.lazy")

-- Define the Lua function to run the SSH command
local function ssh_connect(connStr)
	os.execute("sh ~/.config/nvim/iterm2.sh '" .. connStr .. "'")
end

-- Set the keymap to run the SSH command in visual mode
vim.keymap.set(
	"v", -- Visual mode
	"<Space>ss1", -- Key combination
	function()
		ssh_connect("~/.ssh/s141 47.242.75.141")
	end,
	{ noremap = true, silent = true, desc = "47.242.75.141" }
)
-- Set the keymap to run the SSH command in visual mode
vim.keymap.set(
	"n", -- Visual mode
	"<Space>ss1", -- Key combination
	function()
		ssh_connect("~/.ssh/s141 47.242.75.141")
	end,
	{ noremap = true, silent = true, desc = "47.242.75.141" }
)

-- Set the keymap to run the SSH command in visual mode
vim.keymap.set(
	"v", -- Visual mode
	"<Space>ss2", -- Key combination
	function()
		ssh_connect("~/.ssh/id_ed25519 andy@47.76.134.40 /opt/nvim-linux64/bin/nvim")
	end,
	{ noremap = true, silent = true, desc = "andy@47.76.134.40" }
)
-- Set the keymap to run the SSH command in visual mode
vim.keymap.set(
	"n", -- Visual mode
	"<Space>ss2", -- Key combination
	function()
		ssh_connect("~/.ssh/id_ed25519 andy@47.76.134.40 /opt/nvim-linux64/bin/nvim")
	end,
	{ noremap = true, silent = true, desc = "andy@47.76.134.40" }
)
