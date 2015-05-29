#!/bin/bash
 
#echo -n "Enter Git username: "
#read git_username
#echo -n "Enter Git user email: "
#read git_user_email
 
# Add repo for node.js
sudo add-apt-repository ppa:chris-lea/node.js

# Update and install available packages
sudo apt-get -y update
sudo apt-get install nodejs

# Install common utilized packages
sudo apt-get -y install nodejs libpq-dev libmagickwand-dev libqt4-dev libqtwebkit-dev
 
# Install RVM
#sudo apt-get -y install curl git
#rm -rf ~/.gnupg/
#curl -#LO https://rvm.io/mpapis.asc
#gpg --import mpapis.asc
#curl -sSL https://get.rvm.io | bash -s stable --ruby
#source /home/willjasen/.rvm/scripts/rvm
 
# Install latest version of Ruby using rvm
#rvm install 2.1.2
#rvm use 2.1.2
 
# Install rbenv
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
 
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
 
git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash
 
# Install Ruby from rbenv
rbenv install 2.2.2
rbenv global 2.2.2
ruby -v
 
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
gem install bundler
 
# Install Rails
gem install rails -v 4.2.1

# Needed for rbenv after Rails is installed
rbenv rehash
 
# Set gedit preferences
sudo apt-add-repository -y ppa:ubuntu-on-rails/ppa
sudo apt-get -y update
sudo apt-get -y install gedit-gmate gedit-plugins
gsettings set org.gnome.gedit.plugins active-plugins "['terminal', 'modelines', 'zeitgeistplugin', 'multiedit', 'docinfo', 'filebrowser', 'time', 'spell']"
gsettings set org.gnome.gedit.preferences.editor display-line-numbers true
gsettings set org.gnome.gedit.preferences.editor tabs-size 2
gsettings set org.gnome.gedit.preferences.editor insert-spaces true
gsettings set org.gnome.gedit.preferences.editor wrap-mode 'none'
gsettings set org.gnome.gedit.preferences.editor create-backup-copy false
gsettings set org.gnome.gedit.plugins.terminal background-color '#FFFFDD'
gsettings set org.gnome.gedit.plugins.terminal cursor-blink-mode 'system'
gsettings set org.gnome.gedit.plugins.terminal cursor-shape 'block'
gsettings set org.gnome.gedit.plugins.terminal font 'Monospace 10'
gsettings set org.gnome.gedit.plugins.terminal foreground-color '#000000'
gsettings set org.gnome.gedit.plugins.terminal scrollback-lines 100
gsettings set org.gnome.gedit.plugins.terminal scrollback-unlimited false
gsettings set org.gnome.gedit.plugins.terminal use-system-font true
gsettings set org.gnome.gedit.plugins.terminal use-theme-colors true
gsettings set org.gnome.gedit.plugins.terminal word-chars '-A-Za-z0-9,./?%&#:_'
gsettings set org.gnome.gedit.preferences.editor scheme 'railscastsblackimp'
gsettings set org.gnome.gedit.preferences.editor editor-font 'Liberation Mono 12'
gsettings set org.gnome.gedit.plugins.externaltools use-system-font true
gsettings set org.gnome.gedit.plugins.terminal audible-bell false
gsettings set org.gnome.gedit.plugins.terminal scroll-on-keystroke true
gsettings set org.gnome.gedit.plugins.terminal scroll-on-output false
#gsettings set org.gnome.gedit.plugins.terminal palette '#2E2E34343636:#CCCC00000000:#4E4E9A9A0606:#C4C4A0A00000:#34346565A4A4:#757550507B7B:#060698209A9A:#D3D3D7D7CFCF:#555557575353:#EFEF29292929:#8A8AE2E23434:#FCFCE9E94F4F:#72729F9FCFCF:#ADAD7F7FA8A8:#3434E2E2E2E2:#EEEEEEEEECEC'
 
# Configure git
# git config --global color.ui true
# git config --global user.name $git_username
# git config --global user.email $git_user_email

# Install Google Chrome
# sudo apt-get -y install libxss1
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# sudo dpkg -i google-chrome*.deb
# rm google-chrome*.deb
# sudo apt-get -f install
