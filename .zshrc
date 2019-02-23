ZSH_THEME="shane"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export LANG=en_US.UTF-8

# export MANPATH="/usr/local/man:$MANPATH"
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# Command auto-correction
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

plugins=(
git
dircycle
dirpersist
tmux
web-search
autojump
pj
theme
vi-mode
)

PROJECT_PATHS=(~/programming/python/)
export ZSH="/home/shane/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh


# User configuration

# FFF
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

# Horizontal Scroll
synclient HorizTwoFingerScroll=1

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# User Aliases
alias update='sudo apt-get update && sudo apt-get dist-upgrade'
alias python='python3'
alias py3='python3'
alias py2='python2'
alias rpi='ssh pi@192.168.0.15'
alias sshpa='ssh shanewilson007@ssh.pythonanywhere.com'
alias tk='tmux kill-ses -t '
alias tka='killall tmux'
alias ta='tmux attach-ses -t '
alias tns='tmux new -s '
alias scan='scangearmp2'
alias google='gnome-www-browser'
alias inputMonitor='udevadm monitor --udev'
alias tos='sudo sh thinkorswim'
alias bye='systemctl poweroff -i'
alias reboot='systemctl reboot -i'
alias rnetwork='sudo service network-manager restart'
alias rdm='sudo service lightdm restart'
alias reload='guard'
alias open='gnome-open '
alias jupyter='jupyter notebook'
alias pdfmerge='pdfunite'
alias server='python manage.py runserver_plus'
alias shell='python manage.py shell_plus'
alias reloadx='xrdb ~/.Xresources'
alias music='ncmpcpp'
alias trash='cd ~/.local/share/Trash'
alias zconf='vi ~/.zshrc'
alias workon='source ~/.virtualenvs/'
alias tasks='gnome-system-monitor'
alias jd='cd ~ && cd'

PATH=$PATH:~/.local/bin
