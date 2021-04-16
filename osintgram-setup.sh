#!/bin/bash

# Automation of osintgram setup and installation

cd ~ ;
git clone https://github.com/Datalux/Osintgram.git ;
mv Osintgram .Osintgram ;
cd ~/.Osintgram ;
sudo apt install python3 python3-pip libncurses5-dev -y ;
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

# Making Osintgram Script

cd ~/.Osintgram ;


echo "#!/bin/bash

cd ~/.Osintgram ;

# input prompt

read -p " Enter target Instagram UserID or UserName :" TARGET

python3 main.py $TARGET ;

exit" > osintgram ;

# Setting up one click osintgram 

chmod +x osintgram ;

cp osintgram /usr/bin ;

osintgram ;

exit


