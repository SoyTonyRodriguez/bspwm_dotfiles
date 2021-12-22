export _JAVA_AWT_WM_NONREPARENTING=1

export VISUAL=nvim;
export EDITOR=nvim;

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Manual configuration
# PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/antonio/.local/bin:psql
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

#The most important, for keybindings Ctrl-A, Ctrl-E
bindkey -e

#Alias
alias la='lsd -a --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias cat='/usr/bin/bat --paging=never'
alias grep='grep --color'

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh        old ubication

[ -f ~/.zsh/fzf_files/.fzf.zsh ] && source ~/.zsh/fzf_files/.fzf.zsh

#Manual plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-sudo/sudo.plugin.zsh
source $HOME/.zsh/bd/bd.zsh # use bd for jump back to the previous directory without tipping cd ../..

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit

# Codi
# Usage: codi [filetype] [filename]
codi() {
  local syntax="${1:-python}"
  shift
  vim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
  }



# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)   # Include hidden files.

# # vi mode
# bindkey -v
# export KEYTIMEOUT=1

   # Use vim keys in tab complete menu:
   bindkey -M menuselect 'h' vi-backward-char
   bindkey -M menuselect 'k' vi-up-line-or-history
   bindkey -M menuselect 'l' vi-forward-char
   bindkey -M menuselect 'j' vi-down-line-or-history
   # bindkey -v '^?' backward-delete-char
 
# USSAR Ctrl y flechas de direccion
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi



# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}
