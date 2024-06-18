#!/bin/bash

echo "atualizando o sistema"
apt-get update
apt-get upgrade -y

echo "instalndo apache2 e unzip"
apt-get install apache2 unzip wget -y

echo "Baixando aplicacao do git e desconpactando"
cd /tmp
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/


