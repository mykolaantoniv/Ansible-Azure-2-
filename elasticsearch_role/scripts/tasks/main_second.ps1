#!powershell  #scripts/tasks "main_second"

Param (
  [string]$Type
);

if ($Type -eq "Version") {
  $Pattern = "^Java\sSE\sDevelopment\sKit\s(\d+)"
} elseif ($Type -eq "Update") {
  $Pattern = "^Java\sSE\sDevelopment\sKit\s\d+\sUpdate\s(\d+)"
};

$Name = (Get-WmiObject -Class Win32_Product | Where-Object {
  $_.Name -match "^Java\sSE\sDevelopment\sKit\s\d+"
}).Name -match $Pattern | Out-Null;

Write-Host $Matches[1] -NoNewLine;
