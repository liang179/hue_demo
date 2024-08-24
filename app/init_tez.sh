tar -xf apache-tez-0.10.3-bin.tar.gz -C /tmp
cd /tmp/apache-tez-0.10.3-bin/
tar czf apache-tez-0.10.3.tar.gz *.jar lib/*.jar
tar -tvf apache-tez-0.10.3.tar.gz

hadoop fs -mkdir -p /apps/tez-0.10.3
hadoop fs -copyFromLocal apache-tez-0.10.3.tar.gz /apps/tez-0.10.3

cd /opt/hive
rm -rf /tmp/apache-tez-0.10.3-bin/