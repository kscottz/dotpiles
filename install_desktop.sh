wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable
sudo apt-get install git emacs htop aptitude gimp vlc gimp-plugin-registry ipython python2.7 libopencv-dev python-opencv python-opencv-apps python2.7-opencv python2.7-numpy python2.7-sklearn-lib