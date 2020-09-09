# docker-mediaserver


quickstart for raspberry pi

curl -sSL https://get.docker.com | sh
sudo usermod -aG docker pi
sudo apt-get install -y libffi-dev libssl-dev
sudo apt-get install -y python3 python3-pip
sudo apt-get remove python-configparser
sudo pip3 -v install docker-compose
sudo apt-get install git
git clone https://github.com/bobbymaher/docker-mediaserver.git