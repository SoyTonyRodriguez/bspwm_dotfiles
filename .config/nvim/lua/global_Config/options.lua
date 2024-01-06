vim.opt.number		= true			-- Show number line
vim.opt.relativenumber	= true			-- Show the number line relative to the cursor's current position
vim.opt.title		= true			-- Show the name of the currently file
vim.opt.fileencoding 	= "utf-8"		-- Enconding to UTF-8
vim.opt.mouse 		= 'a'			-- Copy selected text with mouse to system clipboard
vim.opt.sw		= 2			-- Specifies the number of spaces that a tab character should represent
vim.opt.expandtab	= true			-- Convert tabs to spaces
vim.opt.smartindent     = true                  -- Indentation
vim.opt.rnu             = true                  
vim.opt.numberwidth     = 1
vim.opt.swapfile        = false                 -- Don't create swapfiles for new buffers
vim.opt.backup          = false                 -- Don't use backup files
vim.opt.incsearch       = true                  -- Set incremental search, like modern browsers
vim.opt.ignorecase      = true                  -- Case insensitive searching
vim.opt.clipboard 	= 'unnamedplus'         -- Make copy work with system clipboard
vim.opt.cursorline      = true                  -- Highlight current line
vim.opt.termguicolors   = true                  -- Enable true colors support
vim.opt.colorcolumn     = "125"
vim.opt.showbreak       = "↪"
vim.opt.autoindent      = true                  -- Automatically set indent of new line

vim.cmd('highlight ColorColumn ctermbg=0 guibg=lightgrey')
vim.opt.compatible = false
vim.cmd('filetype plugin indent on')            -- Enable detection, plugins and indents

-- Better autocomplete options
vim.opt.completeopt     = {'menuone', 'noinsert', 'noselect'}
vim.opt.foldmethod      = "syntax"
vim.opt.foldenable      = false
vim.opt.foldlevel       = 4


vim.cmd [[syntax on]]
