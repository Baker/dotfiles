# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/projects/dotfiles/shell/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U compinit && compinit

ZDIR=$HOME/.dotfiles

source $ZDIR/zplug
source $ZDIR/exports
source $ZDIR/history
source $ZDIR/work
source $ZDIR/aliases
source $ZDIR/functions

# To customize prompt, run `p10k configure` or edit $ZDIR/.p10k.zsh.
[[ ! -f $ZDIR/.p10k.zsh ]] || source $ZDIR/.p10k.zsh
