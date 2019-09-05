
#########################################
#########################################

# The following script will download and install the following repos onto a Project Trident Install:
# https://github.com/project-trident/oh-my-zsh
# https://github.com/project-trident/fonts
# https://github.com/project-trident/antigen
# https://github.com/project-trident/alien
# https://github.com/project-trident/promptlib-zsh
# https://github.com/project-trident/zsh-256color

#########################################
#########################################

# Install Powerline fonts
echo  ~~Installing Powerline Fonts~~
# clone repo
git clone https://github.com/project-trident/fonts.git --depth=1
if [ $? -eq 0 ]; then
    echo Powerline Fonts clone successful
else
    echo Powerline Fonts clone failed
    exit 1
fi
# install fonts
cd fonts
if [ $? -eq 0 ]; then
    echo Fonts Installed
else
    echo Install Failed
    exit 1
fi
# clean-up a bit
cd ..
rm -rf fonts
# update the font cache
fc-cache -vf
if [ $? -eq 0 ]; then
    echo Font Cache Updated
else
    echo Font Cache Not Updated
    exit 1
fi

#########################################
#########################################

# install ohmyzsh
echo ~~Installing Oh-My-ZSH~~
sh -c "$(curl -fsSL https://raw.githubusercontent.com/project-trident/oh-my-zsh/master/tools/install.sh)"
if [ $? -eq 0 ]; then
    echo OhMyZSH Installed
else
    echo OhMyZSH Install Failed
    exit 1
fi

# install antigen
echo ~~Installing Antigen~~
# git clone https://github.com/zsh-users/antigen ~/.zsh/antigen
curl -L https://raw.githubusercontent.com/project-trident/antigen/master/bin/antigen.zsh > ~/.zsh/antigen.zsh
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
git clone https://github.com/eendroroy/alien ~/.zsh/alien/
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
git clone https://github.com/eendroroy/promptlib-zsh.git ~/.zsh/alien/libs/promptlib
if [ $? -eq 0 ]; then
    echo promptlib clone successful
else
    echo promptlib clone failed
    exit 1
fi

# instal zsh-alien
git clone https://github.com/mafredri/zsh-async.git ~/.zsh/alien/libs/zsh-async
if [ $? -eq 0 ]; then
    echo zsh-async clone successful
else
    echo zsh-async clone failed
    exit 1
fi

# instal zsh-256-color
git clone https://github.com/chrissicool/zsh-256color.git ~/.zsh/alien/libs/zsh-256color
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

