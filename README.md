# hue_demo

## version compatibility


```
beeline -u 'jdbc:hive2://localhost:10000/'

show tables;
create table hive_example(a string, b int) partitioned by(c int);
alter table hive_example add partition(c=1);
insert into hive_example partition(c=1) values('a', 1), ('a', 2),('b',3);
select count(distinct a) from hive_example;
select sum(b) from hive_example;
```

## tez local
```xml
<property>
  <name>fs.default.name</name>
  <value>file:///</value>
</property>
<property>
  <name>tez.local.mode</name>
  <value>true</value>
</property>
<property>
  <name>tez.runtime.optimize.local.fetch</name>
  <value>true</value>
</property>
<property>
  <name>tez.lib.uris</name>
  <value>hdfs://namenode/apps/tez-0.10.3/apache-tez-0.10.3-bin.tar.gz</value>
</property>
<property>
    <name>tez.use.cluster.hadoop-libs</name>
    <value>true</value>
</property>
```
```bash
tar czf apache-tez-0.10.3.tar.gz *.jar lib/*.jar
tar -tvf apache-tez-0.10.3.tar.gz

hadoop fs -mkdir -p /apps/tez-0.10.3
hadoop fs -copyFromLocal apache-tez-0.10.3.tar.gz /apps/tez-0.10.3
```