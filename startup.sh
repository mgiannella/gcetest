#!/bin/bash
yes Y | sudo apt-get install squid3 
yes Y | sudo apt-get install apache2-utils 
sudo cp /etc/squid/squid.conf /etc/squid/squid.conf.original
sudo rm /etc/squid/squid.conf 
sudo wget -P /etc/squid/ "https://raw.githubusercontent.com/mgiannella/gcetest/master/squid.conf"
sudo htpasswd -b -c /etc/squid/passwords mikeg mikeg
sudo systemctl restart squid.service