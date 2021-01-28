######################## Install Docker Engine on Ubuntu ########################
#Uninstall old versions of docker
sudo apt-get remove docker docker-engine docker.io containerd runc

#Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get update
sudo apt-get install \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg-agent \
      software-properties-common

#Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Set up the stable repository.
sudo add-apt-repository \
      "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) \
      stable"

#INSTALL DOCKER ENGINE
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

#Adding current user to the “docker” group
sudo usermod -aG docker ubuntu

################################################################################################

########################  Install Docker Compose########################
#Run this command to download the current stable release of Docker Compose:
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#Apply executable permissions to the binary:
sudo chmod +x /usr/local/bin/docker-compose

#Create a symbolic link of docker-compose to /usr/bin
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

################################################################################################

########################  Install Make ########################
#Run this command to install make:
sudo apt-get -y install make
################################################################################################