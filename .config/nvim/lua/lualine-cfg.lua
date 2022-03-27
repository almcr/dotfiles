require('lualine').setup{
  options = {
    theme = 'auto'
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch',
      {
        'diagnostics',
        sources = {'nvim_diagnostic'},
      }
    },
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }
}
