# # # # # # # # # # # # # # # # # # #
#                                   #
# shell settings and configuration  #
#                                   #
# # # # # # # # # # # # # # # # # # #

# make homebrew packages toplevel
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="kphoen"
plugins=(brew gem git git-extras git-flow tmuxinator)

# oh-my-zsh settings.
source $ZSH/oh-my-zsh.sh
unsetopt correct_all
unsetopt correct

# remove dupes and have a long command history.
export HISTCONTROL=erasedups
export HISTSIZE=1000000

# set the default shell to homebrew zsh.
export SHELL="/usr/local/bin/zsh"

# # # # # # # # # # # # # # # # # # #
#                                   #
#       productivity aliases        #
#                                   #
# # # # # # # # # # # # # # # # # # #

# i prefer this ls.
alias ls="ls -la"

# upgrade all brew packages.
alias bup="brew update; brew upgrade `brew outdated`; brew cleanup"

# upgrade oh-my-zsh.
alias zup="upgrade_oh_my_zsh"

# create new tmux session.
alias tm="tmux new-session -s"

# attach existing tmux session.
alias ta="tmux attach"

# # # # # # # # # # # # # # # # # # #
#                                   #
# irssi settings and configuration  #
#                                   #
# # # # # # # # # # # # # # # # # # #

# always run irssi inside screen (convenient for nicklist.pl).
alias irc="irssi"

# without this, i was getting redraw issues.
alias irssi="TERM=screen-256color irssi"

# # # # # # # # # # # # # # # # # # #
#                                   #
# emacs settings and configuration  #
#                                   #
# # # # # # # # # # # # # # # # # # #

# set default editor to emacs client or fall back to nano.
export EDITOR="emacsclient"

alias e="emacs -nw"
alias ec="emacsclient -t -a nano"
alias red="pgrep -i emacs | xargs kill; emacs --daemon > /dev/null 2>&1;"

# checks to see if emacs daemon is currently running.
function emacs_daemon_running() {
    ps aux | grep -i "[e]macs --daemon" > /dev/null
}

# if emacs daemon isn't running, start it up!
if ! emacs_daemon_running; then
    echo "starting emacs daemon..."
    emacs --daemon > /dev/null 2>&1;
fi

# # # # # # # # # # # # # # # # # # #
#                                   #
#             haskell               #
#                                   #
# # # # # # # # # # # # # # # # # # #

# Add cabal bin to PATH.
export PATH="$HOME/.cabal/bin:$PATH"

# Add stack bin to PATH.
export PATH="$HOME/.local/bin:$PATH"

# # # # # # # # # # # # # # # # # # #
#                                   #
#              rbenv                #
#                                   #
# # # # # # # # # # # # # # # # # # #

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias be="bundle exec"

# # # # # # # # # # # # # # # # # # #
#                                   #
#             docker                #
#                                   #
# # # # # # # # # # # # # # # # # # #

eval "$(docker-machine env default)"
