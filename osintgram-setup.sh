#!/bin/bash

# Automation of osintgram setup and installation

cd ~ ;
git clone www.github.com/Datalux/Osintgram.git ;
mv Osintgram .Osintgram ;
cd ~/.Osintgram ;
sudo apt install python3 python3-pip -y ;
pip3 install -r requirements.txt -y ;

# Setup credentials

cd ~/.Osintgram/config ;

# Input prompt

echo " To continue please Connect with Instagram ";
read -p "Enter UserName :" User ;
read -p "Enter PassWord :" Passwd ;

echo "[Credentials]
username = $User 
password = $Passwd" > credentials.ini ;

# Setting up one click Osintgram

cd ~/.Osintgram ;

# Making osintgram script

echo "#!/bin/bash

cd ~/.Osintgram ;

# input prompt

read -p " Enter target IG ID or UserName :" TARGET

python3 main.py $TARGET ;

exit" > osintgram ;

chmod +x osintgram ;

cp osintgram /usr/bin ;

osintgram ;

exit


