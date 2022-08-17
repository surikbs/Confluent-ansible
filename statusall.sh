ansible-playbook -i hosts.yml manageservices/zookeeper/zk_status.yaml
ansible-playbook -i hosts.yml manageservices/kafka/kafka_broker_status.yaml
ansible-playbook -i hosts.yml manageservices/kafka_connect/kafka_connect_status.yaml
ansible-playbook -i hosts.yml manageservices/control-center/kafka_ccc_status.yaml