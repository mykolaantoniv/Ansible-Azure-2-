#!powershell  #scripts/tasks "install_first"

Param (
  [string]$URL,
  [string]$Path
);

$Client = new-object System.Net.WebClient;
$Client.Headers.Add("Cookie", "oraclelicense=accept-securebackup-cookie");
$Run = $Client.DownloadFile($URL, $Path);

Write-Host $Run -NoNewLine;
