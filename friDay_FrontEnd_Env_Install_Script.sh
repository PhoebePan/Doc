#!/bin/bash
# Program:
#	friDay Front-End Environment Install Shell-Script
# History:
# 2016/11/29	Gary	First release

#Variable Define
FAE_NODE_DEFAULT_VERSION="5.7.0"

echo "===Start FAE Environment Process===";

#Check which (Docker)
if ! type which > /dev/null 2>&1; then
	yum install which
fi

#Check bash_profile
if [ ! -f ~/.bash_profile ]; then
	touch ~/.bash_profile
fi

#Check NVM
if ! type nvm > /dev/null 2>&1;then
	echo -e "\nNow install NVM!!!";
	
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
	source ~/.bash_profile	
	nvm install 2.3.0
else
	echo -e "\nNVM exsited!";
	nvm --version
fi

#Check Node
if ! type node > /dev/null 2>&1; then
	echo -e "\nYou have not installed Node";
	nvm install $FAE_NODE_DEFAULT_VERSION
	nvm alias default $FAE_NODE_DEFAULT_VERSION
else
	echo -e "\nNode exsited!";
	node -v
fi

#Check NPM
if ! type npm > /dev/null 2>&1; then
	echo -e "\nYou have not installed NPM";
else
	echo -e "\nNPM exsited!";
	npm -v
fi

#Check rvm
# Notice: if process in docker and show GPG failed.
# use #command curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
# then try again
if ! type rvm > /dev/null 2>&1; then
	echo -e "\nYou have not installed RVM";
	\curl -L https://get.rvm.io | bash -s stable --ruby
	echo "source ~/.profile" >> ~/.bash_profile
	source ~/.bash_profile
else
	echo -e "\nRVM exsited!";
	source ~/.profile
	rvm -v
fi

#Check gem
if ! type gem > /dev/null 2>&1; then
	echo -e "\nYou have not installed Ruby";
else
	echo -e "\nGem exsited!";
	gem -v
fi

#Check Compass for sass convert
if ! type compass > /dev/null 2>&1; then
	echo "You have not installed Compass";
	gem update --system
	gem install compass
	sudo gem install -n /usr/local/bin compass
else
	echo -e "\nCompass exsited!";
	compass -v
fi

#Check Sass
if ! type sass > /dev/null 2>&1; then
	echo "You have not installed Sass";
	gem install sass
else
	echo -e "\nSass exsited!";
	sass -v
fi
