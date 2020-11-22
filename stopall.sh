ansible-playbook -i hosts.yml manageservices/kafka_connect/kafka_connect_stop.yaml
sleep 10
ansible-playbook -i hosts.yml manageservices/kafka/kafka_broker_stop.yaml
sleep 10
ansible-playbook -i hosts.yml manageservices/zookeeper/zk_stop.yaml