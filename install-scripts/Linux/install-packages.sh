log_file=~/install_progress_log.txt

sudo apt-get -y install zsh
if type -p zsh > /dev/null; then
    echo "zsh Installed" >> $log_file
else
    echo "zsh FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get install zsh-syntax-highlighting

sudo apt-get -y install vim-gtk3
if type -p vim > /dev/null; then
    echo "Vim Installed" >> $log_file
else
    echo "Vim FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install jq
if type -p jq > /dev/null; then
    echo "jq Installed" >> $log_file
else
    echo "jq FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install keepassx
if type -p keepassx > /dev/null; then
    echo "Keepassx Installed" >> $log_file
else
    echo "Keepassx FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install figlet
if type -p figlet > /dev/null; then
    echo "figlet Installed" >> $log_file
else
    echo "figlet FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install espeak
if type -p espeak > /dev/null; then
    echo "espeak Installed" >> $log_file
else
    echo "espeak FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install curl
if type -p curl > /dev/null; then
    echo "curl Installed" >> $log_file
else
    echo "crul FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install exuberant-ctags
if type -p ctags-exuberant > /dev/null; then
    echo "exuberant-ctags Installed" >> $log_file
else
    echo "exuberant-ctags FAILED TO INSTALL!!!" >> $log_file
fi

# ---
# Install git-completion and git-prompt
# ---
cd ~/
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
echo "git-completion and git-prompt Installed and Configured" >> $log_file

# ---
# Install node
# ---
cd ~/
git clone https://github.com/joyent/node
cd node
sudo ./configure --prefix=/usr/local
sudo make
sudo make install
cd ~/
sudo rm -r node # Remove the node folder in the home directory

# node it seems is installed as nodejs in Mint if that
# is the case we create a symlink to node
if [[ (! -f /usr/bin/node) && (-f /usr/bin/nodejs) ]]; then
    sudo ln -s /usr/bin/nodejs /usr/bin/node
fi

if type -p node > /dev/null; then
    echo -n "Node version: "; echo -n `node --version`; echo " Installed" >> $log_file
else
    echo "node FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install npm
if type -p npm > /dev/null; then
    echo "npm Installed" >> $log_file
else
    echo "npm FAILED TO INSTALL!!!" >> $log_file
fi

sudo npm install -g yarn
if type -p yarn > /dev/null; then
    echo "yarn Installed" >> $log_file
else
    echo "yarn FAILED TO INSTALL!!!" >> $log_file
fi

sudo npm install -g jshint
if type -p jshint > /dev/null; then
    echo "jshint Installed" >> $log_file
else
    echo "jshint FAILED TO INSTALL!!!" >> $log_file
fi

curl http://beyondgrep.com/ack-2.08-single-file > ~/ack && chmod 0755 !#:3
sudo mv ~/ack /usr/bin/ack
sudo chmod 755 /usr/bin/ack
if type -p ack > /dev/null; then
    echo "Ack Downloaded and Installed" >> $log_file
else
    echo "Ack FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get install silversearcher-ag
if type -p ag > /dev/null; then
    echo "Silver searcher Installed" >> $log_file
else
    echo "Silver searcher FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install python3-pip
if type -p pip > /dev/null; then
    echo "pip Installed" >> $log_file
else
    echo "pip FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install make \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    llvm \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    libffi-dev \
    liblzma-dev

rm -rf ~/.pyenv
curl https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
echo "pyenv Installed" >> $log_file

sudo apt-get -y install bpython
if type -p bpython > /dev/null; then
    echo "bpython Installed" >> $log_file
else
    echo "bpython FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install bpython3
if type -p bpython3 > /dev/null; then
    echo "bpython3 Installed" >> $log_file
else
    echo "bpython3 FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install conky
if type -p conky > /dev/null; then
    echo "conky Installed" >> $log_file
else
    echo "conky FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install tmux
if type -p tmux > /dev/null; then
    echo "tmux Installed" >> $log_file
else
    echo "tmux FAILED TO INSTALL!!!" >> $log_file
fi

sudo apt-get -y install python-dev

sudo pip install virtualenvwrapper
if pip freeze | grep virtualenvwrapper > /dev/null; then
    echo "virtualenvwrapper Installed" >> $log_file
else
    echo "virtualenvwrapper FAILED TO INSTALL!!!" >> $log_file
fi

sudo pip install jedi
if pip freeze | grep jedi > /dev/null; then
    echo "jedi Installed" >> $log_file
else
    echo "jedi FAILED TO INSTALL!!!" >> $log_file
fi

sudo pip install flake8
if pip freeze | grep flake8 > /dev/null; then
    echo "flake8 Installed" >> $log_file
else
    echo "flake8 FAILED TO INSTALL!!!" >> $log_file
fi

sudo pip install poetry==1.1.11
if pip freeze | grep poetry > /dev/null; then
    echo "poetry Installed" >> $log_file
else
    echo "poetry FAILED TO INSTALL!!!" >> $log_file
fi

curl -sfL https://direnv.net/install.sh | bash
if which direnv > /dev/null; then
    echo "direnv Installed" >> $log_file
else
    echo "direnv FAILED TO INSTALL!!!" >> $log_file
fi

#==============
# Give the user a summary of what has been installed
#==============
echo -e "\n====== Summary ======\n"
cat $log_file
rm $log_file
