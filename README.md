# My dotfiles_v3
This setup works 50% of the time — use it with caution

## Neovim Setup

### Requirements:

1. `git clone git@github.com:oieeaaaa/dotfiles_v3.git`
1. `cd dotfiles_v3`
1. Install neovim's stable release
  1. Go to [neovim v0.8.0](https://github.com/neovim/neovim/releases/tag/v0.8.0)
  2. Follow the installation instructions based on your OS
1. `mkdir ~/.config && cp -R nvim ~/.config/nvim`
1. Install packer `git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
1. Install nvim packages
  1. Run: `nvim .`
  2. Run `:PackerInstall` inside nvim
1. Install nvim LSPs
  1. Run `:LspInstallInfo`
  2. Install the following lsps by pressing `i` on its name
    1. `tsserver`
    2. `eslint`
    3. `tailwindcss`
    4. `stylelint_lsp`
1. (WSL Users only) Install [win32yank.exe](https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl)
1. Install [nerd fonts](https://www.nerdfonts.com/font-downloads) for nvim-tree icons
1. have fun...

## TMUX Setup

1. `mv path-to-your/dotfiles_v3/.tmux.conf ~`;
1. `sudo apt install tmux`
1. Run `mkdir ~/vendors && cd ~/vendors`
1. `git clone https://github.com/erikw/tmux-powerline.git`

## ZSH Setup

1. `mv path-to-your/dotfiles_v3/.zshrc ~`;
1. `sudo apt install zsh`
1. `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
1. `git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH_CUSTOM/plugins/zsh-vi-mode`
