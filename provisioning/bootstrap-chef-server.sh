#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset
set -o xtrace
# set -eox pipefail #safety for script

  echo "===================================================================================="
                        hostnamectl
  echo "===================================================================================="
  echo "         \   ^__^                                                                  "
  echo "          \  (oo)\_______                                                          "
  echo "             (__)\       )\/\                                                      "
  echo "                 ||----w |                                                         "
  echo "                 ||     ||                                                         "
  echo "===================================================================================="

echo "======================Deploy chef server=============================================================="

echo "192.168.45.1 example.com example" |sudo tee -a /etc/hosts
echo "192.168.45.2 workstation.example.com workstation" |sudo tee -a /etc/hosts
echo "192.168.45.3 node-hostname.example.com node-hostname" |sudo tee -a /etc/hosts
cat /etc/hosts

echo "nameserver 8.8.8.8 " |sudo tee -a /etc/resolv.conf
cat /etc/resolv.conf

# Install the Chef Server
# Download the latest Chef server core
apt-get update -qq
wget https://packages.chef.io/files/stable/chef-server/13.1.13/ubuntu/18.04/chef-server-core_13.1.13-1_amd64.deb

# Install the server
dpkg -i chef-server-core_*.deb
# Remove the downloaded file
rm chef-server-core_*.deb

# Run chef-server-ctl to start the Chef server services
chef-server-ctl reconfigure

# Create a Chef User and Organization
# In order to link workstations and nodes to the Chef server, 
# create an administrator and organization with associated RSA private keys
# From the home directory, create a .chef directory to store the keys
mkdir .chef



echo "======================Deploy chef server=============================================================="
