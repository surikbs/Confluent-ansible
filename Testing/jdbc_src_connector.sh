curl -X DELETE http://localhost:8083/connectors/jdbc_source_mysql_01
curl -X DELETE http://localhost:8083/connectors/jdbc_source_mysql_02

curl -X POST http://localhost:8083/connectors -H "Content-Type: application/json" -d \
'{
  "name": "jdbc_source_mysql_01",
  "config": {
    "connector.class": "io.confluent.connect.jdbc.JdbcSourceConnector",
    "connection.url": "jdbc:mysql://localhost:3306/demo",
    "connection.user": "kafka_connector",
    "connection.password": "kafka",
    "topic.prefix": "mysql-01-kafka-connector",
    "table.whitelist": "Persons_src",
    "mode":"incrementing",
    "incrementing.column.name" : "ID",
    "tasks.max" : "5",
    "validate.non.null": "false",
    "table.types": "TABLE",
    "transforms": "dropTopicPrefix",
    "transforms.dropTopicPrefix.type":"org.apache.kafka.connect.transforms.RegexRouter",
    "transforms.dropTopicPrefix.regex":"mysql-01-kafka-connector(.*)",
    "transforms.dropTopicPrefix.replacement":"mysql-01-kafka-connector"
  }
}'

curl -X POST http://localhost:8083/connectors -H "Content-Type: application/json" -d \
'{
  "name": "jdbc_source_mysql_02",
  "config": {
    "connector.class": "io.confluent.connect.jdbc.JdbcSinkConnector",
    "connection.url": "jdbc:mysql://localhost:3306/demo",
    "connection.user": "kafka_connector",
    "connection.password": "kafka",
    "topics": "mysql-01-kafka-connector",
    "table.name.format": "Persons_snk",
    "insert.mode" : "insert",
    "auto.create" : "true"
  }
}'

curl -X GET http://localhost:8083/connectors/jdbc_source_mysql_01/status | jq
curl -X GET http://localhost:8083/connectors/jdbc_source_mysql_02/status | jq