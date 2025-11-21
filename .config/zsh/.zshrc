alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls -hv --color=auto --group-directories-first --indicator-style='slash'"
alias grep="grep --color=auto"
alias df="df -h"
alias du="du -h -d 1"
alias ncdu="ncdu --color dark"
alias mv="mv -i"
alias rm="rm -I"
alias cdg="cd $GOPATH"
alias zshu="source $ZDOTDIR/.zshrc"

zmodload zsh/complist
autoload -U colors && colors

autoload -U compinit && compinit -d $XDG_CACHE_HOME/zsh/compinit

source $XDG_CONFIG_HOME/zsh/completion.zsh
source $XDG_CONFIG_HOME/zsh/binds.zsh



# --- prompt ---
autoload -Uz vcs_info

zstyle ':vcs_info:*:*:*' enable git
zstyle ':vcs_info:*:*:*' formats ' %F{magenta}󰘬 %b%F{reset_color}'

precmd_vcs_info() {
  vcs_info
}

precmd_functions+=( precmd_vcs_info )

setopt PROMPT_SUBST

PROMPT='%B%{$fg[cyan]%}%(4~|…/%3~|%~)%{$reset_color%}%b%(?.. %{$fg[red]%}[%?]%{$reset_color%})${vcs_info_msg_0_}
%B·%b '





source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
