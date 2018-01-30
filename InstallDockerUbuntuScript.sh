# Install Docker on Ubuntu

# 1. Delete any old instance of Docker
sudo apt-get remove docker docker-engine docker.io

# 2. Update system
sudo apt-get update

# 3. Install extra linux stuff
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
# sudo apt-get install -y linux-image-extra-$(uname -r) 
# sudo apt-get install -y linux-image-extra-virtual

# 2. Update system
sudo apt-get update

# 4. Set up Docker repository
# a. Install packages to allow apt to use a repository over HTTPS:
sudo apt-get install -y apt-transport-https 
sudo apt-get install -y ca-certificates 
sudo apt-get install -y curl 
sudo apt-get install -y software-properties-common

# 2. Update system
sudo apt-get update

# b. Add Docker’s official GPG key: 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88   
# -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# c. Use the following command to set up the stable repository. You always need the stable repository, even if you want to install edge builds as well.
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# 5. Install Docker
# a. Update the apt package index.
sudo apt-get update

# b. Install the latest version of Docker, or go to the next step to install a specific version. Any existing installation of Docker is replaced.
sudo apt-get install -y docker-ce
# sudo apt-get install -y docker.io 
# sudo apt-get install -y docker

# 6. Add me to the docker group
# a. Create a docker group
sudo groupadd docker

# b. Add your yser
sudo usermod -aG docker $USER
