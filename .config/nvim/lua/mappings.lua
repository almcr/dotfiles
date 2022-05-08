local opts = { noremap=true, silent=true }
local map = function(mode, from, to) vim.keymap.set(mode, from, to, opts) end
local map_buf = function(mode, from, to) vim.api.nvim_buf_set_keymap(mode, from, to, opts) end

-- My Mappings
map('n', '<A-m>', ';')
vim.keymap.set('n', ';', ':', {noremap= true})
map('n', '<leader>o', 'o')
map('n', '<leader>O', 'O')
map('n', '<C-s>', '<cmd>w<CR>')
map('n', '<Leader>s', ':%s/<<C-r><C-w>>')       -- replace work under cursor
map('i', '<C-l>', '<Del>')
map('n', '<A-q>', '<cmd>q<CR>')
map('n', '<C-r>', '"hy:%s/<C-r>h//gc<left><left><left>')



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
map('n', '<C-n>', ':NvimTreeToggle<CR>')
map('n', '<leader>r', ':NvimTreeRefresh<CR>')
map('n', '<leader>n', ':NvimTreeFindFile<CR>')

-- Dap 
map('n', "<F5>", "<Cmd>lua require('dap').continue()<CR>")
map('n', "<F10>", "<Cmd>lua require('dap').step_over()<CR>")
map('n', "<F11>", "<Cmd>lua require('dap').step_into()<CR>")
map('n', "<F12>", "<Cmd>lua require('dap').step_out()<CR>")
map('n', "<Leader>b", "<Cmd>lua require('dap').toggle_breakpoint()<CR>")
map('n', "<Leader>B", "<Cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
map('n', "<Leader>lp", "<Cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
map('n', "<Leader>dr", "<Cmd>lua require('dap').repl.open()<CR>")
map('n', "<Leader>dl", "<Cmd>lua require('dap').run_last()<CR>")

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


