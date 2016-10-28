# Ansible Role: jdk_role #
*****
This Ansible role Install/Uninstall/Upgrade/Downgrade Java Development Kit.

## Role Variables ##
*****
Available variables are listed below:
```
jdk_license_accept: - If set to True will accept Java Development Kit license agreement;

package:
  version_force - If set to True will replace installed version of Java Development Kit to defined;
  version           - Java Development Kit package version;
  update            - Java Development Kit package update version;
  build             - Java Development Kit package build version;
  arch              - Java Development Kit package architecture;
  log               - If set to True will save Java Development Kit package installation log into "ProgramData" folder;
  arguments         - Java Development Kit package installation arguments. All arguments must be separated by dots.
                      Dont leave quotes of this option empty, if it is unnecessary type "NONE" inside;
  home_variable     - If set to True will set JAVA_HOME environmen variable; For using this option you also must
                      define "install directory" option value;
  install_directory - Java Development Kit installation directory; Dont leave quotes of this option empty,
                      if it is unnecessary type "NONE" inside;

jdk_uninstall   - If set to True will uninstall Java Development Kit if it installed;
```
**WARNING!**

Do not remove default variables from "defaults".

## Example Playbook ##
*****
```
- hosts: "localhost"
  roles:
    - role: "jdk_role"
      jdk_license_accept: "True"
      package:
        version_force: "False"
        version: "8"
        update: "112"
        build: "15"
        arch: "x64"
        log: "True"
        arguments: "ADDLOCAL='ToolsFeature,SourceFeature,PublicjreFeature'"
        home_variable: "True"
        install_directory: "C:\\Program Files\\Java\\JDK"
      jdk_uninstall: "False"
```

home_variable:     "True"
install_directory: "C:\\Program Files\\Java\\JDK"

## Suported OS ##
*****
* Windows - 2012
* Windows - 2016

## Licence ##
*****
This role is based on a Apache Version 2.0 License.

## Author ##
*****
SoftServeInc - [https://softserve.ua](https://softserve.ua)
