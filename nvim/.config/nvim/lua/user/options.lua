local options = {
  opt = {
    -- hlsearch = false,
    relativenumber = true, -- sets vim.opt.relativenumber
    -- foldexpr = "nvim_treesitter#foldexpr()",
    foldlevel = 20,
    foldmethod = "marker",
  },
  g = {
    mapleader = " ", -- sets vim.g.mapleader
    tokyonight_style = "night",
    catppuccin_flavour = "mocha",
    rust_recommended_style = 0,
  },
}

return options
