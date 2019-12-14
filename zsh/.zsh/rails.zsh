function rails-new-api() {
    ~/.zsh/commands/rails-new-api $@
}

function rspec-watch() {
    find . -name "*.rb" | entr bundle exec rspec $@
}
