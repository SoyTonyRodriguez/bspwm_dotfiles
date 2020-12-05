export _JAVA_AWT_WM_NONREPARENTING=1

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Manual configuration
PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

#Alias
alias la='lsd -a --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='/usr/bin/bat --paging=never'

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
  
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Manual plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-sudo/sudo.plugin.zsh

# Load Git completion
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
