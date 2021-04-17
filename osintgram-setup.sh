#!/bin/sh

# Automation of osintgram setup and installation

echo "\e[1;33m

	Hello $USER, Initiating your Automation...

      \e[0m" ;

# Installing Essential packages

echo "\e[1;33m

	Dear $USER, Please Enter Your Sudo Password.

      \e[0m" ;
cd ~ ;
sudo apt install wget git python3 python3-pip libncurses5-dev -y ;

# Old Osintgram Backup

cp Osintgram Old_Osintgram ;
cp .Osintgram Old_Osintgram_Hidden ;
rm -rf Osintgram .Osintgram ;

echo "\e[1;33m

	Dear $USER, Old Osintgram is Backed Up in Home Folder.

      \e[0m" ;

echo "Old Osintgram files is Backed up if it was Installed Before "
read -p "Do you want to Delete the Backup files ? [ type yes or no ] : " ANSWER
if [ $ANSWER = "yes" ];
then
	rm -rf Old_Osintgram Old_Osintgram_Hidden
fi ;
echo ""

# Cloning and Later

git clone https://github.com/Datalux/Osintgram.git ;
mv Osintgram .Osintgram ;
cd ~/.Osintgram ;
pip3 install -r requirements.txt ;

# Setup credentials

cd ~/.Osintgram/config ;

# Input prompt

echo "\e[1;33m



	To continue please setup Instagram Credentials


 
     \e[0m";

read -p "Enter UserName :" User ;
read -p "Enter PassWord :" Passwd ;

echo "[Credentials]
username = $User 
password = $Passwd" > credentials.ini ;

# Making Osintgram Script

cd ~/.Osintgram ;
wget https://raw.githubusercontent.com/skbtemp12/shell/main/osintgram ;
chmod +x osintgram ;

# Setting up one click osintgram 

sudo mv osintgram /usr/bin ;
osintgram ;

exit
