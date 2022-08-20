local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer, close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end


-- Autocommand that reloads neovim everytime you save plugins.lua
vim.cmd [[
    augroup packer_user_config
	autocmd!
	autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't have error
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end


-- Have packer use a popup window instead of the sidebar
packer.init {
    display = {
	open_fn = function()
	    return require("packer.util").float { border = "rounded" }
	end,
    },
}


return packer.startup(function(use)
	-- Plugins here
	use 	'wbthomason/packer.nvim'
	use 	'nvim-lua/popup.nvim'
	use	'nvim-lua/plenary.nvim'
	use	'ellisonleao/gruvbox.nvim'
	use 	'rstacruz/vim-closer'
	use {
		  'nvim-lualine/lualine.nvim',
		    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	    }


	-- Automatically setup your config after cloning packer.nvim
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)

