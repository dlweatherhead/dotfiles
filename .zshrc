# Additional .dotfiles used by this script are referenced to the .dotfiles directory
#  in order to keep a cleaner home directory.

skhd --start-service -c ~/.skhdrc

if [ -f ~/.dotfiles/.aliases ]; then
  source ~/.dotfiles/.aliases
fi

# List disk usage for directory
alias dud='du -d 1 -h'

# Find files or directories
(( $+commands[fd] )) || alias fd='find . -type d -name'
alias ff='find . -type f -name'

# Functions
function cs() { cd "$1" && ls; }
function mkcd() { mkdir "$1" && cd "$1"; }

function mksym() { 
  ln -s ./.dotfiles/"$1" "$1";
  echo "ln -s ./.dotfiles/\"$1\" \"$1\"" >> install.sh;
}

function gpsnew() { git push --set-upstream origin "$1"; }

# Load oh my posh with theme, but not for apple terminal
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.dotfiles/powerlevel10k_rainbow.omp.json)"
fi

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
