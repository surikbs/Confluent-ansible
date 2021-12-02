# Confluent-ansible
This repository contains a ansible code for installing, configuring and running confluent platform on your macbook or on linux distribution virtual machine.

### Pre-requisties.
- Ansible
- Java

### Installation and Configuration
The below command helps in installation and configuration.

``` <<repo dir>>/ansible-playbook -i hosts.yml all.yaml ```

### Customization

The list of vars to be changed to suit your system (group_vars/all/shared_vars.yaml file).
- 