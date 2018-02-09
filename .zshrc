# Path to your oh-my-zsh installation.
export ZSH=/home/greg/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="tonotdo"

plugins=(git)

source $ZSH/oh-my-zsh.sh

for DOTFILE in `find /home/greg/.dotfiles -maxdepth 2`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
