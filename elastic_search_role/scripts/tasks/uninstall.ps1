#!powershell  #scripts/tasks "uninstall"

$Name = Get-WmiObject -Class Win32_Product | Where-Object {
  $_.Name -match "^Java\sSE\sDevelopment\sKit\s\d+"
};

if ($Name -ne $null) {
  $Run = ($name.Uninstall()).ReturnValue;
} else {
  $Run = "0";
};

Write-Host $Run -NoNewLine;
