export CPDCTL_ENABLE_DSJOB=true
cpdctl dsjob export-zip --project DataStagePIPELINE --name TestFlowA --file-name test-export-zip 
cpdctl dsjob import-zip --project DataStagePIPELINE --file-name test-export-zip 
cpdctl dsjob get-import-zip --project DataStagePIPELINE --import-id 24576d5e-dac3-420a-992f-26db66bb81ca
