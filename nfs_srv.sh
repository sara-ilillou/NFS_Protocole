#! /bin/badh

sudo apt update
sudo apt install nfs-kernel-server -y

Client_IP="192.168.153.140"
FolderPath="/home/$(whoami)/Documents/nfs_server"

sudo mkdir -p "$FolderPath"
echo "NFS SERVER DIRECTORY CREATED AT $FolderPath"

sudo chown -R $(whoami):$(whoami) $FolderPath
echo "NFS SERVER DIRECTORY OWNERSHIP CHENGED TO $(whoami)"

echo "$FolderPath $Client_IP(rw,sync,no_subtree_check)" | sudo tee -a /etc/exports

sudo systemctl restart nfs-kernel-server
echo "NFS SERVICE RESTARTED"