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

if it is an OSX HFS drive

    sudo apt-get install hfsplus hfsutils hfsprogs gdisk -y

HFS drives need journaling disabled or it will be read only. disable it through osx (sudo diskutil disableJournal volumeName) or try:

    sudo fsck hfsplus /dev/sda1



to mount the external drive

    sudo mkdir /mnt/external1
    sudo mount /dev/sda1 /mnt/external1

you might need to specify the drive format

    sudo mount -t hfsplus /dev/sda1 /mnt/external1
---
automatic mounting

Setting up automatic mounting
You can modify the fstab file to define the location where the storage device will be automatically mounted when the Raspberry Pi starts up. In the fstab file, the disk partition is identified by the universally unique identifier (UUID).

Get the UUID of the disk partition:

    sudo blkid /dev/sda1
Find the disk partition from the list and note the UUID. For example, 5C24-1453.
Open the fstab file using a command line editor such as nano:

    sudo vim /etc/fstab
Add the following line in the fstab file:


If the filesystem type is FAT or NTFS, add ,umask=000 immediately after nofail - this will allow all users full read/write access to every file on the storage device.


e.g /etc/fstab will have something like this added for hfsplus

    UUID=a39f91b1-b568-3db6-81f7-972e279a8d46 /media/time_machine hfsplus force,auto,uid=1000,users,rw 0 0





# Once this is all done
- run docker-compose up in the ./docker-mediaserver directory
- go to
  - http://[IPADDRESS]:32400 to access plex (media server)
  - http://[IPADDRESS]:8080 to access deluge (torrent)