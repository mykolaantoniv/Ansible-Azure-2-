#!powershell  #scripts/tasks "main_first"

$Name = (Get-WmiObject -Class Win32_Product | Where-Object {
  $_.Name -match "^Java\sSE\sDevelopment\sKit\s\d+"
}).Name -match "^Java\sSE\sDevelopment\sKit\s\d+"

Write-Host $Name -NoNewLine;
