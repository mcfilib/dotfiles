# make homebrew packages toplevel
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kphoen"
plugins=(git git-extras git-flow)

# oh-my-zsh settings.
source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt correct

# set the default shell to homebrew zsh.
export SHELL="/usr/local/bin/zsh"

# set default editor to emacs client or fall back to nano.
export EDITOR="emacsclient"

# gpg
export GPG_TTY=$(tty)