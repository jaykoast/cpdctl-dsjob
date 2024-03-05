#!/bin/bash
platform=$(uname -s | tr [A-Z] [a-z])
arch=$(uname -m | sed 's/x86_64/amd64/')
curl -LOs https://github.com/IBM/cpdctl/releases/latest/download/cpdctl_${platform}_${arch}.tar.gz
tar zxf cpdctl_${platform}_${arch}.tar.gz
# wget https://github.com/IBM/cpdctl/releases/download/v1.4.116/cpdctl_darwin_amd64.tar.gz 
# tar zxf cpdctl_darwin_amd64.tar.gz
chmod 777 cpdctl
sudo cp cpdctl /usr/bin
