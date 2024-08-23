hadoop fs -mkdir -p /input/wordcount
hadoop fs -mkdir -p /output

hadoop fs -put file1 /input/wordcount 
hadoop jar /opt/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar wordcount /input/wordcount /output/wordcount

hadoop fs -cat /output/wordcount/*