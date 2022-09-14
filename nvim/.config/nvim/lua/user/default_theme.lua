return {
  -- set the highlight style for diagnostic messages
  diagnostics_style = { italic = true },
  -- Modify the color palette for the default theme
  colors = {
    fg = "#abb2bf",
    bg = "#1e222a",
  },
  -- enable or disable highlighting for extra plugins
  plugins = {
    aerial = true,
    beacon = false,
    bufferline = true,
    dashboard = true,
    highlighturl = true,
    hop = false,
    indent_blankline = false,
    lightspeed = false,
    ["neo-tree"] = true,
    notify = true,
    ["nvim-tree"] = false,
    ["nvim-web-devicons"] = true,
    rainbow = false,
    symbols_outline = true,
    telescope = true,
    vimwiki = false,
    ["which-key"] = true,
  },
}
