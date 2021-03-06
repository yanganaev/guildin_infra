#!/bin/bash
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E52529D4
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.2.list'
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod

