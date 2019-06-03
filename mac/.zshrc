# bat
export BAT_THEME="TwoDark"

# zsh parameter completion for the dotnet CLI

_dotnet_zsh_complete() 
{
  local completions=("$(dotnet complete "$words")")

  reply=( "${(ps:\n:)completions}" )
}

compctl -K _dotnet_zsh_complete dotnet

# dotnet tools, python
export PATH="$HOME/Library/Python/3.7/bin:$PATH:$HOME/.dotnet/tools"

# Path to your oh-my-zsh installation.
export ZSH=/Users/yoyoys/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=powerlevel10k/powerlevel10k

# yoyo's POWERLEVEL9k CONFIG
POWERLEVEL9K_CONTEXT_TEMPLATE="`hostname -f`"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uF113 ' # 
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh os_icon_joined context_joined dir dir_writable vcs)
else
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user_joined dir dir_writable vcs)
fi
POWERLEVEL9K_OS_ICON_FOREGROUND=003

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history command_execution_time ram time)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_STRATEGY=truncate_to_first_and_last

plugins=(
  git
  zsh-nvm
)

source $ZSH/oh-my-zsh.sh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias preview="fzf --preview 'bat --color \"always\" {}'"

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"

