#!/bin/bash

apt update
apt install bind9 bind9utils -y

#cd /etc/bind
#nano /etc/bind/named.conf.options
cp /home/netadmin/special-topics/templates/named.conf.options /etc/bind/named.options

#nano /etc/bind/named.conf.default-zone
cp /home/netadmin/special-topics/templates/named.conf.default-zone /etc/bind/named.conf.default-zone

#cp /etc/bind/db.chani.cns
#nano /etc/bind/db.chani.cns
cp /home/netadmin/special-topics/templates/db.chani.cns /etc/bind/db.chani.cns

sudo named-checkconf
sudo named-checkzone chani.cns /etc/bind/db.chani.cns
systemctl reload bind9
