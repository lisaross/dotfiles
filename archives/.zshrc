# Actually my work zshel without dependecy management and with oh-my-zsh.
# # TODO remove oh-my-zsh.

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle git-flow
antigen bundle zsh-users/zsh-completions
antigen bundle heroku
antigen bundle history
antigen bundle brew
antigen bundle brew-cask
antigen bundle psprint/zsh-navigation-tools
antigen bundle extract
antigen bundle Tarrasch/zsh-bd
antigen bundle edouard-lopez/yeoman-zsh-plugin
antigen bundle command-not-found
antigen bundle brew-cask
antigen bundle osx
antigen bundle npm
antigen bundle web-search
antigen bundle last-working-dir
antigen bundle z
antigen bundle thefuck
antigen bundle jimhester/per-directory-history
antigen bundle alexrochas/zsh-extract
antigen bundle alexrochas/zsh-git-semantic-commits
antigen bundle gerges/oh-my-zsh-jira-plus
antigen bundle lukechilds/zsh-better-npm-completion
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle unixorn/bitbucket-git-helpers.plugin.zsh
antigen bundle voronkovich/mysql.plugin.zsh
antigen bundle walesmd/caniuse.plugin.zsh

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

# set path
export PATH="/usr/local/opt/go/libexec/bin:/Users/broad/go/bin:/usr/local/bin:/usr/local/sbin:~/code/phpcs/bin:/usr/local/opt/openssl/bin:$PATH"

# other settings
COMPLETION_WAITING_DOTS="true"

# iterm integration
[ -f $HOME/.iterm2_shell_integration.zsh ] && source ${HOME}/.iterm2_shell_integration.zsh
