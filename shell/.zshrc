# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/projects/dotfiles/shell/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

autoload -U compinit && compinit

# Noticed Linux vs MacOS handles this differently
if [[ "$(uname)" == "Darwin" ]]; then
    ZDIR=$HOME/.dotfiles/shell
elif [[ "$(uname)" == "Linux" ]]; then
    ZDIR=$HOME/.dotfiles
fi

source $ZDIR/zplug
source $ZDIR/exports
source $ZDIR/history

if [[ "$(uname)" == "Darwin" ]]; then
    source $ZDIR/work
elif [[ "$(uname)" == "Linux" ]]; then
    source $ZDIR/personal
fi

source $ZDIR/aliases
source $ZDIR/functions

# To customize prompt, run `p10k configure` or edit $ZDIR/.p10k.zsh.
[[ ! -f $ZDIR/.p10k.zsh ]] || source $ZDIR/.p10k.zsh
