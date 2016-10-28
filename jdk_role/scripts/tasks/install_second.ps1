#!powershell  #scripts/tasks "install_second"

Param (
  [string]$Path,
  [string]$Parameters
);

$Run = (Start-Process -FilePath $Path -ArgumentList $Parameters -Passthru -Wait).ExitCode;

Write-Host $Run -NoNewLine;
