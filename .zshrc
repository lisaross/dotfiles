# Actually my work zshel without dependecy management and with oh-my-zsh.
# # TODO remove oh-my-zsh.

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle jira
antigen bundle yarn
antigen bundle vscode
# antigen bundle StackExchange/blackbox
antigen bundle git-flow
antigen bundle zsh-users/zsh-completions
antigen bundle edouard-lopez/yeoman-zsh-plugin
# antigen bundle heroku
antigen bundle history
antigen bundle brew
antigen bundle zsh_reload
antigen bundle brew-cask
antigen bundle psprint/zsh-navigation-tools
# antigen bundle extract
# antigen bundle Tarrasch/zsh-bd
antigen bundle command-not-found
antigen bundle osx
antigen bundle npm
# antigen bundle web-search
antigen bundle last-working-dir
antigen bundle z
# antigen bundle jimhester/per-directory-history
# antigen bundle alexrochas/zsh-extract
antigen bundle alexrochas/zsh-git-semantic-commits
antigen bundle gerges/oh-my-zsh-jira-plus
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle unixorn/bitbucket-git-helpers.plugin.zsh
# antigen bundle voronkovich/mysql.plugin.zsh
# antigen bundle walesmd/caniuse.plugin.zsh

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-history-substring-search

# Load the theme.
# You probably will want to install powerline fonts https://github.com/powerline/fonts
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship

# Tell antigen that you're done.
antigen apply

# set common aliases
source "${HOME}/.aliases"

# set todo-txt config
source /usr/local/Cellar/todo-txt/2.11.0/etc/bash_completion.d/todo_completion complete -F _todo t
export TODOTXT_DEFAULT_ACTION=ls
alias t='/usr/local/Cellar/todo-txt/2.11.0/bin/todo.sh -d /Users/dev/.todo.cfg'

# set path
export PATH="${HOME}/.composer/vendor/bin:/usr/local/opt/go/libexec/bin:${HOME}/go/bin:/usr/local/bin:/usr/local/sbin:/usr/local/opt/openssl/bin:${HOME}/.node/bin:$PATH"

# other settings
COMPLETION_WAITING_DOTS="true"

# iterm integration
[ -f $HOME/.iterm2_shell_integration.zsh ] && source ${HOME}/.iterm2_shell_integration.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dev/repos/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/dev/repos/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dev/repos/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/dev/repos/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/node@10/bin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"
export GEM_HOME=/Users/dev/.gem
export PATH="$GEM_HOME/bin:$PATH"
eval "$(rbenv init -)"
export XDEBUG_CONFIG="idekey=VSCODE"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/php@7.2/bin:$PATH"
export PATH="/usr/local/opt/php@7.2/sbin:$PATH"
