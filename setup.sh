 wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
 sudo dpkg -i google-chrome-stable_current_amd64.deb
 sudo apt install git 
 sudo apt-get install openssh-server
 eval "$(ssh-agent -s)"
 sudo chmod 700 ~/.ssh/
 sudo chmod 600 ~/.ssh/id_rsa
 sudo chmod 600 ~/.ssh/id_rsa.pub 
 ssh-add ~/.ssh/id_rsa
 git clone git@github.com:kscottz/dotpiles.git
 git config --global user.email "katherineAScott@gmail.com"
 git  config --global user.name "kscottz"
