export JAVA_HOME=`/usr/libexec/java_home -v 11.0.16`
#export _JAVA_OPTIONS="-Djava.io.tmpdir=/Users/surikbs/ConfluentInstall/confluent/dataDir/kafka_ccc_temp"
export CONTROL_CENTER_LOG4J_OPTS="-Dlog4j.configuration=file:/Users/surikbs/ConfluentInstall/confluent/etc/kafka_ccc/log4j.properties"
/Users/surikbs/ConfluentInstall/confluent/bin/control-center-start -daemon /Users/surikbs/ConfluentInstall/confluent/etc/kafka_ccc/control-center.properties
