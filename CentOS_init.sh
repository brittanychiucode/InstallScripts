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

# Install Maven
sudo yum install maven

# Install Java
sudo yum install java-11-openjdk-devel

# Install Tomcat: https://linuxize.com/post/how-to-install-tomcat-9-on-centos-7/
# add tomcat user will run tomcat
sudo useradd -m -U -d /opt/tomcat -s /bin/false tomcat
# download and install 
cd /tmp
wget https://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.27/bin/apache-tomcat-9.0.27.tar.gz
tar -xf apache-tomcat-9.0.27.tar.gz
sudo mv apache-tomcat-9.0.27 /opt/tomcat/
sudo ln -s /opt/tomcat/apache-tomcat-9.0.27 /opt/tomcat/latest
sudo chown -R tomcat: /opt/tomcat
sudo sh -c 'chmod +x /opt/tomcat/latest/bin/*.sh'

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



