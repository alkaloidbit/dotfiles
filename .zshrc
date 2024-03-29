#!/usr/bin/ zsh
#   _________  _   _ ____   ____
#  |__  / ___|| | | |  _ \ / ___|
#    / /\___ \| |_| | |_) | |
# _ / /_ ___) |  _  |  _ <| |___
#(_)____|____/|_| |_|_| \_\\____|
#

# If you come from bash you might have to change your $PATH.  
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

## My custom path for scripts
export PATH=$HOME/Scripts:$PATH
export PATH=$HOME/bin/PhpStorm-212.5284.49/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/home/fred-badlieutenant/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

export RANGER_LOAD_DEFAULT_RC=false

# SPACESHIP_GIT_BRANCH_COLOR=#616E88
# SPACESHIP_DIR_COLOR=#616E88

# CUSTOMIZE SPACESHIP
SPACESHIP_NODE_DEFAULT_VERSION="v11.14.0"
SPACESHIP_PROMPT_ORDER=(
#  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
# hg            # Mercurial section (hg_branch  + hg_status)
# package       # Package version
# node          # Node.js section
# ruby          # Ruby section
# elixir        # Elixir section
# xcode         # Xcode section
# swift         # Swift section
# golang        # Go section
# php           # PHP section
# rust          # Rust section
# haskell       # Haskell Stack section
# julia         # Julia section
# docker        # Docker section
# aws           # Amazon Web Services section
# venv          # virtualenv section
# conda         # conda virtualenv section
# pyenv         # Pyenv section
# dotnet        # .NET section
# ember         # Ember.js section
# kubecontext   # Kubectl context section
# terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
# battery       # Battery level and status
# vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

###############
## Functions ##
###############

function tmw {
    tmux split-window -dh "$*"
}

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to l a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.config/oh-my-zsh/custom

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  colorize
  common-aliases
  docker-compose
  extract
  fasd
  forgit
  git
  gitignore
  git-prompt
  symfony
  symfony2
  # tmux
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ZSH_TMUX_AUTOSTART='true'

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/custom/plugins/forgit/forgit.plugin.zsh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=fr_FR.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

###########
##  FZF  ##
###########

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

export FZF_DEFAULT_OPTS="
--ansi
--layout=reverse
--color fg:#D8DEE9,bg:#2E3440,hl:#8FBCBB,fg+:#D8DEE9,bg+:#434C5E,hl+:#8FBCBB
--color pointer:#BF616A,info:#4C566A,spinner:#4C566A,header:#4C566A,prompt:#81A1C1,marker:#EBCB8B,border:#616E88
--height=50%
--multi
--preview '([[ -f {} ]] && (bat --style=numbers --color=always {} || cat {})) || ([[ -d {} ]] && (tree -C {} | less)) || echo {} 2> /dev/null | head -200'
--prompt='~ ' --pointer='▶' --marker='✓'
--bind '?:toggle-preview'
--bind 'ctrl-b:select-all'
--bind 'ctrl-e:execute(echo {+} | xargs -o nvim)'
"

export FZF_CTRL_T_OPTS="
--ansi
--preview ' bat --color=always  --line-range :300 {}'
--bind '?:toggle-preview'
"

# --exclude <pattern> ... Exclude entries that match the given glob pattern ( ... dont search in .git folder ... )
# --no-ignore             Don not respect .(git/fd)ignore files
export FZF_DEFAULT_COMMAND="fd --type file --color=always --hidden --exclude .git --no-ignore"
 
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
 
export FZF_ALT_C_COMMAND="fd  --hidden --follow --exclude '.git' --exclude 'node_modules' --type d"
 
#########
## Bat ##
#########

export BAT_THEME="Nord"
# Bat can be used as a colorizings pager for man, by setting the MANPAGER environment variable:
export MANPAGER="sh -c 'col -bx | bat -l man -p'" 

export FZF_PREVIEW_PREVIEW_BAT_THEME="Nord"

################
## FASD + FZF ##
################

function t() {
    fasdlist=$( fasd -d -l -r $1 | \
        fzf --query="$1 " --select-1 --exit-0 --height=25% --reverse --tac --no-sort --cycle) &&
    cd "$fasdlist"
}

############
## Ranger ##
############

# Preventing nested ranger instances
ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

if [ -n "${NVIM_LISTEN_ADDRES+x}" ]; then
    export COLORTERM="truecolor"
fi

###########
## nfasd ##
###########

# https://github.com/haifengkao/nfasd
eval "$(register-python-argcomplete-menu nfasd)"
# stop shell from beeping for every complete
# optional but highly recommended
setopt NO_LIST_BEEP


# https://github.com/gabrielelana/awesome-terminal-fonts
# source ~/.fonts/*.sh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zsahconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
setopt autocd 
setopt autopushd 
setopt pushdignoredups
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export BROWSER=/usr/bin/google-chrome-stable

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

fpath=($fpath "/home/fred-badlieutenant/.zfunctions")

# autoload -Uz promptinit; 
# promptinit
# prompt spaceship

# NVM
source /usr/share/nvm/init-nvm.sh

# export NVM_DIR="$HOME/.nvm"
#' [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" ]]]

export PATH="$HOME/.npm/bin:$PATH"
unalias t
