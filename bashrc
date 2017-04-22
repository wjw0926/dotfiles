# Reference: https://github.com/yous/dotfiles

# ~/.bashrc: executed by bash(1) for non-login shells

# If not running interactively, don't do anything
case $- in
  *i*) ;;
  *) return;;
esac

# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  *color) color_prompt=yes;;
esac

# Add an "alert" alias for long running commands
# Use like so: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

function add_to_path_once() {
  if [[ ":$PATH:" != *":$1:"* ]]; then
    export PATH="$1:$PATH"
  fi
}

# Add /usr/local/bin to PATH for Mac OS X
if [[ "$(uname)" == 'Darwin' ]]; then
  add_to_path_once "/usr/local/bin:/usr/local/sbin"
fi

# Set PATH to include user's bin if it exists
if [ -d "$HOME/bin" ]; then
  add_to_path_once "$HOME/bin"
fi

# Unset local functions
#unset -f add_to_path_once

# Define aliases
# Enable color support
ls --color -d . &> /dev/null && alias ls='ls --color=auto' || alias ls='ls -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Some more basic aliases
alias ll='ls -lh'
alias la='ls -lAh'
alias l='ls -lah'
alias cd..='cd ..'
alias clr=clear
alias vi='vim'

# Custom bash prompt via kirsle.net/wizards/ps1.html
export PS1="\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 6)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
