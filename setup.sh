#!/usr/bin/env bash

# Install NeoVim:
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/unix-terminal-setup/neovim-setup/main/setup.sh | bash

# Install NvChad dependencies:

curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/unix-terminal-setup/nerd-fonts-setup/main/setup.sh | bash

sudo apt install -y build-essential git

# Backup Previous NeoVim Configuration:

mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# Install NvChad:

git clone https://github.com/NvChad/starter ~/.config/nvim

# Clean up LazyVim Git folder:

rm -rf ~/.config/nvim/.git
