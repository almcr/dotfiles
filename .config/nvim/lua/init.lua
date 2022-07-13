require('plugins')
require('lsp').setup()
require('nvim-cmp-cfg')
require('mappings')
require('rust-tools-cfg')
require('telescope-cfg')
require('treesitter-cfg')
require('trouble-cfg')
require('lualine-cfg')

require('nvim-tree').setup()


require('nvim-autopairs').setup{
  map_cr = true
}
