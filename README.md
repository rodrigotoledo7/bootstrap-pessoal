# 💻 Bootstrap Pessoal & Dotfiles

Repositório pessoal de configuração e automação de ambiente de
desenvolvimento utilizando **Ansible** para orquestração de sistema e
**Prezto (Zsh)** como framework de terminal, além de ferramentas
modernas de CLI.

Este projeto permite reconstruir todo o meu fluxo de trabalho
(configurações de Git, tmux, Neovim, utilitários rápidos e ambiente de
shell) de forma idêntica e automatizada em qualquer máquina
Debian/Ubuntu ou WSL.

------------------------------------------------------------------------

## 🛠️ O que está incluído na automação?

-   **Zsh & Prezto:** Shell interativo com os módulos de produtividade
    mais usados (`syntax-highlighting`, `autosuggestions` e
    `history-substring-search` para busca rápida com as setas do
    teclado).
-   **Ferramentas CLI Modernas:**
    -   `fzf` (Fuzzy Finder para histórico e busca rápida)
    -   `ripgrep` (`rg` para busca ultraveloz de termos no código
        respeitando o seu `.gitignore`)
    -   `bat` (Visualizador de arquivos com realce de sintaxe)
    -   `tmux` (Multiplexador de terminal configurado para produtividade
        com suporte ao mouse)
-   **Configurações Globais:**
    -   `git` (Aliases eficientes, configurações de quebra de linha CRLF
        e ignores globais)
    -   `Neovim` (Configuração moderna estruturada em Lua)
    -   Links simbólicos (*symlinks*) gerenciados e apontando
        diretamente do seu diretório `~` para este repositório.

------------------------------------------------------------------------

## 🚀 Como usar em uma nova máquina

### 1. Pré-requisitos

``` bash
sudo apt update && sudo apt install -y git ansible
```

### 2. Clonar este repositório

``` bash
mkdir -p ~/projects
git clone https://github.com/rodrigotoledo7/bootstrap-pessoal.git ~/projects/personal-bootstrap
```

### 3. Executar o Ansible Playbook

> 💡 **Nota:** Usamos `-K` para solicitar a senha de `sudo` e
> `-i localhost,` para usar o inventário dinâmico.

``` bash
ansible-playbook -i localhost, ~/projects/personal-bootstrap/devops/bootstrap-pessoal/ansible/playbooks/setup_dev_env.yml -K
```

Digite sua senha quando solicitado.

------------------------------------------------------------------------

## 🧭 Estrutura do Repositório

``` text
personal-bootstrap/
├── README.md
├── devops/
│   └── bootstrap-pessoal/
│       └── ansible/
│           └── playbooks/
│               └── setup_dev_env.yml
└── dotfiles/
    ├── git/
    │   ├── gitconfig
    │   └── gitignore_global
    ├── nvim/
    │   ├── init.lua
    │   └── lua/
    │       └── custom/init.lua
    ├── tmux/
    │   └── tmux.conf
    └── zsh/
        ├── zpreztorc
        └── zshrc
```

------------------------------------------------------------------------

## ✨ Atalhos rápidos configurados pós-instalação

  -----------------------------------------------------------------------
  Atalho / Comando        Ferramenta              Descrição
  ----------------------- ----------------------- -----------------------
  `Ctrl + R`              `fzf`                   Busca interativa em
                                                  todo o histórico de
                                                  comandos

  `Alt + C`               `fzf`                   Navega por diretórios
                                                  de forma interativa

  `git lg`                `git`                   Histórico em árvore
                                                  colorida

  `git undo`              `git`                   Desfaz o último commit
                                                  mantendo alterações

  Seta `↑` / `↓`          `prezto`                Busca por substring no
                                                  histórico

  `bat <arquivo>`         `bat`                   Visualização colorida
                                                  com destaque de sintaxe
  -----------------------------------------------------------------------
