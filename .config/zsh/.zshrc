
alias ls="ls -hv --color=auto --group-directories-first --indicator-style='slash'"
alias grep="grep --color=auto"
alias df="df -h"
alias du="du -h -d 1"
alias ncdu="ncdu --color dark"
alias mv="mv -i"
alias rm="rm -I"


zmodload zsh/complist
autoload -U compinit && compinit -d $XDG_CACHE_HOME/zsh/compinit
autoload -U colors && colors


# you can not put "\n" in the prompt it will literally write out "\n" instead of a new line
# got the dir path from https://unix.stackexchange.com/questions/273529/shorten-path-in-zsh-prompt/273567#273567
# some prompt symbols: λ » ▸ · ■ ▶ ❯

NEWLINE=$'\n'
PS1="╭ %{$fg[green]%}%B%n%b%{$reset_color%}@%m %{$fg[green]%}%(4~|…/%3~|%~)%{$reset_color%} %(?..%{$fg[red]%}[%?]%{$reset_color%})${NEWLINE}╰ %Bλ%b "


source $XDG_CONFIG_HOME/zsh/completion.zsh
source $XDG_CONFIG_HOME/zsh/binds.zsh

source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
