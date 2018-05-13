#!/usr/bin/bash
sudo apt -y install git-core openssh-server shutter pv vim vlc \
curl filezilla google-chrome-stable skype sni-qt sni-qt \
libasound2-plugins openjdk-8-jre icedtea-8-plugin \
openjdk-8-jdk diodon diodon-plugins ubuntu-restricted-extras \
p7zip-full p7zip-rar opera nautilus-open-terminal nodejs libcurl4-gnutls-dev \
libruby libxml2 libxml2-dev libxslt1-dev ruby-dev ruby-sass rubygems ruby1.9.1 || OwnError "Something is missing :("
