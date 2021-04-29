source $(brew --prefix)/share/antigen/antigen.zsh

antigen init "${HOME}/.antigenrc"

# set common aliases
source "${HOME}/.aliases"

# set path
export PATH="/usr/local/opt/go/libexec/bin:${HOME}/go/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/openssl/bin"

# other settings
COMPLETION_WAITING_DOTS="true"

# iterm integration
[ -f $HOME/.iterm2_shell_integration.zsh ] && source ${HOME}/.iterm2_shell_integration.zsh

# key binding for better movement in iterm
bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

timezsh() {
  shell=${1-$SHELL}
  for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
