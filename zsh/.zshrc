# Antigen
source $HOME/Projects/antigen.zsh
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

export ZSH=$HOME/.oh-my-zsh
export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME=robbyrussell

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE=true

plugins=(git)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim'


alias vim='nvim'
alias v='nvim'
alias conf='cd $HOME/.config/'
alias python='python3'
alias ll='exa --long --header --git'
alias la='exa --long --all --header --git'
alias gs='git status'
alias gc='git commit'
alias o='xdg-open'

source /usr/share/nvm/init-nvm.sh

export PATH=$PATH:~/.config/rofi/scripts
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/.local/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/adri/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/adri/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/adri/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/adri/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<
