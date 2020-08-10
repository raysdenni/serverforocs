#!/bin/bash
#
# Script Copyright www.4sdnn.shop
# ==========================
# 

if [[ $USER != 'root' ]]; then
	echo "Maaf, Anda harus menjalankan ini sebagai root"
	exit
fi
MYIP=$(wget -qO- ipv4.icanhazip.com);

# install wget and curl
apt-get update;apt-get -y install wget curl;
sudo apt-get -y install ca-certificates apt-transport-https 

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

curl http://clients.imadenews.com/webmin.list > /etc/apt/sources.list.d/webmin.list
wget "http://www.dotdeb.org/dotdeb.gpg"
wget "http://www.webmin.com/jcameron-key.asc"
cat dotdeb.gpg | apt-key add -;rm dotdeb.gpg
cat jcameron-key.asc | apt-key add -;rm jcameron-key.asc
cd
apt-get -y install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
sudo apt -y install webmin
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf

sudo systemctl start webmin
sudo systemctl enable webmin
service webmin restart


apt-get -y --force-yes -f install libxml-parser-perl

clear
echo ""
echo "-------------------------------------------"
echo "Install Done, Silahkan Tambahkan Server $MYIP ke Panel Reseller kamu."
echo "Script by http://4sdnn.shop/"
echo "-------------------------------------------"
echo ""
rm -f /root/webmin_1.831_all.deb
rm -f /root/server.sh
