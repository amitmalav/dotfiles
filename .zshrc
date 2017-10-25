autoload -Uz compinit
compinit
setopt PROMPT_SUBST
if [ -f ~/.local/shrink-path.plugin.zsh ]; then
	source ~/.local/shrink-path.plugin.zsh
fi
PS1='%F{red}$(shrink_path -f) %F{red}❯%F{green}❯%F{blue}❯%f%b '
#History
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=~/.zsh_history
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing non-existent history.
#source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

#load aliases
[ -f "$HOME/bin/shrc" ] && source "$HOME/bin/shrc" 
# source local file
[ ! -f "$HOME/.shrc.local" ] || source "$HOME/.shrc.local"

export NVM_DIR="/Users/i341345/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
