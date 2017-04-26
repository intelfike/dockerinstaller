echo 'https://docs.docker.com/engine/installation/linux/ubuntu/#uninstall-old-versions'

# uninstall older docker
sudo apt-get remove docker docker-engine

# relation
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# install key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# install docker
sudo apt-get update
sudo apt-get install docker-ce