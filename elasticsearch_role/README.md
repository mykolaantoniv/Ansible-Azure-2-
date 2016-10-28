# Ansible Role: elasticsearch_role #
*****
This Ansible role Install/Uninstall/Upgrade/Downgrade Elasticsearch.

## Role Variables ##
*****
Available variables are listed below:
```

package:
  version_force - If set to True will replace installed version of Elasticsearch to defined;
  version       - Elasticsearch package version;
  arch          - Elasticsearch package architecture;

es_uninstall   - If set to True will uninstall Elasticsearch if it installed;
```
**WARNING!**

Do not remove default variables from "defaults".

## Example Playbook ##
*****
```
- hosts: "localhost"
  roles:
    - role: "elastic_role"
      package:
        version_force: "False"
        version: "5.0.0"
        arch: "x64"
      es_uninstall: "False"
```

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
