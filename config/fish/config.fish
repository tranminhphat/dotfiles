set fish_greeting ""
set NVM_DIR "$HOME/.nvm"
nvm use stable
# eval (/opt/homebrew/bin/brew shellenv)
eval (/usr/local/bin/brew shellenv)
fish_vi_key_bindings

# Alias
alias c='clear'
alias g='git'
alias vi='nvim'
alias gst='git status'
alias gad='git add .'
alias gp= 'git push'

# Git
function glog
  git log --graph --oneline --decorate --all
end

function gsync
  git checkout $argv && git fetch upstream && git rebase upstream/$argv && git push
end

function gcm
  git commit -m $argv
end

