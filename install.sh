  echo "for OSX NFS DRIVES ONLY"
  
    curl -sSL https://get.docker.com | sh
    sudo usermod -aG docker pi
    sudo apt-get install -y libffi-dev libssl-dev
    sudo apt-get install -y python3 python3-pip
    sudo apt-get remove python-configparser -y
    sudo pip3 -v install docker-compose
    sudo apt-get install -y vim git
    git clone https://github.com/bobbymaher/docker-mediaserver.git

sudo apt-get install hfsplus hfsutils hfsprogs gdisk -y
sudo fsck hfsplus /dev/sda1

sudo mkdir /mnt/external1
sudo mount /dev/sda1 /mnt/external1