
## zshrc - filipili dotfiles 
#Needs Antigen to work
source /usr/share/zsh-antigen/antigen.zsh

##VirtualEnv
#sudo apt-get install python-virtualenv virtualenvwrapper

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

antigen bundle zsh-users/zsh-syntax-highlighting

antigen use oh-my-zsh
antigen bundle git
#antigen bundle virtualenv
antigen theme agnoster

antigen apply
