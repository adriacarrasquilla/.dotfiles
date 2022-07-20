# If you come from bash you might have to change your /home/carrasq/.local/bin:/home/carrasq/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/var/lib/snapd/snap/bin.
# export PATH=/home/carrasq/bin:/usr/local/bin:/home/carrasq/.local/bin:/home/carrasq/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/var/lib/snapd/snap/bin

# Antigen
source /home/carrasq/Projects/antigen.zsh
antigen use oh-my-zsh

antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle zsh-vim-mode
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle agkozak/zsh-z

antigen theme robbyrussell

antigen apply

export ZSH=/home/carrasq/.oh-my-zsh
export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME=robbyrussell

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE=true

plugins=(git)

source /home/carrasq/.oh-my-zsh/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'


alias vim='nvim'
alias conf='cd $HOME/.config/'
alias python='python3'
alias ll='exa --long --header --git'
alias la='exa --long --all --header --git'
alias gs='git status'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
