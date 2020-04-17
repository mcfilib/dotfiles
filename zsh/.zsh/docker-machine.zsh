# https://gitlab.com/snippets/1727144

alias dm="docker-machine"

# dms: Start docker-machine if necessary
function dms() {
    if [[ $(dm status default) == "Running" ]]; then
        echo "default running"
    else
        dm start default
        dm regenerate-certs -f default
        eval "$(dm env default)"
    fi
    rm -f "${HOME}/.dm-running"
    dm env default > "${HOME}/.dm-running"
    . "${HOME}/.dm-running"
}

# dmk: Kill docker-machine if necessary
function dmk() {
    if [[ $(dm status default) == "Running" ]]; then
        dm stop default
    else
        echo "default already stopped"
    fi
    rm -f "${HOME}/.dm-running"
}

# If docker-machine is running, initialize dm env variables
if [[ -a "${HOME}/.dm-running" ]]; then
    . "${HOME}/.dm-running"
fi
