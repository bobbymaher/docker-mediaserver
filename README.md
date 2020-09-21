# docker-mediaserver


quickstart for raspberry pi


    curl -sSL https://get.docker.com | sh
    sudo usermod -aG docker pi
    sudo apt-get install -y libffi-dev libssl-dev
    sudo apt-get install -y python3 python3-pip
    sudo apt-get remove python-configparser -y
    sudo pip3 -v install docker-compose
    sudo apt-get install -y vim git
    git clone https://github.com/bobbymaher/docker-mediaserver.git



optional if you want to use a common external fat or ntfs drive

    sudo apt install exfat-fuse -y
    sudo apt install ntfs-3g -y



to mount the external drive

    sudo mkdir /mnt/external1
    sudo mount /dev/sda1 /mnt/external1


---




# Notes
- docker-compose might not start locally if you have file sharing active, due to smb port 445 being in use
- you will need to log out and log back into ssh/terminal session after installing docker for permissions to apply
- if you get errors about "UnixHTTPConnectionPool(host='localhost', port=None): Read timed out." when starting docker, increase the values in .env


# Once this is all done
- run docker-compose up in the ./docker-mediaserver directory
- go to
  - http://[IPADDRESS]:32400 to access plex (media server)
  - http://[IPADDRESS]:8080 to access deluge (torrent)

 