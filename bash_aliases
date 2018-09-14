# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ] && [ "$TERM" != "linux" ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [ "$TERM" = "linux" ]; then
  alias vi='vi -u NONE'
fi

alias ll='ls -l'
alias lal='ls -Al'
alias la='ls -A'
alias l='ls -CF'
alias r='ranger'

