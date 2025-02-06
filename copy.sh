#!/bin/sh


rm -rf ~/.config/dotfiles/zsh/
rm -rf ~/.config/dotfiles/lvim/
rm -rf ~/.config/dotfiles/neofetch/
rm -rf ~/.config/dotfiles/tmux/
rm -rf ~/.config/dotfiles/tex/
rm -rf ~/.config/dotfiles/gdbplugins/

cp -r ~/.config/zsh ./zsh/
cp -r ~/.config/lvim ./lvim/
cp -r ~/.config/neofetch ./neofetch/
cp -r ~/.config/tmux ./tmux
cp -r ~/.config/tex ./tex
cp -r ~/.config/gdbplugins/ ./gdbplugins
