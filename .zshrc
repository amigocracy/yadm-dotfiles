##GNUPG - yubikey etc
export SSH_AUTH_SOCK=~/.gnupg/S.gpg-agent.ssh
if [ ! -f /tmp/gpg-agent.env ]; then
    killall gpg-agent;
    eval $(gpg-agent --daemon --enable-ssh-support > /tmp/gpg-agent.env);
fi
. /tmp/gpg-agent.env

## zshrc -amigocracy dotfiles 
#Needs Antigen to work
#sudo apt-get install zsh-antigen
source /usr/share/zsh-antigen/antigen.zsh

##VirtualEnv
#sudo apt-get install python-virtualenv virtualenvwrapper

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
#source /usr/local/bin/virtualenvwrapper.sh

#MAN Page based autocomplete
#source .zsh-autocomplete.zsh

antigen bundle zsh-users/zsh-syntax-highlighting

antigen use oh-my-zsh
antigen bundle git
antigen bundle virtualenv
antigen theme agnoster

antigen apply
