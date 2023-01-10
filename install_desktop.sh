
sudo apt-get update
sudo apt-get install curl
curl ftp://ftp.videolan.org/pub/debian/videolan-apt.asc | sudo apt-key add -
echo "deb ftp://ftp.videolan.org/pub/debian/stable ./" | sudo tee /etc/apt/sources.list.d/libdvdcss.list
sudo apt-get install vlc vlc-data browser-plugin-vlc mplayer2
sudo apt-get install vlc-plugin-pulse
sudo apt-get install git emacs htop aptitude gimp vlc gimp-plugin-registry
sudo apt install pip 
sudo pip install --upgrade youtube_dl
sudo apt install ipython libopencv-dev python-opencv python-opencv-apps  libav-tools byobu pyflakes imagemagick  flake8 python-autopep8  python3-autopep8  python-pyflakes python3-pyflakes python-jedi python3-jedi python-virtualenv python3-virtualenv virtualenv virtualenvwrapper  inkscape python3-pip
sudo pip3 install jupyter matplotlib
sudo apt-get install python3-setuptools
sudo apt install peek
sudo apt-get install ubuntu-restricted-extras
git config --global user.email "katherineAScott@gmail.com"
git config --global user.name "kscottz"
alias ls="ls -flah"
cp ./dot_emacs_2204.txt ~/.emacs
sudo add-apt-repository ppa:peek-developers/stable
sudo apt update
sudo apt install peek
