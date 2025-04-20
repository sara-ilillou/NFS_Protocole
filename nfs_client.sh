#! /bin/bash
sudo apt update
sudo apt install nfs-common -y

ServerIP="192.168.153.139"
FolderPath="/home/$(whoami)/Documents/nfs_server"
MountedPath="/home/$(whoami)/Documents/nfs_client"

sudo mkdir -p $MountedPath
echo "NFS MOUNTED DIRECTORY CREATED AT $MountedPath"

sudo mount $ServerIP:$FolderPath $MountedPath
echo "NFS Mounted Directory at $MountedPath"
echo "NFS Server IP: $Server_IP"