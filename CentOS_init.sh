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

# Install python
sudo yum -y install python
sudo yum -y install python3

# Install pip
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
rm get-pip.py

# Install Ansible
sudo yum -y install epel-release
sudo yum -y install ansible
