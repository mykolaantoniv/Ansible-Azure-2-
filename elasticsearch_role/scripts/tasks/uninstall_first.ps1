#!powershell  #scripts/tasks "uninstall_first"

(Get-WmiObject -Class Win32_Service | Where-Object {
  $_.Name -match "^elasticsearch-service-x\d+$"
}).PathName -math "(^\w:\\.*)\\bin\\elasticsearch-service-x\d+.exe\s" | Out-Null;

Write-Host $Matches[1] -NoNewLine;
