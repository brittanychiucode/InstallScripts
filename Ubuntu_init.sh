# Update system
sudo apt-get update 

# Install git
sudo apt-get -y install git

# Install wget
sudo apt-get install wget

# Install vim
sudo apt-get -y install vim

# Install python
sudo apt-get -y install python
sudo apt-get -y install python3

# Install pip
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
rm get-pip.py

# Install docker
sudo apt-get remove docker docker-engine docker.io
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
sudo apt-get update
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker

# Install Ansible
sudo apt-get update
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible

# Install NGINX
sudo apt-get update
sudo apt-get -y install nginx
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status

# Install Node.js
sudo apt-get update
sudo apt-get -y install nodejs
sudo apt-get -y install npm
nodejs -v

# Install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod start