#!powershell  #scripts/tasks "main_first"

$Name = (Get-Service | Where-Object {
  $_.Name -match "^elasticsearch-service-x\d+$"
}).Name -match "^elasticsearch-service-x\d+$";

Write-Host $Name -NoNewLine;
