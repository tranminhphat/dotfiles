set fish_greeting ""
set NVM_DIR "$HOME/.nvm"
nvm use stable
eval (/opt/homebrew/bin/brew shellenv)
fish_vi_key_bindings

# Alias
alias c='clear'
alias gsync="git checkout master && git fetch upstream && git rebase upstream/master && git push"
alias glog='git log --graph --oneline --decorate --all'

