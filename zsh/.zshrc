
# If you come from bash you might have to change your $PATH.
source ~/.profile

# Path to your oh-my-zsh installation.
export ZSH="/Users/sakthivel/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME="dracula"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm-dd-yyyy"
HIST_IGNORE_DUPS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git autojump fzf zsh-syntax-highlighting)

# zplug "dracula/zsh", as:theme 
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


# Example aliases
# alias zshconfig="vi ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
eval "$(thefuck --alias)"

test -e /Users/sakthivel/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && source /Users/sakthivel/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh || true
test -e /Users/sakthivel/.iterm2_shell_integration.zsh && source /Users/sakthivel/.iterm2_shell_integration.zsh || true
test -e /Users/sakthivel/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh && source /Users/sakthivel/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh || true
# test -e /Users/sakthivel/.zplug/init.zsh && source /Users/sakthivel/.zplug/init.zsh || true

# alias
alias go=richgo
alias talisman=$TALISMAN_HOME/talisman_darwin_amd64

alias talisman=$TALISMAN_HOME/talisman_darwin_amd64
alias talisman=$TALISMAN_HOME/talisman_darwin_amd64

alias baby=sudo
alias please=sudo
alias idea='open -b com.jetbrains.intellij'
alias su='su -'
alias sandbox='vi ~/data/sandbox.txt'
alias k=kubectl
alias gcx="git checkout \$(git branch -a | sed -E 's/remotes\/([a-zA-Z-]\/)//' | rg -v '\|HEAD' | sort |uniq | fzf --select-1)"

alias zshrc="source ~/.zshrc"