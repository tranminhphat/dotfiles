set fish_greeting ""
set NVM_DIR "$HOME/.nvm"
nvm use stable
# eval (/opt/homebrew/bin/brew shellenv)
eval (/usr/local/bin/brew shellenv)
fish_vi_key_bindings

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end
base16-gruvbox-dark-hard

# Alias
alias c='clear'
alias gsync="git checkout $argv && git fetch upstream && git rebase upstream/$argv && git push"
alias glog='git log --graph --oneline --decorate --all'
alias vi='nvim'
