-- --- OPÇÕES DO EDITOR ---

local opt = vim.opt

opt.number = true          -- Mostra o número das linhas
opt.relativenumber = true  -- Número relativo (ajuda muito na navegação rápida)

opt.tabstop = 4            -- 1 TAB = 4 espaços
opt.shiftwidth = 4         -- Recuo de 4 espaços
opt.expandtab = true       -- Transforma tabulações em espaços
opt.smartindent = true     -- Indentação inteligente automática

opt.mouse = 'a'            -- Permite usar o mouse para selecionar/navegar se quiser
opt.clipboard = 'unnamedplus' -- Sincroniza o clipboard do Vim com o do sistema operacional

opt.ignorecase = true      -- Ignora maiúsculas na busca...
opt.smartcase = true       -- ...a menos que você digite uma letra maiúscula

opt.termguicolors = true   -- Suporte a cores modernas (combina com o tmux.conf acima!)

-- Atalho rápido: Espaço vira o seu botão "Leader" (atalho principal)
vim.g.mapleader = " "
