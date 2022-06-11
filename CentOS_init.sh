# Enable connectivity
sudo dhclient

# Update the system
sudo yum update

# Install wget
sudo yum -y install wget

# Install vim
sudo yum -y install vim

# Install git
sudo yum -y install git

# Update the system
sudo yum update

# Install python
sudo yum -y install python3

# Install pip
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py

# Install Ansible
# sudo yum -y install epel-release
# sudo yum -y install ansible

# Install Docker
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
 sudo yum install -y yum-utils
 sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-nightly
sudo yum-config-manager --enable docker-ce-test
sudo yum install docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo docker run hello-world

# Install Docker Compose [built in docker now]
# sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
# sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose



