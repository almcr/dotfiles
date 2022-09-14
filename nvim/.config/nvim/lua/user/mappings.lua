return {
  i = {
    -- go to  beginning and end
    ["<C-b>"] = { "<ESC>^i" },
    ["<C-e>"] = { "<End>" },

    -- navigate within insert mode
    ["<C-h>"] = { "<Left>" },
    ["<C-l>"] = { "<Right>" },
    ["<C-j>"] = { "<Down>" },
    ["<C-k>"] = { "<Up>" },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<leader>s"] = { ":%s/<C-r><C-w>", desc = "start replace with current word" },
    ["<C-l>"] = { "<del>" },
    ["<A-q>"] = { "<cmd>q<cr>" },
    ["<A-h>"] = { "<C-W><C-H>", desc = "focus left split" },
    ["<A-l>"] = { "<C-W><C-L>", desc = "focus roght split" },
    ["<A-j>"] = { "<C-W><C-J>", desc = "focus bottom split" },
    ["<A-k>"] = { "<C-W><C-K>", desc = "focus top split" },
    ["<ESC>"] = { "<cmd> noh <CR>", desc = "no highlight" },
    ["<leader>rn"] = { "<cmd> set rnu! <CR>", desc = "toggle relative number" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["//"] = { 'y:%s/\\V<c-r>"//g<left><left>', desc = "start replace for a visual selection" },
  },
}
