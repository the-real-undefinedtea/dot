HISTFILE=~/.history
HISTSIZE=700
SAVEHIST=700

#
bindkey -v

#
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*:*:*:*:*' menu select

autoload -U compinit colors
compinit
colors

#
setopt all_export

setopt extended_history
setopt hist_ignore_space
setopt hist_ignore_dups

setopt menu_complete
setopt auto_menu

setopt auto_list

#
source ~/.console/configuration
source ~/.console/alias
source ~/.console/function

#
source ~/.console/syntax/zsh-syntax-highlighting.zsh
source ~/.console/suggest/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=59'
bindkey '^ ' autosuggest-accept
# source ~/.console/history.zsh
# zmodload zsh/terminfo
# bindkey -M vicmd 'k' history-substring-search-up
# bindkey -M vicmd 'j' history-substring-search-down

#
source ~/.console/visual

#
source ~/.console/export

# influx
source <(influx completion zsh)

# bun
[ -s "/Users/undefinedtea/.bun/_bun" ] && source "/Users/undefinedtea/.bun/_bun"

HOST_=$(uname)

if [ "$HOST_" = 'Linux' ]; then
 if [[ $(tty) = /dev/tty1 ]]; then
   exec sway
 fi
fi

stty -ixon
clear
