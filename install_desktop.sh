sudo apt-get update
sudo apt-get install curl
curl ftp://ftp.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
echo "deb ftp://ftp.videolan.org/pub/debian/stable ./" | sudo tee /etc/apt/sources.list.d/libdvdcss.list
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install vlc vlc-data browser-plugin-vlc mplayer2
sudo apt-get install vlc-plugin-pulse
sudo apt-get install google-chrome-stable
sudo apt-get install git emacs htop aptitude gimp vlc gimp-plugin-registry ipython libopencv-dev python-opencv python-opencv-apps  libav-tools byobu pyflakes imagemagick  flake8 python-autopep8  python3-autopep8  python-pyflakes python3-pyflakes python-jedi python3-jedi python-virtualenv python3-virtualenv virtualenv virtualenvwrapper kicad inkscape python3-pip

sudo pip3 install jupyter matplotlib
sudo apt-get install python3-setuptools
sudo apt update
sudo apt install peek
sudo apt-get install ubuntu-restricted-extras
alias ls="ls -flah"
git config --global user.email "katherineAScott@gmail.com"
git config --global user.name "kscottz"
cp ./dot_emacs_1204.txt ~/.emacs
sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt install peek
