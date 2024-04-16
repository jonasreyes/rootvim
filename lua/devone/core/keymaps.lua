vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "kj", "<ESC>", { desc = "Saliendo del modo insert con kj." })

-- keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Limpiando el resaltado de las búsquedas." })
keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Limpiando el resaltado de las búsquedas." })

-- saliendo del buffer
keymap.set("n", "<leader>q", ":q<CR>", { desc = "Limpiando el resaltado de las búsquedas." })

-- guardando el buffer
keymap.set("n", "<leader>w", ":w<CR>", { desc = "Limpiando el resaltado de las búsquedas." })

-- incrementar y decrementar números:
keymap.set("n", "<leader>+", "<C-a>", { desc = "Incremento de número." }) -- incrementando
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decremento de número." }) -- decrementando

-- administrando las ventanas
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Dividiendo verticalmente la ventana." }) 
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Dividiendo horizontalmente la ventana." })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Igualando el tamaño de las ventanas divididas." })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Cerrando la división actual" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Abre nueva pestaña" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Cierra pestaña actual" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Ir a la pestaña siguiente." })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Ir pestaña previa" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Obre buffer actual en nueva pestaña." })

-- guardado y salida rápida
