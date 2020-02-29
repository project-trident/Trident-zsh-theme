
#########################################
#########################################

# install antigen
echo ~~Installing Antigen~~
curl -L git.io/antigen > antigen.zsh
if [ $? -eq 0 ]; then
    echo Antigen ZSH Script downloaded
else
    echo Antigen Script download failed
    exit 1
fi

#########################################
#########################################

# install alien
echo ~~Installing Alien Theme~~
git clone https://github.com/eendroroy/alien.git
cd alien
git submodule update --init --recursive
if [ $? -eq 0 ]; then
    echo Alien Theme cloned successfully
else
    echo Alien Theme clone Failed
    exit 1
fi

#########################################
#########################################

# download and install submodules
~Installing Required SubModules~~
# instal promptlib
git clone https://github.com/eendroroy/promptlib-zsh.git ~/alien/libs/promptlib
if [ $? -eq 0 ]; then
    echo promptlib clone successful
else
    echo promptlib clone failed
    exit 1
fi

# instal zsh-alien
git clone https://github.com/mafredri/zsh-async.git ~/alien/libs/zsh-async
if [ $? -eq 0 ]; then
    echo zsh-async clone successful
else
    echo zsh-async clone failed
    exit 1
fi

# instal zsh-256-color
git clone https://github.com/chrissicool/zsh-256color.git ~/alien/libs/zsh-256color
if [ $? -eq 0 ]; then
    echo zsh-256color clone successful
else
    echo zsh-256color clone failed
    exit 1
fi


#########################################
#########################################

# copy down primary ZSH config file
echo ~~Downloading Main ZSH Script~~
curl -L https://raw.githubusercontent.com/project-trident/trident-zsh-theme/master/.zshrc > ~/.zshrc

if [ $? -eq 0 ]; then
    echo Main ZSH Script downloaded
else
    echo Main ZSH Script download failed
    exit 1
fi

#########################################
#########################################

echo The Trident ZSH Theme is not installed, please restart your terminal to finalize the ZSH init scripts.
echo If have any issues, please report them here: https://github.com/project-trident/trident-zsh-theme/issues
