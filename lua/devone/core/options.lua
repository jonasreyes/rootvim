vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 espacios para tabulación (formateo bello)
opt.shiftwidth = 2 -- 2 espacios de ancho para la indentación
opt.expandtab = true -- expandir tabulación en los espacios.
opt.autoindent = true -- copia la indentación de la linea actual a la próxima línea

opt.wrap = false

-- configuraciones de búsqueda
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you incluse mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottm
