#!/bin/bash
wget https://github.com/IBM/cpdctl/releases/download/v1.4.116/cpdctl_darwin_amd64.tar.gz 
tar zxf cpdctl_darwin_amd64.tar.gz
chmod 777 cpdctl
sudo cp cpdctl /bin
chmod 777 /bin/cpdctl
