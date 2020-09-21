  echo "for OSX NFS DRIVES ONLY"
  
    curl -sSL https://get.docker.com | sh
    sudo usermod -aG docker pi
    sudo apt-get install -y libffi-dev libssl-dev
    sudo apt-get install -y python3 python3-pip
    sudo apt-get remove python-configparser -y
    sudo pip3 -v install docker-compose
    sudo apt-get install -y vim git
    git clone https://github.com/bobbymaher/docker-mediaserver.git


sudo mkdir /mnt/external1
sudo mount /dev/sda1 /mnt/external1

sudo mkdir -p /mnt/external1/downloads/convert
sudo mkdir -p /mnt/external1/downloads/DownloadCompleted
sudo mkdir -p /mnt/external1/downloads/DownloadInProgress

sudo chmod -R 777 /mnt/external1/downloads