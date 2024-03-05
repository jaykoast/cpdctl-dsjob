#!/bin/bash
wget https://github.com/IBM/cpdctl/releases/download/v1.4.116/cpdctl_darwin_amd64.tar.gz 
wait 50
tar zxf cpdctl_darwin_amd64.tar.gz
cp cpdctl /bin
