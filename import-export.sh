export CPDCTL_ENABLE_DSJOB=true
cpdctl dsjob export-zip --project DataGovProject --name ds1 --file-name TESING-EXPORT 
wait 100
cpdctl dsjob import-zip --project TestingPipeline --file-name TESTING-EXPORT
wait 100
# cpdctl dsjob get-import-zip --project DataStagePIPELINE --import-id 24576d5e-dac3-420a-992f-26db66bb81ca
