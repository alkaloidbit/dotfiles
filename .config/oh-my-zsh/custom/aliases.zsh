alias vim="nvim"
alias vnrc="vim -u NORC"

alias zshrc="vim $HOME/.zshrc"
alias vimrc="vim $HOME/.vimrc"
alias nvimrc="vim $HOME/.config/nvim/init.vim"
alias tmuxrc="vim $HOME/.tmux.conf"
alias aliasrc="vim $ZSH_CUSTOM/aliases.zsh"
alias i3rc="vim $HOME/.config/i3/config"
alias polyrc="vim $HOME/.config/polybar/config"
alias rangerrc="vim $HOME/.config/ranger/rc.conf"
alias ncmpcpprc="vim $HOME/.ncmpcpp/config"
alias conkyrc="vim $HOME/.config/conky/conky.conf"

alias xx="exit"
alias src="source $HOME/.zshrc"

# fasd related
alias v='f -e nvim' # quick opening files with vim
alias m='f -e cmus' # quick opening files with cmus
alias o='a -e xdg-open' # quick opening files with xdg-open

# nfasd
alias n='nfasd -e nvim' # press n myPro<tab> to get n ~/myProject
# alias ny='nfasd -e nyaovim' # require nyaovim

# open file explorer
alias ff='pcmanfm'

# Dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dst='dotfiles status'
alias da='dotfiles add'
alias ddi='dotfiles diff'
alias dg='dotfiles graph'
alias db='dotfiles branch'
alias dch='dotfiles checkout'
alias dcm='dotfiles commit -m'
alias df='dotfiles'

# Rm vim tmp files
alias rmv='rm -rf ~/.vim-tmp/* && rm -rf ~/.vim-tmp/.*'

alias rm='rm -i -v'

# Tmux 
alias tm="tmux"
alias tls='tmux list-sessions'
alias tks='tmux kill-server'
alias tmn="tmux new -t"

alias i3rc="vim $HOME/.config/i3/config"

# alias install="sudo apt-get install"

alias pbc="php bin/console " 
alias syst="symfony server:status"
alias syse="symfony serve --allow-http --no-tls -d"
alias systop="symfony server:stop"


# open all git modified files 
alias vgm="vim \$(git status --porcelain | awk '{print $2}')"

# Suffix alias 
# alias -s [file-extension]=[name-of-app]
alias -s php=vim
alias -s css=vim
alias -s scss=vim
alias -s twig=vim
alias -s txt=vim


# Global alias
alias -g G=" | grep"

# Colorls
alias cls="colorls"

# Bat
alias b="bat"

# exa 
# alias ls="exa"

alias lsal="ls -al"

# Open vim session
alias vss="vim -S ~/.vim/vim-sessions/"
alias r="ranger"

# fzf 
alias vf="vim \$(fzf)"
alias -g Z="| fzf"
alias f="fzf"

# xclip
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'


# systemctl
alias susys="sudo systemctl"

# Git english
alias git='LANG=en_GB git'

alias gg='git graph'

# Php Version
alias php='/usr/bin/php74'
