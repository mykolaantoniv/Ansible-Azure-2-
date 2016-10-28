#!powershell  #scripts/tasks "main_second"

(Get-Service | Where-Object {
  $_.Name -match "^elasticsearch-service-x\d+$"
}).DisplayName -match "^Elasticsearch\s(\d+\.\d+\.\d+)\s" | Out-Null;

Write-Host $Matches[1] -NoNewLine;
