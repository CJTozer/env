#/bin/bash
# Run with:
#   `curl https://raw.githubusercontent.com/CJTozer/env/master/linux/install.sh | bash`
if [ `command -v yum` ]
then
  installer=yum
elif [ `command -v apt-get` ]
then
  installer=apt-get
else
  echo "No yum or apt-get; giving up"
  #exit 1
fi

# Decide whether to sudo
sudo=sudo
if [ `whoami` = "root" ]
then
  sudo=
fi

function prepare {
  $sudo $installer -y update
  $sudo $installer -y upgrade
}
function install {
  $sudo $installer -y install $1
}

prepare

install vim
install tmux
install git
install python-pip
install zsh

# Install python packages
$sudo pip install -r pip_requirements.txt

# Install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
