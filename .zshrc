autoload -Uz compinit
compinit
setopt PROMPT_SUBST
if [ -f ~/.local/shrink-path.plugin.zsh ]; then
	source ~/.local/shrink-path.plugin.zsh
fi
PS1='%F{red}$(shrink_path -f) %F{red}❯%F{green}❯%F{blue}❯%f%b '
#load aliases
[ -f "$HOME/bin/shrc" ] && source "$HOME/bin/shrc"
