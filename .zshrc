#
# Tmux
#

if [ -z "$TMUX" ] # When zsh is started attach to current tmux session or create a new one
then
    tmux attach -t TMUX || tmux new -s TMUX
fi


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin/:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:/usr/local/go/bin

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

SPACESHIP_NODE_DEFAULT_VERSION="v16.16.0"
SPACESHIP_PACKAGE_SHOW="false"
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
plugins=(
	git
	fzf
	dotbare
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh
# source /usr/share/doc/fzf/examples/key-bindings.zsh
source $ZSH_CUSTOM/plugins/fzf-git.sh/fzf-git.sh

# User configuration
if [ -n "${NVIM_LISTEN_ADDRES+x}" ]; then
    export COLORTERM="truecolor"
fi

# dircolors
test -r ~/.dir_colors && eval $(dircolors ~/.dircolors)

# vivid LS_COLORS
export LS_COLORS="$(vivid generate nord)"

# Bat theme
export BAT_THEME="Nord"

# FZF nord colors
export FZF_DEFAULT_OPTS="
    --layout=reverse
    --color fg:#d8dee9,bg:#2e3440,hl:#8fbcbb,fg+:#d8dee9,bg+:#424c5e,hl+:#8fbcbb
    --color pointer:#bf616a,info:#4c566a,spinner:#4c566a,header:#4c566a,prompt:#81a1c1,marker:#ebcb8b,border:#616e88
    --height=80%
    --multi
    --padding=2
    --margin=1
    --prompt='~ ' --pointer='▶' --marker='✓'
    --bind 'ctrl-b:select-all'
    --bind 'ctrl-e:execute(echo {+} | xargs -o nvim)'
"

export FZF_CTRL_T_OPTS="
    --ansi
    --preview ' bat --color=always --line-range :300 {}'
    --bind '?:toggle-preview'
"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

### NVIM MINIMAL
MINIMAL_NVIM=~/.config/minimal-nvim
export MINIMAL_NVIM

alias mnv='XDG_DATA_HOME=$MINIMAL_NVIM/share XDG_CONFIG_HOME=$MINIMAL_NVIM nvim'

### NVIM BEGINNER
NVIM_BEGINNER=~/.config/nvim-beginner
export NVIM_BEGINNER

alias nvb='XDG_DATA_HOME=$NVIM_BEGINNER/share XDG_CONFIG_HOME=$NVIM_BEGINNER nvim'

### NVIM FOR MINIMALIST
NVIM_MINIMALIST=~/.config/nvim-minimalist
export NVIM_MINIMALIST

alias nvmm='XDG_DATA_HOME=$NVIM_MINIMALIST/share XDG_CACHE_HOME=$NVIM_MINIMALIST XDG_CONFIG_HOME=$NVIM_MINIMALIST nvim'

# interactive cd
# function cd() {
#     if [[ "$#" != 0 ]]; then
# 	builtin cd "$0";
# 	return
#     fi
#     while true; do
# 	local lsd=$(echo ".." && ls -p | grep '/$' | sed 's;/$;;')
# 	local dir="$(printf '%s\n' "${lsd[@]}" |
# 	    fzf --reverse --preview '
# 		__cd_nxt="$(echo {})";
# 		__cd_path="$(echo $(pwd)/${__cd_nxt} | sed "s;//;/;")";
# 		echo $__cd_path;
# 		echo;
# 		ls -p --color=always "${__cd_path}";
# 	')"
# 	[[ ${#dir} != 0 ]] || return 0
# 	builtin cd "$dir" &> /dev/null
#     done
# }
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# zoxide
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export ZK_NOTEBOOK_DIR="$HOME/Documents/my-notes"

source $ZSH_CUSTOM/plugins/forgit/forgit.plugin.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
