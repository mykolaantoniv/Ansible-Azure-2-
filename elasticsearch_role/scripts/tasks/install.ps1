#!powershell  #scripts/tasks "install"

Param (
  [string]$Path,
  [string]$Arch
);

$Run = Invoke-Expression -command "$($Path)\bin\elasticsearch-service-$($Arch).exe install";

Write-Host $Run -NoNewLine;
