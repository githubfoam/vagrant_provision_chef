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

echo "======================Deploy node=============================================================="

echo "192.168.45.1 example.com example" |sudo tee -a /etc/hosts
echo "192.168.45.2 workstation.example.com workstation" |sudo tee -a /etc/hosts
echo "192.168.45.3 node-hostname.example.com node-hostname" |sudo tee -a /etc/hosts
cat /etc/hosts

echo "nameserver 8.8.8.8 " |sudo tee -a /etc/resolv.conf
cat /etc/resolv.conf

echo "======================Deploy node=============================================================="
