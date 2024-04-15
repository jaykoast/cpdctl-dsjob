export DSJOB_URL=https://cpd-cpd.apps.ocp-12000076xq-5wvu.cloud.techzone.ibm.com
export DSJOB_USER=kubeadmin
export DSJOB_PWD=XT5MI-w6T69-BP2j3-vbTtP
export CPDCTL_ENABLE_DSJOB=true
cpdctl config user set CP4D-user --username $DSJOB_USER --password $DSJOB_PWD
cpdctl config profile set CP4D-profile --url $DSJOB_URL --user CP4D-user
cpdctl config profile use CP4D-profile
cpdctl dsjob export --project DataGovProject --name ds1 --file-name test-export-flow
sleep 10
cpdctl dsjob save-export --project DataGovProject --name ds1 --file-name test-export-flow
sleep 10
cpdctl dsjob list-exports --project DataGovProject
# cpdctl dsjob get-import-zip --project DataStagePIPELINE --import-id 24576d5e-dac3-420a-992f-26db66bb81ca
