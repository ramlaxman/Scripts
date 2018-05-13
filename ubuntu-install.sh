#!/bin/bash


#Error Handling
OwnError()
{
    # Redirect All STDIN 2 STDOUT
    echo "$@" >&2
    exit 1
}


# Unhide Startup
sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop

#Update The Cache
clear
echo "Updating Cache..."
sudo apt update && sudo	apt list --upgradable || OwnError "Updating Cache Failed :("  #for bioic bever

# Install Apt-Add-Repository Python Tool
sudo apt install software-properties-common || OwnError "Unable To Install Python Software Properties :(" 

#Google Repository 
clear
echo "Install Repository For Google..."
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - || OwnError "Unable To Fetch Google Repository  :("
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list' || OwnError "Unable To Add Google Repository  :("

#Opera Repository 
clear
echo "Install Repository For Opera..."
sudo sh -c 'echo "deb http://deb.opera.com/opera/ stable non-free" >> /etc/apt/sources.list.d/opera.list' || OwnError "Unable To Fetch Opera Repository  :("
sudo sh -c 'wget -O - http://deb.opera.com/archive.key | apt-key add -'

#Skype Repository 
clear
echo "Install Repository For Skype..."
sudo sh -c  'echo "deb http://archive.canonical.com/ubuntu/ $(lsb_release -sc) partner" >> /etc/apt/sources.list.d/canonical_partner.list' || OwnError "Unable To Add Skype Repository  :("

#NodeJs Repository
clear
echo "Install Repository For NodeJs..."
sudo add-apt-repository -y ppa:chris-lea/node.js || OwnError "Unable To NodeJs Repository  :("

#Shutter Repository
clear
echo "Install Repository For Shutter..."
sudo add-apt-repository -y ppa:shutter/ppa || OwnError "Unable To Add Shutter Repository  :("

#Update The Cache
clear
echo "Updating Cache..."
sudo apt update || OwnError "Updating Cache Failed :("


#Install Common Softwares
clear
echo "Installing Git Vim Filezilla Google-Chrome Skype Oracle-Jdk Opera"
sudo apt -y install git-core openssh-server shutter pv vim vlc \
<<<<<<< HEAD
curl filezilla google-chrome-stable skype sni-qt sni-qt \
libasound2-plugins openjdk-8-jre icedtea-8-plugin \
openjdk-8-jdk diodon diodon-plugins ubuntu-restricted-extras \
=======
curl filezilla google-chrome-stable skype sni-qt sni-qt:x86_64 \
libasound2-plugins:i386 openjdk-7-jre icedtea-7-plugin \
openjdk-7-jdk diodon diodon-plugins ubuntu-restricted-extras \
>>>>>>> 642a7d4a46676bb20226d460bc88b2629467d1e2
p7zip-full p7zip-rar opera nautilus-open-terminal nodejs libcurl4-gnutls-dev \
libxml2 libxml2-dev libxslt1-dev ruby-dev ruby-sass rubygems ruby libruby || OwnError "Installation Failed :("

#Install SASS
clear
echo "Install SASS"
sudo gem install sass

#Install Compass
clear
echo "Install Compass"
sudo gem install compass

#Install Foundation
clear
echo "Install Foundation"
sudo gem install foundation

#Install SASS
clear
echo "Install Zurb Foundation"
sudo gem install zurb-foundation

#Install Grunt CLI
clear
echo "Install Grunt"
sudo npm install -g grunt-cli

#Install Bower
clear
echo "Install Bower"
sudo npm install -g bower

#Install Netbeans
clear
echo "Downloading Netbeans..."
read -p "Enter latest version of Netbeans:"
wget -c http://download.netbeans.org/netbeans/$late_ver/final/bundles/netbeans-$late_ver-php-linux-x64.sh || OwnError "Network connectivity problem :("
chmod u+x netbeans-$late_ver-php-linux-x64.sh
echo "Installing Netbeans..."
sudo bash netbeans-$late_ver-php-linux.sh || OwnError "Unable to install Netbeans :("
clear


#Install Web Server
wget -qO ee rt.cx/ee && sudo bash ee || OwnError "Unable to clone ee :("
source /etc/bash_completion.d/ee || OwnError "Unable to source ee autocompletion :("
echo
echo "All Task Susscessfully Finished........"
