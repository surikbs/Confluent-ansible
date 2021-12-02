# Confluent-ansible
This repository contains ansible code for installing, configuring and running confluent platform on your macbook or on linux distribution virtual machine.

This code can be leveraged to build kafka cluster with multiple servers and this is tar ball based installation

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
