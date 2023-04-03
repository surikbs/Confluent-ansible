ansible-playbook -i hosts.yml manageservices/zookeeper/zk_start.yaml
sleep 10
ansible-playbook -i hosts.yml manageservices/kafka/kafka_broker_start.yaml
sleep 10
ansible-playbook -i hosts.yml manageservices/kafka_connect/kafka_connect_start.yaml
#sleep 10
#ansible-playbook -i hosts.yml manageservices/control-center/kafka_ccc_start.yaml
