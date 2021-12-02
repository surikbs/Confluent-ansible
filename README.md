# Confluent-ansible
This repository contains a ansible code for installing, configuring and running confluent platform on your macbook or on linux distribution virtual machine.

Features:
- Downloads the specific Confluent Platform version to /tmp directory
- Copies tar.gz file to the actual location, extract it.
- Configure the cluster based on the properties file provided in the templates dir of the components.

### Pre-requisties.
- Ansible
- Java

Ansible vars should be changed to suit your system (group_vars/all/shared_vars.yaml file).
### Installation and Configuration
The below command helps in installation and configuration ``` ansible-playbook -i hosts.yml all.yaml ```.
To check the start the cluster ``` sh startall.sh ```.
For the status ``` sh statusall.sh```.
For stopping the cluster ``` sh stopall.sh ```.

Note: these commands are run from the repo directory
