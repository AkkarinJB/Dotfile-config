-- Save and exit
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Exit Neovim" })
vim.keymap.set("n", "<leader>x", ":x<CR>", { desc = "Save and Exit" })
vim.keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save file (Ctrl+S)" })

-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move to top window" })

-- Buffer management
vim.keymap.set("n", "<leader>c", ":bd<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- Telescope (Fuzzy Finder)
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Find text in files" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find open buffers" })
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Find help documentation" })

-- Terminal Mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit Terminal mode" })
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Move to left window (Terminal)" })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Move to right window (Terminal)" })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Move to bottom window (Terminal)" })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Move to top window (Terminal)" })

-- Copy & Paste
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Copy entire line to clipboard" })

-- Code Navigation & LSP
vim.keymap.set("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", { desc = "Rename symbol (LSP)" })
vim.keymap.set("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action (LSP)" })
vim.keymap.set("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definition (LSP)" })
vim.keymap.set("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>", { desc = "Find References (LSP)" })
vim.keymap.set("n", "K", ":lua vim.lsp.buf.hover()<CR>", { desc = "Show Hover Documentation (LSP)" })

-- Quickfix Navigation
vim.keymap.set("n", "<leader>cn", ":cnext<CR>", { desc = "Next Quickfix Item" })
vim.keymap.set("n", "<leader>cp", ":cprev<CR>", { desc = "Previous Quickfix Item" })

-- Indentation (Visual Mode)
vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })

-- Move Lines Up/Down (Visual Mode)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up" })

-- Clear Search Highlight
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlight" })

-- Open Lazy Plugin Manager
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { desc = "Open Lazy Plugin Manager" })

-- Open Mason (LSP/DAP Installer)
vim.keymap.set("n", "<leader>m", ":Mason<CR>", { desc = "Open Mason (LSP Installer)" })

-- Restart LSP
vim.keymap.set("n", "<leader>lr", ":LspRestart<CR>", { desc = "Restart LSP Server" })
