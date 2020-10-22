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

echo "======================Deploy workstation=============================================================="

echo "192.168.45.1 example.com example" |sudo tee -a /etc/hosts
echo "192.168.45.2 workstation.example.com workstation" |sudo tee -a /etc/hosts
echo "192.168.45.3 node-hostname.example.com node-hostname" |sudo tee -a /etc/hosts
cat /etc/hosts

echo "nameserver 8.8.8.8 " |sudo tee -a /etc/resolv.conf
cat /etc/resolv.conf

# Setting Up a Workstation
# Download the latest Chef Workstation:
wget  https://packages.chef.io/files/stable/chef-workstation/0.2.43/ubuntu/18.04/chef-workstation_0.2.43-1_amd64.deb

# Install Chef Workstation
dpkg -i chef-workstation_*.deb
# Remove the installation file
rm chef-workstation_*.deb

Create your Chef repository.
The chef-repo directory will store your Chef cookbooks and other related files
chef generate repo chef-repo

echo "======================Deploy workstation=============================================================="
