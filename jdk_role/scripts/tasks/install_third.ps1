#!powershell  #scripts/tasks "install_third"

Param (
  [string]$Path
);

[Environment]::SetEnvironmentVariable("JAVA_HOME", "$Path", "Machine");
