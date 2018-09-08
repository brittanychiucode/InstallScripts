sudo apt install apt-transport-https
echo "deb https://dev2day.de/pms/ jessie main" | sudo tee /etc/apt/sources.list.
wget -O - https://dev2day.de/pms/dev2day-pms.gpg.key | sudo apt-key add -
wget -O /tmp/pms.key https://dev2day.de/pms/dev2day-pms.gpg.key
sudo apt-key add /tmp/pms.key

sudo apt update

sudo apt install plexmediaserver-installer