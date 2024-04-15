export CPDCTL_ENABLE_DSJOB=true
cpdctl config profile use CP4D-profile
cpdctl dsjob export --project DataGovProject --name ds1 --file-name test-export-flow
sleep 10
cpdctl dsjob save-export --project DataGovProject --name ds1 --file-name test-export-flow
sleep 10
cpdctl dsjob list-exports --project DataGovProject
# cpdctl dsjob get-import-zip --project DataStagePIPELINE --import-id 24576d5e-dac3-420a-992f-26db66bb81ca
