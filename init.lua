require "user.options"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.autopairs"
-- require "user.keymappings"
require('lualine').setup {
    options = {
	icons_enabled = false,
	theme = 'codedark'

    }
}
require('bufferline').setup()
