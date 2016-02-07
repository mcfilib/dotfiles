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

# set the default shell to homebrew zsh.
export SHELL="/usr/local/bin/zsh"

# set default editor to emacs client or fall back to nano.
export EDITOR="emacsclient"

# checks to see if emacs daemon is currently running.
function emacs_daemon_running() {
    ps aux | grep -i "[e]macs --daemon" > /dev/null
}

# if emacs daemon isn't running, start it up!
if ! emacs_daemon_running; then
    echo "starting emacs daemon..."
    emacs --daemon > /dev/null 2>&1;
fi