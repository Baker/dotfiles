# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/projects/dotfiles/shell/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U compinit && compinit

# Path to your dotfiles
export DOTFILES=$(pwd)/shell

source $DOTFILES/zplug
source $DOTFILES/history
source $DOTFILES/work
source $DOTFILES/aliases
source $DOTFILES/functions
source $DOTFILES/exports

# To customize prompt, run `p10k configure` or edit $DOTFILES/.p10k.zsh.
[[ ! -f $DOTFILES/.p10k.zsh ]] || source $DOTFILES/.p10k.zsh
