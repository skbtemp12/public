#!/bin/sh

# Automation of osintgram setup and installation

echo "\e[1;33m

	Hello $USER, Initiating your Automation...

      \e[0m" ;

cd ~ ;
git clone https://github.com/Datalux/Osintgram.git ;
mv Osintgram .Osintgram ;
cd ~/.Osintgram ;

echo "\e[1;33m

	Dear $USER, Please Enter Your Sudo Password.

      \e[0m" ;

sudo apt install python3 python3-pip libncurses5-dev -y ;
pip3 install -r requirements.txt ;

# Setup credentials

cd ~/.Osintgram/config ;

# Input prompt

echo "\e[1;33m



	To continue please Connect with Instagram


 
     \e[0m";

read -p "Enter UserName :" User ;
read -p "Enter PassWord :" Passwd ;

echo "[Credentials]
username = $User 
password = $Passwd" > credentials.ini ;

# Making Osintgram Script

cd ~/.Osintgram ;
touch osintgram ;
chmod +x osintgram ;

echo "

#!/bin/bash

cd ~/.Osintgram ;

# Input prompt

read -p ' Enter target Instagram UserID or UserName : ' TARGET
python3 main.py $\TARGET ;

exit

     " > osintgram ;

# Setting up one click osintgram 

sudo cp osintgram /usr/bin ;
osintgram ;

exit
