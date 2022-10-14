# My dotfiles_v3
This setup works 50% of the time — use it with caution

## Neovim Setup

### Requirements:

1. `git clone git@github.com:oieeaaaa/dotfiles_v3.git`
2. `cd dotfiles_v3`
3. Install neovim's stable release
  3.1 Go to [neovim v0.8.0](https://github.com/neovim/neovim/releases/tag/v0.8.0)
  3.2 Follow the installation instructions based on your OS
4. `mkdir ~/.config && cp -R nvim ~/.config/nvim`
5. Install packer `git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
6. Install nvim packages
  6.1 Run: `nvim .`
  6.2 Run `:PackerInstall` inside nvim
7. Install nvim LSPs
  7.1 Run `:LspInstallInfo`
  7.2 Install the following lsps by pressing `i` on its name
    7.2.1 `tsserver`
    7.2.2 `eslint`
    7.2.3 `tailwindcss`
    7.2.4 `stylelint_lsp`
8. (WSL Users only) Install [win32yank.exe](https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl)
9. Install [nerd fonts](https://www.nerdfonts.com/font-downloads) for nvim-tree icons
10. have fun...

## TMUX Setup

0. `mv path-to-your/dotfiles_v3/.tmux.conf ~`;
1. `sudo apt install tmux`
2. Run `mkdir ~/vendors && cd ~/vendors`
3. `git clone https://github.com/erikw/tmux-powerline.git`

## ZSH Setup

0. `mv path-to-your/dotfiles_v3/.zshrc ~`;
1. `sudo apt install zsh`
2. `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
3. `git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH_CUSTOM/plugins/zsh-vi-mode`
