#!/bin/bash
export DSJOB_URL=https://cpd-cpd-instance.apps.65c407d60139de0011c3d408.cloud.techzone.ibm.com
export DSJOB_USER=cpadmin
export DSJOB_PWD=0ZMpI5aAq562zzmCrK5PiqsBOf4KEOXL
export CPDCTL_ENABLE_DSJOB=true
cpdctl config user set CP4D-user --username $DSJOB_USER --password $DSJOB_PWD
cpdctl config profile set CP4D-profile --url $DSJOB_URL --user CP4D-user
cpdctl config profile use CP4D-profile
