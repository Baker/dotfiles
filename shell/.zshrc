export VIRTUALENVWRAPPER_PYTHON=$(which python3)

# Path to your dotfiles
export DOTFILES=$(pwd)/shell

source $DOTFILES/zplug
source $DOTFILES/work
source $DOTFILES/aliases
source $DOTFILES/functions
source $DOTFILES/exports

# To customize prompt, run `p10k configure` or edit $DOTFILES/.p10k.zsh.
[[ ! -f $DOTFILES/.p10k.zsh ]] || source $DOTFILES/.p10k.zsh
