
#Setting PATH for Python 3.6
#The original version is saved in .bash_profile.pysave
#alias python="python3"

#export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH="/usr/local/Cellar/python@2/2.7.16/Frameworks/Python.framework/Versions/2.7/Resources/Python.app/Contents/MacOS/Python:${PATH}"
export GOOLGLE_APPLICATION_CREDENTIALS="/Users/terukina/Apache"
export CLOUDSDK_PYTHON="/usr/local/bin/python2"
export CLOUDSDK_PYTHON=python3

#2020/4/10
export PATH="/usr/local/bin":$PATH
#2020/4/11
export PATH="/usr/local/Cellar/vim/8.2.2750/bin/:$PATH"

#brewで入れたやつ
#export PATH=/usr/local/bin:$PATH

#適当に
#export PATH=/usr/local/lib:$PATH


#export PYENV_ROOT="$HOME/.pyenv"
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# added by Anaconda3 5.0.1 installer
#export PATH="/Users/terukina/anaconda3/bin:$PATH"

#alias python="python3"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/terukina/google-cloud-sdk/path.bash.inc' ]; then . '/Users/terukina/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/terukina/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/terukina/google-cloud-sdk/completion.bash.inc'; fi

# if [ -f ~/.bashrc ]; then
#   . ~/.bashrc
# fi
export PATH=~/go/bin:$PATH
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"

# default:cyan / root:red
if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi

# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG'
alias ll='ls -alFG'

#ブランチ名表示
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
#export PS1='\[\033[00m\]\u@\h\[\033[00m\]:\[\033[00m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\]\n\$ '
#export PS1='\[\033[00m\]\u@\h\[\033[00m\]:\[\033[00m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\] \$ '
export PS1='\[\033[00m\]\u@\A\[\033[00m\]:\[\033[00m\]\w\[\033[33m\]$(__git_ps1)\[\033[00m\] \$ '

# function parse_git_branch {
#     git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
# }
# function promps {
#     # 色は気分で変えたいかもしれないので変す宣言しておく
#     local  BLUE="\[\e[1;34m\]"
#     local  RED="\[\e[1;31m\]"
#     local  GREEN="\[\e[1;32m\]"
#     local  WHITE="\[\e[00m\]"
#     local  GRAY="\[\e[1;37m\]"
#
#     case $TERM in
#         xterm*) TITLEBAR='\[\e]0;\W\007\]';;
#         *)      TITLEBAR="";;
#     esac
#     local BASE="\u@\h"
#     PS1="${TITLEBAR}${GREEN}${BASE}${WHITE}:${BLUE}\W${GREEN}\$(parse_git_branch)${BLUE}\$${Blue} "
# }
# promps

#git補完機能
source ~/.git-completion.bash

export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
export PATH="~/.composer/vendor/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/shims:$PATH"
eval "$(pyenv init -)"


export PATH="$PATH:$HOME/flutter/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"
