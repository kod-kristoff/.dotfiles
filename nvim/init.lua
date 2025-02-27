--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
-- map leader to <Space>
vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

-- vim.g.mapleader = "\<space>"
vim.g.localleader = " "

-- IMPORTS
require('config.lazy') -- Configure lazy
require('vars')      -- Variables
require('opts')      -- Options
-- require('keys')      -- Keymaps
-- require('plug')      -- Plugins

-- require("mason").setup()
-- require("mason-lspconfig").setup()

-- After setting up mason-lspconfig you may set up servers via lspconfig
-- require("lspconfig").lua_ls.setup {}
-- require("lspconfig").rust_analyzer.setup {}
-- ...
