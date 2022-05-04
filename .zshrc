ZSH_THEME="shane"
export PATH=$HOME/bin:/usr/local/bin:$PATH:/snap/bin:/bi/npm:~/.local/bin:/opt/lampp/bin:/opt/lampp/xampp:~/virtualenvs/autoadmin/bin/python3
bindkey -v

# VCXSRV
# export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
# export LIBGL_ALWAYS_INDIRECT=true

# PROJECT_PATHS=(~/dev/work/django ~/dev/work/python)

# VirtualEnv
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh
# source ~/.local/bin/virtualenvwrapper.sh

DISABLE_LS_COLORS="true"
plugins=(
  dircycle
  dirpersist
  git
  history
  jsontools
  pj
  sudo
  vi-mode
  virtualenv
  web-search
  z
  zsh-autosuggestions
)
export ZSH="/home/shane/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

COMPLETION_WATING_DOTS="true"

# Vim-mode Indicator
PS1+='${VIMODE}'
function zle-line-init zle-keymap-select {
  DOLLAR='%B%F{green}$%f%b '
  GIANT_I='%B%F{red}N%f%b '
  VIMODE="${${KEYMAP/vicmd/$GIANT_I}/(main|viins)/$DOLLAR}"
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='vim'
# fi

# User Aliases
alias python='python3'
alias tk='tmux kill-ses -t '
alias tka='killall tmux'
alias ta='tmux attach-ses -t '
alias tns='tmux new -s '
alias jupyter='jupyter notebook'
alias pdfmerge='pdfunite'
alias server='python manage.py runserver_plus'
alias shell='python manage.py shell_plus'
alias trash='cd ~/.local/share/Trash'
alias jd='cd ~ && cd'
alias cdrive='cd /mnt/c/Users/IT/'
alias sz='source ~/.zshrc'
alias xampp='sudo /opt/lampp/xampp start'
alias ls='ls --color=auto'
alias mstart='sudo /etc/init.d/mysql start'

eval "$(dircolors -p | \
    sed 's/ 4[0-9];/ 01;/; s/;4[0-9];/;01;/g; s/;4[0-9] /;01 /' | \
    dircolors /dev/stdin)"


export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
