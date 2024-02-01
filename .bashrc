
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/terukina/google-cloud-sdk/path.bash.inc' ]; then . '/Users/terukina/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/terukina/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/terukina/google-cloud-sdk/completion.bash.inc'; fi

# 出力の後に改行を入れる
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'


# "-F":ディレクトリに"/"を表示 / "-G"でディレクトリを色表示
alias ls='ls -FG'
alias ll='ls -alFG'
alias rm='rm -i'
alias grep='grep --color=auto'

cd ()
{
    builtin cd "$@" && ls
}

#docker
alias d='docker'
alias dp='docker ps'
alias di='docker images'
alias dc='docker-compose'

#AWS CLI補完
complete -C '/usr/local/bin/aws_completer' aws


export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"
export PKG_CONFIG_PATH="/usr/local/opt/zlib/lib/pkgconfig"
