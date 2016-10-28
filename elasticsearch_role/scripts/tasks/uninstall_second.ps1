#!powershell  #scripts/tasks "uninstall_second"

$Name = Get-WmiObject -Class Win32_Service | Where-Object {
  $_.Name -match "^elasticsearch-service-x\d+$"
};

if ($Name -ne $null) {
  $Run = ($Name.Delete()).ReturnValue;
} else {
  $Run = "0";
};

Write-Host $Run -NoNewLine;
