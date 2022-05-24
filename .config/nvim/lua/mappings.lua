local opts = { noremap=true, silent=true }
local map = function(mode, from, to) vim.keymap.set(mode, from, to, opts) end
local map_buf = function(mode, from, to) vim.api.nvim_buf_set_keymap(mode, from, to, opts) end

-- My Mappings
map('n', '<A-m>', ';')
vim.keymap.set('n', ';', ':', {noremap= true})
map('n', '<leader>o', 'o')
map('n', '<leader>O', 'O')
map('n', '<C-s>', '<cmd>w<CR>') -- ctrl-s to write buffer
map('n', '<Leader>s', ':%s/<<C-r><C-w>>') -- start replace with current word under cursor
map('i', '<C-l>', '<Del>')
map('n', '<A-q>', '<cmd>q<CR>')
map('n', '<A-h>', '<C-W><C-H>')
map('n', '<A-l>', '<C-W><C-L>')
map('n', '<A-j>', '<C-W><C-J>')
map('n', '<A-k>', '<C-W><C-K>')


-- Lsp Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
map('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>')
map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
map('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>')


-- Telescope Mappings
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')


-- Barbar Mappings
-- Move to previous/next
map('n', '<A-,>', ':BufferPrevious<CR>')
map('n', '<A-.>', ':BufferNext<CR>')
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>')
map('n', '<A->>', ':BufferMoveNext<CR>')
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>')
map('n', '<A-2>', ':BufferGoto 2<CR>')
map('n', '<A-3>', ':BufferGoto 3<CR>')
map('n', '<A-4>', ':BufferGoto 4<CR>')
map('n', '<A-5>', ':BufferGoto 5<CR>')
map('n', '<A-6>', ':BufferGoto 6<CR>')
map('n', '<A-7>', ':BufferGoto 7<CR>')
map('n', '<A-8>', ':BufferGoto 8<CR>')
map('n', '<A-9>', ':BufferGoto 9<CR>')
map('n', '<A-0>', ':BufferLast<CR>')
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>')

-- Nvim Tree
-- map('n', '<C-n>', ':NvimTreeToggle<CR>')
-- map('n', '<leader>r', ':NvimTreeRefresh<CR>')
-- map('n', '<leader>n', ':NvimTreeFindFile<CR>')

-- Trouble

vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
--vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
--  {silent = true, noremap = true}
--)
--vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
--  {silent = true, noremap = true}
--)
--vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
--  {silent = true, noremap = true}
--)
--vim.api.nvim_set_keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>",
--  {silent = true, noremap = true}
--)
--vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
--  {silent = true, noremap = true}
--)

-- Expand
-- imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
-- smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
-- 
-- " Expand or jump
-- " imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
-- smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
-- 
-- " Jump forward or backward
-- imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
-- imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
-- smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'


