#!powershell  #scripts/tests "install.uninstall"

$Name = (Get-ItemProperty HKLM:\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\* | Where-Object {
  $_.DisplayName -match "^Java\sSE\sDevelopment\sKit\s\d+"
}).DisplayName -match "^Java\sSE\sDevelopment\sKit\s\d+";

Write-Host $Name -NoNewLine;
