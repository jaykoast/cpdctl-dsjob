#!/bin/bash
export DSJOB_URL=https://cpd-cpd.apps.ocp-12000076xq-5wvu.cloud.techzone.ibm.com
export DSJOB_USER=kubeadmin
export DSJOB_PWD=XT5MI-w6T69-BP2j3-vbTtP
export CPDCTL_ENABLE_DSJOB=true
#Configure the cpdctl user for the cpd instance with given user credentials
cpdctl config user set CP4D-user --username $DSJOB_USER --password $DSJOB_PWD
cpdctl config profile set CP4D-profile --url $DSJOB_URL --user CP4D-user
cpdctl config profile use CP4D-profile
#Export DataStage flow to ZIP file 
cpdctl dsjob export-zip --project DataGovProject --name ds1 --file-name TESTING-EXPORT-ZIP
sleep 10
#Import that exported ZIP into a new project
cpdctl dsjob import-zip --project TestingPipeline --file-name TESTING-EXPORT-ZIP
