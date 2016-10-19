#!/bin/bash
# Run with:
#   `curl https://raw.githubusercontent.com/CJTozer/env/master/linux/setup.sh | bash`
function append {
  curl https://raw.githubusercontent.com/CJTozer/env/master/$1 >> $2
}
function write {
  curl https://raw.githubusercontent.com/CJTozer/env/master/$1 > $2
}
function run {
  curl https://raw.githubusercontent.com/CJTozer/env/master//$1 | bash
}

# Git
write linux/git-completion.bash ~/git-completion.bash

# Bash
append linux/.bashrc ~/.bashrc
. ~/.bashrc

# zsh
write linux/.zshrc ~/.zshrc

# Install things
run linux/install.sh

# tmux
write linux/.tmux.conf ~/.tmux.conf
write linux/.tmux.statusline.conf ~/.tmux.statusline.conf

# VIM
append common/.vimrc ~/.vimrc

# Git
write common/.gitconfig ~/.gitconfig
