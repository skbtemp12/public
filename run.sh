#!/bin/bash


sudo pm2 start index.js;
sudo pm2 startup;
sudo pm2 stop index;
sudo pm2 restart all;
ifconfig | grep 192
