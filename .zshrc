# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export VIMRUNTIME="$HOME/vendors/nvim-linux64/share/nvim/runtime"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-vi-mode zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# if [ -n "${NVIM_LISTEN_ADDRESS+x}" ]; then
export MANPAGER="nvim +Man!"

# only do this on mac device

if [[ "$OSTYPE" == "darwin"* ]]; then
  export TERM='xterm-256color'
fi

export EDITOR='nvim'
export VISUAL='nvim'
# fi

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias init-work="bash ~/personal/scripts/init-work.sh"
alias init-personal="bash ~/personal/scripts/init-personal.sh"
alias awscli="/usr/local/bin/aws"
alias py="/usr/bin/python3.12"
alias python="/usr/bin/python3.12"
alias pip="/usr/bin/pip3.12"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Key bindings
bindkey '^@' autosuggest-accept
bindkey '\t' end-of-line

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export GPG_TTY=$(tty)

# pnpm
export PNPM_HOME="/home/joe/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm endexport PATH="/home/linuxbrew/.linuxbrew/opt/php@8.1/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/php@8.1/sbin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go" # set GOPATH (path to where go is installed)
export PATH=$PATH:$GOPATH/bin # append GOPATH to PATH 
export PATH="$HOME/.local/bin:$PATH"

# export LOCALSTACK_API_KEY=6Yp3m24xwF
export LOCALSTACK_API_KEY="3B7BYy2YOH"

# Add DNS entry for windows host
if ! $(cat /etc/hosts | grep -q 'winhost'); then
  echo 'Adding DNS entry for Windows host in /etc/hosts'
  echo '\n# Windows host - added via ~/.bashhrc' | sudo tee -a /etc/hosts
  echo -e "$(grep nameserver /etc/resolv.conf | awk '{print $2, "   winhost"}')" | sudo tee -a /etc/hosts
fi

# Initialize Multiplexer
# echo 'eval "$(zellij setup --generate-auto-start zsh)"' >> ~/.zshrc
