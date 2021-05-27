#!/bin/bash
echo "[*]installing apache2"
sudo apt install apache2 -y
sudo systemctl enable apache2
echo "[*]setting dummy website"
sudo rm /var/www/html/index.html
cd /var/www/
sudo git clone https://github.com/RichardPhilipsRoy/dummy.git
sudo mv dummy/* html
sudo rm -r dummy
echo "[*]creating users loki and thor"
echo 'root:basketball' | sudo chpasswd
sudo adduser thor --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "thor:tweety" | sudo chpasswd
sudo adduser loki --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "loki:chelsea" | sudo chpasswd
echo "[*]misconfiguring sudo"
sudo usermod -aG sudo loki
mkdir odinvault
cd odinvault
wget https://wallpapercave.com/wp/wp2900772.jpg
sudo apt update
echo "[*]setting up steganography challenge"
sudo apt install steghide -y
wget https://hackthon-flags.s3.amazonaws.com/flags.txt
echo congratulations you have found the flag >> secret.txt
shuf -n 1 flags.txt >> secret.txt
echo "[*]flag finder"
echo start
cat secret.txt
echo end
rm flags.txt
steghide embed -ef secret.txt -cf wp2900772.jpg -p yI$Gj+w7ZUmy
rm secret.txt
echo "[*]installing john"
sudo apt-get install john -y
#mkdir /usr/share/wordlists # this step is optional
#cd /usr/share/wordlists # this step is optional
#sudo wget sudo wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt #this step is optional 
cd 
sudo su thor
cd
mkdir mjolnir
cd mjolnir/
echo "Whosoever holds this password, if they be worthy, shall access the image in Odin Vault THE PASSWORD IS: yI$Gj+w7ZUmy" >> messagefromOdin.txt
